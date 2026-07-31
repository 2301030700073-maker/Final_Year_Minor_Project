package net.thunderbird.feature.notification.api.content;

import kotlin.time.InstantJvmKt;
import kotlinx.datetime.LocalDateTime;
import kotlinx.datetime.TimeZone;
import org.minidns.util.Hex;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class AppNotification implements Notification {
    public final String accessibilityText = getTitle();
    public final LocalDateTime createdAt = Hex.toLocalDateTime(InstantJvmKt.systemClock.now(), TimeZone.UTC);
}
