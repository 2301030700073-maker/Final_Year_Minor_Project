package com.google.android.material.progressindicator;

import android.content.Context;
import android.util.AttributeSet;
import com.joeykrim.rootcheck.R;
import defpackage.C0150Cn;
import defpackage.C0821ce;
import defpackage.C2804gK;
import defpackage.F7;
import defpackage.I7;
import defpackage.W4;

/* loaded from: classes3.dex */
public class CircularProgressIndicator extends W4<CircularProgressIndicatorSpec> {

    /* renamed from: case, reason: not valid java name */
    public static final /* synthetic */ int f11251case = 0;

    public CircularProgressIndicator(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.circularProgressIndicatorStyle);
    }

    @Override // defpackage.W4
    /* renamed from: do */
    public final CircularProgressIndicatorSpec mo2703do(Context context, AttributeSet attributeSet) {
        return new CircularProgressIndicatorSpec(context, attributeSet);
    }

    public CircularProgressIndicator(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i, R.style.Widget_MaterialComponents_CircularProgressIndicator);
        CircularProgressIndicatorSpec circularProgressIndicatorSpec = (CircularProgressIndicatorSpec) ((W4) this).f4326do;
        F7 f7 = new F7(circularProgressIndicatorSpec);
        Context context2 = getContext();
        C0150Cn c0150Cn = new C0150Cn(context2, circularProgressIndicatorSpec, f7, new I7(circularProgressIndicatorSpec));
        c0150Cn.f417do = C2804gK.m6718do(context2.getResources(), R.drawable.indeterminate_static, null);
        setIndeterminateDrawable(c0150Cn);
        setProgressDrawable(new C0821ce(getContext(), circularProgressIndicatorSpec, f7));
    }
}
