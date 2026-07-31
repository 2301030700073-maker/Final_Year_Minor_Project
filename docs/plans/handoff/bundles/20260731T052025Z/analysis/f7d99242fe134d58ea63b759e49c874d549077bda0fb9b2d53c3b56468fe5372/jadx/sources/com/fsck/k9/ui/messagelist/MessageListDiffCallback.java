package com.fsck.k9.ui.messagelist;

import androidx.recyclerview.widget.DiffUtil;
import com.fsck.k9.ui.messagelist.MessageListViewItem;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class MessageListDiffCallback extends DiffUtil {
    public final /* synthetic */ int $r8$classId;
    public final List newMessageList;
    public final List oldMessageList;

    public MessageListDiffCallback(List list, List list2, int i) {
        this.$r8$classId = i;
        switch (i) {
            case 1:
                list.getClass();
                this.oldMessageList = list;
                this.newMessageList = list2;
                break;
            default:
                list.getClass();
                list2.getClass();
                this.oldMessageList = list;
                this.newMessageList = list2;
                break;
        }
    }

    @Override // androidx.recyclerview.widget.DiffUtil
    public final boolean areContentsTheSame(int i, int i2) {
        switch (this.$r8$classId) {
            case 0:
                return Intrinsics.areEqual(this.oldMessageList.get(i), this.newMessageList.get(i2));
            default:
                return areItemsTheSame(i, i2);
        }
    }

    @Override // androidx.recyclerview.widget.DiffUtil
    public final boolean areItemsTheSame(int i, int i2) {
        int i3 = this.$r8$classId;
        List list = this.newMessageList;
        List list2 = this.oldMessageList;
        switch (i3) {
            case 0:
                MessageListViewItem messageListViewItem = (MessageListViewItem) list2.get(i);
                MessageListViewItem messageListViewItem2 = (MessageListViewItem) list.get(i2);
                if (!(messageListViewItem instanceof MessageListViewItem.InAppNotificationBannerList) || !(messageListViewItem2 instanceof MessageListViewItem.InAppNotificationBannerList)) {
                    if ((messageListViewItem instanceof MessageListViewItem.Message) && (messageListViewItem2 instanceof MessageListViewItem.Message)) {
                        if (((MessageListViewItem.Message) messageListViewItem).item.uniqueId != ((MessageListViewItem.Message) messageListViewItem2).item.uniqueId) {
                        }
                    } else if (!(messageListViewItem instanceof MessageListViewItem.Footer) || !(messageListViewItem2 instanceof MessageListViewItem.Footer)) {
                    }
                }
                break;
            default:
                if (((MessageListItem) list2.get(i)).uniqueId == ((MessageListItem) list.get(i2)).uniqueId) {
                    break;
                }
                break;
        }
        return true;
    }

    @Override // androidx.recyclerview.widget.DiffUtil
    public final int getNewListSize() {
        int i = this.$r8$classId;
        List list = this.newMessageList;
        switch (i) {
        }
        return list.size();
    }

    @Override // androidx.recyclerview.widget.DiffUtil
    public final int getOldListSize() {
        switch (this.$r8$classId) {
        }
        return this.oldMessageList.size();
    }
}
