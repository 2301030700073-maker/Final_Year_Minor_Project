package androidx.compose.ui.text.font;

import androidx.collection.LruCache;
import androidx.collection.MutableScatterMap;
import androidx.collection.ScatterMapKt;
import androidx.compose.ui.platform.WeakCache;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class FontFamilyResolverKt {
    public static final WeakCache GlobalTypefaceRequestCache = new WeakCache(10);

    static {
        new LruCache(16);
        long[] jArr = ScatterMapKt.EmptyGroup;
        new MutableScatterMap();
    }
}
