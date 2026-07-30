package androidx.constraintlayout.helper.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import androidx.constraintlayout.widget.ConstraintHelper;
import androidx.constraintlayout.widget.ConstraintLayout;
import defpackage.C0181Ea;
import defpackage.O2;

/* loaded from: classes.dex */
public class Layer extends ConstraintHelper {

    /* renamed from: break, reason: not valid java name */
    public float f6037break;

    /* renamed from: case, reason: not valid java name */
    public float f6038case;

    /* renamed from: catch, reason: not valid java name */
    public float f6039catch;

    /* renamed from: class, reason: not valid java name */
    public float f6040class;

    /* renamed from: const, reason: not valid java name */
    public float f6041const;

    /* renamed from: do, reason: not valid java name */
    public float f6042do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public ConstraintLayout f6043do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final boolean f6044do;

    /* renamed from: else, reason: not valid java name */
    public float f6045else;

    /* renamed from: for, reason: not valid java name */
    public float f6046for;

    /* renamed from: for, reason: not valid java name and collision with other field name */
    public boolean f6047for;

    /* renamed from: goto, reason: not valid java name */
    public float f6048goto;

    /* renamed from: if, reason: not valid java name */
    public float f6049if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public boolean f6050if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public View[] f6051if;

    /* renamed from: new, reason: not valid java name */
    public float f6052new;

    /* renamed from: this, reason: not valid java name */
    public float f6053this;

    /* renamed from: try, reason: not valid java name */
    public float f6054try;

    public Layer(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f6042do = Float.NaN;
        this.f6049if = Float.NaN;
        this.f6046for = Float.NaN;
        this.f6052new = 1.0f;
        this.f6054try = 1.0f;
        this.f6038case = Float.NaN;
        this.f6045else = Float.NaN;
        this.f6048goto = Float.NaN;
        this.f6053this = Float.NaN;
        this.f6037break = Float.NaN;
        this.f6039catch = Float.NaN;
        this.f6044do = true;
        this.f6051if = null;
        this.f6040class = 0.0f;
        this.f6041const = 0.0f;
    }

    @Override // androidx.constraintlayout.widget.ConstraintHelper
    /* renamed from: break */
    public final void mo3563break(AttributeSet attributeSet) {
        super.mo3563break(attributeSet);
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, O2.x);
            int indexCount = obtainStyledAttributes.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = obtainStyledAttributes.getIndex(i);
                if (index == 6) {
                    this.f6050if = true;
                } else if (index == 13) {
                    this.f6047for = true;
                }
            }
        }
    }

    /* renamed from: import, reason: not valid java name */
    public final void m3567import() {
        if (this.f6043do == null) {
            return;
        }
        if (this.f6044do || Float.isNaN(this.f6038case) || Float.isNaN(this.f6045else)) {
            if (!Float.isNaN(this.f6042do) && !Float.isNaN(this.f6049if)) {
                this.f6045else = this.f6049if;
                this.f6038case = this.f6042do;
                return;
            }
            ConstraintLayout constraintLayout = this.f6043do;
            View[] viewArr = ((ConstraintHelper) this).f6240do;
            if (viewArr == null || viewArr.length != ((ConstraintHelper) this).f6241for) {
                ((ConstraintHelper) this).f6240do = new View[((ConstraintHelper) this).f6241for];
            }
            for (int i = 0; i < ((ConstraintHelper) this).f6241for; i++) {
                ((ConstraintHelper) this).f6240do[i] = constraintLayout.m3635for(((ConstraintHelper) this).f6239do[i]);
            }
            View[] viewArr2 = ((ConstraintHelper) this).f6240do;
            int left = viewArr2[0].getLeft();
            int top = viewArr2[0].getTop();
            int right = viewArr2[0].getRight();
            int bottom = viewArr2[0].getBottom();
            for (int i2 = 0; i2 < ((ConstraintHelper) this).f6241for; i2++) {
                View view = viewArr2[i2];
                left = Math.min(left, view.getLeft());
                top = Math.min(top, view.getTop());
                right = Math.max(right, view.getRight());
                bottom = Math.max(bottom, view.getBottom());
            }
            this.f6048goto = right;
            this.f6053this = bottom;
            this.f6037break = left;
            this.f6039catch = top;
            if (Float.isNaN(this.f6042do)) {
                this.f6038case = (left + right) / 2;
            } else {
                this.f6038case = this.f6042do;
            }
            if (Float.isNaN(this.f6049if)) {
                this.f6045else = (top + bottom) / 2;
            } else {
                this.f6045else = this.f6049if;
            }
        }
    }

    /* renamed from: native, reason: not valid java name */
    public final void m3568native() {
        int i;
        if (this.f6043do == null || (i = ((ConstraintHelper) this).f6241for) == 0) {
            return;
        }
        View[] viewArr = this.f6051if;
        if (viewArr == null || viewArr.length != i) {
            this.f6051if = new View[i];
        }
        for (int i2 = 0; i2 < ((ConstraintHelper) this).f6241for; i2++) {
            this.f6051if[i2] = this.f6043do.m3635for(((ConstraintHelper) this).f6239do[i2]);
        }
    }

    @Override // androidx.constraintlayout.widget.ConstraintHelper, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.f6043do = (ConstraintLayout) getParent();
        if (this.f6050if || this.f6047for) {
            int visibility = getVisibility();
            float elevation = getElevation();
            for (int i = 0; i < ((ConstraintHelper) this).f6241for; i++) {
                View m3635for = this.f6043do.m3635for(((ConstraintHelper) this).f6239do[i]);
                if (m3635for != null) {
                    if (this.f6050if) {
                        m3635for.setVisibility(visibility);
                    }
                    if (this.f6047for && elevation > 0.0f) {
                        m3635for.setTranslationZ(m3635for.getTranslationZ() + elevation);
                    }
                }
            }
        }
    }

    /* renamed from: public, reason: not valid java name */
    public final void m3569public() {
        if (this.f6043do == null) {
            return;
        }
        if (this.f6051if == null) {
            m3568native();
        }
        m3567import();
        double radians = Math.toRadians(this.f6046for);
        float sin = (float) Math.sin(radians);
        float cos = (float) Math.cos(radians);
        float f = this.f6052new;
        float f2 = f * cos;
        float f3 = this.f6054try;
        float f4 = (-f3) * sin;
        float f5 = f * sin;
        float f6 = f3 * cos;
        for (int i = 0; i < ((ConstraintHelper) this).f6241for; i++) {
            View view = this.f6051if[i];
            int right = (view.getRight() + view.getLeft()) / 2;
            int bottom = (view.getBottom() + view.getTop()) / 2;
            float f7 = right - this.f6038case;
            float f8 = bottom - this.f6045else;
            float f9 = (((f4 * f8) + (f2 * f7)) - f7) + this.f6040class;
            float f10 = (((f6 * f8) + (f7 * f5)) - f8) + this.f6041const;
            view.setTranslationX(f9);
            view.setTranslationY(f10);
            view.setScaleY(this.f6054try);
            view.setScaleX(this.f6052new);
            view.setRotation(this.f6046for);
        }
    }

    @Override // android.view.View
    public final void setElevation(float f) {
        super.setElevation(f);
        m3627else();
    }

    @Override // android.view.View
    public final void setPivotX(float f) {
        this.f6042do = f;
        m3569public();
    }

    @Override // android.view.View
    public final void setPivotY(float f) {
        this.f6049if = f;
        m3569public();
    }

    @Override // android.view.View
    public final void setRotation(float f) {
        this.f6046for = f;
        m3569public();
    }

    @Override // android.view.View
    public final void setScaleX(float f) {
        this.f6052new = f;
        m3569public();
    }

    @Override // android.view.View
    public final void setScaleY(float f) {
        this.f6054try = f;
        m3569public();
    }

    @Override // android.view.View
    public final void setTranslationX(float f) {
        this.f6040class = f;
        m3569public();
    }

    @Override // android.view.View
    public final void setTranslationY(float f) {
        this.f6041const = f;
        m3569public();
    }

    @Override // android.view.View
    public final void setVisibility(int i) {
        super.setVisibility(i);
        m3627else();
    }

    @Override // androidx.constraintlayout.widget.ConstraintHelper
    /* renamed from: super, reason: not valid java name */
    public final void mo3570super() {
        m3568native();
        this.f6038case = Float.NaN;
        this.f6045else = Float.NaN;
        C0181Ea c0181Ea = ((ConstraintLayout.LayoutParams) getLayoutParams()).f6271do;
        c0181Ea.m474private(0);
        c0181Ea.m466extends(0);
        m3567import();
        layout(((int) this.f6037break) - getPaddingLeft(), ((int) this.f6039catch) - getPaddingTop(), getPaddingRight() + ((int) this.f6048goto), getPaddingBottom() + ((int) this.f6053this));
        if (Float.isNaN(this.f6046for)) {
            return;
        }
        m3569public();
    }

    @Override // androidx.constraintlayout.widget.ConstraintHelper
    /* renamed from: throw, reason: not valid java name */
    public final void mo3571throw(ConstraintLayout constraintLayout) {
        this.f6043do = constraintLayout;
        float rotation = getRotation();
        if (rotation != 0.0f) {
            this.f6046for = rotation;
        } else {
            if (Float.isNaN(this.f6046for)) {
                return;
            }
            this.f6046for = rotation;
        }
    }

    public Layer(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f6042do = Float.NaN;
        this.f6049if = Float.NaN;
        this.f6046for = Float.NaN;
        this.f6052new = 1.0f;
        this.f6054try = 1.0f;
        this.f6038case = Float.NaN;
        this.f6045else = Float.NaN;
        this.f6048goto = Float.NaN;
        this.f6053this = Float.NaN;
        this.f6037break = Float.NaN;
        this.f6039catch = Float.NaN;
        this.f6044do = true;
        this.f6051if = null;
        this.f6040class = 0.0f;
        this.f6041const = 0.0f;
    }
}
