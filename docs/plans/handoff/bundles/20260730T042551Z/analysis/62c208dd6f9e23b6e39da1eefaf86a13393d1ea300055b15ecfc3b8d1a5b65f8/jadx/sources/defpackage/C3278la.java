package defpackage;

import java.io.IOException;

/* renamed from: la, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C3278la implements InterfaceC3940wo {

    /* renamed from: do, reason: not valid java name */
    public final C3947wv f14169do;

    public C3278la(C3947wv c3947wv) {
        this.f14169do = c3947wv;
    }

    @Override // defpackage.InterfaceC3940wo
    /* renamed from: do */
    public final Tz mo2113do(Xy xy) {
        Bz bz = xy.f4617do;
        C3732tF c3732tF = xy.f4620do;
        boolean z = !bz.f299do.equals("GET");
        C3947wv c3947wv = this.f14169do;
        c3732tF.getClass();
        try {
            InterfaceC4115zm m2790this = c3732tF.m8240try(xy.f4625if, xy.f4624for, xy.f4626new, c3947wv.f16452for, z, c3947wv.f16449else).m2790this(c3947wv, xy, c3732tF);
            synchronized (c3732tF.f15673do) {
                c3732tF.f15677do = m2790this;
            }
            return xy.m2877if(bz, c3732tF, m2790this, c3732tF.m8237if());
        } catch (IOException e) {
            throw new RA(e);
        }
    }
}
