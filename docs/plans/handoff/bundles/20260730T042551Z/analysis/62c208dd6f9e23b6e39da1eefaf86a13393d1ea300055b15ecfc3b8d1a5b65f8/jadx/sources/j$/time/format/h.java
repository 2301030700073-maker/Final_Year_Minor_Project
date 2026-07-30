package j$.time.format;

import com.google.android.gms.ads.RequestConfiguration;
import j$.util.Objects;
import java.math.BigDecimal;
import java.math.RoundingMode;

/* loaded from: classes2.dex */
final class h extends j {
    private final boolean g;

    h(j$.time.temporal.a aVar) {
        this(aVar, 0, 9, true, 0);
        Objects.requireNonNull(aVar, "field");
        if (aVar.k().g()) {
            return;
        }
        throw new IllegalArgumentException("Field must have a fixed set of values: " + aVar);
    }

    h(j$.time.temporal.r rVar, int i, int i2, boolean z, int i3) {
        super(rVar, i, i2, w.NOT_NEGATIVE, i3);
        this.g = z;
    }

    @Override // j$.time.format.j
    final j b() {
        return this.e == -1 ? this : new h(this.a, this.b, this.c, this.g, -1);
    }

    @Override // j$.time.format.j
    final j c(int i) {
        return new h(this.a, this.b, this.c, this.g, this.e + i);
    }

    @Override // j$.time.format.j, j$.time.format.g
    public final boolean i(r rVar, StringBuilder sb) {
        j$.time.temporal.r rVar2 = this.a;
        Long e = rVar.e(rVar2);
        if (e == null) {
            return false;
        }
        u b = rVar.b();
        long longValue = e.longValue();
        j$.time.temporal.w k = rVar2.k();
        k.b(longValue, rVar2);
        BigDecimal valueOf = BigDecimal.valueOf(k.e());
        BigDecimal divide = BigDecimal.valueOf(longValue).subtract(valueOf).divide(BigDecimal.valueOf(k.d()).subtract(valueOf).add(BigDecimal.ONE), 9, RoundingMode.FLOOR);
        BigDecimal stripTrailingZeros = divide.compareTo(BigDecimal.ZERO) == 0 ? BigDecimal.ZERO : divide.stripTrailingZeros();
        int scale = stripTrailingZeros.scale();
        boolean z = this.g;
        int i = this.b;
        if (scale != 0) {
            String substring = stripTrailingZeros.setScale(Math.min(Math.max(stripTrailingZeros.scale(), i), this.c), RoundingMode.FLOOR).toPlainString().substring(2);
            b.getClass();
            if (z) {
                sb.append('.');
            }
            sb.append(substring);
            return true;
        }
        if (i <= 0) {
            return true;
        }
        if (z) {
            b.getClass();
            sb.append('.');
        }
        for (int i2 = 0; i2 < i; i2++) {
            b.getClass();
            sb.append('0');
        }
        return true;
    }

    @Override // j$.time.format.j
    public final String toString() {
        return "Fraction(" + this.a + "," + this.b + "," + this.c + (this.g ? ",DecimalPoint" : RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED) + ")";
    }
}
