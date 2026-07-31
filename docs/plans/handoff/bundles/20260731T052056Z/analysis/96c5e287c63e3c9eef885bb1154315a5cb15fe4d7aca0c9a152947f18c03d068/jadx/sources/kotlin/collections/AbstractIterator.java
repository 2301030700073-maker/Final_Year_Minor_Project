package kotlin.collections;

import java.util.Iterator;
import kotlin.jvm.internal.markers.KMappedMarker;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import retrofit2.Utils$$ExternalSyntheticBUOutline0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
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
        _UtilJvmKt$$ExternalSyntheticLambda0.m("hasNext called when the iterator is in the FAILED state.");
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
        Utils$$ExternalSyntheticBUOutline0.m();
        return null;
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }
}
