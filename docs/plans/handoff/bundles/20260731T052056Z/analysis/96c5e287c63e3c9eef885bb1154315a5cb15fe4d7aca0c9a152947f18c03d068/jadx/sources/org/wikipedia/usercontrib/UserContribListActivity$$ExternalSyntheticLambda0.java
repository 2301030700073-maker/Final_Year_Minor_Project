package org.wikipedia.usercontrib;

import android.content.Intent;
import androidx.activity.result.ActivityResult;
import androidx.activity.result.ActivityResultCallback;
import androidx.activity.result.ActivityResultRegistry$register$2;
import androidx.lifecycle.ViewModelKt;
import androidx.swiperefreshlayout.widget.SwipeRefreshLayout;
import java.util.List;
import kotlin.coroutines.Continuation;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.AwaitKt;
import kotlinx.coroutines.Job;
import org.wikipedia.edit.richtext.SyntaxHighlighter;
import org.wikipedia.page.LinkMovementMethodExt;
import org.wikipedia.settings.Prefs;
import org.wikipedia.talk.UserTalkPopupHelper$sendThanks$$inlined$CoroutineExceptionHandler$1;
import org.wikipedia.usercontrib.UserContribListActivity;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class UserContribListActivity$$ExternalSyntheticLambda0 implements SwipeRefreshLayout.OnRefreshListener, LinkMovementMethodExt.UrlHandlerWithTextAndCoords, ActivityResultCallback, LinkMovementMethodExt.UrlHandler {
    public final /* synthetic */ UserContribListActivity f$0;

    public /* synthetic */ UserContribListActivity$$ExternalSyntheticLambda0(UserContribListActivity userContribListActivity) {
        this.f$0 = userContribListActivity;
    }

    @Override // androidx.activity.result.ActivityResultCallback
    public void onActivityResult(Object obj) {
        ActivityResult activityResult = (ActivityResult) obj;
        int i = UserContribListActivity.$r8$clinit;
        activityResult.getClass();
        if (activityResult.resultCode == -1) {
            UserContribListActivity userContribListActivity = this.f$0;
            UserContribListViewModel viewModel = userContribListActivity.getViewModel();
            Prefs prefs = Prefs.INSTANCE;
            viewModel.langCode = Prefs.getUserContribFilterLangCode();
            UserContribListViewModel viewModel2 = userContribListActivity.getViewModel();
            AwaitKt.launch$default(ViewModelKt.getViewModelScope(viewModel2), new UserTalkPopupHelper$sendThanks$$inlined$CoroutineExceptionHandler$1(Job.Key.$$INSTANCE$1, 19), null, new SyntaxHighlighter.AnonymousClass2(19, viewModel2, (Continuation) null), 2);
            userContribListActivity.setupAdapters$1();
            userContribListActivity.getViewModel().cachedContribs.clear();
            userContribListActivity.userContribListAdapter.refresh();
            userContribListActivity.userContribSearchBarAdapter.notifyItemChanged(0);
        }
    }

    @Override // androidx.swiperefreshlayout.widget.SwipeRefreshLayout.OnRefreshListener
    public void onRefresh() {
        int i = UserContribListActivity.$r8$clinit;
        UserContribListActivity userContribListActivity = this.f$0;
        userContribListActivity.getViewModel().cachedContribs.clear();
        userContribListActivity.userContribListAdapter.refresh();
    }

    @Override // org.wikipedia.page.LinkMovementMethodExt.UrlHandlerWithTextAndCoords
    public void onUrlClick(int i, int i2, String str, String str2, String str3) {
        int i3 = UserContribListActivity.$r8$clinit;
        UserContribListActivity.UserContribLinkHandler userContribLinkHandler = this.f$0.linkHandler;
        if (userContribLinkHandler == null) {
            Intrinsics.throwUninitializedPropertyAccessException("linkHandler");
            throw null;
        }
        userContribLinkHandler.lastX = i;
        userContribLinkHandler.lastY = i2;
        userContribLinkHandler.onUrlClick(str, str2, str3);
    }

    @Override // org.wikipedia.page.LinkMovementMethodExt.UrlHandler
    public void onUrlClick(String str) {
        UserContribListActivity userContribListActivity = this.f$0;
        ActivityResultRegistry$register$2 activityResultRegistry$register$2 = userContribListActivity.launchFilterActivity;
        List list = UserContribFilterActivity.NAMESPACE_LIST;
        activityResultRegistry$register$2.launch(new Intent(userContribListActivity, (Class<?>) UserContribFilterActivity.class), null);
    }
}
