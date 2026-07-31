package androidx.compose.foundation.lazy.layout;

import androidx.compose.runtime.Composer;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public interface LazyLayoutItemProvider {
    void Item(int i, Object obj, Composer composer, int i2);

    Object getContentType(int i);

    int getIndex(Object obj);

    int getItemCount();

    Object getKey(int i);
}
