package j$.time.format;

import j$.time.ZoneId;
import j$.time.chrono.ChronoLocalDate;
import j$.time.temporal.TemporalAccessor;
import j$.util.Objects;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes2.dex */
public final class y {
    public final TemporalAccessor a;
    public final DateTimeFormatter b;
    public int c;

    public y(TemporalAccessor temporalAccessor, DateTimeFormatter dateTimeFormatter) {
        j$.time.chrono.a aVar = dateTimeFormatter.e;
        if (aVar != null) {
            j$.time.chrono.a aVar2 = (j$.time.chrono.a) temporalAccessor.i(j$.time.temporal.o.b);
            ZoneId zoneId = (ZoneId) temporalAccessor.i(j$.time.temporal.o.a);
            ChronoLocalDate chronoLocalDate = null;
            aVar = Objects.equals(aVar, aVar2) ? null : aVar;
            Objects.equals(null, zoneId);
            if (aVar != null) {
                j$.time.chrono.a aVar3 = aVar != null ? aVar : aVar2;
                if (aVar != null) {
                    if (temporalAccessor.c(j$.time.temporal.a.EPOCH_DAY)) {
                        chronoLocalDate = aVar3.h(temporalAccessor);
                    } else if (aVar != j$.time.chrono.p.c || aVar2 != null) {
                        for (j$.time.temporal.a aVar4 : j$.time.temporal.a.values()) {
                            if (aVar4.isDateBased() && temporalAccessor.c(aVar4)) {
                                throw new j$.time.c("Unable to apply override chronology '" + aVar + "' because the temporal object being formatted contains date fields but does not represent a whole date: " + temporalAccessor);
                            }
                        }
                    }
                }
                temporalAccessor = new x(chronoLocalDate, temporalAccessor, aVar3, zoneId);
            }
        }
        this.a = temporalAccessor;
        this.b = dateTimeFormatter;
    }

    public final Long a(j$.time.temporal.n nVar) {
        int i = this.c;
        TemporalAccessor temporalAccessor = this.a;
        if (i <= 0 || temporalAccessor.c(nVar)) {
            return Long.valueOf(temporalAccessor.q(nVar));
        }
        return null;
    }

    public final Object b(j$.time.f fVar) {
        TemporalAccessor temporalAccessor = this.a;
        Object i = temporalAccessor.i(fVar);
        if (i != null || this.c != 0) {
            return i;
        }
        throw new j$.time.c("Unable to extract " + fVar + " from temporal " + temporalAccessor);
    }

    public final String toString() {
        return this.a.toString();
    }
}
