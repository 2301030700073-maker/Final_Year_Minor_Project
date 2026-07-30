package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.text.InputFilter;
import android.util.AttributeSet;
import android.widget.CheckBox;
import com.joeykrim.rootcheck.R;
import defpackage.C0742bH;
import defpackage.C3645ro;
import defpackage.C3793uH;
import defpackage.C3836v1;
import defpackage.C4013y1;
import defpackage.InterfaceC4029yH;
import defpackage.M1;
import defpackage.S1;

/* loaded from: classes.dex */
public class AppCompatCheckBox extends CheckBox implements InterfaceC4029yH {

    /* renamed from: do, reason: not valid java name */
    public M1 f5684do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final S1 f5685do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final C3836v1 f5686do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final C4013y1 f5687do;

    public AppCompatCheckBox(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.checkboxStyle);
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    public void drawableStateChanged() {
        super.drawableStateChanged();
        C3836v1 c3836v1 = this.f5686do;
        if (c3836v1 != null) {
            c3836v1.m8414do();
        }
        S1 s1 = this.f5685do;
        if (s1 != null) {
            s1.m2090if();
        }
    }

    @Override // android.widget.CompoundButton, android.widget.TextView
    public final int getCompoundPaddingLeft() {
        int compoundPaddingLeft = super.getCompoundPaddingLeft();
        C4013y1 c4013y1 = this.f5687do;
        if (c4013y1 != null) {
            c4013y1.getClass();
        }
        return compoundPaddingLeft;
    }

    @Override // defpackage.InterfaceC4029yH
    /* renamed from: new */
    public final void mo3407new(PorterDuff.Mode mode) {
        S1 s1 = this.f5685do;
        s1.m2085catch(mode);
        s1.m2090if();
    }

    @Override // android.widget.TextView
    public final void setAllCaps(boolean z) {
        super.setAllCaps(z);
        if (this.f5684do == null) {
            this.f5684do = new M1(this);
        }
        this.f5684do.m1378try(z);
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        C3836v1 c3836v1 = this.f5686do;
        if (c3836v1 != null) {
            c3836v1.m8421try();
        }
    }

    @Override // android.view.View
    public void setBackgroundResource(int i) {
        super.setBackgroundResource(i);
        C3836v1 c3836v1 = this.f5686do;
        if (c3836v1 != null) {
            c3836v1.m8413case(i);
        }
    }

    @Override // android.widget.CompoundButton
    public void setButtonDrawable(Drawable drawable) {
        super.setButtonDrawable(drawable);
        C4013y1 c4013y1 = this.f5687do;
        if (c4013y1 != null) {
            if (c4013y1.f16664for) {
                c4013y1.f16664for = false;
            } else {
                c4013y1.f16664for = true;
                c4013y1.m8696do();
            }
        }
    }

    @Override // android.widget.TextView
    public void setCompoundDrawables(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        super.setCompoundDrawables(drawable, drawable2, drawable3, drawable4);
        S1 s1 = this.f5685do;
        if (s1 != null) {
            s1.m2090if();
        }
    }

    @Override // android.widget.TextView
    public void setCompoundDrawablesRelative(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        super.setCompoundDrawablesRelative(drawable, drawable2, drawable3, drawable4);
        S1 s1 = this.f5685do;
        if (s1 != null) {
            s1.m2090if();
        }
    }

    @Override // android.widget.TextView
    public final void setFilters(InputFilter[] inputFilterArr) {
        if (this.f5684do == null) {
            this.f5684do = new M1(this);
        }
        super.setFilters(this.f5684do.m1376if(inputFilterArr));
    }

    @Override // defpackage.InterfaceC4029yH
    /* renamed from: try */
    public final void mo3408try(ColorStateList colorStateList) {
        S1 s1 = this.f5685do;
        s1.m2084break(colorStateList);
        s1.m2090if();
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AppCompatCheckBox(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        C3793uH.m8378do(context);
        C0742bH.m4822do(getContext(), this);
        C4013y1 c4013y1 = new C4013y1(this);
        this.f5687do = c4013y1;
        c4013y1.m8697if(attributeSet, i);
        C3836v1 c3836v1 = new C3836v1(this);
        this.f5686do = c3836v1;
        c3836v1.m8419new(attributeSet, i);
        S1 s1 = new S1(this);
        this.f5685do = s1;
        s1.m2091new(attributeSet, i);
        if (this.f5684do == null) {
            this.f5684do = new M1(this);
        }
        this.f5684do.m1375for(attributeSet, i);
    }

    @Override // android.widget.CompoundButton
    public void setButtonDrawable(int i) {
        setButtonDrawable(C3645ro.m7997extends(getContext(), i));
    }
}
