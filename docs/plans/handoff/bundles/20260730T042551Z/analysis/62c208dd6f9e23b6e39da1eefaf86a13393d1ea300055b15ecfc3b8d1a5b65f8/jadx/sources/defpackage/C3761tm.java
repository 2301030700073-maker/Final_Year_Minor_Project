package defpackage;

import defpackage.C3408nm;
import java.io.IOException;

/* renamed from: tm, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C3761tm extends AbstractRunnableC0595Wt {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ C3408nm.Ccase f15764do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ C3997xm f15765do;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3761tm(C3408nm.Ccase ccase, Object[] objArr, C3997xm c3997xm) {
        super("OkHttp %s stream %d", objArr);
        this.f15764do = ccase;
        this.f15765do = c3997xm;
    }

    @Override // defpackage.AbstractRunnableC0595Wt
    /* renamed from: do */
    public final void mo2681do() {
        C3997xm c3997xm = this.f15765do;
        C3408nm.Ccase ccase = this.f15764do;
        try {
            C3408nm.this.f14569do.mo2788if(c3997xm);
        } catch (IOException e) {
            Ow.f2691do.mo1707class(4, "Http2Connection.Listener failure for " + C3408nm.this.f14558break, e);
            try {
                c3997xm.m8663for(2);
            } catch (IOException unused) {
            }
        }
    }
}
