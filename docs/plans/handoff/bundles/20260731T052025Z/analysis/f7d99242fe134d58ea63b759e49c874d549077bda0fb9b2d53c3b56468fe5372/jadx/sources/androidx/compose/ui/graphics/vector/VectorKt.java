package androidx.compose.ui.graphics.vector;

import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.platform.WeakCache;
import java.util.ArrayList;
import java.util.List;
import kotlin.collections.EmptyList;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class VectorKt {
    public static final /* synthetic */ int $r8$clinit = 0;

    static {
        int i = Color.$r8$clinit;
    }

    public static final List addPathNodes(String str) {
        if (str != null) {
            WeakCache weakCache = new WeakCache(4);
            ArrayList arrayList = (ArrayList) weakCache.values;
            if (arrayList == null) {
                arrayList = new ArrayList();
                weakCache.values = arrayList;
            } else {
                arrayList.clear();
            }
            weakCache.pathStringToNodes(str, arrayList);
            ArrayList arrayList2 = (ArrayList) weakCache.values;
            if (arrayList2 != null) {
                return arrayList2;
            }
        }
        return EmptyList.INSTANCE;
    }
}
