package org.wikipedia.feed;

import android.content.Intent;
import android.os.Bundle;
import android.text.InputFilter;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.RadioButton;
import android.widget.ScrollView;
import androidx.activity.result.ActivityResult;
import androidx.activity.result.ActivityResultCallback;
import androidx.appcompat.app.AlertController;
import androidx.appcompat.app.AppCompatActivity;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.ui.platform.ComposeView;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager$FragmentIntentSenderContract;
import androidx.lifecycle.HasDefaultViewModelProviderFactory;
import androidx.lifecycle.ViewModelStoreOwner;
import coil3.size.ViewSizeResolver$CC;
import coil3.util.ContextsKt;
import com.caverock.androidsvg.SVGAndroidRenderer;
import com.google.android.material.dialog.MaterialAlertDialogBuilder;
import com.google.android.material.textfield.TextInputLayout;
import j$.time.LocalDate;
import java.util.ArrayList;
import java.util.LinkedHashSet;
import kotlin.Lazy;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Ref$ObjectRef;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.ReflectionFactory;
import kotlinx.coroutines.flow.StateFlowImpl;
import okhttp3.Headers;
import okhttp3.Request;
import org.jsoup.Jsoup;
import org.wikimedia.testkitchen.TestKitchenClient;
import org.wikipedia.R;
import org.wikipedia.WikipediaApp;
import org.wikipedia.analytics.testkitchen.TestKitchenAdapter;
import org.wikipedia.compose.components.NotificationBellState;
import org.wikipedia.compose.components.menu.PageOverflowMenuViewModel;
import org.wikipedia.databinding.ActivityTalkReplyBinding;
import org.wikipedia.dataclient.WikiSite;
import org.wikipedia.feed.onboarding.ExploreFeedUpdatePromptActivity;
import org.wikipedia.feed.personalization.homepreference.HomePreferenceType;
import org.wikipedia.games.WikiGames$$ExternalSyntheticLambda0;
import org.wikipedia.main.MainActivity;
import org.wikipedia.navtab.NavTab;
import org.wikipedia.settings.Prefs;
import org.wikipedia.settings.PrefsIoUtil;
import org.wikipedia.views.PageItemView$$ExternalSyntheticLambda3;
import org.wikipedia.views.PlainPasteEditText;
import org.wikipedia.views.SurveyDialog$$ExternalSyntheticLambda3;
import org.wikipedia.views.SurveyDialog$$ExternalSyntheticLambda5;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\b\u0007\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0012²\u0006\f\u0010\u0005\u001a\u00020\u00048\nX\u008a\u0084\u0002²\u0006\f\u0010\u0007\u001a\u00020\u00068\nX\u008a\u0084\u0002²\u0006\f\u0010\t\u001a\u00020\b8\nX\u008a\u0084\u0002²\u0006\f\u0010\u000b\u001a\u00020\n8\nX\u008a\u0084\u0002²\u0006\f\u0010\r\u001a\u00020\f8\nX\u008a\u0084\u0002²\u0006\f\u0010\u000f\u001a\u00020\u000e8\nX\u008a\u0084\u0002²\u0006\u000e\u0010\u0011\u001a\u00020\u00108\n@\nX\u008a\u008e\u0002"}, d2 = {"Lorg/wikipedia/feed/HomeFragment;", "Landroidx/fragment/app/Fragment;", "<init>", "()V", "Lorg/wikipedia/feed/HomeTab;", "selectedTab", "Lorg/wikipedia/dataclient/WikiSite;", "wikiSite", "Lorg/wikipedia/feed/TabsState;", "tabsState", "Lorg/wikipedia/compose/components/NotificationBellState;", "notificationState", "Lorg/wikipedia/feed/ForYouContentState;", "forYouContentState", "Lorg/wikipedia/feed/CommunityContentState;", "communityContentState", "", "swipeToExplorePromptShown", "app"}, k = 1, mv = {2, 3, 0}, xi = 48)
/* loaded from: classes.dex */
public final class HomeFragment extends Fragment {
    public final LinkedHashSet cardImpressions;
    public final Fragment.AnonymousClass10 customizeInterestsLauncher;
    public final SVGAndroidRenderer instrument;
    public final Request.Builder pageOverflowMenuViewModel$delegate;
    public final Fragment.AnonymousClass10 personalizationResultLauncher;
    public final Request.Builder viewModel$delegate;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public abstract /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[HomeTab.values().length];
            try {
                iArr[HomeTab.COMMUNITY.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[HomeTab.FOR_YOU.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public HomeFragment() {
        final int i = 0;
        HomeFragment$special$$inlined$viewModels$default$1 homeFragment$special$$inlined$viewModels$default$1 = new HomeFragment$special$$inlined$viewModels$default$1(this, 0);
        LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.NONE;
        final Lazy lazy = ContextsKt.lazy(lazyThreadSafetyMode, new HomeFragment$special$$inlined$viewModels$default$2(i, homeFragment$special$$inlined$viewModels$default$1));
        ReflectionFactory reflectionFactory = Reflection.factory;
        this.viewModel$delegate = new Request.Builder(reflectionFactory.getOrCreateKotlinClass(HomeViewModel.class), new HomeFragment$special$$inlined$viewModels$default$3(lazy, 0), new Function0(this) { // from class: org.wikipedia.feed.HomeFragment$special$$inlined$viewModels$default$5
            public final /* synthetic */ HomeFragment $this_viewModels;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
                this.$this_viewModels = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                HasDefaultViewModelProviderFactory hasDefaultViewModelProviderFactory;
                int i2 = i;
                HomeFragment homeFragment = this.$this_viewModels;
                Lazy lazy2 = lazy;
                switch (i2) {
                    case 0:
                        ViewModelStoreOwner viewModelStoreOwner = (ViewModelStoreOwner) lazy2.getValue();
                        hasDefaultViewModelProviderFactory = viewModelStoreOwner instanceof HasDefaultViewModelProviderFactory ? (HasDefaultViewModelProviderFactory) viewModelStoreOwner : null;
                        if (hasDefaultViewModelProviderFactory == null || (r3 = hasDefaultViewModelProviderFactory.getDefaultViewModelProviderFactory()) == null) {
                            break;
                        }
                        break;
                    default:
                        ViewModelStoreOwner viewModelStoreOwner2 = (ViewModelStoreOwner) lazy2.getValue();
                        hasDefaultViewModelProviderFactory = viewModelStoreOwner2 instanceof HasDefaultViewModelProviderFactory ? (HasDefaultViewModelProviderFactory) viewModelStoreOwner2 : null;
                        if (hasDefaultViewModelProviderFactory == null || (r3 = hasDefaultViewModelProviderFactory.getDefaultViewModelProviderFactory()) == null) {
                            break;
                        }
                        break;
                }
                return homeFragment.getDefaultViewModelProviderFactory();
            }
        }, new HomeFragment$special$$inlined$viewModels$default$3(lazy, 13));
        final int i2 = 1;
        final Lazy lazy2 = ContextsKt.lazy(lazyThreadSafetyMode, new HomeFragment$special$$inlined$viewModels$default$2(6, new HomeFragment$special$$inlined$viewModels$default$1(this, 1)));
        this.pageOverflowMenuViewModel$delegate = new Request.Builder(reflectionFactory.getOrCreateKotlinClass(PageOverflowMenuViewModel.class), new HomeFragment$special$$inlined$viewModels$default$3(lazy2, 14), new Function0(this) { // from class: org.wikipedia.feed.HomeFragment$special$$inlined$viewModels$default$5
            public final /* synthetic */ HomeFragment $this_viewModels;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
                this.$this_viewModels = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                HasDefaultViewModelProviderFactory hasDefaultViewModelProviderFactory;
                int i22 = i2;
                HomeFragment homeFragment = this.$this_viewModels;
                Lazy lazy22 = lazy2;
                switch (i22) {
                    case 0:
                        ViewModelStoreOwner viewModelStoreOwner = (ViewModelStoreOwner) lazy22.getValue();
                        hasDefaultViewModelProviderFactory = viewModelStoreOwner instanceof HasDefaultViewModelProviderFactory ? (HasDefaultViewModelProviderFactory) viewModelStoreOwner : null;
                        if (hasDefaultViewModelProviderFactory == null || (r3 = hasDefaultViewModelProviderFactory.getDefaultViewModelProviderFactory()) == null) {
                            break;
                        }
                        break;
                    default:
                        ViewModelStoreOwner viewModelStoreOwner2 = (ViewModelStoreOwner) lazy22.getValue();
                        hasDefaultViewModelProviderFactory = viewModelStoreOwner2 instanceof HasDefaultViewModelProviderFactory ? (HasDefaultViewModelProviderFactory) viewModelStoreOwner2 : null;
                        if (hasDefaultViewModelProviderFactory == null || (r3 = hasDefaultViewModelProviderFactory.getDefaultViewModelProviderFactory()) == null) {
                            break;
                        }
                        break;
                }
                return homeFragment.getDefaultViewModelProviderFactory();
            }
        }, new HomeFragment$special$$inlined$viewModels$default$3(lazy2, 15));
        this.cardImpressions = new LinkedHashSet();
        TestKitchenClient testKitchenClient = TestKitchenAdapter.client;
        testKitchenClient.getClass();
        SVGAndroidRenderer sVGAndroidRenderer = new SVGAndroidRenderer("apps-home-feed", testKitchenClient);
        sVGAndroidRenderer.startFunnel("home_feed");
        this.instrument = sVGAndroidRenderer;
        int i3 = 3;
        this.personalizationResultLauncher = (Fragment.AnonymousClass10) registerForActivityResult(new ActivityResultCallback(this) { // from class: org.wikipedia.feed.HomeFragment$$ExternalSyntheticLambda2
            public final /* synthetic */ HomeFragment f$0;

            {
                this.f$0 = this;
            }

            @Override // androidx.activity.result.ActivityResultCallback
            public final void onActivityResult(Object obj) {
                int i4 = i;
                HomeFragment homeFragment = this.f$0;
                ActivityResult activityResult = (ActivityResult) obj;
                switch (i4) {
                    case 0:
                        activityResult.getClass();
                        if (activityResult.resultCode == -1) {
                            Prefs prefs = Prefs.INSTANCE;
                            homeFragment.selectTab(Prefs.getHomePreferenceSelection() == HomePreferenceType.PERSONALIZED ? HomeTab.FOR_YOU : HomeTab.COMMUNITY);
                            break;
                        }
                        break;
                    default:
                        activityResult.getClass();
                        if (activityResult.resultCode == 100) {
                            Prefs prefs2 = Prefs.INSTANCE;
                            PrefsIoUtil.setString(R.string.preference_key_home_for_you_modules_today, "");
                            homeFragment.getViewModel().refreshForYouContent();
                            break;
                        }
                        break;
                }
            }
        }, new FragmentManager$FragmentIntentSenderContract(i3));
        this.customizeInterestsLauncher = (Fragment.AnonymousClass10) registerForActivityResult(new ActivityResultCallback(this) { // from class: org.wikipedia.feed.HomeFragment$$ExternalSyntheticLambda2
            public final /* synthetic */ HomeFragment f$0;

            {
                this.f$0 = this;
            }

            @Override // androidx.activity.result.ActivityResultCallback
            public final void onActivityResult(Object obj) {
                int i4 = i2;
                HomeFragment homeFragment = this.f$0;
                ActivityResult activityResult = (ActivityResult) obj;
                switch (i4) {
                    case 0:
                        activityResult.getClass();
                        if (activityResult.resultCode == -1) {
                            Prefs prefs = Prefs.INSTANCE;
                            homeFragment.selectTab(Prefs.getHomePreferenceSelection() == HomePreferenceType.PERSONALIZED ? HomeTab.FOR_YOU : HomeTab.COMMUNITY);
                            break;
                        }
                        break;
                    default:
                        activityResult.getClass();
                        if (activityResult.resultCode == 100) {
                            Prefs prefs2 = Prefs.INSTANCE;
                            PrefsIoUtil.setString(R.string.preference_key_home_for_you_modules_today, "");
                            homeFragment.getViewModel().refreshForYouContent();
                            break;
                        }
                        break;
                }
            }
        }, new FragmentManager$FragmentIntentSenderContract(i3));
    }

    public final HomeViewModel getViewModel() {
        return (HomeViewModel) this.viewModel$delegate.getValue();
    }

    @Override // androidx.fragment.app.Fragment
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (bundle == null) {
            Prefs prefs = Prefs.INSTANCE;
            if (Prefs.isInitialOnboardingEnabled() || Prefs.isExploreFeedUpdatePromptShown()) {
                return;
            }
            int i = ExploreFeedUpdatePromptActivity.$r8$clinit;
            this.personalizationResultLauncher.launch(new Intent(requireContext(), (Class<?>) ExploreFeedUpdatePromptActivity.class), null);
        }
    }

    @Override // androidx.fragment.app.Fragment
    public final View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        layoutInflater.getClass();
        ComposeView composeView = new ComposeView(requireActivity(), null, 6);
        composeView.setContent(new ComposableLambdaImpl(new HomeFragment$$ExternalSyntheticLambda1(this, 1), true, 158991063));
        return composeView;
    }

    @Override // androidx.fragment.app.Fragment
    public final void onPause() {
        this.mCalled = true;
        this.cardImpressions.clear();
        this.instrument.state = null;
    }

    @Override // androidx.fragment.app.Fragment
    public final void onResume() {
        int i = 1;
        this.mCalled = true;
        AppCompatActivity requireActivity = requireActivity();
        MainActivity mainActivity = requireActivity instanceof MainActivity ? (MainActivity) requireActivity : null;
        if (mainActivity != null) {
            mainActivity.onTabChanged(NavTab.HOME);
        }
        int i2 = 0;
        getViewModel().updateTabCount(false);
        HomeViewModel viewModel = getViewModel();
        WikipediaApp wikipediaApp = WikipediaApp.instance;
        if (!((ArrayList) ViewSizeResolver$CC.m785m()).contains(((WikiSite) viewModel.wikiSite.$$delegate_0.getValue()).languageCode)) {
            String appLanguageCode = Jsoup.getInstance().getLanguageState().getAppLanguageCode();
            appLanguageCode.getClass();
            Prefs prefs = Prefs.INSTANCE;
            PrefsIoUtil.setString(R.string.preference_key_home_language_code, appLanguageCode);
            StateFlowImpl stateFlowImpl = viewModel._wikiSite;
            WikiSite.Companion.getClass();
            WikiSite forLanguageCode = WikiSite.Companion.forLanguageCode(appLanguageCode);
            stateFlowImpl.getClass();
            stateFlowImpl.updateState(null, forLanguageCode);
        }
        this.instrument.startFunnel("home_feed");
        refreshNotification();
        LocalDate of = LocalDate.of(2026, 8, 14);
        Prefs prefs2 = Prefs.INSTANCE;
        if (!Prefs.isExploreFeedUpdatePromptShown() || !Prefs.isHomeFeedUpdateTooltipShown() || ViewSizeResolver$CC.m(Jsoup.getInstance(), 0, ViewSizeResolver$CC.m(new Object[0], 0, Jsoup.getInstance().getResources(), R.string.preference_key_home_feed_survey_shown), false) || LocalDate.now().isAfter(of) || PrefsIoUtil.getInt(R.string.preference_key_explore_feed_visit_count, 0) < 4) {
            return;
        }
        PrefsIoUtil.setBoolean(R.string.preference_key_home_feed_survey_shown, true);
        AppCompatActivity requireActivity2 = requireActivity();
        WikiGames$$ExternalSyntheticLambda0 wikiGames$$ExternalSyntheticLambda0 = new WikiGames$$ExternalSyntheticLambda0(10, this);
        HomeFragment$$ExternalSyntheticLambda1 homeFragment$$ExternalSyntheticLambda1 = new HomeFragment$$ExternalSyntheticLambda1(this, i2);
        Ref$ObjectRef ref$ObjectRef = new Ref$ObjectRef();
        ActivityTalkReplyBinding inflate = ActivityTalkReplyBinding.inflate(requireActivity2.getLayoutInflater());
        inflate.replyNextButton.setText(requireActivity2.getString(R.string.home_feed_survey_title));
        inflate.learnMoreButton.setText(requireActivity2.getString(R.string.home_feed_survey_message));
        ((RadioButton) inflate.replyInputView).setVisibility(0);
        ((RadioButton) inflate.replyToolbar).setVisibility(0);
        TextInputLayout textInputLayout = (TextInputLayout) inflate.replySubjectLayout;
        textInputLayout.setVisibility(0);
        textInputLayout.setCounterEnabled(true);
        textInputLayout.setCounterMaxLength(250);
        PlainPasteEditText plainPasteEditText = (PlainPasteEditText) inflate.replySubjectText;
        plainPasteEditText.setFilters(new InputFilter.LengthFilter[]{new InputFilter.LengthFilter(250)});
        plainPasteEditText.setOnFocusChangeListener(new SurveyDialog$$ExternalSyntheticLambda3(0, requireActivity2, inflate));
        ((Button) inflate.rootView).setOnClickListener(new PageItemView$$ExternalSyntheticLambda3(i, wikiGames$$ExternalSyntheticLambda0, ref$ObjectRef));
        ((Button) inflate.threadItemView).setOnClickListener(new SurveyDialog$$ExternalSyntheticLambda5(inflate, homeFragment$$ExternalSyntheticLambda1, requireActivity2, ref$ObjectRef, 0));
        MaterialAlertDialogBuilder materialAlertDialogBuilder = new MaterialAlertDialogBuilder(requireActivity2, R.style.AlertDialogTheme_AdjustResize);
        AlertController.AlertParams alertParams = (AlertController.AlertParams) materialAlertDialogBuilder.array;
        alertParams.mCancelable = false;
        alertParams.mView = (ScrollView) inflate.talkScrollContainer;
        SVGAndroidRenderer.submitInteraction$default(this.instrument, "impression", "home_feed_feedback", null, null, null, null, 252);
        ref$ObjectRef.element = materialAlertDialogBuilder.show();
    }

    public final void refreshNotification() {
        Object value;
        int notificationUnreadCount;
        boolean isLoggedIn;
        StateFlowImpl stateFlowImpl = getViewModel()._unreadCount;
        do {
            value = stateFlowImpl.getValue();
            Prefs prefs = Prefs.INSTANCE;
            notificationUnreadCount = Prefs.getNotificationUnreadCount();
            isLoggedIn = Headers.Companion.isLoggedIn();
            ((NotificationBellState) value).getClass();
        } while (!stateFlowImpl.compareAndSet(value, new NotificationBellState(notificationUnreadCount, isLoggedIn)));
    }

    public final void selectTab(HomeTab homeTab) {
        homeTab.getClass();
        StateFlowImpl stateFlowImpl = getViewModel()._selectedTab;
        stateFlowImpl.getClass();
        stateFlowImpl.updateState(null, homeTab);
        AppCompatActivity requireActivity = requireActivity();
        MainActivity mainActivity = requireActivity instanceof MainActivity ? (MainActivity) requireActivity : null;
        if (mainActivity != null) {
            mainActivity.onTabChanged(NavTab.HOME);
        }
    }
}
