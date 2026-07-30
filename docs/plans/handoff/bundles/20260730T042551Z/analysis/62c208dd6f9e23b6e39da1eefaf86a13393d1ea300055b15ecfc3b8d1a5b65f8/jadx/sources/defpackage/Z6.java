package defpackage;

import android.view.View;
import android.view.animation.Animation;
import android.view.animation.Transformation;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;

/* loaded from: classes3.dex */
public final class Z6 extends Animation {

    /* renamed from: do, reason: not valid java name */
    public final View f4779do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final LinearLayout.LayoutParams f4780do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final RelativeLayout.LayoutParams f4781do;

    /* renamed from: for, reason: not valid java name */
    public final int f4782for;

    /* renamed from: new, reason: not valid java name */
    public final int f4783new;

    public Z6(LinearLayout linearLayout, int i) {
        this.f4779do = linearLayout;
        setDuration(400);
        this.f4783new = i;
        if (linearLayout.getLayoutParams() instanceof LinearLayout.LayoutParams) {
            this.f4780do = (LinearLayout.LayoutParams) linearLayout.getLayoutParams();
        } else if (linearLayout.getLayoutParams() instanceof RelativeLayout.LayoutParams) {
            this.f4781do = (RelativeLayout.LayoutParams) linearLayout.getLayoutParams();
        }
        if (i == 0) {
            LinearLayout.LayoutParams layoutParams = this.f4780do;
            if (layoutParams != null) {
                layoutParams.height = 0;
            } else {
                RelativeLayout.LayoutParams layoutParams2 = this.f4781do;
                if (layoutParams2 != null) {
                    layoutParams2.height = 0;
                }
            }
        } else if (i == 1) {
            LinearLayout.LayoutParams layoutParams3 = this.f4780do;
            if (layoutParams3 != null) {
                layoutParams3.height = -2;
            } else {
                RelativeLayout.LayoutParams layoutParams4 = this.f4781do;
                if (layoutParams4 != null) {
                    layoutParams4.height = -2;
                }
            }
        }
        linearLayout.measure(0, 0);
        this.f4782for = linearLayout.getMeasuredHeight();
        linearLayout.setVisibility(0);
    }

    @Override // android.view.animation.Animation
    public final void applyTransformation(float f, Transformation transformation) {
        super.applyTransformation(f, transformation);
        int i = this.f4783new;
        RelativeLayout.LayoutParams layoutParams = this.f4781do;
        View view = this.f4779do;
        LinearLayout.LayoutParams layoutParams2 = this.f4780do;
        if (f >= 1.0f) {
            if (i != 0) {
                if (i == 1) {
                    view.setVisibility(8);
                    return;
                }
                return;
            } else {
                if (layoutParams2 != null) {
                    layoutParams2.height = -2;
                } else if (layoutParams != null) {
                    layoutParams.height = -2;
                }
                view.requestLayout();
                return;
            }
        }
        int i2 = this.f4782for;
        if (i == 0) {
            if (layoutParams2 != null) {
                layoutParams2.height = (int) (i2 * f);
            } else if (layoutParams != null) {
                layoutParams.height = (int) (i2 * f);
            }
        } else if (i == 1) {
            if (layoutParams2 != null) {
                layoutParams2.height = (int) ((1.0f - f) * i2);
            } else if (layoutParams != null) {
                layoutParams.height = (int) ((1.0f - f) * i2);
            }
        }
        view.requestLayout();
    }
}
