package androidx.appcompat.widget;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.text.InputFilter;
import android.util.AttributeSet;
import android.widget.ToggleButton;
import defpackage.C0742bH;
import defpackage.C3836v1;
import defpackage.InterfaceC4029yH;
import defpackage.M1;
import defpackage.S1;

/* loaded from: classes.dex */
public class AppCompatToggleButton extends ToggleButton implements InterfaceC4029yH {

    /* renamed from: do, reason: not valid java name */
    public M1 f5749do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final S1 f5750do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final C3836v1 f5751do;

    public AppCompatToggleButton(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.buttonStyleToggle);
    }

    @Override // android.widget.ToggleButton, android.widget.CompoundButton, android.widget.TextView, android.view.View
    public final void drawableStateChanged() {
        super.drawableStateChanged();
        C3836v1 c3836v1 = this.f5751do;
        if (c3836v1 != null) {
            c3836v1.m8414do();
        }
        S1 s1 = this.f5750do;
        if (s1 != null) {
            s1.m2090if();
        }
    }

    @Override // defpackage.InterfaceC4029yH
    /* renamed from: new */
    public final void mo3407new(PorterDuff.Mode mode) {
        S1 s1 = this.f5750do;
        s1.m2085catch(mode);
        s1.m2090if();
    }

    @Override // android.widget.TextView
    public final void setAllCaps(boolean z) {
        super.setAllCaps(z);
        if (this.f5749do == null) {
            this.f5749do = new M1(this);
        }
        this.f5749do.m1378try(z);
    }

    @Override // android.widget.ToggleButton, android.view.View
    public final void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        C3836v1 c3836v1 = this.f5751do;
        if (c3836v1 != null) {
            c3836v1.m8421try();
        }
    }

    @Override // android.view.View
    public final void setBackgroundResource(int i) {
        super.setBackgroundResource(i);
        C3836v1 c3836v1 = this.f5751do;
        if (c3836v1 != null) {
            c3836v1.m8413case(i);
        }
    }

    @Override // android.widget.TextView
    public final void setCompoundDrawables(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        super.setCompoundDrawables(drawable, drawable2, drawable3, drawable4);
        S1 s1 = this.f5750do;
        if (s1 != null) {
            s1.m2090if();
        }
    }

    @Override // android.widget.TextView
    public final void setCompoundDrawablesRelative(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        super.setCompoundDrawablesRelative(drawable, drawable2, drawable3, drawable4);
        S1 s1 = this.f5750do;
        if (s1 != null) {
            s1.m2090if();
        }
    }

    @Override // android.widget.TextView
    public final void setFilters(InputFilter[] inputFilterArr) {
        if (this.f5749do == null) {
            this.f5749do = new M1(this);
        }
        super.setFilters(this.f5749do.m1376if(inputFilterArr));
    }

    @Override // defpackage.InterfaceC4029yH
    /* renamed from: try */
    public final void mo3408try(ColorStateList colorStateList) {
        S1 s1 = this.f5750do;
        s1.m2084break(colorStateList);
        s1.m2090if();
    }

    public AppCompatToggleButton(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        C0742bH.m4822do(getContext(), this);
        C3836v1 c3836v1 = new C3836v1(this);
        this.f5751do = c3836v1;
        c3836v1.m8419new(attributeSet, i);
        S1 s1 = new S1(this);
        this.f5750do = s1;
        s1.m2091new(attributeSet, i);
        if (this.f5749do == null) {
            this.f5749do = new M1(this);
        }
        this.f5749do.m1375for(attributeSet, i);
    }
}
