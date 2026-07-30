package androidx.core.content;

import androidx.core.util.Consumer;

/* compiled from: OnTrimMemoryProvider.kt */
/* loaded from: classes.dex */
public interface OnTrimMemoryProvider {
    void addOnTrimMemoryListener(Consumer consumer);

    void removeOnTrimMemoryListener(Consumer consumer);
}
