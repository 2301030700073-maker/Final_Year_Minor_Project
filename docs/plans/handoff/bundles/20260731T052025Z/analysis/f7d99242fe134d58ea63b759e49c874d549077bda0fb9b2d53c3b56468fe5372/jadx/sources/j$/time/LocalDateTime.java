package j$.time;

import androidx.datastore.preferences.PreferencesProto$Value;
import j$.time.chrono.ChronoLocalDateTime;
import j$.time.format.DateTimeFormatter;
import j$.time.temporal.ChronoField;
import j$.time.temporal.ChronoUnit;
import j$.time.temporal.Temporal;
import j$.time.temporal.TemporalAccessor;
import j$.time.temporal.TemporalField;
import j$.time.temporal.TemporalQuery;
import j$.time.temporal.TemporalUnit;
import j$.util.Objects;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes2.dex */
public final class LocalDateTime implements Temporal, j$.time.temporal.k, ChronoLocalDateTime<LocalDate>, Serializable {
    private static final long serialVersionUID = 6207766400415563566L;
    public final LocalDate a;
    public final LocalTime b;
    public static final LocalDateTime MIN = of(LocalDate.MIN, LocalTime.MIN);
    public static final LocalDateTime MAX = of(LocalDate.MAX, LocalTime.MAX);

    public LocalDateTime(LocalDate localDate, LocalTime localTime) {
        this.a = localDate;
        this.b = localTime;
    }

    public static LocalDateTime V(TemporalAccessor temporalAccessor) {
        if (temporalAccessor instanceof LocalDateTime) {
            return (LocalDateTime) temporalAccessor;
        }
        if (temporalAccessor instanceof ZonedDateTime) {
            return ((ZonedDateTime) temporalAccessor).a;
        }
        if (temporalAccessor instanceof l) {
            return ((l) temporalAccessor).a;
        }
        try {
            return new LocalDateTime(LocalDate.W(temporalAccessor), LocalTime.V(temporalAccessor));
        } catch (DateTimeException e) {
            j$.nio.file.j.h("Unable to obtain LocalDateTime from TemporalAccessor: ", temporalAccessor, temporalAccessor.getClass().getName(), e);
            return null;
        }
    }

    public static LocalDateTime X(long j, int i, ZoneOffset zoneOffset) {
        Objects.requireNonNull(zoneOffset, "offset");
        long j2 = i;
        ChronoField.NANO_OF_SECOND.L(j2);
        return new LocalDateTime(LocalDate.ofEpochDay(j$.com.android.tools.r8.a.C(j + zoneOffset.getTotalSeconds(), 86400L)), LocalTime.X((((int) j$.com.android.tools.r8.a.P(r5, 86400L)) * 1000000000) + j2));
    }

    public static LocalDateTime of(LocalDate localDate, LocalTime localTime) {
        Objects.requireNonNull(localDate, "date");
        Objects.requireNonNull(localTime, "time");
        return new LocalDateTime(localDate, localTime);
    }

    public static LocalDateTime ofInstant(Instant instant, ZoneId zoneId) {
        Objects.requireNonNull(instant, "instant");
        Objects.requireNonNull(zoneId, "zone");
        return X(instant.getEpochSecond(), instant.getNano(), zoneId.getRules().d(instant));
    }

    public static LocalDateTime parse(CharSequence charSequence) {
        DateTimeFormatter dateTimeFormatter = DateTimeFormatter.i;
        Objects.requireNonNull(dateTimeFormatter, "formatter");
        return (LocalDateTime) dateTimeFormatter.parse(charSequence, new j$.desugar.sun.nio.fs.m(2));
    }

    private void readObject(ObjectInputStream objectInputStream) {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    private Object writeReplace() {
        return new p((byte) 5, this);
    }

    @Override // j$.time.temporal.Temporal
    public final Temporal F(long j, ChronoUnit chronoUnit) {
        long j2;
        if (j == Long.MIN_VALUE) {
            this = c(Long.MAX_VALUE, chronoUnit);
            j2 = 1;
        } else {
            j2 = -j;
        }
        return this.c(j2, chronoUnit);
    }

    @Override // j$.time.temporal.TemporalAccessor
    public final long J(TemporalField temporalField) {
        return temporalField instanceof ChronoField ? ((ChronoField) temporalField).U() ? this.b.J(temporalField) : this.a.J(temporalField) : temporalField.F(this);
    }

    @Override // j$.time.temporal.TemporalAccessor
    public final Object L(TemporalQuery temporalQuery) {
        return temporalQuery == j$.time.temporal.n.f ? this.a : j$.com.android.tools.r8.a.k(this, temporalQuery);
    }

    public final int U(LocalDateTime localDateTime) {
        int U = this.a.U(localDateTime.e());
        return U == 0 ? this.b.compareTo(localDateTime.toLocalTime()) : U;
    }

    public final boolean W(ChronoLocalDateTime chronoLocalDateTime) {
        if (chronoLocalDateTime instanceof LocalDateTime) {
            return U((LocalDateTime) chronoLocalDateTime) < 0;
        }
        long epochDay = e().toEpochDay();
        long epochDay2 = chronoLocalDateTime.e().toEpochDay();
        return epochDay < epochDay2 || (epochDay == epochDay2 && toLocalTime().e0() < chronoLocalDateTime.toLocalTime().e0());
    }

    @Override // j$.time.temporal.Temporal
    /* renamed from: Y, reason: merged with bridge method [inline-methods] */
    public final LocalDateTime c(long j, TemporalUnit temporalUnit) {
        if (!(temporalUnit instanceof ChronoUnit)) {
            return (LocalDateTime) temporalUnit.m(this, j);
        }
        switch (f.a[((ChronoUnit) temporalUnit).ordinal()]) {
            case 1:
                return a0(this.a, 0L, 0L, 0L, j);
            case 2:
                LocalDateTime c0 = c0(this.a.g0(j / 86400000000L), this.b);
                return c0.a0(c0.a, 0L, 0L, 0L, (j % 86400000000L) * 1000);
            case 3:
                LocalDateTime c02 = c0(this.a.g0(j / 86400000), this.b);
                return c02.a0(c02.a, 0L, 0L, 0L, (j % 86400000) * 1000000);
            case 4:
                return Z(j);
            case 5:
                return a0(this.a, 0L, j, 0L, 0L);
            case 6:
                return a0(this.a, j, 0L, 0L, 0L);
            case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                LocalDateTime c03 = c0(this.a.g0(j / 256), this.b);
                return c03.a0(c03.a, (j % 256) * 12, 0L, 0L, 0L);
            default:
                return c0(this.a.c(j, temporalUnit), this.b);
        }
    }

    public final LocalDateTime Z(long j) {
        return a0(this.a, 0L, 0L, j, 0L);
    }

    @Override // j$.time.chrono.ChronoLocalDateTime
    public final j$.time.chrono.j a() {
        return ((LocalDate) e()).a();
    }

    public final LocalDateTime a0(LocalDate localDate, long j, long j2, long j3, long j4) {
        long j5 = j | j2 | j3 | j4;
        LocalTime localTime = this.b;
        if (j5 == 0) {
            return c0(localDate, localTime);
        }
        long j6 = j / 24;
        long e0 = localTime.e0();
        long j7 = ((j % 24) * 3600000000000L) + ((j2 % 1440) * 60000000000L) + ((j3 % 86400) * 1000000000) + (j4 % 86400000000000L) + e0;
        long C = j$.com.android.tools.r8.a.C(j7, 86400000000000L) + j6 + (j2 / 1440) + (j3 / 86400) + (j4 / 86400000000000L);
        long P = j$.com.android.tools.r8.a.P(j7, 86400000000000L);
        return c0(localDate.g0(C), P == e0 ? this.b : LocalTime.X(P));
    }

    @Override // j$.time.chrono.ChronoLocalDateTime
    /* renamed from: atZone, reason: merged with bridge method [inline-methods] */
    public ZonedDateTime G(ZoneId zoneId) {
        return ZonedDateTime.V(this, zoneId, null);
    }

    @Override // j$.time.temporal.Temporal
    /* renamed from: b0, reason: merged with bridge method [inline-methods] */
    public final LocalDateTime b(long j, TemporalField temporalField) {
        if (!(temporalField instanceof ChronoField)) {
            return (LocalDateTime) temporalField.J(this, j);
        }
        boolean U = ((ChronoField) temporalField).U();
        LocalDate localDate = this.a;
        return U ? c0(localDate, this.b.b(j, temporalField)) : c0(localDate.b(j, temporalField), this.b);
    }

    public final LocalDateTime c0(LocalDate localDate, LocalTime localTime) {
        return (this.a == localDate && this.b == localTime) ? this : new LocalDateTime(localDate, localTime);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // java.lang.Comparable
    public int compareTo(ChronoLocalDateTime<?> chronoLocalDateTime) {
        return chronoLocalDateTime instanceof LocalDateTime ? U((LocalDateTime) chronoLocalDateTime) : j$.com.android.tools.r8.a.c(this, chronoLocalDateTime);
    }

    @Override // j$.time.temporal.TemporalAccessor
    public final boolean d(TemporalField temporalField) {
        if (!(temporalField instanceof ChronoField)) {
            return temporalField != null && temporalField.k(this);
        }
        ChronoField chronoField = (ChronoField) temporalField;
        return chronoField.isDateBased() || chronoField.U();
    }

    @Override // j$.time.temporal.Temporal
    /* renamed from: d0, reason: merged with bridge method [inline-methods] */
    public final LocalDateTime m(j$.time.temporal.k kVar) {
        return kVar instanceof LocalDate ? c0((LocalDate) kVar, this.b) : kVar instanceof LocalTime ? c0(this.a, (LocalTime) kVar) : kVar instanceof LocalDateTime ? (LocalDateTime) kVar : (LocalDateTime) kVar.u(this);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof LocalDateTime) {
            LocalDateTime localDateTime = (LocalDateTime) obj;
            if (this.a.equals(localDateTime.a) && this.b.equals(localDateTime.b)) {
                return true;
            }
        }
        return false;
    }

    public int getYear() {
        return this.a.getYear();
    }

    public int hashCode() {
        return this.b.hashCode() ^ this.a.hashCode();
    }

    @Override // j$.time.temporal.TemporalAccessor
    public final int k(TemporalField temporalField) {
        return temporalField instanceof ChronoField ? ((ChronoField) temporalField).U() ? this.b.k(temporalField) : this.a.k(temporalField) : j$.time.temporal.n.a(this, temporalField);
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
    /* renamed from: toLocalDate, reason: merged with bridge method [inline-methods] */
    public LocalDate e() {
        return this.a;
    }

    @Override // j$.time.chrono.ChronoLocalDateTime
    public LocalTime toLocalTime() {
        return this.b;
    }

    public String toString() {
        return this.a.toString() + "T" + this.b.toString();
    }

    @Override // j$.time.temporal.k
    public final Temporal u(Temporal temporal) {
        return temporal.b(e().toEpochDay(), ChronoField.EPOCH_DAY).b(toLocalTime().e0(), ChronoField.NANO_OF_DAY);
    }

    /* JADX WARN: Code restructure failed: missing block: B:28:0x00bd, code lost:
    
        if (r0.U(r1) > 0) goto L30;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x00bf, code lost:
    
        r4 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x00ce, code lost:
    
        if (r4 == false) goto L38;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x00d8, code lost:
    
        if (r11.b.compareTo2(r10.b) >= 0) goto L38;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x00da, code lost:
    
        r0 = r0.g0(-1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x00fd, code lost:
    
        return r10.a.until(r0, r12);
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x00e7, code lost:
    
        if (r0.Z(r10.a) == false) goto L43;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x00f1, code lost:
    
        if (r11.b.compareTo2(r10.b) <= 0) goto L43;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x00f3, code lost:
    
        r0 = r0.g0(1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x00cb, code lost:
    
        if (r0.toEpochDay() > r1.toEpochDay()) goto L30;
     */
    @Override // j$.time.temporal.Temporal
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final long until(j$.time.temporal.Temporal r11, j$.time.temporal.TemporalUnit r12) {
        /*
            Method dump skipped, instructions count: 278
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: j$.time.LocalDateTime.until(j$.time.temporal.Temporal, j$.time.temporal.TemporalUnit):long");
    }
}
