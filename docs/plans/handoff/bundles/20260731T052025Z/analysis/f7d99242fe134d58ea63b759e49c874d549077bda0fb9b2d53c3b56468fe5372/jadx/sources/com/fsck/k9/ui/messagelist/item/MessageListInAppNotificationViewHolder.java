package com.fsck.k9.ui.messagelist.item;

import androidx.compose.ui.platform.ComposeView;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class MessageListInAppNotificationViewHolder extends MessageListViewHolder {
    public final ComposeView view;

    static {
        int i = ComposeView.$r8$clinit;
    }

    public MessageListInAppNotificationViewHolder(ComposeView composeView) {
        super(composeView);
        this.view = composeView;
    }
}
