package androidx.constraintlayout.core.widgets;

import androidx.constraintlayout.core.LinearSystem;
import androidx.constraintlayout.core.SolverVariable;
import androidx.constraintlayout.core.widgets.ConstraintWidget;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class Chain {
    public static final boolean[] sFlags = new boolean[3];

    /* JADX WARN: Code restructure failed: missing block: B:161:0x0293, code lost:
    
        if (r7.mOwner == r6) goto L190;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x0113, code lost:
    
        if (r4.mOwner == r8) goto L75;
     */
    /* JADX WARN: Removed duplicated region for block: B:189:0x0310  */
    /* JADX WARN: Removed duplicated region for block: B:192:0x0329  */
    /* JADX WARN: Removed duplicated region for block: B:201:0x0344  */
    /* JADX WARN: Removed duplicated region for block: B:234:0x044a A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:253:0x0698 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:259:0x06a4  */
    /* JADX WARN: Removed duplicated region for block: B:262:0x06af  */
    /* JADX WARN: Removed duplicated region for block: B:265:0x06b8  */
    /* JADX WARN: Removed duplicated region for block: B:267:0x06bf  */
    /* JADX WARN: Removed duplicated region for block: B:272:0x06cf  */
    /* JADX WARN: Removed duplicated region for block: B:274:0x06d3 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:278:0x06ef A[ADDED_TO_REGION, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:279:0x06bb  */
    /* JADX WARN: Removed duplicated region for block: B:280:0x06b2  */
    /* JADX WARN: Removed duplicated region for block: B:289:0x04a7 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00fb  */
    /* JADX WARN: Removed duplicated region for block: B:324:0x0535  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0107  */
    /* JADX WARN: Removed duplicated region for block: B:358:0x0591 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:367:0x05a6  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x011a  */
    /* JADX WARN: Removed duplicated region for block: B:410:0x0647 A[EDGE_INSN: B:410:0x0647->B:411:0x0647 BREAK  A[LOOP:6: B:365:0x05a2->B:398:0x0642], SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:413:0x0660  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x011d A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void applyChainConstraints(androidx.constraintlayout.core.widgets.ConstraintWidgetContainer r40, androidx.constraintlayout.core.LinearSystem r41, java.util.ArrayList r42, int r43) {
        /*
            Method dump skipped, instructions count: 1788
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.core.widgets.Chain.applyChainConstraints(androidx.constraintlayout.core.widgets.ConstraintWidgetContainer, androidx.constraintlayout.core.LinearSystem, java.util.ArrayList, int):void");
    }

    public static void checkMatchParent(ConstraintWidgetContainer constraintWidgetContainer, LinearSystem linearSystem, ConstraintWidget constraintWidget) {
        constraintWidget.mHorizontalResolution = -1;
        ConstraintAnchor constraintAnchor = constraintWidget.mBaseline;
        ConstraintWidget.DimensionBehaviour[] dimensionBehaviourArr = constraintWidget.mListDimensionBehaviors;
        ConstraintAnchor constraintAnchor2 = constraintWidget.mBottom;
        ConstraintAnchor constraintAnchor3 = constraintWidget.mTop;
        ConstraintAnchor constraintAnchor4 = constraintWidget.mRight;
        ConstraintAnchor constraintAnchor5 = constraintWidget.mLeft;
        constraintWidget.mVerticalResolution = -1;
        ConstraintWidget.DimensionBehaviour[] dimensionBehaviourArr2 = constraintWidgetContainer.mListDimensionBehaviors;
        ConstraintWidget.DimensionBehaviour dimensionBehaviour = dimensionBehaviourArr2[0];
        ConstraintWidget.DimensionBehaviour dimensionBehaviour2 = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
        if (dimensionBehaviour != dimensionBehaviour2 && dimensionBehaviourArr[0] == ConstraintWidget.DimensionBehaviour.MATCH_PARENT) {
            int i = constraintAnchor5.mMargin;
            int width = constraintWidgetContainer.getWidth() - constraintAnchor4.mMargin;
            constraintAnchor5.mSolverVariable = linearSystem.createObjectVariable(constraintAnchor5);
            constraintAnchor4.mSolverVariable = linearSystem.createObjectVariable(constraintAnchor4);
            linearSystem.addEquality(constraintAnchor5.mSolverVariable, i);
            linearSystem.addEquality(constraintAnchor4.mSolverVariable, width);
            constraintWidget.mHorizontalResolution = 2;
            constraintWidget.mX = i;
            int i2 = width - i;
            constraintWidget.mWidth = i2;
            int i3 = constraintWidget.mMinWidth;
            if (i2 < i3) {
                constraintWidget.mWidth = i3;
            }
        }
        if (dimensionBehaviourArr2[1] == dimensionBehaviour2 || dimensionBehaviourArr[1] != ConstraintWidget.DimensionBehaviour.MATCH_PARENT) {
            return;
        }
        int i4 = constraintAnchor3.mMargin;
        int height = constraintWidgetContainer.getHeight() - constraintAnchor2.mMargin;
        constraintAnchor3.mSolverVariable = linearSystem.createObjectVariable(constraintAnchor3);
        constraintAnchor2.mSolverVariable = linearSystem.createObjectVariable(constraintAnchor2);
        linearSystem.addEquality(constraintAnchor3.mSolverVariable, i4);
        linearSystem.addEquality(constraintAnchor2.mSolverVariable, height);
        if (constraintWidget.mBaselineDistance > 0 || constraintWidget.mVisibility == 8) {
            SolverVariable createObjectVariable = linearSystem.createObjectVariable(constraintAnchor);
            constraintAnchor.mSolverVariable = createObjectVariable;
            linearSystem.addEquality(createObjectVariable, constraintWidget.mBaselineDistance + i4);
        }
        constraintWidget.mVerticalResolution = 2;
        constraintWidget.mY = i4;
        int i5 = height - i4;
        constraintWidget.mHeight = i5;
        int i6 = constraintWidget.mMinHeight;
        if (i5 < i6) {
            constraintWidget.mHeight = i6;
        }
    }

    public static final boolean enabled(int i, int i2) {
        return (i & i2) == i2;
    }
}
