package androidx.constraintlayout.core.widgets;

import androidx.camera.core.ImageAnalysis$$ExternalSyntheticLambda3;
import androidx.compose.ui.Modifier;
import androidx.constraintlayout.core.SolverVariable;
import androidx.constraintlayout.core.widgets.analyzer.Direct;
import androidx.constraintlayout.core.widgets.analyzer.WidgetGroup;
import androidx.datastore.preferences.PreferencesProto$Value;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class ConstraintAnchor {
    public int mFinalValue;
    public boolean mHasFinalValue;
    public final ConstraintWidget mOwner;
    public SolverVariable mSolverVariable;
    public ConstraintAnchor mTarget;
    public final int mType;
    public HashSet mDependents = null;
    public int mMargin = 0;
    public int mGoneMargin = Integer.MIN_VALUE;

    public ConstraintAnchor(ConstraintWidget constraintWidget, int i) {
        this.mOwner = constraintWidget;
        this.mType = i;
    }

    public final void connect(ConstraintAnchor constraintAnchor, int i, int i2) {
        if (constraintAnchor == null) {
            reset();
            return;
        }
        this.mTarget = constraintAnchor;
        if (constraintAnchor.mDependents == null) {
            constraintAnchor.mDependents = new HashSet();
        }
        HashSet hashSet = this.mTarget.mDependents;
        if (hashSet != null) {
            hashSet.add(this);
        }
        this.mMargin = i;
        this.mGoneMargin = i2;
    }

    public final void findDependents(int i, WidgetGroup widgetGroup, ArrayList arrayList) {
        HashSet hashSet = this.mDependents;
        if (hashSet != null) {
            Iterator it = hashSet.iterator();
            while (it.hasNext()) {
                Direct.findDependents(((ConstraintAnchor) it.next()).mOwner, i, arrayList, widgetGroup);
            }
        }
    }

    public final int getFinalValue() {
        if (this.mHasFinalValue) {
            return this.mFinalValue;
        }
        return 0;
    }

    public final int getMargin() {
        ConstraintAnchor constraintAnchor;
        if (this.mOwner.mVisibility == 8) {
            return 0;
        }
        int i = this.mGoneMargin;
        return (i == Integer.MIN_VALUE || (constraintAnchor = this.mTarget) == null || constraintAnchor.mOwner.mVisibility != 8) ? this.mMargin : i;
    }

    public final boolean hasCenteredDependents() {
        ConstraintAnchor constraintAnchor;
        HashSet hashSet = this.mDependents;
        if (hashSet != null) {
            Iterator it = hashSet.iterator();
            while (it.hasNext()) {
                ConstraintAnchor constraintAnchor2 = (ConstraintAnchor) it.next();
                ConstraintWidget constraintWidget = constraintAnchor2.mOwner;
                int i = constraintAnchor2.mType;
                switch (ImageAnalysis$$ExternalSyntheticLambda3.ordinal(i)) {
                    case 0:
                    case 5:
                    case 6:
                    case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                    case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                        constraintAnchor = null;
                        break;
                    case 1:
                        constraintAnchor = constraintWidget.mRight;
                        break;
                    case 2:
                        constraintAnchor = constraintWidget.mBottom;
                        break;
                    case 3:
                        constraintAnchor = constraintWidget.mLeft;
                        break;
                    case 4:
                        constraintAnchor = constraintWidget.mTop;
                        break;
                    default:
                        _UtilJvmKt$$ExternalSyntheticLambda0.m$1((Object) Modifier.CC.name(i));
                        return false;
                }
                if (constraintAnchor.isConnected()) {
                    return true;
                }
            }
        }
        return false;
    }

    public final boolean isConnected() {
        return this.mTarget != null;
    }

    public final void reset() {
        HashSet hashSet;
        ConstraintAnchor constraintAnchor = this.mTarget;
        if (constraintAnchor != null && (hashSet = constraintAnchor.mDependents) != null) {
            hashSet.remove(this);
            if (this.mTarget.mDependents.size() == 0) {
                this.mTarget.mDependents = null;
            }
        }
        this.mDependents = null;
        this.mTarget = null;
        this.mMargin = 0;
        this.mGoneMargin = Integer.MIN_VALUE;
        this.mHasFinalValue = false;
        this.mFinalValue = 0;
    }

    public final void resetSolverVariable() {
        SolverVariable solverVariable = this.mSolverVariable;
        if (solverVariable == null) {
            this.mSolverVariable = new SolverVariable(1);
        } else {
            solverVariable.reset();
        }
    }

    public final void setFinalValue(int i) {
        this.mFinalValue = i;
        this.mHasFinalValue = true;
    }

    public final String toString() {
        return this.mOwner.mDebugName + ":" + Modifier.CC.name(this.mType);
    }
}
