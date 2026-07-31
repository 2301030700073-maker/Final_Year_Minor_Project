package androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableList;

import com.google.common.collect.CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
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
                    CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0.m();
                    break;
                } else {
                    int i2 = this.index;
                    this.index = i2 + 1;
                    break;
                }
            default:
                if (!hasNext()) {
                    CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0.m();
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
                    CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0.m();
                    break;
                } else {
                    int i2 = this.index - 1;
                    this.index = i2;
                    break;
                }
            default:
                if (!hasPrevious()) {
                    CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0.m();
                    break;
                } else {
                    this.index--;
                    break;
                }
        }
        return null;
    }

    public BufferIterator(Object obj, int i) {
        super(i, 1);
        this.buffer = obj;
    }
}
