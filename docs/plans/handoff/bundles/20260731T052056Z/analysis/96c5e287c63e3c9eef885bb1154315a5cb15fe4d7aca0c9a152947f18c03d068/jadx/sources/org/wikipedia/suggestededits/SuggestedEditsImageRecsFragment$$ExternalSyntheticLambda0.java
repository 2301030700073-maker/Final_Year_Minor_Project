package org.wikipedia.suggestededits;

import android.content.Intent;
import androidx.activity.result.ActivityResult;
import androidx.activity.result.ActivityResultCallback;
import androidx.appcompat.app.AppCompatActivity;
import androidx.lifecycle.ViewModelKt;
import com.google.android.material.button.MaterialButton;
import com.google.android.material.snackbar.Snackbar;
import kotlin.coroutines.Continuation;
import kotlinx.coroutines.AwaitKt;
import org.maplibre.android.maps.MapChangeReceiver;
import org.wikipedia.R;
import org.wikipedia.analytics.eventplatform.EditAttemptStepEvent;
import org.wikipedia.analytics.eventplatform.ImageRecommendationsEvent;
import org.wikipedia.page.LinkMovementMethodExt;
import org.wikipedia.page.PageTitle;
import org.wikipedia.talk.TalkTopicActivity$$ExternalSyntheticLambda11;
import org.wikipedia.talk.TalkTopicViewModel$undo$2;
import org.wikipedia.util.ShareUtil;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class SuggestedEditsImageRecsFragment$$ExternalSyntheticLambda0 implements ActivityResultCallback, LinkMovementMethodExt.UrlHandler {
    public final /* synthetic */ SuggestedEditsImageRecsFragment f$0;

    public /* synthetic */ SuggestedEditsImageRecsFragment$$ExternalSyntheticLambda0(SuggestedEditsImageRecsFragment suggestedEditsImageRecsFragment) {
        this.f$0 = suggestedEditsImageRecsFragment;
    }

    @Override // androidx.activity.result.ActivityResultCallback
    public void onActivityResult(Object obj) {
        ActivityResult activityResult = (ActivityResult) obj;
        activityResult.getClass();
        if (activityResult.resultCode == 1) {
            Intent intent = activityResult.data;
            long longExtra = intent != null ? intent.getLongExtra("revId", 0L) : 0L;
            SuggestedEditsImageRecsFragment suggestedEditsImageRecsFragment = this.f$0;
            AppCompatActivity requireActivity = suggestedEditsImageRecsFragment.requireActivity();
            String string = suggestedEditsImageRecsFragment.getString(R.string.edit_saved_successfully);
            string.getClass();
            Snackbar makeSnackbar$default = ShareUtil.makeSnackbar$default(requireActivity, string, 0, 12);
            makeSnackbar$default.setAction(R.string.edit_published_view, new TalkTopicActivity$$ExternalSyntheticLambda11(1, longExtra, suggestedEditsImageRecsFragment));
            MapChangeReceiver mapChangeReceiver = suggestedEditsImageRecsFragment._binding;
            mapChangeReceiver.getClass();
            makeSnackbar$default.setAnchorView((MaterialButton) mapChangeReceiver.onCameraIsChangingListenerList);
            makeSnackbar$default.show();
            ImageRecommendationsEvent.Companion companion = ImageRecommendationsEvent.Companion;
            String actionStringForAnalytics$default = SuggestedEditsImageRecsFragment.getActionStringForAnalytics$default(suggestedEditsImageRecsFragment, "accepted", null, Long.valueOf(longExtra), 2);
            String str = suggestedEditsImageRecsFragment.getViewModel().langCode;
            companion.getClass();
            ImageRecommendationsEvent.Companion.logAction("editsummary_success_confirm", "editsummary_dialog", actionStringForAnalytics$default, str);
            EditAttemptStepEvent.Companion companion2 = EditAttemptStepEvent.Companion;
            PageTitle pageTitle = suggestedEditsImageRecsFragment.getViewModel().getPageTitle();
            companion2.getClass();
            EditAttemptStepEvent.Companion.logSaveSuccess(pageTitle, "wikitext");
            SuggestedEditsImageRecsFragmentViewModel viewModel = suggestedEditsImageRecsFragment.getViewModel();
            AwaitKt.launch$default(ViewModelKt.getViewModelScope(viewModel), viewModel.handler, null, new TalkTopicViewModel$undo$2(viewModel, longExtra, (Continuation) null, 6), 2);
            suggestedEditsImageRecsFragment.callback().nextPage(suggestedEditsImageRecsFragment);
        }
    }

    @Override // org.wikipedia.page.LinkMovementMethodExt.UrlHandler
    public void onUrlClick(String str) {
        ImageRecommendationsEvent.Companion companion = ImageRecommendationsEvent.Companion;
        SuggestedEditsImageRecsFragment suggestedEditsImageRecsFragment = this.f$0;
        String actionStringForAnalytics$default = SuggestedEditsImageRecsFragment.getActionStringForAnalytics$default(suggestedEditsImageRecsFragment, "accepted", null, null, 14);
        String str2 = suggestedEditsImageRecsFragment.getViewModel().langCode;
        companion.getClass();
        ImageRecommendationsEvent.Companion.logAction("suggested_edit_return", "nosuggestions_dialog", actionStringForAnalytics$default, str2);
        suggestedEditsImageRecsFragment.requireActivity().finish();
    }
}
