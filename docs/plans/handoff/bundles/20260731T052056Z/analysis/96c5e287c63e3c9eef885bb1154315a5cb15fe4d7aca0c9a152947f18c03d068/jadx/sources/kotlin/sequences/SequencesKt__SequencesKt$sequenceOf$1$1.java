package kotlin.sequences;

import java.util.Iterator;
import kotlin.jvm.internal.markers.KMappedMarker;
import retrofit2.Utils$$ExternalSyntheticBUOutline0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class SequencesKt__SequencesKt$sequenceOf$1$1 implements Iterator, KMappedMarker {
    public final Object $element;
    public final /* synthetic */ int $r8$classId;
    public boolean _hasNext = true;

    public /* synthetic */ SequencesKt__SequencesKt$sequenceOf$1$1(int i, Object obj) {
        this.$r8$classId = i;
        this.$element = obj;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        switch (this.$r8$classId) {
        }
        return this._hasNext;
    }

    @Override // java.util.Iterator
    public final Object next() {
        int i = this.$r8$classId;
        Object obj = this.$element;
        switch (i) {
            case 0:
                if (!this._hasNext) {
                    Utils$$ExternalSyntheticBUOutline0.m();
                    break;
                } else {
                    this._hasNext = false;
                    break;
                }
            case 1:
                if (!this._hasNext) {
                    Utils$$ExternalSyntheticBUOutline0.m();
                    break;
                } else {
                    this._hasNext = false;
                    break;
                }
            default:
                if (!this._hasNext) {
                    Utils$$ExternalSyntheticBUOutline0.m();
                    break;
                } else {
                    this._hasNext = false;
                    break;
                }
        }
        return null;
    }

    @Override // java.util.Iterator
    public final void remove() {
        switch (this.$r8$classId) {
            case 0:
                throw new UnsupportedOperationException("Operation is not supported for read-only collection");
            case 1:
                throw new UnsupportedOperationException();
            default:
                throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }
    }
}
