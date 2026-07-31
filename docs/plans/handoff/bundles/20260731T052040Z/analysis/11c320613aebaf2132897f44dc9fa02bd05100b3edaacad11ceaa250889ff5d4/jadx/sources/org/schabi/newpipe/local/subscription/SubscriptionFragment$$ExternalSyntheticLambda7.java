package org.schabi.newpipe.local.subscription;

import android.view.View;
import android.widget.Toast;
import androidx.sqlite.SQLite;
import com.xwray.groupie.Item;
import com.xwray.groupie.OnItemClickListener;
import com.xwray.groupie.OnItemLongClickListener;
import io.reactivex.rxjava3.functions.Action;
import org.schabi.newpipe.R;
import org.schabi.newpipe.local.subscription.SubscriptionFragment;
import org.schabi.newpipe.local.subscription.dialog.FeedGroupDialog;
import org.schabi.newpipe.local.subscription.item.FeedGroupAddNewGridItem;
import org.schabi.newpipe.local.subscription.item.FeedGroupAddNewItem;
import org.schabi.newpipe.local.subscription.item.FeedGroupCardGridItem;
import org.schabi.newpipe.local.subscription.item.FeedGroupCardItem;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final /* synthetic */ class SubscriptionFragment$$ExternalSyntheticLambda7 implements Action, OnItemClickListener, OnItemLongClickListener {
    public final /* synthetic */ SubscriptionFragment f$0;

    public /* synthetic */ SubscriptionFragment$$ExternalSyntheticLambda7(SubscriptionFragment subscriptionFragment) {
        this.f$0 = subscriptionFragment;
    }

    @Override // com.xwray.groupie.OnItemClickListener
    public void onItemClick(Item item, View view) {
        SubscriptionFragment.Companion companion = SubscriptionFragment.Companion;
        item.getClass();
        view.getClass();
        boolean z = item instanceof FeedGroupCardItem;
        SubscriptionFragment subscriptionFragment = this.f$0;
        if (z) {
            FeedGroupCardItem feedGroupCardItem = (FeedGroupCardItem) item;
            SQLite.openFeedFragment(subscriptionFragment.getFM(), feedGroupCardItem.groupId, feedGroupCardItem.name);
            return;
        }
        if (item instanceof FeedGroupCardGridItem) {
            FeedGroupCardGridItem feedGroupCardGridItem = (FeedGroupCardGridItem) item;
            SQLite.openFeedFragment(subscriptionFragment.getFM(), feedGroupCardGridItem.groupId, feedGroupCardGridItem.name);
        } else if (item instanceof FeedGroupAddNewItem) {
            FeedGroupDialog.Companion.getClass();
            FeedGroupDialog.Companion.newInstance(-1L).show(subscriptionFragment.getFM(), null);
        } else if (item instanceof FeedGroupAddNewGridItem) {
            FeedGroupDialog.Companion.getClass();
            FeedGroupDialog.Companion.newInstance(-1L).show(subscriptionFragment.getFM(), null);
        }
    }

    @Override // com.xwray.groupie.OnItemLongClickListener
    public boolean onItemLongClick(Item item, View view) {
        SubscriptionFragment.Companion companion = SubscriptionFragment.Companion;
        item.getClass();
        view.getClass();
        boolean z = item instanceof FeedGroupCardItem;
        if (z && ((FeedGroupCardItem) item).groupId == -1) {
            return false;
        }
        boolean z2 = item instanceof FeedGroupCardGridItem;
        if (z2 && ((FeedGroupCardGridItem) item).groupId == -1) {
            return false;
        }
        SubscriptionFragment subscriptionFragment = this.f$0;
        if (z) {
            FeedGroupDialog.Companion companion2 = FeedGroupDialog.Companion;
            long j = ((FeedGroupCardItem) item).groupId;
            companion2.getClass();
            FeedGroupDialog.Companion.newInstance(j).show(subscriptionFragment.getFM(), null);
            return true;
        }
        if (!z2) {
            return true;
        }
        FeedGroupDialog.Companion companion3 = FeedGroupDialog.Companion;
        long j2 = ((FeedGroupCardGridItem) item).groupId;
        companion3.getClass();
        FeedGroupDialog.Companion.newInstance(j2).show(subscriptionFragment.getFM(), null);
        return true;
    }

    @Override // io.reactivex.rxjava3.functions.Action
    public void run() {
        SubscriptionFragment.Companion companion = SubscriptionFragment.Companion;
        SubscriptionFragment subscriptionFragment = this.f$0;
        Toast.makeText(subscriptionFragment.requireContext(), subscriptionFragment.getString(R.string.channel_unsubscribed), 0).show();
    }
}
