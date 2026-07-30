package j$.util.stream;

import java.util.Arrays;

/* loaded from: classes2.dex */
final class O2 extends C2 {
    private double[] c;
    private int d;

    O2(InterfaceC3079r2 interfaceC3079r2) {
        super(interfaceC3079r2);
    }

    @Override // j$.util.stream.InterfaceC3065o2, j$.util.stream.InterfaceC3079r2
    public final void accept(double d) {
        double[] dArr = this.c;
        int i = this.d;
        this.d = i + 1;
        dArr[i] = d;
    }

    @Override // j$.util.stream.InterfaceC3079r2
    public final void c(long j) {
        if (j >= 2147483639) {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        this.c = new double[(int) j];
    }

    @Override // j$.util.stream.AbstractC3045k2, j$.util.stream.InterfaceC3079r2
    public final void end() {
        int i = 0;
        Arrays.sort(this.c, 0, this.d);
        long j = this.d;
        InterfaceC3079r2 interfaceC3079r2 = this.a;
        interfaceC3079r2.c(j);
        if (this.b) {
            while (i < this.d && !interfaceC3079r2.e()) {
                interfaceC3079r2.accept(this.c[i]);
                i++;
            }
        } else {
            while (i < this.d) {
                interfaceC3079r2.accept(this.c[i]);
                i++;
            }
        }
        interfaceC3079r2.end();
        this.c = null;
    }
}
