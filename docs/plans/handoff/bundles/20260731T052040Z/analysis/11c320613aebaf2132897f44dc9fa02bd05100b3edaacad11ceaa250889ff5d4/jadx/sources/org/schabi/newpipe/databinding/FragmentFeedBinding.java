package org.schabi.newpipe.databinding;

import android.view.View;
import android.widget.Button;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import androidx.recyclerview.widget.RecyclerView;
import androidx.swiperefreshlayout.widget.SwipeRefreshLayout;
import androidx.viewbinding.ViewBinding;
import org.schabi.newpipe.views.NewPipeTextView;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class FragmentFeedBinding implements ViewBinding {
    public final RecyclerView itemsList;
    public final ProgressBar loadingProgressBar;
    public final NewPipeTextView loadingProgressText;
    public final Button newItemsLoadedButton;
    public final RelativeLayout refreshRootView;
    public final NewPipeTextView refreshSubtitleText;
    public final NewPipeTextView refreshText;
    public final RelativeLayout rootView;
    public final SwipeRefreshLayout swipeRefreshLayout;

    public FragmentFeedBinding(RelativeLayout relativeLayout, RecyclerView recyclerView, ProgressBar progressBar, NewPipeTextView newPipeTextView, Button button, RelativeLayout relativeLayout2, NewPipeTextView newPipeTextView2, NewPipeTextView newPipeTextView3, SwipeRefreshLayout swipeRefreshLayout) {
        this.rootView = relativeLayout;
        this.itemsList = recyclerView;
        this.loadingProgressBar = progressBar;
        this.loadingProgressText = newPipeTextView;
        this.newItemsLoadedButton = button;
        this.refreshRootView = relativeLayout2;
        this.refreshSubtitleText = newPipeTextView2;
        this.refreshText = newPipeTextView3;
        this.swipeRefreshLayout = swipeRefreshLayout;
    }

    @Override // androidx.viewbinding.ViewBinding
    public final View getRoot() {
        return this.rootView;
    }
}
