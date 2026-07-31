package androidx.lifecycle;

import coil3.util.UtilsKt;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.jvm.internal.Reflection;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class ViewModelStore {
    public final LinkedHashMap map = new LinkedHashMap();

    public final void clear() {
        LinkedHashMap linkedHashMap = this.map;
        Map map = MapsKt__MapsKt.toMap(linkedHashMap);
        linkedHashMap.clear();
        Iterator it = map.values().iterator();
        while (it.hasNext()) {
            ((ViewModel) it.next()).clear$lifecycle_viewmodel();
        }
    }

    public final String toString() {
        String simpleName = Reflection.factory.getOrCreateKotlinClass(ViewModelStore.class).getSimpleName();
        if (simpleName == null) {
            simpleName = "ViewModelStore";
        }
        int hashCode = hashCode();
        UtilsKt.checkRadix(16);
        String num = Integer.toString(hashCode, 16);
        num.getClass();
        return simpleName + "@" + num + "(keys=" + CollectionsKt.toSet(this.map.keySet()) + ")";
    }
}
