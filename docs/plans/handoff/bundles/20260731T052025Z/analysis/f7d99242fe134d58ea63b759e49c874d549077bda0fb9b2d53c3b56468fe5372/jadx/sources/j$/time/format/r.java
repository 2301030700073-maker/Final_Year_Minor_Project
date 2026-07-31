package j$.time.format;

import j$.time.Instant;
import j$.time.ZoneId;
import j$.time.ZoneOffset;
import j$.time.chrono.ChronoLocalDate;
import j$.time.temporal.ChronoField;
import j$.time.temporal.TemporalAccessor;
import j$.time.temporal.TemporalField;
import j$.util.Objects;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes2.dex */
public final class r {
    public final TemporalAccessor a;
    public final DateTimeFormatter b;
    public int c;

    public r(TemporalAccessor temporalAccessor, DateTimeFormatter dateTimeFormatter) {
        j$.time.chrono.j jVar = dateTimeFormatter.e;
        ZoneId zoneId = dateTimeFormatter.f;
        if (jVar != null || zoneId != null) {
            j$.time.chrono.j jVar2 = (j$.time.chrono.j) temporalAccessor.L(j$.time.temporal.n.b);
            ZoneId zoneId2 = (ZoneId) temporalAccessor.L(j$.time.temporal.n.a);
            ChronoLocalDate chronoLocalDate = null;
            jVar = Objects.equals(jVar, jVar2) ? null : jVar;
            zoneId = Objects.equals(zoneId, zoneId2) ? null : zoneId;
            if (jVar != null || zoneId != null) {
                j$.time.chrono.j jVar3 = jVar != null ? jVar : jVar2;
                if (zoneId != null) {
                    if (temporalAccessor.d(ChronoField.INSTANT_SECONDS)) {
                        temporalAccessor = ((j$.time.chrono.j) Objects.requireNonNullElse(jVar3, j$.time.chrono.q.c)).S(Instant.V(temporalAccessor), zoneId);
                    } else if (zoneId.normalized() instanceof ZoneOffset) {
                        ChronoField chronoField = ChronoField.OFFSET_SECONDS;
                        if (temporalAccessor.d(chronoField) && temporalAccessor.k(chronoField) != zoneId.getRules().d(Instant.c).getTotalSeconds()) {
                            j$.nio.file.j.n("Unable to apply override zone '", zoneId, "' because the temporal object being formatted has a different offset but does not represent an instant: ", temporalAccessor);
                            throw null;
                        }
                    }
                }
                zoneId2 = zoneId != null ? zoneId : zoneId2;
                if (jVar != null) {
                    if (temporalAccessor.d(ChronoField.EPOCH_DAY)) {
                        chronoLocalDate = jVar3.H(temporalAccessor);
                    } else if (jVar != j$.time.chrono.q.c || jVar2 != null) {
                        for (ChronoField chronoField2 : ChronoField.values()) {
                            if (chronoField2.isDateBased() && temporalAccessor.d(chronoField2)) {
                                j$.nio.file.j.n("Unable to apply override chronology '", jVar, "' because the temporal object being formatted contains date fields but does not represent a whole date: ", temporalAccessor);
                                throw null;
                            }
                        }
                    }
                }
                temporalAccessor = new q(chronoLocalDate, temporalAccessor, jVar3, zoneId2);
            }
        }
        this.a = temporalAccessor;
        this.b = dateTimeFormatter;
    }

    public final Long a(TemporalField temporalField) {
        int i = this.c;
        TemporalAccessor temporalAccessor = this.a;
        if (i <= 0 || temporalAccessor.d(temporalField)) {
            return Long.valueOf(temporalAccessor.J(temporalField));
        }
        return null;
    }

    public final String toString() {
        return this.a.toString();
    }
}
