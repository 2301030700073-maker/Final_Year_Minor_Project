package defpackage;

import android.graphics.Path;
import android.graphics.RectF;
import android.view.View;
import defpackage.C3612rD;

/* renamed from: vD, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public abstract class AbstractC3848vD {

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public C3554qD f16036do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public boolean f16037do = false;

    /* renamed from: if, reason: not valid java name */
    public boolean f16038if = false;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public RectF f16035do = new RectF();

    /* renamed from: do, reason: not valid java name */
    public final Path f16034do = new Path();

    /* renamed from: do, reason: not valid java name */
    public abstract void mo8440do(View view);

    /* renamed from: for, reason: not valid java name */
    public final void m8441for() {
        C3554qD c3554qD;
        RectF rectF = this.f16035do;
        if (!(rectF.left <= rectF.right && rectF.top <= rectF.bottom) || (c3554qD = this.f16036do) == null) {
            return;
        }
        C3612rD.Cdo.f15244do.m7942do(c3554qD, 1.0f, rectF, null, this.f16034do);
    }

    /* renamed from: if, reason: not valid java name */
    public abstract boolean mo8442if();
}
