package androidx.collection;

import com.google.common.collect.CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0;
import java.util.Arrays;
import kotlin.collections.ArraysKt;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class MutableIntList extends IntList {
    public MutableIntList(int i) {
        this.content = i == 0 ? IntSetKt.EmptyIntArray : new int[i];
    }

    public final void add(int i) {
        int i2 = this._size + 1;
        int[] iArr = this.content;
        if (iArr.length < i2) {
            this.content = Arrays.copyOf(iArr, Math.max(i2, (iArr.length * 3) / 2));
        }
        int[] iArr2 = this.content;
        int i3 = this._size;
        iArr2[i3] = i;
        this._size = i3 + 1;
    }

    public final void removeAt(int i) {
        int i2;
        if (i < 0 || i >= (i2 = this._size)) {
            CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0.m("Index must be between 0 and size");
            return;
        }
        int[] iArr = this.content;
        int i3 = iArr[i];
        if (i != i2 - 1) {
            ArraysKt.copyInto(i, i + 1, i2, iArr, iArr);
        }
        this._size--;
    }

    public final void set(int i, int i2) {
        if (i < 0 || i >= this._size) {
            CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0.m("Index must be between 0 and size");
            return;
        }
        int[] iArr = this.content;
        int i3 = iArr[i];
        iArr[i] = i2;
    }

    public /* synthetic */ MutableIntList() {
        this(16);
    }
}
