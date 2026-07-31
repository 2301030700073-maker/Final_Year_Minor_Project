package kotlinx.collections.immutable.implementations.immutableList;

import kotlin.text.Regex$$ExternalSyntheticBUOutline0;
import okio.Options;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class TrieIterator extends AbstractListIterator {
    public int height;
    public boolean isInRightEdge;
    public Object[] path;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Type inference failed for: r5v1 */
    /* JADX WARN: Type inference failed for: r5v2, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r5v3 */
    public TrieIterator(Object[] objArr, int i, int i2, int i3) {
        super(i, i2, 0);
        objArr.getClass();
        this.height = i3;
        Object[] objArr2 = new Object[i3];
        this.path = objArr2;
        ?? r5 = i == i2 ? 1 : 0;
        this.isInRightEdge = r5;
        objArr2[0] = objArr;
        fillPath$1(i - r5, 1);
    }

    public final Object elementAtCurrentIndex$1() {
        int i = this.index & 31;
        Object obj = this.path[this.height - 1];
        obj.getClass();
        return ((Object[]) obj)[i];
    }

    public final void fillPath$1(int i, int i2) {
        int i3 = (this.height - i2) * 5;
        while (i2 < this.height) {
            Object[] objArr = this.path;
            Object obj = objArr[i2 - 1];
            obj.getClass();
            objArr[i2] = ((Object[]) obj)[Options.Companion.indexSegment(i, i3)];
            i3 -= 5;
            i2++;
        }
    }

    public final void fillPathIfNeeded$1(int i) {
        int i2 = 0;
        while (Options.Companion.indexSegment(this.index, i2) == i) {
            i2 += 5;
        }
        if (i2 > 0) {
            fillPath$1(this.index, ((this.height - 1) - (i2 / 5)) + 1);
        }
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public final Object next() {
        if (!hasNext()) {
            Regex$$ExternalSyntheticBUOutline0.m990m();
            return null;
        }
        Object elementAtCurrentIndex$1 = elementAtCurrentIndex$1();
        int i = this.index + 1;
        this.index = i;
        if (i == this.size) {
            this.isInRightEdge = true;
            return elementAtCurrentIndex$1;
        }
        fillPathIfNeeded$1(0);
        return elementAtCurrentIndex$1;
    }

    @Override // java.util.ListIterator
    public final Object previous() {
        if (!hasPrevious()) {
            Regex$$ExternalSyntheticBUOutline0.m990m();
            return null;
        }
        this.index--;
        if (this.isInRightEdge) {
            this.isInRightEdge = false;
            return elementAtCurrentIndex$1();
        }
        fillPathIfNeeded$1(31);
        return elementAtCurrentIndex$1();
    }
}
