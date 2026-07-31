package j$.time.format;

import j$.util.Objects;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.math.RoundingMode;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes2.dex */
public final class f extends j {
    public final boolean g;

    public f(j$.time.temporal.p pVar, int i, int i2, boolean z) {
        this(pVar, i, i2, z, 0);
        Objects.requireNonNull(pVar, "field");
        j$.time.temporal.s u = pVar.u();
        if (u.a != u.b || u.c != u.d) {
            j$.nio.file.m.c(j$.time.b.a("Field must have a fixed set of values: ", pVar));
            throw null;
        }
        if (i < 0 || i > 9) {
            j$.nio.file.m.n("Minimum width must be from 0 to 9 inclusive but was ", i);
            throw null;
        }
        if (i2 < 1 || i2 > 9) {
            j$.nio.file.m.n("Maximum width must be from 1 to 9 inclusive but was ", i2);
            throw null;
        }
        if (i2 >= i) {
            return;
        }
        throw new IllegalArgumentException("Maximum width must exceed or equal the minimum width but " + i2 + " < " + i);
    }

    @Override // j$.time.format.j
    public final boolean b(w wVar) {
        return wVar.c && this.b == this.c && !this.g;
    }

    @Override // j$.time.format.j
    public final j d() {
        if (this.e == -1) {
            return this;
        }
        return new f(this.a, this.b, this.c, this.g, -1);
    }

    @Override // j$.time.format.j
    public final j e(int i) {
        return new f(this.a, this.b, this.c, this.g, this.e + i);
    }

    @Override // j$.time.format.j, j$.time.format.e
    public final boolean k(y yVar, StringBuilder sb) {
        j$.time.temporal.p pVar = this.a;
        Long a = yVar.a(pVar);
        if (a == null) {
            return false;
        }
        c0 c0Var = yVar.b.c;
        long longValue = a.longValue();
        j$.time.temporal.s u = pVar.u();
        u.b(longValue, pVar);
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
            c0Var.getClass();
            if (z) {
                sb.append('.');
            }
            sb.append(substring);
            return true;
        }
        if (i > 0) {
            if (z) {
                c0Var.getClass();
                sb.append('.');
            }
            for (int i2 = 0; i2 < i; i2++) {
                c0Var.getClass();
                sb.append('0');
            }
        }
        return true;
    }

    @Override // j$.time.format.j, j$.time.format.e
    public final int n(w wVar, CharSequence charSequence, int i) {
        boolean z = wVar.c;
        DateTimeFormatter dateTimeFormatter = wVar.a;
        int i2 = (z || b(wVar)) ? this.b : 0;
        int i3 = (wVar.c || b(wVar)) ? this.c : 9;
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
            j$.time.temporal.s u = this.a.u();
            BigDecimal valueOf = BigDecimal.valueOf(u.a);
            return wVar.g(this.a, movePointLeft.multiply(BigDecimal.valueOf(u.d).subtract(valueOf).add(BigDecimal.ONE)).setScale(0, RoundingMode.FLOOR).add(valueOf).longValueExact(), i4, i7);
        }
        if (i2 > 0) {
            return ~i;
        }
        return i;
    }

    @Override // j$.time.format.j
    public final String toString() {
        return "Fraction(" + this.a + "," + this.b + "," + this.c + (this.g ? ",DecimalPoint" : "") + ")";
    }

    public f(j$.time.temporal.p pVar, int i, int i2, boolean z, int i3) {
        super(pVar, i, i2, f0.NOT_NEGATIVE, i3);
        this.g = z;
    }
}
