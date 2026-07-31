package j$.time.chrono;

import androidx.compose.foundation.text.BasicTextKt;
import androidx.datastore.preferences.PreferencesProto$Value;
import j$.time.DateTimeException;
import j$.time.LocalDate;
import j$.time.LocalTime;
import j$.time.temporal.ChronoField;
import j$.time.temporal.ChronoUnit;
import j$.time.temporal.Temporal;
import j$.time.temporal.TemporalField;
import j$.time.temporal.TemporalUnit;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.util.Arrays;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes2.dex */
public final class o extends c {
    private static final long serialVersionUID = -5207853542612002020L;
    public final transient m a;
    public final transient int b;
    public final transient int c;
    public final transient int d;

    public o(m mVar, long j) {
        int i = (int) j;
        mVar.U();
        if (i < mVar.e || i >= mVar.f) {
            j$.nio.file.j.k("Hijrah date out of range");
            throw null;
        }
        int binarySearch = Arrays.binarySearch(mVar.d, i);
        binarySearch = binarySearch < 0 ? (-binarySearch) - 2 : binarySearch;
        int i2 = mVar.g;
        int[] iArr = {(binarySearch + i2) / 12, ((i2 + binarySearch) % 12) + 1, (i - mVar.d[binarySearch]) + 1};
        this.a = mVar;
        this.b = iArr[0];
        this.c = iArr[1];
        this.d = iArr[2];
    }

    private void readObject(ObjectInputStream objectInputStream) {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    private Object writeReplace() {
        return new c0((byte) 6, this);
    }

    @Override // j$.time.chrono.c, j$.time.chrono.ChronoLocalDate
    /* renamed from: E */
    public final ChronoLocalDate m(j$.time.temporal.k kVar) {
        return (o) super.m(kVar);
    }

    @Override // j$.time.chrono.c, j$.time.temporal.Temporal
    public final Temporal F(long j, ChronoUnit chronoUnit) {
        return (o) super.F(j, chronoUnit);
    }

    @Override // j$.time.temporal.TemporalAccessor
    public final long J(TemporalField temporalField) {
        int i;
        int i2;
        if (!(temporalField instanceof ChronoField)) {
            return temporalField.F(this);
        }
        switch (n.a[((ChronoField) temporalField).ordinal()]) {
            case 1:
                i = this.d;
                return i;
            case 2:
                i = Z();
                return i;
            case 3:
                i2 = (this.d - 1) / 7;
                i = i2 + 1;
                return i;
            case 4:
                i2 = (int) j$.com.android.tools.r8.a.P(toEpochDay() + 3, 7L);
                i = i2 + 1;
                return i;
            case 5:
                i2 = (this.d - 1) % 7;
                i = i2 + 1;
                return i;
            case 6:
                i2 = (Z() - 1) % 7;
                i = i2 + 1;
                return i;
            case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                return toEpochDay();
            case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                i2 = (Z() - 1) / 7;
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
            case BasicTextKt.ShiftMeta /* 12 */:
                i = this.b;
                return i;
            case 13:
                return this.b <= 1 ? 0 : 1;
            default:
                throw new j$.time.temporal.o(j$.time.b.a("Unsupported field: ", temporalField));
        }
    }

    @Override // j$.time.chrono.c, j$.time.chrono.ChronoLocalDate
    public final ChronoLocalDateTime K(LocalTime localTime) {
        return new e(this, localTime);
    }

    @Override // j$.time.chrono.c, j$.time.chrono.ChronoLocalDate
    public final k N() {
        return p.AH;
    }

    @Override // j$.time.chrono.c, j$.time.chrono.ChronoLocalDate
    public final ChronoLocalDate Q(j$.time.temporal.m mVar) {
        return (o) super.Q(mVar);
    }

    @Override // j$.time.chrono.c
    public final ChronoLocalDate Y(long j) {
        if (j == 0) {
            return this;
        }
        long j2 = this.b + ((int) j);
        int i = (int) j2;
        if (j2 == i) {
            return c0(i, this.c, this.d);
        }
        throw new ArithmeticException();
    }

    public final int Z() {
        return this.a.Z(this.b, this.c - 1) + this.d;
    }

    @Override // j$.time.chrono.ChronoLocalDate
    public final j a() {
        return this.a;
    }

    @Override // j$.time.chrono.c
    /* renamed from: a0, reason: merged with bridge method [inline-methods] */
    public final o W(long j) {
        return new o(this.a, toEpochDay() + j);
    }

    @Override // j$.time.chrono.c
    /* renamed from: b0, reason: merged with bridge method [inline-methods] */
    public final o X(long j) {
        if (j == 0) {
            return this;
        }
        long j2 = (this.b * 12) + (this.c - 1) + j;
        m mVar = this.a;
        long C = j$.com.android.tools.r8.a.C(j2, 12L);
        int i = mVar.g;
        if (C >= i / 12 && C <= (((mVar.d.length - 1) + i) / 12) - 1) {
            return c0((int) C, ((int) j$.com.android.tools.r8.a.P(j2, 12L)) + 1, this.d);
        }
        throw new DateTimeException("Invalid Hijrah year: " + C);
    }

    @Override // j$.time.chrono.c, j$.time.chrono.ChronoLocalDate, j$.time.temporal.Temporal
    public final ChronoLocalDate c(long j, TemporalUnit temporalUnit) {
        return (o) super.c(j, temporalUnit);
    }

    public final o c0(int i, int i2, int i3) {
        int X = this.a.X(i, i2);
        if (i3 > X) {
            i3 = X;
        }
        return new o(this.a, i, i2, i3);
    }

    @Override // j$.time.chrono.c, j$.time.temporal.Temporal
    /* renamed from: d0, reason: merged with bridge method [inline-methods] */
    public final o b(long j, TemporalField temporalField) {
        if (!(temporalField instanceof ChronoField)) {
            return (o) super.b(j, temporalField);
        }
        ChronoField chronoField = (ChronoField) temporalField;
        this.a.x(chronoField).b(j, chronoField);
        int i = (int) j;
        switch (n.a[chronoField.ordinal()]) {
            case 1:
                return c0(this.b, this.c, i);
            case 2:
                return W(Math.min(i, this.a.Z(this.b, 12)) - Z());
            case 3:
                return W((j - J(ChronoField.ALIGNED_WEEK_OF_MONTH)) * 7);
            case 4:
                return W(j - (((int) j$.com.android.tools.r8.a.P(toEpochDay() + 3, 7L)) + 1));
            case 5:
                return W(j - J(ChronoField.ALIGNED_DAY_OF_WEEK_IN_MONTH));
            case 6:
                return W(j - J(ChronoField.ALIGNED_DAY_OF_WEEK_IN_YEAR));
            case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                return new o(this.a, j);
            case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                return W((j - J(ChronoField.ALIGNED_WEEK_OF_YEAR)) * 7);
            case 9:
                return c0(this.b, i, this.d);
            case 10:
                return X(j - (((this.b * 12) + this.c) - 1));
            case 11:
                if (this.b < 1) {
                    i = 1 - i;
                }
                return c0(i, this.c, this.d);
            case BasicTextKt.ShiftMeta /* 12 */:
                return c0(i, this.c, this.d);
            case 13:
                return c0(1 - this.b, this.c, this.d);
            default:
                throw new j$.time.temporal.o(j$.time.b.a("Unsupported field: ", temporalField));
        }
    }

    @Override // j$.time.chrono.c, j$.time.chrono.ChronoLocalDate
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof o) {
            o oVar = (o) obj;
            if (this.b == oVar.b && this.c == oVar.c && this.d == oVar.d && this.a.equals(oVar.a)) {
                return true;
            }
        }
        return false;
    }

    @Override // j$.time.chrono.c, j$.time.chrono.ChronoLocalDate
    public final int hashCode() {
        int i = this.b;
        int i2 = this.c;
        int i3 = this.d;
        this.a.getClass();
        return ((i & (-2048)) ^ 2100100019) ^ (((i << 11) + (i2 << 6)) + i3);
    }

    @Override // j$.time.chrono.c, j$.time.temporal.Temporal
    public final Temporal m(LocalDate localDate) {
        return (o) super.m(localDate);
    }

    @Override // j$.time.chrono.c, j$.time.temporal.TemporalAccessor
    public final j$.time.temporal.p n(TemporalField temporalField) {
        if (!(temporalField instanceof ChronoField)) {
            return temporalField.m(this);
        }
        if (!j$.com.android.tools.r8.a.h(this, temporalField)) {
            throw new j$.time.temporal.o(j$.time.b.a("Unsupported field: ", temporalField));
        }
        ChronoField chronoField = (ChronoField) temporalField;
        int i = n.a[chronoField.ordinal()];
        return i != 1 ? i != 2 ? i != 3 ? this.a.x(chronoField) : j$.time.temporal.p.f(1L, 5L) : j$.time.temporal.p.f(1L, this.a.Z(this.b, 12)) : j$.time.temporal.p.f(1L, this.a.X(this.b, this.c));
    }

    @Override // j$.time.chrono.c, j$.time.chrono.ChronoLocalDate
    public final long toEpochDay() {
        return this.a.W(this.b, this.c, this.d);
    }

    @Override // j$.time.chrono.c, j$.time.chrono.ChronoLocalDate
    /* renamed from: y */
    public final ChronoLocalDate F(long j, TemporalUnit temporalUnit) {
        return (o) super.F(j, temporalUnit);
    }

    @Override // j$.time.chrono.c, j$.time.temporal.Temporal
    public final Temporal c(long j, TemporalUnit temporalUnit) {
        return (o) super.c(j, temporalUnit);
    }

    public o(m mVar, int i, int i2, int i3) {
        mVar.W(i, i2, i3);
        this.a = mVar;
        this.b = i;
        this.c = i2;
        this.d = i3;
    }
}
