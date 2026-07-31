package androidx.glance.session;

import android.os.PowerManager;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class Api33Impl {
    public static final Api33Impl INSTANCE = new Api33Impl();

    public final boolean isLightIdleOrLowPowerStandby(PowerManager powerManager) {
        return powerManager.isLowPowerStandbyEnabled() || powerManager.isDeviceLightIdleMode();
    }
}
