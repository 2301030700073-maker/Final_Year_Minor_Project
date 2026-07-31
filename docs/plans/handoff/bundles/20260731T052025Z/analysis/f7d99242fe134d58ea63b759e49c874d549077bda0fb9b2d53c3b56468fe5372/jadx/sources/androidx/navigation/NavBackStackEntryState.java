package androidx.navigation;

import android.os.Bundle;
import kotlinx.coroutines.flow.SharingConfig;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class NavBackStackEntryState {
    public final SharingConfig impl;

    public NavBackStackEntryState(Bundle bundle) {
        bundle.getClass();
        bundle.setClassLoader(NavBackStackEntryState.class.getClassLoader());
        this.impl = new SharingConfig(bundle);
    }

    public NavBackStackEntryState(NavBackStackEntry navBackStackEntry) {
        navBackStackEntry.getClass();
        this.impl = new SharingConfig(navBackStackEntry, navBackStackEntry.destination.impl.id);
    }
}
