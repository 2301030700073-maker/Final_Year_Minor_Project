package j$.util.stream;

import java.util.Arrays;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes2.dex */
public final class m6 extends a6 {
    public double[] c;
    public int d;

    @Override // j$.util.stream.l5, j$.util.stream.o5
    public final void accept(double d) {
        double[] dArr = this.c;
        int i = this.d;
        this.d = i + 1;
        dArr[i] = d;
    }

    @Override // j$.util.stream.h5, j$.util.stream.o5
    public final void c(long j) {
        if (j < 2147483639) {
            this.c = new double[(int) j];
        } else {
            j$.nio.file.m.c("Stream size exceeds max array size");
        }
    }

    @Override // j$.util.stream.h5, j$.util.stream.o5
    public final void end() {
        int i = 0;
        Arrays.sort(this.c, 0, this.d);
        long j = this.d;
        o5 o5Var = this.a;
        o5Var.c(j);
        if (this.b) {
            while (i < this.d && !o5Var.e()) {
                o5Var.accept(this.c[i]);
                i++;
            }
        } else {
            while (i < this.d) {
                o5Var.accept(this.c[i]);
                i++;
            }
        }
        o5Var.end();
        this.c = null;
    }
}
