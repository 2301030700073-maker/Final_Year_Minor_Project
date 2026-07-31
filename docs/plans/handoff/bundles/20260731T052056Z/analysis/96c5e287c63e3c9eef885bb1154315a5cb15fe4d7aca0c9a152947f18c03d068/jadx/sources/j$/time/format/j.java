package j$.time.format;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes2.dex */
public class j implements e {
    public static final long[] f = {0, 10, 100, 1000, 10000, 100000, 1000000, 10000000, 100000000, 1000000000, 10000000000L};
    public final j$.time.temporal.n a;
    public final int b;
    public final int c;
    public final f0 d;
    public final int e;

    public j(j$.time.temporal.n nVar, int i, int i2, f0 f0Var) {
        this.a = nVar;
        this.b = i;
        this.c = i2;
        this.d = f0Var;
        this.e = 0;
    }

    public boolean b(w wVar) {
        int i = this.e;
        if (i != -1) {
            return i > 0 && this.b == this.c && this.d == f0.NOT_NEGATIVE;
        }
        return true;
    }

    public int c(w wVar, long j, int i, int i2) {
        return wVar.g(this.a, j, i, i2);
    }

    public j d() {
        if (this.e == -1) {
            return this;
        }
        return new j(this.a, this.b, this.c, this.d, -1);
    }

    public j e(int i) {
        return new j(this.a, this.b, this.c, this.d, this.e + i);
    }

    @Override // j$.time.format.e
    public boolean f(y yVar, StringBuilder sb) {
        j$.time.temporal.n nVar = this.a;
        Long a = yVar.a(nVar);
        if (a == null) {
            return false;
        }
        long a2 = a(yVar, a.longValue());
        c0 c0Var = yVar.b.c;
        String l = a2 == Long.MIN_VALUE ? "9223372036854775808" : Long.toString(Math.abs(a2));
        int length = l.length();
        int i = this.c;
        if (length > i) {
            throw new j$.time.c("Field " + nVar + " cannot be printed as the value " + a2 + " exceeds the maximum print width of " + i);
        }
        c0Var.getClass();
        int i2 = this.b;
        f0 f0Var = this.d;
        if (a2 >= 0) {
            int i3 = b.a[f0Var.ordinal()];
            if (i3 != 1) {
                if (i3 == 2) {
                    sb.append('+');
                }
            } else if (i2 < 19 && a2 >= f[i2]) {
                sb.append('+');
            }
        } else {
            int i4 = b.a[f0Var.ordinal()];
            if (i4 == 1 || i4 == 2 || i4 == 3) {
                sb.append('-');
            } else if (i4 == 4) {
                throw new j$.time.c("Field " + nVar + " cannot be printed as the value " + a2 + " cannot be negative according to the SignStyle");
            }
        }
        for (int i5 = 0; i5 < i2 - l.length(); i5++) {
            sb.append('0');
        }
        sb.append(l);
        return true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:59:0x0132, code lost:
    
        r5 = r12;
        r2 = r20;
     */
    @Override // j$.time.format.e
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public int g(j$.time.format.w r27, java.lang.CharSequence r28, int r29) {
        /*
            Method dump skipped, instructions count: 419
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: j$.time.format.j.g(j$.time.format.w, java.lang.CharSequence, int):int");
    }

    public String toString() {
        int i = this.c;
        j$.time.temporal.n nVar = this.a;
        f0 f0Var = this.d;
        int i2 = this.b;
        if (i2 == 1 && i == 19 && f0Var == f0.NORMAL) {
            return "Value(" + nVar + ")";
        }
        if (i2 == i && f0Var == f0.NOT_NEGATIVE) {
            return "Value(" + nVar + "," + i2 + ")";
        }
        return "Value(" + nVar + "," + i2 + "," + i + "," + f0Var + ")";
    }

    public j(j$.time.temporal.n nVar, int i, int i2, f0 f0Var, int i3) {
        this.a = nVar;
        this.b = i;
        this.c = i2;
        this.d = f0Var;
        this.e = i3;
    }

    public long a(y yVar, long j) {
        return j;
    }
}
