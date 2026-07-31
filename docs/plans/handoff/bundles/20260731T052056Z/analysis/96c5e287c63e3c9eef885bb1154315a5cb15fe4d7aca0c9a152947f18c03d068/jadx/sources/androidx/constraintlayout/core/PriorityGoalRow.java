package androidx.constraintlayout.core;

import androidx.cardview.widget.CardView;
import androidx.recyclerview.widget.DiffUtil;
import androidx.recyclerview.widget.RecyclerView;
import java.util.Arrays;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class PriorityGoalRow extends ArrayRow {
    public CardView.AnonymousClass1 mAccessor;
    public SolverVariable[] mArrayGoals;
    public int mNumGoals;
    public SolverVariable[] mSortArray;

    public final void addToGoal(SolverVariable solverVariable) {
        int i;
        SolverVariable[] solverVariableArr;
        int i2 = 1;
        int i3 = this.mNumGoals + 1;
        SolverVariable[] solverVariableArr2 = this.mArrayGoals;
        if (i3 > solverVariableArr2.length) {
            SolverVariable[] solverVariableArr3 = (SolverVariable[]) Arrays.copyOf(solverVariableArr2, solverVariableArr2.length * 2);
            this.mArrayGoals = solverVariableArr3;
            this.mSortArray = (SolverVariable[]) Arrays.copyOf(solverVariableArr3, solverVariableArr3.length * 2);
        }
        SolverVariable[] solverVariableArr4 = this.mArrayGoals;
        int i4 = this.mNumGoals;
        solverVariableArr4[i4] = solverVariable;
        int i5 = i4 + 1;
        this.mNumGoals = i5;
        if (i5 > 1 && solverVariableArr4[i4].id > solverVariable.id) {
            int i6 = 0;
            while (true) {
                i = this.mNumGoals;
                solverVariableArr = this.mSortArray;
                if (i6 >= i) {
                    break;
                }
                solverVariableArr[i6] = this.mArrayGoals[i6];
                i6++;
            }
            Arrays.sort(solverVariableArr, 0, i, new DiffUtil.AnonymousClass1(i2));
            for (int i7 = 0; i7 < this.mNumGoals; i7++) {
                this.mArrayGoals[i7] = this.mSortArray[i7];
            }
        }
        solverVariable.inGoal = true;
        solverVariable.addToRow(this);
    }

    @Override // androidx.constraintlayout.core.ArrayRow
    public final SolverVariable getPivotCandidate(boolean[] zArr) {
        int i = -1;
        for (int i2 = 0; i2 < this.mNumGoals; i2++) {
            SolverVariable[] solverVariableArr = this.mArrayGoals;
            SolverVariable solverVariable = solverVariableArr[i2];
            if (!zArr[solverVariable.id]) {
                CardView.AnonymousClass1 anonymousClass1 = this.mAccessor;
                anonymousClass1.mCardBackground = solverVariable;
                int i3 = 8;
                if (i == -1) {
                    while (i3 >= 0) {
                        float f = ((SolverVariable) anonymousClass1.mCardBackground).mGoalStrengthVector[i3];
                        if (f <= RecyclerView.DECELERATION_RATE) {
                            if (f < RecyclerView.DECELERATION_RATE) {
                                i = i2;
                                break;
                            }
                            i3--;
                        }
                    }
                } else {
                    SolverVariable solverVariable2 = solverVariableArr[i];
                    while (true) {
                        if (i3 >= 0) {
                            float f2 = solverVariable2.mGoalStrengthVector[i3];
                            float f3 = ((SolverVariable) anonymousClass1.mCardBackground).mGoalStrengthVector[i3];
                            if (f3 == f2) {
                                i3--;
                            } else if (f3 >= f2) {
                            }
                        }
                    }
                }
            }
        }
        if (i == -1) {
            return null;
        }
        return this.mArrayGoals[i];
    }

    @Override // androidx.constraintlayout.core.ArrayRow
    public final boolean isEmpty() {
        return this.mNumGoals == 0;
    }

    public final void removeGoal(SolverVariable solverVariable) {
        int i = 0;
        while (i < this.mNumGoals) {
            if (this.mArrayGoals[i] == solverVariable) {
                while (true) {
                    int i2 = this.mNumGoals;
                    if (i >= i2 - 1) {
                        this.mNumGoals = i2 - 1;
                        solverVariable.inGoal = false;
                        return;
                    } else {
                        SolverVariable[] solverVariableArr = this.mArrayGoals;
                        int i3 = i + 1;
                        solverVariableArr[i] = solverVariableArr[i3];
                        i = i3;
                    }
                }
            } else {
                i++;
            }
        }
    }

    @Override // androidx.constraintlayout.core.ArrayRow
    public final String toString() {
        CardView.AnonymousClass1 anonymousClass1 = this.mAccessor;
        String str = " goal -> (" + this.mConstantValue + ") : ";
        for (int i = 0; i < this.mNumGoals; i++) {
            anonymousClass1.mCardBackground = this.mArrayGoals[i];
            str = str + anonymousClass1 + " ";
        }
        return str;
    }

    @Override // androidx.constraintlayout.core.ArrayRow
    public final void updateFromRow(LinearSystem linearSystem, ArrayRow arrayRow, boolean z) {
        SolverVariable solverVariable = arrayRow.mVariable;
        if (solverVariable == null) {
            return;
        }
        float[] fArr = solverVariable.mGoalStrengthVector;
        ArrayLinkedVariables arrayLinkedVariables = arrayRow.variables;
        int currentSize = arrayLinkedVariables.getCurrentSize();
        for (int i = 0; i < currentSize; i++) {
            SolverVariable variable = arrayLinkedVariables.getVariable(i);
            float variableValue = arrayLinkedVariables.getVariableValue(i);
            CardView.AnonymousClass1 anonymousClass1 = this.mAccessor;
            anonymousClass1.mCardBackground = variable;
            if (variable.inGoal) {
                boolean z2 = true;
                for (int i2 = 0; i2 < 9; i2++) {
                    float[] fArr2 = ((SolverVariable) anonymousClass1.mCardBackground).mGoalStrengthVector;
                    float f = (fArr[i2] * variableValue) + fArr2[i2];
                    fArr2[i2] = f;
                    if (Math.abs(f) < 1.0E-4f) {
                        ((SolverVariable) anonymousClass1.mCardBackground).mGoalStrengthVector[i2] = 0.0f;
                    } else {
                        z2 = false;
                    }
                }
                if (z2) {
                    ((PriorityGoalRow) anonymousClass1.this$0).removeGoal((SolverVariable) anonymousClass1.mCardBackground);
                }
            } else {
                for (int i3 = 0; i3 < 9; i3++) {
                    float f2 = fArr[i3];
                    if (f2 != RecyclerView.DECELERATION_RATE) {
                        float f3 = f2 * variableValue;
                        if (Math.abs(f3) < 1.0E-4f) {
                            f3 = 0.0f;
                        }
                        ((SolverVariable) anonymousClass1.mCardBackground).mGoalStrengthVector[i3] = f3;
                    } else {
                        ((SolverVariable) anonymousClass1.mCardBackground).mGoalStrengthVector[i3] = 0.0f;
                    }
                }
                addToGoal(variable);
            }
            this.mConstantValue = (arrayRow.mConstantValue * variableValue) + this.mConstantValue;
        }
        removeGoal(solverVariable);
    }
}
