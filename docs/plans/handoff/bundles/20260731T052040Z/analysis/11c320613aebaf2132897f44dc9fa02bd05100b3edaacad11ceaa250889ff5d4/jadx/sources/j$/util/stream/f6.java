package j$.util.stream;

import java.util.Arrays;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes2.dex */
public final class f6 extends b6 {
    public u6 c;

    @Override // j$.util.stream.m5, j$.util.stream.o5
    public final void accept(int i) {
        this.c.accept(i);
    }

    @Override // j$.util.stream.i5, j$.util.stream.o5
    public final void c(long j) {
        if (j < 2147483639) {
            this.c = j > 0 ? new u6((int) j) : new u6();
        } else {
            j$.nio.file.m.c("Stream size exceeds max array size");
        }
    }

    @Override // j$.util.stream.i5, j$.util.stream.o5
    public final void end() {
        int[] iArr = (int[]) this.c.b();
        Arrays.sort(iArr);
        long length = iArr.length;
        o5 o5Var = this.a;
        o5Var.c(length);
        int i = 0;
        if (this.b) {
            int length2 = iArr.length;
            while (i < length2) {
                int i2 = iArr[i];
                if (o5Var.e()) {
                    break;
                }
                o5Var.accept(i2);
                i++;
            }
        } else {
            int length3 = iArr.length;
            while (i < length3) {
                o5Var.accept(iArr[i]);
                i++;
            }
        }
        o5Var.end();
    }
}
