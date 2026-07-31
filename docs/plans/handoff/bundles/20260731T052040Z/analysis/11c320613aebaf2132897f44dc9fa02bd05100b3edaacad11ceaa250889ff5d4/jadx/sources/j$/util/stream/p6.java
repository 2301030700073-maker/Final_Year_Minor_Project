package j$.util.stream;

import java.util.Arrays;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes2.dex */
public final class p6 extends d6 {
    public Object[] d;
    public int e;

    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        Object[] objArr = this.d;
        int i = this.e;
        this.e = i + 1;
        objArr[i] = obj;
    }

    @Override // j$.util.stream.k5, j$.util.stream.o5
    public final void c(long j) {
        if (j < 2147483639) {
            this.d = new Object[(int) j];
        } else {
            j$.nio.file.m.c("Stream size exceeds max array size");
        }
    }

    @Override // j$.util.stream.k5, j$.util.stream.o5
    public final void end() {
        int i = 0;
        Arrays.sort(this.d, 0, this.e, this.b);
        long j = this.e;
        o5 o5Var = this.a;
        o5Var.c(j);
        if (this.c) {
            while (i < this.e && !o5Var.e()) {
                o5Var.accept((o5) this.d[i]);
                i++;
            }
        } else {
            while (i < this.e) {
                o5Var.accept((o5) this.d[i]);
                i++;
            }
        }
        o5Var.end();
        this.d = null;
    }
}
