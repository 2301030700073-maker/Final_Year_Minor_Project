package org.schabi.newpipe.local.subscription.item;

import android.content.Context;
import android.os.Parcelable;
import android.view.View;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import com.xwray.groupie.GroupAdapter;
import com.xwray.groupie.GroupieViewHolder;
import com.xwray.groupie.viewbinding.BindableItem;
import java.util.List;
import org.mozilla.javascript.Token;
import org.schabi.newpipe.R;
import org.schabi.newpipe.databinding.FeedItemCarouselBinding;
import org.schabi.newpipe.util.DeviceUtils;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class FeedGroupCarouselItem extends BindableItem {
    public static final Companion Companion = new Companion();
    public final GroupAdapter carouselAdapter;
    public LinearLayoutManager carouselLayoutManager;
    public Parcelable listState;
    public boolean listViewMode;

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class Companion {
    }

    public FeedGroupCarouselItem(GroupAdapter groupAdapter, boolean z) {
        groupAdapter.getClass();
        this.carouselAdapter = groupAdapter;
        this.listViewMode = z;
    }

    @Override // com.xwray.groupie.viewbinding.BindableItem
    public final void bind(ViewBinding viewBinding, int i, List list) {
        FeedItemCarouselBinding feedItemCarouselBinding = (FeedItemCarouselBinding) viewBinding;
        feedItemCarouselBinding.getClass();
        list.getClass();
        if (list.contains(2)) {
            updateViewMode(feedItemCarouselBinding);
        } else {
            bind(feedItemCarouselBinding);
        }
    }

    @Override // com.xwray.groupie.Item
    public final int getLayout() {
        return R.layout.feed_item_carousel;
    }

    @Override // com.xwray.groupie.viewbinding.BindableItem
    public final ViewBinding initializeViewBinding(View view) {
        view.getClass();
        RecyclerView recyclerView = (RecyclerView) view;
        FeedItemCarouselBinding feedItemCarouselBinding = new FeedItemCarouselBinding(recyclerView, recyclerView);
        updateViewMode(feedItemCarouselBinding);
        return feedItemCarouselBinding;
    }

    @Override // com.xwray.groupie.Item
    public final void unbind(GroupieViewHolder groupieViewHolder) {
        com.xwray.groupie.viewbinding.GroupieViewHolder groupieViewHolder2 = (com.xwray.groupie.viewbinding.GroupieViewHolder) groupieViewHolder;
        groupieViewHolder2.getClass();
        super.unbind(groupieViewHolder2);
        LinearLayoutManager linearLayoutManager = this.carouselLayoutManager;
        this.listState = linearLayoutManager != null ? linearLayoutManager.onSaveInstanceState() : null;
    }

    public final void updateViewMode(FeedItemCarouselBinding feedItemCarouselBinding) {
        LinearLayoutManager gridLayoutManager;
        RecyclerView recyclerView = feedItemCarouselBinding.recyclerView;
        GroupAdapter groupAdapter = this.carouselAdapter;
        recyclerView.setAdapter(groupAdapter);
        Context context = feedItemCarouselBinding.rootView.getContext();
        if (this.listViewMode) {
            gridLayoutManager = new LinearLayoutManager(context);
        } else {
            gridLayoutManager = new GridLayoutManager(context, Math.max(1, context.getResources().getDisplayMetrics().widthPixels / DeviceUtils.dpToPx(context, Token.ASSIGN_MOD)));
        }
        this.carouselLayoutManager = gridLayoutManager;
        RecyclerView recyclerView2 = feedItemCarouselBinding.recyclerView;
        recyclerView2.setLayoutManager(gridLayoutManager);
        recyclerView2.setAdapter(groupAdapter);
    }

    @Override // com.xwray.groupie.viewbinding.BindableItem
    public final void bind(ViewBinding viewBinding) {
        FeedItemCarouselBinding feedItemCarouselBinding = (FeedItemCarouselBinding) viewBinding;
        feedItemCarouselBinding.getClass();
        feedItemCarouselBinding.recyclerView.setAdapter(this.carouselAdapter);
        LinearLayoutManager linearLayoutManager = this.carouselLayoutManager;
        if (linearLayoutManager != null) {
            linearLayoutManager.onRestoreInstanceState(this.listState);
        }
    }
}
