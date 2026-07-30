package com.google.android.material.radiobutton;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import androidx.appcompat.widget.AppCompatRadioButton;
import defpackage.C0659Zr;
import defpackage.C0682aH;
import defpackage.C2775fs;
import defpackage.C3844v9;
import defpackage.O2;

/* loaded from: classes3.dex */
public class MaterialRadioButton extends AppCompatRadioButton {

    /* renamed from: do, reason: not valid java name */
    public static final int[][] f11260do = {new int[]{R.attr.state_enabled, R.attr.state_checked}, new int[]{R.attr.state_enabled, -16842912}, new int[]{-16842910, R.attr.state_checked}, new int[]{-16842910, -16842912}};

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public ColorStateList f11261do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public boolean f11262do;

    public MaterialRadioButton(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, com.joeykrim.rootcheck.R.attr.radioButtonStyle);
    }

    @Override // android.widget.TextView, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.f11262do && C3844v9.Cdo.m8435do(this) == null) {
            this.f11262do = true;
            if (this.f11261do == null) {
                int m1587goto = O2.m1587goto(this, com.joeykrim.rootcheck.R.attr.colorControlActivated);
                int m1587goto2 = O2.m1587goto(this, com.joeykrim.rootcheck.R.attr.colorOnSurface);
                int m1587goto3 = O2.m1587goto(this, com.joeykrim.rootcheck.R.attr.colorSurface);
                this.f11261do = new ColorStateList(f11260do, new int[]{O2.m1581catch(1.0f, m1587goto3, m1587goto), O2.m1581catch(0.54f, m1587goto3, m1587goto2), O2.m1581catch(0.38f, m1587goto3, m1587goto2), O2.m1581catch(0.38f, m1587goto3, m1587goto2)});
            }
            C3844v9.Cdo.m8436for(this, this.f11261do);
        }
    }

    public MaterialRadioButton(Context context, AttributeSet attributeSet, int i) {
        super(C2775fs.m6683do(context, attributeSet, i, com.joeykrim.rootcheck.R.style.Widget_MaterialComponents_CompoundButton_RadioButton), attributeSet, i);
        Context context2 = getContext();
        TypedArray m3115new = C0682aH.m3115new(context2, attributeSet, O2.f2520volatile, i, com.joeykrim.rootcheck.R.style.Widget_MaterialComponents_CompoundButton_RadioButton, new int[0]);
        if (m3115new.hasValue(0)) {
            C3844v9.Cdo.m8436for(this, C0659Zr.m3071if(context2, m3115new, 0));
        }
        this.f11262do = m3115new.getBoolean(1, false);
        m3115new.recycle();
    }
}
