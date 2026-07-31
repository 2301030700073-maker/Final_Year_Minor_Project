package androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableList;

import androidx.compose.runtime.snapshots.SnapshotStateList$$ExternalSyntheticLambda0;
import androidx.room.util.SchemaInfoUtilKt;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.ListIterator;
import kotlin.collections.ArraysKt___ArraysKt;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class SmallPersistentVector extends AbstractPersistentList {
    public static final SmallPersistentVector EMPTY = new SmallPersistentVector(new Object[0]);
    public final Object[] buffer;

    public SmallPersistentVector(Object[] objArr) {
        this.buffer = objArr;
    }

    @Override // androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableList.AbstractPersistentList, java.util.List
    public final AbstractPersistentList add(int i, Object obj) {
        Object[] objArr = this.buffer;
        SchemaInfoUtilKt.checkPositionIndex$runtime(i, objArr.length);
        if (i == objArr.length) {
            return add(obj);
        }
        if (objArr.length < 32) {
            Object[] objArr2 = new Object[objArr.length + 1];
            ArraysKt___ArraysKt.copyInto$default(objArr, objArr2, 0, i, 6);
            ArraysKt___ArraysKt.copyInto(objArr, objArr2, i + 1, i, objArr.length);
            objArr2[i] = obj;
            return new SmallPersistentVector(objArr2);
        }
        Object[] copyOf = Arrays.copyOf(objArr, objArr.length);
        ArraysKt___ArraysKt.copyInto(objArr, copyOf, i + 1, i, objArr.length - 1);
        copyOf[i] = obj;
        Object[] objArr3 = new Object[32];
        objArr3[0] = objArr[31];
        return new PersistentVector(copyOf, objArr3, objArr.length + 1, 0);
    }

    @Override // androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableList.AbstractPersistentList, java.util.Collection, java.util.List
    public final AbstractPersistentList addAll(Collection collection) {
        Object[] objArr = this.buffer;
        if (collection.size() + objArr.length > 32) {
            PersistentVectorBuilder builder = builder();
            builder.addAll(collection);
            return builder.build();
        }
        Object[] copyOf = Arrays.copyOf(objArr, collection.size() + objArr.length);
        int length = objArr.length;
        Iterator it = collection.iterator();
        while (it.hasNext()) {
            copyOf[length] = it.next();
            length++;
        }
        return new SmallPersistentVector(copyOf);
    }

    @Override // androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableList.AbstractPersistentList
    public final PersistentVectorBuilder builder() {
        return new PersistentVectorBuilder(this, null, this.buffer, 0);
    }

    @Override // java.util.List
    public final Object get(int i) {
        Object[] objArr = this.buffer;
        SchemaInfoUtilKt.checkElementIndex$runtime(i, objArr.length);
        return objArr[i];
    }

    @Override // kotlin.collections.AbstractCollection
    public final int getSize() {
        return this.buffer.length;
    }

    @Override // kotlin.collections.AbstractList, java.util.List
    public final int indexOf(Object obj) {
        return ArraysKt___ArraysKt.indexOf(this.buffer, obj);
    }

    @Override // kotlin.collections.AbstractList, java.util.List
    public final int lastIndexOf(Object obj) {
        return ArraysKt___ArraysKt.lastIndexOf(this.buffer, obj);
    }

    @Override // kotlin.collections.AbstractList, java.util.List
    public final ListIterator listIterator(int i) {
        Object[] objArr = this.buffer;
        SchemaInfoUtilKt.checkPositionIndex$runtime(i, objArr.length);
        return new BufferIterator(objArr, i, objArr.length);
    }

    @Override // androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableList.AbstractPersistentList
    public final AbstractPersistentList removeAll(SnapshotStateList$$ExternalSyntheticLambda0 snapshotStateList$$ExternalSyntheticLambda0) {
        Object[] objArr = this.buffer;
        int length = objArr.length;
        int length2 = objArr.length;
        Object[] objArr2 = objArr;
        boolean z = false;
        for (int i = 0; i < length2; i++) {
            Object obj = objArr[i];
            if (((Boolean) snapshotStateList$$ExternalSyntheticLambda0.invoke(obj)).booleanValue()) {
                if (!z) {
                    objArr2 = Arrays.copyOf(objArr, objArr.length);
                    z = true;
                    length = i;
                }
            } else if (z) {
                objArr2[length] = obj;
                length++;
            }
        }
        return length == objArr.length ? this : length == 0 ? EMPTY : new SmallPersistentVector(ArraysKt___ArraysKt.copyOfRange(objArr2, 0, length));
    }

    @Override // androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableList.AbstractPersistentList
    public final AbstractPersistentList removeAt(int i) {
        Object[] objArr = this.buffer;
        SchemaInfoUtilKt.checkElementIndex$runtime(i, objArr.length);
        if (objArr.length == 1) {
            return EMPTY;
        }
        Object[] copyOf = Arrays.copyOf(objArr, objArr.length - 1);
        ArraysKt___ArraysKt.copyInto(objArr, copyOf, i, i + 1, objArr.length);
        return new SmallPersistentVector(copyOf);
    }

    @Override // androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableList.AbstractPersistentList, kotlin.collections.AbstractList, java.util.List
    public final AbstractPersistentList set(int i, Object obj) {
        Object[] objArr = this.buffer;
        SchemaInfoUtilKt.checkElementIndex$runtime(i, objArr.length);
        Object[] copyOf = Arrays.copyOf(objArr, objArr.length);
        copyOf[i] = obj;
        return new SmallPersistentVector(copyOf);
    }

    @Override // androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableList.AbstractPersistentList, java.util.Collection, java.util.List
    public final AbstractPersistentList add(Object obj) {
        Object[] objArr = this.buffer;
        if (objArr.length < 32) {
            Object[] copyOf = Arrays.copyOf(objArr, objArr.length + 1);
            copyOf[objArr.length] = obj;
            return new SmallPersistentVector(copyOf);
        }
        Object[] objArr2 = new Object[32];
        objArr2[0] = obj;
        return new PersistentVector(objArr, objArr2, objArr.length + 1, 0);
    }
}
