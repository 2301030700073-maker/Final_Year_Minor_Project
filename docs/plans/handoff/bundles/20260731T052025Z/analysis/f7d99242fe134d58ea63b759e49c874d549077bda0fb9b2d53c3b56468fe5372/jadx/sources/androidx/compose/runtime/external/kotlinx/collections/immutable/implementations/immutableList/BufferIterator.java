package androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableList;

import kotlin.text.Regex$$ExternalSyntheticBUOutline0;
import kotlinx.collections.immutable.implementations.immutableList.AbstractListIterator;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class BufferIterator extends AbstractListIterator {
    public final /* synthetic */ int $r8$classId = 1;
    public final Object buffer;

    public BufferIterator(Object[] objArr, int i, int i2) {
        super(i, i2, 1);
        this.buffer = objArr;
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public final Object next() {
        int i = this.$r8$classId;
        Object obj = this.buffer;
        switch (i) {
            case 0:
                if (!hasNext()) {
                    Regex$$ExternalSyntheticBUOutline0.m990m();
                    break;
                } else {
                    int i2 = this.index;
                    this.index = i2 + 1;
                    break;
                }
            default:
                if (!hasNext()) {
                    Regex$$ExternalSyntheticBUOutline0.m990m();
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
                    Regex$$ExternalSyntheticBUOutline0.m990m();
                    break;
                } else {
                    int i2 = this.index - 1;
                    this.index = i2;
                    break;
                }
            default:
                if (!hasPrevious()) {
                    Regex$$ExternalSyntheticBUOutline0.m990m();
                    break;
                } else {
                    this.index--;
                    break;
                }
        }
        return null;
    }

    public BufferIterator(int i, Object obj) {
        super(i, 1, 1);
        this.buffer = obj;
    }
}
