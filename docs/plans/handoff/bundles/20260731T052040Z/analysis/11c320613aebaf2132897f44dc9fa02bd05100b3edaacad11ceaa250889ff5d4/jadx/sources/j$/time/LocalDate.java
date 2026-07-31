package j$.time;

import com.google.android.exoplayer2.C;
import j$.time.format.DateTimeFormatter;
import j$.time.temporal.ChronoUnit;
import j$.time.temporal.TemporalAccessor;
import j$.time.temporal.TemporalUnit;
import j$.util.Objects;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import org.mozilla.javascript.Token;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes2.dex */
public final class LocalDate implements j$.time.temporal.l, j$.time.temporal.m, j$.time.chrono.b, Serializable {
    public static final LocalDate d = of(-999999999, 1, 1);
    public static final LocalDate e = of(999999999, 12, 31);
    private static final long serialVersionUID = 2942565459149668126L;
    public final int a;
    public final short b;
    public final short c;

    static {
        of(1970, 1, 1);
    }

    public LocalDate(int i, int i2, int i3) {
        this.a = i;
        this.b = (short) i2;
        this.c = (short) i3;
    }

    public static LocalDate a0(int i, int i2, int i3) {
        int i4 = 28;
        if (i3 > 28) {
            if (i2 != 2) {
                i4 = (i2 == 4 || i2 == 6 || i2 == 9 || i2 == 11) ? 30 : 31;
            } else if (j$.time.chrono.s.c.Y(i)) {
                i4 = 29;
            }
            if (i3 > i4) {
                if (i3 == 29) {
                    j$.nio.file.m.e("Invalid date 'February 29' as '", i, "' is not a leap year");
                    return null;
                }
                throw new DateTimeException("Invalid date '" + k.c0(i2).name() + " " + i3 + "'");
            }
        }
        return new LocalDate(i, i2, i3);
    }

    public static LocalDate b0(TemporalAccessor temporalAccessor) {
        Objects.requireNonNull(temporalAccessor, "temporal");
        LocalDate localDate = (LocalDate) temporalAccessor.F(j$.time.temporal.q.f);
        if (localDate != null) {
            return localDate;
        }
        j$.nio.file.m.g("Unable to obtain LocalDate from TemporalAccessor: ", temporalAccessor, " of type ", temporalAccessor.getClass().getName());
        return null;
    }

    public static LocalDate i0(a aVar) {
        Objects.requireNonNull(aVar, "clock");
        Instant ofEpochMilli = Instant.ofEpochMilli(System.currentTimeMillis());
        ZoneId zoneId = aVar.a;
        Objects.requireNonNull(ofEpochMilli, "instant");
        Objects.requireNonNull(zoneId, "zone");
        return j0(j$.com.android.tools.r8.a.E(ofEpochMilli.a + zoneId.a0().d(ofEpochMilli).b, 86400L));
    }

    public static LocalDate j0(long j) {
        long j2;
        j$.time.temporal.a.EPOCH_DAY.M(j);
        long j3 = 719468 + j;
        if (j3 < 0) {
            long j4 = ((j + 719469) / 146097) - 1;
            j2 = j4 * 400;
            j3 += (-j4) * 146097;
        } else {
            j2 = 0;
        }
        long j5 = ((j3 * 400) + 591) / 146097;
        long j6 = j3 - ((j5 / 400) + (((j5 / 4) + (j5 * 365)) - (j5 / 100)));
        if (j6 < 0) {
            j5--;
            j6 = j3 - ((j5 / 400) + (((j5 / 4) + (365 * j5)) - (j5 / 100)));
        }
        int i = (int) j6;
        int i2 = ((i * 5) + 2) / Token.SETPROP_OP;
        int i3 = ((i2 + 2) % 12) + 1;
        int i4 = (i - (((i2 * 306) + 5) / 10)) + 1;
        long j7 = j5 + j2 + (i2 / 10);
        j$.time.temporal.a aVar = j$.time.temporal.a.YEAR;
        return new LocalDate(aVar.b.a(j7, aVar), i3, i4);
    }

    public static LocalDate k0(int i, int i2) {
        long j = i;
        j$.time.temporal.a.YEAR.M(j);
        j$.time.temporal.a.DAY_OF_YEAR.M(i2);
        boolean Y = j$.time.chrono.s.c.Y(j);
        if (i2 == 366 && !Y) {
            j$.nio.file.m.e("Invalid date 'DayOfYear 366' as '", i, "' is not a leap year");
            return null;
        }
        k c0 = k.c0(((i2 - 1) / 31) + 1);
        if (i2 > (c0.a0(Y) + c0.Z(Y)) - 1) {
            c0 = k.a[(c0.ordinal() + 13) % 12];
        }
        return new LocalDate(i, c0.getValue(), (i2 - c0.Z(Y)) + 1);
    }

    public static LocalDate now() {
        return i0(j$.com.android.tools.r8.a.X());
    }

    public static LocalDate of(int i, int i2, int i3) {
        j$.time.temporal.a.YEAR.M(i);
        j$.time.temporal.a.MONTH_OF_YEAR.M(i2);
        j$.time.temporal.a.DAY_OF_MONTH.M(i3);
        return a0(i, i2, i3);
    }

    public static LocalDate parse(CharSequence charSequence, DateTimeFormatter dateTimeFormatter) {
        Objects.requireNonNull(dateTimeFormatter, "formatter");
        return (LocalDate) dateTimeFormatter.b(charSequence, new j$.desugar.sun.nio.fs.m(2));
    }

    public static LocalDate q0(int i, int i2, int i3) {
        if (i2 == 2) {
            i3 = Math.min(i3, j$.time.chrono.s.c.Y((long) i) ? 29 : 28);
        } else if (i2 == 4 || i2 == 6 || i2 == 9 || i2 == 11) {
            i3 = Math.min(i3, 30);
        }
        return new LocalDate(i, i2, i3);
    }

    private void readObject(ObjectInputStream objectInputStream) {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    private Object writeReplace() {
        return new q((byte) 3, this);
    }

    @Override // j$.time.temporal.TemporalAccessor
    public final Object F(j$.desugar.sun.nio.fs.m mVar) {
        return mVar == j$.time.temporal.q.f ? this : j$.com.android.tools.r8.a.j(this, mVar);
    }

    @Override // j$.time.temporal.TemporalAccessor
    public final long M(j$.time.temporal.p pVar) {
        return pVar instanceof j$.time.temporal.a ? pVar == j$.time.temporal.a.EPOCH_DAY ? N() : pVar == j$.time.temporal.a.PROLEPTIC_MONTH ? ((this.a * 12) + this.b) - 1 : c0(pVar) : pVar.F(this);
    }

    @Override // j$.time.chrono.b
    public final long N() {
        long j = this.a;
        long j2 = this.b;
        long j3 = 365 * j;
        long j4 = (((367 * j2) - 362) / 12) + (j >= 0 ? ((j + 399) / 400) + (((3 + j) / 4) - ((99 + j) / 100)) + j3 : j3 - ((j / (-400)) + ((j / (-4)) - (j / (-100))))) + (this.c - 1);
        if (j2 > 2) {
            j4 = !x() ? j4 - 2 : j4 - 1;
        }
        return j4 - 719528;
    }

    @Override // j$.time.chrono.b
    public final j$.time.chrono.e O(i iVar) {
        return LocalDateTime.c0(this, iVar);
    }

    @Override // j$.time.chrono.b
    public final j$.time.chrono.m P() {
        return this.a >= 1 ? j$.time.chrono.t.CE : j$.time.chrono.t.BCE;
    }

    @Override // j$.time.chrono.b
    public final j$.time.chrono.b T(j$.time.temporal.o oVar) {
        if (oVar != null) {
            p pVar = (p) oVar;
            return n0((pVar.a * 12) + pVar.b).m0(pVar.c);
        }
        Objects.requireNonNull(oVar, "amountToAdd");
        return (LocalDate) ((p) oVar).k(this);
    }

    @Override // j$.time.chrono.b
    public final int W() {
        return x() ? 366 : 365;
    }

    @Override // java.lang.Comparable
    /* renamed from: X, reason: merged with bridge method [inline-methods] */
    public final int compareTo(j$.time.chrono.b bVar) {
        return bVar instanceof LocalDate ? Z((LocalDate) bVar) : j$.com.android.tools.r8.a.b(this, bVar);
    }

    public final int Z(LocalDate localDate) {
        int i = this.a - localDate.a;
        return (i == 0 && (i = this.b - localDate.b) == 0) ? this.c - localDate.c : i;
    }

    @Override // j$.time.chrono.b
    public final j$.time.chrono.l a() {
        return j$.time.chrono.s.c;
    }

    public ZonedDateTime atStartOfDay(ZoneId zoneId) {
        Objects.requireNonNull(zoneId, "zone");
        LocalDateTime c0 = LocalDateTime.c0(this, i.g);
        if (!(zoneId instanceof ZoneOffset)) {
            Object e2 = zoneId.a0().e(c0);
            j$.time.zone.b bVar = e2 instanceof j$.time.zone.b ? (j$.time.zone.b) e2 : null;
            if (bVar != null && bVar.k()) {
                c0 = bVar.b.g0(bVar.d.b - bVar.c.b);
            }
        }
        return ZonedDateTime.b0(c0, zoneId, null);
    }

    public final int c0(j$.time.temporal.p pVar) {
        switch (f.a[((j$.time.temporal.a) pVar).ordinal()]) {
            case 1:
                return this.c;
            case 2:
                return e0();
            case 3:
                return ((this.c - 1) / 7) + 1;
            case 4:
                int i = this.a;
                return i >= 1 ? i : 1 - i;
            case 5:
                return d0().getValue();
            case 6:
                return ((this.c - 1) % 7) + 1;
            case 7:
                return ((e0() - 1) % 7) + 1;
            case 8:
                throw new j$.time.temporal.r("Invalid field 'EpochDay' for get() method, use getLong() instead");
            case 9:
                return ((e0() - 1) / 7) + 1;
            case 10:
                return this.b;
            case 11:
                throw new j$.time.temporal.r("Invalid field 'ProlepticMonth' for get() method, use getLong() instead");
            case 12:
                return this.a;
            case 13:
                return this.a >= 1 ? 1 : 0;
            default:
                throw new j$.time.temporal.r(b.a("Unsupported field: ", pVar));
        }
    }

    public final c d0() {
        return c.Z(((int) j$.com.android.tools.r8.a.R(N() + 3, 7L)) + 1);
    }

    @Override // j$.time.temporal.TemporalAccessor
    public final boolean e(j$.time.temporal.p pVar) {
        return j$.com.android.tools.r8.a.h(this, pVar);
    }

    public final int e0() {
        return (k.c0(this.b).Z(x()) + this.c) - 1;
    }

    @Override // j$.time.chrono.b
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof LocalDate) && Z((LocalDate) obj) == 0;
    }

    public final boolean f0(j$.time.chrono.b bVar) {
        return bVar instanceof LocalDate ? Z((LocalDate) bVar) < 0 : N() < bVar.N();
    }

    public final int g0() {
        short s = this.b;
        return s != 2 ? (s == 4 || s == 6 || s == 9 || s == 11) ? 30 : 31 : x() ? 29 : 28;
    }

    @Override // j$.time.chrono.b
    /* renamed from: h0, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
    public final LocalDate z(long j, TemporalUnit temporalUnit) {
        long j2;
        if (j == Long.MIN_VALUE) {
            this = d(Long.MAX_VALUE, temporalUnit);
            j2 = 1;
        } else {
            j2 = -j;
        }
        return this.d(j2, temporalUnit);
    }

    @Override // j$.time.chrono.b
    public final int hashCode() {
        int i = this.a;
        return (i & (-2048)) ^ (((i << 11) + (this.b << 6)) + this.c);
    }

    @Override // j$.time.temporal.TemporalAccessor
    public final int k(j$.time.temporal.p pVar) {
        return pVar instanceof j$.time.temporal.a ? c0(pVar) : j$.time.temporal.q.a(this, pVar);
    }

    @Override // j$.time.temporal.l
    /* renamed from: l0, reason: merged with bridge method [inline-methods] */
    public final LocalDate d(long j, TemporalUnit temporalUnit) {
        if (!(temporalUnit instanceof ChronoUnit)) {
            return (LocalDate) temporalUnit.k(this, j);
        }
        switch (f.b[((ChronoUnit) temporalUnit).ordinal()]) {
            case 1:
                return m0(j);
            case 2:
                return o0(j);
            case 3:
                return n0(j);
            case 4:
                return p0(j);
            case 5:
                return p0(j$.com.android.tools.r8.a.T(j, 10L));
            case 6:
                return p0(j$.com.android.tools.r8.a.T(j, 100L));
            case 7:
                return p0(j$.com.android.tools.r8.a.T(j, 1000L));
            case 8:
                j$.time.temporal.a aVar = j$.time.temporal.a.ERA;
                return c(j$.com.android.tools.r8.a.S(M(aVar), j), aVar);
            default:
                j$.nio.file.m.b(temporalUnit, "Unsupported unit: ");
                return null;
        }
    }

    public final LocalDate m0(long j) {
        if (j == 0) {
            return this;
        }
        long j2 = this.c + j;
        if (j2 > 0) {
            if (j2 <= 28) {
                return new LocalDate(this.a, this.b, (int) j2);
            }
            if (j2 <= 59) {
                long g0 = g0();
                if (j2 <= g0) {
                    return new LocalDate(this.a, this.b, (int) j2);
                }
                short s = this.b;
                if (s < 12) {
                    return new LocalDate(this.a, s + 1, (int) (j2 - g0));
                }
                j$.time.temporal.a.YEAR.M(this.a + 1);
                return new LocalDate(this.a + 1, 1, (int) (j2 - g0));
            }
        }
        return j0(j$.com.android.tools.r8.a.S(N(), j));
    }

    public LocalDate minusWeeks(long j) {
        long j2;
        if (j == Long.MIN_VALUE) {
            this = o0(Long.MAX_VALUE);
            j2 = 1;
        } else {
            j2 = -j;
        }
        return this.o0(j2);
    }

    public final LocalDate n0(long j) {
        if (j == 0) {
            return this;
        }
        long j2 = (this.a * 12) + (this.b - 1) + j;
        j$.time.temporal.a aVar = j$.time.temporal.a.YEAR;
        return q0(aVar.b.a(j$.com.android.tools.r8.a.E(j2, 12L), aVar), ((int) j$.com.android.tools.r8.a.R(j2, 12L)) + 1, this.c);
    }

    @Override // j$.time.temporal.TemporalAccessor
    public final j$.time.temporal.s o(j$.time.temporal.p pVar) {
        if (!(pVar instanceof j$.time.temporal.a)) {
            return pVar.n(this);
        }
        j$.time.temporal.a aVar = (j$.time.temporal.a) pVar;
        if (!aVar.isDateBased()) {
            throw new j$.time.temporal.r(b.a("Unsupported field: ", pVar));
        }
        int i = f.a[aVar.ordinal()];
        if (i == 1) {
            return j$.time.temporal.s.f(1L, g0());
        }
        if (i == 2) {
            return j$.time.temporal.s.f(1L, W());
        }
        if (i != 3) {
            return i != 4 ? aVar.b : this.a <= 0 ? j$.time.temporal.s.f(1L, C.NANOS_PER_SECOND) : j$.time.temporal.s.f(1L, 999999999L);
        }
        return j$.time.temporal.s.f(1L, (k.c0(this.b) != k.FEBRUARY || x()) ? 5L : 4L);
    }

    public final LocalDate o0(long j) {
        return m0(j$.com.android.tools.r8.a.T(j, 7L));
    }

    public final LocalDate p0(long j) {
        if (j == 0) {
            return this;
        }
        j$.time.temporal.a aVar = j$.time.temporal.a.YEAR;
        return q0(aVar.b.a(this.a + j, aVar), this.b, this.c);
    }

    @Override // j$.time.temporal.l
    /* renamed from: r0, reason: merged with bridge method [inline-methods] */
    public final LocalDate c(long j, j$.time.temporal.p pVar) {
        if (!(pVar instanceof j$.time.temporal.a)) {
            return (LocalDate) pVar.H(this, j);
        }
        j$.time.temporal.a aVar = (j$.time.temporal.a) pVar;
        aVar.M(j);
        switch (f.a[aVar.ordinal()]) {
            case 1:
                int i = (int) j;
                if (this.c != i) {
                    return of(this.a, this.b, i);
                }
                return this;
            case 2:
                int i2 = (int) j;
                if (e0() != i2) {
                    return k0(this.a, i2);
                }
                return this;
            case 3:
                return o0(j - M(j$.time.temporal.a.ALIGNED_WEEK_OF_MONTH));
            case 4:
                if (this.a < 1) {
                    j = 1 - j;
                }
                return t0((int) j);
            case 5:
                return m0(j - d0().getValue());
            case 6:
                return m0(j - M(j$.time.temporal.a.ALIGNED_DAY_OF_WEEK_IN_MONTH));
            case 7:
                return m0(j - M(j$.time.temporal.a.ALIGNED_DAY_OF_WEEK_IN_YEAR));
            case 8:
                return j0(j);
            case 9:
                return o0(j - M(j$.time.temporal.a.ALIGNED_WEEK_OF_YEAR));
            case 10:
                int i3 = (int) j;
                if (this.b != i3) {
                    j$.time.temporal.a.MONTH_OF_YEAR.M(i3);
                    return q0(this.a, i3, this.c);
                }
                return this;
            case 11:
                return n0(j - (((this.a * 12) + this.b) - 1));
            case 12:
                return t0((int) j);
            case 13:
                if (M(j$.time.temporal.a.ERA) != j) {
                    return t0(1 - this.a);
                }
                return this;
            default:
                throw new j$.time.temporal.r(b.a("Unsupported field: ", pVar));
        }
    }

    @Override // j$.time.temporal.l
    /* renamed from: s0, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
    public final LocalDate n(j$.time.temporal.m mVar) {
        return mVar instanceof LocalDate ? (LocalDate) mVar : (LocalDate) mVar.u(this);
    }

    public final LocalDate t0(int i) {
        if (this.a == i) {
            return this;
        }
        j$.time.temporal.a.YEAR.M(i);
        return q0(i, this.b, this.c);
    }

    @Override // j$.time.chrono.b
    public final String toString() {
        int i = this.a;
        short s = this.b;
        short s2 = this.c;
        int abs = Math.abs(i);
        StringBuilder sb = new StringBuilder(10);
        if (abs >= 1000) {
            if (i > 9999) {
                sb.append('+');
            }
            sb.append(i);
        } else if (i < 0) {
            sb.append(i - 10000);
            sb.deleteCharAt(1);
        } else {
            sb.append(i + 10000);
            sb.deleteCharAt(0);
        }
        sb.append(s < 10 ? "-0" : "-");
        sb.append((int) s);
        sb.append(s2 < 10 ? "-0" : "-");
        sb.append((int) s2);
        return sb.toString();
    }

    @Override // j$.time.temporal.m
    public final j$.time.temporal.l u(j$.time.temporal.l lVar) {
        return j$.com.android.tools.r8.a.a(this, lVar);
    }

    @Override // j$.time.chrono.b
    public final boolean x() {
        return j$.time.chrono.s.c.Y(this.a);
    }

    public LocalDateTime atStartOfDay() {
        return LocalDateTime.c0(this, i.g);
    }
}
