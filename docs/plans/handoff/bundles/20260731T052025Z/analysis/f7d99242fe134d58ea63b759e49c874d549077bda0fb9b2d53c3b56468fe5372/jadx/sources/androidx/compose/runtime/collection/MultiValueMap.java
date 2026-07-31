package androidx.compose.runtime.collection;

import androidx.collection.MutableObjectList;
import androidx.collection.MutableScatterMap;
import androidx.collection.ObjectListKt;
import androidx.compose.runtime.MovableContent;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.jvm.functions.Function1;
import kotlin.ranges.IntRange;
import kotlin.ranges.RangesKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class MultiValueMap {
    public final MutableScatterMap map;

    public /* synthetic */ MultiValueMap(MutableScatterMap mutableScatterMap) {
        this.map = mutableScatterMap;
    }

    /* renamed from: add-impl, reason: not valid java name */
    public static final void m381addimpl(MutableScatterMap mutableScatterMap, Object obj, Object obj2) {
        int findInsertIndex = mutableScatterMap.findInsertIndex(obj);
        boolean z = findInsertIndex < 0;
        Object obj3 = z ? null : mutableScatterMap.values[findInsertIndex];
        if (obj3 != null) {
            if (obj3 instanceof MutableObjectList) {
                MutableObjectList mutableObjectList = (MutableObjectList) obj3;
                mutableObjectList.add(obj2);
                obj2 = mutableObjectList;
            } else {
                Object[] objArr = ObjectListKt.EmptyArray;
                MutableObjectList mutableObjectList2 = new MutableObjectList(2);
                mutableObjectList2.add(obj3);
                mutableObjectList2.add(obj2);
                obj2 = mutableObjectList2;
            }
        }
        if (!z) {
            mutableScatterMap.values[findInsertIndex] = obj2;
            return;
        }
        int i = ~findInsertIndex;
        mutableScatterMap.keys[i] = obj;
        mutableScatterMap.values[i] = obj2;
    }

    /* renamed from: removeLast-impl, reason: not valid java name */
    public static final Object m382removeLastimpl(MutableScatterMap mutableScatterMap, MovableContent movableContent) {
        Object obj = mutableScatterMap.get(movableContent);
        if (obj == null) {
            return null;
        }
        if (!(obj instanceof MutableObjectList)) {
            mutableScatterMap.remove(movableContent);
            return obj;
        }
        MutableObjectList mutableObjectList = (MutableObjectList) obj;
        if (mutableObjectList.isEmpty()) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m("List is empty.");
            return null;
        }
        int i = mutableObjectList._size - 1;
        Object obj2 = mutableObjectList.get(i);
        mutableObjectList.removeAt(i);
        obj2.getClass();
        if (mutableObjectList.isEmpty()) {
            mutableScatterMap.remove(movableContent);
        }
        if (mutableObjectList._size == 1) {
            mutableScatterMap.set(movableContent, mutableObjectList.first());
        }
        return obj2;
    }

    /* renamed from: removeValueIf-impl, reason: not valid java name */
    public static final void m383removeValueIfimpl(MutableScatterMap mutableScatterMap, MovableContent movableContent, Function1 function1) {
        Object obj = mutableScatterMap.get(movableContent);
        if (obj != null) {
            if (!(obj instanceof MutableObjectList)) {
                if (((Boolean) function1.invoke(obj)).booleanValue()) {
                    mutableScatterMap.remove(movableContent);
                    return;
                }
                return;
            }
            MutableObjectList mutableObjectList = (MutableObjectList) obj;
            int i = mutableObjectList._size;
            Object[] objArr = mutableObjectList.content;
            int i2 = 0;
            IntRange until = RangesKt.until(0, i);
            int i3 = until.first;
            int i4 = until.last;
            if (i3 <= i4) {
                while (true) {
                    objArr[i3 - i2] = objArr[i3];
                    if (((Boolean) function1.invoke(objArr[i3])).booleanValue()) {
                        i2++;
                    }
                    if (i3 == i4) {
                        break;
                    } else {
                        i3++;
                    }
                }
            }
            ArraysKt___ArraysKt.fill(i - i2, i, null, objArr);
            mutableObjectList._size -= i2;
            if (mutableObjectList.isEmpty()) {
                mutableScatterMap.remove(movableContent);
            }
            if (mutableObjectList._size == 1) {
                mutableScatterMap.set(movableContent, mutableObjectList.first());
            }
        }
    }

    /* renamed from: values-impl, reason: not valid java name */
    public static final MutableObjectList m384valuesimpl(MutableScatterMap mutableScatterMap) {
        if (mutableScatterMap.isEmpty()) {
            MutableObjectList mutableObjectList = ObjectListKt.EmptyObjectList;
            mutableObjectList.getClass();
            return mutableObjectList;
        }
        MutableObjectList mutableObjectList2 = new MutableObjectList();
        Object[] objArr = mutableScatterMap.values;
        long[] jArr = mutableScatterMap.metadata;
        int length = jArr.length - 2;
        if (length >= 0) {
            int i = 0;
            while (true) {
                long j = jArr[i];
                if ((((~j) << 7) & j & (-9187201950435737472L)) != -9187201950435737472L) {
                    int i2 = 8 - ((~(i - length)) >>> 31);
                    for (int i3 = 0; i3 < i2; i3++) {
                        if ((255 & j) < 128) {
                            Object obj = objArr[(i << 3) + i3];
                            if (obj instanceof MutableObjectList) {
                                mutableObjectList2.addAll((MutableObjectList) obj);
                            } else {
                                obj.getClass();
                                mutableObjectList2.add(obj);
                            }
                        }
                        j >>= 8;
                    }
                    if (i2 != 8) {
                        break;
                    }
                }
                if (i == length) {
                    break;
                }
                i++;
            }
        }
        return mutableObjectList2;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof MultiValueMap) {
            return this.map.equals(((MultiValueMap) obj).map);
        }
        return false;
    }

    public final int hashCode() {
        return this.map.hashCode();
    }

    public final String toString() {
        return "MultiValueMap(map=" + this.map + ')';
    }
}
