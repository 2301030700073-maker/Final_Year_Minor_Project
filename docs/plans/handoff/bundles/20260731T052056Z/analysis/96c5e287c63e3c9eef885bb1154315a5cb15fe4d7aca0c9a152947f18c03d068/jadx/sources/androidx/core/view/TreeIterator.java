package androidx.core.view;

import android.view.View;
import android.view.ViewGroup;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.UIntArray;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.markers.KMappedMarker;
import kotlin.sequences.TransformingSequence;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class TreeIterator implements Iterator, KMappedMarker {
    public final /* synthetic */ int $r8$classId = 0;
    public Iterator iterator;
    public final Object stack;

    public TreeIterator(Iterator it) {
        it.getClass();
        this.stack = new ArrayList();
        this.iterator = it;
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
                view.getClass();
                ViewGroup viewGroup = view instanceof ViewGroup ? (ViewGroup) view : null;
                UIntArray.Iterator iterator = viewGroup != null ? new UIntArray.Iterator(2, viewGroup) : null;
                if (iterator == null || !iterator.hasNext()) {
                    while (!this.iterator.hasNext() && !arrayList.isEmpty()) {
                        this.iterator = (Iterator) CollectionsKt.last((List) arrayList);
                        CollectionsKt.removeLast(arrayList);
                    }
                } else {
                    arrayList.add(this.iterator);
                    this.iterator = iterator;
                }
                return next;
            default:
                return ((TransformingSequence) obj).transformer.invoke(this.iterator.next());
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

    public TreeIterator(TransformingSequence transformingSequence) {
        this.stack = transformingSequence;
        this.iterator = transformingSequence.sequence.iterator();
    }
}
