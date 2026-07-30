package androidx.compose.ui.text.font;

import androidx.compose.ui.text.caches.LruCache;
import androidx.compose.ui.text.caches.SimpleArrayMap;
import androidx.compose.ui.text.platform.Synchronization_jvmKt;
import androidx.compose.ui.text.platform.SynchronizedObject;

/* compiled from: FontListFontFamilyTypefaceAdapter.kt */
/* loaded from: classes.dex */
public final class AsyncTypefaceCache {
    private final Object PermanentFailure = AsyncTypefaceResult.m2157constructorimpl(null);
    private final LruCache resultCache = new LruCache(16);
    private final SimpleArrayMap permanentCache = new SimpleArrayMap(0, 1, null);
    private final SynchronizedObject cacheLock = Synchronization_jvmKt.createSynchronizedObject();

    /* compiled from: FontListFontFamilyTypefaceAdapter.kt */
    public static final class AsyncTypefaceResult {
        /* renamed from: constructor-impl, reason: not valid java name */
        public static Object m2157constructorimpl(Object obj) {
            return obj;
        }
    }
}
