package androidx.compose.runtime.snapshots;

import androidx.compose.runtime.PreconditionsKt;
import java.util.Collection;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import kotlin.collections.IntIterator;
import kotlin.jvm.internal.CollectionToArray;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref$IntRef;
import kotlin.jvm.internal.markers.KMutableList;
import kotlin.ranges.RangesKt;

/* compiled from: SnapshotStateList.kt */
/* loaded from: classes.dex */
final class SubList implements List, KMutableList {
    private final int offset;
    private final SnapshotStateList parentList;
    private int size;
    private int structure;

    @Override // java.util.List, java.util.Collection
    public Object[] toArray() {
        return CollectionToArray.toArray(this);
    }

    @Override // java.util.List, java.util.Collection
    public Object[] toArray(Object[] objArr) {
        return CollectionToArray.toArray(this, objArr);
    }

    public SubList(SnapshotStateList snapshotStateList, int i, int i2) {
        this.parentList = snapshotStateList;
        this.offset = i;
        this.structure = snapshotStateList.getStructure$runtime_release();
        this.size = i2 - i;
    }

    @Override // java.util.List
    public final /* bridge */ Object remove(int i) {
        return removeAt(i);
    }

    @Override // java.util.List, java.util.Collection
    public final /* bridge */ int size() {
        return getSize();
    }

    public int getSize() {
        return this.size;
    }

    @Override // java.util.List, java.util.Collection
    public boolean contains(Object obj) {
        return indexOf(obj) >= 0;
    }

    @Override // java.util.List, java.util.Collection
    public boolean containsAll(Collection collection) {
        Collection collection2 = collection;
        if ((collection2 instanceof Collection) && collection2.isEmpty()) {
            return true;
        }
        Iterator it = collection2.iterator();
        while (it.hasNext()) {
            if (!contains(it.next())) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.List
    public Object get(int i) {
        validateModification();
        SnapshotStateListKt.validateRange(i, size());
        return this.parentList.get(this.offset + i);
    }

    @Override // java.util.List
    public int indexOf(Object obj) {
        validateModification();
        int i = this.offset;
        Iterator it = RangesKt.until(i, size() + i).iterator();
        while (it.hasNext()) {
            int nextInt = ((IntIterator) it).nextInt();
            if (Intrinsics.areEqual(obj, this.parentList.get(nextInt))) {
                return nextInt - this.offset;
            }
        }
        return -1;
    }

    @Override // java.util.List, java.util.Collection
    public boolean isEmpty() {
        return size() == 0;
    }

    @Override // java.util.List, java.util.Collection, java.lang.Iterable
    public Iterator iterator() {
        return listIterator();
    }

    @Override // java.util.List
    public int lastIndexOf(Object obj) {
        validateModification();
        int size = this.offset + size();
        do {
            size--;
            if (size < this.offset) {
                return -1;
            }
        } while (!Intrinsics.areEqual(obj, this.parentList.get(size)));
        return size - this.offset;
    }

    @Override // java.util.List, java.util.Collection
    public boolean add(Object obj) {
        validateModification();
        this.parentList.add(this.offset + size(), obj);
        this.size = size() + 1;
        this.structure = this.parentList.getStructure$runtime_release();
        return true;
    }

    @Override // java.util.List
    public void add(int i, Object obj) {
        validateModification();
        this.parentList.add(this.offset + i, obj);
        this.size = size() + 1;
        this.structure = this.parentList.getStructure$runtime_release();
    }

    @Override // java.util.List
    public boolean addAll(int i, Collection collection) {
        validateModification();
        boolean addAll = this.parentList.addAll(i + this.offset, collection);
        if (addAll) {
            this.size = size() + collection.size();
            this.structure = this.parentList.getStructure$runtime_release();
        }
        return addAll;
    }

    @Override // java.util.List, java.util.Collection
    public boolean addAll(Collection collection) {
        return addAll(size(), collection);
    }

    @Override // java.util.List, java.util.Collection
    public void clear() {
        if (size() > 0) {
            validateModification();
            SnapshotStateList snapshotStateList = this.parentList;
            int i = this.offset;
            snapshotStateList.removeRange(i, size() + i);
            this.size = 0;
            this.structure = this.parentList.getStructure$runtime_release();
        }
    }

    @Override // java.util.List
    public ListIterator listIterator() {
        return listIterator(0);
    }

    @Override // java.util.List
    public ListIterator listIterator(int i) {
        validateModification();
        Ref$IntRef ref$IntRef = new Ref$IntRef();
        ref$IntRef.element = i - 1;
        return new SubList$listIterator$1(ref$IntRef, this);
    }

    @Override // java.util.List, java.util.Collection
    public boolean remove(Object obj) {
        int indexOf = indexOf(obj);
        if (indexOf < 0) {
            return false;
        }
        remove(indexOf);
        return true;
    }

    @Override // java.util.List, java.util.Collection
    public boolean removeAll(Collection collection) {
        Iterator it = collection.iterator();
        while (true) {
            boolean z = false;
            while (it.hasNext()) {
                if (remove(it.next()) || z) {
                    z = true;
                }
            }
            return z;
        }
    }

    public Object removeAt(int i) {
        validateModification();
        Object remove = this.parentList.remove(this.offset + i);
        this.size = size() - 1;
        this.structure = this.parentList.getStructure$runtime_release();
        return remove;
    }

    @Override // java.util.List, java.util.Collection
    public boolean retainAll(Collection collection) {
        validateModification();
        SnapshotStateList snapshotStateList = this.parentList;
        int i = this.offset;
        int retainAllInRange$runtime_release = snapshotStateList.retainAllInRange$runtime_release(collection, i, size() + i);
        if (retainAllInRange$runtime_release > 0) {
            this.structure = this.parentList.getStructure$runtime_release();
            this.size = size() - retainAllInRange$runtime_release;
        }
        return retainAllInRange$runtime_release > 0;
    }

    @Override // java.util.List
    public Object set(int i, Object obj) {
        SnapshotStateListKt.validateRange(i, size());
        validateModification();
        Object obj2 = this.parentList.set(i + this.offset, obj);
        this.structure = this.parentList.getStructure$runtime_release();
        return obj2;
    }

    @Override // java.util.List
    public List subList(int i, int i2) {
        if (!(i >= 0 && i <= i2 && i2 <= size())) {
            PreconditionsKt.throwIllegalArgumentException("fromIndex or toIndex are out of bounds");
        }
        validateModification();
        SnapshotStateList snapshotStateList = this.parentList;
        int i3 = this.offset;
        return new SubList(snapshotStateList, i + i3, i2 + i3);
    }

    private final void validateModification() {
        if (this.parentList.getStructure$runtime_release() != this.structure) {
            throw new ConcurrentModificationException();
        }
    }
}
