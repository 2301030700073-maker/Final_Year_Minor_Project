package kotlin.sequences;

import androidx.collection.MutableOrderedSetWrapper;
import androidx.collection.MutableOrderedSetWrapper$iterator$1$iterator$1;
import androidx.collection.MutableSetWrapper;
import androidx.collection.MutableSetWrapper$iterator$1$iterator$1;
import java.util.Iterator;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.markers.KMappedMarker;
import kotlin.text.Regex$$ExternalSyntheticBUOutline0;
import org.minidns.util.Base64;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class SubSequence$iterator$1 implements Iterator, KMappedMarker {
    public final /* synthetic */ int $r8$classId;
    public Object iterator;
    public int position;
    public final /* synthetic */ Object this$0;

    public SubSequence$iterator$1(MutableSetWrapper mutableSetWrapper) {
        this.$r8$classId = 2;
        this.this$0 = mutableSetWrapper;
        this.position = -1;
        this.iterator = Base64.iterator(new MutableSetWrapper$iterator$1$iterator$1(mutableSetWrapper, this, null));
    }

    public void calcNext$1() {
        Object invoke;
        int i = this.position;
        DistinctSequence distinctSequence = (DistinctSequence) this.this$0;
        if (i == -2) {
            invoke = ((Function0) distinctSequence.source).invoke();
        } else {
            Function1 function1 = distinctSequence.keySelector;
            Object obj = this.iterator;
            obj.getClass();
            invoke = function1.invoke(obj);
        }
        this.iterator = invoke;
        this.position = invoke == null ? 0 : 1;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        switch (this.$r8$classId) {
            case 0:
                SubSequence subSequence = (SubSequence) this.this$0;
                Iterator it = (Iterator) this.iterator;
                while (this.position < subSequence.startIndex && it.hasNext()) {
                    it.next();
                    this.position++;
                }
                return this.position < subSequence.endIndex && it.hasNext();
            case 1:
                return ((SequenceBuilderIterator) this.iterator).hasNext();
            case 2:
                return ((SequenceBuilderIterator) this.iterator).hasNext();
            default:
                if (this.position < 0) {
                    calcNext$1();
                }
                return this.position == 1;
        }
    }

    @Override // java.util.Iterator
    public final Object next() {
        switch (this.$r8$classId) {
            case 0:
                SubSequence subSequence = (SubSequence) this.this$0;
                Iterator it = (Iterator) this.iterator;
                while (this.position < subSequence.startIndex && it.hasNext()) {
                    it.next();
                    this.position++;
                }
                int i = this.position;
                if (i < subSequence.endIndex) {
                    this.position = i + 1;
                    return it.next();
                }
                Regex$$ExternalSyntheticBUOutline0.m990m();
                return null;
            case 1:
                return ((SequenceBuilderIterator) this.iterator).next();
            case 2:
                return ((SequenceBuilderIterator) this.iterator).next();
            default:
                if (this.position < 0) {
                    calcNext$1();
                }
                if (this.position == 0) {
                    Regex$$ExternalSyntheticBUOutline0.m990m();
                    return null;
                }
                Object obj = this.iterator;
                obj.getClass();
                this.position = -1;
                return obj;
        }
    }

    @Override // java.util.Iterator
    public final void remove() {
        int i = this.$r8$classId;
        Object obj = this.this$0;
        switch (i) {
            case 0:
                throw new UnsupportedOperationException("Operation is not supported for read-only collection");
            case 1:
                int i2 = this.position;
                if (i2 != -1) {
                    ((MutableOrderedSetWrapper) obj).parent.removeElementAt(i2);
                    this.position = -1;
                    return;
                }
                return;
            case 2:
                int i3 = this.position;
                if (i3 != -1) {
                    ((MutableSetWrapper) obj).parent.removeElementAt(i3);
                    this.position = -1;
                    return;
                }
                return;
            default:
                throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }
    }

    public SubSequence$iterator$1(DistinctSequence distinctSequence) {
        this.$r8$classId = 3;
        this.this$0 = distinctSequence;
        this.position = -2;
    }

    public SubSequence$iterator$1(SubSequence subSequence) {
        this.$r8$classId = 0;
        this.this$0 = subSequence;
        this.iterator = subSequence.sequence.iterator();
    }

    public SubSequence$iterator$1(MutableOrderedSetWrapper mutableOrderedSetWrapper) {
        this.$r8$classId = 1;
        this.this$0 = mutableOrderedSetWrapper;
        this.position = -1;
        this.iterator = Base64.iterator(new MutableOrderedSetWrapper$iterator$1$iterator$1(mutableOrderedSetWrapper, this, null));
    }
}
