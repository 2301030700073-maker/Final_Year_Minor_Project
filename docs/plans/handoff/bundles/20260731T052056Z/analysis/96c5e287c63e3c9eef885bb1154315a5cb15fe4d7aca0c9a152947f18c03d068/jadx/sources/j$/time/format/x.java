package j$.time.format;

import j$.time.ZoneId;
import j$.time.chrono.ChronoLocalDate;
import j$.time.temporal.TemporalAccessor;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes2.dex */
public final class x implements TemporalAccessor {
    public final /* synthetic */ ChronoLocalDate a;
    public final /* synthetic */ TemporalAccessor b;
    public final /* synthetic */ j$.time.chrono.a c;
    public final /* synthetic */ ZoneId d;

    public x(ChronoLocalDate chronoLocalDate, TemporalAccessor temporalAccessor, j$.time.chrono.a aVar, ZoneId zoneId) {
        this.a = chronoLocalDate;
        this.b = temporalAccessor;
        this.c = aVar;
        this.d = zoneId;
    }

    @Override // j$.time.temporal.TemporalAccessor
    public final boolean c(j$.time.temporal.n nVar) {
        ChronoLocalDate chronoLocalDate = this.a;
        return (chronoLocalDate == null || !nVar.isDateBased()) ? this.b.c(nVar) : chronoLocalDate.c(nVar);
    }

    @Override // j$.time.temporal.TemporalAccessor
    public final /* synthetic */ int f(j$.time.temporal.n nVar) {
        return j$.time.temporal.o.a(this, nVar);
    }

    @Override // j$.time.temporal.TemporalAccessor
    public final j$.time.temporal.q h(j$.time.temporal.n nVar) {
        ChronoLocalDate chronoLocalDate = this.a;
        return (chronoLocalDate == null || !nVar.isDateBased()) ? this.b.h(nVar) : chronoLocalDate.h(nVar);
    }

    @Override // j$.time.temporal.TemporalAccessor
    public final Object i(j$.time.f fVar) {
        return fVar == j$.time.temporal.o.b ? this.c : fVar == j$.time.temporal.o.a ? this.d : fVar == j$.time.temporal.o.c ? this.b.i(fVar) : fVar.e(this);
    }

    @Override // j$.time.temporal.TemporalAccessor
    public final long q(j$.time.temporal.n nVar) {
        ChronoLocalDate chronoLocalDate = this.a;
        return (chronoLocalDate == null || !nVar.isDateBased()) ? this.b.q(nVar) : chronoLocalDate.q(nVar);
    }

    public final String toString() {
        String str;
        String str2 = "";
        j$.time.chrono.a aVar = this.c;
        if (aVar != null) {
            str = " with chronology " + aVar;
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
