package j$.util.stream;

import java.util.Arrays;
import java.util.Comparator;

/* loaded from: classes2.dex */
final class R2 extends F2 {
    private Object[] d;
    private int e;

    R2(InterfaceC3079r2 interfaceC3079r2, Comparator comparator) {
        super(interfaceC3079r2, comparator);
    }

    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        Object[] objArr = this.d;
        int i = this.e;
        this.e = i + 1;
        objArr[i] = obj;
    }

    @Override // j$.util.stream.AbstractC3060n2, j$.util.stream.InterfaceC3079r2
    public final void c(long j) {
        if (j >= 2147483639) {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        this.d = new Object[(int) j];
    }

    @Override // j$.util.stream.AbstractC3060n2, j$.util.stream.InterfaceC3079r2
    public final void end() {
        int i = 0;
        Arrays.sort(this.d, 0, this.e, this.b);
        long j = this.e;
        InterfaceC3079r2 interfaceC3079r2 = this.a;
        interfaceC3079r2.c(j);
        if (this.c) {
            while (i < this.e && !interfaceC3079r2.e()) {
                interfaceC3079r2.accept((InterfaceC3079r2) this.d[i]);
                i++;
            }
        } else {
            while (i < this.e) {
                interfaceC3079r2.accept((InterfaceC3079r2) this.d[i]);
                i++;
            }
        }
        interfaceC3079r2.end();
        this.d = null;
    }
}
