package androidx.constraintlayout.motion.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import androidx.constraintlayout.motion.widget.MotionLayout;
import androidx.constraintlayout.widget.ConstraintHelper;
import defpackage.O2;

/* loaded from: classes.dex */
public class MotionHelper extends ConstraintHelper implements MotionLayout.Celse {

    /* renamed from: do, reason: not valid java name */
    public boolean f6055do;

    /* renamed from: if, reason: not valid java name */
    public boolean f6056if;

    public MotionHelper(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f6055do = false;
        this.f6056if = false;
        mo3563break(attributeSet);
    }

    @Override // androidx.constraintlayout.widget.ConstraintHelper
    /* renamed from: break */
    public final void mo3563break(AttributeSet attributeSet) {
        super.mo3563break(attributeSet);
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, O2.K);
            int indexCount = obtainStyledAttributes.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = obtainStyledAttributes.getIndex(i);
                if (index == 1) {
                    this.f6055do = obtainStyledAttributes.getBoolean(index, this.f6055do);
                } else if (index == 0) {
                    this.f6056if = obtainStyledAttributes.getBoolean(index, this.f6056if);
                }
            }
        }
    }

    @Override // androidx.constraintlayout.motion.widget.MotionLayout.Celse
    /* renamed from: do, reason: not valid java name */
    public final void mo3572do() {
    }

    @Override // androidx.constraintlayout.motion.widget.MotionLayout.Celse
    /* renamed from: for, reason: not valid java name */
    public final void mo3573for() {
    }

    @Override // androidx.constraintlayout.motion.widget.MotionLayout.Celse
    /* renamed from: if, reason: not valid java name */
    public final void mo3574if() {
    }

    @Override // androidx.constraintlayout.motion.widget.MotionLayout.Celse
    /* renamed from: new, reason: not valid java name */
    public final void mo3575new() {
    }

    public MotionHelper(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f6055do = false;
        this.f6056if = false;
        mo3563break(attributeSet);
    }
}
