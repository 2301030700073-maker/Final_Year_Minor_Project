package androidx.constraintlayout.core.widgets;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.Owner;
import androidx.constraintlayout.core.ArrayRow;
import androidx.constraintlayout.core.LinearSystem;
import androidx.constraintlayout.core.SolverVariable;
import androidx.constraintlayout.core.widgets.analyzer.Direct;
import androidx.constraintlayout.core.widgets.analyzer.WidgetGroup;
import java.util.ArrayList;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class Barrier extends ConstraintWidget {
    public boolean mAllowsGoneWidget;
    public int mBarrierType;
    public int mMargin;
    public boolean mResolved;
    public ConstraintWidget[] mWidgets;
    public int mWidgetsCount;

    public final void addDependents(int i, WidgetGroup widgetGroup, ArrayList arrayList) {
        for (int i2 = 0; i2 < this.mWidgetsCount; i2++) {
            ConstraintWidget constraintWidget = this.mWidgets[i2];
            ArrayList arrayList2 = widgetGroup.mWidgets;
            if (!arrayList2.contains(constraintWidget)) {
                arrayList2.add(constraintWidget);
            }
        }
        for (int i3 = 0; i3 < this.mWidgetsCount; i3++) {
            Direct.findDependents(this.mWidgets[i3], i, arrayList, widgetGroup);
        }
    }

    @Override // androidx.constraintlayout.core.widgets.ConstraintWidget
    public final void addToSolver(LinearSystem linearSystem, boolean z) {
        boolean z2;
        int i;
        int i2;
        ConstraintAnchor[] constraintAnchorArr = this.mListAnchors;
        ConstraintAnchor constraintAnchor = this.mLeft;
        constraintAnchorArr[0] = constraintAnchor;
        int i3 = 2;
        ConstraintAnchor constraintAnchor2 = this.mTop;
        constraintAnchorArr[2] = constraintAnchor2;
        ConstraintAnchor constraintAnchor3 = this.mRight;
        constraintAnchorArr[1] = constraintAnchor3;
        ConstraintAnchor constraintAnchor4 = this.mBottom;
        constraintAnchorArr[3] = constraintAnchor4;
        for (ConstraintAnchor constraintAnchor5 : constraintAnchorArr) {
            constraintAnchor5.mSolverVariable = linearSystem.createObjectVariable(constraintAnchor5);
        }
        int i4 = this.mBarrierType;
        if (i4 < 0 || i4 >= 4) {
            return;
        }
        ConstraintAnchor constraintAnchor6 = constraintAnchorArr[i4];
        if (!this.mResolved) {
            allSolved();
        }
        if (this.mResolved) {
            this.mResolved = false;
            int i5 = this.mBarrierType;
            if (i5 == 0 || i5 == 1) {
                linearSystem.addEquality(constraintAnchor.mSolverVariable, this.mX);
                linearSystem.addEquality(constraintAnchor3.mSolverVariable, this.mX);
                return;
            } else {
                if (i5 == 2 || i5 == 3) {
                    linearSystem.addEquality(constraintAnchor2.mSolverVariable, this.mY);
                    linearSystem.addEquality(constraintAnchor4.mSolverVariable, this.mY);
                    return;
                }
                return;
            }
        }
        for (int i6 = 0; i6 < this.mWidgetsCount; i6++) {
            ConstraintWidget constraintWidget = this.mWidgets[i6];
            if ((this.mAllowsGoneWidget || constraintWidget.allowedInBarrier()) && ((((i2 = this.mBarrierType) == 0 || i2 == 1) && constraintWidget.mListDimensionBehaviors[0] == 3 && constraintWidget.mLeft.mTarget != null && constraintWidget.mRight.mTarget != null) || ((i2 == 2 || i2 == 3) && constraintWidget.mListDimensionBehaviors[1] == 3 && constraintWidget.mTop.mTarget != null && constraintWidget.mBottom.mTarget != null))) {
                z2 = true;
                break;
            }
        }
        z2 = false;
        boolean z3 = constraintAnchor.hasCenteredDependents() || constraintAnchor3.hasCenteredDependents();
        boolean z4 = constraintAnchor2.hasCenteredDependents() || constraintAnchor4.hasCenteredDependents();
        int i7 = !(!z2 && (((i = this.mBarrierType) == 0 && z3) || ((i == 2 && z4) || ((i == 1 && z3) || (i == 3 && z4))))) ? 4 : 5;
        int i8 = 0;
        while (i8 < this.mWidgetsCount) {
            ConstraintWidget constraintWidget2 = this.mWidgets[i8];
            if (this.mAllowsGoneWidget || constraintWidget2.allowedInBarrier()) {
                SolverVariable createObjectVariable = linearSystem.createObjectVariable(constraintWidget2.mListAnchors[this.mBarrierType]);
                ConstraintAnchor[] constraintAnchorArr2 = constraintWidget2.mListAnchors;
                int i9 = this.mBarrierType;
                ConstraintAnchor constraintAnchor7 = constraintAnchorArr2[i9];
                constraintAnchor7.mSolverVariable = createObjectVariable;
                ConstraintAnchor constraintAnchor8 = constraintAnchor7.mTarget;
                int i10 = (constraintAnchor8 == null || constraintAnchor8.mOwner != this) ? 0 : constraintAnchor7.mMargin;
                if (i9 == 0 || i9 == i3) {
                    SolverVariable solverVariable = constraintAnchor6.mSolverVariable;
                    int i11 = this.mMargin - i10;
                    ArrayRow createRow = linearSystem.createRow();
                    SolverVariable createSlackVariable = linearSystem.createSlackVariable();
                    createSlackVariable.strength = 0;
                    createRow.createRowLowerThan(solverVariable, createObjectVariable, createSlackVariable, i11);
                    linearSystem.addConstraint(createRow);
                } else {
                    SolverVariable solverVariable2 = constraintAnchor6.mSolverVariable;
                    int i12 = this.mMargin + i10;
                    ArrayRow createRow2 = linearSystem.createRow();
                    SolverVariable createSlackVariable2 = linearSystem.createSlackVariable();
                    createSlackVariable2.strength = 0;
                    createRow2.createRowGreaterThan(solverVariable2, createObjectVariable, createSlackVariable2, i12);
                    linearSystem.addConstraint(createRow2);
                }
                linearSystem.addEquality(constraintAnchor6.mSolverVariable, createObjectVariable, this.mMargin + i10, i7);
            }
            i8++;
            i3 = 2;
        }
        int i13 = this.mBarrierType;
        if (i13 == 0) {
            linearSystem.addEquality(constraintAnchor3.mSolverVariable, constraintAnchor.mSolverVariable, 0, 8);
            linearSystem.addEquality(constraintAnchor.mSolverVariable, this.mParent.mRight.mSolverVariable, 0, 4);
            linearSystem.addEquality(constraintAnchor.mSolverVariable, this.mParent.mLeft.mSolverVariable, 0, 0);
            return;
        }
        if (i13 == 1) {
            linearSystem.addEquality(constraintAnchor.mSolverVariable, constraintAnchor3.mSolverVariable, 0, 8);
            linearSystem.addEquality(constraintAnchor.mSolverVariable, this.mParent.mLeft.mSolverVariable, 0, 4);
            linearSystem.addEquality(constraintAnchor.mSolverVariable, this.mParent.mRight.mSolverVariable, 0, 0);
        } else if (i13 == 2) {
            linearSystem.addEquality(constraintAnchor4.mSolverVariable, constraintAnchor2.mSolverVariable, 0, 8);
            linearSystem.addEquality(constraintAnchor2.mSolverVariable, this.mParent.mBottom.mSolverVariable, 0, 4);
            linearSystem.addEquality(constraintAnchor2.mSolverVariable, this.mParent.mTop.mSolverVariable, 0, 0);
        } else if (i13 == 3) {
            linearSystem.addEquality(constraintAnchor2.mSolverVariable, constraintAnchor4.mSolverVariable, 0, 8);
            linearSystem.addEquality(constraintAnchor2.mSolverVariable, this.mParent.mTop.mSolverVariable, 0, 4);
            linearSystem.addEquality(constraintAnchor2.mSolverVariable, this.mParent.mBottom.mSolverVariable, 0, 0);
        }
    }

    public final boolean allSolved() {
        int i;
        int i2;
        int i3;
        boolean z = true;
        int i4 = 0;
        while (true) {
            i = this.mWidgetsCount;
            if (i4 >= i) {
                break;
            }
            ConstraintWidget constraintWidget = this.mWidgets[i4];
            if ((this.mAllowsGoneWidget || constraintWidget.allowedInBarrier()) && ((((i2 = this.mBarrierType) == 0 || i2 == 1) && !constraintWidget.isResolvedHorizontally()) || (((i3 = this.mBarrierType) == 2 || i3 == 3) && !constraintWidget.isResolvedVertically()))) {
                z = false;
            }
            i4++;
        }
        if (!z || i <= 0) {
            return false;
        }
        int i5 = 0;
        boolean z2 = false;
        for (int i6 = 0; i6 < this.mWidgetsCount; i6++) {
            ConstraintWidget constraintWidget2 = this.mWidgets[i6];
            if (this.mAllowsGoneWidget || constraintWidget2.allowedInBarrier()) {
                if (!z2) {
                    int i7 = this.mBarrierType;
                    if (i7 == 0) {
                        i5 = constraintWidget2.getAnchor(2).getFinalValue();
                    } else if (i7 == 1) {
                        i5 = constraintWidget2.getAnchor(4).getFinalValue();
                    } else if (i7 == 2) {
                        i5 = constraintWidget2.getAnchor(3).getFinalValue();
                    } else if (i7 == 3) {
                        i5 = constraintWidget2.getAnchor(5).getFinalValue();
                    }
                    z2 = true;
                }
                int i8 = this.mBarrierType;
                if (i8 == 0) {
                    i5 = Math.min(i5, constraintWidget2.getAnchor(2).getFinalValue());
                } else if (i8 == 1) {
                    i5 = Math.max(i5, constraintWidget2.getAnchor(4).getFinalValue());
                } else if (i8 == 2) {
                    i5 = Math.min(i5, constraintWidget2.getAnchor(3).getFinalValue());
                } else if (i8 == 3) {
                    i5 = Math.max(i5, constraintWidget2.getAnchor(5).getFinalValue());
                }
            }
        }
        int i9 = i5 + this.mMargin;
        int i10 = this.mBarrierType;
        if (i10 == 0 || i10 == 1) {
            setFinalHorizontal(i9, i9);
        } else {
            setFinalVertical(i9, i9);
        }
        this.mResolved = true;
        return true;
    }

    @Override // androidx.constraintlayout.core.widgets.ConstraintWidget
    public final boolean allowedInBarrier() {
        return true;
    }

    public final int getOrientation() {
        int i = this.mBarrierType;
        if (i == 0 || i == 1) {
            return 0;
        }
        return (i == 2 || i == 3) ? 1 : -1;
    }

    @Override // androidx.constraintlayout.core.widgets.ConstraintWidget
    public final boolean isResolvedHorizontally() {
        return this.mResolved;
    }

    @Override // androidx.constraintlayout.core.widgets.ConstraintWidget
    public final boolean isResolvedVertically() {
        return this.mResolved;
    }

    @Override // androidx.constraintlayout.core.widgets.ConstraintWidget
    public final String toString() {
        String m = Modifier.CC.m(new StringBuilder("[Barrier] "), this.mDebugName, " {");
        for (int i = 0; i < this.mWidgetsCount; i++) {
            ConstraintWidget constraintWidget = this.mWidgets[i];
            if (i > 0) {
                m = m.concat(", ");
            }
            StringBuilder m2 = Owner.CC.m(m);
            m2.append(constraintWidget.mDebugName);
            m = m2.toString();
        }
        return m.concat("}");
    }
}
