package com.google.android.material.progressindicator;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import com.joeykrim.rootcheck.R;
import defpackage.C0682aH;
import defpackage.O2;
import defpackage.X4;

/* loaded from: classes3.dex */
public final class LinearProgressIndicatorSpec extends X4 {

    /* renamed from: do, reason: not valid java name */
    public boolean f11256do;

    /* renamed from: else, reason: not valid java name */
    public final int f11257else;

    /* renamed from: goto, reason: not valid java name */
    public final int f11258goto;

    /* renamed from: this, reason: not valid java name */
    public final int f11259this;

    public LinearProgressIndicatorSpec(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.linearProgressIndicatorStyle);
    }

    @Override // defpackage.X4
    /* renamed from: do */
    public final void mo2794do() {
        super.mo2794do();
        if (this.f11259this < 0) {
            throw new IllegalArgumentException("Stop indicator size must be >= 0.");
        }
        if (this.f11257else == 0) {
            if (this.f4461if > 0 && this.f4457case == 0) {
                throw new IllegalArgumentException("Rounded corners without gap are not supported in contiguous indeterminate animation.");
            }
            if (((X4) this).f4459do.length < 3) {
                throw new IllegalArgumentException("Contiguous indeterminate animation must be used with 3 or more indicator colors.");
            }
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LinearProgressIndicatorSpec(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i, R.style.Widget_MaterialComponents_LinearProgressIndicator);
        int i2 = LinearProgressIndicator.f11255case;
        TypedArray m3115new = C0682aH.m3115new(context, attributeSet, O2.f2517throws, R.attr.linearProgressIndicatorStyle, R.style.Widget_MaterialComponents_LinearProgressIndicator, new int[0]);
        this.f11257else = m3115new.getInt(0, 1);
        int i3 = m3115new.getInt(1, 0);
        this.f11258goto = i3;
        this.f11259this = Math.min(m3115new.getDimensionPixelSize(2, 0), ((X4) this).f4458do);
        m3115new.recycle();
        mo2794do();
        this.f11256do = i3 == 1;
    }
}
