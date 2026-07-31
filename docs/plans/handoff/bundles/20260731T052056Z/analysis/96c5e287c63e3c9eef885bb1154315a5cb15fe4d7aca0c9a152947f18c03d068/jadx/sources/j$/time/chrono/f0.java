package j$.time.chrono;

import j$.time.LocalDate;
import j$.time.LocalTime;
import j$.time.temporal.ChronoUnit;
import j$.time.temporal.Temporal;
import j$.time.temporal.TemporalAdjuster;
import j$.time.temporal.TemporalUnit;
import j$.util.Objects;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes2.dex */
public final class f0 extends c {
    private static final long serialVersionUID = -8722293800195731463L;
    public final transient LocalDate a;

    public f0(LocalDate localDate) {
        Objects.requireNonNull(localDate, "isoDate");
        this.a = localDate;
    }

    private void readObject(ObjectInputStream objectInputStream) {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    private Object writeReplace() {
        return new b0((byte) 8, this);
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x0022, code lost:
    
        if (r2 != 7) goto L20;
     */
    @Override // j$.time.chrono.c, j$.time.temporal.Temporal
    /* renamed from: A, reason: merged with bridge method [inline-methods] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final j$.time.chrono.f0 a(long r8, j$.time.temporal.n r10) {
        /*
            r7 = this;
            boolean r0 = r10 instanceof j$.time.temporal.a
            if (r0 == 0) goto La3
            r0 = r10
            j$.time.temporal.a r0 = (j$.time.temporal.a) r0
            long r1 = r7.q(r0)
            int r1 = (r1 > r8 ? 1 : (r1 == r8 ? 0 : -1))
            if (r1 != 0) goto L10
            return r7
        L10:
            int[] r1 = j$.time.chrono.e0.a
            int r2 = r0.ordinal()
            r2 = r1[r2]
            r3 = 7
            r4 = 6
            r5 = 4
            if (r2 == r5) goto L4d
            r6 = 5
            if (r2 == r6) goto L25
            if (r2 == r4) goto L4d
            if (r2 == r3) goto L4d
            goto L63
        L25:
            j$.time.chrono.d0 r10 = j$.time.chrono.d0.c
            j$.time.temporal.q r10 = r10.x(r0)
            r10.b(r8, r0)
            int r10 = r7.z()
            long r0 = (long) r10
            r2 = 12
            long r0 = r0 * r2
            j$.time.LocalDate r10 = r7.a
            int r10 = r10.getMonthValue()
            long r2 = (long) r10
            long r0 = r0 + r2
            r2 = 1
            long r0 = r0 - r2
            long r8 = r8 - r0
            j$.time.LocalDate r10 = r7.a
            j$.time.LocalDate r8 = r10.E(r8)
            j$.time.chrono.f0 r7 = r7.B(r8)
            return r7
        L4d:
            j$.time.chrono.d0 r2 = j$.time.chrono.d0.c
            j$.time.temporal.q r2 = r2.x(r0)
            int r2 = r2.a(r8, r0)
            int r0 = r0.ordinal()
            r0 = r1[r0]
            if (r0 == r5) goto L8c
            if (r0 == r4) goto L7f
            if (r0 == r3) goto L6e
        L63:
            j$.time.LocalDate r0 = r7.a
            j$.time.LocalDate r8 = r0.a(r8, r10)
            j$.time.chrono.f0 r7 = r7.B(r8)
            return r7
        L6e:
            j$.time.LocalDate r8 = r7.a
            int r9 = r7.z()
            int r9 = (-542) - r9
            j$.time.LocalDate r8 = r8.K(r9)
            j$.time.chrono.f0 r7 = r7.B(r8)
            return r7
        L7f:
            j$.time.LocalDate r8 = r7.a
            int r2 = r2 + (-543)
            j$.time.LocalDate r8 = r8.K(r2)
            j$.time.chrono.f0 r7 = r7.B(r8)
            return r7
        L8c:
            j$.time.LocalDate r8 = r7.a
            int r9 = r7.z()
            r10 = 1
            if (r9 < r10) goto L96
            goto L98
        L96:
            int r2 = 1 - r2
        L98:
            int r2 = r2 + (-543)
            j$.time.LocalDate r8 = r8.K(r2)
            j$.time.chrono.f0 r7 = r7.B(r8)
            return r7
        La3:
            j$.time.chrono.ChronoLocalDate r7 = super.a(r8, r10)
            j$.time.chrono.f0 r7 = (j$.time.chrono.f0) r7
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: j$.time.chrono.f0.a(long, j$.time.temporal.n):j$.time.chrono.f0");
    }

    public final f0 B(LocalDate localDate) {
        return localDate.equals(this.a) ? this : new f0(localDate);
    }

    @Override // j$.time.chrono.c, j$.time.chrono.ChronoLocalDate, j$.time.temporal.Temporal
    public final ChronoLocalDate b(long j, TemporalUnit temporalUnit) {
        return (f0) super.b(j, temporalUnit);
    }

    @Override // j$.time.chrono.c, j$.time.chrono.ChronoLocalDate
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof f0) {
            return this.a.equals(((f0) obj).a);
        }
        return false;
    }

    @Override // j$.time.chrono.c, j$.time.temporal.Temporal
    /* renamed from: g */
    public final Temporal n(LocalDate localDate) {
        return (f0) super.n(localDate);
    }

    @Override // j$.time.chrono.ChronoLocalDate
    public final a getChronology() {
        return d0.c;
    }

    @Override // j$.time.chrono.c, j$.time.chrono.ChronoLocalDate
    public final j getEra() {
        return z() >= 1 ? g0.BE : g0.BEFORE_BE;
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
        int i = e0.a[aVar.ordinal()];
        if (i == 1 || i == 2 || i == 3) {
            return this.a.h(nVar);
        }
        if (i != 4) {
            return d0.c.x(aVar);
        }
        j$.time.temporal.q qVar = j$.time.temporal.a.YEAR.b;
        return j$.time.temporal.q.f(1L, z() <= 0 ? (-(qVar.a + 543)) + 1 : qVar.d + 543);
    }

    @Override // j$.time.chrono.c, j$.time.chrono.ChronoLocalDate
    public final int hashCode() {
        d0.c.getClass();
        return this.a.hashCode() ^ 146118545;
    }

    @Override // j$.time.chrono.c, j$.time.chrono.ChronoLocalDate
    /* renamed from: l */
    public final ChronoLocalDate o(long j, TemporalUnit temporalUnit) {
        return (f0) super.o(j, temporalUnit);
    }

    @Override // j$.time.chrono.c, j$.time.chrono.ChronoLocalDate
    public final ChronoLocalDate n(TemporalAdjuster temporalAdjuster) {
        return (f0) super.n(temporalAdjuster);
    }

    @Override // j$.time.chrono.c, j$.time.temporal.Temporal
    public final Temporal o(long j, ChronoUnit chronoUnit) {
        return (f0) super.o(j, chronoUnit);
    }

    @Override // j$.time.temporal.TemporalAccessor
    public final long q(j$.time.temporal.n nVar) {
        if (!(nVar instanceof j$.time.temporal.a)) {
            return nVar.i(this);
        }
        int i = e0.a[((j$.time.temporal.a) nVar).ordinal()];
        if (i == 4) {
            int z = z();
            if (z < 1) {
                z = 1 - z;
            }
            return z;
        }
        if (i == 5) {
            return ((z() * 12) + this.a.getMonthValue()) - 1;
        }
        if (i == 6) {
            return z();
        }
        if (i != 7) {
            return this.a.q(nVar);
        }
        return z() < 1 ? 0 : 1;
    }

    @Override // j$.time.chrono.c, j$.time.chrono.ChronoLocalDate
    public final ChronoLocalDateTime r(LocalTime localTime) {
        return new e(this, localTime);
    }

    @Override // j$.time.chrono.c, j$.time.chrono.ChronoLocalDate
    public final ChronoLocalDate t(j$.time.temporal.m mVar) {
        return (f0) super.t(mVar);
    }

    @Override // j$.time.chrono.c, j$.time.chrono.ChronoLocalDate
    public final long toEpochDay() {
        return this.a.toEpochDay();
    }

    @Override // j$.time.chrono.c
    public final ChronoLocalDate w(long j) {
        return B(this.a.plusDays(j));
    }

    @Override // j$.time.chrono.c
    public final ChronoLocalDate x(long j) {
        return B(this.a.E(j));
    }

    @Override // j$.time.chrono.c
    public final ChronoLocalDate y(long j) {
        return B(this.a.G(j));
    }

    public final int z() {
        return this.a.getYear() + 543;
    }

    @Override // j$.time.chrono.c, j$.time.temporal.Temporal
    public final Temporal b(long j, TemporalUnit temporalUnit) {
        return (f0) super.b(j, temporalUnit);
    }
}
