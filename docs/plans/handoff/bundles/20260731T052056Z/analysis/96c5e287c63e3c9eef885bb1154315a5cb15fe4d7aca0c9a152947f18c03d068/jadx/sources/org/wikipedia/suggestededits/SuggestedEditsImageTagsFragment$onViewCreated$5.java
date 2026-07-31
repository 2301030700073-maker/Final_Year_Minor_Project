package org.wikipedia.suggestededits;

import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.lifecycle.Lifecycle$State;
import androidx.lifecycle.ViewModelKt;
import androidx.recyclerview.widget.RecyclerView;
import com.google.gson.Gson$$ExternalSyntheticBUOutline0;
import java.util.regex.Pattern;
import kotlin.Pair;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.text.StringsKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.flow.ReadonlyStateFlow;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.wikipedia.R;
import org.wikipedia.analytics.eventplatform.EditAttemptStepEvent;
import org.wikipedia.analytics.eventplatform.ImageRecommendationsEvent;
import org.wikipedia.databinding.ActivityTalkReplyBinding;
import org.wikipedia.dataclient.mwapi.MwQueryPage;
import org.wikipedia.dataclient.wikidata.Entities;
import org.wikipedia.descriptions.DescriptionEditActivity;
import org.wikipedia.donate.DonateDialog$onCreateView$3;
import org.wikipedia.gallery.ExtMetadata;
import org.wikipedia.gallery.ImageInfo;
import org.wikipedia.page.PageTitle;
import org.wikipedia.util.ImageUrlUtil;
import org.wikipedia.util.Resource;
import org.wikipedia.util.ShareUtil;
import org.wikipedia.util.StringUtil;
import org.wikipedia.util.log.L;
import org.wikipedia.views.ViewUtil;
import org.wikipedia.views.WikiErrorView;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class SuggestedEditsImageTagsFragment$onViewCreated$5 extends SuspendLambda implements Function2 {
    public final /* synthetic */ int $r8$classId;
    public int label;
    public final /* synthetic */ SuggestedEditsImageTagsFragment this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ SuggestedEditsImageTagsFragment$onViewCreated$5(SuggestedEditsImageTagsFragment suggestedEditsImageTagsFragment, Continuation continuation, int i) {
        super(2, continuation);
        this.$r8$classId = i;
        this.this$0 = suggestedEditsImageTagsFragment;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        int i = this.$r8$classId;
        SuggestedEditsImageTagsFragment suggestedEditsImageTagsFragment = this.this$0;
        switch (i) {
            case 0:
                return new SuggestedEditsImageTagsFragment$onViewCreated$5(suggestedEditsImageTagsFragment, continuation, 0);
            case 1:
                return new SuggestedEditsImageTagsFragment$onViewCreated$5(suggestedEditsImageTagsFragment, continuation, 1);
            default:
                return new SuggestedEditsImageTagsFragment$onViewCreated$5(suggestedEditsImageTagsFragment, continuation, 2);
        }
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        CoroutineScope coroutineScope = (CoroutineScope) obj;
        Continuation continuation = (Continuation) obj2;
        switch (i) {
        }
        return ((SuggestedEditsImageTagsFragment$onViewCreated$5) create(coroutineScope, continuation)).invokeSuspend(unit);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        int i = this.$r8$classId;
        final SuggestedEditsImageTagsFragment suggestedEditsImageTagsFragment = this.this$0;
        final int i2 = 1;
        Continuation continuation = null;
        switch (i) {
            case 0:
                CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
                int i3 = this.label;
                if (i3 == 0) {
                    ResultKt.throwOnFailure(obj);
                    Lifecycle$State lifecycle$State = Lifecycle$State.CREATED;
                    DonateDialog$onCreateView$3.AnonymousClass1 anonymousClass1 = new DonateDialog$onCreateView$3.AnonymousClass1(28, suggestedEditsImageTagsFragment, continuation);
                    this.label = 1;
                    if (ViewModelKt.repeatOnLifecycle(suggestedEditsImageTagsFragment, lifecycle$State, anonymousClass1, this) == coroutineSingletons) {
                        break;
                    }
                } else if (i3 != 1) {
                    _UtilJvmKt$$ExternalSyntheticLambda0.m$1("call to 'resume' before 'invoke' with coroutine");
                    break;
                } else {
                    ResultKt.throwOnFailure(obj);
                }
                break;
            case 1:
                CoroutineSingletons coroutineSingletons2 = CoroutineSingletons.COROUTINE_SUSPENDED;
                int i4 = this.label;
                if (i4 == 0) {
                    ResultKt.throwOnFailure(obj);
                    ReadonlyStateFlow readonlyStateFlow = ((SuggestedEditsImageTagsViewModel) suggestedEditsImageTagsFragment.viewModel$delegate.getValue()).uiState;
                    final int i5 = 0;
                    FlowCollector flowCollector = new FlowCollector() { // from class: org.wikipedia.suggestededits.SuggestedEditsImageTagsFragment$onViewCreated$5$1$1$1
                        @Override // kotlinx.coroutines.flow.FlowCollector
                        public final Object emit(Object obj2, Continuation continuation2) {
                            int i6;
                            PageTitle pageTitle;
                            int i7 = i5;
                            Unit unit = Unit.INSTANCE;
                            final SuggestedEditsImageTagsFragment suggestedEditsImageTagsFragment2 = suggestedEditsImageTagsFragment;
                            final int i8 = 0;
                            final int i9 = 1;
                            switch (i7) {
                                case 0:
                                    Resource resource = (Resource) obj2;
                                    if (!(resource instanceof Resource.Loading)) {
                                        if (!(resource instanceof Resource.Success)) {
                                            if (resource instanceof Resource.Error) {
                                                Throwable th = ((Resource.Error) resource).throwable;
                                                L.e(th);
                                                ActivityTalkReplyBinding activityTalkReplyBinding = suggestedEditsImageTagsFragment2._binding;
                                                activityTalkReplyBinding.getClass();
                                                WikiErrorView wikiErrorView = (WikiErrorView) activityTalkReplyBinding.editKeyboardOverlay;
                                                int i10 = WikiErrorView.$r8$clinit;
                                                wikiErrorView.setError(th, null);
                                                ActivityTalkReplyBinding activityTalkReplyBinding2 = suggestedEditsImageTagsFragment2._binding;
                                                activityTalkReplyBinding2.getClass();
                                                ((WikiErrorView) activityTalkReplyBinding2.editKeyboardOverlay).setVisibility(0);
                                                ActivityTalkReplyBinding activityTalkReplyBinding3 = suggestedEditsImageTagsFragment2._binding;
                                                activityTalkReplyBinding3.getClass();
                                                ((ProgressBar) activityTalkReplyBinding3.editKeyboardOverlayFormatting).setVisibility(8);
                                                ActivityTalkReplyBinding activityTalkReplyBinding4 = suggestedEditsImageTagsFragment2._binding;
                                                activityTalkReplyBinding4.getClass();
                                                ((ConstraintLayout) activityTalkReplyBinding4.editKeyboardOverlayHeadings).setVisibility(8);
                                                break;
                                            }
                                        } else {
                                            Pair pair = (Pair) ((Resource.Success) resource).data;
                                            MwQueryPage mwQueryPage = (MwQueryPage) pair.first;
                                            suggestedEditsImageTagsFragment2.page = mwQueryPage;
                                            ImageInfo imageInfo = mwQueryPage.imageInfo();
                                            String str = (String) pair.second;
                                            ActivityTalkReplyBinding activityTalkReplyBinding5 = suggestedEditsImageTagsFragment2._binding;
                                            activityTalkReplyBinding5.getClass();
                                            ((WikiErrorView) activityTalkReplyBinding5.editKeyboardOverlay).setVisibility(8);
                                            ActivityTalkReplyBinding activityTalkReplyBinding6 = suggestedEditsImageTagsFragment2._binding;
                                            activityTalkReplyBinding6.getClass();
                                            ((ConstraintLayout) activityTalkReplyBinding6.editKeyboardOverlayHeadings).setVisibility(0);
                                            ActivityTalkReplyBinding activityTalkReplyBinding7 = suggestedEditsImageTagsFragment2._binding;
                                            activityTalkReplyBinding7.getClass();
                                            ((ProgressBar) activityTalkReplyBinding7.editKeyboardOverlayFormatting).setVisibility(8);
                                            ActivityTalkReplyBinding activityTalkReplyBinding8 = suggestedEditsImageTagsFragment2._binding;
                                            activityTalkReplyBinding8.getClass();
                                            ((TextView) activityTalkReplyBinding8.threadItemView).setVisibility(8);
                                            ActivityTalkReplyBinding activityTalkReplyBinding9 = suggestedEditsImageTagsFragment2._binding;
                                            activityTalkReplyBinding9.getClass();
                                            ((TextView) activityTalkReplyBinding9.talkScrollContainer).setVisibility(0);
                                            ActivityTalkReplyBinding activityTalkReplyBinding10 = suggestedEditsImageTagsFragment2._binding;
                                            activityTalkReplyBinding10.getClass();
                                            ImageView imageView = (ImageView) activityTalkReplyBinding10.footerContainer;
                                            if (imageView.getTag() == null || !(imageView.getTag() instanceof Integer)) {
                                                i6 = 0;
                                            } else {
                                                Object tag = imageView.getTag();
                                                tag.getClass();
                                                i6 = ((Integer) tag).intValue();
                                            }
                                            imageView.setTag(Integer.valueOf(1 | i6));
                                            ActivityTalkReplyBinding activityTalkReplyBinding11 = suggestedEditsImageTagsFragment2._binding;
                                            activityTalkReplyBinding11.getClass();
                                            ImageView imageView2 = (ImageView) activityTalkReplyBinding11.footerContainer;
                                            Pattern pattern = ImageUrlUtil.WIDTH_IN_IMAGE_URL_REGEX;
                                            String str2 = imageInfo != null ? imageInfo.thumbUrl : null;
                                            if (str2 == null) {
                                                str2 = "";
                                            }
                                            ViewUtil.loadImage$default(imageView2, ImageUrlUtil.getUrlForPreferredSize(960, str2), null, 28);
                                            if (str == null || str.length() == 0) {
                                                ExtMetadata extMetadata = imageInfo != null ? imageInfo.metadata : null;
                                                ActivityTalkReplyBinding activityTalkReplyBinding12 = suggestedEditsImageTagsFragment2._binding;
                                                if (extMetadata != null) {
                                                    activityTalkReplyBinding12.getClass();
                                                    TextView textView = activityTalkReplyBinding12.learnMoreButton;
                                                    StringUtil stringUtil = StringUtil.INSTANCE;
                                                    textView.setText(StringsKt.trim(StringUtil.fromHtml(imageInfo.metadata.imageDescription()).toString()).toString());
                                                    ActivityTalkReplyBinding activityTalkReplyBinding13 = suggestedEditsImageTagsFragment2._binding;
                                                    activityTalkReplyBinding13.getClass();
                                                    activityTalkReplyBinding13.learnMoreButton.setVisibility(0);
                                                    ActivityTalkReplyBinding activityTalkReplyBinding14 = suggestedEditsImageTagsFragment2._binding;
                                                    activityTalkReplyBinding14.getClass();
                                                    ImageView imageView3 = (ImageView) activityTalkReplyBinding14.footerContainer;
                                                    ActivityTalkReplyBinding activityTalkReplyBinding15 = suggestedEditsImageTagsFragment2._binding;
                                                    activityTalkReplyBinding15.getClass();
                                                    imageView3.setContentDescription(activityTalkReplyBinding15.learnMoreButton.getText());
                                                } else {
                                                    activityTalkReplyBinding12.getClass();
                                                    activityTalkReplyBinding12.learnMoreButton.setVisibility(8);
                                                }
                                            } else {
                                                ActivityTalkReplyBinding activityTalkReplyBinding16 = suggestedEditsImageTagsFragment2._binding;
                                                activityTalkReplyBinding16.getClass();
                                                activityTalkReplyBinding16.learnMoreButton.setText(str);
                                                ActivityTalkReplyBinding activityTalkReplyBinding17 = suggestedEditsImageTagsFragment2._binding;
                                                activityTalkReplyBinding17.getClass();
                                                activityTalkReplyBinding17.learnMoreButton.setVisibility(0);
                                            }
                                            suggestedEditsImageTagsFragment2.updateLicenseTextShown();
                                            suggestedEditsImageTagsFragment2.callback$1().updateActionButton();
                                            suggestedEditsImageTagsFragment2.updateTagChips();
                                            break;
                                        }
                                    } else {
                                        ActivityTalkReplyBinding activityTalkReplyBinding18 = suggestedEditsImageTagsFragment2._binding;
                                        activityTalkReplyBinding18.getClass();
                                        ((WikiErrorView) activityTalkReplyBinding18.editKeyboardOverlay).setVisibility(8);
                                        ActivityTalkReplyBinding activityTalkReplyBinding19 = suggestedEditsImageTagsFragment2._binding;
                                        activityTalkReplyBinding19.getClass();
                                        ((ProgressBar) activityTalkReplyBinding19.editKeyboardOverlayFormatting).setVisibility(0);
                                        ActivityTalkReplyBinding activityTalkReplyBinding20 = suggestedEditsImageTagsFragment2._binding;
                                        activityTalkReplyBinding20.getClass();
                                        ((ConstraintLayout) activityTalkReplyBinding20.editKeyboardOverlayHeadings).setVisibility(8);
                                        break;
                                    }
                                    break;
                                default:
                                    Resource resource2 = (Resource) obj2;
                                    if (!(resource2 instanceof Resource.Success)) {
                                        if (resource2 instanceof Resource.Error) {
                                            Throwable th2 = ((Resource.Error) resource2).throwable;
                                            PageTitle pageTitle2 = suggestedEditsImageTagsFragment2.getPageTitle();
                                            if (pageTitle2 != null) {
                                                EditAttemptStepEvent.Companion.getClass();
                                                EditAttemptStepEvent.Companion.submitEditAttemptEvent("saveFailure", "other", pageTitle2);
                                            }
                                            ActivityTalkReplyBinding activityTalkReplyBinding21 = suggestedEditsImageTagsFragment2._binding;
                                            activityTalkReplyBinding21.getClass();
                                            ((FrameLayout) activityTalkReplyBinding21.rootView).setVisibility(8);
                                            ShareUtil.showError$default(suggestedEditsImageTagsFragment2.requireActivity(), th2);
                                            break;
                                        }
                                    } else {
                                        Object obj3 = ((Resource.Success) resource2).data;
                                        if (obj3 != null && (pageTitle = suggestedEditsImageTagsFragment2.getPageTitle()) != null) {
                                            EditAttemptStepEvent.Companion.getClass();
                                            EditAttemptStepEvent.Companion.submitEditAttemptEvent("saveSuccess", "other", pageTitle);
                                        }
                                        suggestedEditsImageTagsFragment2.publishSuccess = true;
                                        Entities.Entity entity = (Entities.Entity) obj3;
                                        ImageRecommendationsEvent.Companion.logEditSuccess(DescriptionEditActivity.Action.ADD_IMAGE_TAGS, "commons", entity != null ? entity.lastRevId : 0L);
                                        suggestedEditsImageTagsFragment2.publishing = false;
                                        ActivityTalkReplyBinding activityTalkReplyBinding22 = suggestedEditsImageTagsFragment2._binding;
                                        activityTalkReplyBinding22.getClass();
                                        ((ProgressBar) activityTalkReplyBinding22.progressBar).setAlpha(1.0f);
                                        ActivityTalkReplyBinding activityTalkReplyBinding23 = suggestedEditsImageTagsFragment2._binding;
                                        activityTalkReplyBinding23.getClass();
                                        ((ProgressBar) activityTalkReplyBinding23.progressBar).animate().alpha(RecyclerView.DECELERATION_RATE).setDuration(250L);
                                        ActivityTalkReplyBinding activityTalkReplyBinding24 = suggestedEditsImageTagsFragment2._binding;
                                        activityTalkReplyBinding24.getClass();
                                        ((ProgressBar) activityTalkReplyBinding24.replyInputView).setAlpha(RecyclerView.DECELERATION_RATE);
                                        ActivityTalkReplyBinding activityTalkReplyBinding25 = suggestedEditsImageTagsFragment2._binding;
                                        activityTalkReplyBinding25.getClass();
                                        ((ProgressBar) activityTalkReplyBinding25.replyInputView).setVisibility(0);
                                        ActivityTalkReplyBinding activityTalkReplyBinding26 = suggestedEditsImageTagsFragment2._binding;
                                        activityTalkReplyBinding26.getClass();
                                        ((ProgressBar) activityTalkReplyBinding26.replyInputView).animate().alpha(1.0f).withEndAction(new Runnable() { // from class: org.wikipedia.suggestededits.SuggestedEditsImageTagsFragment$$ExternalSyntheticLambda5
                                            @Override // java.lang.Runnable
                                            public final void run() {
                                                int i11 = i8;
                                                SuggestedEditsImageTagsFragment suggestedEditsImageTagsFragment3 = suggestedEditsImageTagsFragment2;
                                                switch (i11) {
                                                    case 0:
                                                        ActivityTalkReplyBinding activityTalkReplyBinding27 = suggestedEditsImageTagsFragment3._binding;
                                                        activityTalkReplyBinding27.getClass();
                                                        activityTalkReplyBinding27.replyNextButton.setText(R.string.suggested_edits_image_tags_published);
                                                        ActivityTalkReplyBinding activityTalkReplyBinding28 = suggestedEditsImageTagsFragment3._binding;
                                                        activityTalkReplyBinding28.getClass();
                                                        ((ImageView) activityTalkReplyBinding28.footerContainer).performHapticFeedback(0);
                                                        break;
                                                    default:
                                                        if (suggestedEditsImageTagsFragment3.isAdded()) {
                                                            suggestedEditsImageTagsFragment3.updateLicenseTextShown();
                                                            ActivityTalkReplyBinding activityTalkReplyBinding29 = suggestedEditsImageTagsFragment3._binding;
                                                            activityTalkReplyBinding29.getClass();
                                                            ((FrameLayout) activityTalkReplyBinding29.rootView).setVisibility(8);
                                                            suggestedEditsImageTagsFragment3.callback$1().nextPage(suggestedEditsImageTagsFragment3);
                                                            suggestedEditsImageTagsFragment3.callback$1();
                                                            suggestedEditsImageTagsFragment3.updateTagChips();
                                                            break;
                                                        }
                                                        break;
                                                }
                                            }
                                        }).setDuration(250L);
                                        ActivityTalkReplyBinding activityTalkReplyBinding27 = suggestedEditsImageTagsFragment2._binding;
                                        activityTalkReplyBinding27.getClass();
                                        ((ImageView) activityTalkReplyBinding27.replySubjectLayout).setAlpha(RecyclerView.DECELERATION_RATE);
                                        ActivityTalkReplyBinding activityTalkReplyBinding28 = suggestedEditsImageTagsFragment2._binding;
                                        activityTalkReplyBinding28.getClass();
                                        ((ImageView) activityTalkReplyBinding28.replySubjectLayout).setVisibility(0);
                                        ActivityTalkReplyBinding activityTalkReplyBinding29 = suggestedEditsImageTagsFragment2._binding;
                                        activityTalkReplyBinding29.getClass();
                                        ((ImageView) activityTalkReplyBinding29.replySubjectLayout).animate().alpha(1.0f).setDuration(500L);
                                        ActivityTalkReplyBinding activityTalkReplyBinding30 = suggestedEditsImageTagsFragment2._binding;
                                        activityTalkReplyBinding30.getClass();
                                        ((ProgressBar) activityTalkReplyBinding30.progressBar).postDelayed(new Runnable() { // from class: org.wikipedia.suggestededits.SuggestedEditsImageTagsFragment$$ExternalSyntheticLambda5
                                            @Override // java.lang.Runnable
                                            public final void run() {
                                                int i11 = i9;
                                                SuggestedEditsImageTagsFragment suggestedEditsImageTagsFragment3 = suggestedEditsImageTagsFragment2;
                                                switch (i11) {
                                                    case 0:
                                                        ActivityTalkReplyBinding activityTalkReplyBinding272 = suggestedEditsImageTagsFragment3._binding;
                                                        activityTalkReplyBinding272.getClass();
                                                        activityTalkReplyBinding272.replyNextButton.setText(R.string.suggested_edits_image_tags_published);
                                                        ActivityTalkReplyBinding activityTalkReplyBinding282 = suggestedEditsImageTagsFragment3._binding;
                                                        activityTalkReplyBinding282.getClass();
                                                        ((ImageView) activityTalkReplyBinding282.footerContainer).performHapticFeedback(0);
                                                        break;
                                                    default:
                                                        if (suggestedEditsImageTagsFragment3.isAdded()) {
                                                            suggestedEditsImageTagsFragment3.updateLicenseTextShown();
                                                            ActivityTalkReplyBinding activityTalkReplyBinding292 = suggestedEditsImageTagsFragment3._binding;
                                                            activityTalkReplyBinding292.getClass();
                                                            ((FrameLayout) activityTalkReplyBinding292.rootView).setVisibility(8);
                                                            suggestedEditsImageTagsFragment3.callback$1().nextPage(suggestedEditsImageTagsFragment3);
                                                            suggestedEditsImageTagsFragment3.callback$1();
                                                            suggestedEditsImageTagsFragment3.updateTagChips();
                                                            break;
                                                        }
                                                        break;
                                                }
                                            }
                                        }, 1500L);
                                        break;
                                    }
                                    break;
                            }
                            return unit;
                        }
                    };
                    this.label = 1;
                    if (readonlyStateFlow.$$delegate_0.collect(flowCollector, this) == coroutineSingletons2) {
                        break;
                    }
                } else if (i4 != 1) {
                    _UtilJvmKt$$ExternalSyntheticLambda0.m$1("call to 'resume' before 'invoke' with coroutine");
                    break;
                } else {
                    ResultKt.throwOnFailure(obj);
                }
                Gson$$ExternalSyntheticBUOutline0.m$1();
                break;
            default:
                CoroutineSingletons coroutineSingletons3 = CoroutineSingletons.COROUTINE_SUSPENDED;
                int i6 = this.label;
                if (i6 == 0) {
                    ResultKt.throwOnFailure(obj);
                    ReadonlyStateFlow readonlyStateFlow2 = ((SuggestedEditsImageTagsViewModel) suggestedEditsImageTagsFragment.viewModel$delegate.getValue()).actionState;
                    FlowCollector flowCollector2 = new FlowCollector() { // from class: org.wikipedia.suggestededits.SuggestedEditsImageTagsFragment$onViewCreated$5$1$1$1
                        @Override // kotlinx.coroutines.flow.FlowCollector
                        public final Object emit(Object obj2, Continuation continuation2) {
                            int i62;
                            PageTitle pageTitle;
                            int i7 = i2;
                            Unit unit = Unit.INSTANCE;
                            final SuggestedEditsImageTagsFragment suggestedEditsImageTagsFragment2 = suggestedEditsImageTagsFragment;
                            final int i8 = 0;
                            final int i9 = 1;
                            switch (i7) {
                                case 0:
                                    Resource resource = (Resource) obj2;
                                    if (!(resource instanceof Resource.Loading)) {
                                        if (!(resource instanceof Resource.Success)) {
                                            if (resource instanceof Resource.Error) {
                                                Throwable th = ((Resource.Error) resource).throwable;
                                                L.e(th);
                                                ActivityTalkReplyBinding activityTalkReplyBinding = suggestedEditsImageTagsFragment2._binding;
                                                activityTalkReplyBinding.getClass();
                                                WikiErrorView wikiErrorView = (WikiErrorView) activityTalkReplyBinding.editKeyboardOverlay;
                                                int i10 = WikiErrorView.$r8$clinit;
                                                wikiErrorView.setError(th, null);
                                                ActivityTalkReplyBinding activityTalkReplyBinding2 = suggestedEditsImageTagsFragment2._binding;
                                                activityTalkReplyBinding2.getClass();
                                                ((WikiErrorView) activityTalkReplyBinding2.editKeyboardOverlay).setVisibility(0);
                                                ActivityTalkReplyBinding activityTalkReplyBinding3 = suggestedEditsImageTagsFragment2._binding;
                                                activityTalkReplyBinding3.getClass();
                                                ((ProgressBar) activityTalkReplyBinding3.editKeyboardOverlayFormatting).setVisibility(8);
                                                ActivityTalkReplyBinding activityTalkReplyBinding4 = suggestedEditsImageTagsFragment2._binding;
                                                activityTalkReplyBinding4.getClass();
                                                ((ConstraintLayout) activityTalkReplyBinding4.editKeyboardOverlayHeadings).setVisibility(8);
                                                break;
                                            }
                                        } else {
                                            Pair pair = (Pair) ((Resource.Success) resource).data;
                                            MwQueryPage mwQueryPage = (MwQueryPage) pair.first;
                                            suggestedEditsImageTagsFragment2.page = mwQueryPage;
                                            ImageInfo imageInfo = mwQueryPage.imageInfo();
                                            String str = (String) pair.second;
                                            ActivityTalkReplyBinding activityTalkReplyBinding5 = suggestedEditsImageTagsFragment2._binding;
                                            activityTalkReplyBinding5.getClass();
                                            ((WikiErrorView) activityTalkReplyBinding5.editKeyboardOverlay).setVisibility(8);
                                            ActivityTalkReplyBinding activityTalkReplyBinding6 = suggestedEditsImageTagsFragment2._binding;
                                            activityTalkReplyBinding6.getClass();
                                            ((ConstraintLayout) activityTalkReplyBinding6.editKeyboardOverlayHeadings).setVisibility(0);
                                            ActivityTalkReplyBinding activityTalkReplyBinding7 = suggestedEditsImageTagsFragment2._binding;
                                            activityTalkReplyBinding7.getClass();
                                            ((ProgressBar) activityTalkReplyBinding7.editKeyboardOverlayFormatting).setVisibility(8);
                                            ActivityTalkReplyBinding activityTalkReplyBinding8 = suggestedEditsImageTagsFragment2._binding;
                                            activityTalkReplyBinding8.getClass();
                                            ((TextView) activityTalkReplyBinding8.threadItemView).setVisibility(8);
                                            ActivityTalkReplyBinding activityTalkReplyBinding9 = suggestedEditsImageTagsFragment2._binding;
                                            activityTalkReplyBinding9.getClass();
                                            ((TextView) activityTalkReplyBinding9.talkScrollContainer).setVisibility(0);
                                            ActivityTalkReplyBinding activityTalkReplyBinding10 = suggestedEditsImageTagsFragment2._binding;
                                            activityTalkReplyBinding10.getClass();
                                            ImageView imageView = (ImageView) activityTalkReplyBinding10.footerContainer;
                                            if (imageView.getTag() == null || !(imageView.getTag() instanceof Integer)) {
                                                i62 = 0;
                                            } else {
                                                Object tag = imageView.getTag();
                                                tag.getClass();
                                                i62 = ((Integer) tag).intValue();
                                            }
                                            imageView.setTag(Integer.valueOf(1 | i62));
                                            ActivityTalkReplyBinding activityTalkReplyBinding11 = suggestedEditsImageTagsFragment2._binding;
                                            activityTalkReplyBinding11.getClass();
                                            ImageView imageView2 = (ImageView) activityTalkReplyBinding11.footerContainer;
                                            Pattern pattern = ImageUrlUtil.WIDTH_IN_IMAGE_URL_REGEX;
                                            String str2 = imageInfo != null ? imageInfo.thumbUrl : null;
                                            if (str2 == null) {
                                                str2 = "";
                                            }
                                            ViewUtil.loadImage$default(imageView2, ImageUrlUtil.getUrlForPreferredSize(960, str2), null, 28);
                                            if (str == null || str.length() == 0) {
                                                ExtMetadata extMetadata = imageInfo != null ? imageInfo.metadata : null;
                                                ActivityTalkReplyBinding activityTalkReplyBinding12 = suggestedEditsImageTagsFragment2._binding;
                                                if (extMetadata != null) {
                                                    activityTalkReplyBinding12.getClass();
                                                    TextView textView = activityTalkReplyBinding12.learnMoreButton;
                                                    StringUtil stringUtil = StringUtil.INSTANCE;
                                                    textView.setText(StringsKt.trim(StringUtil.fromHtml(imageInfo.metadata.imageDescription()).toString()).toString());
                                                    ActivityTalkReplyBinding activityTalkReplyBinding13 = suggestedEditsImageTagsFragment2._binding;
                                                    activityTalkReplyBinding13.getClass();
                                                    activityTalkReplyBinding13.learnMoreButton.setVisibility(0);
                                                    ActivityTalkReplyBinding activityTalkReplyBinding14 = suggestedEditsImageTagsFragment2._binding;
                                                    activityTalkReplyBinding14.getClass();
                                                    ImageView imageView3 = (ImageView) activityTalkReplyBinding14.footerContainer;
                                                    ActivityTalkReplyBinding activityTalkReplyBinding15 = suggestedEditsImageTagsFragment2._binding;
                                                    activityTalkReplyBinding15.getClass();
                                                    imageView3.setContentDescription(activityTalkReplyBinding15.learnMoreButton.getText());
                                                } else {
                                                    activityTalkReplyBinding12.getClass();
                                                    activityTalkReplyBinding12.learnMoreButton.setVisibility(8);
                                                }
                                            } else {
                                                ActivityTalkReplyBinding activityTalkReplyBinding16 = suggestedEditsImageTagsFragment2._binding;
                                                activityTalkReplyBinding16.getClass();
                                                activityTalkReplyBinding16.learnMoreButton.setText(str);
                                                ActivityTalkReplyBinding activityTalkReplyBinding17 = suggestedEditsImageTagsFragment2._binding;
                                                activityTalkReplyBinding17.getClass();
                                                activityTalkReplyBinding17.learnMoreButton.setVisibility(0);
                                            }
                                            suggestedEditsImageTagsFragment2.updateLicenseTextShown();
                                            suggestedEditsImageTagsFragment2.callback$1().updateActionButton();
                                            suggestedEditsImageTagsFragment2.updateTagChips();
                                            break;
                                        }
                                    } else {
                                        ActivityTalkReplyBinding activityTalkReplyBinding18 = suggestedEditsImageTagsFragment2._binding;
                                        activityTalkReplyBinding18.getClass();
                                        ((WikiErrorView) activityTalkReplyBinding18.editKeyboardOverlay).setVisibility(8);
                                        ActivityTalkReplyBinding activityTalkReplyBinding19 = suggestedEditsImageTagsFragment2._binding;
                                        activityTalkReplyBinding19.getClass();
                                        ((ProgressBar) activityTalkReplyBinding19.editKeyboardOverlayFormatting).setVisibility(0);
                                        ActivityTalkReplyBinding activityTalkReplyBinding20 = suggestedEditsImageTagsFragment2._binding;
                                        activityTalkReplyBinding20.getClass();
                                        ((ConstraintLayout) activityTalkReplyBinding20.editKeyboardOverlayHeadings).setVisibility(8);
                                        break;
                                    }
                                    break;
                                default:
                                    Resource resource2 = (Resource) obj2;
                                    if (!(resource2 instanceof Resource.Success)) {
                                        if (resource2 instanceof Resource.Error) {
                                            Throwable th2 = ((Resource.Error) resource2).throwable;
                                            PageTitle pageTitle2 = suggestedEditsImageTagsFragment2.getPageTitle();
                                            if (pageTitle2 != null) {
                                                EditAttemptStepEvent.Companion.getClass();
                                                EditAttemptStepEvent.Companion.submitEditAttemptEvent("saveFailure", "other", pageTitle2);
                                            }
                                            ActivityTalkReplyBinding activityTalkReplyBinding21 = suggestedEditsImageTagsFragment2._binding;
                                            activityTalkReplyBinding21.getClass();
                                            ((FrameLayout) activityTalkReplyBinding21.rootView).setVisibility(8);
                                            ShareUtil.showError$default(suggestedEditsImageTagsFragment2.requireActivity(), th2);
                                            break;
                                        }
                                    } else {
                                        Object obj3 = ((Resource.Success) resource2).data;
                                        if (obj3 != null && (pageTitle = suggestedEditsImageTagsFragment2.getPageTitle()) != null) {
                                            EditAttemptStepEvent.Companion.getClass();
                                            EditAttemptStepEvent.Companion.submitEditAttemptEvent("saveSuccess", "other", pageTitle);
                                        }
                                        suggestedEditsImageTagsFragment2.publishSuccess = true;
                                        Entities.Entity entity = (Entities.Entity) obj3;
                                        ImageRecommendationsEvent.Companion.logEditSuccess(DescriptionEditActivity.Action.ADD_IMAGE_TAGS, "commons", entity != null ? entity.lastRevId : 0L);
                                        suggestedEditsImageTagsFragment2.publishing = false;
                                        ActivityTalkReplyBinding activityTalkReplyBinding22 = suggestedEditsImageTagsFragment2._binding;
                                        activityTalkReplyBinding22.getClass();
                                        ((ProgressBar) activityTalkReplyBinding22.progressBar).setAlpha(1.0f);
                                        ActivityTalkReplyBinding activityTalkReplyBinding23 = suggestedEditsImageTagsFragment2._binding;
                                        activityTalkReplyBinding23.getClass();
                                        ((ProgressBar) activityTalkReplyBinding23.progressBar).animate().alpha(RecyclerView.DECELERATION_RATE).setDuration(250L);
                                        ActivityTalkReplyBinding activityTalkReplyBinding24 = suggestedEditsImageTagsFragment2._binding;
                                        activityTalkReplyBinding24.getClass();
                                        ((ProgressBar) activityTalkReplyBinding24.replyInputView).setAlpha(RecyclerView.DECELERATION_RATE);
                                        ActivityTalkReplyBinding activityTalkReplyBinding25 = suggestedEditsImageTagsFragment2._binding;
                                        activityTalkReplyBinding25.getClass();
                                        ((ProgressBar) activityTalkReplyBinding25.replyInputView).setVisibility(0);
                                        ActivityTalkReplyBinding activityTalkReplyBinding26 = suggestedEditsImageTagsFragment2._binding;
                                        activityTalkReplyBinding26.getClass();
                                        ((ProgressBar) activityTalkReplyBinding26.replyInputView).animate().alpha(1.0f).withEndAction(new Runnable() { // from class: org.wikipedia.suggestededits.SuggestedEditsImageTagsFragment$$ExternalSyntheticLambda5
                                            @Override // java.lang.Runnable
                                            public final void run() {
                                                int i11 = i8;
                                                SuggestedEditsImageTagsFragment suggestedEditsImageTagsFragment3 = suggestedEditsImageTagsFragment2;
                                                switch (i11) {
                                                    case 0:
                                                        ActivityTalkReplyBinding activityTalkReplyBinding272 = suggestedEditsImageTagsFragment3._binding;
                                                        activityTalkReplyBinding272.getClass();
                                                        activityTalkReplyBinding272.replyNextButton.setText(R.string.suggested_edits_image_tags_published);
                                                        ActivityTalkReplyBinding activityTalkReplyBinding282 = suggestedEditsImageTagsFragment3._binding;
                                                        activityTalkReplyBinding282.getClass();
                                                        ((ImageView) activityTalkReplyBinding282.footerContainer).performHapticFeedback(0);
                                                        break;
                                                    default:
                                                        if (suggestedEditsImageTagsFragment3.isAdded()) {
                                                            suggestedEditsImageTagsFragment3.updateLicenseTextShown();
                                                            ActivityTalkReplyBinding activityTalkReplyBinding292 = suggestedEditsImageTagsFragment3._binding;
                                                            activityTalkReplyBinding292.getClass();
                                                            ((FrameLayout) activityTalkReplyBinding292.rootView).setVisibility(8);
                                                            suggestedEditsImageTagsFragment3.callback$1().nextPage(suggestedEditsImageTagsFragment3);
                                                            suggestedEditsImageTagsFragment3.callback$1();
                                                            suggestedEditsImageTagsFragment3.updateTagChips();
                                                            break;
                                                        }
                                                        break;
                                                }
                                            }
                                        }).setDuration(250L);
                                        ActivityTalkReplyBinding activityTalkReplyBinding27 = suggestedEditsImageTagsFragment2._binding;
                                        activityTalkReplyBinding27.getClass();
                                        ((ImageView) activityTalkReplyBinding27.replySubjectLayout).setAlpha(RecyclerView.DECELERATION_RATE);
                                        ActivityTalkReplyBinding activityTalkReplyBinding28 = suggestedEditsImageTagsFragment2._binding;
                                        activityTalkReplyBinding28.getClass();
                                        ((ImageView) activityTalkReplyBinding28.replySubjectLayout).setVisibility(0);
                                        ActivityTalkReplyBinding activityTalkReplyBinding29 = suggestedEditsImageTagsFragment2._binding;
                                        activityTalkReplyBinding29.getClass();
                                        ((ImageView) activityTalkReplyBinding29.replySubjectLayout).animate().alpha(1.0f).setDuration(500L);
                                        ActivityTalkReplyBinding activityTalkReplyBinding30 = suggestedEditsImageTagsFragment2._binding;
                                        activityTalkReplyBinding30.getClass();
                                        ((ProgressBar) activityTalkReplyBinding30.progressBar).postDelayed(new Runnable() { // from class: org.wikipedia.suggestededits.SuggestedEditsImageTagsFragment$$ExternalSyntheticLambda5
                                            @Override // java.lang.Runnable
                                            public final void run() {
                                                int i11 = i9;
                                                SuggestedEditsImageTagsFragment suggestedEditsImageTagsFragment3 = suggestedEditsImageTagsFragment2;
                                                switch (i11) {
                                                    case 0:
                                                        ActivityTalkReplyBinding activityTalkReplyBinding272 = suggestedEditsImageTagsFragment3._binding;
                                                        activityTalkReplyBinding272.getClass();
                                                        activityTalkReplyBinding272.replyNextButton.setText(R.string.suggested_edits_image_tags_published);
                                                        ActivityTalkReplyBinding activityTalkReplyBinding282 = suggestedEditsImageTagsFragment3._binding;
                                                        activityTalkReplyBinding282.getClass();
                                                        ((ImageView) activityTalkReplyBinding282.footerContainer).performHapticFeedback(0);
                                                        break;
                                                    default:
                                                        if (suggestedEditsImageTagsFragment3.isAdded()) {
                                                            suggestedEditsImageTagsFragment3.updateLicenseTextShown();
                                                            ActivityTalkReplyBinding activityTalkReplyBinding292 = suggestedEditsImageTagsFragment3._binding;
                                                            activityTalkReplyBinding292.getClass();
                                                            ((FrameLayout) activityTalkReplyBinding292.rootView).setVisibility(8);
                                                            suggestedEditsImageTagsFragment3.callback$1().nextPage(suggestedEditsImageTagsFragment3);
                                                            suggestedEditsImageTagsFragment3.callback$1();
                                                            suggestedEditsImageTagsFragment3.updateTagChips();
                                                            break;
                                                        }
                                                        break;
                                                }
                                            }
                                        }, 1500L);
                                        break;
                                    }
                                    break;
                            }
                            return unit;
                        }
                    };
                    this.label = 1;
                    if (readonlyStateFlow2.$$delegate_0.collect(flowCollector2, this) == coroutineSingletons3) {
                        break;
                    }
                } else if (i6 != 1) {
                    _UtilJvmKt$$ExternalSyntheticLambda0.m$1("call to 'resume' before 'invoke' with coroutine");
                    break;
                } else {
                    ResultKt.throwOnFailure(obj);
                }
                Gson$$ExternalSyntheticBUOutline0.m$1();
                break;
        }
        return null;
    }
}
