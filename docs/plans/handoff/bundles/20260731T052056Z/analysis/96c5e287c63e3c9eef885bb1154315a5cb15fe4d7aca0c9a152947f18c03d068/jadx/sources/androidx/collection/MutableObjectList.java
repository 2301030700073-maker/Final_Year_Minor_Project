package androidx.collection;

import androidx.compose.animation.core.Animation;
import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.runtime.collection.MutableVectorKt;
import androidx.glance.session.TimeSource$Companion$$ExternalSyntheticLambda0;
import androidx.room.Room;
import com.google.gson.Gson$$ExternalSyntheticBUOutline0;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.markers.KMappedMarker;
import kotlin.jvm.internal.markers.KMutableList;
import kotlin.ranges.IntRange;
import kotlin.text.RegexKt;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class MutableObjectList {
    public int _size;
    public Object[] content;
    public ObjectListMutableList list;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class MutableObjectListIterator implements ListIterator, KMappedMarker {
        public final /* synthetic */ int $r8$classId;
        public final List list;
        public int prevIndex;

        public MutableObjectListIterator(int i, int i2, List list) {
            this.$r8$classId = i2;
            switch (i2) {
                case 1:
                    this.list = list;
                    this.prevIndex = i;
                    break;
                default:
                    this.list = list;
                    this.prevIndex = i - 1;
                    break;
            }
        }

        @Override // java.util.ListIterator
        public final void add(Object obj) {
            int i = this.$r8$classId;
            List list = this.list;
            switch (i) {
                case 0:
                    int i2 = this.prevIndex + 1;
                    this.prevIndex = i2;
                    list.add(i2, obj);
                    break;
                default:
                    list.add(this.prevIndex, obj);
                    this.prevIndex++;
                    break;
            }
        }

        @Override // java.util.ListIterator, java.util.Iterator
        public final boolean hasNext() {
            int i = this.$r8$classId;
            List list = this.list;
            switch (i) {
                case 0:
                    if (this.prevIndex < list.size() - 1) {
                        break;
                    }
                    break;
                default:
                    if (this.prevIndex < list.size()) {
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
                    if (this.prevIndex >= 0) {
                    }
                    break;
                default:
                    if (this.prevIndex > 0) {
                    }
                    break;
            }
            return false;
        }

        @Override // java.util.ListIterator, java.util.Iterator
        public final Object next() {
            int i = this.$r8$classId;
            List list = this.list;
            switch (i) {
                case 0:
                    int i2 = this.prevIndex + 1;
                    this.prevIndex = i2;
                    return list.get(i2);
                default:
                    int i3 = this.prevIndex;
                    this.prevIndex = i3 + 1;
                    return list.get(i3);
            }
        }

        @Override // java.util.ListIterator
        public final int nextIndex() {
            switch (this.$r8$classId) {
                case 0:
                    return this.prevIndex + 1;
                default:
                    return this.prevIndex;
            }
        }

        @Override // java.util.ListIterator
        public final Object previous() {
            int i = this.$r8$classId;
            List list = this.list;
            switch (i) {
                case 0:
                    int i2 = this.prevIndex;
                    this.prevIndex = i2 - 1;
                    return list.get(i2);
                default:
                    int i3 = this.prevIndex - 1;
                    this.prevIndex = i3;
                    return list.get(i3);
            }
        }

        @Override // java.util.ListIterator
        public final int previousIndex() {
            switch (this.$r8$classId) {
                case 0:
                    return this.prevIndex;
                default:
                    return this.prevIndex - 1;
            }
        }

        @Override // java.util.ListIterator, java.util.Iterator
        public final void remove() {
            int i = this.$r8$classId;
            List list = this.list;
            switch (i) {
                case 0:
                    list.remove(this.prevIndex);
                    this.prevIndex--;
                    break;
                default:
                    int i2 = this.prevIndex - 1;
                    this.prevIndex = i2;
                    list.remove(i2);
                    break;
            }
        }

        @Override // java.util.ListIterator
        public final void set(Object obj) {
            int i = this.$r8$classId;
            List list = this.list;
            switch (i) {
                case 0:
                    list.set(this.prevIndex, obj);
                    break;
                default:
                    list.set(this.prevIndex, obj);
                    break;
            }
        }
    }

    public MutableObjectList(int i) {
        this.content = i == 0 ? ObjectListKt.EmptyArray : new Object[i];
    }

    public final void add(Object obj) {
        int i = this._size + 1;
        Object[] objArr = this.content;
        if (objArr.length < i) {
            resizeStorage(i, objArr);
        }
        Object[] objArr2 = this.content;
        int i2 = this._size;
        objArr2[i2] = obj;
        this._size = i2 + 1;
    }

    public final void addAll(List list) {
        if (list.isEmpty()) {
            return;
        }
        int i = this._size;
        int size = list.size() + i;
        Object[] objArr = this.content;
        if (objArr.length < size) {
            resizeStorage(size, objArr);
        }
        Object[] objArr2 = this.content;
        int size2 = list.size();
        for (int i2 = 0; i2 < size2; i2++) {
            objArr2[i2 + i] = list.get(i2);
        }
        this._size = list.size() + this._size;
    }

    public final void clear() {
        ArraysKt___ArraysKt.fill(0, this._size, null, this.content);
        this._size = 0;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof MutableObjectList) {
            MutableObjectList mutableObjectList = (MutableObjectList) obj;
            int i = mutableObjectList._size;
            int i2 = this._size;
            if (i == i2) {
                Object[] objArr = this.content;
                Object[] objArr2 = mutableObjectList.content;
                IntRange until = RegexKt.until(0, i2);
                int i3 = until.first;
                int i4 = until.last;
                if (i3 > i4) {
                    return true;
                }
                while (Intrinsics.areEqual(objArr[i3], objArr2[i3])) {
                    if (i3 == i4) {
                        return true;
                    }
                    i3++;
                }
                return false;
            }
        }
        return false;
    }

    public final Object first() {
        if (!isEmpty()) {
            return this.content[0];
        }
        Gson$$ExternalSyntheticBUOutline0.m$3("ObjectList is empty.");
        return null;
    }

    public final Object get(int i) {
        if (i >= 0 && i < this._size) {
            return this.content[i];
        }
        throwIndexOutOfBoundsExclusiveException$collection(i);
        throw null;
    }

    public final int hashCode() {
        Object[] objArr = this.content;
        int i = this._size;
        int i2 = 0;
        for (int i3 = 0; i3 < i; i3++) {
            Object obj = objArr[i3];
            i2 += (obj != null ? obj.hashCode() : 0) * 31;
        }
        return i2;
    }

    public final int indexOf(Object obj) {
        Object[] objArr = this.content;
        int i = 0;
        if (obj == null) {
            int i2 = this._size;
            while (i < i2) {
                if (objArr[i] == null) {
                    return i;
                }
                i++;
            }
            return -1;
        }
        int i3 = this._size;
        while (i < i3) {
            if (obj.equals(objArr[i])) {
                return i;
            }
            i++;
        }
        return -1;
    }

    public final boolean isEmpty() {
        return this._size == 0;
    }

    public final boolean isNotEmpty() {
        return this._size != 0;
    }

    public final boolean remove(Object obj) {
        int indexOf = indexOf(obj);
        if (indexOf < 0) {
            return false;
        }
        removeAt(indexOf);
        return true;
    }

    public final Object removeAt(int i) {
        int i2;
        if (i < 0 || i >= (i2 = this._size)) {
            throwIndexOutOfBoundsExclusiveException$collection(i);
            throw null;
        }
        Object[] objArr = this.content;
        Object obj = objArr[i];
        if (i != i2 - 1) {
            ArraysKt___ArraysKt.copyInto(objArr, objArr, i, i + 1, i2);
        }
        int i3 = this._size - 1;
        this._size = i3;
        objArr[i3] = null;
        return obj;
    }

    public final void removeRange(int i, int i2) {
        int i3;
        if (i < 0 || i > (i3 = this._size) || i2 < 0 || i2 > i3) {
            TimeSource$Companion$$ExternalSyntheticLambda0.m(this._size, Animation.CC.m(i, i2, "Start (", ") and end (", ") must be in 0.."));
            return;
        }
        if (i2 < i) {
            throw new IllegalArgumentException("Start (" + i + ") is more than end (" + i2 + ')');
        }
        if (i2 != i) {
            if (i2 < i3) {
                Object[] objArr = this.content;
                ArraysKt___ArraysKt.copyInto(objArr, objArr, i, i2, i3);
            }
            int i4 = this._size;
            int i5 = i4 - (i2 - i);
            ArraysKt___ArraysKt.fill(i5, i4, null, this.content);
            this._size = i5;
        }
    }

    public final void resizeStorage(int i, Object[] objArr) {
        objArr.getClass();
        int length = objArr.length;
        Object[] objArr2 = new Object[Math.max(i, (length * 3) / 2)];
        ArraysKt___ArraysKt.copyInto(objArr, objArr2, 0, 0, length);
        this.content = objArr2;
    }

    public final Object set(int i, Object obj) {
        if (i < 0 || i >= this._size) {
            throwIndexOutOfBoundsExclusiveException$collection(i);
            throw null;
        }
        Object[] objArr = this.content;
        Object obj2 = objArr[i];
        objArr[i] = obj;
        return obj2;
    }

    public final void throwIndexOutOfBoundsExclusiveException$collection(int i) {
        StringBuilder m20m = Animation.CC.m20m(i, "Index ", " must be in 0..");
        m20m.append(this._size - 1);
        throw new IndexOutOfBoundsException(m20m.toString());
    }

    public final void throwIndexOutOfBoundsInclusiveException(int i) {
        StringBuilder m20m = Animation.CC.m20m(i, "Index ", " must be in 0..");
        m20m.append(this._size);
        throw new IndexOutOfBoundsException(m20m.toString());
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append((CharSequence) "[");
        Object[] objArr = this.content;
        int i = this._size;
        int i2 = 0;
        while (true) {
            if (i2 >= i) {
                sb.append((CharSequence) "]");
                break;
            }
            Object obj = objArr[i2];
            if (i2 == -1) {
                sb.append((CharSequence) "...");
                break;
            }
            if (i2 != 0) {
                sb.append((CharSequence) ", ");
            }
            sb.append((CharSequence) (obj == this ? "(this)" : String.valueOf(obj)));
            i2++;
        }
        return sb.toString();
    }

    public /* synthetic */ MutableObjectList() {
        this(16);
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class ObjectListMutableList implements List, KMutableList {
        public final /* synthetic */ int $r8$classId;
        public final Object objectList;

        public /* synthetic */ ObjectListMutableList(int i, Object obj) {
            this.$r8$classId = i;
            this.objectList = obj;
        }

        @Override // java.util.List
        public final void add(int i, Object obj) {
            int i2;
            int i3 = this.$r8$classId;
            Object obj2 = this.objectList;
            switch (i3) {
                case 0:
                    MutableObjectList mutableObjectList = (MutableObjectList) obj2;
                    if (i < 0 || i > (i2 = mutableObjectList._size)) {
                        mutableObjectList.throwIndexOutOfBoundsInclusiveException(i);
                        throw null;
                    }
                    int i4 = i2 + 1;
                    Object[] objArr = mutableObjectList.content;
                    if (objArr.length < i4) {
                        mutableObjectList.resizeStorage(i4, objArr);
                    }
                    Object[] objArr2 = mutableObjectList.content;
                    int i5 = mutableObjectList._size;
                    if (i != i5) {
                        ArraysKt___ArraysKt.copyInto(objArr2, objArr2, i + 1, i, i5);
                    }
                    objArr2[i] = obj;
                    mutableObjectList._size++;
                    return;
                default:
                    ((MutableVector) obj2).add(i, obj);
                    return;
            }
        }

        @Override // java.util.List
        public final boolean addAll(int i, Collection collection) {
            int i2 = this.$r8$classId;
            Object obj = this.objectList;
            switch (i2) {
                case 0:
                    collection.getClass();
                    MutableObjectList mutableObjectList = (MutableObjectList) obj;
                    if (i < 0 || i > mutableObjectList._size) {
                        mutableObjectList.throwIndexOutOfBoundsInclusiveException(i);
                        throw null;
                    }
                    int i3 = 0;
                    if (collection.isEmpty()) {
                        return false;
                    }
                    int size = collection.size() + mutableObjectList._size;
                    Object[] objArr = mutableObjectList.content;
                    if (objArr.length < size) {
                        mutableObjectList.resizeStorage(size, objArr);
                    }
                    Object[] objArr2 = mutableObjectList.content;
                    if (i != mutableObjectList._size) {
                        ArraysKt___ArraysKt.copyInto(objArr2, objArr2, collection.size() + i, i, mutableObjectList._size);
                    }
                    for (Object obj2 : collection) {
                        int i4 = i3 + 1;
                        if (i3 < 0) {
                            Room.throwIndexOverflow();
                            throw null;
                        }
                        objArr2[i3 + i] = obj2;
                        i3 = i4;
                    }
                    mutableObjectList._size = collection.size() + mutableObjectList._size;
                    return true;
                default:
                    return ((MutableVector) obj).addAll(i, collection);
            }
        }

        @Override // java.util.List, java.util.Collection
        public final void clear() {
            int i = this.$r8$classId;
            Object obj = this.objectList;
            switch (i) {
                case 0:
                    ((MutableObjectList) obj).clear();
                    break;
                default:
                    ((MutableVector) obj).clear();
                    break;
            }
        }

        @Override // java.util.List, java.util.Collection
        public final boolean contains(Object obj) {
            int i = this.$r8$classId;
            Object obj2 = this.objectList;
            switch (i) {
                case 0:
                    return ((MutableObjectList) obj2).indexOf(obj) >= 0;
                default:
                    return ((MutableVector) obj2).contains(obj);
            }
        }

        @Override // java.util.List, java.util.Collection
        public final boolean containsAll(Collection collection) {
            int i = this.$r8$classId;
            Object obj = this.objectList;
            switch (i) {
                case 0:
                    collection.getClass();
                    MutableObjectList mutableObjectList = (MutableObjectList) obj;
                    Iterator it = collection.iterator();
                    while (it.hasNext()) {
                        if (mutableObjectList.indexOf(it.next()) < 0) {
                            break;
                        }
                    }
                    break;
                default:
                    MutableVector mutableVector = (MutableVector) obj;
                    Iterator it2 = collection.iterator();
                    while (it2.hasNext()) {
                        if (!mutableVector.contains(it2.next())) {
                            break;
                        }
                    }
                    break;
            }
            return false;
        }

        @Override // java.util.List
        public final Object get(int i) {
            int i2 = this.$r8$classId;
            Object obj = this.objectList;
            switch (i2) {
                case 0:
                    ObjectListKt.checkIndex(this, i);
                    return ((MutableObjectList) obj).get(i);
                default:
                    MutableVectorKt.checkIndex(this, i);
                    return ((MutableVector) obj).content[i];
            }
        }

        @Override // java.util.List
        public final int indexOf(Object obj) {
            int i = this.$r8$classId;
            Object obj2 = this.objectList;
            switch (i) {
                case 0:
                    return ((MutableObjectList) obj2).indexOf(obj);
                default:
                    return ((MutableVector) obj2).indexOf(obj);
            }
        }

        @Override // java.util.List, java.util.Collection
        public final boolean isEmpty() {
            int i = this.$r8$classId;
            Object obj = this.objectList;
            switch (i) {
                case 0:
                    return ((MutableObjectList) obj).isEmpty();
                default:
                    return ((MutableVector) obj).size == 0;
            }
        }

        @Override // java.util.List, java.util.Collection, java.lang.Iterable
        public final Iterator iterator() {
            switch (this.$r8$classId) {
                case 0:
                    return new MutableObjectListIterator(0, 0, this);
                default:
                    return new MutableObjectListIterator(0, 1, this);
            }
        }

        @Override // java.util.List
        public final int lastIndexOf(Object obj) {
            int i;
            int i2 = this.$r8$classId;
            Object obj2 = this.objectList;
            switch (i2) {
                case 0:
                    MutableObjectList mutableObjectList = (MutableObjectList) obj2;
                    Object[] objArr = mutableObjectList.content;
                    int i3 = mutableObjectList._size;
                    if (obj == null) {
                        i = i3 - 1;
                        while (-1 < i) {
                            if (objArr[i] != null) {
                                i--;
                            }
                        }
                        return -1;
                    }
                    i = i3 - 1;
                    while (-1 < i) {
                        if (!obj.equals(objArr[i])) {
                            i--;
                        }
                    }
                    return -1;
                    return i;
                default:
                    MutableVector mutableVector = (MutableVector) obj2;
                    Object[] objArr2 = mutableVector.content;
                    for (int i4 = mutableVector.size - 1; i4 >= 0; i4--) {
                        if (Intrinsics.areEqual(obj, objArr2[i4])) {
                            return i4;
                        }
                    }
                    return -1;
            }
        }

        @Override // java.util.List
        public final ListIterator listIterator() {
            switch (this.$r8$classId) {
                case 0:
                    return new MutableObjectListIterator(0, 0, this);
                default:
                    return new MutableObjectListIterator(0, 1, this);
            }
        }

        @Override // java.util.List
        public final Object remove(int i) {
            int i2 = this.$r8$classId;
            Object obj = this.objectList;
            switch (i2) {
                case 0:
                    ObjectListKt.checkIndex(this, i);
                    return ((MutableObjectList) obj).removeAt(i);
                default:
                    MutableVectorKt.checkIndex(this, i);
                    return ((MutableVector) obj).removeAt(i);
            }
        }

        @Override // java.util.List, java.util.Collection
        public final boolean removeAll(Collection collection) {
            int i = this.$r8$classId;
            Object obj = this.objectList;
            switch (i) {
                case 0:
                    collection.getClass();
                    MutableObjectList mutableObjectList = (MutableObjectList) obj;
                    int i2 = mutableObjectList._size;
                    Iterator it = collection.iterator();
                    while (it.hasNext()) {
                        mutableObjectList.remove(it.next());
                    }
                    if (i2 == mutableObjectList._size) {
                        break;
                    }
                    break;
                default:
                    MutableVector mutableVector = (MutableVector) obj;
                    if (!collection.isEmpty()) {
                        int i3 = mutableVector.size;
                        Iterator it2 = collection.iterator();
                        while (it2.hasNext()) {
                            mutableVector.remove(it2.next());
                        }
                        if (i3 != mutableVector.size) {
                        }
                    }
                    break;
            }
            return false;
        }

        @Override // java.util.List, java.util.Collection
        public final boolean retainAll(Collection collection) {
            int i = this.$r8$classId;
            Object obj = this.objectList;
            switch (i) {
                case 0:
                    collection.getClass();
                    MutableObjectList mutableObjectList = (MutableObjectList) obj;
                    int i2 = mutableObjectList._size;
                    Object[] objArr = mutableObjectList.content;
                    for (int i3 = i2 - 1; -1 < i3; i3--) {
                        if (!collection.contains(objArr[i3])) {
                            mutableObjectList.removeAt(i3);
                        }
                    }
                    if (i2 != mutableObjectList._size) {
                        break;
                    }
                    break;
                default:
                    MutableVector mutableVector = (MutableVector) obj;
                    int i4 = mutableVector.size;
                    for (int i5 = i4 - 1; -1 < i5; i5--) {
                        if (!collection.contains(mutableVector.content[i5])) {
                            mutableVector.removeAt(i5);
                        }
                    }
                    if (i4 != mutableVector.size) {
                        break;
                    }
                    break;
            }
            return true;
        }

        @Override // java.util.List
        public final Object set(int i, Object obj) {
            int i2 = this.$r8$classId;
            Object obj2 = this.objectList;
            switch (i2) {
                case 0:
                    ObjectListKt.checkIndex(this, i);
                    return ((MutableObjectList) obj2).set(i, obj);
                default:
                    MutableVectorKt.checkIndex(this, i);
                    Object[] objArr = ((MutableVector) obj2).content;
                    Object obj3 = objArr[i];
                    objArr[i] = obj;
                    return obj3;
            }
        }

        @Override // java.util.List, java.util.Collection
        public final int size() {
            int i = this.$r8$classId;
            Object obj = this.objectList;
            switch (i) {
                case 0:
                    return ((MutableObjectList) obj)._size;
                default:
                    return ((MutableVector) obj).size;
            }
        }

        @Override // java.util.List
        public final List subList(int i, int i2) {
            switch (this.$r8$classId) {
                case 0:
                    ObjectListKt.checkSubIndex(i, i2, this);
                    return new SubList(i, i2, 0, this);
                default:
                    MutableVectorKt.checkSubIndex(i, i2, this);
                    return new SubList(i, i2, 1, this);
            }
        }

        @Override // java.util.List, java.util.Collection
        public final Object[] toArray(Object[] objArr) {
            switch (this.$r8$classId) {
                case 0:
                    objArr.getClass();
                    break;
            }
            return Intrinsics.Kotlin.toArray(this, objArr);
        }

        @Override // java.util.List, java.util.Collection
        public final Object[] toArray() {
            switch (this.$r8$classId) {
            }
            return Intrinsics.Kotlin.toArray(this);
        }

        @Override // java.util.List
        public final ListIterator listIterator(int i) {
            switch (this.$r8$classId) {
                case 0:
                    return new MutableObjectListIterator(i, 0, this);
                default:
                    return new MutableObjectListIterator(i, 1, this);
            }
        }

        @Override // java.util.List, java.util.Collection
        public final boolean remove(Object obj) {
            int i = this.$r8$classId;
            Object obj2 = this.objectList;
            switch (i) {
                case 0:
                    return ((MutableObjectList) obj2).remove(obj);
                default:
                    return ((MutableVector) obj2).remove(obj);
            }
        }

        @Override // java.util.List, java.util.Collection
        public final boolean add(Object obj) {
            int i = this.$r8$classId;
            Object obj2 = this.objectList;
            switch (i) {
                case 0:
                    ((MutableObjectList) obj2).add(obj);
                    break;
                default:
                    ((MutableVector) obj2).add(obj);
                    break;
            }
            return true;
        }

        @Override // java.util.List, java.util.Collection
        public final boolean addAll(Collection collection) {
            int i = this.$r8$classId;
            Object obj = this.objectList;
            switch (i) {
                case 0:
                    collection.getClass();
                    MutableObjectList mutableObjectList = (MutableObjectList) obj;
                    int i2 = mutableObjectList._size;
                    Iterator it = collection.iterator();
                    while (it.hasNext()) {
                        mutableObjectList.add(it.next());
                    }
                    return i2 != mutableObjectList._size;
                default:
                    MutableVector mutableVector = (MutableVector) obj;
                    return mutableVector.addAll(mutableVector.size, collection);
            }
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class SubList implements List, KMutableList {
        public final /* synthetic */ int $r8$classId;
        public int end;
        public final List list;
        public final int start;

        public /* synthetic */ SubList(int i, int i2, int i3, List list) {
            this.$r8$classId = i3;
            this.list = list;
            this.start = i;
            this.end = i2;
        }

        @Override // java.util.List
        public final void add(int i, Object obj) {
            int i2 = this.$r8$classId;
            int i3 = this.start;
            List list = this.list;
            switch (i2) {
                case 0:
                    list.add(i + i3, obj);
                    this.end++;
                    break;
                default:
                    list.add(i + i3, obj);
                    this.end++;
                    break;
            }
        }

        @Override // java.util.List
        public final boolean addAll(int i, Collection collection) {
            int i2 = this.$r8$classId;
            int i3 = this.start;
            List list = this.list;
            switch (i2) {
                case 0:
                    collection.getClass();
                    list.addAll(i + i3, collection);
                    this.end = collection.size() + this.end;
                    if (collection.size() > 0) {
                        break;
                    }
                    break;
                default:
                    list.addAll(i + i3, collection);
                    int size = collection.size();
                    this.end += size;
                    if (size > 0) {
                        break;
                    }
                    break;
            }
            return true;
        }

        @Override // java.util.List, java.util.Collection
        public final void clear() {
            int i = this.$r8$classId;
            List list = this.list;
            int i2 = this.start;
            switch (i) {
                case 0:
                    int i3 = this.end - 1;
                    if (i2 <= i3) {
                        while (true) {
                            list.remove(i3);
                            if (i3 != i2) {
                                i3--;
                            }
                        }
                    }
                    this.end = i2;
                    break;
                default:
                    int i4 = this.end - 1;
                    if (i2 <= i4) {
                        while (true) {
                            list.remove(i4);
                            if (i4 != i2) {
                                i4--;
                            }
                        }
                    }
                    this.end = i2;
                    break;
            }
        }

        @Override // java.util.List, java.util.Collection
        public final boolean contains(Object obj) {
            int i = this.$r8$classId;
            List list = this.list;
            int i2 = this.start;
            switch (i) {
                case 0:
                    int i3 = this.end;
                    while (i2 < i3) {
                        if (Intrinsics.areEqual(list.get(i2), obj)) {
                            break;
                        } else {
                            i2++;
                        }
                    }
                    break;
                default:
                    int i4 = this.end;
                    while (i2 < i4) {
                        if (Intrinsics.areEqual(list.get(i2), obj)) {
                            break;
                        } else {
                            i2++;
                        }
                    }
                    break;
            }
            return true;
        }

        @Override // java.util.List, java.util.Collection
        public final boolean containsAll(Collection collection) {
            switch (this.$r8$classId) {
                case 0:
                    collection.getClass();
                    Iterator it = collection.iterator();
                    while (it.hasNext()) {
                        if (!contains(it.next())) {
                            break;
                        }
                    }
                    break;
                default:
                    Iterator it2 = collection.iterator();
                    while (it2.hasNext()) {
                        if (!contains(it2.next())) {
                            break;
                        }
                    }
                    break;
            }
            return false;
        }

        @Override // java.util.List
        public final Object get(int i) {
            int i2 = this.$r8$classId;
            int i3 = this.start;
            List list = this.list;
            switch (i2) {
                case 0:
                    ObjectListKt.checkIndex(this, i);
                    break;
                default:
                    MutableVectorKt.checkIndex(this, i);
                    break;
            }
            return list.get(i + i3);
        }

        @Override // java.util.List
        public final int indexOf(Object obj) {
            int i = this.$r8$classId;
            List list = this.list;
            int i2 = this.start;
            switch (i) {
                case 0:
                    int i3 = this.end;
                    for (int i4 = i2; i4 < i3; i4++) {
                        if (Intrinsics.areEqual(list.get(i4), obj)) {
                            return i4 - i2;
                        }
                    }
                    return -1;
                default:
                    int i5 = this.end;
                    for (int i6 = i2; i6 < i5; i6++) {
                        if (Intrinsics.areEqual(list.get(i6), obj)) {
                            return i6 - i2;
                        }
                    }
                    return -1;
            }
        }

        @Override // java.util.List, java.util.Collection
        public final boolean isEmpty() {
            switch (this.$r8$classId) {
                case 0:
                    if (this.end == this.start) {
                    }
                    break;
                default:
                    if (this.end == this.start) {
                    }
                    break;
            }
            return false;
        }

        @Override // java.util.List, java.util.Collection, java.lang.Iterable
        public final Iterator iterator() {
            switch (this.$r8$classId) {
                case 0:
                    return new MutableObjectListIterator(0, 0, this);
                default:
                    return new MutableObjectListIterator(0, 1, this);
            }
        }

        @Override // java.util.List
        public final int lastIndexOf(Object obj) {
            int i = this.$r8$classId;
            List list = this.list;
            int i2 = this.start;
            switch (i) {
                case 0:
                    int i3 = this.end - 1;
                    if (i2 <= i3) {
                        while (!Intrinsics.areEqual(list.get(i3), obj)) {
                            if (i3 == i2) {
                                break;
                            } else {
                                i3--;
                            }
                        }
                        break;
                    }
                    break;
                default:
                    int i4 = this.end - 1;
                    if (i2 <= i4) {
                        while (!Intrinsics.areEqual(list.get(i4), obj)) {
                            if (i4 == i2) {
                                break;
                            } else {
                                i4--;
                            }
                        }
                        break;
                    }
                    break;
            }
            return -1;
        }

        @Override // java.util.List
        public final ListIterator listIterator() {
            switch (this.$r8$classId) {
                case 0:
                    return new MutableObjectListIterator(0, 0, this);
                default:
                    return new MutableObjectListIterator(0, 1, this);
            }
        }

        @Override // java.util.List, java.util.Collection
        public final boolean remove(Object obj) {
            int i = this.$r8$classId;
            int i2 = this.start;
            List list = this.list;
            switch (i) {
                case 0:
                    int i3 = this.end;
                    while (i2 < i3) {
                        if (Intrinsics.areEqual(list.get(i2), obj)) {
                            list.remove(i2);
                            this.end--;
                            break;
                        } else {
                            i2++;
                        }
                    }
                    break;
                default:
                    int i4 = this.end;
                    while (i2 < i4) {
                        if (Intrinsics.areEqual(list.get(i2), obj)) {
                            list.remove(i2);
                            this.end--;
                            break;
                        } else {
                            i2++;
                        }
                    }
                    break;
            }
            return true;
        }

        @Override // java.util.List, java.util.Collection
        public final boolean removeAll(Collection collection) {
            switch (this.$r8$classId) {
                case 0:
                    collection.getClass();
                    int i = this.end;
                    Iterator it = collection.iterator();
                    while (it.hasNext()) {
                        remove(it.next());
                    }
                    if (i != this.end) {
                        break;
                    }
                    break;
                default:
                    int i2 = this.end;
                    Iterator it2 = collection.iterator();
                    while (it2.hasNext()) {
                        remove(it2.next());
                    }
                    if (i2 != this.end) {
                        break;
                    }
                    break;
            }
            return true;
        }

        @Override // java.util.List, java.util.Collection
        public final boolean retainAll(Collection collection) {
            int i = this.$r8$classId;
            int i2 = this.start;
            List list = this.list;
            switch (i) {
                case 0:
                    collection.getClass();
                    int i3 = this.end;
                    int i4 = i3 - 1;
                    if (i2 <= i4) {
                        while (true) {
                            if (!collection.contains(list.get(i4))) {
                                list.remove(i4);
                                this.end--;
                            }
                            if (i4 != i2) {
                                i4--;
                            }
                        }
                    }
                    if (i3 != this.end) {
                        break;
                    }
                    break;
                default:
                    int i5 = this.end;
                    int i6 = i5 - 1;
                    if (i2 <= i6) {
                        while (true) {
                            if (!collection.contains(list.get(i6))) {
                                list.remove(i6);
                                this.end--;
                            }
                            if (i6 != i2) {
                                i6--;
                            }
                        }
                    }
                    if (i5 != this.end) {
                        break;
                    }
                    break;
            }
            return true;
        }

        @Override // java.util.List
        public final Object set(int i, Object obj) {
            int i2 = this.$r8$classId;
            int i3 = this.start;
            List list = this.list;
            switch (i2) {
                case 0:
                    ObjectListKt.checkIndex(this, i);
                    break;
                default:
                    MutableVectorKt.checkIndex(this, i);
                    break;
            }
            return list.set(i + i3, obj);
        }

        @Override // java.util.List, java.util.Collection
        public final int size() {
            int i;
            int i2;
            switch (this.$r8$classId) {
                case 0:
                    i = this.end;
                    i2 = this.start;
                    break;
                default:
                    i = this.end;
                    i2 = this.start;
                    break;
            }
            return i - i2;
        }

        @Override // java.util.List
        public final List subList(int i, int i2) {
            switch (this.$r8$classId) {
                case 0:
                    ObjectListKt.checkSubIndex(i, i2, this);
                    return new SubList(i, i2, 0, this);
                default:
                    MutableVectorKt.checkSubIndex(i, i2, this);
                    return new SubList(i, i2, 1, this);
            }
        }

        @Override // java.util.List, java.util.Collection
        public final Object[] toArray(Object[] objArr) {
            switch (this.$r8$classId) {
                case 0:
                    objArr.getClass();
                    break;
            }
            return Intrinsics.Kotlin.toArray(this, objArr);
        }

        @Override // java.util.List, java.util.Collection
        public final Object[] toArray() {
            switch (this.$r8$classId) {
            }
            return Intrinsics.Kotlin.toArray(this);
        }

        @Override // java.util.List
        public final ListIterator listIterator(int i) {
            switch (this.$r8$classId) {
                case 0:
                    return new MutableObjectListIterator(i, 0, this);
                default:
                    return new MutableObjectListIterator(i, 1, this);
            }
        }

        @Override // java.util.List, java.util.Collection
        public final boolean add(Object obj) {
            int i = this.$r8$classId;
            List list = this.list;
            switch (i) {
                case 0:
                    int i2 = this.end;
                    this.end = i2 + 1;
                    list.add(i2, obj);
                    break;
                default:
                    int i3 = this.end;
                    this.end = i3 + 1;
                    list.add(i3, obj);
                    break;
            }
            return true;
        }

        @Override // java.util.List, java.util.Collection
        public final boolean addAll(Collection collection) {
            int i = this.$r8$classId;
            List list = this.list;
            switch (i) {
                case 0:
                    collection.getClass();
                    list.addAll(this.end, collection);
                    this.end = collection.size() + this.end;
                    if (collection.size() > 0) {
                        break;
                    }
                    break;
                default:
                    list.addAll(this.end, collection);
                    int size = collection.size();
                    this.end += size;
                    if (size > 0) {
                        break;
                    }
                    break;
            }
            return true;
        }

        @Override // java.util.List
        public final Object remove(int i) {
            int i2 = this.$r8$classId;
            int i3 = this.start;
            List list = this.list;
            switch (i2) {
                case 0:
                    ObjectListKt.checkIndex(this, i);
                    this.end--;
                    return list.remove(i + i3);
                default:
                    MutableVectorKt.checkIndex(this, i);
                    this.end--;
                    return list.remove(i + i3);
            }
        }
    }

    public final void addAll(MutableObjectList mutableObjectList) {
        mutableObjectList.getClass();
        if (mutableObjectList.isEmpty()) {
            return;
        }
        int i = this._size + mutableObjectList._size;
        Object[] objArr = this.content;
        if (objArr.length < i) {
            resizeStorage(i, objArr);
        }
        ArraysKt___ArraysKt.copyInto(mutableObjectList.content, this.content, this._size, 0, mutableObjectList._size);
        this._size += mutableObjectList._size;
    }
}
