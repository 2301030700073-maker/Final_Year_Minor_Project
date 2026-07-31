package androidx.core.view;

import android.view.View;
import android.view.ViewGroup;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import kotlin.Pair;
import kotlin.UIntArray;
import kotlin.collections.CollectionsKt;
import kotlin.collections.CollectionsKt__MutableCollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.markers.KMappedMarker;
import kotlin.sequences.MergingSequence;
import kotlin.sequences.Sequence;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class TreeIterator implements Iterator, KMappedMarker {
    public final /* synthetic */ int $r8$classId;
    public Iterator iterator;
    public Object stack;

    public TreeIterator(Iterator it, int i) {
        this.$r8$classId = i;
        it.getClass();
        switch (i) {
            case 3:
                this.iterator = it;
                break;
            default:
                this.stack = new ArrayList();
                this.iterator = it;
                break;
        }
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        switch (this.$r8$classId) {
            case 0:
                return this.iterator.hasNext();
            case 1:
                return this.iterator.hasNext() && ((Iterator) this.stack).hasNext();
            case 2:
                return this.iterator.hasNext();
            default:
                Iterator it = this.iterator;
                if (this.stack == null) {
                    while (it.hasNext()) {
                        Object obj = ((WeakReference) it.next()).get();
                        if (obj != null) {
                            this.stack = obj;
                        }
                    }
                    return false;
                }
                return true;
        }
    }

    @Override // java.util.Iterator
    public final Object next() {
        switch (this.$r8$classId) {
            case 0:
                Object next = this.iterator.next();
                ArrayList arrayList = (ArrayList) this.stack;
                View view = (View) next;
                view.getClass();
                ViewGroup viewGroup = view instanceof ViewGroup ? (ViewGroup) view : null;
                UIntArray.Iterator iterator = viewGroup != null ? new UIntArray.Iterator(viewGroup, 1) : null;
                if (iterator == null || !iterator.hasNext()) {
                    while (!this.iterator.hasNext() && !arrayList.isEmpty()) {
                        this.iterator = (Iterator) CollectionsKt.last(arrayList);
                        CollectionsKt__MutableCollectionsKt.removeLast(arrayList);
                    }
                } else {
                    arrayList.add(this.iterator);
                    this.iterator = iterator;
                }
                return next;
            case 1:
                return new Pair(this.iterator.next(), ((Iterator) this.stack).next());
            case 2:
                return ((Function1) ((MergingSequence) this.stack).sequence2).invoke(this.iterator.next());
            default:
                Object obj = this.stack;
                this.stack = null;
                while (obj == null) {
                    obj = ((WeakReference) this.iterator.next()).get();
                }
                return obj;
        }
    }

    @Override // java.util.Iterator
    public final void remove() {
        switch (this.$r8$classId) {
            case 0:
                throw new UnsupportedOperationException("Operation is not supported for read-only collection");
            case 1:
                throw new UnsupportedOperationException("Operation is not supported for read-only collection");
            case 2:
                throw new UnsupportedOperationException("Operation is not supported for read-only collection");
            default:
                this.iterator.remove();
                return;
        }
    }

    public TreeIterator(MergingSequence mergingSequence, byte b) {
        this.$r8$classId = 2;
        this.stack = mergingSequence;
        this.iterator = ((Sequence) mergingSequence.sequence1).iterator();
    }

    public TreeIterator(MergingSequence mergingSequence) {
        this.$r8$classId = 1;
        this.iterator = ((Sequence) mergingSequence.sequence1).iterator();
        this.stack = ((Sequence) mergingSequence.sequence2).iterator();
    }
}
