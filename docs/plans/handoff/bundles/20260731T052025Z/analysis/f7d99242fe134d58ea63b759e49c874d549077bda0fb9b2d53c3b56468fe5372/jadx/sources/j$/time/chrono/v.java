package j$.time.chrono;

import androidx.datastore.preferences.PreferencesProto$Value;
import j$.time.LocalDate;
import j$.time.LocalTime;
import j$.time.temporal.ChronoField;
import j$.time.temporal.ChronoUnit;
import j$.time.temporal.Temporal;
import j$.time.temporal.TemporalField;
import j$.time.temporal.TemporalUnit;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes2.dex */
public final class v extends c {
    public static final LocalDate d = LocalDate.of(1873, 1, 1);
    private static final long serialVersionUID = -305327627230580483L;
    public final transient LocalDate a;
    public final transient w b;
    public final transient int c;

    public v(LocalDate localDate) {
        if (localDate.Z(d)) {
            j$.nio.file.j.k("JapaneseDate before Meiji 6 is not supported");
            throw null;
        }
        w h = w.h(localDate);
        this.b = h;
        this.c = (localDate.getYear() - h.b.getYear()) + 1;
        this.a = localDate;
    }

    private void readObject(ObjectInputStream objectInputStream) {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    private Object writeReplace() {
        return new c0((byte) 4, this);
    }

    @Override // j$.time.chrono.c, j$.time.chrono.ChronoLocalDate
    /* renamed from: E */
    public final ChronoLocalDate m(j$.time.temporal.k kVar) {
        return (v) super.m(kVar);
    }

    @Override // j$.time.chrono.c, j$.time.temporal.Temporal
    public final Temporal F(long j, ChronoUnit chronoUnit) {
        return (v) super.F(j, chronoUnit);
    }

    @Override // j$.time.temporal.TemporalAccessor
    public final long J(TemporalField temporalField) {
        if (!(temporalField instanceof ChronoField)) {
            return temporalField.F(this);
        }
        switch (u.a[((ChronoField) temporalField).ordinal()]) {
            case 2:
                int i = this.c;
                LocalDate localDate = this.a;
                return i == 1 ? (localDate.getDayOfYear() - this.b.b.getDayOfYear()) + 1 : localDate.getDayOfYear();
            case 3:
                return this.c;
            case 4:
            case 5:
            case 6:
            case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                throw new j$.time.temporal.o(j$.time.b.a("Unsupported field: ", temporalField));
            case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                return this.b.a;
            default:
                return this.a.J(temporalField);
        }
    }

    @Override // j$.time.chrono.c, j$.time.chrono.ChronoLocalDate
    public final ChronoLocalDateTime K(LocalTime localTime) {
        return new e(this, localTime);
    }

    @Override // j$.time.chrono.c, j$.time.chrono.ChronoLocalDate
    public final k N() {
        return this.b;
    }

    @Override // j$.time.chrono.c, j$.time.chrono.ChronoLocalDate
    public final ChronoLocalDate Q(j$.time.temporal.m mVar) {
        return (v) super.Q(mVar);
    }

    @Override // j$.time.chrono.c
    public final ChronoLocalDate W(long j) {
        return c0(this.a.g0(j));
    }

    @Override // j$.time.chrono.c
    public final ChronoLocalDate X(long j) {
        return c0(this.a.h0(j));
    }

    @Override // j$.time.chrono.c
    public final ChronoLocalDate Y(long j) {
        return c0(this.a.j0(j));
    }

    public final v Z(long j, ChronoUnit chronoUnit) {
        return (v) super.c(j, (TemporalUnit) chronoUnit);
    }

    @Override // j$.time.chrono.ChronoLocalDate
    public final j a() {
        return t.c;
    }

    @Override // j$.time.chrono.c, j$.time.temporal.Temporal
    /* renamed from: a0, reason: merged with bridge method [inline-methods] */
    public final v b(long j, TemporalField temporalField) {
        if (!(temporalField instanceof ChronoField)) {
            return (v) super.b(j, temporalField);
        }
        ChronoField chronoField = (ChronoField) temporalField;
        if (J(chronoField) == j) {
            return this;
        }
        int[] iArr = u.a;
        int i = iArr[chronoField.ordinal()];
        if (i == 3 || i == 8 || i == 9) {
            t tVar = t.c;
            int a = tVar.x(chronoField).a(j, chronoField);
            int i2 = iArr[chronoField.ordinal()];
            if (i2 == 3) {
                return c0(this.a.n0(tVar.C(this.b, a)));
            }
            if (i2 == 8) {
                return c0(this.a.n0(tVar.C(w.j(a), this.c)));
            }
            if (i2 == 9) {
                return c0(this.a.n0(a));
            }
        }
        return c0(this.a.b(j, temporalField));
    }

    public final v b0(j$.desugar.sun.nio.fs.m mVar) {
        return (v) super.m(mVar);
    }

    @Override // j$.time.chrono.c, j$.time.chrono.ChronoLocalDate, j$.time.temporal.Temporal
    public final ChronoLocalDate c(long j, TemporalUnit temporalUnit) {
        return (v) super.c(j, temporalUnit);
    }

    public final v c0(LocalDate localDate) {
        return localDate.equals(this.a) ? this : new v(localDate);
    }

    @Override // j$.time.chrono.c, j$.time.chrono.ChronoLocalDate, j$.time.temporal.TemporalAccessor
    public final boolean d(TemporalField temporalField) {
        if (temporalField == ChronoField.ALIGNED_DAY_OF_WEEK_IN_MONTH || temporalField == ChronoField.ALIGNED_DAY_OF_WEEK_IN_YEAR || temporalField == ChronoField.ALIGNED_WEEK_OF_MONTH || temporalField == ChronoField.ALIGNED_WEEK_OF_YEAR) {
            return false;
        }
        return temporalField instanceof ChronoField ? ((ChronoField) temporalField).isDateBased() : temporalField != null && temporalField.k(this);
    }

    @Override // j$.time.chrono.c, j$.time.chrono.ChronoLocalDate
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof v) {
            return this.a.equals(((v) obj).a);
        }
        return false;
    }

    @Override // j$.time.chrono.c, j$.time.chrono.ChronoLocalDate
    public final int hashCode() {
        t.c.getClass();
        return this.a.hashCode() ^ (-688086063);
    }

    @Override // j$.time.chrono.c, j$.time.temporal.Temporal
    public final Temporal m(LocalDate localDate) {
        return (v) super.m(localDate);
    }

    @Override // j$.time.chrono.c, j$.time.temporal.TemporalAccessor
    public final j$.time.temporal.p n(TemporalField temporalField) {
        if (!(temporalField instanceof ChronoField)) {
            return temporalField.m(this);
        }
        if (!d(temporalField)) {
            throw new j$.time.temporal.o(j$.time.b.a("Unsupported field: ", temporalField));
        }
        ChronoField chronoField = (ChronoField) temporalField;
        int i = u.a[chronoField.ordinal()];
        if (i == 1) {
            return j$.time.temporal.p.f(1L, this.a.b0());
        }
        if (i != 2) {
            if (i != 3) {
                return t.c.x(chronoField);
            }
            int year = this.b.b.getYear();
            return this.b.i() != null ? j$.time.temporal.p.f(1L, (r5.b.getYear() - year) + 1) : j$.time.temporal.p.f(1L, 999999999 - year);
        }
        w i2 = this.b.i();
        int dayOfYear = (i2 == null || i2.b.getYear() != this.a.getYear()) ? this.a.a0() ? 366 : 365 : i2.b.getDayOfYear() - 1;
        if (this.c == 1) {
            dayOfYear -= this.b.b.getDayOfYear() - 1;
        }
        return j$.time.temporal.p.f(1L, dayOfYear);
    }

    @Override // j$.time.chrono.c, j$.time.chrono.ChronoLocalDate
    public final long toEpochDay() {
        return this.a.toEpochDay();
    }

    @Override // j$.time.chrono.c, j$.time.chrono.ChronoLocalDate
    /* renamed from: y */
    public final ChronoLocalDate F(long j, TemporalUnit temporalUnit) {
        return (v) super.F(j, temporalUnit);
    }

    @Override // j$.time.chrono.c, j$.time.temporal.Temporal
    public final Temporal c(long j, TemporalUnit temporalUnit) {
        return (v) super.c(j, temporalUnit);
    }

    public v(w wVar, int i, LocalDate localDate) {
        if (!localDate.Z(d)) {
            this.b = wVar;
            this.c = i;
            this.a = localDate;
            return;
        }
        j$.nio.file.j.k("JapaneseDate before Meiji 6 is not supported");
        throw null;
    }
}
