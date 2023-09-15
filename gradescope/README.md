# Gradescope config

For Jupyter notebooks, we are using the Otter Grader tool.  This tool allows
you to create a master Jupyter notebook containing, the questions for students,
the test cases, and the solutions.  The Otter Grader tool will then use
this as input to generate the version of the Jupyter notebook that gets 
shared with students (made available via the `main` branch of the repo), and
a `gradescope.zip` file that gets uploaded to Gradescope to handle the 
auto grading.  

This README will not go into the details of formatting the Jupyter notebook
for auto grading.  For that information, refer to the below referenced Otter
Grader website.  

## References

Gradescope: https://gradescope-autograders.readthedocs.io/en/latest/python/#dependencies-for-tests
Otter Grader: https://otter-grader.readthedocs.io/en/latest/index.html

## Otter Grader Setup

The most basic setup only requires installing of the Python otter-grader
package (Python 3.6+ required):

`pip install otter-grader`

The PDF export internals require either LaTeX and Pandoc or wkhtmltopdf to be 
installed. Docker is also required to grade assignments locally with 
containerization.  

## Create your Otter Grader Jupyter Notebook
Ensure your Jupyter notebook contains the appropriate Otter Grader configuration
at the top.  For example:

```
# ASSIGNMENT CONFIG
requirements: requirements.txt
solutions_pdf: false
files:
    - sentiment-analysis-jumia-reviews.csv
export_cell:
    instructions: "These are some submission instructions."
generate: 
    pdf: false
    filtering: true
    pagebreaks: true
    zips: false
```

Embed questions and solutions into the Jupyter Notebook using specified format.
Please refer to https://otter-grader.readthedocs.io/en/latest/otter_assign/notebook_format.html
for details.

## Generating Student Files and Auto Grader

Run the following commands:
1. Generate the gradescope auto grader and student files into a directory called `dist`:

    `otter assign <Jupyter notebook>.ipynb dist` 

2. Upload the autograder zip file in `./dist/autograder` to GradeScope.
    
3. Update the student files to the `main` branch of the repo. Make sure you've committed and synced your changes, then from the base directory of the repo, run the following command:

    `./gradescope/copy_to_main.sh`

Note: Don't commit the `dist` directory or anything within it to the 
`solution`.  You can just delete it.  This way we can avoid the auto-generated
Otter files from becoming out of sync with the master Jupyter notebook
