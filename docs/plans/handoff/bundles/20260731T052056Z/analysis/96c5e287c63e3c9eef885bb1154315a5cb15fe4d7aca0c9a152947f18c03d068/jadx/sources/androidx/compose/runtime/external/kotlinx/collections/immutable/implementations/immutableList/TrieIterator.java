package androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableList;

import kotlin.text.RegexKt;
import retrofit2.Utils$$ExternalSyntheticBUOutline0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class TrieIterator extends AbstractListIterator {
    public int height;
    public boolean isInRightEdge;
    public Object[] path;

    /* JADX WARN: Type inference failed for: r5v1 */
    /* JADX WARN: Type inference failed for: r5v2, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r5v3 */
    public TrieIterator(Object[] objArr, int i, int i2, int i3) {
        super(i, i2);
        this.height = i3;
        Object[] objArr2 = new Object[i3];
        this.path = objArr2;
        ?? r5 = i == i2 ? 1 : 0;
        this.isInRightEdge = r5;
        objArr2[0] = objArr;
        fillPath(i - r5, 1);
    }

    public final Object elementAtCurrentIndex() {
        int i = this.index & 31;
        Object obj = this.path[this.height - 1];
        obj.getClass();
        return ((Object[]) obj)[i];
    }

    public final void fillPath(int i, int i2) {
        int i3 = (this.height - i2) * 5;
        while (i2 < this.height) {
            Object[] objArr = this.path;
            Object obj = objArr[i2 - 1];
            obj.getClass();
            objArr[i2] = ((Object[]) obj)[RegexKt.indexSegment(i, i3)];
            i3 -= 5;
            i2++;
        }
    }

    public final void fillPathIfNeeded(int i) {
        int i2 = 0;
        while (RegexKt.indexSegment(this.index, i2) == i) {
            i2 += 5;
        }
        if (i2 > 0) {
            fillPath(this.index, ((this.height - 1) - (i2 / 5)) + 1);
        }
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public final Object next() {
        if (!hasNext()) {
            Utils$$ExternalSyntheticBUOutline0.m();
            return null;
        }
        Object elementAtCurrentIndex = elementAtCurrentIndex();
        int i = this.index + 1;
        this.index = i;
        if (i == this.size) {
            this.isInRightEdge = true;
            return elementAtCurrentIndex;
        }
        fillPathIfNeeded(0);
        return elementAtCurrentIndex;
    }

    @Override // java.util.ListIterator
    public final Object previous() {
        if (!hasPrevious()) {
            Utils$$ExternalSyntheticBUOutline0.m();
            return null;
        }
        this.index--;
        if (this.isInRightEdge) {
            this.isInRightEdge = false;
            return elementAtCurrentIndex();
        }
        fillPathIfNeeded(31);
        return elementAtCurrentIndex();
    }
}
