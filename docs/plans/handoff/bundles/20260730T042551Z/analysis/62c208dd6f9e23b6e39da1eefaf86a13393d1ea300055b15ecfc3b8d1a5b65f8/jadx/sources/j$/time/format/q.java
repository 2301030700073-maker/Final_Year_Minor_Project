package j$.time.format;

import com.google.android.gms.ads.RequestConfiguration;
import j$.time.chrono.InterfaceC2963c;
import j$.time.y;

/* loaded from: classes2.dex */
final class q implements j$.time.temporal.n {
    final /* synthetic */ InterfaceC2963c a;
    final /* synthetic */ j$.time.temporal.n b;
    final /* synthetic */ j$.time.chrono.n c;
    final /* synthetic */ y d;

    q(InterfaceC2963c interfaceC2963c, j$.time.temporal.n nVar, j$.time.chrono.n nVar2, y yVar) {
        this.a = interfaceC2963c;
        this.b = nVar;
        this.c = nVar2;
        this.d = yVar;
    }

    @Override // j$.time.temporal.n
    public final boolean e(j$.time.temporal.r rVar) {
        InterfaceC2963c interfaceC2963c = this.a;
        return (interfaceC2963c == null || !rVar.isDateBased()) ? this.b.e(rVar) : interfaceC2963c.e(rVar);
    }

    @Override // j$.time.temporal.n
    public final /* synthetic */ int i(j$.time.temporal.r rVar) {
        return j$.time.temporal.q.a(this, rVar);
    }

    @Override // j$.time.temporal.n
    public final j$.time.temporal.w k(j$.time.temporal.r rVar) {
        InterfaceC2963c interfaceC2963c = this.a;
        return (interfaceC2963c == null || !rVar.isDateBased()) ? this.b.k(rVar) : interfaceC2963c.k(rVar);
    }

    public final String toString() {
        String str;
        String str2 = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
        j$.time.chrono.n nVar = this.c;
        if (nVar != null) {
            str = " with chronology " + nVar;
        } else {
            str = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
        }
        y yVar = this.d;
        if (yVar != null) {
            str2 = " with zone " + yVar;
        }
        return this.b + str + str2;
    }

    @Override // j$.time.temporal.n
    public final long v(j$.time.temporal.r rVar) {
        InterfaceC2963c interfaceC2963c = this.a;
        return (interfaceC2963c == null || !rVar.isDateBased()) ? this.b.v(rVar) : interfaceC2963c.v(rVar);
    }

    @Override // j$.time.temporal.n
    public final Object y(j$.time.temporal.t tVar) {
        return tVar == j$.time.temporal.q.e() ? this.c : tVar == j$.time.temporal.q.k() ? this.d : tVar == j$.time.temporal.q.i() ? this.b.y(tVar) : tVar.a(this);
    }
}
