package androidx.core.view;

import android.view.View;
import android.view.ViewGroup;
import java.util.ArrayList;
import java.util.Iterator;
import kotlin.UIntArray;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.markers.KMappedMarker;
import kotlin.sequences.TakeWhileSequence;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class TreeIterator implements Iterator, KMappedMarker {
    public final /* synthetic */ int $r8$classId;
    public Iterator iterator;
    public final Object stack;

    public TreeIterator(TakeWhileSequence takeWhileSequence) {
        this.$r8$classId = 1;
        this.stack = takeWhileSequence;
        this.iterator = takeWhileSequence.sequence.iterator();
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        switch (this.$r8$classId) {
        }
        return this.iterator.hasNext();
    }

    @Override // java.util.Iterator
    public final Object next() {
        int i = this.$r8$classId;
        Object obj = this.stack;
        switch (i) {
            case 0:
                Object next = this.iterator.next();
                ArrayList arrayList = (ArrayList) obj;
                View view = (View) next;
                ViewGroup viewGroup = view instanceof ViewGroup ? (ViewGroup) view : null;
                UIntArray.Iterator iterator = viewGroup != null ? new UIntArray.Iterator(2, viewGroup) : null;
                if (iterator == null || !iterator.hasNext()) {
                    while (!this.iterator.hasNext() && !arrayList.isEmpty()) {
                        this.iterator = (Iterator) CollectionsKt.last(arrayList);
                        CollectionsKt.removeLast(arrayList);
                    }
                } else {
                    arrayList.add(this.iterator);
                    this.iterator = iterator;
                }
                return next;
            default:
                return ((TakeWhileSequence) obj).predicate.invoke(this.iterator.next());
        }
    }

    @Override // java.util.Iterator
    public final void remove() {
        switch (this.$r8$classId) {
            case 0:
                throw new UnsupportedOperationException("Operation is not supported for read-only collection");
            default:
                throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }
    }

    public TreeIterator(UIntArray.Iterator iterator) {
        this.$r8$classId = 0;
        this.stack = new ArrayList();
        this.iterator = iterator;
    }
}
