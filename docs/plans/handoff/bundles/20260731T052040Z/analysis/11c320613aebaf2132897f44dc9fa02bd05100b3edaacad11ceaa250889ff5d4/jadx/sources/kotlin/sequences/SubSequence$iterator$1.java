package kotlin.sequences;

import androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.persistentOrderedSet.Links;
import com.google.common.collect.CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.Map;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.markers.KMappedMarker;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class SubSequence$iterator$1 implements Iterator, KMappedMarker {
    public final /* synthetic */ int $r8$classId;
    public Object iterator;
    public int position;
    public final Object this$0;

    public SubSequence$iterator$1(SubSequence subSequence) {
        this.$r8$classId = 0;
        this.this$0 = subSequence;
        this.iterator = subSequence.sequence.iterator();
    }

    public void calcNext$1() {
        Object invoke;
        int i = this.position;
        MergingSequence mergingSequence = (MergingSequence) this.this$0;
        if (i == -2) {
            invoke = ((Function0) mergingSequence.sequence1).invoke();
        } else {
            Function1 function1 = (Function1) mergingSequence.sequence2;
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
                CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0.m();
                return null;
            case 1:
                if (hasNext()) {
                    obj2 = this.iterator;
                    this.position++;
                    Object obj3 = ((Map) obj).get(obj2);
                    if (obj3 == null) {
                        throw new ConcurrentModificationException("Hash code of an element (" + obj2 + ") has changed after it was added to the persistent set.");
                    }
                    this.iterator = ((Links) obj3).next;
                } else {
                    CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0.m();
                }
                return obj2;
            default:
                if (this.position < 0) {
                    calcNext$1();
                }
                if (this.position == 0) {
                    CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0.m();
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
        switch (this.$r8$classId) {
            case 0:
                throw new UnsupportedOperationException("Operation is not supported for read-only collection");
            case 1:
                throw new UnsupportedOperationException("Operation is not supported for read-only collection");
            default:
                throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }
    }

    public SubSequence$iterator$1(Object obj, Map map) {
        this.$r8$classId = 1;
        this.iterator = obj;
        this.this$0 = map;
    }

    public SubSequence$iterator$1(MergingSequence mergingSequence) {
        this.$r8$classId = 2;
        this.this$0 = mergingSequence;
        this.position = -2;
    }
}
