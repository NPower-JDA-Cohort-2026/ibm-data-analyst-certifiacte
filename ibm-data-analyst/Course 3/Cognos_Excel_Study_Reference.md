# Data Visualization & Dashboards — Study Reference Sheet
*Excel + Cognos Analytics — quick-review guide before your retake*

---

## 1. Chart Type Cheat Sheet

| Chart Type | Axes / Structure | Best Used For | Common Trap |
|---|---|---|---|
| **Column chart** | Category on X (horizontal), Value on Y (vertical) | Comparing discrete categories over time or groups | Confused with bar chart (bar = horizontal bars, category on Y) |
| **Bar chart** | Category on Y (vertical), Value on X (horizontal) | Comparing categories when labels are long | Mixed up with column chart orientation |
| **Line chart** | Category/time on X, continuous value on Y | Showing trends/change over a continuous period | Requires ordered, continuous X-axis data (usually time) |
| **Area chart** | Same as line, but space under the line is filled | Emphasizing magnitude of change over time, cumulative totals | Overlapping series can be hard to read — use stacked area with care |
| **Histogram** | Value ranges (bins) on X, frequency/count on Y | Showing the **distribution** of a single continuous variable | NOT the same as a bar chart — histogram = distribution of one variable across ranges; bar chart = comparison across categories. No gaps between bars in a histogram (continuous ranges). |
| **Scatter chart** | Two continuous numeric variables (X and Y) | Correlation, relationships, outlier detection | Needs 2 numeric variables — not for categorical comparisons |
| **Bubble chart** | X, Y, + bubble size = 3rd variable | Comparing 3 variables at once | Different from scatter — scatter only has 2 variables |
| **Radar chart** | Multiple axes radiating from a center point | Comparing multiple variables per item (multivariate profiles) | Data plotted in "irregular concentric circles" — this phrase = radar chart |
| **Pie / Donut chart** | Slices of a whole (100%) | Simple part-to-whole, few categories (≤5-6 ideally) | Donut allows a center label/hole; pie doesn't. Neither handles many categories well |
| **Treemap** | Nested/rectangular blocks sized by value | Hierarchical, part-to-whole relationships with MANY categories | Advantage over pie/donut: rectangles are easier to read than wedges when there are lots of categories; does NOT always represent 100% of filtered data (unlike pie) |
| **Box plot** | Quartiles, median, outliers | Showing spread/distribution: first quartile, median, outliers — ALL of these together | If a question asks "what does a box plot show," the answer is usually **"All of the above"** (quartiles + median + outliers) |
| **Heat map** | Grid with color intensity = value | Spotting patterns/outliers across two categorical dimensions (e.g., model × recall system) | Color intensity = magnitude, not a separate axis |
| **Filled map** | Geographic regions colored by value | Merging numerical data with geography seamlessly | True/False trap: filled maps DO merge numeric + geographic data seamlessly (True) |
| **Sparkline** | Small trendline/graphic, NO axes shown | Compact trend summary inside a cell (seasonal change, min/max highlight) | Definition = "small trendline that summarizes stats in a graph WITHOUT axes." Also: sparklines pull from ONE ROW across MULTIPLE COLUMNS (not one column/multiple rows). After editing source data, you must refresh/reinsert the sparkline. |
| **Topographic map** | Elevation/terrain via contour lines | Geographic elevation data | In this course's classification, this is **"None of the above"** — not formally bucketed as radar, scatter, or 3D chart |

---

## 2. Cognos Report Studio — Core Report Objects

| Object | What It Does | When to Use |
|---|---|---|
| **List** | Simple row-by-row listing of data | Detailed, non-aggregated record listing |
| **Crosstab** | Cross-tabulates data — rows × columns × summarized measure | When you need to compare a measure across two dimensions simultaneously (e.g., Region × Product) |
| **Chart** | Visual chart object (bar, line, pie, etc.) | Any visual representation of report data |
| **Repeater** | Repeats a layout block for each data instance | Building repeating layouts like business cards, catalogs, mailing labels |

**Correct sequence to build a report in Report Studio:**
1. Specify the data package
2. Choose a basic report layout
3. Add data
4. Validate the report
5. Save the report
6. Run the report

**Report specification format:** saved as **XML** in Cognos Connection (not HTML, XLS, or PDF — those are *output* formats, not the specification format).

**Loading data into a list report:** Packages **or** Data Modules (not "Packages and Data Models" — watch the wording).

**Adding new data to an existing Dashboard:** use a **Data Module** (not pivot tables, published packages, or Framework Manager models directly).

**Cognos BI components:** Framework Manager, Report Studio, Query Studio ARE components. **Cognos DataStage is NOT** — it's a separate ETL tool, not part of core Cognos BI.

**Metric Studio metrics:** are **NOT** part of the Content Store (True/False trap — answer is False).

---

## 3. Dashboards — Design & Behavior

- A Dashboard = a visual representation of data pulled from **multiple reports** (choose-all-that-apply traps to watch):
  - ✅ Can be scheduled to refresh and be emailed automatically
  - ✅ Has a running user to determine what data is visible
  - ✅ Is comprised of up to 20 components
  - ✅ Displays data as of the last time it was refreshed
  - ❌ Does NOT always show up-to-date/real-time data (it shows data as of last refresh)
  - ❌ Does NOT display data only from "standard reports" (it draws from multiple sources)

- **Dashboard templates:**
  - **Tabbed** — multiple tabs of content, good for organizing distinct topics, NOT ideal for "multiple graphics on a single scrollable page"
  - **Single page** — best when you need multiple graphics displayed together and **scrollable** on one page
  - **Stacked / Infographic** — other layout options for different visual storytelling needs

- **Best way to deliver recurring summary-level KPIs to executives:** create a dashboard with the required metrics and **schedule it for automatic weekly delivery** to the appropriate users — not manual refresh/email, not a custom report type alone.

---

## 4. Excel-Specific Reminders

- **Data Series** = the foundation for any chart — it's the actual data range selected/plotted.
- **Pivot Chart + Pivot Table refresh:** if source data updates but the chart doesn't reflect it, **refresh the pivot table** (chart updates automatically since it's linked) — don't rebuild the chart or just edit the title.
- **Trendlines:** to graphically show a steady increase/progression in a data series without altering the report significantly, **add a linear trendline** to the chart — don't hide data or add unrelated graphics.
- **Valid Excel formula syntax:** must start with `=`, use direct operators or real function names (`=A1+A2`, `=SUM(A1:A2)`) — not `=Add(...)` (not a real function) or missing parentheses.

---

## 5. Quick Self-Test Before Retake

Ask yourself, out loud, for each of these — if you hesitate, review that row above:
1. What's the difference between a bar chart and a histogram?
2. What three things does a box plot show?
3. Why is a treemap better than a pie/donut chart for many categories?
4. What are the 4 core Report Studio objects and one use case each?
5. What format is a report specification saved in?
6. What's the correct 6-step sequence to build a Report Studio report?
7. Does a dashboard always show real-time data? (No — as of last refresh)
8. What's the definition of a sparkline, and what's true/false about how it reads data?
