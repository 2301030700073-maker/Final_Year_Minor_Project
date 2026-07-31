package kotlin.collections;

import androidx.camera.camera2.pipe.CameraDevices$CC;
import androidx.compose.ui.Modifier;
import java.util.Arrays;
import java.util.Iterator;
import java.util.RandomAccess;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class RingBuffer extends AbstractList implements RandomAccess {
    public final Object[] buffer;
    public final int capacity;
    public int size;
    public int startIndex;

    public RingBuffer(int i, Object[] objArr) {
        this.buffer = objArr;
        if (i < 0) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$2((Object) CameraDevices$CC.m("ring buffer filled size should not be negative but it is ", i));
            throw null;
        }
        if (i <= objArr.length) {
            this.capacity = objArr.length;
            this.size = i;
        } else {
            StringBuilder m30m = CameraDevices$CC.m30m(i, "ring buffer filled size: ", " cannot be larger than the buffer size: ");
            m30m.append(objArr.length);
            throw new IllegalArgumentException(m30m.toString().toString());
        }
    }

    @Override // java.util.List
    public final Object get(int i) {
        int i2 = this.size;
        if (i < 0 || i >= i2) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$1(Modifier.CC.m(i, i2, "index: ", ", size: "));
            return null;
        }
        return this.buffer[(this.startIndex + i) % this.capacity];
    }

    @Override // kotlin.collections.AbstractCollection
    public final int getSize() {
        return this.size;
    }

    @Override // kotlin.collections.AbstractList, java.util.Collection, java.lang.Iterable, java.util.List
    public final Iterator iterator() {
        return new AbstractIterator() { // from class: kotlin.collections.RingBuffer$iterator$1
            public int count;
            public int index;

            {
                this.count = RingBuffer.this.size;
                this.index = RingBuffer.this.startIndex;
            }

            @Override // kotlin.collections.AbstractIterator
            public final void computeNext() {
                int i = this.count;
                if (i == 0) {
                    this.state = 2;
                    return;
                }
                RingBuffer ringBuffer = RingBuffer.this;
                Object[] objArr = ringBuffer.buffer;
                int i2 = this.index;
                this.nextValue = objArr[i2];
                this.state = 1;
                this.index = (i2 + 1) % ringBuffer.capacity;
                this.count = i - 1;
            }
        };
    }

    public final void removeFirst() {
        if (500 > this.size) {
            throw new IllegalArgumentException(("n shouldn't be greater than the buffer size: n = 500, size = " + this.size).toString());
        }
        int i = this.startIndex;
        int i2 = this.capacity;
        int i3 = (i + 500) % i2;
        Object[] objArr = this.buffer;
        if (i > i3) {
            Arrays.fill(objArr, i, i2, (Object) null);
            Arrays.fill(objArr, 0, i3, (Object) null);
        } else {
            Arrays.fill(objArr, i, i3, (Object) null);
        }
        this.startIndex = i3;
        this.size -= 500;
    }

    @Override // kotlin.collections.AbstractCollection, java.util.Collection
    public final Object[] toArray(Object[] objArr) {
        Object[] objArr2;
        objArr.getClass();
        int length = objArr.length;
        int i = this.size;
        if (length < i) {
            objArr = Arrays.copyOf(objArr, i);
        }
        int i2 = this.size;
        int i3 = this.startIndex;
        int i4 = 0;
        int i5 = 0;
        while (true) {
            objArr2 = this.buffer;
            if (i5 >= i2 || i3 >= this.capacity) {
                break;
            }
            objArr[i5] = objArr2[i3];
            i5++;
            i3++;
        }
        while (i5 < i2) {
            objArr[i5] = objArr2[i4];
            i5++;
            i4++;
        }
        if (i2 < objArr.length) {
            objArr[i2] = null;
        }
        return objArr;
    }

    @Override // kotlin.collections.AbstractCollection, java.util.Collection
    public final Object[] toArray() {
        return toArray(new Object[getSize()]);
    }
}
