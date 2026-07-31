package org.schabi.newpipe.local.subscription.dialog;

import android.view.View;
import com.xwray.groupie.Item;
import com.xwray.groupie.OnItemClickListener;
import java.util.HashSet;
import net.newpipe.app.AppKt;
import org.schabi.newpipe.databinding.DialogFeedGroupCreateBinding;
import org.schabi.newpipe.databinding.PickerSubscriptionItemBinding;
import org.schabi.newpipe.ktx.AnimationType;
import org.schabi.newpipe.local.subscription.dialog.FeedGroupDialog;
import org.schabi.newpipe.local.subscription.item.PickerIconItem;
import org.schabi.newpipe.local.subscription.item.PickerSubscriptionItem;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final /* synthetic */ class FeedGroupDialog$$ExternalSyntheticLambda0 implements OnItemClickListener {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ FeedGroupDialog f$0;

    public /* synthetic */ FeedGroupDialog$$ExternalSyntheticLambda0(FeedGroupDialog feedGroupDialog, int i) {
        this.$r8$classId = i;
        this.f$0 = feedGroupDialog;
    }

    @Override // com.xwray.groupie.OnItemClickListener
    public final void onItemClick(Item item, View view) {
        int i = this.$r8$classId;
        FeedGroupDialog feedGroupDialog = this.f$0;
        switch (i) {
            case 0:
                item.getClass();
                view.getClass();
                if (item instanceof PickerSubscriptionItem) {
                    PickerSubscriptionItem pickerSubscriptionItem = (PickerSubscriptionItem) item;
                    long j = pickerSubscriptionItem.subscriptionEntity.uid;
                    boolean z = true;
                    feedGroupDialog.wasSubscriptionSelectionChanged = true;
                    boolean contains = feedGroupDialog.selectedSubscriptions.contains(Long.valueOf(j));
                    HashSet<Long> hashSet = feedGroupDialog.selectedSubscriptions;
                    if (contains) {
                        hashSet.remove(Long.valueOf(j));
                        z = false;
                    } else {
                        hashSet.add(Long.valueOf(j));
                    }
                    boolean z2 = z;
                    pickerSubscriptionItem.isSelected = z2;
                    AppKt.animate$default(PickerSubscriptionItemBinding.bind(view).selectedHighlight, z2, 150L, AnimationType.LIGHT_SCALE_AND_ALPHA, 0L, null, 24);
                    feedGroupDialog.updateSubscriptionSelectedCount();
                    break;
                }
                break;
            default:
                item.getClass();
                view.getClass();
                if (item instanceof PickerIconItem) {
                    PickerIconItem pickerIconItem = (PickerIconItem) item;
                    feedGroupDialog.selectedIcon = pickerIconItem.icon;
                    DialogFeedGroupCreateBinding dialogFeedGroupCreateBinding = feedGroupDialog._feedGroupCreateBinding;
                    dialogFeedGroupCreateBinding.getClass();
                    dialogFeedGroupCreateBinding.iconPreview.setImageResource(pickerIconItem.iconRes);
                    feedGroupDialog.showScreen(FeedGroupDialog.ScreenState.InitialScreen.INSTANCE);
                    break;
                }
                break;
        }
    }
}
