package com.fsck.k9.notification;

import net.thunderbird.feature.notification.NotificationLight;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class NotificationLightDecoder {
    public static NotificationLight decode(int i, int i2, boolean z) {
        if (!z) {
            return NotificationLight.Disabled;
        }
        int i3 = i & 16777215;
        return i3 == (i2 & 16777215) ? NotificationLight.AccountColor : i3 == 16777215 ? NotificationLight.White : i3 == 16711680 ? NotificationLight.Red : i3 == 65280 ? NotificationLight.Green : i3 == 255 ? NotificationLight.Blue : i3 == 16776960 ? NotificationLight.Yellow : i3 == 65535 ? NotificationLight.Cyan : i3 == 16711935 ? NotificationLight.Magenta : NotificationLight.SystemDefaultColor;
    }
}
