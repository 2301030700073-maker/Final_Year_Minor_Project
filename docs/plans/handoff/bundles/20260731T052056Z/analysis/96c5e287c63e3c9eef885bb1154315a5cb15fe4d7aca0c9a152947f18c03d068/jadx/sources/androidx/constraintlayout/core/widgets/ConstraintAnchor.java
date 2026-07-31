package androidx.constraintlayout.core.widgets;

import androidx.constraintlayout.core.SolverVariable;
import androidx.constraintlayout.core.widgets.analyzer.Direct;
import androidx.constraintlayout.core.widgets.analyzer.WidgetGroup;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class ConstraintAnchor {
    public int mFinalValue;
    public boolean mHasFinalValue;
    public final ConstraintWidget mOwner;
    public SolverVariable mSolverVariable;
    public ConstraintAnchor mTarget;
    public final Type mType;
    public HashSet mDependents = null;
    public int mMargin = 0;
    public int mGoneMargin = Integer.MIN_VALUE;

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Type {
        private static final /* synthetic */ Type[] $VALUES;
        public static final Type BASELINE;
        public static final Type BOTTOM;
        public static final Type CENTER;
        public static final Type CENTER_X;
        public static final Type CENTER_Y;
        public static final Type LEFT;
        public static final Type NONE;
        public static final Type RIGHT;
        public static final Type TOP;

        static {
            Type type = new Type("NONE", 0);
            NONE = type;
            Type type2 = new Type("LEFT", 1);
            LEFT = type2;
            Type type3 = new Type("TOP", 2);
            TOP = type3;
            Type type4 = new Type("RIGHT", 3);
            RIGHT = type4;
            Type type5 = new Type("BOTTOM", 4);
            BOTTOM = type5;
            Type type6 = new Type("BASELINE", 5);
            BASELINE = type6;
            Type type7 = new Type("CENTER", 6);
            CENTER = type7;
            Type type8 = new Type("CENTER_X", 7);
            CENTER_X = type8;
            Type type9 = new Type("CENTER_Y", 8);
            CENTER_Y = type9;
            $VALUES = new Type[]{type, type2, type3, type4, type5, type6, type7, type8, type9};
        }

        public static Type valueOf(String str) {
            return (Type) Enum.valueOf(Type.class, str);
        }

        public static Type[] values() {
            return (Type[]) $VALUES.clone();
        }
    }

    public ConstraintAnchor(ConstraintWidget constraintWidget, Type type) {
        this.mOwner = constraintWidget;
        this.mType = type;
    }

    public final boolean connect(ConstraintAnchor constraintAnchor, int i, int i2, boolean z) {
        if (constraintAnchor == null) {
            reset();
            return true;
        }
        if (!z && !isValidConnection(constraintAnchor)) {
            return false;
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
        return true;
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

    public final ConstraintAnchor getOpposite() {
        Type type = this.mType;
        int ordinal = type.ordinal();
        ConstraintWidget constraintWidget = this.mOwner;
        switch (ordinal) {
            case 0:
            case 5:
            case 6:
            case 7:
            case 8:
                return null;
            case 1:
                return constraintWidget.mRight;
            case 2:
                return constraintWidget.mBottom;
            case 3:
                return constraintWidget.mLeft;
            case 4:
                return constraintWidget.mTop;
            default:
                throw new AssertionError(type.name());
        }
    }

    public final boolean hasCenteredDependents() {
        HashSet hashSet = this.mDependents;
        if (hashSet == null) {
            return false;
        }
        Iterator it = hashSet.iterator();
        while (it.hasNext()) {
            if (((ConstraintAnchor) it.next()).getOpposite().isConnected()) {
                return true;
            }
        }
        return false;
    }

    public final boolean isConnected() {
        return this.mTarget != null;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:11:0x0072 A[RETURN] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean isValidConnection(androidx.constraintlayout.core.widgets.ConstraintAnchor r5) {
        /*
            r4 = this;
            r0 = 0
            if (r5 != 0) goto L5
            goto L74
        L5:
            androidx.constraintlayout.core.widgets.ConstraintWidget r1 = r5.mOwner
            androidx.constraintlayout.core.widgets.ConstraintAnchor$Type r5 = r5.mType
            androidx.constraintlayout.core.widgets.ConstraintAnchor$Type r2 = r4.mType
            r3 = 1
            if (r5 != r2) goto L1d
            androidx.constraintlayout.core.widgets.ConstraintAnchor$Type r5 = androidx.constraintlayout.core.widgets.ConstraintAnchor.Type.BASELINE
            if (r2 != r5) goto L72
            boolean r5 = r1.mHasBaseline
            if (r5 == 0) goto L74
            androidx.constraintlayout.core.widgets.ConstraintWidget r4 = r4.mOwner
            boolean r4 = r4.mHasBaseline
            if (r4 != 0) goto L72
            goto L74
        L1d:
            int r4 = r2.ordinal()
            switch(r4) {
                case 0: goto L74;
                case 1: goto L5c;
                case 2: goto L44;
                case 3: goto L5c;
                case 4: goto L44;
                case 5: goto L3b;
                case 6: goto L2e;
                case 7: goto L74;
                case 8: goto L74;
                default: goto L24;
            }
        L24:
            java.lang.AssertionError r4 = new java.lang.AssertionError
            java.lang.String r5 = r2.name()
            r4.<init>(r5)
            throw r4
        L2e:
            androidx.constraintlayout.core.widgets.ConstraintAnchor$Type r4 = androidx.constraintlayout.core.widgets.ConstraintAnchor.Type.BASELINE
            if (r5 == r4) goto L74
            androidx.constraintlayout.core.widgets.ConstraintAnchor$Type r4 = androidx.constraintlayout.core.widgets.ConstraintAnchor.Type.CENTER_X
            if (r5 == r4) goto L74
            androidx.constraintlayout.core.widgets.ConstraintAnchor$Type r4 = androidx.constraintlayout.core.widgets.ConstraintAnchor.Type.CENTER_Y
            if (r5 == r4) goto L74
            goto L72
        L3b:
            androidx.constraintlayout.core.widgets.ConstraintAnchor$Type r4 = androidx.constraintlayout.core.widgets.ConstraintAnchor.Type.LEFT
            if (r5 == r4) goto L74
            androidx.constraintlayout.core.widgets.ConstraintAnchor$Type r4 = androidx.constraintlayout.core.widgets.ConstraintAnchor.Type.RIGHT
            if (r5 != r4) goto L72
            goto L74
        L44:
            androidx.constraintlayout.core.widgets.ConstraintAnchor$Type r4 = androidx.constraintlayout.core.widgets.ConstraintAnchor.Type.TOP
            if (r5 == r4) goto L4f
            androidx.constraintlayout.core.widgets.ConstraintAnchor$Type r4 = androidx.constraintlayout.core.widgets.ConstraintAnchor.Type.BOTTOM
            if (r5 != r4) goto L4d
            goto L4f
        L4d:
            r4 = r0
            goto L50
        L4f:
            r4 = r3
        L50:
            boolean r1 = r1 instanceof androidx.constraintlayout.core.widgets.Guideline
            if (r1 == 0) goto L5b
            if (r4 != 0) goto L72
            androidx.constraintlayout.core.widgets.ConstraintAnchor$Type r4 = androidx.constraintlayout.core.widgets.ConstraintAnchor.Type.CENTER_Y
            if (r5 != r4) goto L74
            goto L72
        L5b:
            return r4
        L5c:
            androidx.constraintlayout.core.widgets.ConstraintAnchor$Type r4 = androidx.constraintlayout.core.widgets.ConstraintAnchor.Type.LEFT
            if (r5 == r4) goto L67
            androidx.constraintlayout.core.widgets.ConstraintAnchor$Type r4 = androidx.constraintlayout.core.widgets.ConstraintAnchor.Type.RIGHT
            if (r5 != r4) goto L65
            goto L67
        L65:
            r4 = r0
            goto L68
        L67:
            r4 = r3
        L68:
            boolean r1 = r1 instanceof androidx.constraintlayout.core.widgets.Guideline
            if (r1 == 0) goto L73
            if (r4 != 0) goto L72
            androidx.constraintlayout.core.widgets.ConstraintAnchor$Type r4 = androidx.constraintlayout.core.widgets.ConstraintAnchor.Type.CENTER_X
            if (r5 != r4) goto L74
        L72:
            return r3
        L73:
            return r4
        L74:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.core.widgets.ConstraintAnchor.isValidConnection(androidx.constraintlayout.core.widgets.ConstraintAnchor):boolean");
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
            this.mSolverVariable = new SolverVariable(SolverVariable.Type.UNRESTRICTED);
        } else {
            solverVariable.reset();
        }
    }

    public final void setFinalValue(int i) {
        this.mFinalValue = i;
        this.mHasFinalValue = true;
    }

    public final String toString() {
        return this.mOwner.mDebugName + ":" + this.mType.toString();
    }

    public final void connect(ConstraintAnchor constraintAnchor, int i) {
        connect(constraintAnchor, i, Integer.MIN_VALUE, false);
    }
}
