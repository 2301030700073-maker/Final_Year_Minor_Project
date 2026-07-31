package org.wikipedia.readinglist;

import androidx.swiperefreshlayout.widget.SwipeRefreshLayout;
import okhttp3.Cache;
import okhttp3.Headers;
import okio.Path;
import org.wikipedia.databinding.ActivityLoginBinding;
import org.wikipedia.readinglist.ReadingListBehaviorsUtil;
import org.wikipedia.settings.Prefs;
import org.wikipedia.views.WikiSwipeRefreshLayout;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class ReadingListFragment$$ExternalSyntheticLambda3 implements ReadingListBehaviorsUtil.SnackbarCallback, ReadingListBehaviorsUtil.Callback, SwipeRefreshLayout.OnRefreshListener {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ ReadingListFragment f$0;

    public /* synthetic */ ReadingListFragment$$ExternalSyntheticLambda3(ReadingListFragment readingListFragment, int i) {
        this.$r8$classId = i;
        this.f$0 = readingListFragment;
    }

    @Override // org.wikipedia.readinglist.ReadingListBehaviorsUtil.Callback
    public void onCompleted() {
        int i = this.$r8$classId;
        ReadingListFragment readingListFragment = this.f$0;
        switch (i) {
            case 2:
                readingListFragment.update(readingListFragment.readingList);
                break;
            case 3:
                readingListFragment.update(readingListFragment.readingList);
                break;
            case 4:
                readingListFragment.adapter.notifyDataSetChanged();
                readingListFragment.update(readingListFragment.readingList);
                break;
            case 5:
                readingListFragment.adapter.notifyDataSetChanged();
                readingListFragment.update(readingListFragment.readingList);
                break;
            case 6:
                readingListFragment.adapter.notifyDataSetChanged();
                readingListFragment.update(readingListFragment.readingList);
                break;
            case 7:
                readingListFragment.adapter.notifyDataSetChanged();
                readingListFragment.update(readingListFragment.readingList);
                break;
            case 8:
                readingListFragment.adapter.notifyDataSetChanged();
                readingListFragment.update(readingListFragment.readingList);
                break;
            case 9:
                readingListFragment.adapter.notifyDataSetChanged();
                readingListFragment.update(readingListFragment.readingList);
                break;
            case 10:
                readingListFragment.adapter.notifyDataSetChanged();
                readingListFragment.update(readingListFragment.readingList);
                break;
            case 11:
                readingListFragment.setSearchQuery$1(readingListFragment.currentSearchQuery);
                break;
            case 12:
                readingListFragment.setSearchQuery$1(readingListFragment.currentSearchQuery);
                break;
            case IMAGE_VALUE:
            default:
                readingListFragment.update(readingListFragment.readingList);
                break;
            case LINEAR_PROGRESS_INDICATOR_VALUE:
                readingListFragment.adapter.notifyDataSetChanged();
                readingListFragment.update(readingListFragment.readingList);
                break;
        }
    }

    @Override // androidx.swiperefreshlayout.widget.SwipeRefreshLayout.OnRefreshListener
    public void onRefresh() {
        ReadingListFragment readingListFragment = this.f$0;
        ActivityLoginBinding activityLoginBinding = readingListFragment._binding;
        activityLoginBinding.getClass();
        WikiSwipeRefreshLayout wikiSwipeRefreshLayout = (WikiSwipeRefreshLayout) activityLoginBinding.loginButton;
        if (!Headers.Companion.isLoggedIn() || Headers.Companion.isTemporaryAccount()) {
            Cache.Companion.promptLogInToSyncDialog(readingListFragment.requireActivity());
            wikiSwipeRefreshLayout.setRefreshing(false);
        } else {
            Prefs prefs = Prefs.INSTANCE;
            Prefs.setReadingListSyncEnabled(true);
            Path.Companion.manualSyncWithForce();
        }
    }

    @Override // org.wikipedia.readinglist.ReadingListBehaviorsUtil.SnackbarCallback
    public void onUndoDeleteClicked() {
        int i = this.$r8$classId;
        ReadingListFragment readingListFragment = this.f$0;
        switch (i) {
            case 1:
                readingListFragment.updateReadingListData();
                break;
            case IMAGE_VALUE:
                readingListFragment.setSearchQuery$1(readingListFragment.currentSearchQuery);
                break;
            case 15:
                readingListFragment.updateReadingListData();
                break;
            default:
                readingListFragment.updateReadingListData();
                break;
        }
    }
}
