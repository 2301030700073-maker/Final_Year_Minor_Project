package kotlin.collections;

import coil3.UriKt$$ExternalSyntheticBUOutline0;
import java.util.Iterator;
import kotlin.jvm.internal.markers.KMappedMarker;
import kotlin.text.Regex$$ExternalSyntheticBUOutline0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class AbstractIterator implements Iterator, KMappedMarker {
    public Object nextValue;
    public int state;

    public abstract void computeNext();

    @Override // java.util.Iterator
    public final boolean hasNext() {
        int i = this.state;
        if (i == 0) {
            this.state = 3;
            computeNext();
            return this.state == 1;
        }
        if (i == 1) {
            return true;
        }
        if (i == 2) {
            return false;
        }
        UriKt$$ExternalSyntheticBUOutline0.m("hasNext called when the iterator is in the FAILED state.");
        return false;
    }

    @Override // java.util.Iterator
    public final Object next() {
        int i = this.state;
        if (i == 1) {
            this.state = 0;
            return this.nextValue;
        }
        if (i != 2) {
            this.state = 3;
            computeNext();
            if (this.state == 1) {
                this.state = 0;
                return this.nextValue;
            }
        }
        Regex$$ExternalSyntheticBUOutline0.m990m();
        return null;
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }
}
