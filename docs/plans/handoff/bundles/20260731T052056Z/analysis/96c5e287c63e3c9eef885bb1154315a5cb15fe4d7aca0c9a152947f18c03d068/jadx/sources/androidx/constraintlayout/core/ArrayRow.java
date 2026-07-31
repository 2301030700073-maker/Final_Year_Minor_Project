package androidx.constraintlayout.core;

import androidx.constraintlayout.core.SolverVariable;
import androidx.recyclerview.widget.RecyclerView;
import com.caverock.androidsvg.SVG;
import java.util.ArrayList;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public class ArrayRow {
    public final ArrayLinkedVariables variables;
    public SolverVariable mVariable = null;
    public float mConstantValue = RecyclerView.DECELERATION_RATE;
    public final ArrayList mVariablesToUpdate = new ArrayList();
    public boolean mIsSimpleDefinition = false;

    public ArrayRow(SVG svg) {
        this.variables = new ArrayLinkedVariables(this, svg);
    }

    public final void addError(LinearSystem linearSystem, int i) {
        SolverVariable createErrorVariable = linearSystem.createErrorVariable(i);
        ArrayLinkedVariables arrayLinkedVariables = this.variables;
        arrayLinkedVariables.put(createErrorVariable, 1.0f);
        arrayLinkedVariables.put(linearSystem.createErrorVariable(i), -1.0f);
    }

    public final void createRowGreaterThan(SolverVariable solverVariable, SolverVariable solverVariable2, SolverVariable solverVariable3, int i) {
        boolean z = false;
        if (i != 0) {
            if (i < 0) {
                i *= -1;
                z = true;
            }
            this.mConstantValue = i;
        }
        ArrayLinkedVariables arrayLinkedVariables = this.variables;
        if (z) {
            arrayLinkedVariables.put(solverVariable, 1.0f);
            arrayLinkedVariables.put(solverVariable2, -1.0f);
            arrayLinkedVariables.put(solverVariable3, -1.0f);
        } else {
            arrayLinkedVariables.put(solverVariable, -1.0f);
            arrayLinkedVariables.put(solverVariable2, 1.0f);
            arrayLinkedVariables.put(solverVariable3, 1.0f);
        }
    }

    public final void createRowLowerThan(SolverVariable solverVariable, SolverVariable solverVariable2, SolverVariable solverVariable3, int i) {
        boolean z = false;
        if (i != 0) {
            if (i < 0) {
                i *= -1;
                z = true;
            }
            this.mConstantValue = i;
        }
        ArrayLinkedVariables arrayLinkedVariables = this.variables;
        if (z) {
            arrayLinkedVariables.put(solverVariable, 1.0f);
            arrayLinkedVariables.put(solverVariable2, -1.0f);
            arrayLinkedVariables.put(solverVariable3, 1.0f);
        } else {
            arrayLinkedVariables.put(solverVariable, -1.0f);
            arrayLinkedVariables.put(solverVariable2, 1.0f);
            arrayLinkedVariables.put(solverVariable3, -1.0f);
        }
    }

    public SolverVariable getPivotCandidate(boolean[] zArr) {
        return pickPivotInVariables(zArr, null);
    }

    public boolean isEmpty() {
        return this.mVariable == null && this.mConstantValue == RecyclerView.DECELERATION_RATE && this.variables.getCurrentSize() == 0;
    }

    public final SolverVariable pickPivotInVariables(boolean[] zArr, SolverVariable solverVariable) {
        SolverVariable.Type type;
        ArrayLinkedVariables arrayLinkedVariables = this.variables;
        int currentSize = arrayLinkedVariables.getCurrentSize();
        SolverVariable solverVariable2 = null;
        float f = 0.0f;
        for (int i = 0; i < currentSize; i++) {
            float variableValue = arrayLinkedVariables.getVariableValue(i);
            if (variableValue < RecyclerView.DECELERATION_RATE) {
                SolverVariable variable = arrayLinkedVariables.getVariable(i);
                if ((zArr == null || !zArr[variable.id]) && variable != solverVariable && (((type = variable.mType) == SolverVariable.Type.SLACK || type == SolverVariable.Type.ERROR) && variableValue < f)) {
                    f = variableValue;
                    solverVariable2 = variable;
                }
            }
        }
        return solverVariable2;
    }

    public final void pivot(SolverVariable solverVariable) {
        SolverVariable solverVariable2 = this.mVariable;
        ArrayLinkedVariables arrayLinkedVariables = this.variables;
        if (solverVariable2 != null) {
            arrayLinkedVariables.put(solverVariable2, -1.0f);
            this.mVariable.mDefinitionId = -1;
            this.mVariable = null;
        }
        float remove = arrayLinkedVariables.remove(solverVariable, true) * (-1.0f);
        this.mVariable = solverVariable;
        if (remove == 1.0f) {
            return;
        }
        this.mConstantValue /= remove;
        int i = arrayLinkedVariables.mHead;
        for (int i2 = 0; i != -1 && i2 < arrayLinkedVariables.mCurrentSize; i2++) {
            float[] fArr = arrayLinkedVariables.mArrayValues;
            fArr[i] = fArr[i] / remove;
            i = arrayLinkedVariables.mArrayNextIndices[i];
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x0079  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x007e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.String toString() {
        /*
            r10 = this;
            androidx.constraintlayout.core.SolverVariable r0 = r10.mVariable
            if (r0 != 0) goto L7
            java.lang.String r0 = "0"
            goto L17
        L7:
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            java.lang.String r1 = ""
            r0.<init>(r1)
            androidx.constraintlayout.core.SolverVariable r1 = r10.mVariable
            r0.append(r1)
            java.lang.String r0 = r0.toString()
        L17:
            java.lang.String r1 = " = "
            java.lang.String r0 = r0.concat(r1)
            float r1 = r10.mConstantValue
            r2 = 0
            int r1 = (r1 > r2 ? 1 : (r1 == r2 ? 0 : -1))
            r3 = 0
            r4 = 1
            if (r1 == 0) goto L36
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>(r0)
            float r0 = r10.mConstantValue
            r1.append(r0)
            java.lang.String r0 = r1.toString()
            r1 = r4
            goto L37
        L36:
            r1 = r3
        L37:
            androidx.constraintlayout.core.ArrayLinkedVariables r10 = r10.variables
            int r5 = r10.getCurrentSize()
        L3d:
            if (r3 >= r5) goto L96
            androidx.constraintlayout.core.SolverVariable r6 = r10.getVariable(r3)
            if (r6 != 0) goto L46
            goto L93
        L46:
            float r7 = r10.getVariableValue(r3)
            int r8 = (r7 > r2 ? 1 : (r7 == r2 ? 0 : -1))
            if (r8 != 0) goto L4f
            goto L93
        L4f:
            java.lang.String r6 = r6.toString()
            r9 = -1082130432(0xffffffffbf800000, float:-1.0)
            if (r1 != 0) goto L63
            int r1 = (r7 > r2 ? 1 : (r7 == r2 ? 0 : -1))
            if (r1 >= 0) goto L73
            java.lang.String r1 = "- "
            java.lang.String r0 = r0.concat(r1)
        L61:
            float r7 = r7 * r9
            goto L73
        L63:
            if (r8 <= 0) goto L6c
            java.lang.String r1 = " + "
            java.lang.String r0 = r0.concat(r1)
            goto L73
        L6c:
            java.lang.String r1 = " - "
            java.lang.String r0 = r0.concat(r1)
            goto L61
        L73:
            r1 = 1065353216(0x3f800000, float:1.0)
            int r1 = (r7 > r1 ? 1 : (r7 == r1 ? 0 : -1))
            if (r1 != 0) goto L7e
            java.lang.String r0 = r0.concat(r6)
            goto L92
        L7e:
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>(r0)
            r1.append(r7)
            java.lang.String r0 = " "
            r1.append(r0)
            r1.append(r6)
            java.lang.String r0 = r1.toString()
        L92:
            r1 = r4
        L93:
            int r3 = r3 + 1
            goto L3d
        L96:
            if (r1 != 0) goto L9f
            java.lang.String r10 = "0.0"
            java.lang.String r10 = r0.concat(r10)
            return r10
        L9f:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.core.ArrayRow.toString():java.lang.String");
    }

    public final void updateFromFinalVariable(LinearSystem linearSystem, SolverVariable solverVariable, boolean z) {
        if (solverVariable.isFinalValue) {
            ArrayLinkedVariables arrayLinkedVariables = this.variables;
            float f = arrayLinkedVariables.get(solverVariable);
            this.mConstantValue = (solverVariable.computedValue * f) + this.mConstantValue;
            arrayLinkedVariables.remove(solverVariable, z);
            if (z) {
                solverVariable.removeFromRow(this);
            }
            if (arrayLinkedVariables.getCurrentSize() == 0) {
                this.mIsSimpleDefinition = true;
                linearSystem.hasSimpleDefinition = true;
            }
        }
    }

    public void updateFromRow(LinearSystem linearSystem, ArrayRow arrayRow, boolean z) {
        ArrayLinkedVariables arrayLinkedVariables = this.variables;
        arrayLinkedVariables.getClass();
        float f = arrayLinkedVariables.get(arrayRow.mVariable);
        arrayLinkedVariables.remove(arrayRow.mVariable, z);
        ArrayLinkedVariables arrayLinkedVariables2 = arrayRow.variables;
        int currentSize = arrayLinkedVariables2.getCurrentSize();
        for (int i = 0; i < currentSize; i++) {
            SolverVariable variable = arrayLinkedVariables2.getVariable(i);
            arrayLinkedVariables.add(variable, arrayLinkedVariables2.get(variable) * f, z);
        }
        this.mConstantValue = (arrayRow.mConstantValue * f) + this.mConstantValue;
        if (z) {
            arrayRow.mVariable.removeFromRow(this);
        }
        if (this.mVariable == null || arrayLinkedVariables.getCurrentSize() != 0) {
            return;
        }
        this.mIsSimpleDefinition = true;
        linearSystem.hasSimpleDefinition = true;
    }
}
