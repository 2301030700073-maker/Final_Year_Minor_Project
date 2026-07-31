package j$.time.format;

import j$.time.LocalDate;
import j$.time.temporal.TemporalField;
import j$.util.Objects;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes2.dex */
public final class l extends h {
    public final int g;

    static {
        LocalDate.of(2000, 1, 1);
    }

    public l(TemporalField temporalField, int i, int i2, int i3, int i4) {
        super(temporalField, i, i2, SignStyle.NOT_NEGATIVE, i4);
        this.g = i3;
    }

    @Override // j$.time.format.h
    public final long a(r rVar, long j) {
        long abs = Math.abs(j);
        long j2 = this.g;
        long[] jArr = h.f;
        if (j >= j2) {
            long j3 = jArr[this.b];
            if (j < j2 + j3) {
                return abs % j3;
            }
        }
        return abs % jArr[this.c];
    }

    @Override // j$.time.format.h
    public final boolean b(p pVar) {
        if (pVar.c) {
            return super.b(pVar);
        }
        return false;
    }

    @Override // j$.time.format.h
    public final int c(p pVar, long j, int i, int i2) {
        int i3 = i2 - i;
        int i4 = this.b;
        if (i3 == i4 && j >= 0) {
            long j2 = h.f[i4];
            int i5 = this.g;
            long j3 = i5;
            long j4 = j3 - (j3 % j2);
            j = i5 > 0 ? j4 + j : j4 - j;
            if (j < j3) {
                j += j2;
            }
        }
        return pVar.f(this.a, j, i, i2);
    }

    @Override // j$.time.format.h
    public final h d() {
        if (this.e == -1) {
            return this;
        }
        return new l(this.a, this.b, this.c, this.g, -1);
    }

    @Override // j$.time.format.h
    public final h e(int i) {
        return new l(this.a, this.b, this.c, this.g, this.e + i);
    }

    @Override // j$.time.format.h
    public final String toString() {
        return "ReducedValue(" + this.a + "," + this.b + "," + this.c + "," + Objects.requireNonNullElse(null, Integer.valueOf(this.g)) + ")";
    }
}
