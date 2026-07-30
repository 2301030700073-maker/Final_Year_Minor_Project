package j$.util.stream;

import j$.util.Objects;
import j$.util.Spliterator;
import j$.util.Spliterators;
import j$.util.function.Consumer$CC;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.function.Consumer;

/* renamed from: j$.util.stream.b3, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
class C3001b3 extends AbstractC3012e implements Consumer, Iterable, j$.lang.a {
    protected Object[] e = new Object[1 << 4];
    protected Object[][] f;

    C3001b3() {
    }

    @Override // java.util.function.Consumer
    public void accept(Object obj) {
        long length;
        int i = this.b;
        Object[] objArr = this.e;
        if (i == objArr.length) {
            if (this.f == null) {
                Object[][] objArr2 = new Object[8][];
                this.f = objArr2;
                this.d = new long[8];
                objArr2[0] = objArr;
            }
            int i2 = this.c;
            int i3 = i2 + 1;
            Object[][] objArr3 = this.f;
            if (i3 >= objArr3.length || objArr3[i3] == null) {
                if (i2 == 0) {
                    length = objArr.length;
                } else {
                    length = objArr3[i2].length + this.d[i2];
                }
                o(length + 1);
            }
            this.b = 0;
            int i4 = this.c + 1;
            this.c = i4;
            this.e = this.f[i4];
        }
        Object[] objArr4 = this.e;
        int i5 = this.b;
        this.b = i5 + 1;
        objArr4[i5] = obj;
    }

    @Override // java.util.function.Consumer
    public final /* synthetic */ Consumer andThen(Consumer consumer) {
        return Consumer$CC.$default$andThen(this, consumer);
    }

    @Override // j$.util.stream.AbstractC3012e
    public final void clear() {
        Object[][] objArr = this.f;
        if (objArr != null) {
            this.e = objArr[0];
            int i = 0;
            while (true) {
                Object[] objArr2 = this.e;
                if (i >= objArr2.length) {
                    break;
                }
                objArr2[i] = null;
                i++;
            }
            this.f = null;
            this.d = null;
        } else {
            for (int i2 = 0; i2 < this.b; i2++) {
                this.e[i2] = null;
            }
        }
        this.b = 0;
        this.c = 0;
    }

    @Override // java.lang.Iterable, j$.lang.a
    public void forEach(Consumer consumer) {
        for (int i = 0; i < this.c; i++) {
            for (Object obj : this.f[i]) {
                consumer.accept(obj);
            }
        }
        for (int i2 = 0; i2 < this.b; i2++) {
            consumer.accept(this.e[i2]);
        }
    }

    @Override // java.lang.Iterable
    public final Iterator iterator() {
        return Spliterators.i(spliterator());
    }

    protected final void o(long j) {
        long length;
        int i = this.c;
        if (i == 0) {
            length = this.e.length;
        } else {
            length = this.f[i].length + this.d[i];
        }
        if (j <= length) {
            return;
        }
        if (this.f == null) {
            Object[][] objArr = new Object[8][];
            this.f = objArr;
            this.d = new long[8];
            objArr[0] = this.e;
        }
        while (true) {
            i++;
            if (j <= length) {
                return;
            }
            Object[][] objArr2 = this.f;
            if (i >= objArr2.length) {
                int length2 = objArr2.length * 2;
                this.f = (Object[][]) Arrays.copyOf(objArr2, length2);
                this.d = Arrays.copyOf(this.d, length2);
            }
            int i2 = this.a;
            if (i != 0 && i != 1) {
                i2 = Math.min((i2 + i) - 1, 30);
            }
            int i3 = 1 << i2;
            this.f[i] = new Object[i3];
            long[] jArr = this.d;
            jArr[i] = jArr[i - 1] + r4[r6].length;
            length += i3;
        }
    }

    @Override // java.lang.Iterable
    public Spliterator spliterator() {
        return new S2(this, 0, this.c, 0, this.b);
    }

    @Override // java.lang.Iterable
    public final /* synthetic */ java.util.Spliterator spliterator() {
        return Spliterator.Wrapper.convert(spliterator());
    }

    public final String toString() {
        ArrayList arrayList = new ArrayList();
        Objects.requireNonNull(arrayList);
        forEach(new C2992a(10, arrayList));
        return "SpinedBuffer:" + arrayList.toString();
    }
}
