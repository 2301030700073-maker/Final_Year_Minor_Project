package com.google.android.material.progressindicator;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import com.joeykrim.rootcheck.R;
import defpackage.C0659Zr;
import defpackage.C0682aH;
import defpackage.O2;
import defpackage.X4;

/* loaded from: classes3.dex */
public final class CircularProgressIndicatorSpec extends X4 {

    /* renamed from: else, reason: not valid java name */
    public final int f11252else;

    /* renamed from: goto, reason: not valid java name */
    public final int f11253goto;

    /* renamed from: this, reason: not valid java name */
    public final int f11254this;

    public CircularProgressIndicatorSpec(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.circularProgressIndicatorStyle);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CircularProgressIndicatorSpec(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i, R.style.Widget_MaterialComponents_CircularProgressIndicator);
        int i2 = CircularProgressIndicator.f11251case;
        int dimensionPixelSize = context.getResources().getDimensionPixelSize(R.dimen.mtrl_progress_circular_size_medium);
        int dimensionPixelSize2 = context.getResources().getDimensionPixelSize(R.dimen.mtrl_progress_circular_inset_medium);
        TypedArray m3115new = C0682aH.m3115new(context, attributeSet, O2.f2475class, i, R.style.Widget_MaterialComponents_CircularProgressIndicator, new int[0]);
        this.f11252else = Math.max(C0659Zr.m3070for(context, m3115new, 2, dimensionPixelSize), ((X4) this).f4458do * 2);
        this.f11253goto = C0659Zr.m3070for(context, m3115new, 1, dimensionPixelSize2);
        this.f11254this = m3115new.getInt(0, 0);
        m3115new.recycle();
        mo2794do();
    }
}
