package j$.util.stream;

import java.util.Arrays;

/* loaded from: classes2.dex */
final class G2 extends C2 {
    private U2 c;

    G2(InterfaceC3079r2 interfaceC3079r2) {
        super(interfaceC3079r2);
    }

    @Override // j$.util.stream.InterfaceC3065o2, j$.util.stream.InterfaceC3079r2
    public final void accept(double d) {
        this.c.accept(d);
    }

    @Override // j$.util.stream.InterfaceC3079r2
    public final void c(long j) {
        if (j >= 2147483639) {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        this.c = j > 0 ? new U2((int) j) : new U2();
    }

    @Override // j$.util.stream.AbstractC3045k2, j$.util.stream.InterfaceC3079r2
    public final void end() {
        double[] dArr = (double[]) this.c.b();
        Arrays.sort(dArr);
        long length = dArr.length;
        InterfaceC3079r2 interfaceC3079r2 = this.a;
        interfaceC3079r2.c(length);
        int i = 0;
        if (this.b) {
            int length2 = dArr.length;
            while (i < length2) {
                double d = dArr[i];
                if (interfaceC3079r2.e()) {
                    break;
                }
                interfaceC3079r2.accept(d);
                i++;
            }
        } else {
            int length3 = dArr.length;
            while (i < length3) {
                interfaceC3079r2.accept(dArr[i]);
                i++;
            }
        }
        interfaceC3079r2.end();
    }
}
