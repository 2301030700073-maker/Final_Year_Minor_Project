package org.wikipedia.views;

import android.content.DialogInterface;
import android.view.ContextThemeWrapper;
import android.webkit.JsResult;
import androidx.appcompat.app.AlertController;
import okio.internal.DefaultSocket;
import org.wikipedia.analytics.eventplatform.WikiGamesEvent;
import org.wikipedia.page.PageTitle;
import org.wikipedia.talk.TalkReplyActivity;
import org.wikipedia.talk.TalkReplyActivity$special$$inlined$lruCache$default$1;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class SuggestedArticleDescriptionsDialog$$ExternalSyntheticLambda5 implements DialogInterface.OnDismissListener {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;

    public /* synthetic */ SuggestedArticleDescriptionsDialog$$ExternalSyntheticLambda5(int i, Object obj) {
        this.$r8$classId = i;
        this.f$0 = obj;
    }

    @Override // android.content.DialogInterface.OnDismissListener
    public final void onDismiss(DialogInterface dialogInterface) {
        int i = this.$r8$classId;
        Object obj = this.f$0;
        switch (i) {
            case 0:
                SuggestedArticleDescriptionsDialog suggestedArticleDescriptionsDialog = (SuggestedArticleDescriptionsDialog) obj;
                if (!suggestedArticleDescriptionsDialog.suggestionChosen) {
                    WikiGamesEvent wikiGamesEvent = suggestedArticleDescriptionsDialog.analyticsHelper;
                    ContextThemeWrapper contextThemeWrapper = ((AlertController.AlertParams) suggestedArticleDescriptionsDialog.array).mContext;
                    PageTitle pageTitle = suggestedArticleDescriptionsDialog.pageTitle;
                    wikiGamesEvent.getClass();
                    pageTitle.getClass();
                    wikiGamesEvent.log(contextThemeWrapper, WikiGamesEvent.composeLogString(pageTitle).concat(".suggestionsDialog.dismissed"));
                    break;
                }
                break;
            case 1:
                JsResult jsResult = (JsResult) obj;
                if (jsResult != null) {
                    jsResult.cancel();
                    break;
                }
                break;
            case 2:
                DefaultSocket defaultSocket = (DefaultSocket) ((TextInputDialog) obj).callback;
                if (defaultSocket != null) {
                    TalkReplyActivity talkReplyActivity = (TalkReplyActivity) defaultSocket.closeBits;
                    TalkReplyActivity$special$$inlined$lruCache$default$1 talkReplyActivity$special$$inlined$lruCache$default$1 = TalkReplyActivity.draftReplies;
                    talkReplyActivity.setSaveButtonEnabled(true);
                    break;
                }
                break;
            default:
                SuggestedArticleDescriptionsReportDialog suggestedArticleDescriptionsReportDialog = (SuggestedArticleDescriptionsReportDialog) obj;
                if (!suggestedArticleDescriptionsReportDialog.reported) {
                    WikiGamesEvent wikiGamesEvent2 = suggestedArticleDescriptionsReportDialog.analyticsHelper;
                    ContextThemeWrapper contextThemeWrapper2 = ((AlertController.AlertParams) suggestedArticleDescriptionsReportDialog.array).mContext;
                    wikiGamesEvent2.getClass();
                    wikiGamesEvent2.log(contextThemeWrapper2, "machineSuggestions.reportDialog.dismissed");
                    break;
                }
                break;
        }
    }
}
