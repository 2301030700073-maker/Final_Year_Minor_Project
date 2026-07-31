package j$.time.format;

import j$.time.ZoneId;
import j$.time.temporal.TemporalAccessor;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes2.dex */
public final class x implements TemporalAccessor {
    public final /* synthetic */ j$.time.chrono.b a;
    public final /* synthetic */ TemporalAccessor b;
    public final /* synthetic */ j$.time.chrono.l c;
    public final /* synthetic */ ZoneId d;

    public x(j$.time.chrono.b bVar, TemporalAccessor temporalAccessor, j$.time.chrono.l lVar, ZoneId zoneId) {
        this.a = bVar;
        this.b = temporalAccessor;
        this.c = lVar;
        this.d = zoneId;
    }

    @Override // j$.time.temporal.TemporalAccessor
    public final Object F(j$.desugar.sun.nio.fs.m mVar) {
        return mVar == j$.time.temporal.q.b ? this.c : mVar == j$.time.temporal.q.a ? this.d : mVar == j$.time.temporal.q.c ? this.b.F(mVar) : mVar.g(this);
    }

    @Override // j$.time.temporal.TemporalAccessor
    public final long M(j$.time.temporal.p pVar) {
        j$.time.chrono.b bVar = this.a;
        return (bVar == null || !pVar.isDateBased()) ? this.b.M(pVar) : bVar.M(pVar);
    }

    @Override // j$.time.temporal.TemporalAccessor
    public final boolean e(j$.time.temporal.p pVar) {
        j$.time.chrono.b bVar = this.a;
        return (bVar == null || !pVar.isDateBased()) ? this.b.e(pVar) : bVar.e(pVar);
    }

    @Override // j$.time.temporal.TemporalAccessor
    public final /* synthetic */ int k(j$.time.temporal.p pVar) {
        return j$.time.temporal.q.a(this, pVar);
    }

    @Override // j$.time.temporal.TemporalAccessor
    public final j$.time.temporal.s o(j$.time.temporal.p pVar) {
        j$.time.chrono.b bVar = this.a;
        return (bVar == null || !pVar.isDateBased()) ? this.b.o(pVar) : bVar.o(pVar);
    }

    public final String toString() {
        String str;
        String str2 = "";
        j$.time.chrono.l lVar = this.c;
        if (lVar != null) {
            str = " with chronology " + lVar;
        } else {
            str = "";
        }
        ZoneId zoneId = this.d;
        if (zoneId != null) {
            str2 = " with zone " + zoneId;
        }
        return this.b + str + str2;
    }
}
