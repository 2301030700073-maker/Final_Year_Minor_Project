package j$.time.chrono;

import j$.time.LocalDate;
import j$.time.LocalTime;
import j$.time.temporal.ChronoUnit;
import j$.time.temporal.Temporal;
import j$.time.temporal.TemporalAdjuster;
import j$.time.temporal.TemporalUnit;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.util.Arrays;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes2.dex */
public final class n extends c {
    private static final long serialVersionUID = -5207853542612002020L;
    public final transient l a;
    public final transient int b;
    public final transient int c;
    public final transient int d;

    public n(l lVar, long j) {
        int i = (int) j;
        lVar.G();
        if (i < lVar.e || i >= lVar.f) {
            j$.time.h.k("Hijrah date out of range");
            throw null;
        }
        int binarySearch = Arrays.binarySearch(lVar.d, i);
        binarySearch = binarySearch < 0 ? (-binarySearch) - 2 : binarySearch;
        int[] iArr = {lVar.I(binarySearch), ((lVar.g + binarySearch) % 12) + 1, (i - lVar.d[binarySearch]) + 1};
        this.a = lVar;
        this.b = iArr[0];
        this.c = iArr[1];
        this.d = iArr[2];
    }

    private void readObject(ObjectInputStream objectInputStream) {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    private Object writeReplace() {
        return new b0((byte) 6, this);
    }

    @Override // j$.time.chrono.c
    /* renamed from: A, reason: merged with bridge method [inline-methods] */
    public final n w(long j) {
        return new n(this.a, toEpochDay() + j);
    }

    @Override // j$.time.chrono.c
    /* renamed from: B, reason: merged with bridge method [inline-methods] */
    public final n x(long j) {
        if (j == 0) {
            return this;
        }
        long j2 = (this.b * 12) + (this.c - 1) + j;
        l lVar = this.a;
        long T = j$.time.a.T(j2, 12L);
        if (T >= lVar.I(0) && T <= lVar.I(lVar.d.length - 1) - 1) {
            return C((int) T, ((int) j$.time.a.S(j2, 12L)) + 1, this.d);
        }
        throw new j$.time.c("Invalid Hijrah year: " + T);
    }

    public final n C(int i, int i2, int i3) {
        int K = this.a.K(i, i2);
        if (i3 > K) {
            i3 = K;
        }
        return new n(this.a, i, i2, i3);
    }

    @Override // j$.time.chrono.c, j$.time.temporal.Temporal
    /* renamed from: D, reason: merged with bridge method [inline-methods] */
    public final n a(long j, j$.time.temporal.n nVar) {
        if (!(nVar instanceof j$.time.temporal.a)) {
            return (n) super.a(j, nVar);
        }
        j$.time.temporal.a aVar = (j$.time.temporal.a) nVar;
        this.a.x(aVar).b(j, aVar);
        int i = (int) j;
        switch (m.a[aVar.ordinal()]) {
            case 1:
                return C(this.b, this.c, i);
            case 2:
                return w(Math.min(i, lengthOfYear()) - z());
            case 3:
                return w((j - q(j$.time.temporal.a.ALIGNED_WEEK_OF_MONTH)) * 7);
            case 4:
                return w(j - (((int) j$.time.a.S(toEpochDay() + 3, 7L)) + 1));
            case 5:
                return w(j - q(j$.time.temporal.a.ALIGNED_DAY_OF_WEEK_IN_MONTH));
            case 6:
                return w(j - q(j$.time.temporal.a.ALIGNED_DAY_OF_WEEK_IN_YEAR));
            case 7:
                return new n(this.a, j);
            case 8:
                return w((j - q(j$.time.temporal.a.ALIGNED_WEEK_OF_YEAR)) * 7);
            case 9:
                return C(this.b, i, this.d);
            case 10:
                return x(j - (((this.b * 12) + this.c) - 1));
            case 11:
                if (this.b < 1) {
                    i = 1 - i;
                }
                return C(i, this.c, this.d);
            case 12:
                return C(i, this.c, this.d);
            case IMAGE_VALUE:
                return C(1 - this.b, this.c, this.d);
            default:
                throw new j$.time.temporal.p(j$.time.d.a("Unsupported field: ", nVar));
        }
    }

    @Override // j$.time.chrono.c, j$.time.chrono.ChronoLocalDate, j$.time.temporal.Temporal
    public final ChronoLocalDate b(long j, TemporalUnit temporalUnit) {
        return (n) super.b(j, temporalUnit);
    }

    @Override // j$.time.chrono.c, j$.time.chrono.ChronoLocalDate
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof n) {
            n nVar = (n) obj;
            if (this.b == nVar.b && this.c == nVar.c && this.d == nVar.d && this.a.equals(nVar.a)) {
                return true;
            }
        }
        return false;
    }

    @Override // j$.time.chrono.c, j$.time.temporal.Temporal
    /* renamed from: g */
    public final Temporal n(LocalDate localDate) {
        return (n) super.n(localDate);
    }

    @Override // j$.time.chrono.ChronoLocalDate
    public final a getChronology() {
        return this.a;
    }

    @Override // j$.time.chrono.c, j$.time.chrono.ChronoLocalDate
    public final j getEra() {
        return o.AH;
    }

    @Override // j$.time.chrono.c, j$.time.temporal.TemporalAccessor
    public final j$.time.temporal.q h(j$.time.temporal.n nVar) {
        if (!(nVar instanceof j$.time.temporal.a)) {
            return nVar.g(this);
        }
        if (!j$.time.a.q(this, nVar)) {
            throw new j$.time.temporal.p(j$.time.d.a("Unsupported field: ", nVar));
        }
        j$.time.temporal.a aVar = (j$.time.temporal.a) nVar;
        int i = m.a[aVar.ordinal()];
        return i != 1 ? i != 2 ? i != 3 ? this.a.x(aVar) : j$.time.temporal.q.f(1L, 5L) : j$.time.temporal.q.f(1L, lengthOfYear()) : j$.time.temporal.q.f(1L, this.a.K(this.b, this.c));
    }

    @Override // j$.time.chrono.c, j$.time.chrono.ChronoLocalDate
    public final int hashCode() {
        int i = this.b;
        int i2 = this.c;
        int i3 = this.d;
        this.a.getClass();
        return ((i & (-2048)) ^ 2100100019) ^ (((i << 11) + (i2 << 6)) + i3);
    }

    @Override // j$.time.chrono.c, j$.time.chrono.ChronoLocalDate
    public final boolean isLeapYear() {
        return this.a.isLeapYear(this.b);
    }

    @Override // j$.time.chrono.c, j$.time.chrono.ChronoLocalDate
    /* renamed from: l */
    public final ChronoLocalDate o(long j, TemporalUnit temporalUnit) {
        return (n) super.o(j, temporalUnit);
    }

    @Override // j$.time.chrono.c, j$.time.chrono.ChronoLocalDate
    public final int lengthOfYear() {
        return this.a.M(this.b, 12);
    }

    @Override // j$.time.chrono.c, j$.time.chrono.ChronoLocalDate
    public final ChronoLocalDate n(TemporalAdjuster temporalAdjuster) {
        return (n) super.n(temporalAdjuster);
    }

    @Override // j$.time.chrono.c, j$.time.temporal.Temporal
    public final Temporal o(long j, ChronoUnit chronoUnit) {
        return (n) super.o(j, chronoUnit);
    }

    @Override // j$.time.temporal.TemporalAccessor
    public final long q(j$.time.temporal.n nVar) {
        int i;
        int i2;
        if (!(nVar instanceof j$.time.temporal.a)) {
            return nVar.i(this);
        }
        switch (m.a[((j$.time.temporal.a) nVar).ordinal()]) {
            case 1:
                i = this.d;
                return i;
            case 2:
                i = z();
                return i;
            case 3:
                i2 = (this.d - 1) / 7;
                i = i2 + 1;
                return i;
            case 4:
                i2 = (int) j$.time.a.S(toEpochDay() + 3, 7L);
                i = i2 + 1;
                return i;
            case 5:
                i2 = (this.d - 1) % 7;
                i = i2 + 1;
                return i;
            case 6:
                i2 = (z() - 1) % 7;
                i = i2 + 1;
                return i;
            case 7:
                return toEpochDay();
            case 8:
                i2 = (z() - 1) / 7;
                i = i2 + 1;
                return i;
            case 9:
                i = this.c;
                return i;
            case 10:
                return ((this.b * 12) + this.c) - 1;
            case 11:
                i = this.b;
                return i;
            case 12:
                i = this.b;
                return i;
            case IMAGE_VALUE:
                return this.b <= 1 ? 0 : 1;
            default:
                throw new j$.time.temporal.p(j$.time.d.a("Unsupported field: ", nVar));
        }
    }

    @Override // j$.time.chrono.c, j$.time.chrono.ChronoLocalDate
    public final ChronoLocalDateTime r(LocalTime localTime) {
        return new e(this, localTime);
    }

    @Override // j$.time.chrono.c, j$.time.chrono.ChronoLocalDate
    public final ChronoLocalDate t(j$.time.temporal.m mVar) {
        return (n) super.t(mVar);
    }

    @Override // j$.time.chrono.c, j$.time.chrono.ChronoLocalDate
    public final long toEpochDay() {
        return this.a.J(this.b, this.c, this.d);
    }

    @Override // j$.time.chrono.c
    public final ChronoLocalDate y(long j) {
        if (j == 0) {
            return this;
        }
        long j2 = this.b + ((int) j);
        int i = (int) j2;
        if (j2 == i) {
            return C(i, this.c, this.d);
        }
        throw new ArithmeticException();
    }

    public final int z() {
        return this.a.M(this.b, this.c - 1) + this.d;
    }

    @Override // j$.time.chrono.c, j$.time.temporal.Temporal
    public final Temporal b(long j, TemporalUnit temporalUnit) {
        return (n) super.b(j, temporalUnit);
    }

    public n(l lVar, int i, int i2, int i3) {
        lVar.J(i, i2, i3);
        this.a = lVar;
        this.b = i;
        this.c = i2;
        this.d = i3;
    }
}
