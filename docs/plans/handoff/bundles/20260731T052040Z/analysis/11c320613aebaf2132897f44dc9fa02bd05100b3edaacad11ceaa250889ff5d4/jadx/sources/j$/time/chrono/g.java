package j$.time.chrono;

import com.google.android.exoplayer2.C;
import j$.time.LocalDate;
import j$.time.ZoneId;
import j$.time.temporal.ChronoUnit;
import j$.time.temporal.TemporalUnit;
import j$.util.Objects;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes2.dex */
public final class g implements e, j$.time.temporal.l, j$.time.temporal.m, Serializable {
    private static final long serialVersionUID = 4556003607393004514L;
    public final transient b a;
    public final transient j$.time.i b;

    public g(b bVar, j$.time.i iVar) {
        Objects.requireNonNull(bVar, "date");
        Objects.requireNonNull(iVar, "time");
        this.a = bVar;
        this.b = iVar;
    }

    public static g Z(l lVar, j$.time.temporal.l lVar2) {
        g gVar = (g) lVar2;
        if (lVar.equals(gVar.a.a())) {
            return gVar;
        }
        j$.nio.file.m.m("Chronology mismatch, required: ", lVar.i(), gVar.a.a().i());
        return null;
    }

    private void readObject(ObjectInputStream objectInputStream) {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    private Object writeReplace() {
        return new e0((byte) 2, this);
    }

    @Override // j$.time.temporal.TemporalAccessor
    public final /* synthetic */ Object F(j$.desugar.sun.nio.fs.m mVar) {
        return j$.com.android.tools.r8.a.k(this, mVar);
    }

    @Override // j$.time.temporal.l
    /* renamed from: H */
    public final j$.time.temporal.l z(long j, ChronoUnit chronoUnit) {
        return Z(this.a.a(), j$.time.temporal.q.b(this, j, chronoUnit));
    }

    @Override // j$.time.chrono.e
    public final ChronoZonedDateTime I(ZoneId zoneId) {
        return k.Z(zoneId, null, this);
    }

    @Override // j$.time.temporal.TemporalAccessor
    public final long M(j$.time.temporal.p pVar) {
        return pVar instanceof j$.time.temporal.a ? ((j$.time.temporal.a) pVar).Z() ? this.b.M(pVar) : this.a.M(pVar) : pVar.F(this);
    }

    @Override // java.lang.Comparable
    /* renamed from: R */
    public final /* synthetic */ int compareTo(e eVar) {
        return j$.com.android.tools.r8.a.c(this, eVar);
    }

    @Override // j$.time.chrono.e
    public final l a() {
        return this.a.a();
    }

    @Override // j$.time.temporal.l
    /* renamed from: a0, reason: merged with bridge method [inline-methods] */
    public final g d(long j, TemporalUnit temporalUnit) {
        if (!(temporalUnit instanceof ChronoUnit)) {
            return Z(this.a.a(), temporalUnit.k(this, j));
        }
        switch (f.a[((ChronoUnit) temporalUnit).ordinal()]) {
            case 1:
                return b0(this.a, 0L, 0L, 0L, j);
            case 2:
                g d0 = d0(this.a.d(j / 86400000000L, (TemporalUnit) ChronoUnit.DAYS), this.b);
                return d0.b0(d0.a, 0L, 0L, 0L, (j % 86400000000L) * 1000);
            case 3:
                g d02 = d0(this.a.d(j / 86400000, (TemporalUnit) ChronoUnit.DAYS), this.b);
                return d02.b0(d02.a, 0L, 0L, 0L, (j % 86400000) * 1000000);
            case 4:
                return b0(this.a, 0L, 0L, j, 0L);
            case 5:
                return b0(this.a, 0L, j, 0L, 0L);
            case 6:
                return b0(this.a, j, 0L, 0L, 0L);
            case 7:
                g d03 = d0(this.a.d(j / 256, (TemporalUnit) ChronoUnit.DAYS), this.b);
                return d03.b0(d03.a, (j % 256) * 12, 0L, 0L, 0L);
            default:
                return d0(this.a.d(j, temporalUnit), this.b);
        }
    }

    @Override // j$.time.chrono.e
    public final j$.time.i b() {
        return this.b;
    }

    public final g b0(b bVar, long j, long j2, long j3, long j4) {
        long j5 = j | j2 | j3 | j4;
        j$.time.i iVar = this.b;
        if (j5 == 0) {
            return d0(bVar, iVar);
        }
        long j6 = j / 24;
        long j7 = ((j2 % 1440) * 60000000000L) + ((j3 % 86400) * C.NANOS_PER_SECOND) + (j4 % 86400000000000L);
        long l0 = iVar.l0();
        long j8 = ((j % 24) * 3600000000000L) + j7 + l0;
        long E = j$.com.android.tools.r8.a.E(j8, 86400000000000L) + j6 + (j2 / 1440) + (j3 / 86400) + (j4 / 86400000000000L);
        long R = j$.com.android.tools.r8.a.R(j8, 86400000000000L);
        return d0(bVar.d(E, (TemporalUnit) ChronoUnit.DAYS), R == l0 ? this.b : j$.time.i.e0(R));
    }

    @Override // j$.time.temporal.l
    /* renamed from: c0, reason: merged with bridge method [inline-methods] */
    public final g c(long j, j$.time.temporal.p pVar) {
        if (!(pVar instanceof j$.time.temporal.a)) {
            return Z(this.a.a(), pVar.H(this, j));
        }
        boolean Z = ((j$.time.temporal.a) pVar).Z();
        b bVar = this.a;
        return Z ? d0(bVar, this.b.c(j, pVar)) : d0(bVar.c(j, pVar), this.b);
    }

    public final g d0(j$.time.temporal.l lVar, j$.time.i iVar) {
        b bVar = this.a;
        return (bVar == lVar && this.b == iVar) ? this : new g(d.Z(bVar.a(), lVar), iVar);
    }

    @Override // j$.time.temporal.TemporalAccessor
    public final boolean e(j$.time.temporal.p pVar) {
        if (!(pVar instanceof j$.time.temporal.a)) {
            return pVar != null && pVar.k(this);
        }
        j$.time.temporal.a aVar = (j$.time.temporal.a) pVar;
        return aVar.isDateBased() || aVar.Z();
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof e) && j$.com.android.tools.r8.a.c(this, (e) obj) == 0;
    }

    @Override // j$.time.chrono.e
    public final b f() {
        return this.a;
    }

    public final int hashCode() {
        return this.b.hashCode() ^ this.a.hashCode();
    }

    @Override // j$.time.temporal.TemporalAccessor
    public final int k(j$.time.temporal.p pVar) {
        return pVar instanceof j$.time.temporal.a ? ((j$.time.temporal.a) pVar).Z() ? this.b.k(pVar) : this.a.k(pVar) : o(pVar).a(M(pVar), pVar);
    }

    @Override // j$.time.temporal.l
    public final j$.time.temporal.l n(LocalDate localDate) {
        return d0(localDate, this.b);
    }

    @Override // j$.time.temporal.TemporalAccessor
    public final j$.time.temporal.s o(j$.time.temporal.p pVar) {
        if (!(pVar instanceof j$.time.temporal.a)) {
            return pVar.n(this);
        }
        if (!((j$.time.temporal.a) pVar).Z()) {
            return this.a.o(pVar);
        }
        j$.time.i iVar = this.b;
        iVar.getClass();
        return j$.time.temporal.q.d(iVar, pVar);
    }

    public final String toString() {
        return this.a.toString() + "T" + this.b.toString();
    }

    @Override // j$.time.temporal.m
    public final j$.time.temporal.l u(j$.time.temporal.l lVar) {
        return lVar.c(f().N(), j$.time.temporal.a.EPOCH_DAY).c(b().l0(), j$.time.temporal.a.NANO_OF_DAY);
    }
}
