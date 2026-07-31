package j$.util.stream;

import java.util.Arrays;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes2.dex */
public final class a6 extends w5 {
    public o6 c;

    @Override // j$.util.stream.i5, j$.util.stream.l5
    public final void accept(double d) {
        this.c.accept(d);
    }

    @Override // j$.util.stream.e5, j$.util.stream.l5
    public final void c(long j) {
        if (j < 2147483639) {
            this.c = j > 0 ? new o6((int) j) : new o6();
        } else {
            j$.nio.file.j.c("Stream size exceeds max array size");
        }
    }

    @Override // j$.util.stream.e5, j$.util.stream.l5
    public final void end() {
        double[] dArr = (double[]) this.c.b();
        Arrays.sort(dArr);
        long length = dArr.length;
        l5 l5Var = this.a;
        l5Var.c(length);
        int i = 0;
        if (this.b) {
            int length2 = dArr.length;
            while (i < length2) {
                double d = dArr[i];
                if (l5Var.e()) {
                    break;
                }
                l5Var.accept(d);
                i++;
            }
        } else {
            int length3 = dArr.length;
            while (i < length3) {
                l5Var.accept(dArr[i]);
                i++;
            }
        }
        l5Var.end();
    }
}
