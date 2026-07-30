package androidx.compose.runtime;

import androidx.collection.MutableScatterMap;
import ch.qos.logback.core.CoreConstants;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.TypeIntrinsics;

/* compiled from: Composer.kt */
/* loaded from: classes.dex */
final class MutableScatterMultiMap {
    private final MutableScatterMap map;

    /* renamed from: box-impl, reason: not valid java name */
    public static final /* synthetic */ MutableScatterMultiMap m1028boximpl(MutableScatterMap mutableScatterMap) {
        return new MutableScatterMultiMap(mutableScatterMap);
    }

    /* renamed from: constructor-impl, reason: not valid java name */
    public static MutableScatterMap m1029constructorimpl(MutableScatterMap mutableScatterMap) {
        return mutableScatterMap;
    }

    /* renamed from: equals-impl, reason: not valid java name */
    public static boolean m1030equalsimpl(MutableScatterMap mutableScatterMap, Object obj) {
        return (obj instanceof MutableScatterMultiMap) && Intrinsics.areEqual(mutableScatterMap, ((MutableScatterMultiMap) obj).m1035unboximpl());
    }

    /* renamed from: hashCode-impl, reason: not valid java name */
    public static int m1031hashCodeimpl(MutableScatterMap mutableScatterMap) {
        return mutableScatterMap.hashCode();
    }

    /* renamed from: toString-impl, reason: not valid java name */
    public static String m1034toStringimpl(MutableScatterMap mutableScatterMap) {
        return "MutableScatterMultiMap(map=" + mutableScatterMap + CoreConstants.RIGHT_PARENTHESIS_CHAR;
    }

    public boolean equals(Object obj) {
        return m1030equalsimpl(this.map, obj);
    }

    public int hashCode() {
        return m1031hashCodeimpl(this.map);
    }

    public String toString() {
        return m1034toStringimpl(this.map);
    }

    /* renamed from: unbox-impl, reason: not valid java name */
    public final /* synthetic */ MutableScatterMap m1035unboximpl() {
        return this.map;
    }

    /* renamed from: put-impl, reason: not valid java name */
    public static final void m1033putimpl(MutableScatterMap mutableScatterMap, Object obj, Object obj2) {
        int findInsertIndex = mutableScatterMap.findInsertIndex(obj);
        boolean z = findInsertIndex < 0;
        Object obj3 = z ? null : mutableScatterMap.values[findInsertIndex];
        if (obj3 != null) {
            if (TypeIntrinsics.isMutableList(obj3)) {
                Intrinsics.checkNotNull(obj3, "null cannot be cast to non-null type kotlin.collections.MutableList<V of androidx.compose.runtime.MutableScatterMultiMap.put_impl$lambda$0>");
                List asMutableList = TypeIntrinsics.asMutableList(obj3);
                asMutableList.add(obj2);
                obj2 = asMutableList;
            } else {
                obj2 = CollectionsKt.mutableListOf(obj3, obj2);
            }
        }
        if (z) {
            int i = ~findInsertIndex;
            mutableScatterMap.keys[i] = obj;
            mutableScatterMap.values[i] = obj2;
            return;
        }
        mutableScatterMap.values[findInsertIndex] = obj2;
    }

    private /* synthetic */ MutableScatterMultiMap(MutableScatterMap mutableScatterMap) {
        this.map = mutableScatterMap;
    }

    /* renamed from: pop-impl, reason: not valid java name */
    public static final Object m1032popimpl(MutableScatterMap mutableScatterMap, Object obj) {
        Object obj2 = mutableScatterMap.get(obj);
        if (obj2 == null) {
            return null;
        }
        if (TypeIntrinsics.isMutableList(obj2)) {
            List asMutableList = TypeIntrinsics.asMutableList(obj2);
            Object remove = asMutableList.remove(0);
            if (asMutableList.isEmpty()) {
                mutableScatterMap.remove(obj);
            }
            obj2 = remove;
        } else {
            mutableScatterMap.remove(obj);
        }
        Intrinsics.checkNotNull(obj2, "null cannot be cast to non-null type V of androidx.compose.runtime.MutableScatterMultiMap.pop_impl$lambda$1");
        return obj2;
    }
}
