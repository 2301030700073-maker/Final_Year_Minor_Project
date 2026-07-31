package org.wikipedia.page.edithistory;

import androidx.swiperefreshlayout.widget.SwipeRefreshLayout;
import org.wikipedia.page.LinkMovementMethodExt;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class EditHistoryListActivity$$ExternalSyntheticLambda6 implements SwipeRefreshLayout.OnRefreshListener, LinkMovementMethodExt.UrlHandler {
    public final /* synthetic */ EditHistoryListActivity f$0;

    public /* synthetic */ EditHistoryListActivity$$ExternalSyntheticLambda6(EditHistoryListActivity editHistoryListActivity) {
        this.f$0 = editHistoryListActivity;
    }

    @Override // androidx.swiperefreshlayout.widget.SwipeRefreshLayout.OnRefreshListener
    public void onRefresh() {
        int i = EditHistoryListActivity.$r8$clinit;
        EditHistoryListActivity editHistoryListActivity = this.f$0;
        editHistoryListActivity.getViewModel().cachedRevisions.clear();
        editHistoryListActivity.editHistoryListAdapter.refresh();
    }

    @Override // org.wikipedia.page.LinkMovementMethodExt.UrlHandler
    public void onUrlClick(String str) {
        this.f$0.showFilterOverflowMenu();
    }
}
