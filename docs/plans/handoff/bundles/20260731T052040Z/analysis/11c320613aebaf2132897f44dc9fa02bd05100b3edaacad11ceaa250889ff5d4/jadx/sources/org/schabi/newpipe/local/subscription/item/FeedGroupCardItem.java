package org.schabi.newpipe.local.subscription.item;

import android.view.View;
import android.widget.ImageView;
import androidx.cardview.widget.CardView;
import androidx.compose.ui.Modifier;
import androidx.viewbinding.ViewBinding;
import com.google.common.collect.CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0;
import com.xwray.groupie.viewbinding.BindableItem;
import kotlin.jvm.internal.Intrinsics;
import okio.Options;
import org.schabi.newpipe.R;
import org.schabi.newpipe.databinding.FeedGroupCardItemBinding;
import org.schabi.newpipe.local.subscription.FeedGroupIcon;
import org.schabi.newpipe.views.NewPipeTextView;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class FeedGroupCardItem extends BindableItem {
    public final long groupId;
    public final FeedGroupIcon icon;
    public final String name;

    public FeedGroupCardItem(long j, String str, FeedGroupIcon feedGroupIcon) {
        str.getClass();
        feedGroupIcon.getClass();
        this.groupId = j;
        this.name = str;
        this.icon = feedGroupIcon;
    }

    @Override // com.xwray.groupie.viewbinding.BindableItem
    public final void bind(ViewBinding viewBinding) {
        FeedGroupCardItemBinding feedGroupCardItemBinding = (FeedGroupCardItemBinding) viewBinding;
        feedGroupCardItemBinding.getClass();
        feedGroupCardItemBinding.title.setText(this.name);
        feedGroupCardItemBinding.icon.setImageResource(this.icon.getDrawableRes());
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof FeedGroupCardItem)) {
            return false;
        }
        FeedGroupCardItem feedGroupCardItem = (FeedGroupCardItem) obj;
        return this.groupId == feedGroupCardItem.groupId && Intrinsics.areEqual(this.name, feedGroupCardItem.name) && this.icon == feedGroupCardItem.icon;
    }

    @Override // com.xwray.groupie.Item
    public final long getId() {
        long j = this.groupId;
        return j == -1 ? this.id : j;
    }

    @Override // com.xwray.groupie.Item
    public final int getLayout() {
        return R.layout.feed_group_card_item;
    }

    public final int hashCode() {
        long j = this.groupId;
        return this.icon.hashCode() + Modifier.CC.m(((int) (j ^ (j >>> 32))) * 31, 31, this.name);
    }

    @Override // com.xwray.groupie.viewbinding.BindableItem
    public final ViewBinding initializeViewBinding(View view) {
        view.getClass();
        int i = R.id.icon;
        ImageView imageView = (ImageView) Options.Companion.findChildViewById(R.id.icon, view);
        if (imageView != null) {
            i = R.id.title;
            NewPipeTextView newPipeTextView = (NewPipeTextView) Options.Companion.findChildViewById(R.id.title, view);
            if (newPipeTextView != null) {
                return new FeedGroupCardItemBinding((CardView) view, imageView, newPipeTextView);
            }
        }
        CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0.m$1("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
        return null;
    }

    public final String toString() {
        return "FeedGroupCardItem(groupId=" + this.groupId + ", name=" + this.name + ", icon=" + this.icon + ")";
    }
}
