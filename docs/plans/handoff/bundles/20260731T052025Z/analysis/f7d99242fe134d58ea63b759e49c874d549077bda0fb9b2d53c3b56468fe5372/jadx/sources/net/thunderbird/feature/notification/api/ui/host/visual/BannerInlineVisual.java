package net.thunderbird.feature.notification.api.ui.host.visual;

import kotlin.jvm.internal.Intrinsics;
import kotlinx.collections.immutable.ImmutableList;
import kotlinx.collections.immutable.implementations.immutableList.AbstractPersistentList;
import net.thunderbird.feature.notification.api.NotificationSeverity;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class BannerInlineVisual implements InAppNotificationVisual {
    public final ImmutableList actions;
    public final NotificationSeverity severity;
    public final String supportingText;
    public final String title;

    public BannerInlineVisual(String str, String str2, NotificationSeverity notificationSeverity, AbstractPersistentList abstractPersistentList) {
        notificationSeverity.getClass();
        abstractPersistentList.getClass();
        this.title = str;
        this.supportingText = str2;
        this.severity = notificationSeverity;
        this.actions = abstractPersistentList;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof BannerInlineVisual)) {
            return false;
        }
        BannerInlineVisual bannerInlineVisual = (BannerInlineVisual) obj;
        return this.title.equals(bannerInlineVisual.title) && this.supportingText.equals(bannerInlineVisual.supportingText) && this.severity == bannerInlineVisual.severity && Intrinsics.areEqual(this.actions, bannerInlineVisual.actions);
    }

    public final int hashCode() {
        return this.actions.hashCode() + ((this.severity.hashCode() + ((this.supportingText.hashCode() + (this.title.hashCode() * 31)) * 31)) * 31);
    }

    public final String toString() {
        return "BannerInlineVisual(title=" + ((Object) this.title) + ", supportingText=" + ((Object) this.supportingText) + ", severity=" + this.severity + ", actions=" + this.actions + ")";
    }
}
