package defpackage;

import java.util.Arrays;

/* renamed from: Hb, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C0248Hb implements NF<C2621dD, Void> {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ CallableC0270Ib f1360do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ String f1361do;

    public C0248Hb(CallableC0270Ib callableC0270Ib, String str) {
        this.f1360do = callableC0270Ib;
        this.f1361do = str;
    }

    @Override // defpackage.NF
    public final FG<Void> then(C2621dD c2621dD) {
        if (c2621dD == null) {
            return LG.m1320try(null);
        }
        FG[] fgArr = new FG[2];
        CallableC0270Ib callableC0270Ib = this.f1360do;
        fgArr[0] = C0357Mb.m1438do(callableC0270Ib.f1532do);
        C0357Mb c0357Mb = callableC0270Ib.f1532do;
        fgArr[1] = c0357Mb.f2199do.m1643case(callableC0270Ib.f1536do ? this.f1361do : null, c0357Mb.f2207do.f13734do);
        return LG.m1313case(Arrays.asList(fgArr));
    }
}
