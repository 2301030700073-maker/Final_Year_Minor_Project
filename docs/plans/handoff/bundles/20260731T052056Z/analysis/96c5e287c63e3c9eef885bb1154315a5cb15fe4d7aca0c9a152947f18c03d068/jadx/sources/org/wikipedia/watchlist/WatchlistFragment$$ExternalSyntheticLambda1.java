package org.wikipedia.watchlist;

import android.content.Context;
import android.content.Intent;
import android.view.View;
import androidx.fragment.app.Fragment;
import okhttp3.Headers;
import org.wikipedia.notifications.NotificationActivity;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class WatchlistFragment$$ExternalSyntheticLambda1 implements View.OnClickListener {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ WatchlistFragment f$0;

    public /* synthetic */ WatchlistFragment$$ExternalSyntheticLambda1(WatchlistFragment watchlistFragment, int i) {
        this.$r8$classId = i;
        this.f$0 = watchlistFragment;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        int i = this.$r8$classId;
        WatchlistFragment watchlistFragment = this.f$0;
        switch (i) {
            case 0:
                watchlistFragment.getViewModel().fetchWatchlist(watchlistFragment.actionMode == null);
                break;
            case 1:
                if (Headers.Companion.isLoggedIn()) {
                    int i2 = NotificationActivity.$r8$clinit;
                    watchlistFragment.startActivity(Headers.Companion.newIntent(watchlistFragment.requireActivity()), null);
                    break;
                }
                break;
            case 2:
                if (watchlistFragment.actionMode == null) {
                    watchlistFragment.actionMode = ((WatchlistActivity) watchlistFragment.requireActivity()).startSupportActionMode(watchlistFragment.searchActionModeCallback);
                    watchlistFragment.getViewModel().updateList(false);
                    break;
                }
                break;
            default:
                Fragment.AnonymousClass10 anonymousClass10 = watchlistFragment.resultLauncher;
                int i3 = WatchlistFilterActivity.$r8$clinit;
                Context context = view.getContext();
                context.getClass();
                anonymousClass10.launch(new Intent(context, (Class<?>) WatchlistFilterActivity.class), null);
                break;
        }
    }
}
