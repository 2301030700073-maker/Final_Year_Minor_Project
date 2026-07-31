package j$.time.chrono;

import androidx.datastore.preferences.PreferencesProto$Value;
import j$.time.LocalTime;
import j$.time.temporal.ChronoField;
import j$.time.temporal.ChronoUnit;
import j$.time.temporal.Temporal;
import j$.time.temporal.TemporalField;
import j$.time.temporal.TemporalQuery;
import j$.time.temporal.TemporalUnit;
import j$.util.Objects;
import java.io.Serializable;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes2.dex */
public abstract class c implements ChronoLocalDate, Temporal, j$.time.temporal.k, Serializable {
    private static final long serialVersionUID = 6282433883239719096L;

    public static ChronoLocalDate U(j jVar, Temporal temporal) {
        ChronoLocalDate chronoLocalDate = (ChronoLocalDate) temporal;
        if (jVar.equals(chronoLocalDate.a())) {
            return chronoLocalDate;
        }
        j$.nio.file.j.m("Chronology mismatch, expected: ", jVar.i(), chronoLocalDate.a().i());
        return null;
    }

    @Override // j$.time.temporal.Temporal
    /* renamed from: E */
    public ChronoLocalDate m(j$.time.temporal.k kVar) {
        return U(a(), kVar.u(this));
    }

    @Override // j$.time.chrono.ChronoLocalDate
    public ChronoLocalDateTime K(LocalTime localTime) {
        return new e(this, localTime);
    }

    @Override // j$.time.temporal.TemporalAccessor
    public final /* synthetic */ Object L(TemporalQuery temporalQuery) {
        return j$.com.android.tools.r8.a.j(this, temporalQuery);
    }

    @Override // j$.time.chrono.ChronoLocalDate
    public k N() {
        return a().A(j$.time.temporal.n.a(this, ChronoField.ERA));
    }

    @Override // j$.time.chrono.ChronoLocalDate
    public ChronoLocalDate Q(j$.time.temporal.m mVar) {
        return U(a(), mVar.k(this));
    }

    public final long V(ChronoLocalDate chronoLocalDate) {
        if (a().x(ChronoField.MONTH_OF_YEAR).d != 12) {
            throw new IllegalStateException("ChronoLocalDateImpl only supports Chronologies with 12 months per year");
        }
        ChronoField chronoField = ChronoField.PROLEPTIC_MONTH;
        long J = J(chronoField) * 32;
        ChronoField chronoField2 = ChronoField.DAY_OF_MONTH;
        return (((chronoLocalDate.J(chronoField) * 32) + chronoLocalDate.k(chronoField2)) - (J + j$.time.temporal.n.a(this, chronoField2))) / 32;
    }

    public abstract ChronoLocalDate W(long j);

    public abstract ChronoLocalDate X(long j);

    public abstract ChronoLocalDate Y(long j);

    @Override // j$.time.temporal.Temporal
    public ChronoLocalDate b(long j, TemporalField temporalField) {
        if (temporalField instanceof ChronoField) {
            throw new j$.time.temporal.o(j$.time.b.a("Unsupported field: ", temporalField));
        }
        return U(a(), temporalField.J(this, j));
    }

    @Override // j$.time.temporal.Temporal
    public ChronoLocalDate c(long j, TemporalUnit temporalUnit) {
        boolean z = temporalUnit instanceof ChronoUnit;
        if (!z) {
            if (!z) {
                return U(a(), temporalUnit.m(this, j));
            }
            j$.nio.file.j.b(temporalUnit, "Unsupported unit: ");
            return null;
        }
        switch (b.a[((ChronoUnit) temporalUnit).ordinal()]) {
            case 1:
                return W(j);
            case 2:
                return W(j$.com.android.tools.r8.a.R(j, 7L));
            case 3:
                return X(j);
            case 4:
                return Y(j);
            case 5:
                return Y(j$.com.android.tools.r8.a.R(j, 10L));
            case 6:
                return Y(j$.com.android.tools.r8.a.R(j, 100L));
            case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                return Y(j$.com.android.tools.r8.a.R(j, 1000L));
            case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                ChronoField chronoField = ChronoField.ERA;
                return b(j$.com.android.tools.r8.a.Q(J(chronoField), j), (TemporalField) chronoField);
            default:
                j$.nio.file.j.b(temporalUnit, "Unsupported unit: ");
                return null;
        }
    }

    @Override // j$.time.chrono.ChronoLocalDate, j$.time.temporal.TemporalAccessor
    public /* synthetic */ boolean d(TemporalField temporalField) {
        return j$.com.android.tools.r8.a.h(this, temporalField);
    }

    @Override // j$.time.chrono.ChronoLocalDate
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof ChronoLocalDate) && j$.com.android.tools.r8.a.b(this, (ChronoLocalDate) obj) == 0;
    }

    @Override // j$.time.chrono.ChronoLocalDate
    public int hashCode() {
        long epochDay = toEpochDay();
        return a().hashCode() ^ ((int) (epochDay ^ (epochDay >>> 32)));
    }

    @Override // j$.time.temporal.TemporalAccessor
    public final /* synthetic */ int k(TemporalField temporalField) {
        return j$.time.temporal.n.a(this, temporalField);
    }

    @Override // j$.time.temporal.TemporalAccessor
    public /* synthetic */ j$.time.temporal.p n(TemporalField temporalField) {
        return j$.time.temporal.n.d(this, temporalField);
    }

    @Override // j$.time.chrono.ChronoLocalDate
    public long toEpochDay() {
        return J(ChronoField.EPOCH_DAY);
    }

    @Override // j$.time.chrono.ChronoLocalDate
    public final String toString() {
        long J = J(ChronoField.YEAR_OF_ERA);
        long J2 = J(ChronoField.MONTH_OF_YEAR);
        long J3 = J(ChronoField.DAY_OF_MONTH);
        StringBuilder sb = new StringBuilder(30);
        sb.append(a().toString());
        sb.append(" ");
        sb.append(N());
        sb.append(" ");
        sb.append(J);
        sb.append(J2 < 10 ? "-0" : "-");
        sb.append(J2);
        sb.append(J3 < 10 ? "-0" : "-");
        sb.append(J3);
        return sb.toString();
    }

    @Override // j$.time.temporal.k
    public final /* synthetic */ Temporal u(Temporal temporal) {
        return j$.com.android.tools.r8.a.a(this, temporal);
    }

    @Override // j$.time.chrono.ChronoLocalDate, j$.time.temporal.Temporal
    public final long until(Temporal temporal, TemporalUnit temporalUnit) {
        Objects.requireNonNull(temporal, "endExclusive");
        ChronoLocalDate H = a().H(temporal);
        if (!(temporalUnit instanceof ChronoUnit)) {
            Objects.requireNonNull(temporalUnit, "unit");
            return temporalUnit.k(this, H);
        }
        switch (b.a[((ChronoUnit) temporalUnit).ordinal()]) {
            case 1:
                return H.toEpochDay() - toEpochDay();
            case 2:
                return (H.toEpochDay() - toEpochDay()) / 7;
            case 3:
                return V(H);
            case 4:
                return V(H) / 12;
            case 5:
                return V(H) / 120;
            case 6:
                return V(H) / 1200;
            case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                return V(H) / 12000;
            case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                ChronoField chronoField = ChronoField.ERA;
                return H.J(chronoField) - J(chronoField);
            default:
                j$.nio.file.j.b(temporalUnit, "Unsupported unit: ");
                return 0L;
        }
    }

    @Override // j$.time.temporal.Temporal
    /* renamed from: y, reason: merged with bridge method [inline-methods] */
    public ChronoLocalDate F(long j, TemporalUnit temporalUnit) {
        return U(a(), j$.time.temporal.n.b(this, j, temporalUnit));
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // java.lang.Comparable
    public final /* synthetic */ int compareTo(ChronoLocalDate chronoLocalDate) {
        return j$.com.android.tools.r8.a.b(this, chronoLocalDate);
    }
}
