package j$.time;

import com.google.android.exoplayer2.C;
import com.google.android.exoplayer2.PlaybackException;
import j$.time.format.DateTimeFormatter;
import j$.time.temporal.ChronoUnit;
import j$.time.temporal.TemporalAccessor;
import j$.time.temporal.TemporalUnit;
import j$.util.Objects;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes2.dex */
public final class Instant implements j$.time.temporal.l, j$.time.temporal.m, Comparable<Instant>, Serializable {
    public static final Instant c = new Instant(0, 0);
    public static final Instant d = b0(-31557014167219200L, 0);
    public static final Instant e = b0(31556889864403199L, 999999999);
    private static final long serialVersionUID = -665713676816604388L;
    public final long a;
    public final int b;

    public Instant(long j, int i) {
        this.a = j;
        this.b = i;
    }

    public static Instant Z(long j, int i) {
        if ((i | j) == 0) {
            return c;
        }
        if (j >= -31557014167219200L && j <= 31556889864403199L) {
            return new Instant(j, i);
        }
        j$.nio.file.m.k("Instant exceeds minimum or maximum instant");
        return null;
    }

    public static Instant a0(TemporalAccessor temporalAccessor) {
        if (temporalAccessor instanceof Instant) {
            return (Instant) temporalAccessor;
        }
        Objects.requireNonNull(temporalAccessor, "temporal");
        try {
            return b0(temporalAccessor.M(j$.time.temporal.a.INSTANT_SECONDS), temporalAccessor.k(j$.time.temporal.a.NANO_OF_SECOND));
        } catch (DateTimeException e2) {
            j$.nio.file.m.h("Unable to obtain Instant from TemporalAccessor: ", temporalAccessor, temporalAccessor.getClass().getName(), e2);
            return null;
        }
    }

    public static Instant b0(long j, long j2) {
        return Z(j$.com.android.tools.r8.a.S(j, j$.com.android.tools.r8.a.E(j2, C.NANOS_PER_SECOND)), (int) j$.com.android.tools.r8.a.R(j2, C.NANOS_PER_SECOND));
    }

    public static Instant now() {
        a.b.getClass();
        return ofEpochMilli(System.currentTimeMillis());
    }

    public static Instant ofEpochMilli(long j) {
        return Z(j$.com.android.tools.r8.a.E(j, 1000L), ((int) j$.com.android.tools.r8.a.R(j, 1000L)) * PlaybackException.CUSTOM_ERROR_CODE_BASE);
    }

    public static Instant ofEpochSecond(long j) {
        return Z(j, 0);
    }

    public static Instant parse(CharSequence charSequence) {
        return (Instant) DateTimeFormatter.g.b(charSequence, new j$.desugar.sun.nio.fs.m(1));
    }

    private void readObject(ObjectInputStream objectInputStream) {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    private Object writeReplace() {
        return new q((byte) 2, this);
    }

    @Override // j$.time.temporal.TemporalAccessor
    public final Object F(j$.desugar.sun.nio.fs.m mVar) {
        if (mVar == j$.time.temporal.q.c) {
            return ChronoUnit.NANOS;
        }
        if (mVar == j$.time.temporal.q.b || mVar == j$.time.temporal.q.a || mVar == j$.time.temporal.q.e || mVar == j$.time.temporal.q.d || mVar == j$.time.temporal.q.f || mVar == j$.time.temporal.q.g) {
            return null;
        }
        return mVar.g(this);
    }

    @Override // j$.time.temporal.l
    /* renamed from: H */
    public final j$.time.temporal.l z(long j, ChronoUnit chronoUnit) {
        long j2;
        if (j == Long.MIN_VALUE) {
            this = d(Long.MAX_VALUE, chronoUnit);
            j2 = 1;
        } else {
            j2 = -j;
        }
        return this.d(j2, chronoUnit);
    }

    @Override // j$.time.temporal.TemporalAccessor
    public final long M(j$.time.temporal.p pVar) {
        int i;
        if (!(pVar instanceof j$.time.temporal.a)) {
            return pVar.F(this);
        }
        int i2 = e.a[((j$.time.temporal.a) pVar).ordinal()];
        if (i2 == 1) {
            i = this.b;
        } else if (i2 == 2) {
            i = this.b / 1000;
        } else {
            if (i2 != 3) {
                if (i2 == 4) {
                    return this.a;
                }
                throw new j$.time.temporal.r(b.a("Unsupported field: ", pVar));
            }
            i = this.b / PlaybackException.CUSTOM_ERROR_CODE_BASE;
        }
        return i;
    }

    public OffsetDateTime atOffset(ZoneOffset zoneOffset) {
        return OffsetDateTime.ofInstant(this, zoneOffset);
    }

    public ZonedDateTime atZone(ZoneId zoneId) {
        return ZonedDateTime.Z(this, zoneId);
    }

    @Override // j$.time.temporal.l
    public final j$.time.temporal.l c(long j, j$.time.temporal.p pVar) {
        if (!(pVar instanceof j$.time.temporal.a)) {
            return (Instant) pVar.H(this, j);
        }
        j$.time.temporal.a aVar = (j$.time.temporal.a) pVar;
        aVar.M(j);
        int i = e.a[aVar.ordinal()];
        if (i == 1) {
            return j != ((long) this.b) ? Z(this.a, (int) j) : this;
        }
        if (i == 2) {
            int i2 = ((int) j) * 1000;
            return i2 != this.b ? Z(this.a, i2) : this;
        }
        if (i == 3) {
            int i3 = ((int) j) * PlaybackException.CUSTOM_ERROR_CODE_BASE;
            return i3 != this.b ? Z(this.a, i3) : this;
        }
        if (i == 4) {
            return j != this.a ? Z(j, this.b) : this;
        }
        throw new j$.time.temporal.r(b.a("Unsupported field: ", pVar));
    }

    public final Instant c0(long j, long j2) {
        if ((j | j2) == 0) {
            return this;
        }
        return b0(j$.com.android.tools.r8.a.S(j$.com.android.tools.r8.a.S(this.a, j), j2 / C.NANOS_PER_SECOND), this.b + (j2 % C.NANOS_PER_SECOND));
    }

    @Override // java.lang.Comparable
    public int compareTo(Instant instant) {
        int compare = Long.compare(this.a, instant.a);
        return compare != 0 ? compare : this.b - instant.b;
    }

    @Override // j$.time.temporal.TemporalAccessor
    public final boolean e(j$.time.temporal.p pVar) {
        return pVar instanceof j$.time.temporal.a ? pVar == j$.time.temporal.a.INSTANT_SECONDS || pVar == j$.time.temporal.a.NANO_OF_SECOND || pVar == j$.time.temporal.a.MICRO_OF_SECOND || pVar == j$.time.temporal.a.MILLI_OF_SECOND : pVar != null && pVar.k(this);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof Instant) {
            Instant instant = (Instant) obj;
            if (this.a == instant.a && this.b == instant.b) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        long j = this.a;
        return (this.b * 51) + ((int) (j ^ (j >>> 32)));
    }

    public boolean isBefore(Instant instant) {
        return compareTo(instant) < 0;
    }

    @Override // j$.time.temporal.TemporalAccessor
    public final int k(j$.time.temporal.p pVar) {
        if (!(pVar instanceof j$.time.temporal.a)) {
            return j$.time.temporal.q.d(this, pVar).a(pVar.F(this), pVar);
        }
        int i = e.a[((j$.time.temporal.a) pVar).ordinal()];
        if (i == 1) {
            return this.b;
        }
        if (i == 2) {
            return this.b / 1000;
        }
        if (i == 3) {
            return this.b / PlaybackException.CUSTOM_ERROR_CODE_BASE;
        }
        if (i == 4) {
            j$.time.temporal.a aVar = j$.time.temporal.a.INSTANT_SECONDS;
            aVar.b.a(this.a, aVar);
        }
        throw new j$.time.temporal.r(b.a("Unsupported field: ", pVar));
    }

    @Override // j$.time.temporal.l
    public final j$.time.temporal.l n(LocalDate localDate) {
        return (Instant) j$.com.android.tools.r8.a.a(localDate, this);
    }

    @Override // j$.time.temporal.TemporalAccessor
    public final j$.time.temporal.s o(j$.time.temporal.p pVar) {
        return j$.time.temporal.q.d(this, pVar);
    }

    @Override // j$.time.temporal.l
    /* renamed from: plus, reason: merged with bridge method [inline-methods] */
    public Instant d(long j, TemporalUnit temporalUnit) {
        if (!(temporalUnit instanceof ChronoUnit)) {
            return (Instant) temporalUnit.k(this, j);
        }
        switch (e.b[((ChronoUnit) temporalUnit).ordinal()]) {
            case 1:
                return c0(0L, j);
            case 2:
                return c0(j / 1000000, (j % 1000000) * 1000);
            case 3:
                return c0(j / 1000, (j % 1000) * 1000000);
            case 4:
                return c0(j, 0L);
            case 5:
                return c0(j$.com.android.tools.r8.a.T(j, 60L), 0L);
            case 6:
                return c0(j$.com.android.tools.r8.a.T(j, 3600L), 0L);
            case 7:
                return c0(j$.com.android.tools.r8.a.T(j, 43200L), 0L);
            case 8:
                return c0(j$.com.android.tools.r8.a.T(j, 86400L), 0L);
            default:
                j$.nio.file.m.b(temporalUnit, "Unsupported unit: ");
                return null;
        }
    }

    public long toEpochMilli() {
        long j = this.a;
        return (j >= 0 || this.b <= 0) ? j$.com.android.tools.r8.a.S(j$.com.android.tools.r8.a.T(j, 1000L), this.b / PlaybackException.CUSTOM_ERROR_CODE_BASE) : j$.com.android.tools.r8.a.S(j$.com.android.tools.r8.a.T(j + 1, 1000L), (this.b / PlaybackException.CUSTOM_ERROR_CODE_BASE) - 1000);
    }

    public final String toString() {
        return DateTimeFormatter.g.format(this);
    }

    @Override // j$.time.temporal.m
    public final j$.time.temporal.l u(j$.time.temporal.l lVar) {
        return lVar.c(this.a, j$.time.temporal.a.INSTANT_SECONDS).c(this.b, j$.time.temporal.a.NANO_OF_SECOND);
    }
}
