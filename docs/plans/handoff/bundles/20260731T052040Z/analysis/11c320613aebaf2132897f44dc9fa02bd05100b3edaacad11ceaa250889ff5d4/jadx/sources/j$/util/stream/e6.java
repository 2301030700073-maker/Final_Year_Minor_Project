package j$.util.stream;

import java.util.Arrays;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes2.dex */
public final class e6 extends a6 {
    public s6 c;

    @Override // j$.util.stream.l5, j$.util.stream.o5
    public final void accept(double d) {
        this.c.accept(d);
    }

    @Override // j$.util.stream.h5, j$.util.stream.o5
    public final void c(long j) {
        if (j < 2147483639) {
            this.c = j > 0 ? new s6((int) j) : new s6();
        } else {
            j$.nio.file.m.c("Stream size exceeds max array size");
        }
    }

    @Override // j$.util.stream.h5, j$.util.stream.o5
    public final void end() {
        double[] dArr = (double[]) this.c.b();
        Arrays.sort(dArr);
        long length = dArr.length;
        o5 o5Var = this.a;
        o5Var.c(length);
        int i = 0;
        if (this.b) {
            int length2 = dArr.length;
            while (i < length2) {
                double d = dArr[i];
                if (o5Var.e()) {
                    break;
                }
                o5Var.accept(d);
                i++;
            }
        } else {
            int length3 = dArr.length;
            while (i < length3) {
                o5Var.accept(dArr[i]);
                i++;
            }
        }
        o5Var.end();
    }
}
