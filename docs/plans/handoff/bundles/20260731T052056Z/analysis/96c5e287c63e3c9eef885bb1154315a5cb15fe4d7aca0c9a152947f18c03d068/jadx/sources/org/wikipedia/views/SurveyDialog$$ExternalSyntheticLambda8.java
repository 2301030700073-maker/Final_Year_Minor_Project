package org.wikipedia.views;

import android.content.DialogInterface;
import android.os.Bundle;
import android.view.View;
import androidx.appcompat.app.AppCompatActivity;
import androidx.compose.foundation.text.TextLinkScope$$ExternalSyntheticLambda3;
import androidx.fragment.app.BackStackRecord;
import androidx.lifecycle.ViewModelKt;
import coil3.size.ViewSizeResolver$CC;
import com.google.android.material.textfield.TextInputEditText;
import java.util.ArrayList;
import java.util.List;
import kotlin.coroutines.Continuation;
import kotlinx.coroutines.AwaitKt;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.flow.internal.CombineKt$combineInternal$2;
import okhttp3.ConnectionPool;
import okhttp3.Cookie;
import okhttp3.Dispatcher$promoteAndExecute$Effects;
import okio.Okio__JvmOkioKt;
import org.wikipedia.Constants;
import org.wikipedia.R;
import org.wikipedia.analytics.eventplatform.EditAttemptStepEvent;
import org.wikipedia.analytics.eventplatform.WikiGamesEvent;
import org.wikipedia.databinding.FragmentArticleEditDetailsBinding;
import org.wikipedia.dataclient.mwapi.MwQueryPage;
import org.wikipedia.diff.ArticleEditDetailsFragment;
import org.wikipedia.diff.ArticleEditDetailsFragment$$ExternalSyntheticLambda30;
import org.wikipedia.diff.ArticleEditDetailsViewModel;
import org.wikipedia.diff.ArticleEditDetailsViewModel$undoEdit$$inlined$CoroutineExceptionHandler$1;
import org.wikipedia.diff.ArticleEditDetailsViewModel$undoEdit$2;
import org.wikipedia.diff.UndoEditDialog;
import org.wikipedia.page.PageTitle;
import org.wikipedia.readinglist.ReadingListBehaviorsUtil;
import org.wikipedia.readinglist.ReadingListBehaviorsUtil$deleteReadingList$2;
import org.wikipedia.readinglist.RemoveFromReadingListsDialog$Callback;
import org.wikipedia.readinglist.database.ReadingList;
import org.wikipedia.readinglist.recommended.RecommendedReadingListInterestsFragment;
import org.wikipedia.readinglist.recommended.RecommendedReadingListSource;
import org.wikipedia.readinglist.recommended.RecommendedReadingListSourceFragment;
import org.wikipedia.savedpages.SavedPageSyncService$doWork$2;
import org.wikipedia.talk.TalkTopicsViewModel$subscribeTopic$1;
import org.wikipedia.talk.UserTalkPopupHelper$sendThanks$$inlined$CoroutineExceptionHandler$1;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class SurveyDialog$$ExternalSyntheticLambda8 implements DialogInterface.OnClickListener {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;
    public final /* synthetic */ Object f$1;
    public final /* synthetic */ Object f$3;

    public /* synthetic */ SurveyDialog$$ExternalSyntheticLambda8(AppCompatActivity appCompatActivity, List list, ReadingListBehaviorsUtil.Callback callback) {
        this.$r8$classId = 2;
        this.f$1 = appCompatActivity;
        this.f$0 = list;
        this.f$3 = callback;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        int i2 = this.$r8$classId;
        Object obj = this.f$3;
        Object obj2 = this.f$1;
        Object obj3 = this.f$0;
        switch (i2) {
            case 0:
                Cookie.Companion.submitPatrollerActivityEvent("feedback_input_submit", "feedback_input_form", Cookie.Companion.getActionDataString$default(null, null, String.valueOf(((TextInputEditText) ((View) obj3).findViewById(R.id.feedbackInput)).getText()), null, null, null, null, null, null, 1019));
                Okio__JvmOkioKt.showFeedbackSnackbarAndTooltip((AppCompatActivity) obj2, (Constants.InvokeSource) obj);
                break;
            case 1:
                Constants.InvokeSource invokeSource = (Constants.InvokeSource) obj;
                ConnectionPool connectionPool = ((UndoEditDialog) obj3).binding;
                ArticleEditDetailsFragment$$ExternalSyntheticLambda30 articleEditDetailsFragment$$ExternalSyntheticLambda30 = (ArticleEditDetailsFragment$$ExternalSyntheticLambda30) obj2;
                if (invokeSource == Constants.InvokeSource.SUGGESTED_EDITS_RECENT_EDITS) {
                    Cookie.Companion.submitPatrollerActivityEvent("undo_confirm", "pt_edit", Cookie.Companion.getActionDataString$default(null, null, null, null, String.valueOf(((PlainPasteEditText) connectionPool.delegate).getText()), null, null, null, null, 1007));
                }
                String valueOf = String.valueOf(((PlainPasteEditText) connectionPool.delegate).getText());
                ArticleEditDetailsFragment articleEditDetailsFragment = articleEditDetailsFragment$$ExternalSyntheticLambda30.f$0;
                MwQueryPage.Revision revision = articleEditDetailsFragment.getViewModel().revisionTo;
                if (revision != null) {
                    FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding = articleEditDetailsFragment._binding;
                    fragmentArticleEditDetailsBinding.getClass();
                    fragmentArticleEditDetailsBinding.progressBar.setVisibility(0);
                    EditAttemptStepEvent.Companion companion = EditAttemptStepEvent.Companion;
                    PageTitle pageTitle = articleEditDetailsFragment.getViewModel().pageTitle;
                    ViewSizeResolver$CC.m(companion, pageTitle, "saveAttempt", "other", pageTitle);
                    ArticleEditDetailsViewModel viewModel = articleEditDetailsFragment.getViewModel();
                    PageTitle pageTitle2 = articleEditDetailsFragment.getViewModel().pageTitle;
                    String str = revision.user;
                    String obj4 = valueOf.toString();
                    long j = articleEditDetailsFragment.getViewModel().revisionToId;
                    pageTitle2.getClass();
                    str.getClass();
                    obj4.getClass();
                    AwaitKt.launch$default(ViewModelKt.getViewModelScope(viewModel), new ArticleEditDetailsViewModel$undoEdit$$inlined$CoroutineExceptionHandler$1(viewModel, 0), null, new ArticleEditDetailsViewModel$undoEdit$2(pageTitle2, j, str, obj4, viewModel, (Continuation) null), 2);
                    break;
                }
                break;
            case 2:
                AppCompatActivity appCompatActivity = (AppCompatActivity) obj2;
                List list = (List) obj3;
                ReadingListBehaviorsUtil.Callback callback = (ReadingListBehaviorsUtil.Callback) obj;
                List list2 = ReadingListBehaviorsUtil.allReadingLists;
                if (!list.isEmpty()) {
                    AwaitKt.launch$default(AwaitKt.MainScope(), ReadingListBehaviorsUtil.exceptionHandler, null, new TalkTopicsViewModel$subscribeTopic$1(list, true, appCompatActivity, null, 6), 2);
                }
                callback.onCompleted();
                break;
            case 3:
                AwaitKt.launch$default(AwaitKt.MainScope(), ReadingListBehaviorsUtil.exceptionHandler, null, new ReadingListBehaviorsUtil$deleteReadingList$2((ReadingList) obj3, (AppCompatActivity) obj2, (ReadingListBehaviorsUtil.Callback) obj, null, 1), 2);
                break;
            case 4:
                AwaitKt.launch$default(AwaitKt.MainScope(), ReadingListBehaviorsUtil.exceptionHandler, null, new SavedPageSyncService$doWork$2((ArrayList) obj3, (AppCompatActivity) obj2, (TextLinkScope$$ExternalSyntheticLambda3) obj, null, 1), 2);
                break;
            case 5:
                AwaitKt.launch$default(AwaitKt.MainScope(), new UserTalkPopupHelper$sendThanks$$inlined$CoroutineExceptionHandler$1(Job.Key.$$INSTANCE$1, 6), null, new CombineKt$combineInternal$2((Dispatcher$promoteAndExecute$Effects) obj3, (boolean[]) obj2, (RemoveFromReadingListsDialog$Callback) obj, null), 2);
                break;
            default:
                RecommendedReadingListSourceFragment recommendedReadingListSourceFragment = (RecommendedReadingListSourceFragment) obj2;
                RecommendedReadingListSource recommendedReadingListSource = (RecommendedReadingListSource) obj;
                WikiGamesEvent.submit$default("adjust_click", (String) obj3, null, null, null, null, null, null, 508);
                recommendedReadingListSourceFragment.getViewModel().updateSourceSelection(recommendedReadingListSource);
                if (recommendedReadingListSource == RecommendedReadingListSource.INTERESTS) {
                    recommendedReadingListSourceFragment.getViewModel().saveSourceSelection();
                    BackStackRecord backStackRecord = new BackStackRecord(recommendedReadingListSourceFragment.requireActivity().getSupportFragmentManager());
                    boolean z = recommendedReadingListSourceFragment.getViewModel().fromSettings;
                    RecommendedReadingListInterestsFragment recommendedReadingListInterestsFragment = new RecommendedReadingListInterestsFragment();
                    Bundle bundle = new Bundle();
                    bundle.putBoolean("fromSettings", z);
                    recommendedReadingListInterestsFragment.setArguments(bundle);
                    backStackRecord.doAddOp(android.R.id.content, recommendedReadingListInterestsFragment, null, 1);
                    backStackRecord.addToBackStack();
                    backStackRecord.commit();
                    break;
                }
                break;
        }
    }

    public /* synthetic */ SurveyDialog$$ExternalSyntheticLambda8(Object obj, Object obj2, Object obj3, int i) {
        this.$r8$classId = i;
        this.f$0 = obj;
        this.f$1 = obj2;
        this.f$3 = obj3;
    }

    public /* synthetic */ SurveyDialog$$ExternalSyntheticLambda8(Constants.InvokeSource invokeSource, UndoEditDialog undoEditDialog, ArticleEditDetailsFragment$$ExternalSyntheticLambda30 articleEditDetailsFragment$$ExternalSyntheticLambda30) {
        this.$r8$classId = 1;
        this.f$3 = invokeSource;
        this.f$0 = undoEditDialog;
        this.f$1 = articleEditDetailsFragment$$ExternalSyntheticLambda30;
    }
}
