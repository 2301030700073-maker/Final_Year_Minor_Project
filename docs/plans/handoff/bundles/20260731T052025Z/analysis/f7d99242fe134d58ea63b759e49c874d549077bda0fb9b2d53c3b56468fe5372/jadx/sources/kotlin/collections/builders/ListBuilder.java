package kotlin.collections.builders;

import androidx.camera.core.streamsharing.StreamSharing$$ExternalSyntheticLambda0;
import androidx.collection.MutableObjectList;
import androidx.compose.runtime.snapshots.SnapshotId_jvmKt;
import androidx.compose.runtime.snapshots.SnapshotStateList;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.HitTestResult;
import androidx.sqlite.SQLite;
import androidx.work.Operation$State;
import coil3.UriKt$$ExternalSyntheticBUOutline0;
import java.io.Serializable;
import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.RandomAccess;
import kotlin.collections.AbstractMutableList;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.markers.KMappedMarker;
import kotlin.text.Regex$$ExternalSyntheticBUOutline0;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class ListBuilder extends AbstractMutableList implements RandomAccess, Serializable {
    public static final ListBuilder Empty;
    public Object[] backing;
    public boolean isReadOnly;
    public int length;

    static {
        ListBuilder listBuilder = new ListBuilder(0);
        listBuilder.isReadOnly = true;
        Empty = listBuilder;
    }

    public ListBuilder(int i) {
        if (i >= 0) {
            this.backing = new Object[i];
        } else {
            UriKt$$ExternalSyntheticBUOutline0.m("capacity must be non-negative.");
            throw null;
        }
    }

    @Override // java.util.AbstractList, java.util.List
    public final void add(int i, Object obj) {
        checkIsMutable$1();
        int i2 = this.length;
        if (i < 0 || i > i2) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$1(Modifier.CC.m(i, i2, "index: ", ", size: "));
            return;
        }
        ((AbstractList) this).modCount++;
        insertAtInternal(i, 1);
        this.backing[i] = obj;
    }

    @Override // java.util.AbstractList, java.util.List
    public final boolean addAll(int i, Collection collection) {
        collection.getClass();
        checkIsMutable$1();
        int i2 = this.length;
        if (i < 0 || i > i2) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$1(Modifier.CC.m(i, i2, "index: ", ", size: "));
            return false;
        }
        int size = collection.size();
        addAllInternal$1(i, collection, size);
        return size > 0;
    }

    public final void addAllInternal$1(int i, Collection collection, int i2) {
        ((AbstractList) this).modCount++;
        insertAtInternal(i, i2);
        Iterator it = collection.iterator();
        for (int i3 = 0; i3 < i2; i3++) {
            this.backing[i + i3] = it.next();
        }
    }

    public final void addAtInternal$1(int i, Object obj) {
        ((AbstractList) this).modCount++;
        insertAtInternal(i, 1);
        this.backing[i] = obj;
    }

    public final void checkIsMutable$1() {
        if (this.isReadOnly) {
            throw new UnsupportedOperationException();
        }
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final void clear() {
        checkIsMutable$1();
        removeRangeInternal$1(0, this.length);
    }

    @Override // java.util.AbstractList, java.util.Collection, java.util.List
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof List) {
            List list = (List) obj;
            Object[] objArr = this.backing;
            int i = this.length;
            if (i == list.size()) {
                for (int i2 = 0; i2 < i; i2++) {
                    if (Intrinsics.areEqual(objArr[i2], list.get(i2))) {
                    }
                }
                return true;
            }
        }
        return false;
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object get(int i) {
        int i2 = this.length;
        if (i >= 0 && i < i2) {
            return this.backing[i];
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m$1(Modifier.CC.m(i, i2, "index: ", ", size: "));
        return null;
    }

    @Override // kotlin.collections.AbstractMutableList
    public final int getSize() {
        return this.length;
    }

    @Override // java.util.AbstractList, java.util.Collection, java.util.List
    public final int hashCode() {
        Object[] objArr = this.backing;
        int i = this.length;
        int i2 = 1;
        for (int i3 = 0; i3 < i; i3++) {
            Object obj = objArr[i3];
            i2 = (i2 * 31) + (obj != null ? obj.hashCode() : 0);
        }
        return i2;
    }

    @Override // java.util.AbstractList, java.util.List
    public final int indexOf(Object obj) {
        for (int i = 0; i < this.length; i++) {
            if (Intrinsics.areEqual(this.backing[i], obj)) {
                return i;
            }
        }
        return -1;
    }

    public final void insertAtInternal(int i, int i2) {
        int i3 = this.length + i2;
        if (i3 < 0) {
            throw new OutOfMemoryError();
        }
        Object[] objArr = this.backing;
        if (i3 > objArr.length) {
            int length = objArr.length;
            int i4 = length + (length >> 1);
            if (i4 - i3 < 0) {
                i4 = i3;
            }
            if (i4 - 2147483639 > 0) {
                i4 = i3 > 2147483639 ? Integer.MAX_VALUE : 2147483639;
            }
            this.backing = Arrays.copyOf(objArr, i4);
        }
        Object[] objArr2 = this.backing;
        ArraysKt___ArraysKt.copyInto(objArr2, objArr2, i + i2, i, this.length);
        this.length += i2;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean isEmpty() {
        return this.length == 0;
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.List
    public final Iterator iterator() {
        return listIterator(0);
    }

    @Override // java.util.AbstractList, java.util.List
    public final int lastIndexOf(Object obj) {
        for (int i = this.length - 1; i >= 0; i--) {
            if (Intrinsics.areEqual(this.backing[i], obj)) {
                return i;
            }
        }
        return -1;
    }

    @Override // java.util.AbstractList, java.util.List
    public final ListIterator listIterator(int i) {
        int i2 = this.length;
        if (i >= 0 && i <= i2) {
            return new Itr(this, i);
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m$1(Modifier.CC.m(i, i2, "index: ", ", size: "));
        return null;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean remove(Object obj) {
        checkIsMutable$1();
        int indexOf = indexOf(obj);
        if (indexOf >= 0) {
            removeAt(indexOf);
        }
        return indexOf >= 0;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean removeAll(Collection collection) {
        collection.getClass();
        checkIsMutable$1();
        return retainOrRemoveAllInternal$1(0, this.length, collection, false) > 0;
    }

    @Override // kotlin.collections.AbstractMutableList
    public final Object removeAt(int i) {
        checkIsMutable$1();
        int i2 = this.length;
        if (i >= 0 && i < i2) {
            return removeAtInternal$1(i);
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m$1(Modifier.CC.m(i, i2, "index: ", ", size: "));
        return null;
    }

    public final Object removeAtInternal$1(int i) {
        ((AbstractList) this).modCount++;
        Object[] objArr = this.backing;
        Object obj = objArr[i];
        ArraysKt___ArraysKt.copyInto(objArr, objArr, i, i + 1, this.length);
        Object[] objArr2 = this.backing;
        int i2 = this.length - 1;
        objArr2.getClass();
        objArr2[i2] = null;
        this.length--;
        return obj;
    }

    public final void removeRangeInternal$1(int i, int i2) {
        if (i2 > 0) {
            ((AbstractList) this).modCount++;
        }
        Object[] objArr = this.backing;
        ArraysKt___ArraysKt.copyInto(objArr, objArr, i, i + i2, this.length);
        Object[] objArr2 = this.backing;
        int i3 = this.length;
        SQLite.resetRange(objArr2, i3 - i2, i3);
        this.length -= i2;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean retainAll(Collection collection) {
        collection.getClass();
        checkIsMutable$1();
        return retainOrRemoveAllInternal$1(0, this.length, collection, true) > 0;
    }

    public final int retainOrRemoveAllInternal$1(int i, int i2, Collection collection, boolean z) {
        Object[] objArr;
        int i3 = 0;
        int i4 = 0;
        while (true) {
            objArr = this.backing;
            if (i3 >= i2) {
                break;
            }
            int i5 = i + i3;
            if (collection.contains(objArr[i5]) == z) {
                Object[] objArr2 = this.backing;
                i3++;
                objArr2[i4 + i] = objArr2[i5];
                i4++;
            } else {
                i3++;
            }
        }
        int i6 = i2 - i4;
        ArraysKt___ArraysKt.copyInto(objArr, objArr, i + i4, i2 + i, this.length);
        Object[] objArr3 = this.backing;
        int i7 = this.length;
        SQLite.resetRange(objArr3, i7 - i6, i7);
        if (i6 > 0) {
            ((AbstractList) this).modCount++;
        }
        this.length -= i6;
        return i6;
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object set(int i, Object obj) {
        checkIsMutable$1();
        int i2 = this.length;
        if (i < 0 || i >= i2) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$1(Modifier.CC.m(i, i2, "index: ", ", size: "));
            return null;
        }
        Object[] objArr = this.backing;
        Object obj2 = objArr[i];
        objArr[i] = obj;
        return obj2;
    }

    @Override // java.util.AbstractList, java.util.List
    public final List subList(int i, int i2) {
        Operation$State.checkRangeIndexes$kotlin_stdlib(i, i2, this.length);
        return new BuilderSubList(this.backing, i, i2 - i, null, this);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final Object[] toArray(Object[] objArr) {
        objArr.getClass();
        int length = objArr.length;
        int i = this.length;
        Object[] objArr2 = this.backing;
        if (length < i) {
            Object[] copyOfRange = Arrays.copyOfRange(objArr2, 0, i, objArr.getClass());
            copyOfRange.getClass();
            return copyOfRange;
        }
        ArraysKt___ArraysKt.copyInto(objArr2, objArr, 0, 0, i);
        int i2 = this.length;
        if (i2 < objArr.length) {
            objArr[i2] = null;
        }
        return objArr;
    }

    @Override // java.util.AbstractCollection
    public final String toString() {
        return SQLite.access$subarrayContentToString(this.backing, 0, this.length, this);
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class Itr implements ListIterator, KMappedMarker {
        public final /* synthetic */ int $r8$classId;
        public int expectedModCount;
        public int index;
        public int lastIndex;
        public final Object list;

        public Itr(SnapshotStateList snapshotStateList, int i) {
            this.$r8$classId = 1;
            this.list = snapshotStateList;
            this.index = i - 1;
            this.lastIndex = -1;
            this.expectedModCount = SnapshotId_jvmKt.getStructure(snapshotStateList);
        }

        @Override // java.util.ListIterator
        public final void add(Object obj) {
            int i = this.$r8$classId;
            Object obj2 = this.list;
            switch (i) {
                case 0:
                    checkForComodification$3();
                    ListBuilder listBuilder = (ListBuilder) obj2;
                    int i2 = this.index;
                    this.index = i2 + 1;
                    listBuilder.add(i2, obj);
                    this.lastIndex = -1;
                    this.expectedModCount = ((AbstractList) listBuilder).modCount;
                    return;
                case 1:
                    validateModification();
                    SnapshotStateList snapshotStateList = (SnapshotStateList) obj2;
                    snapshotStateList.add(this.index + 1, obj);
                    this.lastIndex = -1;
                    this.index++;
                    this.expectedModCount = SnapshotId_jvmKt.getStructure(snapshotStateList);
                    return;
                case 2:
                    throw new UnsupportedOperationException("Operation is not supported for read-only collection");
                default:
                    checkForComodification$2();
                    BuilderSubList builderSubList = (BuilderSubList) obj2;
                    int i3 = this.index;
                    this.index = i3 + 1;
                    builderSubList.add(i3, obj);
                    this.lastIndex = -1;
                    this.expectedModCount = ((AbstractList) builderSubList).modCount;
                    return;
            }
        }

        public void checkForComodification$2() {
            if (((AbstractList) ((BuilderSubList) this.list).root).modCount == this.expectedModCount) {
                return;
            }
            StreamSharing$$ExternalSyntheticLambda0.m();
        }

        public void checkForComodification$3() {
            if (((AbstractList) ((ListBuilder) this.list)).modCount == this.expectedModCount) {
                return;
            }
            StreamSharing$$ExternalSyntheticLambda0.m();
        }

        @Override // java.util.ListIterator, java.util.Iterator
        public final boolean hasNext() {
            int i = this.$r8$classId;
            Object obj = this.list;
            switch (i) {
                case 0:
                    if (this.index < ((ListBuilder) obj).length) {
                        break;
                    }
                    break;
                case 1:
                    if (this.index < ((SnapshotStateList) obj).size() - 1) {
                        break;
                    }
                    break;
                case 2:
                    if (this.index < this.expectedModCount) {
                        break;
                    }
                    break;
                default:
                    if (this.index < ((BuilderSubList) obj).length) {
                        break;
                    }
                    break;
            }
            return true;
        }

        @Override // java.util.ListIterator
        public final boolean hasPrevious() {
            switch (this.$r8$classId) {
                case 0:
                    if (this.index > 0) {
                    }
                    break;
                case 1:
                    if (this.index >= 0) {
                    }
                    break;
                case 2:
                    if (this.index > this.lastIndex) {
                    }
                    break;
                default:
                    if (this.index > 0) {
                    }
                    break;
            }
            return false;
        }

        @Override // java.util.ListIterator, java.util.Iterator
        public final Object next() {
            int i = this.$r8$classId;
            Object obj = this.list;
            switch (i) {
                case 0:
                    checkForComodification$3();
                    int i2 = this.index;
                    ListBuilder listBuilder = (ListBuilder) obj;
                    if (i2 >= listBuilder.length) {
                        Regex$$ExternalSyntheticBUOutline0.m990m();
                        return null;
                    }
                    this.index = i2 + 1;
                    this.lastIndex = i2;
                    return listBuilder.backing[i2];
                case 1:
                    validateModification();
                    int i3 = this.index + 1;
                    this.lastIndex = i3;
                    SnapshotStateList snapshotStateList = (SnapshotStateList) obj;
                    SnapshotId_jvmKt.access$validateRange(i3, snapshotStateList.size());
                    Object obj2 = snapshotStateList.get(i3);
                    this.index = i3;
                    return obj2;
                case 2:
                    MutableObjectList mutableObjectList = ((HitTestResult) obj).values;
                    int i4 = this.index;
                    this.index = i4 + 1;
                    Object obj3 = mutableObjectList.get(i4);
                    obj3.getClass();
                    return (Modifier.Node) obj3;
                default:
                    checkForComodification$2();
                    int i5 = this.index;
                    BuilderSubList builderSubList = (BuilderSubList) obj;
                    if (i5 >= builderSubList.length) {
                        Regex$$ExternalSyntheticBUOutline0.m990m();
                        return null;
                    }
                    this.index = i5 + 1;
                    this.lastIndex = i5;
                    return builderSubList.backing[builderSubList.offset + i5];
            }
        }

        @Override // java.util.ListIterator
        public final int nextIndex() {
            switch (this.$r8$classId) {
                case 0:
                    return this.index;
                case 1:
                    return this.index + 1;
                case 2:
                    return this.index - this.lastIndex;
                default:
                    return this.index;
            }
        }

        @Override // java.util.ListIterator
        public final Object previous() {
            int i = this.$r8$classId;
            Object obj = this.list;
            switch (i) {
                case 0:
                    checkForComodification$3();
                    int i2 = this.index;
                    if (i2 <= 0) {
                        Regex$$ExternalSyntheticBUOutline0.m990m();
                        return null;
                    }
                    int i3 = i2 - 1;
                    this.index = i3;
                    this.lastIndex = i3;
                    return ((ListBuilder) obj).backing[i3];
                case 1:
                    validateModification();
                    SnapshotStateList snapshotStateList = (SnapshotStateList) obj;
                    SnapshotId_jvmKt.access$validateRange(this.index, snapshotStateList.size());
                    int i4 = this.index;
                    this.lastIndex = i4;
                    this.index--;
                    return snapshotStateList.get(i4);
                case 2:
                    MutableObjectList mutableObjectList = ((HitTestResult) obj).values;
                    int i5 = this.index - 1;
                    this.index = i5;
                    Object obj2 = mutableObjectList.get(i5);
                    obj2.getClass();
                    return (Modifier.Node) obj2;
                default:
                    checkForComodification$2();
                    int i6 = this.index;
                    if (i6 <= 0) {
                        Regex$$ExternalSyntheticBUOutline0.m990m();
                        return null;
                    }
                    int i7 = i6 - 1;
                    this.index = i7;
                    this.lastIndex = i7;
                    BuilderSubList builderSubList = (BuilderSubList) obj;
                    return builderSubList.backing[builderSubList.offset + i7];
            }
        }

        @Override // java.util.ListIterator
        public final int previousIndex() {
            int i;
            switch (this.$r8$classId) {
                case 0:
                    i = this.index;
                    break;
                case 1:
                    return this.index;
                case 2:
                    return (this.index - this.lastIndex) - 1;
                default:
                    i = this.index;
                    break;
            }
            return i - 1;
        }

        @Override // java.util.ListIterator, java.util.Iterator
        public final void remove() {
            int i = this.$r8$classId;
            Object obj = this.list;
            switch (i) {
                case 0:
                    ListBuilder listBuilder = (ListBuilder) obj;
                    checkForComodification$3();
                    int i2 = this.lastIndex;
                    if (i2 == -1) {
                        _UtilJvmKt$$ExternalSyntheticLambda0.m$2("Call next() or previous() before removing element from the iterator.");
                        return;
                    }
                    listBuilder.removeAt(i2);
                    this.index = this.lastIndex;
                    this.lastIndex = -1;
                    this.expectedModCount = ((AbstractList) listBuilder).modCount;
                    return;
                case 1:
                    validateModification();
                    SnapshotStateList snapshotStateList = (SnapshotStateList) obj;
                    snapshotStateList.remove(this.lastIndex);
                    this.index--;
                    this.lastIndex = -1;
                    this.expectedModCount = SnapshotId_jvmKt.getStructure(snapshotStateList);
                    return;
                case 2:
                    throw new UnsupportedOperationException("Operation is not supported for read-only collection");
                default:
                    BuilderSubList builderSubList = (BuilderSubList) obj;
                    checkForComodification$2();
                    int i3 = this.lastIndex;
                    if (i3 == -1) {
                        _UtilJvmKt$$ExternalSyntheticLambda0.m$2("Call next() or previous() before removing element from the iterator.");
                        return;
                    }
                    builderSubList.removeAt(i3);
                    this.index = this.lastIndex;
                    this.lastIndex = -1;
                    this.expectedModCount = ((AbstractList) builderSubList).modCount;
                    return;
            }
        }

        @Override // java.util.ListIterator
        public final void set(Object obj) {
            int i = this.$r8$classId;
            Object obj2 = this.list;
            switch (i) {
                case 0:
                    checkForComodification$3();
                    int i2 = this.lastIndex;
                    if (i2 != -1) {
                        ((ListBuilder) obj2).set(i2, obj);
                        return;
                    } else {
                        _UtilJvmKt$$ExternalSyntheticLambda0.m$2("Call next() or previous() before replacing element from the iterator.");
                        return;
                    }
                case 1:
                    SnapshotStateList snapshotStateList = (SnapshotStateList) obj2;
                    validateModification();
                    int i3 = this.lastIndex;
                    if (i3 < 0) {
                        _UtilJvmKt$$ExternalSyntheticLambda0.m$2("Cannot call set before the first call to next() or previous() or immediately after a call to add() or remove()");
                        return;
                    } else {
                        snapshotStateList.set(i3, obj);
                        this.expectedModCount = SnapshotId_jvmKt.getStructure(snapshotStateList);
                        return;
                    }
                case 2:
                    throw new UnsupportedOperationException("Operation is not supported for read-only collection");
                default:
                    checkForComodification$2();
                    int i4 = this.lastIndex;
                    if (i4 != -1) {
                        ((BuilderSubList) obj2).set(i4, obj);
                        return;
                    } else {
                        _UtilJvmKt$$ExternalSyntheticLambda0.m$2("Call next() or previous() before replacing element from the iterator.");
                        return;
                    }
            }
        }

        public void validateModification() {
            if (SnapshotId_jvmKt.getStructure((SnapshotStateList) this.list) == this.expectedModCount) {
                return;
            }
            StreamSharing$$ExternalSyntheticLambda0.m();
        }

        public Itr(ListBuilder listBuilder, int i) {
            this.$r8$classId = 0;
            this.list = listBuilder;
            this.index = i;
            this.lastIndex = -1;
            this.expectedModCount = ((AbstractList) listBuilder).modCount;
        }

        /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
        public Itr(HitTestResult hitTestResult, int i, int i2) {
            this(hitTestResult, (i2 & 1) != 0 ? 0 : i, 0, hitTestResult.values._size);
            this.$r8$classId = 2;
        }

        public Itr(HitTestResult hitTestResult, int i, int i2, int i3) {
            this.$r8$classId = 2;
            this.list = hitTestResult;
            this.index = i;
            this.lastIndex = i2;
            this.expectedModCount = i3;
        }

        public Itr(BuilderSubList builderSubList, int i) {
            this.$r8$classId = 3;
            this.list = builderSubList;
            this.index = i;
            this.lastIndex = -1;
            this.expectedModCount = ((AbstractList) builderSubList).modCount;
        }
    }

    @Override // java.util.AbstractList, java.util.List
    public final ListIterator listIterator() {
        return listIterator(0);
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class BuilderSubList extends AbstractMutableList implements RandomAccess, Serializable {
        public Object[] backing;
        public int length;
        public final int offset;
        public final BuilderSubList parent;
        public final ListBuilder root;

        public BuilderSubList(Object[] objArr, int i, int i2, BuilderSubList builderSubList, ListBuilder listBuilder) {
            objArr.getClass();
            listBuilder.getClass();
            this.backing = objArr;
            this.offset = i;
            this.length = i2;
            this.parent = builderSubList;
            this.root = listBuilder;
            ((AbstractList) this).modCount = ((AbstractList) listBuilder).modCount;
        }

        @Override // java.util.AbstractList, java.util.List
        public final void add(int i, Object obj) {
            checkIsMutable();
            checkForComodification$4();
            int i2 = this.length;
            if (i < 0 || i > i2) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m$1(Modifier.CC.m(i, i2, "index: ", ", size: "));
            } else {
                addAtInternal(this.offset + i, obj);
            }
        }

        @Override // java.util.AbstractList, java.util.List
        public final boolean addAll(int i, Collection collection) {
            collection.getClass();
            checkIsMutable();
            checkForComodification$4();
            int i2 = this.length;
            if (i < 0 || i > i2) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m$1(Modifier.CC.m(i, i2, "index: ", ", size: "));
                return false;
            }
            int size = collection.size();
            addAllInternal(this.offset + i, collection, size);
            return size > 0;
        }

        public final void addAllInternal(int i, Collection collection, int i2) {
            ((AbstractList) this).modCount++;
            ListBuilder listBuilder = this.root;
            BuilderSubList builderSubList = this.parent;
            if (builderSubList != null) {
                builderSubList.addAllInternal(i, collection, i2);
            } else {
                ListBuilder listBuilder2 = ListBuilder.Empty;
                listBuilder.addAllInternal$1(i, collection, i2);
            }
            this.backing = listBuilder.backing;
            this.length += i2;
        }

        public final void addAtInternal(int i, Object obj) {
            ((AbstractList) this).modCount++;
            ListBuilder listBuilder = this.root;
            BuilderSubList builderSubList = this.parent;
            if (builderSubList != null) {
                builderSubList.addAtInternal(i, obj);
            } else {
                ListBuilder listBuilder2 = ListBuilder.Empty;
                listBuilder.addAtInternal$1(i, obj);
            }
            this.backing = listBuilder.backing;
            this.length++;
        }

        public final void checkForComodification$4() {
            if (((AbstractList) this.root).modCount == ((AbstractList) this).modCount) {
                return;
            }
            StreamSharing$$ExternalSyntheticLambda0.m();
        }

        public final void checkIsMutable() {
            if (this.root.isReadOnly) {
                throw new UnsupportedOperationException();
            }
        }

        @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
        public final void clear() {
            checkIsMutable();
            checkForComodification$4();
            removeRangeInternal(this.offset, this.length);
        }

        @Override // java.util.AbstractList, java.util.Collection, java.util.List
        public final boolean equals(Object obj) {
            checkForComodification$4();
            if (obj == this) {
                return true;
            }
            if (obj instanceof List) {
                List list = (List) obj;
                Object[] objArr = this.backing;
                int i = this.length;
                if (i == list.size()) {
                    for (int i2 = 0; i2 < i; i2++) {
                        if (Intrinsics.areEqual(objArr[this.offset + i2], list.get(i2))) {
                        }
                    }
                    return true;
                }
            }
            return false;
        }

        @Override // java.util.AbstractList, java.util.List
        public final Object get(int i) {
            checkForComodification$4();
            int i2 = this.length;
            if (i >= 0 && i < i2) {
                return this.backing[this.offset + i];
            }
            _UtilJvmKt$$ExternalSyntheticLambda0.m$1(Modifier.CC.m(i, i2, "index: ", ", size: "));
            return null;
        }

        @Override // kotlin.collections.AbstractMutableList
        public final int getSize() {
            checkForComodification$4();
            return this.length;
        }

        @Override // java.util.AbstractList, java.util.Collection, java.util.List
        public final int hashCode() {
            checkForComodification$4();
            Object[] objArr = this.backing;
            int i = this.length;
            int i2 = 1;
            for (int i3 = 0; i3 < i; i3++) {
                Object obj = objArr[this.offset + i3];
                i2 = (i2 * 31) + (obj != null ? obj.hashCode() : 0);
            }
            return i2;
        }

        @Override // java.util.AbstractList, java.util.List
        public final int indexOf(Object obj) {
            checkForComodification$4();
            for (int i = 0; i < this.length; i++) {
                if (Intrinsics.areEqual(this.backing[this.offset + i], obj)) {
                    return i;
                }
            }
            return -1;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public final boolean isEmpty() {
            checkForComodification$4();
            return this.length == 0;
        }

        @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.List
        public final Iterator iterator() {
            return listIterator(0);
        }

        @Override // java.util.AbstractList, java.util.List
        public final int lastIndexOf(Object obj) {
            checkForComodification$4();
            for (int i = this.length - 1; i >= 0; i--) {
                if (Intrinsics.areEqual(this.backing[this.offset + i], obj)) {
                    return i;
                }
            }
            return -1;
        }

        @Override // java.util.AbstractList, java.util.List
        public final ListIterator listIterator(int i) {
            checkForComodification$4();
            int i2 = this.length;
            if (i >= 0 && i <= i2) {
                return new Itr(this, i);
            }
            _UtilJvmKt$$ExternalSyntheticLambda0.m$1(Modifier.CC.m(i, i2, "index: ", ", size: "));
            return null;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public final boolean remove(Object obj) {
            checkIsMutable();
            checkForComodification$4();
            int indexOf = indexOf(obj);
            if (indexOf >= 0) {
                removeAt(indexOf);
            }
            return indexOf >= 0;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public final boolean removeAll(Collection collection) {
            collection.getClass();
            checkIsMutable();
            checkForComodification$4();
            return retainOrRemoveAllInternal(this.offset, this.length, collection, false) > 0;
        }

        @Override // kotlin.collections.AbstractMutableList
        public final Object removeAt(int i) {
            checkIsMutable();
            checkForComodification$4();
            int i2 = this.length;
            if (i >= 0 && i < i2) {
                return removeAtInternal(this.offset + i);
            }
            _UtilJvmKt$$ExternalSyntheticLambda0.m$1(Modifier.CC.m(i, i2, "index: ", ", size: "));
            return null;
        }

        public final Object removeAtInternal(int i) {
            Object removeAtInternal$1;
            ((AbstractList) this).modCount++;
            BuilderSubList builderSubList = this.parent;
            if (builderSubList != null) {
                removeAtInternal$1 = builderSubList.removeAtInternal(i);
            } else {
                ListBuilder listBuilder = ListBuilder.Empty;
                removeAtInternal$1 = this.root.removeAtInternal$1(i);
            }
            this.length--;
            return removeAtInternal$1;
        }

        public final void removeRangeInternal(int i, int i2) {
            if (i2 > 0) {
                ((AbstractList) this).modCount++;
            }
            BuilderSubList builderSubList = this.parent;
            if (builderSubList != null) {
                builderSubList.removeRangeInternal(i, i2);
            } else {
                ListBuilder listBuilder = ListBuilder.Empty;
                this.root.removeRangeInternal$1(i, i2);
            }
            this.length -= i2;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public final boolean retainAll(Collection collection) {
            collection.getClass();
            checkIsMutable();
            checkForComodification$4();
            return retainOrRemoveAllInternal(this.offset, this.length, collection, true) > 0;
        }

        public final int retainOrRemoveAllInternal(int i, int i2, Collection collection, boolean z) {
            int retainOrRemoveAllInternal$1;
            BuilderSubList builderSubList = this.parent;
            if (builderSubList != null) {
                retainOrRemoveAllInternal$1 = builderSubList.retainOrRemoveAllInternal(i, i2, collection, z);
            } else {
                ListBuilder listBuilder = ListBuilder.Empty;
                retainOrRemoveAllInternal$1 = this.root.retainOrRemoveAllInternal$1(i, i2, collection, z);
            }
            if (retainOrRemoveAllInternal$1 > 0) {
                ((AbstractList) this).modCount++;
            }
            this.length -= retainOrRemoveAllInternal$1;
            return retainOrRemoveAllInternal$1;
        }

        @Override // java.util.AbstractList, java.util.List
        public final Object set(int i, Object obj) {
            checkIsMutable();
            checkForComodification$4();
            int i2 = this.length;
            if (i < 0 || i >= i2) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m$1(Modifier.CC.m(i, i2, "index: ", ", size: "));
                return null;
            }
            Object[] objArr = this.backing;
            int i3 = this.offset;
            Object obj2 = objArr[i3 + i];
            objArr[i3 + i] = obj;
            return obj2;
        }

        @Override // java.util.AbstractList, java.util.List
        public final List subList(int i, int i2) {
            Operation$State.checkRangeIndexes$kotlin_stdlib(i, i2, this.length);
            return new BuilderSubList(this.backing, this.offset + i, i2 - i, this, this.root);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public final Object[] toArray(Object[] objArr) {
            objArr.getClass();
            checkForComodification$4();
            int length = objArr.length;
            int i = this.length;
            Object[] objArr2 = this.backing;
            int i2 = this.offset;
            if (length < i) {
                Object[] copyOfRange = Arrays.copyOfRange(objArr2, i2, i + i2, objArr.getClass());
                copyOfRange.getClass();
                return copyOfRange;
            }
            ArraysKt___ArraysKt.copyInto(objArr2, objArr, 0, i2, i + i2);
            int i3 = this.length;
            if (i3 < objArr.length) {
                objArr[i3] = null;
            }
            return objArr;
        }

        @Override // java.util.AbstractCollection
        public final String toString() {
            checkForComodification$4();
            return SQLite.access$subarrayContentToString(this.backing, this.offset, this.length, this);
        }

        @Override // java.util.AbstractList, java.util.List
        public final ListIterator listIterator() {
            return listIterator(0);
        }

        @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
        public final boolean add(Object obj) {
            checkIsMutable();
            checkForComodification$4();
            addAtInternal(this.offset + this.length, obj);
            return true;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public final Object[] toArray() {
            checkForComodification$4();
            Object[] objArr = this.backing;
            int i = this.length;
            int i2 = this.offset;
            return ArraysKt___ArraysKt.copyOfRange(objArr, i2, i + i2);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public final boolean addAll(Collection collection) {
            collection.getClass();
            checkIsMutable();
            checkForComodification$4();
            int size = collection.size();
            addAllInternal(this.offset + this.length, collection, size);
            return size > 0;
        }
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean add(Object obj) {
        checkIsMutable$1();
        int i = this.length;
        ((AbstractList) this).modCount++;
        insertAtInternal(i, 1);
        this.backing[i] = obj;
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final Object[] toArray() {
        return ArraysKt___ArraysKt.copyOfRange(this.backing, 0, this.length);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection collection) {
        collection.getClass();
        checkIsMutable$1();
        int size = collection.size();
        addAllInternal$1(this.length, collection, size);
        return size > 0;
    }
}
