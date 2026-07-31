package net.thunderbird.core.preference.interaction;

import androidx.compose.ui.Modifier;
import coil3.size.ViewSizeResolver;
import kotlin.jvm.internal.Intrinsics;
import net.thunderbird.core.common.action.SwipeActions;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class InteractionSettings {
    public final boolean isConfirmDelete;
    public final boolean isConfirmDeleteFromNotification;
    public final boolean isConfirmDeleteStarred;
    public final boolean isConfirmDiscardMessage;
    public final boolean isConfirmMarkAllRead;
    public final boolean isConfirmSpam;
    public final PostMarkAsUnreadNavigation messageViewPostMarkAsUnreadNavigation;
    public final String messageViewPostRemoveNavigation;
    public final SwipeActions swipeActions;
    public final boolean useVolumeKeysForNavigation;

    public InteractionSettings(boolean z, String str, PostMarkAsUnreadNavigation postMarkAsUnreadNavigation, SwipeActions swipeActions, boolean z2, boolean z3, boolean z4, boolean z5, boolean z6, boolean z7) {
        postMarkAsUnreadNavigation.getClass();
        swipeActions.getClass();
        this.useVolumeKeysForNavigation = z;
        this.messageViewPostRemoveNavigation = str;
        this.messageViewPostMarkAsUnreadNavigation = postMarkAsUnreadNavigation;
        this.swipeActions = swipeActions;
        this.isConfirmDelete = z2;
        this.isConfirmDeleteStarred = z3;
        this.isConfirmDeleteFromNotification = z4;
        this.isConfirmSpam = z5;
        this.isConfirmDiscardMessage = z6;
        this.isConfirmMarkAllRead = z7;
    }

    public static InteractionSettings copy$default(InteractionSettings interactionSettings, boolean z, String str, PostMarkAsUnreadNavigation postMarkAsUnreadNavigation, SwipeActions swipeActions, boolean z2, boolean z3, boolean z4, boolean z5, boolean z6, boolean z7, int i) {
        if ((i & 1) != 0) {
            z = interactionSettings.useVolumeKeysForNavigation;
        }
        boolean z8 = z;
        if ((i & 2) != 0) {
            str = interactionSettings.messageViewPostRemoveNavigation;
        }
        String str2 = str;
        if ((i & 4) != 0) {
            postMarkAsUnreadNavigation = interactionSettings.messageViewPostMarkAsUnreadNavigation;
        }
        PostMarkAsUnreadNavigation postMarkAsUnreadNavigation2 = postMarkAsUnreadNavigation;
        if ((i & 8) != 0) {
            swipeActions = interactionSettings.swipeActions;
        }
        SwipeActions swipeActions2 = swipeActions;
        boolean z9 = (i & 16) != 0 ? interactionSettings.isConfirmDelete : z2;
        boolean z10 = (i & 32) != 0 ? interactionSettings.isConfirmDeleteStarred : z3;
        boolean z11 = (i & 64) != 0 ? interactionSettings.isConfirmDeleteFromNotification : z4;
        boolean z12 = (i & 128) != 0 ? interactionSettings.isConfirmSpam : z5;
        boolean z13 = (i & 256) != 0 ? interactionSettings.isConfirmDiscardMessage : z6;
        boolean z14 = (i & 512) != 0 ? interactionSettings.isConfirmMarkAllRead : z7;
        interactionSettings.getClass();
        str2.getClass();
        postMarkAsUnreadNavigation2.getClass();
        swipeActions2.getClass();
        return new InteractionSettings(z8, str2, postMarkAsUnreadNavigation2, swipeActions2, z9, z10, z11, z12, z13, z14);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof InteractionSettings)) {
            return false;
        }
        InteractionSettings interactionSettings = (InteractionSettings) obj;
        return this.useVolumeKeysForNavigation == interactionSettings.useVolumeKeysForNavigation && this.messageViewPostRemoveNavigation.equals(interactionSettings.messageViewPostRemoveNavigation) && this.messageViewPostMarkAsUnreadNavigation == interactionSettings.messageViewPostMarkAsUnreadNavigation && Intrinsics.areEqual(this.swipeActions, interactionSettings.swipeActions) && this.isConfirmDelete == interactionSettings.isConfirmDelete && this.isConfirmDeleteStarred == interactionSettings.isConfirmDeleteStarred && this.isConfirmDeleteFromNotification == interactionSettings.isConfirmDeleteFromNotification && this.isConfirmSpam == interactionSettings.isConfirmSpam && this.isConfirmDiscardMessage == interactionSettings.isConfirmDiscardMessage && this.isConfirmMarkAllRead == interactionSettings.isConfirmMarkAllRead;
    }

    public final int hashCode() {
        return ((((((((((((this.swipeActions.hashCode() + ((this.messageViewPostMarkAsUnreadNavigation.hashCode() + Modifier.CC.m((this.useVolumeKeysForNavigation ? 1231 : 1237) * 31, this.messageViewPostRemoveNavigation, 31)) * 31)) * 31) + (this.isConfirmDelete ? 1231 : 1237)) * 31) + (this.isConfirmDeleteStarred ? 1231 : 1237)) * 31) + (this.isConfirmDeleteFromNotification ? 1231 : 1237)) * 31) + (this.isConfirmSpam ? 1231 : 1237)) * 31) + (this.isConfirmDiscardMessage ? 1231 : 1237)) * 31) + (this.isConfirmMarkAllRead ? 1231 : 1237);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("InteractionSettings(useVolumeKeysForNavigation=");
        sb.append(this.useVolumeKeysForNavigation);
        sb.append(", messageViewPostRemoveNavigation=");
        sb.append(this.messageViewPostRemoveNavigation);
        sb.append(", messageViewPostMarkAsUnreadNavigation=");
        sb.append(this.messageViewPostMarkAsUnreadNavigation);
        sb.append(", swipeActions=");
        sb.append(this.swipeActions);
        sb.append(", isConfirmDelete=");
        ViewSizeResolver.CC.m(sb, this.isConfirmDelete, ", isConfirmDeleteStarred=", this.isConfirmDeleteStarred, ", isConfirmDeleteFromNotification=");
        ViewSizeResolver.CC.m(sb, this.isConfirmDeleteFromNotification, ", isConfirmSpam=", this.isConfirmSpam, ", isConfirmDiscardMessage=");
        sb.append(this.isConfirmDiscardMessage);
        sb.append(", isConfirmMarkAllRead=");
        sb.append(this.isConfirmMarkAllRead);
        sb.append(")");
        return sb.toString();
    }
}
