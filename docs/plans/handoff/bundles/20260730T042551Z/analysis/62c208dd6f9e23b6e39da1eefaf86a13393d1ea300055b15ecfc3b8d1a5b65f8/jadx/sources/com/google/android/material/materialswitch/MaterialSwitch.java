package com.google.android.material.materialswitch;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.util.AttributeSet;
import android.view.View;
import androidx.appcompat.widget.SwitchCompat;
import com.joeykrim.rootcheck.R;
import defpackage.C0426Pe;
import defpackage.C0492Se;
import defpackage.C0682aH;
import defpackage.C2775fs;
import defpackage.C3738tL;
import defpackage.C3970xH;
import defpackage.G8;
import defpackage.O2;

/* loaded from: classes3.dex */
public class MaterialSwitch extends SwitchCompat {

    /* renamed from: new, reason: not valid java name */
    public static final int[] f11204new = {R.attr.state_with_icon};

    /* renamed from: case, reason: not valid java name */
    public final ColorStateList f11205case;

    /* renamed from: case, reason: not valid java name and collision with other field name */
    public Drawable f11206case;

    /* renamed from: else, reason: not valid java name */
    public final ColorStateList f11207else;

    /* renamed from: for, reason: not valid java name */
    public Drawable f11208for;

    /* renamed from: for, reason: not valid java name and collision with other field name */
    public int[] f11209for;

    /* renamed from: if, reason: not valid java name */
    public int[] f11210if;

    /* renamed from: new, reason: not valid java name and collision with other field name */
    public final ColorStateList f11211new;

    /* renamed from: new, reason: not valid java name and collision with other field name */
    public Drawable f11212new;

    /* renamed from: try, reason: not valid java name */
    public final ColorStateList f11213try;

    /* renamed from: try, reason: not valid java name and collision with other field name */
    public Drawable f11214try;

    public MaterialSwitch(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.materialSwitchStyle);
    }

    /* renamed from: break, reason: not valid java name */
    public static void m5844break(Drawable drawable, ColorStateList colorStateList, int[] iArr, int[] iArr2, float f) {
        if (drawable == null || colorStateList == null) {
            return;
        }
        C0426Pe.Cdo.m1785else(drawable, G8.m710if(f, colorStateList.getColorForState(iArr, 0), colorStateList.getColorForState(iArr2, 0)));
    }

    /* renamed from: catch, reason: not valid java name */
    public final void m5845catch() {
        ColorStateList colorStateList = this.f11207else;
        ColorStateList colorStateList2 = this.f11205case;
        ColorStateList colorStateList3 = this.f11213try;
        ColorStateList colorStateList4 = this.f11211new;
        if (colorStateList4 == null && colorStateList3 == null && colorStateList2 == null && colorStateList == null) {
            return;
        }
        float f = ((SwitchCompat) this).f5890for;
        if (colorStateList4 != null) {
            m5844break(this.f11208for, colorStateList4, this.f11210if, this.f11209for, f);
        }
        if (colorStateList3 != null) {
            m5844break(this.f11212new, colorStateList3, this.f11210if, this.f11209for, f);
        }
        if (colorStateList2 != null) {
            m5844break(this.f11214try, colorStateList2, this.f11210if, this.f11209for, f);
        }
        if (colorStateList != null) {
            m5844break(this.f11206case, colorStateList, this.f11210if, this.f11209for, f);
        }
    }

    @Override // android.view.View
    public final void invalidate() {
        m5845catch();
        super.invalidate();
    }

    @Override // androidx.appcompat.widget.SwitchCompat, android.widget.CompoundButton, android.widget.TextView, android.view.View
    public final int[] onCreateDrawableState(int i) {
        int[] onCreateDrawableState = super.onCreateDrawableState(i + 1);
        if (this.f11212new != null) {
            View.mergeDrawableStates(onCreateDrawableState, f11204new);
        }
        int[] iArr = new int[onCreateDrawableState.length];
        int i2 = 0;
        for (int i3 : onCreateDrawableState) {
            if (i3 != 16842912) {
                iArr[i2] = i3;
                i2++;
            }
        }
        this.f11210if = iArr;
        this.f11209for = C0492Se.m2174for(onCreateDrawableState);
        return onCreateDrawableState;
    }

    public MaterialSwitch(Context context, AttributeSet attributeSet, int i) {
        super(C2775fs.m6683do(context, attributeSet, i, R.style.Widget_Material3_CompoundButton_MaterialSwitch), attributeSet, i);
        Context context2 = getContext();
        this.f11208for = ((SwitchCompat) this).f5879do;
        ColorStateList colorStateList = ((SwitchCompat) this).f5876do;
        this.f11211new = colorStateList;
        ((SwitchCompat) this).f5876do = null;
        ((SwitchCompat) this).f5886do = true;
        m3466do();
        this.f11214try = ((SwitchCompat) this).f5899if;
        ColorStateList colorStateList2 = ((SwitchCompat) this).f5897if;
        this.f11205case = colorStateList2;
        ((SwitchCompat) this).f5897if = null;
        ((SwitchCompat) this).f5894for = true;
        m3470if();
        C3970xH m3116try = C0682aH.m3116try(context2, attributeSet, O2.f2507protected, i, R.style.Widget_Material3_CompoundButton_MaterialSwitch, new int[0]);
        this.f11212new = m3116try.m8639try(0);
        int m8637new = m3116try.m8637new(1, -1);
        ColorStateList m8636if = m3116try.m8636if(2);
        this.f11213try = m8636if;
        PorterDuff.Mode m8284goto = C3738tL.m8284goto(m3116try.m8635goto(3, -1), PorterDuff.Mode.SRC_IN);
        this.f11206case = m3116try.m8639try(4);
        ColorStateList m8636if2 = m3116try.m8636if(5);
        this.f11207else = m8636if2;
        PorterDuff.Mode m8284goto2 = C3738tL.m8284goto(m3116try.m8635goto(6, -1), PorterDuff.Mode.SRC_IN);
        m3116try.m8633final();
        ((SwitchCompat) this).f5888else = false;
        invalidate();
        this.f11208for = C0492Se.m2175if(this.f11208for, colorStateList, ((SwitchCompat) this).f5877do, false);
        this.f11212new = C0492Se.m2175if(this.f11212new, m8636if, m8284goto, false);
        m5845catch();
        Drawable m2173do = C0492Se.m2173do(this.f11208for, this.f11212new, m8637new, m8637new);
        Drawable drawable = ((SwitchCompat) this).f5879do;
        if (drawable != null) {
            drawable.setCallback(null);
        }
        ((SwitchCompat) this).f5879do = m2173do;
        if (m2173do != null) {
            m2173do.setCallback(this);
        }
        requestLayout();
        refreshDrawableState();
        this.f11214try = C0492Se.m2175if(this.f11214try, colorStateList2, ((SwitchCompat) this).f5898if, false);
        this.f11206case = C0492Se.m2175if(this.f11206case, m8636if2, m8284goto2, false);
        m5845catch();
        Drawable drawable2 = this.f11214try;
        if (drawable2 != null && this.f11206case != null) {
            drawable2 = new LayerDrawable(new Drawable[]{this.f11214try, this.f11206case});
        } else if (drawable2 == null) {
            drawable2 = this.f11206case;
        }
        if (drawable2 != null) {
            ((SwitchCompat) this).f5903new = drawable2.getIntrinsicWidth();
            requestLayout();
        }
        Drawable drawable3 = ((SwitchCompat) this).f5899if;
        if (drawable3 != null) {
            drawable3.setCallback(null);
        }
        ((SwitchCompat) this).f5899if = drawable2;
        if (drawable2 != null) {
            drawable2.setCallback(this);
        }
        requestLayout();
    }
}
