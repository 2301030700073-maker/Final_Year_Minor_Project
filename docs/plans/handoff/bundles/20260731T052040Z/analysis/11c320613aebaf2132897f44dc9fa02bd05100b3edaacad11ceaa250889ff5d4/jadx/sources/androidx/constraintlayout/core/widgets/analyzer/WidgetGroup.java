package androidx.constraintlayout.core.widgets.analyzer;

import androidx.compose.ui.Modifier;
import androidx.constraintlayout.core.LinearSystem;
import androidx.constraintlayout.core.SolverVariable$Type$EnumUnboxingSharedUtility;
import androidx.constraintlayout.core.widgets.Chain;
import androidx.constraintlayout.core.widgets.ConstraintWidget;
import androidx.constraintlayout.core.widgets.ConstraintWidgetContainer;
import androidx.transition.Transition;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class WidgetGroup {
    public static int sCount;
    public int mId;
    public int mMoveTo;
    public int mOrientation;
    public ArrayList mResults;
    public ArrayList mWidgets;

    public final void cleanup(ArrayList arrayList) {
        int size = this.mWidgets.size();
        if (this.mMoveTo != -1 && size > 0) {
            for (int i = 0; i < arrayList.size(); i++) {
                WidgetGroup widgetGroup = (WidgetGroup) arrayList.get(i);
                if (this.mMoveTo == widgetGroup.mId) {
                    moveTo(this.mOrientation, widgetGroup);
                }
            }
        }
        if (size == 0) {
            arrayList.remove(this);
        }
    }

    public final int measureWrap(LinearSystem linearSystem, int i) {
        int objectVariableValue;
        int objectVariableValue2;
        ArrayList arrayList = this.mWidgets;
        if (arrayList.size() == 0) {
            return 0;
        }
        ConstraintWidgetContainer constraintWidgetContainer = (ConstraintWidgetContainer) ((ConstraintWidget) arrayList.get(0)).mParent;
        linearSystem.reset();
        constraintWidgetContainer.addToSolver(linearSystem, false);
        for (int i2 = 0; i2 < arrayList.size(); i2++) {
            ((ConstraintWidget) arrayList.get(i2)).addToSolver(linearSystem, false);
        }
        if (i == 0 && constraintWidgetContainer.mHorizontalChainsSize > 0) {
            Chain.applyChainConstraints(constraintWidgetContainer, linearSystem, arrayList, 0);
        }
        if (i == 1 && constraintWidgetContainer.mVerticalChainsSize > 0) {
            Chain.applyChainConstraints(constraintWidgetContainer, linearSystem, arrayList, 1);
        }
        try {
            linearSystem.minimize();
        } catch (Exception e) {
            System.err.println(e.toString() + "\n" + Arrays.toString(e.getStackTrace()).replace("[", "   at ").replace(",", "\n   at").replace("]", ""));
        }
        this.mResults = new ArrayList();
        for (int i3 = 0; i3 < arrayList.size(); i3++) {
            ConstraintWidget constraintWidget = (ConstraintWidget) arrayList.get(i3);
            Transition.AnonymousClass1 anonymousClass1 = new Transition.AnonymousClass1(8);
            new WeakReference(constraintWidget);
            LinearSystem.getObjectVariableValue(constraintWidget.mLeft);
            LinearSystem.getObjectVariableValue(constraintWidget.mTop);
            LinearSystem.getObjectVariableValue(constraintWidget.mRight);
            LinearSystem.getObjectVariableValue(constraintWidget.mBottom);
            LinearSystem.getObjectVariableValue(constraintWidget.mBaseline);
            this.mResults.add(anonymousClass1);
        }
        if (i == 0) {
            objectVariableValue = LinearSystem.getObjectVariableValue(constraintWidgetContainer.mLeft);
            objectVariableValue2 = LinearSystem.getObjectVariableValue(constraintWidgetContainer.mRight);
            linearSystem.reset();
        } else {
            objectVariableValue = LinearSystem.getObjectVariableValue(constraintWidgetContainer.mTop);
            objectVariableValue2 = LinearSystem.getObjectVariableValue(constraintWidgetContainer.mBottom);
            linearSystem.reset();
        }
        return objectVariableValue2 - objectVariableValue;
    }

    public final void moveTo(int i, WidgetGroup widgetGroup) {
        int i2 = widgetGroup.mId;
        Iterator it = this.mWidgets.iterator();
        while (it.hasNext()) {
            ConstraintWidget constraintWidget = (ConstraintWidget) it.next();
            ArrayList arrayList = widgetGroup.mWidgets;
            if (!arrayList.contains(constraintWidget)) {
                arrayList.add(constraintWidget);
            }
            if (i == 0) {
                constraintWidget.horizontalGroup = i2;
            } else {
                constraintWidget.verticalGroup = i2;
            }
        }
        this.mMoveTo = i2;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        int i = this.mOrientation;
        sb.append(i == 0 ? "Horizontal" : i == 1 ? "Vertical" : i == 2 ? "Both" : "Unknown");
        sb.append(" [");
        String m = Modifier.CC.m(sb, this.mId, "] <");
        Iterator it = this.mWidgets.iterator();
        while (it.hasNext()) {
            ConstraintWidget constraintWidget = (ConstraintWidget) it.next();
            StringBuilder m2 = SolverVariable$Type$EnumUnboxingSharedUtility.m(m, " ");
            m2.append(constraintWidget.mDebugName);
            m = m2.toString();
        }
        return m.concat(" >");
    }
}
