package j$.util.stream;

import java.util.Arrays;

/* loaded from: classes2.dex */
final class I2 extends E2 {
    private Y2 c;

    I2(InterfaceC3079r2 interfaceC3079r2) {
        super(interfaceC3079r2);
    }

    @Override // j$.util.stream.InterfaceC3075q2, java.util.function.LongConsumer
    public final void accept(long j) {
        this.c.accept(j);
    }

    @Override // j$.util.stream.InterfaceC3079r2
    public final void c(long j) {
        if (j >= 2147483639) {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        this.c = j > 0 ? new Y2((int) j) : new Y2();
    }

    @Override // j$.util.stream.AbstractC3055m2, j$.util.stream.InterfaceC3079r2
    public final void end() {
        long[] jArr = (long[]) this.c.b();
        Arrays.sort(jArr);
        long length = jArr.length;
        InterfaceC3079r2 interfaceC3079r2 = this.a;
        interfaceC3079r2.c(length);
        int i = 0;
        if (this.b) {
            int length2 = jArr.length;
            while (i < length2) {
                long j = jArr[i];
                if (interfaceC3079r2.e()) {
                    break;
                }
                interfaceC3079r2.accept(j);
                i++;
            }
        } else {
            int length3 = jArr.length;
            while (i < length3) {
                interfaceC3079r2.accept(jArr[i]);
                i++;
            }
        }
        interfaceC3079r2.end();
    }
}
