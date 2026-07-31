package androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableList;

import retrofit2.Utils$$ExternalSyntheticBUOutline0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class BufferIterator extends AbstractListIterator {
    public final /* synthetic */ int $r8$classId = 1;
    public final Object buffer;

    public BufferIterator(Object[] objArr, int i, int i2) {
        super(i, i2);
        this.buffer = objArr;
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public final Object next() {
        int i = this.$r8$classId;
        Object obj = this.buffer;
        switch (i) {
            case 0:
                if (!hasNext()) {
                    Utils$$ExternalSyntheticBUOutline0.m();
                    break;
                } else {
                    int i2 = this.index;
                    this.index = i2 + 1;
                    break;
                }
            default:
                if (!hasNext()) {
                    Utils$$ExternalSyntheticBUOutline0.m();
                    break;
                } else {
                    this.index++;
                    break;
                }
        }
        return null;
    }

    @Override // java.util.ListIterator
    public final Object previous() {
        int i = this.$r8$classId;
        Object obj = this.buffer;
        switch (i) {
            case 0:
                if (!hasPrevious()) {
                    Utils$$ExternalSyntheticBUOutline0.m();
                    break;
                } else {
                    int i2 = this.index - 1;
                    this.index = i2;
                    break;
                }
            default:
                if (!hasPrevious()) {
                    Utils$$ExternalSyntheticBUOutline0.m();
                    break;
                } else {
                    this.index--;
                    break;
                }
        }
        return null;
    }

    public BufferIterator(int i, Object obj) {
        super(i, 1);
        this.buffer = obj;
    }
}
