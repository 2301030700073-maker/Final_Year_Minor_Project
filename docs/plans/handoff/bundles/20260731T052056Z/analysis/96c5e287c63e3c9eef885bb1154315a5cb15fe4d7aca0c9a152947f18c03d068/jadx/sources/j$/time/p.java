package j$.time;

import j$.time.temporal.ChronoUnit;
import j$.time.temporal.Temporal;
import j$.time.temporal.TemporalAdjuster;
import j$.time.temporal.TemporalUnit;
import j$.util.Objects;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes2.dex */
public final class p implements Temporal, TemporalAdjuster, Comparable, Serializable {
    public static final /* synthetic */ int c = 0;
    private static final long serialVersionUID = 7264499704384272492L;
    public final LocalTime a;
    public final ZoneOffset b;

    static {
        LocalTime localTime = LocalTime.e;
        ZoneOffset zoneOffset = ZoneOffset.g;
        localTime.getClass();
        new p(localTime, zoneOffset);
        LocalTime localTime2 = LocalTime.f;
        ZoneOffset zoneOffset2 = ZoneOffset.f;
        localTime2.getClass();
        new p(localTime2, zoneOffset2);
    }

    public p(LocalTime localTime, ZoneOffset zoneOffset) {
        this.a = (LocalTime) Objects.requireNonNull(localTime, "time");
        this.b = (ZoneOffset) Objects.requireNonNull(zoneOffset, "offset");
    }

    private void readObject(ObjectInputStream objectInputStream) {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    private Object writeReplace() {
        return new r((byte) 9, this);
    }

    @Override // j$.time.temporal.Temporal
    public final Temporal a(long j, j$.time.temporal.n nVar) {
        if (!(nVar instanceof j$.time.temporal.a)) {
            return (p) nVar.k(this, j);
        }
        j$.time.temporal.a aVar = j$.time.temporal.a.OFFSET_SECONDS;
        LocalTime localTime = this.a;
        if (nVar != aVar) {
            return w(localTime.a(j, nVar), this.b);
        }
        j$.time.temporal.a aVar2 = (j$.time.temporal.a) nVar;
        return w(localTime, ZoneOffset.D(aVar2.b.a(j, aVar2)));
    }

    @Override // j$.time.temporal.TemporalAccessor
    public final boolean c(j$.time.temporal.n nVar) {
        return nVar instanceof j$.time.temporal.a ? ((j$.time.temporal.a) nVar).q() || nVar == j$.time.temporal.a.OFFSET_SECONDS : nVar != null && nVar.f(this);
    }

    @Override // java.lang.Comparable
    public final int compareTo(Object obj) {
        p pVar = (p) obj;
        if (this.b.equals(pVar.b)) {
            return this.a.compareTo(pVar.a);
        }
        int compare = Long.compare(v(), pVar.v());
        return compare == 0 ? this.a.compareTo(pVar.a) : compare;
    }

    @Override // j$.time.temporal.Temporal
    public final long d(Temporal temporal, TemporalUnit temporalUnit) {
        p pVar;
        if (temporal instanceof p) {
            pVar = (p) temporal;
        } else {
            try {
                pVar = new p(LocalTime.w(temporal), ZoneOffset.A(temporal));
            } catch (c e) {
                h.h("Unable to obtain OffsetTime from TemporalAccessor: ", temporal, temporal.getClass().getName(), e);
                return 0L;
            }
        }
        if (!(temporalUnit instanceof ChronoUnit)) {
            return temporalUnit.between(this, pVar);
        }
        long v = pVar.v() - v();
        switch (o.a[((ChronoUnit) temporalUnit).ordinal()]) {
            case 1:
                return v;
            case 2:
                return v / 1000;
            case 3:
                return v / 1000000;
            case 4:
                return v / 1000000000;
            case 5:
                return v / 60000000000L;
            case 6:
                return v / 3600000000000L;
            case 7:
                return v / 43200000000000L;
            default:
                h.b(temporalUnit, "Unsupported unit: ");
                return 0L;
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof p) {
            p pVar = (p) obj;
            if (this.a.equals(pVar.a) && this.b.equals(pVar.b)) {
                return true;
            }
        }
        return false;
    }

    @Override // j$.time.temporal.TemporalAccessor
    public final int f(j$.time.temporal.n nVar) {
        return j$.time.temporal.o.a(this, nVar);
    }

    @Override // j$.time.temporal.Temporal
    /* renamed from: g */
    public final Temporal n(LocalDate localDate) {
        localDate.getClass();
        return (p) a.a(localDate, this);
    }

    @Override // j$.time.temporal.TemporalAccessor
    public final j$.time.temporal.q h(j$.time.temporal.n nVar) {
        if (!(nVar instanceof j$.time.temporal.a)) {
            return nVar.g(this);
        }
        if (nVar == j$.time.temporal.a.OFFSET_SECONDS) {
            return ((j$.time.temporal.a) nVar).b;
        }
        LocalTime localTime = this.a;
        localTime.getClass();
        return j$.time.temporal.o.d(localTime, nVar);
    }

    public final int hashCode() {
        return this.b.b ^ this.a.hashCode();
    }

    @Override // j$.time.temporal.TemporalAccessor
    public final Object i(f fVar) {
        if (fVar == j$.time.temporal.o.d || fVar == j$.time.temporal.o.e) {
            return this.b;
        }
        if (((fVar == j$.time.temporal.o.a) || (fVar == j$.time.temporal.o.b)) || fVar == j$.time.temporal.o.f) {
            return null;
        }
        return fVar == j$.time.temporal.o.g ? this.a : fVar == j$.time.temporal.o.c ? ChronoUnit.NANOS : fVar.e(this);
    }

    @Override // j$.time.temporal.TemporalAdjuster
    public final Temporal k(Temporal temporal) {
        return temporal.a(this.a.G(), j$.time.temporal.a.NANO_OF_DAY).a(this.b.b, j$.time.temporal.a.OFFSET_SECONDS);
    }

    @Override // j$.time.temporal.Temporal
    public final Temporal o(long j, ChronoUnit chronoUnit) {
        long j2;
        if (j == Long.MIN_VALUE) {
            this = b(Long.MAX_VALUE, chronoUnit);
            j2 = 1;
        } else {
            j2 = -j;
        }
        return this.b(j2, chronoUnit);
    }

    @Override // j$.time.temporal.TemporalAccessor
    public final long q(j$.time.temporal.n nVar) {
        return nVar instanceof j$.time.temporal.a ? nVar == j$.time.temporal.a.OFFSET_SECONDS ? this.b.b : this.a.q(nVar) : nVar.i(this);
    }

    public final String toString() {
        return this.a.toString() + this.b.c;
    }

    @Override // j$.time.temporal.Temporal
    /* renamed from: u, reason: merged with bridge method [inline-methods] */
    public final p b(long j, TemporalUnit temporalUnit) {
        return temporalUnit instanceof ChronoUnit ? w(this.a.b(j, temporalUnit), this.b) : (p) temporalUnit.f(this, j);
    }

    public final long v() {
        return this.a.G() - (this.b.b * 1000000000);
    }

    public final p w(LocalTime localTime, ZoneOffset zoneOffset) {
        return (this.a == localTime && this.b.equals(zoneOffset)) ? this : new p(localTime, zoneOffset);
    }
}
