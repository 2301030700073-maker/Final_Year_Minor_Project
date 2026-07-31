package org.wikipedia.descriptions;

import android.content.ComponentCallbacks;
import android.content.Context;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.app.AppCompatActivity;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager$FragmentIntentSenderContract;
import androidx.lifecycle.ViewModelKt;
import coil3.RealImageLoader$execute$result$1;
import coil3.size.ViewSizeResolver$CC;
import coil3.util.BitmapsKt;
import com.caverock.androidsvg.SVGAndroidRenderer;
import com.google.android.material.button.MaterialButton;
import java.util.ArrayList;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.text.StringsKt;
import kotlinx.coroutines.AwaitKt;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.StandaloneCoroutine;
import okhttp3.Request;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.jsoup.Jsoup;
import org.wikipedia.Constants;
import org.wikipedia.R;
import org.wikipedia.WikipediaApp;
import org.wikipedia.WikipediaApp$logOut$$inlined$CoroutineExceptionHandler$1;
import org.wikipedia.analytics.eventplatform.EditAttemptStepEvent;
import org.wikipedia.analytics.eventplatform.WikiGamesEvent;
import org.wikipedia.captcha.CaptchaHandler;
import org.wikipedia.databinding.ViewDescriptionEditBinding;
import org.wikipedia.dataclient.WikiSite;
import org.wikipedia.descriptions.DescriptionEditActivity;
import org.wikipedia.descriptions.DescriptionEditView;
import org.wikipedia.main.MainFragment$$ExternalSyntheticLambda5;
import org.wikipedia.media.AvPlayer;
import org.wikipedia.page.PageTitle;
import org.wikipedia.readinglist.LongPressMenu$show$1$1;
import org.wikipedia.suggestededits.PageSummaryForEdit;
import org.wikipedia.util.ShareUtil;
import org.wikipedia.util.StringUtil;
import org.wikipedia.util.log.L;
import org.wikipedia.views.SuggestedArticleDescriptionsDialog;
import retrofit2.OkHttpCall;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0007\u0018\u00002\u00020\u0001:\u0002\u0004\u0005B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0006"}, d2 = {"Lorg/wikipedia/descriptions/DescriptionEditFragment;", "Landroidx/fragment/app/Fragment;", "<init>", "()V", "Callback", "org/wikipedia/media/AvPlayer", "app"}, k = 1, mv = {2, 3, 0}, xi = 48)
/* loaded from: classes.dex */
public final class DescriptionEditFragment extends Fragment {
    public OkHttpCall.AnonymousClass1 _binding;
    public CaptchaHandler captchaHandler;
    public final Fragment.AnonymousClass10 editSuccessLauncher;
    public final Fragment.AnonymousClass10 loginLauncher;
    public final Request.Builder viewModel$delegate;
    public final Fragment.AnonymousClass10 voiceSearchLauncher;
    public final WikiGamesEvent analyticsHelper = new WikiGamesEvent();
    public final MainFragment$$ExternalSyntheticLambda5 successRunnable = new MainFragment$$ExternalSyntheticLambda5(4, this);

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public interface Callback {
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public abstract /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[DescriptionEditActivity.Action.values().length];
            try {
                iArr[DescriptionEditActivity.Action.ADD_DESCRIPTION.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[DescriptionEditActivity.Action.ADD_CAPTION.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[DescriptionEditActivity.Action.TRANSLATE_DESCRIPTION.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[DescriptionEditActivity.Action.TRANSLATE_CAPTION.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public DescriptionEditFragment() {
        final int i = 0;
        final int i2 = 1;
        final int i3 = 2;
        this.viewModel$delegate = new Request.Builder(Reflection.factory.getOrCreateKotlinClass(DescriptionEditViewModel.class), new Function0(this) { // from class: org.wikipedia.descriptions.DescriptionEditFragment$special$$inlined$activityViewModels$default$1
            public final /* synthetic */ DescriptionEditFragment $this_activityViewModels;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
                this.$this_activityViewModels = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i4 = i;
                DescriptionEditFragment descriptionEditFragment = this.$this_activityViewModels;
                switch (i4) {
                    case 0:
                        return descriptionEditFragment.requireActivity().getViewModelStore();
                    case 1:
                        return descriptionEditFragment.requireActivity().getDefaultViewModelCreationExtras();
                    default:
                        return descriptionEditFragment.requireActivity().getDefaultViewModelProviderFactory();
                }
            }
        }, new Function0(this) { // from class: org.wikipedia.descriptions.DescriptionEditFragment$special$$inlined$activityViewModels$default$1
            public final /* synthetic */ DescriptionEditFragment $this_activityViewModels;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
                this.$this_activityViewModels = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i4 = i3;
                DescriptionEditFragment descriptionEditFragment = this.$this_activityViewModels;
                switch (i4) {
                    case 0:
                        return descriptionEditFragment.requireActivity().getViewModelStore();
                    case 1:
                        return descriptionEditFragment.requireActivity().getDefaultViewModelCreationExtras();
                    default:
                        return descriptionEditFragment.requireActivity().getDefaultViewModelProviderFactory();
                }
            }
        }, new Function0(this) { // from class: org.wikipedia.descriptions.DescriptionEditFragment$special$$inlined$activityViewModels$default$1
            public final /* synthetic */ DescriptionEditFragment $this_activityViewModels;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
                this.$this_activityViewModels = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i4 = i2;
                DescriptionEditFragment descriptionEditFragment = this.$this_activityViewModels;
                switch (i4) {
                    case 0:
                        return descriptionEditFragment.requireActivity().getViewModelStore();
                    case 1:
                        return descriptionEditFragment.requireActivity().getDefaultViewModelCreationExtras();
                    default:
                        return descriptionEditFragment.requireActivity().getDefaultViewModelProviderFactory();
                }
            }
        });
        int i4 = 3;
        this.loginLauncher = (Fragment.AnonymousClass10) registerForActivityResult(new DescriptionEditFragment$$ExternalSyntheticLambda0(this, i), new FragmentManager$FragmentIntentSenderContract(i4));
        this.editSuccessLauncher = (Fragment.AnonymousClass10) registerForActivityResult(new DescriptionEditFragment$$ExternalSyntheticLambda0(this, i2), new FragmentManager$FragmentIntentSenderContract(i4));
        this.voiceSearchLauncher = (Fragment.AnonymousClass10) registerForActivityResult(new DescriptionEditFragment$$ExternalSyntheticLambda0(this, i3), new FragmentManager$FragmentIntentSenderContract(i4));
    }

    public final Callback callback() {
        ComponentCallbacks activity;
        if (Callback.class.isInstance(getTargetFragment(true))) {
            activity = getTargetFragment(true);
        } else {
            Fragment fragment = this.mParentFragment;
            if (fragment != null) {
                if (Callback.class.isInstance(fragment)) {
                    activity = this.mParentFragment;
                } else if (Callback.class.isInstance(requireParentFragment().mParentFragment)) {
                    activity = requireParentFragment().mParentFragment;
                }
            }
            activity = Callback.class.isInstance(getActivity()) ? getActivity() : null;
        }
        return (Callback) activity;
    }

    public final void editFailed(Throwable th, boolean z) {
        OkHttpCall.AnonymousClass1 anonymousClass1 = this._binding;
        anonymousClass1.getClass();
        ((DescriptionEditView) anonymousClass1.this$0).setSaveState(false);
        ShareUtil.showError(requireActivity(), th, getViewModel$1().shouldWriteToLocalWiki() ? getViewModel$1().pageTitle.wikiSite : new WikiSite("https://www.wikidata.org/"));
        L.e(th);
        if (z) {
            EditAttemptStepEvent.Companion companion = EditAttemptStepEvent.Companion;
            PageTitle pageTitle = getViewModel$1().pageTitle;
            ViewSizeResolver$CC.m(companion, pageTitle, "saveFailure", "other", pageTitle);
        }
    }

    public final String getEditComment() {
        if (getViewModel$1().action != DescriptionEditActivity.Action.ADD_DESCRIPTION) {
            return null;
        }
        OkHttpCall.AnonymousClass1 anonymousClass1 = this._binding;
        anonymousClass1.getClass();
        if (!((DescriptionEditView) anonymousClass1.this$0).getWasSuggestionChosen()) {
            return null;
        }
        OkHttpCall.AnonymousClass1 anonymousClass12 = this._binding;
        anonymousClass12.getClass();
        return ((DescriptionEditView) anonymousClass12.this$0).getWasSuggestionModified() ? "#machine-suggestion-modified" : "#machine-suggestion";
    }

    public final String getEditTags() {
        ArrayList arrayList = new ArrayList();
        if (getViewModel$1().invokeSource == Constants.InvokeSource.SUGGESTED_EDITS) {
            arrayList.add("app-suggestededit");
        }
        int i = WhenMappings.$EnumSwitchMapping$0[getViewModel$1().action.ordinal()];
        if (i == 1) {
            OkHttpCall.AnonymousClass1 anonymousClass1 = this._binding;
            anonymousClass1.getClass();
            if (((DescriptionEditView) anonymousClass1.this$0).getWasSuggestionChosen()) {
                arrayList.add("app-description-add");
                arrayList.add("app-ai-assist");
            } else {
                String str = getViewModel$1().pageTitle.description;
                if (str == null || str.length() == 0) {
                    arrayList.add("app-description-add");
                } else {
                    arrayList.add("app-description-change");
                }
            }
        } else if (i == 2) {
            arrayList.add("app-image-caption-add");
        } else if (i == 3) {
            arrayList.add("app-description-translate");
        } else if (i == 4) {
            arrayList.add("app-image-caption-translate");
        }
        if (arrayList.isEmpty()) {
            return null;
        }
        return CollectionsKt.joinToString$default(arrayList, ",", null, null, null, 62);
    }

    public final DescriptionEditViewModel getViewModel$1() {
        return (DescriptionEditViewModel) this.viewModel$delegate.getValue();
    }

    @Override // androidx.fragment.app.Fragment
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        EditAttemptStepEvent.Companion companion = EditAttemptStepEvent.Companion;
        PageTitle pageTitle = getViewModel$1().pageTitle;
        ViewSizeResolver$CC.m(companion, pageTitle, "init", "other", pageTitle);
    }

    @Override // androidx.fragment.app.Fragment
    public final View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        layoutInflater.getClass();
        View inflate = layoutInflater.inflate(R.layout.fragment_description_edit, viewGroup, false);
        Continuation continuation = null;
        if (inflate == null) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$3("rootView");
            return null;
        }
        DescriptionEditView descriptionEditView = (DescriptionEditView) inflate;
        this._binding = new OkHttpCall.AnonymousClass1(6, descriptionEditView, descriptionEditView);
        descriptionEditView.showProgressBar(true);
        if (getViewModel$1().invokeSource == Constants.InvokeSource.PAGE_ACTIVITY || getViewModel$1().invokeSource == Constants.InvokeSource.PAGE_EDIT_PENCIL || getViewModel$1().invokeSource == Constants.InvokeSource.PAGE_EDIT_HIGHLIGHT) {
            PageSummaryForEdit pageSummaryForEdit = getViewModel$1().sourceSummary;
            String str = pageSummaryForEdit != null ? pageSummaryForEdit.extractHtml : null;
            if (str == null || str.length() == 0) {
                DescriptionEditViewModel viewModel$1 = getViewModel$1();
                AwaitKt.launch$default(ViewModelKt.getViewModelScope(viewModel$1), new WikipediaApp$logOut$$inlined$CoroutineExceptionHandler$1(Job.Key.$$INSTANCE$1, 8), null, new RealImageLoader$execute$result$1(13, viewModel$1, continuation), 2);
                OkHttpCall.AnonymousClass1 anonymousClass1 = this._binding;
                anonymousClass1.getClass();
                ((DescriptionEditView) anonymousClass1.this$0).setLoginCallback(new DescriptionEditFragment$$ExternalSyntheticLambda0(this, 3));
                AppCompatActivity requireActivity = requireActivity();
                WikiSite wikiSite = getViewModel$1().pageTitle.wikiSite;
                OkHttpCall.AnonymousClass1 anonymousClass12 = this._binding;
                anonymousClass12.getClass();
                LinearLayout linearLayout = ((DescriptionEditView) anonymousClass12.this$0).getCaptchaContainer().rootView;
                OkHttpCall.AnonymousClass1 anonymousClass13 = this._binding;
                anonymousClass13.getClass();
                this.captchaHandler = new CaptchaHandler(requireActivity, wikiSite, linearLayout, ((DescriptionEditView) anonymousClass13.this$0).getDescriptionEditTextView(), "", (String) null, (SVGAndroidRenderer) null, 192);
                OkHttpCall.AnonymousClass1 anonymousClass14 = this._binding;
                anonymousClass14.getClass();
                return (DescriptionEditView) anonymousClass14.val$callback;
            }
        }
        setUpEditView(bundle);
        OkHttpCall.AnonymousClass1 anonymousClass15 = this._binding;
        anonymousClass15.getClass();
        ((DescriptionEditView) anonymousClass15.this$0).setLoginCallback(new DescriptionEditFragment$$ExternalSyntheticLambda0(this, 3));
        AppCompatActivity requireActivity2 = requireActivity();
        WikiSite wikiSite2 = getViewModel$1().pageTitle.wikiSite;
        OkHttpCall.AnonymousClass1 anonymousClass122 = this._binding;
        anonymousClass122.getClass();
        LinearLayout linearLayout2 = ((DescriptionEditView) anonymousClass122.this$0).getCaptchaContainer().rootView;
        OkHttpCall.AnonymousClass1 anonymousClass132 = this._binding;
        anonymousClass132.getClass();
        this.captchaHandler = new CaptchaHandler(requireActivity2, wikiSite2, linearLayout2, ((DescriptionEditView) anonymousClass132.this$0).getDescriptionEditTextView(), "", (String) null, (SVGAndroidRenderer) null, 192);
        OkHttpCall.AnonymousClass1 anonymousClass142 = this._binding;
        anonymousClass142.getClass();
        return (DescriptionEditView) anonymousClass142.val$callback;
    }

    @Override // androidx.fragment.app.Fragment
    public final void onDestroyView() {
        CaptchaHandler captchaHandler = this.captchaHandler;
        if (captchaHandler == null) {
            Intrinsics.throwUninitializedPropertyAccessException("captchaHandler");
            throw null;
        }
        StandaloneCoroutine standaloneCoroutine = captchaHandler.clientJob;
        if (standaloneCoroutine != null) {
            standaloneCoroutine.cancel(null);
        }
        OkHttpCall.AnonymousClass1 anonymousClass1 = this._binding;
        anonymousClass1.getClass();
        ((DescriptionEditView) anonymousClass1.this$0).setCallback(null);
        this._binding = null;
        this.mCalled = true;
    }

    @Override // androidx.fragment.app.Fragment
    public final void onSaveInstanceState(Bundle bundle) {
        OkHttpCall.AnonymousClass1 anonymousClass1 = this._binding;
        anonymousClass1.getClass();
        bundle.putString("description", ((DescriptionEditView) anonymousClass1.this$0).getDescription());
        OkHttpCall.AnonymousClass1 anonymousClass12 = this._binding;
        anonymousClass12.getClass();
        bundle.putBoolean("inReviewing", ((DescriptionEditView) anonymousClass12.this$0).showingReviewContent());
    }

    @Override // androidx.fragment.app.Fragment
    public final void onViewCreated(View view, Bundle bundle) {
        view.getClass();
        AwaitKt.launch$default(ViewModelKt.getLifecycleScope(getViewLifecycleOwner()), null, null, new DescriptionEditFragment$onViewCreated$1(this, bundle, null, 0), 3);
    }

    public final void setUpEditView(Bundle bundle) {
        String string;
        String str;
        DescriptionEditActivity.Action action = getViewModel$1().action;
        DescriptionEditActivity.Action action2 = DescriptionEditActivity.Action.ADD_DESCRIPTION;
        if (action == action2) {
            Context requireContext = requireContext();
            WikiGamesEvent wikiGamesEvent = this.analyticsHelper;
            wikiGamesEvent.getClass();
            wikiGamesEvent.log(requireContext, "machineSuggestions.start");
        }
        OkHttpCall.AnonymousClass1 anonymousClass1 = this._binding;
        anonymousClass1.getClass();
        ((DescriptionEditView) anonymousClass1.this$0).setAction(getViewModel$1().action);
        OkHttpCall.AnonymousClass1 anonymousClass12 = this._binding;
        anonymousClass12.getClass();
        ((DescriptionEditView) anonymousClass12.this$0).setPageTitle(getViewModel$1().pageTitle);
        String str2 = getViewModel$1().highlightText;
        if (str2 != null) {
            OkHttpCall.AnonymousClass1 anonymousClass13 = this._binding;
            anonymousClass13.getClass();
            ((DescriptionEditView) anonymousClass13.this$0).setHighlightText(str2);
        }
        OkHttpCall.AnonymousClass1 anonymousClass14 = this._binding;
        anonymousClass14.getClass();
        int i = 1;
        ((DescriptionEditView) anonymousClass14.this$0).setCallback(new AvPlayer(i, this));
        PageSummaryForEdit pageSummaryForEdit = getViewModel$1().sourceSummary;
        Continuation continuation = null;
        boolean z = false;
        if (pageSummaryForEdit != null) {
            OkHttpCall.AnonymousClass1 anonymousClass15 = this._binding;
            anonymousClass15.getClass();
            DescriptionEditView descriptionEditView = (DescriptionEditView) anonymousClass15.this$0;
            PageSummaryForEdit pageSummaryForEdit2 = getViewModel$1().targetSummary;
            ViewDescriptionEditBinding viewDescriptionEditBinding = descriptionEditView.binding;
            String str3 = pageSummaryForEdit.lang;
            if (descriptionEditView.isTranslationEdit) {
                pageSummaryForEdit2.getClass();
            } else {
                pageSummaryForEdit2 = pageSummaryForEdit;
            }
            descriptionEditView.pageSummaryForEdit = pageSummaryForEdit2;
            LinearLayout linearLayout = viewDescriptionEditBinding.viewDescriptionEditPageSummaryContainer;
            DescriptionEditBottomBarView descriptionEditBottomBarView = viewDescriptionEditBinding.viewDescriptionEditReadArticleBarContainer;
            TextView textView = viewDescriptionEditBinding.viewDescriptionEditPageSummary;
            linearLayout.setVisibility(0);
            TextView textView2 = viewDescriptionEditBinding.viewDescriptionEditPageSummaryLabel;
            DescriptionEditActivity.Action action3 = descriptionEditView.action;
            int i2 = action3 == null ? -1 : DescriptionEditView.WhenMappings.$EnumSwitchMapping$0[action3.ordinal()];
            if (i2 == 1) {
                Context context = descriptionEditView.getContext();
                WikipediaApp wikipediaApp = WikipediaApp.instance;
                string = context.getString(R.string.description_edit_translate_article_description_label_per_language, Jsoup.getInstance().getLanguageState().getAppLanguageLocalizedName(str3));
                string.getClass();
            } else if (i2 == 2) {
                string = descriptionEditView.getContext().getString(R.string.description_edit_add_caption_label);
                string.getClass();
            } else if (i2 != 3) {
                string = descriptionEditView.getContext().getString(R.string.description_edit_article_description_label);
                string.getClass();
            } else {
                Context context2 = descriptionEditView.getContext();
                WikipediaApp wikipediaApp2 = WikipediaApp.instance;
                string = context2.getString(R.string.description_edit_translate_caption_label_per_language, Jsoup.getInstance().getLanguageState().getAppLanguageLocalizedName(str3));
                string.getClass();
            }
            textView2.setText(string);
            StringUtil stringUtil = StringUtil.INSTANCE;
            textView.setText(StringsKt.trim(StringUtil.removeHTMLTags((descriptionEditView.isTranslationEdit || descriptionEditView.action == DescriptionEditActivity.Action.ADD_CAPTION) ? pageSummaryForEdit.description : pageSummaryForEdit.extractHtml)).toString());
            if (textView.getText().toString().length() == 0 || (descriptionEditView.action == DescriptionEditActivity.Action.ADD_CAPTION && (str = pageSummaryForEdit.pageTitle.description) != null && str.length() != 0)) {
                viewDescriptionEditBinding.viewDescriptionEditPageSummaryContainer.setVisibility(8);
            }
            if (!descriptionEditView.isTranslationEdit) {
                PageTitle pageTitle = descriptionEditView.pageTitle;
                if (pageTitle == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("pageTitle");
                    throw null;
                }
                str3 = pageTitle.wikiSite.languageCode;
            }
            BitmapsKt.setLayoutDirectionByLang(descriptionEditView, str3);
            PageSummaryForEdit pageSummaryForEdit3 = descriptionEditView.pageSummaryForEdit;
            if (pageSummaryForEdit3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("pageSummaryForEdit");
                throw null;
            }
            descriptionEditBottomBarView.setSummary(pageSummaryForEdit3);
            descriptionEditBottomBarView.setOnClickListener(new DescriptionEditView$$ExternalSyntheticLambda2(descriptionEditView, i));
        }
        if (bundle != null) {
            OkHttpCall.AnonymousClass1 anonymousClass16 = this._binding;
            anonymousClass16.getClass();
            ((DescriptionEditView) anonymousClass16.this$0).setDescription(bundle.getString("description"));
            OkHttpCall.AnonymousClass1 anonymousClass17 = this._binding;
            anonymousClass17.getClass();
            ((DescriptionEditView) anonymousClass17.this$0).loadReviewContent(bundle.getBoolean("inReviewing"));
        }
        OkHttpCall.AnonymousClass1 anonymousClass18 = this._binding;
        anonymousClass18.getClass();
        ((DescriptionEditView) anonymousClass18.this$0).showProgressBar(false);
        OkHttpCall.AnonymousClass1 anonymousClass19 = this._binding;
        anonymousClass19.getClass();
        ((DescriptionEditView) anonymousClass19.this$0).setEditAllowed(getViewModel$1().editingAllowed);
        OkHttpCall.AnonymousClass1 anonymousClass110 = this._binding;
        anonymousClass110.getClass();
        DescriptionEditView descriptionEditView2 = (DescriptionEditView) anonymousClass110.this$0;
        MaterialButton materialButton = descriptionEditView2.binding.learnMoreButton;
        DescriptionEditActivity.Action action4 = descriptionEditView2.action;
        materialButton.setText((action4 == action2 || action4 == DescriptionEditActivity.Action.TRANSLATE_DESCRIPTION) ? descriptionEditView2.getContext().getString(R.string.description_edit_learn_more) : descriptionEditView2.getContext().getString(R.string.description_edit_image_caption_learn_more));
        OkHttpCall.AnonymousClass1 anonymousClass111 = this._binding;
        anonymousClass111.getClass();
        DescriptionEditView descriptionEditView3 = (DescriptionEditView) anonymousClass111.this$0;
        char c = StringsKt.contains("org.wikipedia", "beta", false) ? (char) 1 : StringsKt.contains("org.wikipedia", "alpha", false) ? (char) 2 : StringsKt.contains("org.wikipedia", "dev", false) ? (char) 3 : (char) 0;
        if (c != 0 && c != 1 && SuggestedArticleDescriptionsDialog.availableLanguages.contains(getViewModel$1().pageTitle.wikiSite.languageCode)) {
            OkHttpCall.AnonymousClass1 anonymousClass112 = this._binding;
            anonymousClass112.getClass();
            String description = ((DescriptionEditView) anonymousClass112.this$0).getDescription();
            if (description == null || description.length() == 0) {
                z = true;
            }
        }
        descriptionEditView3.setSuggestionButtonEnabled(z);
        OkHttpCall.AnonymousClass1 anonymousClass113 = this._binding;
        anonymousClass113.getClass();
        if (((DescriptionEditView) anonymousClass113.this$0).isSuggestionButtonEnabled) {
            DescriptionEditViewModel viewModel$1 = getViewModel$1();
            AwaitKt.launch$default(ViewModelKt.getViewModelScope(viewModel$1), new DescriptionEditViewModel$postDescription$$inlined$CoroutineExceptionHandler$1(viewModel$1, 1), null, new LongPressMenu$show$1$1(i, viewModel$1, continuation), 2);
        }
    }
}
