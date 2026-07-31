package net.thunderbird.core.common.collections;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.unit.IntOffsetKt;
import androidx.viewpager.widget.ViewPager;
import coil3.UriKt$$ExternalSyntheticBUOutline0;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.collections.AbstractMutableCollection;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.markers.KMappedMarker;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class PriorityQueue extends AbstractMutableCollection implements KMappedMarker {
    public final ViewPager.AnonymousClass1 comparator;
    public final ArrayList heap;

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class HeapIterator implements Iterator, KMappedMarker {
        public int index;
        public int lastReturned = -1;

        public HeapIterator() {
        }

        @Override // java.util.Iterator
        public final boolean hasNext() {
            return this.index < PriorityQueue.this.heap.size();
        }

        @Override // java.util.Iterator
        public final Object next() {
            if (!hasNext()) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m("Queue is empty");
                return null;
            }
            int i = this.index;
            this.index = i + 1;
            this.lastReturned = i;
            return PriorityQueue.this.heap.get(i);
        }

        @Override // java.util.Iterator
        public final void remove() {
            int i = this.lastReturned;
            if (i < 0) {
                UriKt$$ExternalSyntheticBUOutline0.m("next() has not been called");
                return;
            }
            PriorityQueue priorityQueue = PriorityQueue.this;
            ArrayList arrayList = priorityQueue.heap;
            int lastIndex = IntOffsetKt.getLastIndex(arrayList);
            if (i == lastIndex) {
                arrayList.remove(lastIndex);
            } else {
                arrayList.set(i, arrayList.remove(lastIndex));
                priorityQueue.siftDown(i);
                priorityQueue.siftUp(i);
            }
            int i2 = this.lastReturned;
            this.lastReturned = i2 - 1;
            this.index = i2;
        }
    }

    public PriorityQueue(ViewPager.AnonymousClass1 anonymousClass1, List list) {
        this.comparator = anonymousClass1;
        ArrayList arrayList = new ArrayList(list);
        this.heap = arrayList;
        if (arrayList.isEmpty()) {
            return;
        }
        for (int size = (arrayList.size() - 2) / 2; -1 < size; size--) {
            siftDown(size);
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final boolean add(Object obj) {
        ArrayList arrayList = this.heap;
        arrayList.add(obj);
        siftUp(IntOffsetKt.getLastIndex(arrayList));
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final boolean addAll(Collection collection) {
        collection.getClass();
        boolean z = false;
        if (collection.equals(this)) {
            UriKt$$ExternalSyntheticBUOutline0.m("Collection can't addAll itself");
            return false;
        }
        Iterator it = collection.iterator();
        while (it.hasNext()) {
            add(it.next());
            z = true;
        }
        return z;
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final void clear() {
        Object obj;
        do {
            ArrayList arrayList = this.heap;
            if (arrayList.isEmpty()) {
                return;
            }
            if (arrayList.isEmpty()) {
                obj = null;
            } else {
                Object first = CollectionsKt.first((List) arrayList);
                Object m = Modifier.CC.m(1, arrayList);
                if (!arrayList.isEmpty()) {
                    arrayList.set(0, m);
                    siftDown(0);
                }
                obj = first;
            }
        } while (obj != null);
        _UtilJvmKt$$ExternalSyntheticLambda0.m("Queue is empty");
    }

    @Override // kotlin.collections.AbstractMutableCollection
    public final int getSize() {
        return this.heap.size();
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final boolean isEmpty() {
        return this.heap.isEmpty();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public final Iterator iterator() {
        return new HeapIterator();
    }

    public final void siftDown(int i) {
        ArrayList arrayList = this.heap;
        int size = arrayList.size() / 2;
        while (i < size) {
            int i2 = i * 2;
            int i3 = i2 + 1;
            int i4 = i2 + 2;
            int size2 = arrayList.size();
            ViewPager.AnonymousClass1 anonymousClass1 = this.comparator;
            if (i4 >= size2 || anonymousClass1.compare(arrayList.get(i3), arrayList.get(i4)) <= 0) {
                i4 = i3;
            }
            if (anonymousClass1.compare(arrayList.get(i), arrayList.get(i4)) <= 0) {
                return;
            }
            Object obj = arrayList.get(i);
            arrayList.set(i, arrayList.get(i4));
            arrayList.set(i4, obj);
            i = i4;
        }
    }

    public final void siftUp(int i) {
        while (i > 0) {
            ArrayList arrayList = this.heap;
            int i2 = (i - 1) / 2;
            if (this.comparator.compare(arrayList.get(i), arrayList.get(i2)) >= 0) {
                return;
            }
            Object obj = arrayList.get(i);
            arrayList.set(i, arrayList.get(i2));
            arrayList.set(i2, obj);
            i = i2;
        }
    }
}
