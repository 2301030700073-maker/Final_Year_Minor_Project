package kotlin.sequences;

import androidx.collection.MutableOrderedSetWrapper;
import androidx.collection.MutableOrderedSetWrapper$iterator$1$iterator$1;
import androidx.collection.MutableSetWrapper;
import androidx.collection.MutableSetWrapper$iterator$1$iterator$1;
import androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.persistentOrderedSet.Links;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.Map;
import kotlin.UnsignedKt;
import kotlin.io.FileTreeWalk;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.markers.KMappedMarker;
import retrofit2.Utils$$ExternalSyntheticBUOutline0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class SubSequence$iterator$1 implements Iterator, KMappedMarker {
    public final /* synthetic */ int $r8$classId;
    public Object iterator;
    public int position;
    public final Object this$0;

    public SubSequence$iterator$1(MutableSetWrapper mutableSetWrapper) {
        this.$r8$classId = 2;
        this.this$0 = mutableSetWrapper;
        this.position = -1;
        this.iterator = UnsignedKt.iterator(new MutableSetWrapper$iterator$1$iterator$1(mutableSetWrapper, this, null));
    }

    public void calcNext$1() {
        Object invoke;
        int i = this.position;
        FileTreeWalk fileTreeWalk = (FileTreeWalk) this.this$0;
        if (i == -2) {
            invoke = ((Function0) fileTreeWalk.start).invoke();
        } else {
            Function1 function1 = (Function1) fileTreeWalk.direction;
            Object obj = this.iterator;
            obj.getClass();
            invoke = function1.invoke(obj);
        }
        this.iterator = invoke;
        this.position = invoke == null ? 0 : 1;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        int i = this.$r8$classId;
        Object obj = this.this$0;
        switch (i) {
            case 0:
                SubSequence subSequence = (SubSequence) obj;
                Iterator it = (Iterator) this.iterator;
                while (this.position < subSequence.startIndex && it.hasNext()) {
                    it.next();
                    this.position++;
                }
                if (this.position < subSequence.endIndex && it.hasNext()) {
                    break;
                }
                break;
            case 1:
                break;
            case 2:
                break;
            case 3:
                if (this.position < ((Map) obj).size()) {
                    break;
                }
                break;
            default:
                if (this.position < 0) {
                    calcNext$1();
                }
                if (this.position == 1) {
                    break;
                }
                break;
        }
        return true;
    }

    @Override // java.util.Iterator
    public final Object next() {
        int i = this.$r8$classId;
        Object obj = this.this$0;
        Object obj2 = null;
        switch (i) {
            case 0:
                SubSequence subSequence = (SubSequence) obj;
                Iterator it = (Iterator) this.iterator;
                while (this.position < subSequence.startIndex && it.hasNext()) {
                    it.next();
                    this.position++;
                }
                int i2 = this.position;
                if (i2 < subSequence.endIndex) {
                    this.position = i2 + 1;
                    return it.next();
                }
                Utils$$ExternalSyntheticBUOutline0.m();
                return null;
            case 1:
                return ((SequenceBuilderIterator) this.iterator).next();
            case 2:
                return ((SequenceBuilderIterator) this.iterator).next();
            case 3:
                if (hasNext()) {
                    obj2 = this.iterator;
                    this.position++;
                    Object obj3 = ((Map) obj).get(obj2);
                    if (obj3 == null) {
                        throw new ConcurrentModificationException("Hash code of an element (" + obj2 + ") has changed after it was added to the persistent set.");
                    }
                    this.iterator = ((Links) obj3).next;
                } else {
                    Utils$$ExternalSyntheticBUOutline0.m();
                }
                return obj2;
            default:
                if (this.position < 0) {
                    calcNext$1();
                }
                if (this.position == 0) {
                    Utils$$ExternalSyntheticBUOutline0.m();
                    return null;
                }
                Object obj4 = this.iterator;
                obj4.getClass();
                this.position = -1;
                return obj4;
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
            case 3:
                throw new UnsupportedOperationException("Operation is not supported for read-only collection");
            default:
                throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }
    }

    public SubSequence$iterator$1(SubSequence subSequence) {
        this.$r8$classId = 0;
        this.this$0 = subSequence;
        this.iterator = subSequence.sequence.iterator();
    }

    public SubSequence$iterator$1(FileTreeWalk fileTreeWalk) {
        this.$r8$classId = 4;
        this.this$0 = fileTreeWalk;
        this.position = -2;
    }

    public SubSequence$iterator$1(Object obj, Map map) {
        this.$r8$classId = 3;
        this.iterator = obj;
        this.this$0 = map;
    }

    public SubSequence$iterator$1(MutableOrderedSetWrapper mutableOrderedSetWrapper) {
        this.$r8$classId = 1;
        this.this$0 = mutableOrderedSetWrapper;
        this.position = -1;
        this.iterator = UnsignedKt.iterator(new MutableOrderedSetWrapper$iterator$1$iterator$1(mutableOrderedSetWrapper, this, null));
    }
}
