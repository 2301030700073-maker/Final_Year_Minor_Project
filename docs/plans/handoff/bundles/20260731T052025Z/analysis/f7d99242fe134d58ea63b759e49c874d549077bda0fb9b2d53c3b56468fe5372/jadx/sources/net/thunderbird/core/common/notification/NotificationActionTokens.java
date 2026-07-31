package net.thunderbird.core.common.notification;

import androidx.compose.ui.unit.IntOffsetKt;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import kotlin.Pair;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt__MapsKt;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class NotificationActionTokens {
    public static final List DEFAULT_ORDER = IntOffsetKt.listOf((Object[]) new String[]{"reply", "mark_as_read", "delete", "star", "archive", "spam"});

    public static List normalizeOrder(List list, List list2) {
        list.getClass();
        Map map = MapsKt__MapsKt.toMap(list2);
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            Object obj = map.get((String) it.next());
            if (obj != null) {
                linkedHashSet.add(obj);
            }
        }
        Iterator it2 = list2.iterator();
        while (it2.hasNext()) {
            linkedHashSet.add(((Pair) it2.next()).second);
        }
        return CollectionsKt.toList(linkedHashSet);
    }
}
