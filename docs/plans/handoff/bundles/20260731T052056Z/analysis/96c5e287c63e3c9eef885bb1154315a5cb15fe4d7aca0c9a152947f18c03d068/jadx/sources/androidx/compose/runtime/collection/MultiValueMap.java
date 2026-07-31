package androidx.compose.runtime.collection;

import androidx.collection.MutableObjectList;
import androidx.collection.MutableScatterMap;
import androidx.collection.ObjectListKt;
import com.google.gson.Gson$$ExternalSyntheticBUOutline0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class MultiValueMap {
    public final MutableScatterMap map;

    /* renamed from: removeLast-impl, reason: not valid java name */
    public static final Object m328removeLastimpl(MutableScatterMap mutableScatterMap) {
        Object obj = mutableScatterMap.get(null);
        if (obj == null) {
            return null;
        }
        if (!(obj instanceof MutableObjectList)) {
            mutableScatterMap.remove(null);
            return obj;
        }
        MutableObjectList mutableObjectList = (MutableObjectList) obj;
        if (mutableObjectList.isEmpty()) {
            Gson$$ExternalSyntheticBUOutline0.m$3("List is empty.");
            return null;
        }
        int i = mutableObjectList._size - 1;
        Object obj2 = mutableObjectList.get(i);
        mutableObjectList.removeAt(i);
        obj2.getClass();
        if (mutableObjectList.isEmpty()) {
            mutableScatterMap.remove(null);
        }
        if (mutableObjectList._size == 1) {
            mutableScatterMap.set(null, mutableObjectList.first());
        }
        return obj2;
    }

    /* renamed from: values-impl, reason: not valid java name */
    public static final MutableObjectList m329valuesimpl(MutableScatterMap mutableScatterMap) {
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
