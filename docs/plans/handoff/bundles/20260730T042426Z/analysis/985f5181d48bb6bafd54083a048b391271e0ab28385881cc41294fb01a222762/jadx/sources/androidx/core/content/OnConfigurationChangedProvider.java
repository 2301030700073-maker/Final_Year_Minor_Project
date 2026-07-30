package androidx.core.content;

import androidx.core.util.Consumer;

/* compiled from: OnConfigurationChangedProvider.kt */
/* loaded from: classes.dex */
public interface OnConfigurationChangedProvider {
    void addOnConfigurationChangedListener(Consumer consumer);

    void removeOnConfigurationChangedListener(Consumer consumer);
}
