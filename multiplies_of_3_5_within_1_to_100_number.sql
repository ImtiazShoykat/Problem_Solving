/* Formatted on 5/6/2024 10:19:35 AM (QP5 v5.391) */
/* 
========================================================================================================================
QUESTION: Print 1 to 100 numbers. But the multiplies of 3 it will print "foot" and multiplies of 5 it will show "ball"

Also show the counts of loop completed and others possible results counts in the output!
=========================================================================================================================
*/
SET SERVEROUTPUT ON;

DECLARE
    v_loopCount       NUMBER := 0;                  --for loop completed count
    v_footBallCount   NUMBER := 0;                 -- for football print count
    v_footCount       NUMBER := 0;                     -- for foot print count
    v_ballCount       NUMBER := 0;                     -- for ball print count
    v_numberCount     NUMBER := 0;                   -- for number print count
BEGIN
    /*
    first I use for loop to print 1 to 100 numbers.
    For loop is simple to me
    */
    FOR i IN 1 .. 100
    LOOP
        IF MOD (i, 3) = 0 AND MOD (i, 5) = 0
        THEN
            DBMS_OUTPUT.put_line ('football'); -- if the number mutiplies 3 and 5 both then it will show this result
            v_footBallCount := v_footBallCount + 1;
        ELSIF MOD (i, 3) = 0
        THEN
            DBMS_OUTPUT.put_line ('foot'); -- if the loop number multiplies by 3 then  it will show this result
            v_footCount := v_footCount + 1;
        ELSIF MOD (i, 5) = 0
        THEN
            DBMS_OUTPUT.put_line ('ball'); -- if the loop number multipies by 3 then  it will show this result
            v_ballCount := v_ballCount + 1;
        ELSE
            DBMS_OUTPUT.put_line (i);
            v_numberCount := v_numberCount + 1; -- if the number is not possible to multiply 3 or 5 then it whill simply show the number
        END IF;

        v_loopCount := v_loopCount + 1; --it will show the all loop completed counts
    END LOOP;

    /* For outputing all the results here */

    DBMS_OUTPUT.put_line ('Loop Completed ' || v_loopCount || ' times.');
    DBMS_OUTPUT.put_line ('Football  Count ' || v_footBallCount || ' times.');
    DBMS_OUTPUT.put_line ('Foot Print Count ' || v_footCount || ' times.');
    DBMS_OUTPUT.put_line ('Ball Print Count ' || v_ballCount || ' times.');
    DBMS_OUTPUT.put_line ('Number  Count ' || v_numberCount || ' times.');
END;