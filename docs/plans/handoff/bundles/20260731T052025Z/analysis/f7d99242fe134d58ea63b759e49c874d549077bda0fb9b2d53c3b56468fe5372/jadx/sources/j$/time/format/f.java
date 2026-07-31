package j$.time.format;

import j$.time.temporal.TemporalField;
import j$.util.Objects;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.math.RoundingMode;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes2.dex */
public final class f extends h {
    public final boolean g;

    public f(TemporalField temporalField) {
        this(temporalField, 0, 9, true, 0);
        Objects.requireNonNull(temporalField, "field");
        j$.time.temporal.p u = temporalField.u();
        if (u.a == u.b && u.c == u.d) {
            return;
        }
        j$.nio.file.j.c(j$.time.b.a("Field must have a fixed set of values: ", temporalField));
        throw null;
    }

    @Override // j$.time.format.h
    public final boolean b(p pVar) {
        return pVar.c && this.b == this.c && !this.g;
    }

    @Override // j$.time.format.h
    public final h d() {
        if (this.e == -1) {
            return this;
        }
        return new f(this.a, this.b, this.c, this.g, -1);
    }

    @Override // j$.time.format.h
    public final h e(int i) {
        return new f(this.a, this.b, this.c, this.g, this.e + i);
    }

    @Override // j$.time.format.h, j$.time.format.e
    public final boolean k(r rVar, StringBuilder sb) {
        TemporalField temporalField = this.a;
        Long a = rVar.a(temporalField);
        if (a == null) {
            return false;
        }
        t tVar = rVar.b.c;
        long longValue = a.longValue();
        j$.time.temporal.p u = temporalField.u();
        u.b(longValue, temporalField);
        BigDecimal valueOf = BigDecimal.valueOf(u.a);
        BigDecimal add = BigDecimal.valueOf(u.d).subtract(valueOf).add(BigDecimal.ONE);
        BigDecimal subtract = BigDecimal.valueOf(longValue).subtract(valueOf);
        RoundingMode roundingMode = RoundingMode.FLOOR;
        BigDecimal divide = subtract.divide(add, 9, roundingMode);
        BigDecimal bigDecimal = BigDecimal.ZERO;
        if (divide.compareTo(bigDecimal) != 0) {
            bigDecimal = divide.signum() == 0 ? new BigDecimal(BigInteger.ZERO, 0) : divide.stripTrailingZeros();
        }
        int scale = bigDecimal.scale();
        boolean z = this.g;
        int i = this.b;
        if (scale != 0) {
            String substring = bigDecimal.setScale(Math.min(Math.max(bigDecimal.scale(), i), this.c), roundingMode).toPlainString().substring(2);
            tVar.getClass();
            if (z) {
                sb.append('.');
            }
            sb.append(substring);
            return true;
        }
        if (i > 0) {
            if (z) {
                tVar.getClass();
                sb.append('.');
            }
            for (int i2 = 0; i2 < i; i2++) {
                tVar.getClass();
                sb.append('0');
            }
        }
        return true;
    }

    @Override // j$.time.format.h, j$.time.format.e
    public final int m(p pVar, CharSequence charSequence, int i) {
        boolean z = pVar.c;
        DateTimeFormatter dateTimeFormatter = pVar.a;
        int i2 = (z || b(pVar)) ? this.b : 0;
        int i3 = (pVar.c || b(pVar)) ? this.c : 9;
        int length = charSequence.length();
        if (i != length) {
            if (this.g) {
                char charAt = charSequence.charAt(i);
                dateTimeFormatter.c.getClass();
                if (charAt == '.') {
                    i++;
                } else if (i2 > 0) {
                    return ~i;
                }
            }
            int i4 = i;
            int i5 = i2 + i4;
            if (i5 > length) {
                return ~i4;
            }
            int min = Math.min(i3 + i4, length);
            int i6 = 0;
            int i7 = i4;
            while (true) {
                if (i7 >= min) {
                    break;
                }
                int i8 = i7 + 1;
                char charAt2 = charSequence.charAt(i7);
                dateTimeFormatter.c.getClass();
                int i9 = charAt2 - '0';
                if (i9 < 0 || i9 > 9) {
                    i9 = -1;
                }
                if (i9 >= 0) {
                    i6 = (i6 * 10) + i9;
                    i7 = i8;
                } else if (i8 < i5) {
                    return ~i4;
                }
            }
            BigDecimal movePointLeft = new BigDecimal(i6).movePointLeft(i7 - i4);
            j$.time.temporal.p u = this.a.u();
            BigDecimal valueOf = BigDecimal.valueOf(u.a);
            return pVar.f(this.a, movePointLeft.multiply(BigDecimal.valueOf(u.d).subtract(valueOf).add(BigDecimal.ONE)).setScale(0, RoundingMode.FLOOR).add(valueOf).longValueExact(), i4, i7);
        }
        if (i2 > 0) {
            return ~i;
        }
        return i;
    }

    @Override // j$.time.format.h
    public final String toString() {
        return "Fraction(" + this.a + "," + this.b + "," + this.c + (this.g ? ",DecimalPoint" : "") + ")";
    }

    public f(TemporalField temporalField, int i, int i2, boolean z, int i3) {
        super(temporalField, i, i2, SignStyle.NOT_NEGATIVE, i3);
        this.g = z;
    }
}
