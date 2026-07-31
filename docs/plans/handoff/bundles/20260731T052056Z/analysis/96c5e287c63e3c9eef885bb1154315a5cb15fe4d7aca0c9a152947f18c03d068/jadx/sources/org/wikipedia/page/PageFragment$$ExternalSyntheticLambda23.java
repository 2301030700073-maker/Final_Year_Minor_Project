package org.wikipedia.page;

import androidx.activity.result.ActivityResult;
import androidx.activity.result.ActivityResultCallback;
import androidx.appcompat.app.AlertDialog;
import androidx.swiperefreshlayout.widget.SwipeRefreshLayout;
import org.wikipedia.page.campaign.CampaignDialog;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class PageFragment$$ExternalSyntheticLambda23 implements ActivityResultCallback, SwipeRefreshLayout.OnRefreshListener {
    public final /* synthetic */ PageFragment f$0;

    public /* synthetic */ PageFragment$$ExternalSyntheticLambda23(PageFragment pageFragment) {
        this.f$0 = pageFragment;
    }

    @Override // androidx.activity.result.ActivityResultCallback
    public void onActivityResult(Object obj) {
        CampaignDialog campaignDialog;
        AlertDialog alertDialog;
        ActivityResult activityResult = (ActivityResult) obj;
        int i = PageFragment.REFRESH_SPINNER_ADDITIONAL_OFFSET;
        activityResult.getClass();
        if (activityResult.resultCode != 100 || (campaignDialog = this.f$0.campaignDialog) == null || (alertDialog = campaignDialog.dialog) == null) {
            return;
        }
        alertDialog.dismiss();
    }

    @Override // androidx.swiperefreshlayout.widget.SwipeRefreshLayout.OnRefreshListener
    public void onRefresh() {
        int i = PageFragment.REFRESH_SPINNER_ADDITIONAL_OFFSET;
        PageFragment pageFragment = this.f$0;
        pageFragment.getWebView().clearCache(true);
        PageFragment.refreshPage$default(pageFragment);
    }
}
