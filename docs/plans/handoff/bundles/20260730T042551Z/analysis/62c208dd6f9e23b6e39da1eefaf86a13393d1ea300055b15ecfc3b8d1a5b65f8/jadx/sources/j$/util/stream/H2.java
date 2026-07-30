package j$.util.stream;

import java.util.Arrays;

/* loaded from: classes2.dex */
final class H2 extends D2 {
    private W2 c;

    H2(InterfaceC3079r2 interfaceC3079r2) {
        super(interfaceC3079r2);
    }

    @Override // j$.util.stream.InterfaceC3070p2, j$.util.stream.InterfaceC3079r2
    public final void accept(int i) {
        this.c.accept(i);
    }

    @Override // j$.util.stream.InterfaceC3079r2
    public final void c(long j) {
        if (j >= 2147483639) {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        this.c = j > 0 ? new W2((int) j) : new W2();
    }

    @Override // j$.util.stream.AbstractC3050l2, j$.util.stream.InterfaceC3079r2
    public final void end() {
        int[] iArr = (int[]) this.c.b();
        Arrays.sort(iArr);
        long length = iArr.length;
        InterfaceC3079r2 interfaceC3079r2 = this.a;
        interfaceC3079r2.c(length);
        int i = 0;
        if (this.b) {
            int length2 = iArr.length;
            while (i < length2) {
                int i2 = iArr[i];
                if (interfaceC3079r2.e()) {
                    break;
                }
                interfaceC3079r2.accept(i2);
                i++;
            }
        } else {
            int length3 = iArr.length;
            while (i < length3) {
                interfaceC3079r2.accept(iArr[i]);
                i++;
            }
        }
        interfaceC3079r2.end();
    }
}
