package androidx.core.app;

import androidx.core.util.Consumer;

/* compiled from: OnMultiWindowModeChangedProvider.kt */
/* loaded from: classes.dex */
public interface OnMultiWindowModeChangedProvider {
    void addOnMultiWindowModeChangedListener(Consumer consumer);

    void removeOnMultiWindowModeChangedListener(Consumer consumer);
}
