# DipSA-cGPA-Calculator
This is a calculate app based on ASP.NET to compute GPA score for ISS-Graudate Diploma in System Analysis

## Getting Started
This is a ASP.NET WebForm based software that helps students from <i>NUS-ISS Graduate Diploma in System Analysis</i>
to calculate their GPA and make approriate plan to their exam strategy.

## Collaborator
I welcome all students from GDipSA to participate in the development of this project. Email me at cslim@changsiang.net to get added onto the collaborator list.

## Live Application 
You may find try out the software at: https://changsiangdipsacgpa.azurewebsites.net/

## Data Array
This application uses ArrayList to hold all the static elements
```C#
        private string[] gradeList = { " ", "A+", "A", "A-", "B+", "B", "B-", "C+", "C", "D+", "D", "F" };
        private double[] gpaScore = { 99, 5, 5, 4.5, 4.0, 3.5, 3.0, 2.5, 2.0, 1.5, 1.0, 0 };
        private double[] weightage = {6.0, 8.0, 8.0, 4.0, 6.0, 6.0, 12.0 };
```

## Page Load
When the page load, the application will create an array to hold all the DownDropList items and bind the array data to it.
```C#
            if (!IsPostBack)
            {
                DropDownList[] ddlControls = { Ddl4101, Ddl4102, Ddl4104, Ddl4105, Ddl4108, DdlAd, DdlIntern };
                BindData(ddlControls);

            }
 ```
 
 BindData()
 
 ```C#
             foreach(DropDownList d in ddlControl)
            {
                d.DataSource = gradeList;
                d.DataBind();
            }
```
## Button Click
On button click, it will collect the index value from the DropDownList and pass it into the computGpa method to calculate cGPA.
```C#
            int index1 = Ddl4101.SelectedIndex;
            int index2 = Ddl4102.SelectedIndex;
            int index3 = Ddl4104.SelectedIndex;
            int index4 = Ddl4105.SelectedIndex;
            int index5 = Ddl4108.SelectedIndex;
            int index6 = DdlAd.SelectedIndex;
            int index7 = DdlIntern.SelectedIndex;
            computeGpa(index1, index2, index3, index4, index5, index6, index7);
 ```


## Computing GPA Score
The computation of GPA score is based on the following formula:
<br/>
```
CAP = ((P1 Cumulative Grade Point * P1 Modular Credit) + (P2 Cumulative Grade Point * P2 Modular Credit) 
+(P3 Cumulative Grade Point * P3 Modular Credit) + (P4 Cumulative Grade Point * P4 Modular Credit) 
+ (P5 Cumulative Grade Point * P5 Modular Credit) + (P6 Cumulative Grade Point * P6 Modular Credit)) 
/ (Total number of Modular Credits)
```
computeGpa()
```C#
        protected void computeGpa(int index1, int index2, int index3, int index4, int index5, int index6, int index7)
        {
            double gpa4101 = gpaScore[index1] * weightage[0];
            double gpa4102 = gpaScore[index2] * weightage[1];
            double gpa4104 = gpaScore[index3] * weightage[2];
            double gpa4105 = gpaScore[index4] * weightage[3];
            double gpa4108 = gpaScore[index5] * weightage[4];
            double gpaAdProj = gpaScore[index6] * weightage[5];
            double gpaIntern = gpaScore[index7] * weightage[6];

            double[] scoreArray = { gpa4101, gpa4102, gpa4104, gpa4105, gpa4108, gpaAdProj, gpaIntern };
            double totalScore = 0;
            double modularCredit = 0;
            double finalScore = 0;

            for (int i = 0; i < scoreArray.Length; i++)
            {
                if (scoreArray[i] < 396)
                {
                    totalScore += scoreArray[i];
                    modularCredit += weightage[i];
                    finalScore = totalScore / modularCredit;
                }
            }
            LblGPA.Text = string.Format("{0:#.###}", finalScore);
        }
 ```
 ## TODO
- [ ] Catch and Handle exceptions (HttpUnhandledException)
- [ ] To collect final GPA score anoymously for future student to reference?
- [ ] To improve the reponsive web element?
- [ ] To add useful reference resouces for current and future students?
