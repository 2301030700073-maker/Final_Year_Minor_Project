package com.fsck.k9.ui.messagelist;

import androidx.camera.camera2.pipe.CameraDevices$CC;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public interface MessageListViewItem {

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class Footer implements MessageListViewItem {
        public final String text;

        public Footer(String str) {
            str.getClass();
            this.text = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof Footer) && Intrinsics.areEqual(this.text, ((Footer) obj).text);
        }

        @Override // com.fsck.k9.ui.messagelist.MessageListViewItem
        public final long getViewId() {
            return 1L;
        }

        @Override // com.fsck.k9.ui.messagelist.MessageListViewItem
        public final int getViewType() {
            return 1;
        }

        public final int hashCode() {
            return this.text.hashCode();
        }

        public final String toString() {
            return CameraDevices$CC.m("Footer(text=", this.text, ")");
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class InAppNotificationBannerList implements MessageListViewItem {
        public static final InAppNotificationBannerList INSTANCE = new InAppNotificationBannerList();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof InAppNotificationBannerList);
        }

        @Override // com.fsck.k9.ui.messagelist.MessageListViewItem
        public final long getViewId() {
            return -1L;
        }

        @Override // com.fsck.k9.ui.messagelist.MessageListViewItem
        public final int getViewType() {
            return 2;
        }

        public final int hashCode() {
            return 2043241745;
        }

        public final String toString() {
            return "InAppNotificationBannerList";
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class Message implements MessageListViewItem {
        public final MessageListItem item;

        public Message(MessageListItem messageListItem) {
            messageListItem.getClass();
            this.item = messageListItem;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof Message) && Intrinsics.areEqual(this.item, ((Message) obj).item);
        }

        @Override // com.fsck.k9.ui.messagelist.MessageListViewItem
        public final long getViewId() {
            return this.item.uniqueId;
        }

        @Override // com.fsck.k9.ui.messagelist.MessageListViewItem
        public final int getViewType() {
            return 0;
        }

        public final int hashCode() {
            return this.item.hashCode();
        }

        public final String toString() {
            return "Message(item=" + this.item + ")";
        }
    }

    long getViewId();

    int getViewType();
}
