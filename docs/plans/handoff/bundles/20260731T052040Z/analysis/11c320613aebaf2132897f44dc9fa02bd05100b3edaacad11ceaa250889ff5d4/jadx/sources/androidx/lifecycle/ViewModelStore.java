package androidx.lifecycle;

import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.jvm.internal.Reflection;
import kotlin.text.CharsKt;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
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
        String simpleName = Reflection.getOrCreateKotlinClass(ViewModelStore.class).getSimpleName();
        if (simpleName == null) {
            simpleName = "ViewModelStore";
        }
        int hashCode = hashCode();
        CharsKt.checkRadix(16);
        String num = Integer.toString(hashCode, 16);
        num.getClass();
        return simpleName + "@" + num + "(keys=" + CollectionsKt.toSet(this.map.keySet()) + ")";
    }
}
