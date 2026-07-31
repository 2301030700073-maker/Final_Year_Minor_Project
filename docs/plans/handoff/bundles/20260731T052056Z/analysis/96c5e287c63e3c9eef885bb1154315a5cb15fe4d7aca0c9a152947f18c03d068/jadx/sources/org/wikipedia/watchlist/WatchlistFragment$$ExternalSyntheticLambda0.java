package org.wikipedia.watchlist;

import android.content.Intent;
import androidx.activity.result.ActivityResult;
import androidx.activity.result.ActivityResultCallback;
import androidx.fragment.app.Fragment;
import androidx.swiperefreshlayout.widget.SwipeRefreshLayout;
import org.wikipedia.page.LinkMovementMethodExt;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class WatchlistFragment$$ExternalSyntheticLambda0 implements SwipeRefreshLayout.OnRefreshListener, ActivityResultCallback, LinkMovementMethodExt.UrlHandler {
    public final /* synthetic */ WatchlistFragment f$0;

    public /* synthetic */ WatchlistFragment$$ExternalSyntheticLambda0(WatchlistFragment watchlistFragment) {
        this.f$0 = watchlistFragment;
    }

    @Override // androidx.activity.result.ActivityResultCallback
    public void onActivityResult(Object obj) {
        ((ActivityResult) obj).getClass();
        WatchlistFragment watchlistFragment = this.f$0;
        watchlistFragment.updateDisplayLanguages();
        watchlistFragment.getViewModel().fetchWatchlist(watchlistFragment.actionMode == null);
    }

    @Override // androidx.swiperefreshlayout.widget.SwipeRefreshLayout.OnRefreshListener
    public void onRefresh() {
        WatchlistFragment watchlistFragment = this.f$0;
        watchlistFragment.getViewModel().fetchWatchlist(watchlistFragment.actionMode == null);
    }

    @Override // org.wikipedia.page.LinkMovementMethodExt.UrlHandler
    public void onUrlClick(String str) {
        WatchlistFragment watchlistFragment = this.f$0;
        Fragment.AnonymousClass10 anonymousClass10 = watchlistFragment.resultLauncher;
        int i = WatchlistFilterActivity.$r8$clinit;
        anonymousClass10.launch(new Intent(watchlistFragment.requireContext(), (Class<?>) WatchlistFilterActivity.class), null);
    }
}
