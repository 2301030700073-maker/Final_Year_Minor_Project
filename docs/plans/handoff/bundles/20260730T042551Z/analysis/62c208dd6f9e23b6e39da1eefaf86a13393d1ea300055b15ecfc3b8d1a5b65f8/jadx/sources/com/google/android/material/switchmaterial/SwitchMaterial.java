package com.google.android.material.switchmaterial;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewParent;
import androidx.appcompat.widget.SwitchCompat;
import defpackage.C0098Af;
import defpackage.C0682aH;
import defpackage.C2775fs;
import defpackage.C3385nL;
import defpackage.O2;
import defpackage.QK;
import java.util.WeakHashMap;

/* loaded from: classes3.dex */
public class SwitchMaterial extends SwitchCompat {

    /* renamed from: do, reason: not valid java name */
    public static final int[][] f11517do = {new int[]{R.attr.state_enabled, R.attr.state_checked}, new int[]{R.attr.state_enabled, -16842912}, new int[]{-16842910, R.attr.state_checked}, new int[]{-16842910, -16842912}};

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final C0098Af f11518do;

    /* renamed from: goto, reason: not valid java name */
    public final boolean f11519goto;

    /* renamed from: new, reason: not valid java name */
    public ColorStateList f11520new;

    /* renamed from: try, reason: not valid java name */
    public ColorStateList f11521try;

    public SwitchMaterial(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, com.joeykrim.rootcheck.R.attr.switchStyle);
    }

    @Override // android.widget.TextView, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        int[][] iArr = f11517do;
        boolean z = this.f11519goto;
        if (z && ((SwitchCompat) this).f5876do == null) {
            if (this.f11520new == null) {
                int m1587goto = O2.m1587goto(this, com.joeykrim.rootcheck.R.attr.colorSurface);
                int m1587goto2 = O2.m1587goto(this, com.joeykrim.rootcheck.R.attr.colorControlActivated);
                float dimension = getResources().getDimension(com.joeykrim.rootcheck.R.dimen.mtrl_switch_thumb_elevation);
                C0098Af c0098Af = this.f11518do;
                if (c0098Af.f117do) {
                    float f = 0.0f;
                    for (ViewParent parent = getParent(); parent instanceof View; parent = parent.getParent()) {
                        WeakHashMap<View, C3385nL> weakHashMap = QK.f2909do;
                        f += QK.Cnew.m1939this((View) parent);
                    }
                    dimension += f;
                }
                int m82do = c0098Af.m82do(dimension, m1587goto);
                this.f11520new = new ColorStateList(iArr, new int[]{O2.m1581catch(1.0f, m1587goto, m1587goto2), m82do, O2.m1581catch(0.38f, m1587goto, m1587goto2), m82do});
            }
            ((SwitchCompat) this).f5876do = this.f11520new;
            ((SwitchCompat) this).f5886do = true;
            m3466do();
        }
        if (z && ((SwitchCompat) this).f5897if == null) {
            if (this.f11521try == null) {
                int m1587goto3 = O2.m1587goto(this, com.joeykrim.rootcheck.R.attr.colorSurface);
                int m1587goto4 = O2.m1587goto(this, com.joeykrim.rootcheck.R.attr.colorControlActivated);
                int m1587goto5 = O2.m1587goto(this, com.joeykrim.rootcheck.R.attr.colorOnSurface);
                this.f11521try = new ColorStateList(iArr, new int[]{O2.m1581catch(0.54f, m1587goto3, m1587goto4), O2.m1581catch(0.32f, m1587goto3, m1587goto5), O2.m1581catch(0.12f, m1587goto3, m1587goto4), O2.m1581catch(0.12f, m1587goto3, m1587goto5)});
            }
            ((SwitchCompat) this).f5897if = this.f11521try;
            ((SwitchCompat) this).f5894for = true;
            m3470if();
        }
    }

    public SwitchMaterial(Context context, AttributeSet attributeSet, int i) {
        super(C2775fs.m6683do(context, attributeSet, i, com.joeykrim.rootcheck.R.style.Widget_MaterialComponents_CompoundButton_Switch), attributeSet, i);
        Context context2 = getContext();
        this.f11518do = new C0098Af(context2);
        TypedArray m3115new = C0682aH.m3115new(context2, attributeSet, O2.o, i, com.joeykrim.rootcheck.R.style.Widget_MaterialComponents_CompoundButton_Switch, new int[0]);
        this.f11519goto = m3115new.getBoolean(0, false);
        m3115new.recycle();
    }
}
