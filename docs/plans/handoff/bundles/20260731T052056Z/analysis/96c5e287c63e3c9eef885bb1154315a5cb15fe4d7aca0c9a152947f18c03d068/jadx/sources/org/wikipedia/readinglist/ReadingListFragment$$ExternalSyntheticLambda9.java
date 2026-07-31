package org.wikipedia.readinglist;

import android.app.Activity;
import android.content.DialogInterface;
import android.view.ContextThemeWrapper;
import androidx.appcompat.app.AlertController;
import androidx.appcompat.app.AlertDialog;
import androidx.compose.ui.Modifier;
import androidx.lifecycle.ViewModelKt;
import coil3.RealImageLoader$execute$2;
import java.io.Serializable;
import java.util.ArrayList;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Ref$ObjectRef;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlinx.coroutines.AwaitKt;
import org.wikipedia.R;
import org.wikipedia.analytics.eventplatform.WikiGamesEvent;
import org.wikipedia.page.PageTitle;
import org.wikipedia.readinglist.database.ReadingList;
import org.wikipedia.util.ShareUtil;
import org.wikipedia.views.SuggestedArticleDescriptionsDialog$$ExternalSyntheticLambda6;
import org.wikipedia.views.SuggestedArticleDescriptionsReportDialog;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class ReadingListFragment$$ExternalSyntheticLambda9 implements DialogInterface.OnClickListener {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;
    public final /* synthetic */ Serializable f$1;
    public final /* synthetic */ Object f$2;
    public final /* synthetic */ Object f$3;

    public /* synthetic */ ReadingListFragment$$ExternalSyntheticLambda9(Object obj, Serializable serializable, Object obj2, Object obj3, int i) {
        this.$r8$classId = i;
        this.f$0 = obj;
        this.f$1 = serializable;
        this.f$2 = obj2;
        this.f$3 = obj3;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        int i2 = this.$r8$classId;
        Object obj = this.f$3;
        Object obj2 = this.f$2;
        Serializable serializable = this.f$1;
        Object obj3 = this.f$0;
        switch (i2) {
            case 0:
                ReadingListFragment readingListFragment = (ReadingListFragment) obj3;
                ReadingList readingList = (ReadingList) serializable;
                ViewModelKt.getLifecycleScope(readingListFragment);
                readingList.pages.clear();
                readingList.pages.addAll((ArrayList) obj2);
                String str = (String) ((Ref$ObjectRef) obj).element;
                str.getClass();
                readingList.listTitle = str;
                if (readingListFragment.readingListMode == ReadingListMode.RECOMMENDED) {
                    readingList.description = null;
                }
                ReadingListFragmentViewModel viewModel = readingListFragment.getViewModel();
                AwaitKt.launch$default(ViewModelKt.getViewModelScope(viewModel), new ReadingListFragmentViewModel$updateList$$inlined$CoroutineExceptionHandler$1(viewModel, 3), null, new RealImageLoader$execute$2(readingList, viewModel, null, 25), 2);
                break;
            default:
                SuggestedArticleDescriptionsReportDialog suggestedArticleDescriptionsReportDialog = (SuggestedArticleDescriptionsReportDialog) obj3;
                String str2 = (String) serializable;
                Activity activity = (Activity) obj2;
                SuggestedArticleDescriptionsDialog$$ExternalSyntheticLambda6 suggestedArticleDescriptionsDialog$$ExternalSyntheticLambda6 = (SuggestedArticleDescriptionsDialog$$ExternalSyntheticLambda6) obj;
                ArrayList reportReasons = suggestedArticleDescriptionsReportDialog.getReportReasons();
                AlertController.AlertParams alertParams = (AlertController.AlertParams) suggestedArticleDescriptionsReportDialog.array;
                if (!reportReasons.isEmpty()) {
                    WikiGamesEvent wikiGamesEvent = suggestedArticleDescriptionsReportDialog.analyticsHelper;
                    ContextThemeWrapper contextThemeWrapper = alertParams.mContext;
                    ArrayList reportReasons2 = suggestedArticleDescriptionsReportDialog.getReportReasons();
                    PageTitle pageTitle = suggestedArticleDescriptionsReportDialog.pageTitle;
                    wikiGamesEvent.getClass();
                    str2.getClass();
                    pageTitle.getClass();
                    StringBuilder m352m = Modifier.CC.m352m(WikiGamesEvent.composeLogString(pageTitle), ".reportDialog.suggestion:", StringsKt__StringsJVMKt.replace$default(StringsKt__StringsJVMKt.replace$default(str2, ".", "%2E"), ":", "%3A"), ".reasons:", CollectionsKt.joinToString$default(reportReasons2, "|", null, null, null, 62));
                    m352m.append(".reported");
                    wikiGamesEvent.log(contextThemeWrapper, m352m.toString());
                    String string = alertParams.mContext.getString(R.string.suggested_edits_suggestion_report_submitted);
                    string.getClass();
                    ShareUtil.makeSnackbar$default(activity, string, 0, 12).show();
                    switch (suggestedArticleDescriptionsDialog$$ExternalSyntheticLambda6.$r8$classId) {
                        case 0:
                            AlertDialog alertDialog = suggestedArticleDescriptionsDialog$$ExternalSyntheticLambda6.f$0.dialog;
                            if (alertDialog != null) {
                                alertDialog.dismiss();
                                break;
                            }
                            break;
                        default:
                            AlertDialog alertDialog2 = suggestedArticleDescriptionsDialog$$ExternalSyntheticLambda6.f$0.dialog;
                            if (alertDialog2 != null) {
                                alertDialog2.dismiss();
                                break;
                            }
                            break;
                    }
                    suggestedArticleDescriptionsReportDialog.reported = true;
                    AlertDialog alertDialog3 = suggestedArticleDescriptionsReportDialog.dialog;
                    if (alertDialog3 != null) {
                        alertDialog3.dismiss();
                        break;
                    }
                }
                break;
        }
    }
}
