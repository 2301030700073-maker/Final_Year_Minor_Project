package j$.time.chrono;

import androidx.datastore.preferences.PreferencesProto$Value;
import j$.time.LocalDate;
import j$.time.LocalTime;
import j$.time.ZoneId;
import j$.time.temporal.ChronoField;
import j$.time.temporal.ChronoUnit;
import j$.time.temporal.Temporal;
import j$.time.temporal.TemporalField;
import j$.time.temporal.TemporalQuery;
import j$.time.temporal.TemporalUnit;
import j$.util.Objects;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes2.dex */
public final class e implements ChronoLocalDateTime, Temporal, j$.time.temporal.k, Serializable {
    private static final long serialVersionUID = 4556003607393004514L;
    public final transient ChronoLocalDate a;
    public final transient LocalTime b;

    public e(ChronoLocalDate chronoLocalDate, LocalTime localTime) {
        Objects.requireNonNull(chronoLocalDate, "date");
        Objects.requireNonNull(localTime, "time");
        this.a = chronoLocalDate;
        this.b = localTime;
    }

    public static e U(j jVar, Temporal temporal) {
        e eVar = (e) temporal;
        if (jVar.equals(eVar.a.a())) {
            return eVar;
        }
        j$.nio.file.j.m("Chronology mismatch, required: ", jVar.i(), eVar.a.a().i());
        return null;
    }

    private void readObject(ObjectInputStream objectInputStream) {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    private Object writeReplace() {
        return new c0((byte) 2, this);
    }

    @Override // j$.time.temporal.Temporal
    public final Temporal F(long j, ChronoUnit chronoUnit) {
        return U(this.a.a(), j$.time.temporal.n.b(this, j, chronoUnit));
    }

    @Override // j$.time.chrono.ChronoLocalDateTime
    public final ChronoZonedDateTime G(ZoneId zoneId) {
        return i.U(zoneId, null, this);
    }

    @Override // j$.time.temporal.TemporalAccessor
    public final long J(TemporalField temporalField) {
        return temporalField instanceof ChronoField ? ((ChronoField) temporalField).U() ? this.b.J(temporalField) : this.a.J(temporalField) : temporalField.F(this);
    }

    @Override // j$.time.temporal.TemporalAccessor
    public final /* synthetic */ Object L(TemporalQuery temporalQuery) {
        return j$.com.android.tools.r8.a.k(this, temporalQuery);
    }

    @Override // j$.time.temporal.Temporal
    /* renamed from: V, reason: merged with bridge method [inline-methods] */
    public final e c(long j, TemporalUnit temporalUnit) {
        if (!(temporalUnit instanceof ChronoUnit)) {
            return U(this.a.a(), temporalUnit.m(this, j));
        }
        switch (d.a[((ChronoUnit) temporalUnit).ordinal()]) {
            case 1:
                return W(this.a, 0L, 0L, 0L, j);
            case 2:
                e Y = Y(this.a.c(j / 86400000000L, (TemporalUnit) ChronoUnit.DAYS), this.b);
                return Y.W(Y.a, 0L, 0L, 0L, (j % 86400000000L) * 1000);
            case 3:
                e Y2 = Y(this.a.c(j / 86400000, (TemporalUnit) ChronoUnit.DAYS), this.b);
                return Y2.W(Y2.a, 0L, 0L, 0L, (j % 86400000) * 1000000);
            case 4:
                return W(this.a, 0L, 0L, j, 0L);
            case 5:
                return W(this.a, 0L, j, 0L, 0L);
            case 6:
                return W(this.a, j, 0L, 0L, 0L);
            case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                e Y3 = Y(this.a.c(j / 256, (TemporalUnit) ChronoUnit.DAYS), this.b);
                return Y3.W(Y3.a, (j % 256) * 12, 0L, 0L, 0L);
            default:
                return Y(this.a.c(j, temporalUnit), this.b);
        }
    }

    public final e W(ChronoLocalDate chronoLocalDate, long j, long j2, long j3, long j4) {
        long j5 = j | j2 | j3 | j4;
        LocalTime localTime = this.b;
        if (j5 == 0) {
            return Y(chronoLocalDate, localTime);
        }
        long j6 = j / 24;
        long e0 = localTime.e0();
        long j7 = ((j % 24) * 3600000000000L) + ((j2 % 1440) * 60000000000L) + ((j3 % 86400) * 1000000000) + (j4 % 86400000000000L) + e0;
        long C = j$.com.android.tools.r8.a.C(j7, 86400000000000L) + j6 + (j2 / 1440) + (j3 / 86400) + (j4 / 86400000000000L);
        long P = j$.com.android.tools.r8.a.P(j7, 86400000000000L);
        return Y(chronoLocalDate.c(C, (TemporalUnit) ChronoUnit.DAYS), P == e0 ? this.b : LocalTime.X(P));
    }

    @Override // j$.time.temporal.Temporal
    /* renamed from: X, reason: merged with bridge method [inline-methods] */
    public final e b(long j, TemporalField temporalField) {
        if (!(temporalField instanceof ChronoField)) {
            return U(this.a.a(), temporalField.J(this, j));
        }
        boolean U = ((ChronoField) temporalField).U();
        ChronoLocalDate chronoLocalDate = this.a;
        return U ? Y(chronoLocalDate, this.b.b(j, temporalField)) : Y(chronoLocalDate.b(j, temporalField), this.b);
    }

    public final e Y(Temporal temporal, LocalTime localTime) {
        ChronoLocalDate chronoLocalDate = this.a;
        return (chronoLocalDate == temporal && this.b == localTime) ? this : new e(c.U(chronoLocalDate.a(), temporal), localTime);
    }

    @Override // j$.time.chrono.ChronoLocalDateTime
    public final j a() {
        return this.a.a();
    }

    @Override // java.lang.Comparable
    public final /* bridge */ /* synthetic */ int compareTo(ChronoLocalDateTime<?> chronoLocalDateTime) {
        return compareTo((ChronoLocalDateTime) chronoLocalDateTime);
    }

    @Override // j$.time.temporal.TemporalAccessor
    public final boolean d(TemporalField temporalField) {
        if (!(temporalField instanceof ChronoField)) {
            return temporalField != null && temporalField.k(this);
        }
        ChronoField chronoField = (ChronoField) temporalField;
        return chronoField.isDateBased() || chronoField.U();
    }

    @Override // j$.time.chrono.ChronoLocalDateTime
    public final ChronoLocalDate e() {
        return this.a;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof ChronoLocalDateTime) && j$.com.android.tools.r8.a.c(this, (ChronoLocalDateTime) obj) == 0;
    }

    public final int hashCode() {
        return this.b.hashCode() ^ this.a.hashCode();
    }

    @Override // j$.time.temporal.TemporalAccessor
    public final int k(TemporalField temporalField) {
        return temporalField instanceof ChronoField ? ((ChronoField) temporalField).U() ? this.b.k(temporalField) : this.a.k(temporalField) : n(temporalField).a(J(temporalField), temporalField);
    }

    @Override // j$.time.temporal.Temporal
    public final Temporal m(LocalDate localDate) {
        if (j$.time.b.b(localDate)) {
            return Y(localDate, this.b);
        }
        j a = this.a.a();
        localDate.getClass();
        return U(a, (e) j$.com.android.tools.r8.a.a(localDate, this));
    }

    @Override // j$.time.temporal.TemporalAccessor
    public final j$.time.temporal.p n(TemporalField temporalField) {
        if (!(temporalField instanceof ChronoField)) {
            return temporalField.m(this);
        }
        if (!((ChronoField) temporalField).U()) {
            return this.a.n(temporalField);
        }
        LocalTime localTime = this.b;
        localTime.getClass();
        return j$.time.temporal.n.d(localTime, temporalField);
    }

    @Override // j$.time.chrono.ChronoLocalDateTime
    public final LocalTime toLocalTime() {
        return this.b;
    }

    public final String toString() {
        return this.a.toString() + "T" + this.b.toString();
    }

    @Override // j$.time.temporal.k
    public final Temporal u(Temporal temporal) {
        return temporal.b(e().toEpochDay(), ChronoField.EPOCH_DAY).b(toLocalTime().e0(), ChronoField.NANO_OF_DAY);
    }

    @Override // j$.time.temporal.Temporal
    public final long until(Temporal temporal, TemporalUnit temporalUnit) {
        Objects.requireNonNull(temporal, "endExclusive");
        ChronoLocalDateTime M = this.a.a().M(temporal);
        if (!(temporalUnit instanceof ChronoUnit)) {
            Objects.requireNonNull(temporalUnit, "unit");
            return temporalUnit.k(this, M);
        }
        ChronoUnit chronoUnit = (ChronoUnit) temporalUnit;
        ChronoUnit chronoUnit2 = ChronoUnit.DAYS;
        if (chronoUnit.compareTo(chronoUnit2) >= 0) {
            ChronoLocalDate e = M.e();
            if (M.toLocalTime().compareTo(this.b) < 0) {
                e = e.F(1L, chronoUnit2);
            }
            return this.a.until(e, temporalUnit);
        }
        ChronoField chronoField = ChronoField.EPOCH_DAY;
        long J = M.J(chronoField) - this.a.J(chronoField);
        switch (d.a[chronoUnit.ordinal()]) {
            case 1:
                J = j$.com.android.tools.r8.a.R(J, 86400000000000L);
                break;
            case 2:
                J = j$.com.android.tools.r8.a.R(J, 86400000000L);
                break;
            case 3:
                J = j$.com.android.tools.r8.a.R(J, 86400000L);
                break;
            case 4:
                J = j$.com.android.tools.r8.a.R(J, 86400L);
                break;
            case 5:
                J = j$.com.android.tools.r8.a.R(J, 1440L);
                break;
            case 6:
                J = j$.com.android.tools.r8.a.R(J, 24L);
                break;
            case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                J = j$.com.android.tools.r8.a.R(J, 2L);
                break;
        }
        return j$.com.android.tools.r8.a.Q(J, this.b.until(M.toLocalTime(), temporalUnit));
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // j$.time.chrono.ChronoLocalDateTime
    public final /* synthetic */ int compareTo(ChronoLocalDateTime chronoLocalDateTime) {
        return j$.com.android.tools.r8.a.c(this, chronoLocalDateTime);
    }
}
