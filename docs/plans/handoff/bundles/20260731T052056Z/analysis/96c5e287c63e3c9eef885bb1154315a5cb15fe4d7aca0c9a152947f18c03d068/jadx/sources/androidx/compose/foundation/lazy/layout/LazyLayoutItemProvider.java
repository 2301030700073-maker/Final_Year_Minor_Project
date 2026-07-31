package androidx.compose.foundation.lazy.layout;

import androidx.compose.runtime.GapComposer;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public interface LazyLayoutItemProvider {
    void Item(int i, Object obj, GapComposer gapComposer, int i2);

    Object getContentType(int i);

    int getIndex(Object obj);

    int getItemCount();

    Object getKey(int i);
}
