package org.schabi.newpipe.local.subscription.item;

import android.view.View;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.cardview.widget.CardView;
import androidx.compose.ui.Modifier;
import androidx.recyclerview.widget.ItemTouchHelper;
import androidx.viewbinding.ViewBinding;
import com.google.common.collect.CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0;
import com.xwray.groupie.viewbinding.BindableItem;
import com.xwray.groupie.viewbinding.GroupieViewHolder;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;
import okio.Options;
import org.schabi.newpipe.R;
import org.schabi.newpipe.database.feed.model.FeedGroupEntity;
import org.schabi.newpipe.databinding.FeedGroupReorderItemBinding;
import org.schabi.newpipe.local.subscription.FeedGroupIcon;
import org.schabi.newpipe.player.playqueue.PlayQueueItemBuilder$$ExternalSyntheticLambda2;
import org.schabi.newpipe.views.NewPipeTextView;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class FeedGroupReorderItem extends BindableItem {
    public final ItemTouchHelper dragCallback;
    public final long groupId;
    public final FeedGroupIcon icon;
    public final String name;

    public FeedGroupReorderItem(FeedGroupEntity feedGroupEntity, ItemTouchHelper itemTouchHelper) {
        feedGroupEntity.getClass();
        itemTouchHelper.getClass();
        long j = feedGroupEntity.uid;
        String str = feedGroupEntity.name;
        FeedGroupIcon feedGroupIcon = feedGroupEntity.icon;
        str.getClass();
        feedGroupIcon.getClass();
        this.groupId = j;
        this.name = str;
        this.icon = feedGroupIcon;
        this.dragCallback = itemTouchHelper;
    }

    @Override // com.xwray.groupie.viewbinding.BindableItem, com.xwray.groupie.Item
    public final void bind(GroupieViewHolder groupieViewHolder, int i, List list) {
        groupieViewHolder.getClass();
        list.getClass();
        ViewBinding viewBinding = groupieViewHolder.binding;
        bind(viewBinding);
        ((FeedGroupReorderItemBinding) viewBinding).handle.setOnTouchListener(new PlayQueueItemBuilder$$ExternalSyntheticLambda2(this, groupieViewHolder, 4));
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof FeedGroupReorderItem)) {
            return false;
        }
        FeedGroupReorderItem feedGroupReorderItem = (FeedGroupReorderItem) obj;
        return this.groupId == feedGroupReorderItem.groupId && Intrinsics.areEqual(this.name, feedGroupReorderItem.name) && this.icon == feedGroupReorderItem.icon && Intrinsics.areEqual(this.dragCallback, feedGroupReorderItem.dragCallback);
    }

    @Override // com.xwray.groupie.Item
    public final int getDragDirs() {
        return 3;
    }

    @Override // com.xwray.groupie.Item
    public final long getId() {
        long j = this.groupId;
        return j == -1 ? this.id : j;
    }

    @Override // com.xwray.groupie.Item
    public final int getLayout() {
        return R.layout.feed_group_reorder_item;
    }

    public final int hashCode() {
        long j = this.groupId;
        return this.dragCallback.hashCode() + ((this.icon.hashCode() + Modifier.CC.m(((int) (j ^ (j >>> 32))) * 31, 31, this.name)) * 31);
    }

    @Override // com.xwray.groupie.viewbinding.BindableItem
    public final ViewBinding initializeViewBinding(View view) {
        view.getClass();
        int i = R.id.group_icon;
        AppCompatImageView appCompatImageView = (AppCompatImageView) Options.Companion.findChildViewById(R.id.group_icon, view);
        if (appCompatImageView != null) {
            i = R.id.group_name;
            NewPipeTextView newPipeTextView = (NewPipeTextView) Options.Companion.findChildViewById(R.id.group_name, view);
            if (newPipeTextView != null) {
                i = R.id.handle;
                AppCompatImageView appCompatImageView2 = (AppCompatImageView) Options.Companion.findChildViewById(R.id.handle, view);
                if (appCompatImageView2 != null) {
                    return new FeedGroupReorderItemBinding((CardView) view, appCompatImageView, newPipeTextView, appCompatImageView2);
                }
            }
        }
        CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0.m$1("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
        return null;
    }

    public final String toString() {
        return "FeedGroupReorderItem(groupId=" + this.groupId + ", name=" + this.name + ", icon=" + this.icon + ", dragCallback=" + this.dragCallback + ")";
    }

    @Override // com.xwray.groupie.viewbinding.BindableItem
    public final void bind(ViewBinding viewBinding) {
        FeedGroupReorderItemBinding feedGroupReorderItemBinding = (FeedGroupReorderItemBinding) viewBinding;
        feedGroupReorderItemBinding.getClass();
        feedGroupReorderItemBinding.groupName.setText(this.name);
        feedGroupReorderItemBinding.groupIcon.setImageResource(this.icon.getDrawableRes());
    }
}
