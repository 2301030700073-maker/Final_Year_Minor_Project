package org.wikipedia.suggestededits;

import android.content.Intent;
import androidx.activity.result.ActivityResult;
import androidx.activity.result.ActivityResultCallback;
import androidx.fragment.app.Fragment;
import androidx.swiperefreshlayout.widget.SwipeRefreshLayout;
import okhttp3.Cookie;
import org.wikipedia.page.LinkMovementMethodExt;
import org.wikipedia.settings.Prefs;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class SuggestedEditsRecentEditsFragment$$ExternalSyntheticLambda0 implements SwipeRefreshLayout.OnRefreshListener, ActivityResultCallback, LinkMovementMethodExt.UrlHandler {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ SuggestedEditsRecentEditsFragment f$0;

    public /* synthetic */ SuggestedEditsRecentEditsFragment$$ExternalSyntheticLambda0(SuggestedEditsRecentEditsFragment suggestedEditsRecentEditsFragment, int i) {
        this.$r8$classId = i;
        this.f$0 = suggestedEditsRecentEditsFragment;
    }

    @Override // androidx.activity.result.ActivityResultCallback
    public void onActivityResult(Object obj) {
        ActivityResult activityResult = (ActivityResult) obj;
        activityResult.getClass();
        if (activityResult.resultCode == -1) {
            SuggestedEditsRecentEditsFragment suggestedEditsRecentEditsFragment = this.f$0;
            SuggestedEditsRecentEditsViewModel viewModel = suggestedEditsRecentEditsFragment.getViewModel();
            Prefs prefs = Prefs.INSTANCE;
            viewModel.langCode = Prefs.getRecentEditsWikiCode();
            suggestedEditsRecentEditsFragment.setupAdapters$2();
            SuggestedEditsRecentEditsViewModel viewModel2 = suggestedEditsRecentEditsFragment.getViewModel();
            viewModel2.cachedRecentEdits.clear();
            viewModel2.cachedUserInfo.clear();
            suggestedEditsRecentEditsFragment.recentEditsListAdapter.refresh();
            suggestedEditsRecentEditsFragment.recentEditsSearchBarAdapter.notifyItemChanged(0);
        }
    }

    @Override // androidx.swiperefreshlayout.widget.SwipeRefreshLayout.OnRefreshListener
    public void onRefresh() {
        int i = this.$r8$classId;
        SuggestedEditsRecentEditsFragment suggestedEditsRecentEditsFragment = this.f$0;
        switch (i) {
            case 0:
                SuggestedEditsRecentEditsViewModel viewModel = suggestedEditsRecentEditsFragment.getViewModel();
                viewModel.cachedRecentEdits.clear();
                viewModel.cachedUserInfo.clear();
                suggestedEditsRecentEditsFragment.recentEditsListAdapter.refresh();
                break;
            default:
                SuggestedEditsRecentEditsViewModel viewModel2 = suggestedEditsRecentEditsFragment.getViewModel();
                viewModel2.cachedRecentEdits.clear();
                viewModel2.cachedUserInfo.clear();
                suggestedEditsRecentEditsFragment.recentEditsListAdapter.refresh();
                break;
        }
    }

    @Override // org.wikipedia.page.LinkMovementMethodExt.UrlHandler
    public void onUrlClick(String str) {
        Cookie.Companion.submitPatrollerActivityEvent("modify_filters_click", "pt_filters", "");
        SuggestedEditsRecentEditsFragment suggestedEditsRecentEditsFragment = this.f$0;
        Fragment.AnonymousClass10 anonymousClass10 = suggestedEditsRecentEditsFragment.launchFilterActivity;
        int i = SuggestedEditsRecentEditsFilterActivity.$r8$clinit;
        anonymousClass10.launch(new Intent(suggestedEditsRecentEditsFragment.requireContext(), (Class<?>) SuggestedEditsRecentEditsFilterActivity.class), null);
    }
}
