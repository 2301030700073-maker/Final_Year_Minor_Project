package kotlin.sequences;

import java.util.Iterator;
import kotlin.io.FileTreeWalk;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.markers.KMappedMarker;
import retrofit2.Utils$$ExternalSyntheticBUOutline0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class FilteringSequence$iterator$1 implements Iterator, KMappedMarker {
    public final /* synthetic */ int $r8$classId;
    public final Iterator iterator;
    public Object nextItem;
    public int nextState;
    public final /* synthetic */ Sequence this$0;

    public FilteringSequence$iterator$1(FileTreeWalk fileTreeWalk) {
        this.$r8$classId = 2;
        this.this$0 = fileTreeWalk;
        this.iterator = ((Sequence) fileTreeWalk.start).iterator();
        this.nextState = -1;
    }

    public void calcNext() {
        Object next;
        FilteringSequence filteringSequence = (FilteringSequence) this.this$0;
        do {
            Iterator it = this.iterator;
            if (!it.hasNext()) {
                this.nextState = 0;
                return;
            }
            next = it.next();
        } while (((Boolean) filteringSequence.predicate.invoke(next)).booleanValue() != filteringSequence.sendWhen);
        this.nextItem = next;
        this.nextState = 1;
    }

    public void calcNext$2() {
        Iterator it = this.iterator;
        if (it.hasNext()) {
            Object next = it.next();
            if (((Boolean) ((Function1) ((FileTreeWalk) this.this$0).direction).invoke(next)).booleanValue()) {
                this.nextState = 1;
                this.nextItem = next;
                return;
            }
        }
        this.nextState = 0;
    }

    public boolean ensureItemIterator() {
        Iterator it;
        Iterator it2 = (Iterator) this.nextItem;
        if (it2 != null && it2.hasNext()) {
            this.nextState = 1;
            return true;
        }
        do {
            Iterator it3 = this.iterator;
            if (!it3.hasNext()) {
                this.nextState = 2;
                this.nextItem = null;
                return false;
            }
            Object next = it3.next();
            FlatteningSequence flatteningSequence = (FlatteningSequence) this.this$0;
            it = (Iterator) flatteningSequence.iterator.invoke(flatteningSequence.transformer.invoke(next));
        } while (!it.hasNext());
        this.nextItem = it;
        this.nextState = 1;
        return true;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        switch (this.$r8$classId) {
            case 0:
                if (this.nextState == -1) {
                    calcNext();
                }
                return this.nextState == 1;
            case 1:
                int i = this.nextState;
                if (i == 1) {
                    return true;
                }
                if (i == 2) {
                    return false;
                }
                return ensureItemIterator();
            default:
                if (this.nextState == -1) {
                    calcNext$2();
                }
                return this.nextState == 1;
        }
    }

    @Override // java.util.Iterator
    public final Object next() {
        switch (this.$r8$classId) {
            case 0:
                if (this.nextState == -1) {
                    calcNext();
                }
                if (this.nextState == 0) {
                    Utils$$ExternalSyntheticBUOutline0.m();
                    break;
                } else {
                    Object obj = this.nextItem;
                    this.nextItem = null;
                    this.nextState = -1;
                    break;
                }
            case 1:
                int i = this.nextState;
                if (i == 2) {
                    Utils$$ExternalSyntheticBUOutline0.m();
                    break;
                } else if (i == 0 && !ensureItemIterator()) {
                    Utils$$ExternalSyntheticBUOutline0.m();
                    break;
                } else {
                    this.nextState = 0;
                    Iterator it = (Iterator) this.nextItem;
                    it.getClass();
                    break;
                }
                break;
            default:
                if (this.nextState == -1) {
                    calcNext$2();
                }
                if (this.nextState == 0) {
                    Utils$$ExternalSyntheticBUOutline0.m();
                    break;
                } else {
                    Object obj2 = this.nextItem;
                    this.nextItem = null;
                    this.nextState = -1;
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
                throw new UnsupportedOperationException("Operation is not supported for read-only collection");
            default:
                throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }
    }

    public FilteringSequence$iterator$1(FlatteningSequence flatteningSequence) {
        this.$r8$classId = 1;
        this.this$0 = flatteningSequence;
        this.iterator = flatteningSequence.sequence.iterator();
    }

    public FilteringSequence$iterator$1(FilteringSequence filteringSequence) {
        this.$r8$classId = 0;
        this.this$0 = filteringSequence;
        this.iterator = filteringSequence.sequence.iterator();
        this.nextState = -1;
    }
}
