package androidx.constraintlayout.helper.widget;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.view.View;
import androidx.constraintlayout.widget.Cdo;
import androidx.constraintlayout.widget.ConstraintHelper;
import androidx.constraintlayout.widget.Constraints;
import androidx.constraintlayout.widget.VirtualLayout;
import defpackage.C0181Ea;
import defpackage.C0606Xi;
import defpackage.C2710em;
import defpackage.EL;
import defpackage.O2;

/* loaded from: classes.dex */
public class Flow extends VirtualLayout {

    /* renamed from: do, reason: not valid java name */
    public C0606Xi f6036do;

    public Flow(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    @Override // androidx.constraintlayout.widget.VirtualLayout, androidx.constraintlayout.widget.ConstraintHelper
    /* renamed from: break, reason: not valid java name */
    public final void mo3563break(AttributeSet attributeSet) {
        super.mo3563break(attributeSet);
        this.f6036do = new C0606Xi();
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, O2.x);
            int indexCount = obtainStyledAttributes.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = obtainStyledAttributes.getIndex(i);
                if (index == 0) {
                    this.f6036do.c = obtainStyledAttributes.getInt(index, 0);
                } else if (index == 1) {
                    C0606Xi c0606Xi = this.f6036do;
                    int dimensionPixelSize = obtainStyledAttributes.getDimensionPixelSize(index, 0);
                    c0606Xi.f777static = dimensionPixelSize;
                    c0606Xi.f778switch = dimensionPixelSize;
                    c0606Xi.f779throws = dimensionPixelSize;
                    c0606Xi.f769default = dimensionPixelSize;
                } else if (index == 11) {
                    C0606Xi c0606Xi2 = this.f6036do;
                    int dimensionPixelSize2 = obtainStyledAttributes.getDimensionPixelSize(index, 0);
                    c0606Xi2.f779throws = dimensionPixelSize2;
                    c0606Xi2.f772extends = dimensionPixelSize2;
                    c0606Xi2.f773finally = dimensionPixelSize2;
                } else if (index == 12) {
                    this.f6036do.f769default = obtainStyledAttributes.getDimensionPixelSize(index, 0);
                } else if (index == 2) {
                    this.f6036do.f772extends = obtainStyledAttributes.getDimensionPixelSize(index, 0);
                } else if (index == 3) {
                    this.f6036do.f777static = obtainStyledAttributes.getDimensionPixelSize(index, 0);
                } else if (index == 4) {
                    this.f6036do.f773finally = obtainStyledAttributes.getDimensionPixelSize(index, 0);
                } else if (index == 5) {
                    this.f6036do.f778switch = obtainStyledAttributes.getDimensionPixelSize(index, 0);
                } else if (index == 37) {
                    this.f6036do.a = obtainStyledAttributes.getInt(index, 0);
                } else if (index == 27) {
                    this.f6036do.f4556abstract = obtainStyledAttributes.getInt(index, 0);
                } else if (index == 36) {
                    this.f6036do.f4562continue = obtainStyledAttributes.getInt(index, 0);
                } else if (index == 21) {
                    this.f6036do.f4571strictfp = obtainStyledAttributes.getInt(index, 0);
                } else if (index == 29) {
                    this.f6036do.f4567interface = obtainStyledAttributes.getInt(index, 0);
                } else if (index == 23) {
                    this.f6036do.f4576volatile = obtainStyledAttributes.getInt(index, 0);
                } else if (index == 31) {
                    this.f6036do.f4570protected = obtainStyledAttributes.getInt(index, 0);
                } else if (index == 25) {
                    this.f6036do.f4563goto = obtainStyledAttributes.getFloat(index, 0.5f);
                } else if (index == 20) {
                    this.f6036do.f4557break = obtainStyledAttributes.getFloat(index, 0.5f);
                } else if (index == 28) {
                    this.f6036do.f4560class = obtainStyledAttributes.getFloat(index, 0.5f);
                } else if (index == 22) {
                    this.f6036do.f4559catch = obtainStyledAttributes.getFloat(index, 0.5f);
                } else if (index == 30) {
                    this.f6036do.f4561const = obtainStyledAttributes.getFloat(index, 0.5f);
                } else if (index == 34) {
                    this.f6036do.f4573this = obtainStyledAttributes.getFloat(index, 0.5f);
                } else if (index == 24) {
                    this.f6036do.f4566instanceof = obtainStyledAttributes.getInt(index, 2);
                } else if (index == 33) {
                    this.f6036do.f4572synchronized = obtainStyledAttributes.getInt(index, 2);
                } else if (index == 26) {
                    this.f6036do.f4574transient = obtainStyledAttributes.getDimensionPixelSize(index, 0);
                } else if (index == 35) {
                    this.f6036do.f4565implements = obtainStyledAttributes.getDimensionPixelSize(index, 0);
                } else if (index == 32) {
                    this.f6036do.b = obtainStyledAttributes.getInt(index, -1);
                }
            }
        }
        ((ConstraintHelper) this).f6237do = this.f6036do;
        m3632while();
    }

    @Override // androidx.constraintlayout.widget.ConstraintHelper
    /* renamed from: catch, reason: not valid java name */
    public final void mo3564catch(Cdo.C0033do c0033do, C2710em c2710em, Constraints.LayoutParams layoutParams, SparseArray sparseArray) {
        super.mo3564catch(c0033do, c2710em, layoutParams, sparseArray);
        if (c2710em instanceof C0606Xi) {
            C0606Xi c0606Xi = (C0606Xi) c2710em;
            int i = layoutParams.f6300protected;
            if (i != -1) {
                c0606Xi.c = i;
            }
        }
    }

    @Override // androidx.constraintlayout.widget.ConstraintHelper
    /* renamed from: class, reason: not valid java name */
    public final void mo3565class(C0181Ea c0181Ea, boolean z) {
        C0606Xi c0606Xi = this.f6036do;
        int i = c0606Xi.f779throws;
        if (i > 0 || c0606Xi.f769default > 0) {
            if (z) {
                c0606Xi.f772extends = c0606Xi.f769default;
                c0606Xi.f773finally = i;
            } else {
                c0606Xi.f772extends = i;
                c0606Xi.f773finally = c0606Xi.f769default;
            }
        }
    }

    @Override // androidx.constraintlayout.widget.VirtualLayout
    /* renamed from: import, reason: not valid java name */
    public final void mo3566import(EL el, int i, int i2) {
        int mode = View.MeasureSpec.getMode(i);
        int size = View.MeasureSpec.getSize(i);
        int mode2 = View.MeasureSpec.getMode(i2);
        int size2 = View.MeasureSpec.getSize(i2);
        if (el == null) {
            setMeasuredDimension(0, 0);
        } else {
            el.mo447strictfp(mode, size, mode2, size2);
            setMeasuredDimension(el.f775package, el.f776private);
        }
    }

    @Override // androidx.constraintlayout.widget.ConstraintHelper, android.view.View
    @SuppressLint({"WrongCall"})
    public final void onMeasure(int i, int i2) {
        mo3566import(this.f6036do, i, i2);
    }

    public Flow(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }
}
