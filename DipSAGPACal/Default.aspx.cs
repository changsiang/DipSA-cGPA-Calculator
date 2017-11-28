using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DipSAGPACal
{
    public partial class Default : System.Web.UI.Page
    {
        private string[] gradeList = { " ", "A+", "A", "A-", "B+", "B", "B-", "C+", "C", "D+", "D", "F" };
        private double[] gpaScore = { 99, 5, 5, 4.5, 4.0, 3.5, 3.0, 2.5, 2.0, 1.5, 1.0, 0 };
        private double[] weightage = {6.0, 8.0, 8.0, 4.0, 6.0, 6.0, 12.0 };
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                DropDownList[] ddlControls = { Ddl4101, Ddl4102, Ddl4104, Ddl4105, Ddl4108, DdlAd, DdlIntern };
                BindData(ddlControls);

            }

        }

        protected void BindData(DropDownList[] ddlControl)
        {
            foreach(DropDownList d in ddlControl)
            {
                d.DataSource = gradeList;
                d.DataBind();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int index1 = Ddl4101.SelectedIndex;
            int index2 = Ddl4102.SelectedIndex;
            int index3 = Ddl4104.SelectedIndex;
            int index4 = Ddl4105.SelectedIndex;
            int index5 = Ddl4108.SelectedIndex;
            int index6 = DdlAd.SelectedIndex;
            int index7 = DdlIntern.SelectedIndex;
            computeGpa(index1, index2, index3, index4, index5, index6, index7);
        }

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

    }
    }
