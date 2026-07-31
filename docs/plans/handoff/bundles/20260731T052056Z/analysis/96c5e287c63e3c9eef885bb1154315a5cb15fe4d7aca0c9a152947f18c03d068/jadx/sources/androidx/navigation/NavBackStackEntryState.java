package androidx.navigation;

import android.os.Bundle;
import kotlinx.coroutines.flow.SharingConfig;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class NavBackStackEntryState {
    public final SharingConfig impl;

    public NavBackStackEntryState(Bundle bundle) {
        bundle.getClass();
        bundle.setClassLoader(NavBackStackEntryState.class.getClassLoader());
        this.impl = new SharingConfig(bundle);
    }

    public NavBackStackEntryState(NavBackStackEntry navBackStackEntry) {
        this.impl = new SharingConfig(navBackStackEntry, navBackStackEntry.destination.impl.size);
    }
}
