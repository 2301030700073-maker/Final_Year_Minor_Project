package com.fsck.k9.ui.messagelist.item;

import androidx.compose.animation.CrossfadeKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.platform.ComposeView;
import androidx.room.InvalidationTracker$implementation$1;
import net.thunderbird.feature.notification.api.ui.InAppNotificationHostKt;
import net.thunderbird.feature.notification.api.ui.host.DisplayInAppNotificationFlag;
import okio.Okio;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class BannerInlineListInAppNotificationViewHolder extends MessageListInAppNotificationViewHolder {
    public final InvalidationTracker$implementation$1 eventFilter;
    public final InvalidationTracker$implementation$1 onNotificationActionClick;

    static {
        int i = ComposeView.$r8$clinit;
    }

    public BannerInlineListInAppNotificationViewHolder(InvalidationTracker$implementation$1 invalidationTracker$implementation$1, InvalidationTracker$implementation$1 invalidationTracker$implementation$12, ComposeView composeView) {
        super(composeView);
        this.onNotificationActionClick = invalidationTracker$implementation$1;
        this.eventFilter = invalidationTracker$implementation$12;
    }

    public final void Content(Composer composer, int i) {
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(304414511);
        int i2 = (gapComposer.changed(this) ? 4 : 2) | i;
        if (gapComposer.shouldExecute(i2 & 1, (i2 & 3) != 2)) {
            InAppNotificationHostKt.InAppNotificationHost(this.onNotificationActionClick, CrossfadeKt.animateContentSize$default(Modifier.Companion.$$INSTANCE, null, 3), Okio.persistentSetOf(DisplayInAppNotificationFlag.BannerInlineNotifications), null, null, this.eventFilter, null, gapComposer, 384, 88);
        } else {
            gapComposer.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new MessageListInAppNotificationViewHolder$$ExternalSyntheticLambda0(this, i);
        }
    }
}
