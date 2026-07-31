package j$.time.format;

import j$.time.DateTimeException;
import j$.time.ZoneId;
import j$.time.temporal.TemporalAccessor;
import j$.util.Objects;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes2.dex */
public final class y {
    public final TemporalAccessor a;
    public final DateTimeFormatter b;
    public int c;

    public y(TemporalAccessor temporalAccessor, DateTimeFormatter dateTimeFormatter) {
        j$.time.chrono.l lVar = dateTimeFormatter.e;
        if (lVar != null) {
            j$.time.chrono.l lVar2 = (j$.time.chrono.l) temporalAccessor.F(j$.time.temporal.q.b);
            ZoneId zoneId = (ZoneId) temporalAccessor.F(j$.time.temporal.q.a);
            j$.time.chrono.b bVar = null;
            lVar = Objects.equals(lVar, lVar2) ? null : lVar;
            Objects.equals(null, zoneId);
            if (lVar != null) {
                j$.time.chrono.l lVar3 = lVar != null ? lVar : lVar2;
                if (lVar != null) {
                    if (temporalAccessor.e(j$.time.temporal.a.EPOCH_DAY)) {
                        bVar = lVar3.J(temporalAccessor);
                    } else if (lVar != j$.time.chrono.s.c || lVar2 != null) {
                        for (j$.time.temporal.a aVar : j$.time.temporal.a.values()) {
                            if (aVar.isDateBased() && temporalAccessor.e(aVar)) {
                                throw new DateTimeException("Unable to apply override chronology '" + lVar + "' because the temporal object being formatted contains date fields but does not represent a whole date: " + temporalAccessor);
                            }
                        }
                    }
                }
                temporalAccessor = new x(bVar, temporalAccessor, lVar3, zoneId);
            }
        }
        this.a = temporalAccessor;
        this.b = dateTimeFormatter;
    }

    public final Long a(j$.time.temporal.p pVar) {
        int i = this.c;
        TemporalAccessor temporalAccessor = this.a;
        if (i <= 0 || temporalAccessor.e(pVar)) {
            return Long.valueOf(temporalAccessor.M(pVar));
        }
        return null;
    }

    public final Object b(j$.desugar.sun.nio.fs.m mVar) {
        TemporalAccessor temporalAccessor = this.a;
        Object F = temporalAccessor.F(mVar);
        if (F != null || this.c != 0) {
            return F;
        }
        throw new DateTimeException("Unable to extract " + mVar + " from temporal " + temporalAccessor);
    }

    public final String toString() {
        return this.a.toString();
    }
}
