package org.schabi.newpipe.local.subscription.item;

import android.view.View;
import android.widget.ImageView;
import androidx.cardview.widget.CardView;
import androidx.viewbinding.ViewBinding;
import com.google.common.collect.CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0;
import com.xwray.groupie.viewbinding.BindableItem;
import okio.Options;
import org.schabi.newpipe.R;
import org.schabi.newpipe.databinding.FeedGroupAddNewItemBinding;
import org.schabi.newpipe.views.NewPipeTextView;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class FeedGroupAddNewItem extends BindableItem {
    @Override // com.xwray.groupie.viewbinding.BindableItem
    public final void bind(ViewBinding viewBinding) {
        ((FeedGroupAddNewItemBinding) viewBinding).getClass();
    }

    @Override // com.xwray.groupie.Item
    public final int getLayout() {
        return R.layout.feed_group_add_new_item;
    }

    @Override // com.xwray.groupie.viewbinding.BindableItem
    public final ViewBinding initializeViewBinding(View view) {
        view.getClass();
        int i = R.id.icon;
        if (((ImageView) Options.Companion.findChildViewById(R.id.icon, view)) != null) {
            i = R.id.title;
            if (((NewPipeTextView) Options.Companion.findChildViewById(R.id.title, view)) != null) {
                return new FeedGroupAddNewItemBinding((CardView) view);
            }
        }
        CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0.m$1("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
        return null;
    }
}
