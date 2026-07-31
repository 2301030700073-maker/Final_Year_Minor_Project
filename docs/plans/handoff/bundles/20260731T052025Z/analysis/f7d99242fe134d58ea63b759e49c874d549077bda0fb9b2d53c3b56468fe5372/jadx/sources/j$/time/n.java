package j$.time;

import androidx.datastore.preferences.PreferencesProto$Value;
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
public final class n implements Temporal, j$.time.temporal.k, Comparable, Serializable {
    public static final /* synthetic */ int c = 0;
    private static final long serialVersionUID = 7264499704384272492L;
    public final LocalTime a;
    public final ZoneOffset b;

    static {
        LocalTime localTime = LocalTime.MIN;
        ZoneOffset zoneOffset = ZoneOffset.g;
        localTime.getClass();
        new n(localTime, zoneOffset);
        LocalTime localTime2 = LocalTime.MAX;
        ZoneOffset zoneOffset2 = ZoneOffset.f;
        localTime2.getClass();
        new n(localTime2, zoneOffset2);
    }

    public n(LocalTime localTime, ZoneOffset zoneOffset) {
        this.a = (LocalTime) Objects.requireNonNull(localTime, "time");
        this.b = (ZoneOffset) Objects.requireNonNull(zoneOffset, "offset");
    }

    private void readObject(ObjectInputStream objectInputStream) {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    private Object writeReplace() {
        return new p((byte) 9, this);
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
        return temporalField instanceof ChronoField ? temporalField == ChronoField.OFFSET_SECONDS ? this.b.getTotalSeconds() : this.a.J(temporalField) : temporalField.F(this);
    }

    @Override // j$.time.temporal.TemporalAccessor
    public final Object L(TemporalQuery temporalQuery) {
        if (temporalQuery == j$.time.temporal.n.d || temporalQuery == j$.time.temporal.n.e) {
            return this.b;
        }
        if (((temporalQuery == j$.time.temporal.n.a) || (temporalQuery == j$.time.temporal.n.b)) || temporalQuery == j$.time.temporal.n.f) {
            return null;
        }
        return temporalQuery == j$.time.temporal.n.g ? this.a : temporalQuery == j$.time.temporal.n.c ? ChronoUnit.NANOS : temporalQuery.queryFrom(this);
    }

    @Override // j$.time.temporal.Temporal
    /* renamed from: U, reason: merged with bridge method [inline-methods] */
    public final n c(long j, TemporalUnit temporalUnit) {
        return temporalUnit instanceof ChronoUnit ? W(this.a.c(j, temporalUnit), this.b) : (n) temporalUnit.m(this, j);
    }

    public final long V() {
        return this.a.e0() - (this.b.getTotalSeconds() * 1000000000);
    }

    public final n W(LocalTime localTime, ZoneOffset zoneOffset) {
        return (this.a == localTime && this.b.equals(zoneOffset)) ? this : new n(localTime, zoneOffset);
    }

    @Override // j$.time.temporal.Temporal
    public final Temporal b(long j, TemporalField temporalField) {
        if (!(temporalField instanceof ChronoField)) {
            return (n) temporalField.J(this, j);
        }
        ChronoField chronoField = ChronoField.OFFSET_SECONDS;
        LocalTime localTime = this.a;
        if (temporalField != chronoField) {
            return W(localTime.b(j, temporalField), this.b);
        }
        ChronoField chronoField2 = (ChronoField) temporalField;
        return W(localTime, ZoneOffset.ofTotalSeconds(chronoField2.b.a(j, chronoField2)));
    }

    @Override // java.lang.Comparable
    public final int compareTo(Object obj) {
        n nVar = (n) obj;
        if (this.b.equals(nVar.b)) {
            return this.a.compareTo(nVar.a);
        }
        int compare = Long.compare(V(), nVar.V());
        return compare == 0 ? this.a.compareTo(nVar.a) : compare;
    }

    @Override // j$.time.temporal.TemporalAccessor
    public final boolean d(TemporalField temporalField) {
        return temporalField instanceof ChronoField ? ((ChronoField) temporalField).U() || temporalField == ChronoField.OFFSET_SECONDS : temporalField != null && temporalField.k(this);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof n) {
            n nVar = (n) obj;
            if (this.a.equals(nVar.a) && this.b.equals(nVar.b)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return this.b.hashCode() ^ this.a.hashCode();
    }

    @Override // j$.time.temporal.TemporalAccessor
    public final int k(TemporalField temporalField) {
        return j$.time.temporal.n.a(this, temporalField);
    }

    @Override // j$.time.temporal.Temporal
    public final Temporal m(LocalDate localDate) {
        localDate.getClass();
        return (n) j$.com.android.tools.r8.a.a(localDate, this);
    }

    @Override // j$.time.temporal.TemporalAccessor
    public final j$.time.temporal.p n(TemporalField temporalField) {
        if (!(temporalField instanceof ChronoField)) {
            return temporalField.m(this);
        }
        if (temporalField == ChronoField.OFFSET_SECONDS) {
            return ((ChronoField) temporalField).b;
        }
        LocalTime localTime = this.a;
        localTime.getClass();
        return j$.time.temporal.n.d(localTime, temporalField);
    }

    public final String toString() {
        return this.a.toString() + this.b.toString();
    }

    @Override // j$.time.temporal.k
    public final Temporal u(Temporal temporal) {
        return temporal.b(this.a.e0(), ChronoField.NANO_OF_DAY).b(this.b.getTotalSeconds(), ChronoField.OFFSET_SECONDS);
    }

    @Override // j$.time.temporal.Temporal
    public final long until(Temporal temporal, TemporalUnit temporalUnit) {
        n nVar;
        if (temporal instanceof n) {
            nVar = (n) temporal;
        } else {
            try {
                nVar = new n(LocalTime.V(temporal), ZoneOffset.from(temporal));
            } catch (DateTimeException e) {
                j$.nio.file.j.h("Unable to obtain OffsetTime from TemporalAccessor: ", temporal, temporal.getClass().getName(), e);
                return 0L;
            }
        }
        if (!(temporalUnit instanceof ChronoUnit)) {
            return temporalUnit.k(this, nVar);
        }
        long V = nVar.V() - V();
        switch (m.a[((ChronoUnit) temporalUnit).ordinal()]) {
            case 1:
                return V;
            case 2:
                return V / 1000;
            case 3:
                return V / 1000000;
            case 4:
                return V / 1000000000;
            case 5:
                return V / 60000000000L;
            case 6:
                return V / 3600000000000L;
            case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                return V / 43200000000000L;
            default:
                j$.nio.file.j.b(temporalUnit, "Unsupported unit: ");
                return 0L;
        }
    }
}
