package j$.util.stream;

import java.util.Arrays;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes2.dex */
public final class g6 extends c6 {
    public w6 c;

    @Override // j$.util.stream.n5, j$.util.stream.o5
    public final void accept(long j) {
        this.c.accept(j);
    }

    @Override // j$.util.stream.j5, j$.util.stream.o5
    public final void c(long j) {
        if (j < 2147483639) {
            this.c = j > 0 ? new w6((int) j) : new w6();
        } else {
            j$.nio.file.m.c("Stream size exceeds max array size");
        }
    }

    @Override // j$.util.stream.j5, j$.util.stream.o5
    public final void end() {
        long[] jArr = (long[]) this.c.b();
        Arrays.sort(jArr);
        long length = jArr.length;
        o5 o5Var = this.a;
        o5Var.c(length);
        int i = 0;
        if (this.b) {
            int length2 = jArr.length;
            while (i < length2) {
                long j = jArr[i];
                if (o5Var.e()) {
                    break;
                }
                o5Var.accept(j);
                i++;
            }
        } else {
            int length3 = jArr.length;
            while (i < length3) {
                o5Var.accept(jArr[i]);
                i++;
            }
        }
        o5Var.end();
    }
}
