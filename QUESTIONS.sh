clear
printf '\n\nNow you can begin. Attempt to solve using only the official kubernetes.io documentation.'
printf '\nIt will be easiest to open up a second terminal tab to solve the questions, keeping this first tab with the displayed questions to refer to.\n'
# printf '\nTroubleshooting & Cluster Setup/Configuration/Installation questions = highest priority based on weight. Storage questions = lowest priority.\n'
printf '\nAllow 3 minutes per question, leaving 12 review minutes at the end to check your work.\n\n'
cat ./CKAD-Exam-Questions/Q1/README.md
cat ./CKAD-Exam-Questions/Q2/README.md
cat ./CKAD-Exam-Questions/Q3/README.md
cat ./CKAD-Exam-Questions/Q4/README.md
cat ./CKAD-Exam-Questions/Q5/README.md
cat ./CKAD-Exam-Questions/Q6/README.md
cat ./CKAD-Exam-Questions/Q7/README.md
cat ./CKAD-Exam-Questions/Q8/README.md
cat ./CKAD-Exam-Questions/Q9/README.md
cat ./CKAD-Exam-Questions/Q10/README.md
cat ./CKAD-Exam-Questions/Q11/README.md
cat ./CKAD-Exam-Questions/Q12/README.md
cat ./CKAD-Exam-Questions/Q13/README.md
cat ./CKAD-Exam-Questions/Q14/README.md
cat ./CKAD-Exam-Questions/Q15/README.md
cat ./CKAD-Exam-Questions/Q16/README.md

# Command to copy to re-print a question
printf '\nTo review a specific question later on, run this command below.\nWhere "Q#" is the letter Q followed by the question number (i.e. Q12):\n\ncat ./CKAD-Exam-Questions/Q#/README.md\n'
printf '\nTo list all questions again, run sh CKAD-Exam-Questions/QUESTIONS.sh\n\n'