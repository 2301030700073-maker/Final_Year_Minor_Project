package androidx.lifecycle;

import androidx.lifecycle.viewmodel.MutableCreationExtras;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public interface HasDefaultViewModelProviderFactory {
    MutableCreationExtras getDefaultViewModelCreationExtras();

    ViewModelProvider$Factory getDefaultViewModelProviderFactory();
}
