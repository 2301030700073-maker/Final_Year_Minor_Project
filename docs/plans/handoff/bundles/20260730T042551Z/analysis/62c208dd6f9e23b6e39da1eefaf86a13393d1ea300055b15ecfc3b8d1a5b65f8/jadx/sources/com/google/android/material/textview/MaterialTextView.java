package com.google.android.material.textview;

import android.R;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import androidx.appcompat.widget.AppCompatTextView;
import defpackage.C0154Cr;
import defpackage.C0659Zr;
import defpackage.C2775fs;
import defpackage.O2;

/* loaded from: classes3.dex */
public class MaterialTextView extends AppCompatTextView {
    public MaterialTextView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.textViewStyle);
    }

    @Override // androidx.appcompat.widget.AppCompatTextView, android.widget.TextView
    public final void setTextAppearance(Context context, int i) {
        super.setTextAppearance(context, i);
        if (C0154Cr.m306if(context, com.joeykrim.rootcheck.R.attr.textAppearanceLineHeightEnabled, true)) {
            m6017throw(i, context.getTheme());
        }
    }

    /* renamed from: throw, reason: not valid java name */
    public final void m6017throw(int i, Resources.Theme theme) {
        TypedArray obtainStyledAttributes = theme.obtainStyledAttributes(i, O2.f2518transient);
        Context context = getContext();
        int[] iArr = {1, 2};
        int i2 = -1;
        for (int i3 = 0; i3 < 2 && i2 < 0; i3++) {
            i2 = C0659Zr.m3070for(context, obtainStyledAttributes, iArr[i3], -1);
        }
        obtainStyledAttributes.recycle();
        if (i2 >= 0) {
            setLineHeight(i2);
        }
    }

    public MaterialTextView(Context context, AttributeSet attributeSet, int i) {
        super(C2775fs.m6683do(context, attributeSet, i, 0), attributeSet, i);
        Context context2 = getContext();
        if (C0154Cr.m306if(context2, com.joeykrim.rootcheck.R.attr.textAppearanceLineHeightEnabled, true)) {
            Resources.Theme theme = context2.getTheme();
            int[] iArr = O2.f2498implements;
            TypedArray obtainStyledAttributes = theme.obtainStyledAttributes(attributeSet, iArr, i, 0);
            int[] iArr2 = {1, 2};
            int i2 = -1;
            for (int i3 = 0; i3 < 2 && i2 < 0; i3++) {
                i2 = C0659Zr.m3070for(context2, obtainStyledAttributes, iArr2[i3], -1);
            }
            obtainStyledAttributes.recycle();
            if (i2 != -1) {
                return;
            }
            TypedArray obtainStyledAttributes2 = theme.obtainStyledAttributes(attributeSet, iArr, i, 0);
            int resourceId = obtainStyledAttributes2.getResourceId(0, -1);
            obtainStyledAttributes2.recycle();
            if (resourceId != -1) {
                m6017throw(resourceId, theme);
            }
        }
    }
}
