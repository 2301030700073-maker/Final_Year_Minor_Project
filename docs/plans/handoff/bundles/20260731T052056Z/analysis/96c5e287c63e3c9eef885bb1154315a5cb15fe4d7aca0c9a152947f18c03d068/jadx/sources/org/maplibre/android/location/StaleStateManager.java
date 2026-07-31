package org.maplibre.android.location;

import androidx.preference.PreferenceFragmentCompat;
import org.maplibre.android.location.LocationComponent;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class StaleStateManager {
    public long delayTime;
    public final LocationComponent.AnonymousClass5 innerOnLocationStaleListeners;
    public boolean isEnabled;
    public boolean isStale = true;
    public final PreferenceFragmentCompat.AnonymousClass1 handler = new PreferenceFragmentCompat.AnonymousClass1(this);

    public StaleStateManager(LocationComponent.AnonymousClass5 anonymousClass5, LocationComponentOptions locationComponentOptions) {
        this.innerOnLocationStaleListeners = anonymousClass5;
        this.isEnabled = locationComponentOptions.enableStaleState;
        this.delayTime = locationComponentOptions.staleStateTimeout;
    }

    public final void setState(boolean z) {
        if (z != this.isStale) {
            this.isStale = z;
            if (this.isEnabled) {
                this.innerOnLocationStaleListeners.onStaleStateChange(z);
            }
        }
    }
}
