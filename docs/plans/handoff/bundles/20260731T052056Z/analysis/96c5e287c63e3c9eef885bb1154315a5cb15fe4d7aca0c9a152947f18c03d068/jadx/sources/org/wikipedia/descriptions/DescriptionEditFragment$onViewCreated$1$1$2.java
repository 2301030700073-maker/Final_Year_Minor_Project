package org.wikipedia.descriptions;

import android.content.Context;
import android.graphics.ColorFilter;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.os.Build;
import android.util.TypedValue;
import androidx.core.graphics.BlendModeCompat;
import androidx.lifecycle.ViewModelKt;
import androidx.swiperefreshlayout.widget.CircularProgressDrawable;
import androidx.work.OperationKt;
import coil3.size.ViewSizeResolver$CC;
import com.google.android.material.chip.Chip;
import com.google.gson.Gson$$ExternalSyntheticBUOutline0;
import java.io.IOException;
import java.util.Collection;
import java.util.Date;
import java.util.List;
import kotlin.ResultKt;
import kotlin.Triple;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.AwaitKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.flow.ReadonlyStateFlow;
import okhttp3.Headers;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import okio.Okio__OkioKt;
import org.jsoup.Jsoup;
import org.wikipedia.R;
import org.wikipedia.WikipediaApp;
import org.wikipedia.analytics.eventplatform.EditAttemptStepEvent;
import org.wikipedia.analytics.eventplatform.ImageRecommendationsEvent;
import org.wikipedia.analytics.eventplatform.WikiGamesEvent;
import org.wikipedia.captcha.CaptchaHandler;
import org.wikipedia.captcha.CaptchaResult;
import org.wikipedia.databinding.ViewDescriptionEditBinding;
import org.wikipedia.dataclient.liftwing.DescriptionSuggestion$Response;
import org.wikipedia.dataclient.mwapi.MwException;
import org.wikipedia.dataclient.mwapi.MwServiceError;
import org.wikipedia.dataclient.wikidata.Entities;
import org.wikipedia.dataclient.wikidata.EntityPostResponse;
import org.wikipedia.edit.Edit;
import org.wikipedia.edit.EditSectionViewModel$waitForRevisionUpdate$2;
import org.wikipedia.page.PageTitle;
import org.wikipedia.settings.Prefs;
import org.wikipedia.settings.PrefsIoUtil;
import org.wikipedia.util.FileUtil;
import org.wikipedia.util.Resource;
import org.wikipedia.util.ShareUtil;
import org.wikipedia.views.SurveyDialog$$ExternalSyntheticLambda1;
import retrofit2.OkHttpCall;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class DescriptionEditFragment$onViewCreated$1$1$2 extends SuspendLambda implements Function2 {
    public final /* synthetic */ int $r8$classId;
    public int label;
    public final /* synthetic */ DescriptionEditFragment this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ DescriptionEditFragment$onViewCreated$1$1$2(DescriptionEditFragment descriptionEditFragment, Continuation continuation, int i) {
        super(2, continuation);
        this.$r8$classId = i;
        this.this$0 = descriptionEditFragment;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        int i = this.$r8$classId;
        DescriptionEditFragment descriptionEditFragment = this.this$0;
        switch (i) {
            case 0:
                return new DescriptionEditFragment$onViewCreated$1$1$2(descriptionEditFragment, continuation, 0);
            default:
                return new DescriptionEditFragment$onViewCreated$1$1$2(descriptionEditFragment, continuation, 1);
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
        return ((DescriptionEditFragment$onViewCreated$1$1$2) create(coroutineScope, continuation)).invokeSuspend(unit);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        int i = this.$r8$classId;
        DescriptionEditFragment descriptionEditFragment = this.this$0;
        switch (i) {
            case 0:
                CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
                int i2 = this.label;
                if (i2 == 0) {
                    ResultKt.throwOnFailure(obj);
                    ReadonlyStateFlow readonlyStateFlow = descriptionEditFragment.getViewModel$1().requestSuggestionState;
                    AnonymousClass1 anonymousClass1 = new AnonymousClass1(descriptionEditFragment, 0);
                    this.label = 1;
                    if (readonlyStateFlow.$$delegate_0.collect(anonymousClass1, this) == coroutineSingletons) {
                        break;
                    }
                } else if (i2 != 1) {
                    _UtilJvmKt$$ExternalSyntheticLambda0.m$1("call to 'resume' before 'invoke' with coroutine");
                    break;
                } else {
                    ResultKt.throwOnFailure(obj);
                }
                Gson$$ExternalSyntheticBUOutline0.m$1();
                break;
            default:
                CoroutineSingletons coroutineSingletons2 = CoroutineSingletons.COROUTINE_SUSPENDED;
                int i3 = this.label;
                if (i3 == 0) {
                    ResultKt.throwOnFailure(obj);
                    ReadonlyStateFlow readonlyStateFlow2 = descriptionEditFragment.getViewModel$1().waitForRevisionState;
                    AnonymousClass1 anonymousClass12 = new AnonymousClass1(descriptionEditFragment, 2);
                    this.label = 1;
                    if (readonlyStateFlow2.$$delegate_0.collect(anonymousClass12, this) == coroutineSingletons2) {
                        break;
                    }
                } else if (i3 != 1) {
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

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    /* renamed from: org.wikipedia.descriptions.DescriptionEditFragment$onViewCreated$1$1$2$1, reason: invalid class name */
    public final class AnonymousClass1 implements FlowCollector {
        public final /* synthetic */ int $r8$classId;
        public final /* synthetic */ DescriptionEditFragment this$0;

        public AnonymousClass1(DescriptionEditFragment descriptionEditFragment, CoroutineScope coroutineScope) {
            this.$r8$classId = 1;
            this.this$0 = descriptionEditFragment;
        }

        @Override // kotlinx.coroutines.flow.FlowCollector
        public final Object emit(Object obj, Continuation continuation) {
            String str;
            int i = this.$r8$classId;
            String str2 = null;
            r3 = null;
            ColorFilter porterDuffColorFilter = null;
            Unit unit = Unit.INSTANCE;
            DescriptionEditFragment descriptionEditFragment = this.this$0;
            switch (i) {
                case 0:
                    Resource resource = (Resource) obj;
                    if (resource instanceof Resource.Loading) {
                        OkHttpCall.AnonymousClass1 anonymousClass1 = descriptionEditFragment._binding;
                        anonymousClass1.getClass();
                        DescriptionEditView descriptionEditView = (DescriptionEditView) anonymousClass1.this$0;
                        Chip chip = descriptionEditView.binding.suggestedDescButton;
                        chip.setVisibility(0);
                        chip.setEnabled(false);
                        CircularProgressDrawable circularProgressDrawable = new CircularProgressDrawable(descriptionEditView.getContext());
                        float dpToPx = Okio__OkioKt.dpToPx(1.5f);
                        CircularProgressDrawable.Ring ring = circularProgressDrawable.mRing;
                        ring.mStrokeWidth = dpToPx;
                        ring.mPaint.setStrokeWidth(dpToPx);
                        circularProgressDrawable.invalidateSelf();
                        Context context = descriptionEditView.getContext();
                        context.getClass();
                        TypedValue typedValue = new TypedValue();
                        if (!context.getTheme().resolveAttribute(R.attr.primary_color, typedValue, true)) {
                            typedValue = null;
                        }
                        if (typedValue == null) {
                            _UtilJvmKt$$ExternalSyntheticLambda0.m("Attribute not found; ID=2130969882");
                            return null;
                        }
                        int i2 = typedValue.data;
                        BlendModeCompat blendModeCompat = BlendModeCompat.SRC_IN;
                        if (Build.VERSION.SDK_INT >= 29) {
                            Object obtainBlendModeFromCompat = FileUtil.obtainBlendModeFromCompat(blendModeCompat);
                            if (obtainBlendModeFromCompat != null) {
                                porterDuffColorFilter = FileUtil.createBlendModeColorFilter(i2, obtainBlendModeFromCompat);
                            }
                        } else {
                            PorterDuff.Mode obtainPorterDuffFromCompat = OperationKt.obtainPorterDuffFromCompat(blendModeCompat);
                            if (obtainPorterDuffFromCompat != null) {
                                porterDuffColorFilter = new PorterDuffColorFilter(i2, obtainPorterDuffFromCompat);
                            }
                        }
                        circularProgressDrawable.setColorFilter(porterDuffColorFilter);
                        chip.setChipIcon(circularProgressDrawable);
                        circularProgressDrawable.start();
                    } else if (resource instanceof Resource.Success) {
                        WikiGamesEvent wikiGamesEvent = descriptionEditFragment.analyticsHelper;
                        Context requireContext = descriptionEditFragment.requireContext();
                        Triple triple = (Triple) ((Resource.Success) resource).data;
                        Object obj2 = triple.first;
                        Object obj3 = triple.third;
                        boolean z = ((DescriptionSuggestion$Response) obj2).blp;
                        PageTitle pageTitle = descriptionEditFragment.getViewModel$1().pageTitle;
                        wikiGamesEvent.getClass();
                        pageTitle.getClass();
                        wikiGamesEvent.log(requireContext, WikiGamesEvent.composeLogString(pageTitle) + ".blp:" + z);
                        if ((((Collection) obj3).isEmpty() || ((DescriptionSuggestion$Response) triple.first).blp) && ((Number) triple.second).intValue() <= 50) {
                            OkHttpCall.AnonymousClass1 anonymousClass12 = descriptionEditFragment._binding;
                            anonymousClass12.getClass();
                            ((DescriptionEditView) anonymousClass12.this$0).setSuggestionButtonEnabled(false);
                            OkHttpCall.AnonymousClass1 anonymousClass13 = descriptionEditFragment._binding;
                            anonymousClass13.getClass();
                            ((DescriptionEditView) anonymousClass13.this$0).updateSuggestedDescriptionsButtonVisibility();
                        } else {
                            OkHttpCall.AnonymousClass1 anonymousClass14 = descriptionEditFragment._binding;
                            anonymousClass14.getClass();
                            DescriptionEditView descriptionEditView2 = (DescriptionEditView) anonymousClass14.this$0;
                            String str3 = (String) CollectionsKt.first((List) obj3);
                            String str4 = ((List) obj3).size() > 1 ? (String) CollectionsKt.last((List) obj3) : null;
                            str3.getClass();
                            ViewDescriptionEditBinding viewDescriptionEditBinding = descriptionEditView2.binding;
                            Chip chip2 = viewDescriptionEditBinding.suggestedDescButton;
                            chip2.setEnabled(true);
                            chip2.setChipIcon(TuplesKt.getDrawable(descriptionEditView2.getContext(), R.drawable.ic_robot_24));
                            chip2.setOnClickListener(new SurveyDialog$$ExternalSyntheticLambda1(descriptionEditView2, str3, str4, 1));
                            Prefs prefs = Prefs.INSTANCE;
                            WikipediaApp wikipediaApp = WikipediaApp.instance;
                            if (!ViewSizeResolver$CC.m(Jsoup.getInstance(), 0, ViewSizeResolver$CC.m(new Object[0], 0, Jsoup.getInstance().getResources(), R.string.preference_key_se_machine_generated_descriptions_tooltip_shown), false)) {
                                viewDescriptionEditBinding.rootView.postDelayed(new DescriptionEditView$$ExternalSyntheticLambda0(descriptionEditView2, 1), 500L);
                            }
                        }
                    } else if (resource instanceof Resource.Error) {
                        OkHttpCall.AnonymousClass1 anonymousClass15 = descriptionEditFragment._binding;
                        anonymousClass15.getClass();
                        ((DescriptionEditView) anonymousClass15.this$0).setSuggestionButtonEnabled(false);
                        ShareUtil.showError(descriptionEditFragment.requireActivity(), ((Resource.Error) resource).throwable, descriptionEditFragment.getViewModel$1().pageTitle.wikiSite);
                    }
                    return unit;
                case 1:
                    Resource resource2 = (Resource) obj;
                    if (resource2 instanceof Resource.Loading) {
                        OkHttpCall.AnonymousClass1 anonymousClass16 = descriptionEditFragment._binding;
                        anonymousClass16.getClass();
                        ((DescriptionEditView) anonymousClass16.this$0).showProgressBar(true);
                        OkHttpCall.AnonymousClass1 anonymousClass17 = descriptionEditFragment._binding;
                        anonymousClass17.getClass();
                        ((DescriptionEditView) anonymousClass17.this$0).setError(null);
                        OkHttpCall.AnonymousClass1 anonymousClass18 = descriptionEditFragment._binding;
                        anonymousClass18.getClass();
                        ((DescriptionEditView) anonymousClass18.this$0).setSaveState(true);
                    } else {
                        if (resource2 instanceof Resource.Success) {
                            DescriptionEditViewModel viewModel$1 = descriptionEditFragment.getViewModel$1();
                            WikiGamesEvent wikiGamesEvent2 = descriptionEditFragment.analyticsHelper;
                            if (viewModel$1.shouldWriteToLocalWiki()) {
                                Object obj4 = ((Resource.Success) resource2).data;
                                obj4.getClass();
                                Edit.Result result = ((Edit) obj4).edit;
                                if (result != null) {
                                    Edit.Captcha captcha = result.captcha;
                                    String str5 = result.spamblacklist;
                                    long j = result.newRevId;
                                    if ("Success".equals(result.status)) {
                                        if (!Headers.Companion.isLoggedIn()) {
                                            Prefs prefs2 = Prefs.INSTANCE;
                                            PrefsIoUtil.setLong(new Date().getTime(), R.string.preference_key_last_anon_edit_time);
                                        }
                                        DescriptionEditViewModel viewModel$12 = descriptionEditFragment.getViewModel$1();
                                        AwaitKt.launch$default(ViewModelKt.getViewModelScope(viewModel$12), new DescriptionEditViewModel$postDescription$$inlined$CoroutineExceptionHandler$1(viewModel$12, 2), null, new EditSectionViewModel$waitForRevisionUpdate$2(viewModel$12, j, (Continuation) null), 2);
                                        EditAttemptStepEvent.Companion companion = EditAttemptStepEvent.Companion;
                                        PageTitle pageTitle2 = descriptionEditFragment.getViewModel$1().pageTitle;
                                        companion.getClass();
                                        EditAttemptStepEvent.Companion.logSaveSuccess(pageTitle2, "other");
                                        wikiGamesEvent2.logSuccess(descriptionEditFragment.requireContext(), descriptionEditFragment.getViewModel$1().pageTitle, j);
                                        ImageRecommendationsEvent.Companion.logEditSuccess(descriptionEditFragment.getViewModel$1().action, descriptionEditFragment.getViewModel$1().pageTitle.wikiSite.languageCode, j);
                                    } else {
                                        String str6 = result.code;
                                        if (str6 != null) {
                                            descriptionEditFragment.editFailed(new MwException(new MwServiceError(str6, str5)), false);
                                        } else if (captcha != null) {
                                            OkHttpCall.AnonymousClass1 anonymousClass19 = descriptionEditFragment._binding;
                                            anonymousClass19.getClass();
                                            ((DescriptionEditView) anonymousClass19.this$0).showProgressBar(false);
                                            OkHttpCall.AnonymousClass1 anonymousClass110 = descriptionEditFragment._binding;
                                            anonymousClass110.getClass();
                                            ((DescriptionEditView) anonymousClass110.this$0).setSaveState(false);
                                            CaptchaHandler captchaHandler = descriptionEditFragment.captchaHandler;
                                            if (captchaHandler == null) {
                                                Intrinsics.throwUninitializedPropertyAccessException("captchaHandler");
                                                throw null;
                                            }
                                            String str7 = captcha != null ? captcha.id : null;
                                            CaptchaResult captchaResult = new CaptchaResult(str7 != null ? str7 : "");
                                            captchaHandler.token = null;
                                            captchaHandler.captchaResult = captchaResult;
                                            captchaHandler.handleCaptcha(false);
                                        } else if (str5 != null) {
                                            descriptionEditFragment.editFailed(new MwException(new MwServiceError(str6, result.info)), false);
                                        } else {
                                            descriptionEditFragment.editFailed(new IOException("Received unrecognized edit response"), true);
                                        }
                                    }
                                } else {
                                    descriptionEditFragment.editFailed(new IOException("An unknown error occurred."), true);
                                }
                            } else {
                                Object obj5 = ((Resource.Success) resource2).data;
                                obj5.getClass();
                                EntityPostResponse entityPostResponse = (EntityPostResponse) obj5;
                                if (!Headers.Companion.isLoggedIn()) {
                                    Prefs prefs3 = Prefs.INSTANCE;
                                    PrefsIoUtil.setLong(new Date().getTime(), R.string.preference_key_last_anon_edit_time);
                                }
                                if (entityPostResponse.success > 0) {
                                    Entities.Entity entity = entityPostResponse.entity;
                                    long j2 = entity != null ? entity.lastRevId : 0L;
                                    descriptionEditFragment.requireView().postDelayed(descriptionEditFragment.successRunnable, 4000L);
                                    wikiGamesEvent2.logSuccess(descriptionEditFragment.requireContext(), descriptionEditFragment.getViewModel$1().pageTitle, j2);
                                    ImageRecommendationsEvent.Companion.logEditSuccess(descriptionEditFragment.getViewModel$1().action, descriptionEditFragment.getViewModel$1().pageTitle.wikiSite.languageCode, j2);
                                    EditAttemptStepEvent.Companion companion2 = EditAttemptStepEvent.Companion;
                                    PageTitle pageTitle3 = descriptionEditFragment.getViewModel$1().pageTitle;
                                    companion2.getClass();
                                    EditAttemptStepEvent.Companion.logSaveSuccess(pageTitle3, "other");
                                } else {
                                    descriptionEditFragment.editFailed(new RuntimeException("Received unrecognized description edit response"), true);
                                }
                            }
                        } else if (resource2 instanceof Resource.Error) {
                            if (!descriptionEditFragment.getViewModel$1().shouldWriteToLocalWiki()) {
                                Throwable th = ((Resource.Error) resource2).throwable;
                                if (th instanceof MwException) {
                                    MwServiceError mwServiceError = ((MwException) th).error;
                                    if ("assertuserfailed".equals(mwServiceError.code) || "badtoken".equals(mwServiceError.code)) {
                                        DescriptionEditViewModel viewModel$13 = descriptionEditFragment.getViewModel$1();
                                        OkHttpCall.AnonymousClass1 anonymousClass111 = descriptionEditFragment._binding;
                                        anonymousClass111.getClass();
                                        String description = ((DescriptionEditView) anonymousClass111.this$0).getDescription();
                                        String str8 = description == null ? "" : description;
                                        String editComment = descriptionEditFragment.getEditComment();
                                        String editTags = descriptionEditFragment.getEditTags();
                                        CaptchaHandler captchaHandler2 = descriptionEditFragment.captchaHandler;
                                        if (captchaHandler2 == null) {
                                            Intrinsics.throwUninitializedPropertyAccessException("captchaHandler");
                                            throw null;
                                        }
                                        if (captchaHandler2.isActive()) {
                                            CaptchaHandler captchaHandler3 = descriptionEditFragment.captchaHandler;
                                            if (captchaHandler3 == null) {
                                                Intrinsics.throwUninitializedPropertyAccessException("captchaHandler");
                                                throw null;
                                            }
                                            CaptchaResult captchaResult2 = captchaHandler3.captchaResult;
                                            str = captchaResult2 != null ? captchaResult2.captchaId : null;
                                        } else {
                                            str = null;
                                        }
                                        CaptchaHandler captchaHandler4 = descriptionEditFragment.captchaHandler;
                                        if (captchaHandler4 == null) {
                                            Intrinsics.throwUninitializedPropertyAccessException("captchaHandler");
                                            throw null;
                                        }
                                        if (captchaHandler4.isActive()) {
                                            CaptchaHandler captchaHandler5 = descriptionEditFragment.captchaHandler;
                                            if (captchaHandler5 == null) {
                                                Intrinsics.throwUninitializedPropertyAccessException("captchaHandler");
                                                throw null;
                                            }
                                            str2 = captchaHandler5.captchaWord();
                                        }
                                        viewModel$13.postDescription(str8, editComment, editTags, str, str2);
                                    } else {
                                        descriptionEditFragment.editFailed(th, true);
                                    }
                                }
                            }
                            descriptionEditFragment.editFailed(((Resource.Error) resource2).throwable, true);
                        }
                    }
                    return unit;
                default:
                    Resource resource3 = (Resource) obj;
                    if (resource3 instanceof Resource.Loading) {
                        OkHttpCall.AnonymousClass1 anonymousClass112 = descriptionEditFragment._binding;
                        anonymousClass112.getClass();
                        ((DescriptionEditView) anonymousClass112.this$0).showProgressBar(true);
                    } else if (resource3 instanceof Resource.Success) {
                        descriptionEditFragment.requireView().post(descriptionEditFragment.successRunnable);
                    } else if (resource3 instanceof Resource.Error) {
                        descriptionEditFragment.editFailed(((Resource.Error) resource3).throwable, true);
                    }
                    return unit;
            }
        }

        public /* synthetic */ AnonymousClass1(DescriptionEditFragment descriptionEditFragment, int i) {
            this.$r8$classId = i;
            this.this$0 = descriptionEditFragment;
        }
    }
}
