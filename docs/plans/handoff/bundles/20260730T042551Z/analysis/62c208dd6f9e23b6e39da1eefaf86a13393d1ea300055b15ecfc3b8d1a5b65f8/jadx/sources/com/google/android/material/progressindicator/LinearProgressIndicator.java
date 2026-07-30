package com.google.android.material.progressindicator;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import com.joeykrim.rootcheck.R;
import defpackage.C0150Cn;
import defpackage.C0821ce;
import defpackage.C3294lq;
import defpackage.C3385nL;
import defpackage.C3412nq;
import defpackage.C3589qq;
import defpackage.QK;
import defpackage.W4;
import java.util.WeakHashMap;

/* loaded from: classes3.dex */
public class LinearProgressIndicator extends W4<LinearProgressIndicatorSpec> {

    /* renamed from: case, reason: not valid java name */
    public static final /* synthetic */ int f11255case = 0;

    public LinearProgressIndicator(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.linearProgressIndicatorStyle);
    }

    @Override // defpackage.W4
    /* renamed from: do */
    public final LinearProgressIndicatorSpec mo2703do(Context context, AttributeSet attributeSet) {
        return new LinearProgressIndicatorSpec(context, attributeSet);
    }

    @Override // defpackage.W4
    /* renamed from: new */
    public final void mo2706new(int i, boolean z) {
        Object obj = ((W4) this).f4326do;
        if (obj != null && ((LinearProgressIndicatorSpec) obj).f11257else == 0 && isIndeterminate()) {
            return;
        }
        super.mo2706new(i, z);
    }

    @Override // android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        Object obj = ((W4) this).f4326do;
        LinearProgressIndicatorSpec linearProgressIndicatorSpec = (LinearProgressIndicatorSpec) obj;
        boolean z2 = true;
        if (((LinearProgressIndicatorSpec) obj).f11258goto != 1) {
            WeakHashMap<View, C3385nL> weakHashMap = QK.f2909do;
            if ((getLayoutDirection() != 1 || ((LinearProgressIndicatorSpec) obj).f11258goto != 2) && (getLayoutDirection() != 0 || ((LinearProgressIndicatorSpec) obj).f11258goto != 3)) {
                z2 = false;
            }
        }
        linearProgressIndicatorSpec.f11256do = z2;
    }

    @Override // android.widget.ProgressBar, android.view.View
    public final void onSizeChanged(int i, int i2, int i3, int i4) {
        int paddingRight = i - (getPaddingRight() + getPaddingLeft());
        int paddingBottom = i2 - (getPaddingBottom() + getPaddingTop());
        C0150Cn<LinearProgressIndicatorSpec> indeterminateDrawable = getIndeterminateDrawable();
        if (indeterminateDrawable != null) {
            indeterminateDrawable.setBounds(0, 0, paddingRight, paddingBottom);
        }
        C0821ce<LinearProgressIndicatorSpec> progressDrawable = getProgressDrawable();
        if (progressDrawable != null) {
            progressDrawable.setBounds(0, 0, paddingRight, paddingBottom);
        }
    }

    public LinearProgressIndicator(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i, R.style.Widget_MaterialComponents_LinearProgressIndicator);
        LinearProgressIndicatorSpec linearProgressIndicatorSpec = (LinearProgressIndicatorSpec) ((W4) this).f4326do;
        C3294lq c3294lq = new C3294lq(linearProgressIndicatorSpec);
        Context context2 = getContext();
        setIndeterminateDrawable(new C0150Cn(context2, linearProgressIndicatorSpec, c3294lq, linearProgressIndicatorSpec.f11257else == 0 ? new C3412nq(linearProgressIndicatorSpec) : new C3589qq(context2, linearProgressIndicatorSpec)));
        setProgressDrawable(new C0821ce(getContext(), linearProgressIndicatorSpec, c3294lq));
    }
}
