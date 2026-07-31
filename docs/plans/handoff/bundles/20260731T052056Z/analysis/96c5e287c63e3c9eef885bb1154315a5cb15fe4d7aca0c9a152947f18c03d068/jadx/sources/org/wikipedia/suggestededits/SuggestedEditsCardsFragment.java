package org.wikipedia.suggestededits;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.Spinner;
import androidx.appcompat.app.AppCompatActivity;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.view.MenuProvider;
import androidx.fragment.app.BackStackRecord;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManagerImpl;
import androidx.lifecycle.Lifecycle$State;
import androidx.lifecycle.ViewModelKt;
import androidx.recyclerview.widget.RecyclerView;
import androidx.room.Room;
import androidx.viewpager2.widget.ViewPager2;
import coil3.size.ViewSizeResolver$CC;
import coil3.util.ContextsKt;
import com.google.android.material.appbar.MaterialToolbar;
import com.google.android.material.button.MaterialButton;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.text.UStringsKt;
import kotlinx.coroutines.AwaitKt;
import okhttp3.Request;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.jsoup.Jsoup;
import org.wikipedia.Constants;
import org.wikipedia.R;
import org.wikipedia.WikipediaApp;
import org.wikipedia.analytics.eventplatform.AppInteractionEvent;
import org.wikipedia.analytics.eventplatform.EventPlatformClient;
import org.wikipedia.analytics.eventplatform.ImageRecommendationsEvent;
import org.wikipedia.databinding.ActivityLoginBinding;
import org.wikipedia.dataclient.mwapi.MwQueryPage;
import org.wikipedia.descriptions.DescriptionEditActivity;
import org.wikipedia.donate.DonateDialog$special$$inlined$viewModels$default$5;
import org.wikipedia.main.MainFragment$$ExternalSyntheticLambda5;
import org.wikipedia.page.PageTitle;
import org.wikipedia.places.PlacesFragment$special$$inlined$viewModels$default$3;
import org.wikipedia.settings.Prefs;
import org.wikipedia.settings.PrefsIoUtil;
import org.wikipedia.suggestededits.SuggestedEditsItemFragment;
import org.wikipedia.util.ShareUtil;
import org.wikipedia.util.UriUtil;
import org.wikipedia.views.PositionAwareFragmentStateAdapter;
import org.wikipedia.watchlist.WatchlistFragment$special$$inlined$viewModels$default$1;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0007\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u0003:\u0004\u0006\u0006\u0007\bB\u0007¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\t"}, d2 = {"Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;", "Landroidx/fragment/app/Fragment;", "Landroidx/core/view/MenuProvider;", "Lorg/wikipedia/suggestededits/SuggestedEditsItemFragment$Callback;", "<init>", "()V", "OnToSpinnerItemSelectedListener", "ViewPagerAdapter", "ViewPagerListener", "app"}, k = 1, mv = {2, 3, 0}, xi = 48)
/* loaded from: classes.dex */
public final class SuggestedEditsCardsFragment extends Fragment implements MenuProvider, SuggestedEditsItemFragment.Callback {
    public ActivityLoginBinding _binding;
    public final WikipediaApp app;
    public boolean resettingViewPager;
    public boolean swappingLanguageSpinners;
    public final Request.Builder viewModel$delegate;
    public final ViewPagerListener viewPagerListener;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class OnToSpinnerItemSelectedListener implements AdapterView.OnItemSelectedListener {
        public final /* synthetic */ int $r8$classId;
        public final /* synthetic */ SuggestedEditsCardsFragment this$0;

        public /* synthetic */ OnToSpinnerItemSelectedListener(SuggestedEditsCardsFragment suggestedEditsCardsFragment, int i) {
            this.$r8$classId = i;
            this.this$0 = suggestedEditsCardsFragment;
        }

        @Override // android.widget.AdapterView.OnItemSelectedListener
        public final void onItemSelected(AdapterView adapterView, View view, int i, long j) {
            int i2 = this.$r8$classId;
            SuggestedEditsCardsFragment suggestedEditsCardsFragment = this.this$0;
            adapterView.getClass();
            switch (i2) {
                case 0:
                    String str = suggestedEditsCardsFragment.getViewModel().langFromCode;
                    WikipediaApp wikipediaApp = suggestedEditsCardsFragment.app;
                    if (Intrinsics.areEqual(str, ((ArrayList) wikipediaApp.getLanguageState().getAppLanguageCodes()).get(i))) {
                        suggestedEditsCardsFragment.swapLanguageSpinnerSelection(false);
                    }
                    if (!suggestedEditsCardsFragment.swappingLanguageSpinners && !Intrinsics.areEqual(suggestedEditsCardsFragment.getViewModel().langToCode, ((ArrayList) wikipediaApp.getLanguageState().getAppLanguageCodes()).get(i))) {
                        SuggestedEditsCardsViewModel viewModel = suggestedEditsCardsFragment.getViewModel();
                        String str2 = (String) ((ArrayList) wikipediaApp.getLanguageState().getAppLanguageCodes()).get(i);
                        str2.getClass();
                        viewModel.langToCode = str2;
                        suggestedEditsCardsFragment.resetViewPagerItemAdapter();
                        suggestedEditsCardsFragment.updateBackButton(0);
                        break;
                    }
                    break;
                default:
                    String str3 = suggestedEditsCardsFragment.getViewModel().langToCode;
                    WikipediaApp wikipediaApp2 = suggestedEditsCardsFragment.app;
                    if (Intrinsics.areEqual(str3, ((ArrayList) wikipediaApp2.getLanguageState().getAppLanguageCodes()).get(i))) {
                        suggestedEditsCardsFragment.swapLanguageSpinnerSelection(true);
                    }
                    if (!suggestedEditsCardsFragment.swappingLanguageSpinners && !Intrinsics.areEqual(suggestedEditsCardsFragment.getViewModel().langFromCode, ((ArrayList) wikipediaApp2.getLanguageState().getAppLanguageCodes()).get(i))) {
                        SuggestedEditsCardsViewModel viewModel2 = suggestedEditsCardsFragment.getViewModel();
                        String str4 = (String) ((ArrayList) wikipediaApp2.getLanguageState().getAppLanguageCodes()).get(i);
                        str4.getClass();
                        viewModel2.langFromCode = str4;
                        suggestedEditsCardsFragment.resetViewPagerItemAdapter();
                        suggestedEditsCardsFragment.updateBackButton(0);
                        break;
                    }
                    break;
            }
        }

        @Override // android.widget.AdapterView.OnItemSelectedListener
        public final void onNothingSelected(AdapterView adapterView) {
            int i = this.$r8$classId;
            adapterView.getClass();
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class ViewPagerAdapter extends PositionAwareFragmentStateAdapter {

        /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
        public abstract /* synthetic */ class WhenMappings {
            public static final /* synthetic */ int[] $EnumSwitchMapping$0;

            static {
                int[] iArr = new int[DescriptionEditActivity.Action.values().length];
                try {
                    iArr[DescriptionEditActivity.Action.VANDALISM_PATROL.ordinal()] = 1;
                } catch (NoSuchFieldError unused) {
                }
                try {
                    iArr[DescriptionEditActivity.Action.ADD_IMAGE_TAGS.ordinal()] = 2;
                } catch (NoSuchFieldError unused2) {
                }
                try {
                    iArr[DescriptionEditActivity.Action.IMAGE_RECOMMENDATIONS.ordinal()] = 3;
                } catch (NoSuchFieldError unused3) {
                }
                $EnumSwitchMapping$0 = iArr;
            }
        }

        public ViewPagerAdapter(Fragment fragment) {
            super(fragment);
        }

        @Override // androidx.viewpager2.adapter.FragmentStateAdapter
        public final Fragment createFragment(int i) {
            int i2 = WhenMappings.$EnumSwitchMapping$0[SuggestedEditsCardsFragment.this.getViewModel().action.ordinal()];
            if (i2 == 1) {
                return new SuggestedEditsVandalismPatrolFragment();
            }
            if (i2 == 2) {
                return new SuggestedEditsImageTagsFragment();
            }
            if (i2 != 3) {
                return new SuggestedEditsCardsItemFragment();
            }
            SuggestedEditsImageRecsFragment suggestedEditsImageRecsFragment = new SuggestedEditsImageRecsFragment();
            WikipediaApp wikipediaApp = WikipediaApp.instance;
            suggestedEditsImageRecsFragment.setArguments(UStringsKt.bundleOf(new Pair("lang", Jsoup.getInstance().getAppOrSystemLanguageCode())));
            return suggestedEditsImageRecsFragment;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public final int getItemCount() {
            return Integer.MAX_VALUE;
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class ViewPagerListener extends ViewPager2.OnPageChangeCallback {
        public int prevPosition;

        public ViewPagerListener() {
        }

        @Override // androidx.viewpager2.widget.ViewPager2.OnPageChangeCallback
        public final void onPageSelected(int i) {
            SuggestedEditsCardsFragment suggestedEditsCardsFragment = SuggestedEditsCardsFragment.this;
            if (suggestedEditsCardsFragment.getViewModel().action == DescriptionEditActivity.Action.IMAGE_RECOMMENDATIONS) {
                ActivityLoginBinding activityLoginBinding = suggestedEditsCardsFragment._binding;
                activityLoginBinding.getClass();
                ViewPagerAdapter viewPagerAdapter = (ViewPagerAdapter) ((ViewPager2) activityLoginBinding.loginButton).getAdapter();
                Fragment fragmentAt = viewPagerAdapter != null ? viewPagerAdapter.getFragmentAt(i) : null;
                fragmentAt.getClass();
                SuggestedEditsImageRecsFragment suggestedEditsImageRecsFragment = (SuggestedEditsImageRecsFragment) fragmentAt;
                suggestedEditsImageRecsFragment.isVisibleToUser = true;
                if (suggestedEditsImageRecsFragment.isLoaded && !suggestedEditsImageRecsFragment.isImpressionLogged) {
                    ImageRecommendationsEvent.Companion companion = ImageRecommendationsEvent.Companion;
                    String actionStringForAnalytics$default = SuggestedEditsImageRecsFragment.getActionStringForAnalytics$default(suggestedEditsImageRecsFragment, null, null, null, 15);
                    String str = suggestedEditsImageRecsFragment.getViewModel().langCode;
                    companion.getClass();
                    ImageRecommendationsEvent.Companion.logImpression("recommendedimagetoolbar", actionStringForAnalytics$default, str);
                    suggestedEditsImageRecsFragment.isImpressionLogged = true;
                }
            } else if (suggestedEditsCardsFragment.getViewModel().action == DescriptionEditActivity.Action.VANDALISM_PATROL) {
                String str2 = i < this.prevPosition ? "edit_left_swipe" : "edit_right_swipe";
                EventPlatformClient eventPlatformClient = EventPlatformClient.INSTANCE;
                WikipediaApp wikipediaApp = WikipediaApp.instance;
                String m = ViewSizeResolver$CC.m();
                Prefs prefs = Prefs.INSTANCE;
                EventPlatformClient.submit(new AppInteractionEvent(str2, "pt_edit", "", m, Prefs.getRecentEditsWikiCode(), "app_patroller_experience"));
            }
            suggestedEditsCardsFragment.updateBackButton(i);
            suggestedEditsCardsFragment.updateActionButton();
            this.prevPosition = i;
            ActivityLoginBinding activityLoginBinding2 = suggestedEditsCardsFragment._binding;
            activityLoginBinding2.getClass();
            int offscreenPageLimit = (((ViewPager2) activityLoginBinding2.loginButton).getOffscreenPageLimit() * 2) + 1;
            if (i >= offscreenPageLimit) {
                ActivityLoginBinding activityLoginBinding3 = suggestedEditsCardsFragment._binding;
                activityLoginBinding3.getClass();
                RecyclerView.Adapter adapter = ((ViewPager2) activityLoginBinding3.loginButton).getAdapter();
                adapter.getClass();
                ViewPagerAdapter viewPagerAdapter2 = (ViewPagerAdapter) adapter;
                Fragment fragmentAt2 = viewPagerAdapter2.getFragmentAt(i - offscreenPageLimit);
                if (fragmentAt2 != null) {
                    FragmentManagerImpl fragmentManagerImpl = viewPagerAdapter2.fragmentManager;
                    fragmentManagerImpl.getClass();
                    BackStackRecord backStackRecord = new BackStackRecord(fragmentManagerImpl);
                    backStackRecord.remove(fragmentAt2);
                    backStackRecord.commit();
                }
            }
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public abstract /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[DescriptionEditActivity.Action.values().length];
            try {
                iArr[DescriptionEditActivity.Action.ADD_IMAGE_TAGS.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[DescriptionEditActivity.Action.ADD_CAPTION.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[DescriptionEditActivity.Action.TRANSLATE_CAPTION.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[DescriptionEditActivity.Action.IMAGE_RECOMMENDATIONS.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[DescriptionEditActivity.Action.VANDALISM_PATROL.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr[DescriptionEditActivity.Action.TRANSLATE_DESCRIPTION.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public SuggestedEditsCardsFragment() {
        Lazy lazy = ContextsKt.lazy(LazyThreadSafetyMode.NONE, new WatchlistFragment$special$$inlined$viewModels$default$1(4, new WatchlistFragment$special$$inlined$viewModels$default$1(3, this)));
        this.viewModel$delegate = new Request.Builder(Reflection.factory.getOrCreateKotlinClass(SuggestedEditsCardsViewModel.class), new PlacesFragment$special$$inlined$viewModels$default$3(lazy, 12), new DonateDialog$special$$inlined$viewModels$default$5(this, lazy, 16), new PlacesFragment$special$$inlined$viewModels$default$3(lazy, 13));
        this.viewPagerListener = new ViewPagerListener();
        WikipediaApp wikipediaApp = WikipediaApp.instance;
        this.app = Jsoup.getInstance();
    }

    @Override // org.wikipedia.suggestededits.SuggestedEditsItemFragment.Callback
    public final String getLangCode() {
        return getViewModel().langFromCode;
    }

    @Override // org.wikipedia.suggestededits.SuggestedEditsItemFragment.Callback
    /* renamed from: getSinglePage */
    public final MwQueryPage getPage() {
        return null;
    }

    public final PageTitle getTopTitle() {
        PageSummaryForEdit pageSummaryForEdit;
        PageSummaryForEdit pageSummaryForEdit2;
        PageTitle pageTitle;
        PageSummaryForEdit pageSummaryForEdit3;
        PageSummaryForEdit pageSummaryForEdit4;
        PageTitle pageTitle2;
        SuggestedEditsCardsItemFragment suggestedEditsCardsItemFragment = topChild();
        if (getViewModel().action == DescriptionEditActivity.Action.ADD_DESCRIPTION || getViewModel().action == DescriptionEditActivity.Action.ADD_CAPTION) {
            if (suggestedEditsCardsItemFragment != null && (pageSummaryForEdit2 = suggestedEditsCardsItemFragment.sourceSummaryForEdit) != null && (pageTitle = pageSummaryForEdit2.pageTitle) != null) {
                pageTitle.description = suggestedEditsCardsItemFragment.addedContribution;
            }
            if (suggestedEditsCardsItemFragment == null || (pageSummaryForEdit = suggestedEditsCardsItemFragment.sourceSummaryForEdit) == null) {
                return null;
            }
            return pageSummaryForEdit.pageTitle;
        }
        if (suggestedEditsCardsItemFragment != null && (pageSummaryForEdit4 = suggestedEditsCardsItemFragment.targetSummaryForEdit) != null && (pageTitle2 = pageSummaryForEdit4.pageTitle) != null) {
            pageTitle2.description = suggestedEditsCardsItemFragment.addedContribution;
        }
        if (suggestedEditsCardsItemFragment == null || (pageSummaryForEdit3 = suggestedEditsCardsItemFragment.targetSummaryForEdit) == null) {
            return null;
        }
        return pageSummaryForEdit3.pageTitle;
    }

    public final SuggestedEditsCardsViewModel getViewModel() {
        return (SuggestedEditsCardsViewModel) this.viewModel$delegate.getValue();
    }

    @Override // org.wikipedia.suggestededits.SuggestedEditsItemFragment.Callback
    public final void nextPage(Fragment fragment) {
        if (Intrinsics.areEqual(fragment, topBaseChild()) || fragment == null) {
            this.viewPagerListener.getClass();
            ActivityLoginBinding activityLoginBinding = this._binding;
            activityLoginBinding.getClass();
            ViewPager2 viewPager2 = (ViewPager2) activityLoginBinding.loginButton;
            ActivityLoginBinding activityLoginBinding2 = this._binding;
            activityLoginBinding2.getClass();
            viewPager2.setCurrentItem(((ViewPager2) activityLoginBinding2.loginButton).getCurrentItem() + 1, true);
            updateActionButton();
        }
    }

    @Override // androidx.fragment.app.Fragment
    public final void onActivityResult(int i, int i2, Intent intent) {
        String string;
        PageSummaryForEdit pageSummaryForEdit;
        super.onActivityResult(i, i2, intent);
        if (i == 55 && i2 == -1) {
            SuggestedEditsCardsItemFragment suggestedEditsCardsItemFragment = topChild();
            if (suggestedEditsCardsItemFragment != null) {
                suggestedEditsCardsItemFragment.showAddedContributionView(intent != null ? intent.getStringExtra("addedContribution") : null);
            }
            SuggestedEditsCardsItemFragment suggestedEditsCardsItemFragment2 = topChild();
            String str = (suggestedEditsCardsItemFragment2 == null || (pageSummaryForEdit = suggestedEditsCardsItemFragment2.targetSummaryForEdit) == null) ? null : pageSummaryForEdit.lang;
            int i3 = WhenMappings.$EnumSwitchMapping$0[getViewModel().action.ordinal()];
            if (i3 != 2) {
                WikipediaApp wikipediaApp = this.app;
                string = i3 != 3 ? i3 != 6 ? getString(R.string.description_edit_success_saved_snackbar) : getString(R.string.description_edit_success_saved_in_lang_snackbar, wikipediaApp.getLanguageState().getAppLanguageLocalizedName(str)) : getString(R.string.description_edit_success_saved_image_caption_in_lang_snackbar, wikipediaApp.getLanguageState().getAppLanguageLocalizedName(str));
            } else {
                string = getString(R.string.description_edit_success_saved_image_caption_snackbar);
            }
            string.getClass();
            ShareUtil.showMessage(this, string);
            nextPage(null);
        }
    }

    @Override // androidx.core.view.MenuProvider
    public final void onCreateMenu(Menu menu, MenuInflater menuInflater) {
        menu.getClass();
        menuInflater.getClass();
        if (getViewModel().action == DescriptionEditActivity.Action.IMAGE_RECOMMENDATIONS || getViewModel().action == DescriptionEditActivity.Action.VANDALISM_PATROL) {
            return;
        }
        menuInflater.inflate(R.menu.menu_suggested_edits, menu);
    }

    @Override // androidx.fragment.app.Fragment
    public final View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        String string;
        layoutInflater.getClass();
        View inflate = getLayoutInflater().inflate(R.layout.fragment_suggested_edits_cards, viewGroup, false);
        int i = R.id.addContributionButton;
        MaterialButton materialButton = (MaterialButton) Room.findChildViewById(inflate, R.id.addContributionButton);
        if (materialButton != null) {
            i = R.id.arrow;
            ImageView imageView = (ImageView) Room.findChildViewById(inflate, R.id.arrow);
            if (imageView != null) {
                i = R.id.backButton;
                ImageView imageView2 = (ImageView) Room.findChildViewById(inflate, R.id.backButton);
                if (imageView2 != null) {
                    i = R.id.bottomButtonContainer;
                    ConstraintLayout constraintLayout = (ConstraintLayout) Room.findChildViewById(inflate, R.id.bottomButtonContainer);
                    if (constraintLayout != null) {
                        i = R.id.cardsViewPager;
                        ViewPager2 viewPager2 = (ViewPager2) Room.findChildViewById(inflate, R.id.cardsViewPager);
                        if (viewPager2 != null) {
                            i = R.id.nextButton;
                            ImageView imageView3 = (ImageView) Room.findChildViewById(inflate, R.id.nextButton);
                            if (imageView3 != null) {
                                i = R.id.suggestedEditsCardsCoordinator;
                                if (((CoordinatorLayout) Room.findChildViewById(inflate, R.id.suggestedEditsCardsCoordinator)) != null) {
                                    i = R.id.toolbar;
                                    MaterialToolbar materialToolbar = (MaterialToolbar) Room.findChildViewById(inflate, R.id.toolbar);
                                    if (materialToolbar != null) {
                                        i = R.id.wikiFromLanguageSpinner;
                                        Spinner spinner = (Spinner) Room.findChildViewById(inflate, R.id.wikiFromLanguageSpinner);
                                        if (spinner != null) {
                                            i = R.id.wikiLanguageDropdownContainer;
                                            LinearLayout linearLayout = (LinearLayout) Room.findChildViewById(inflate, R.id.wikiLanguageDropdownContainer);
                                            if (linearLayout != null) {
                                                i = R.id.wikiToLanguageSpinner;
                                                Spinner spinner2 = (Spinner) Room.findChildViewById(inflate, R.id.wikiToLanguageSpinner);
                                                if (spinner2 != null) {
                                                    this._binding = new ActivityLoginBinding((FrameLayout) inflate, materialButton, imageView, imageView2, constraintLayout, viewPager2, imageView3, materialToolbar, spinner, linearLayout, spinner2);
                                                    AppCompatActivity requireActivity = requireActivity();
                                                    ActivityLoginBinding activityLoginBinding = this._binding;
                                                    activityLoginBinding.getClass();
                                                    requireActivity.setSupportActionBar((MaterialToolbar) activityLoginBinding.toolbar);
                                                    ContextsKt supportActionBar = requireActivity.getSupportActionBar();
                                                    if (supportActionBar != null) {
                                                        supportActionBar.setDisplayHomeAsUpEnabled(true);
                                                    }
                                                    ContextsKt supportActionBar2 = requireActivity.getSupportActionBar();
                                                    if (supportActionBar2 != null) {
                                                        Serializable serializableExtra = requireActivity.getIntent().getSerializableExtra("intentAction");
                                                        serializableExtra.getClass();
                                                        int i2 = WhenMappings.$EnumSwitchMapping$0[((DescriptionEditActivity.Action) serializableExtra).ordinal()];
                                                        if (i2 == 1) {
                                                            string = getString(R.string.suggested_edits_tag_images);
                                                            string.getClass();
                                                        } else if (i2 == 2 || i2 == 3) {
                                                            string = getString(R.string.suggested_edits_caption_images);
                                                            string.getClass();
                                                        } else if (i2 == 4) {
                                                            string = "";
                                                        } else if (i2 != 5) {
                                                            string = getString(R.string.suggested_edits_describe_articles);
                                                            string.getClass();
                                                        } else {
                                                            string = getString(R.string.suggested_edits_edit_patrol);
                                                            string.getClass();
                                                        }
                                                        supportActionBar2.setTitle(string);
                                                    }
                                                    ActivityLoginBinding activityLoginBinding2 = this._binding;
                                                    activityLoginBinding2.getClass();
                                                    FrameLayout frameLayout = (FrameLayout) activityLoginBinding2.captchaContainer;
                                                    frameLayout.getClass();
                                                    return frameLayout;
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m$3("Missing required view with ID: ".concat(inflate.getResources().getResourceName(i)));
        return null;
    }

    @Override // androidx.fragment.app.Fragment
    public final void onDestroyView() {
        ActivityLoginBinding activityLoginBinding = this._binding;
        activityLoginBinding.getClass();
        ((ArrayList) ((ViewPager2) activityLoginBinding.loginButton).mExternalPageChangeCallbacks.this$0).remove(this.viewPagerListener);
        ActivityLoginBinding activityLoginBinding2 = this._binding;
        activityLoginBinding2.getClass();
        ((ViewPager2) activityLoginBinding2.loginButton).setAdapter(null);
        this._binding = null;
        this.mCalled = true;
    }

    @Override // androidx.core.view.MenuProvider
    public final boolean onMenuItemSelected(MenuItem menuItem) {
        menuItem.getClass();
        if (menuItem.getItemId() != R.id.menu_help) {
            return false;
        }
        if (WhenMappings.$EnumSwitchMapping$0[getViewModel().action.ordinal()] == 1) {
            Context requireContext = requireContext();
            String string = requireContext.getString(R.string.suggested_edits_image_tags_help_url);
            string.getClass();
            Uri parse = Uri.parse(string);
            parse.getClass();
            UriUtil.visitInExternalBrowser(requireContext, parse);
        } else if ((getViewModel().action == DescriptionEditActivity.Action.ADD_DESCRIPTION && Intrinsics.areEqual(getViewModel().langFromCode, "en")) || (getViewModel().action == DescriptionEditActivity.Action.TRANSLATE_DESCRIPTION && Intrinsics.areEqual(getViewModel().langToCode, "en"))) {
            Context requireContext2 = requireContext();
            String string2 = requireContext2.getString(R.string.short_description_help_url_en);
            string2.getClass();
            Uri parse2 = Uri.parse(string2);
            parse2.getClass();
            UriUtil.visitInExternalBrowser(requireContext2, parse2);
        } else {
            Context requireContext3 = requireContext();
            String string3 = requireContext3.getString(R.string.android_app_edit_help_url);
            string3.getClass();
            Uri parse3 = Uri.parse(string3);
            parse3.getClass();
            UriUtil.visitInExternalBrowser(requireContext3, parse3);
        }
        topBaseChild();
        return true;
    }

    public final void onSelectPage() {
        if ((getViewModel().action == DescriptionEditActivity.Action.ADD_IMAGE_TAGS || getViewModel().action == DescriptionEditActivity.Action.VANDALISM_PATROL) && topBaseChild() != null) {
            SuggestedEditsItemFragment suggestedEditsItemFragment = topBaseChild();
            if (suggestedEditsItemFragment != null) {
                suggestedEditsItemFragment.publish();
                return;
            }
            return;
        }
        if (getViewModel().action == DescriptionEditActivity.Action.IMAGE_RECOMMENDATIONS) {
            SuggestedEditsItemFragment suggestedEditsItemFragment2 = topBaseChild();
            if (suggestedEditsItemFragment2 != null) {
                suggestedEditsItemFragment2.publish();
                return;
            }
            return;
        }
        if (getTopTitle() != null) {
            int i = DescriptionEditActivity.$r8$clinit;
            Context requireContext = requireContext();
            PageTitle topTitle = getTopTitle();
            topTitle.getClass();
            SuggestedEditsCardsItemFragment suggestedEditsCardsItemFragment = topChild();
            PageSummaryForEdit pageSummaryForEdit = suggestedEditsCardsItemFragment != null ? suggestedEditsCardsItemFragment.sourceSummaryForEdit : null;
            SuggestedEditsCardsItemFragment suggestedEditsCardsItemFragment2 = topChild();
            startActivityForResult(UriUtil.newIntent(requireContext, topTitle, pageSummaryForEdit, suggestedEditsCardsItemFragment2 != null ? suggestedEditsCardsItemFragment2.targetSummaryForEdit : null, getViewModel().action, Constants.InvokeSource.SUGGESTED_EDITS), 55, null);
        }
    }

    @Override // androidx.fragment.app.Fragment
    public final void onViewCreated(View view, Bundle bundle) {
        view.getClass();
        requireActivity().addMenuProvider(this, getViewLifecycleOwner(), Lifecycle$State.RESUMED);
        ActivityLoginBinding activityLoginBinding = this._binding;
        activityLoginBinding.getClass();
        int i = 0;
        ((LinearLayout) activityLoginBinding.loginPrimaryContainer).setVisibility((((ArrayList) this.app.getLanguageState().getAppLanguageCodes()).size() <= 1 || !(getViewModel().action == DescriptionEditActivity.Action.TRANSLATE_DESCRIPTION || getViewModel().action == DescriptionEditActivity.Action.TRANSLATE_CAPTION)) ? 8 : 0);
        ActivityLoginBinding activityLoginBinding2 = this._binding;
        activityLoginBinding2.getClass();
        ((ViewPager2) activityLoginBinding2.loginButton).setOffscreenPageLimit(2);
        ActivityLoginBinding activityLoginBinding3 = this._binding;
        activityLoginBinding3.getClass();
        ((ViewPager2) activityLoginBinding3.loginButton).registerOnPageChangeCallback(this.viewPagerListener);
        resetViewPagerItemAdapter();
        DescriptionEditActivity.Action action = getViewModel().action;
        DescriptionEditActivity.Action action2 = DescriptionEditActivity.Action.IMAGE_RECOMMENDATIONS;
        if (action == action2) {
            ActivityLoginBinding activityLoginBinding4 = this._binding;
            activityLoginBinding4.getClass();
            ((ViewPager2) activityLoginBinding4.loginButton).setUserInputEnabled(false);
        }
        ActivityLoginBinding activityLoginBinding5 = this._binding;
        activityLoginBinding5.getClass();
        ((ImageView) activityLoginBinding5.loginPasswordInput).setOnClickListener(new SuggestedEditsCardsFragment$$ExternalSyntheticLambda0(this, 0));
        ActivityLoginBinding activityLoginBinding6 = this._binding;
        activityLoginBinding6.getClass();
        ((ImageView) activityLoginBinding6.loginCreateAccountButton).setOnClickListener(new SuggestedEditsCardsFragment$$ExternalSyntheticLambda0(this, 1));
        AwaitKt.launch$default(ViewModelKt.getLifecycleScope(this), null, null, new SuggestedEditsCardsFragment$onViewCreated$3(this, null, i), 3);
        updateBackButton(0);
        ActivityLoginBinding activityLoginBinding7 = this._binding;
        activityLoginBinding7.getClass();
        ((MaterialButton) activityLoginBinding7.footerContainer).setOnClickListener(new SuggestedEditsCardsFragment$$ExternalSyntheticLambda0(this, 2));
        updateActionButton();
        if (getViewModel().action == DescriptionEditActivity.Action.ADD_IMAGE_TAGS) {
            Prefs prefs = Prefs.INSTANCE;
            if (Prefs.getShowImageTagsOnboarding()) {
                PrefsIoUtil.setBoolean(R.string.preference_key_image_tags_onboarding_shown, false);
                int i2 = SuggestedEditsImageTagsOnboardingActivity.$r8$clinit;
                startActivity(new Intent(requireContext(), (Class<?>) SuggestedEditsImageTagsOnboardingActivity.class), null);
                return;
            }
        }
        if (getViewModel().action == action2) {
            Prefs prefs2 = Prefs.INSTANCE;
            if (Prefs.getSuggestedEditsImageRecsOnboardingShown()) {
                return;
            }
            int i3 = SuggestedEditsImageRecsOnboardingActivity.$r8$clinit;
            startActivity(new Intent(requireActivity(), (Class<?>) SuggestedEditsImageRecsOnboardingActivity.class), null);
        }
    }

    public final void resetViewPagerItemAdapter() {
        if (this.resettingViewPager) {
            return;
        }
        this.resettingViewPager = true;
        ActivityLoginBinding activityLoginBinding = this._binding;
        activityLoginBinding.getClass();
        ((ViewPager2) activityLoginBinding.loginButton).postDelayed(new MainFragment$$ExternalSyntheticLambda5(15, this), 250L);
    }

    public final void swapLanguageSpinnerSelection(boolean z) {
        if (this.swappingLanguageSpinners) {
            return;
        }
        this.swappingLanguageSpinners = true;
        List appLanguageCodes = this.app.getLanguageState().getAppLanguageCodes();
        SuggestedEditsCardsViewModel viewModel = getViewModel();
        int indexOf = ((ArrayList) appLanguageCodes).indexOf(z ? viewModel.langFromCode : viewModel.langToCode);
        ActivityLoginBinding activityLoginBinding = this._binding;
        if (z) {
            activityLoginBinding.getClass();
            ((Spinner) activityLoginBinding.viewProgressBar).setSelection(indexOf);
        } else {
            activityLoginBinding.getClass();
            ((Spinner) activityLoginBinding.viewLoginError).setSelection(indexOf);
        }
        this.swappingLanguageSpinners = false;
    }

    public final SuggestedEditsItemFragment topBaseChild() {
        Fragment fragment;
        ActivityLoginBinding activityLoginBinding = this._binding;
        activityLoginBinding.getClass();
        ViewPagerAdapter viewPagerAdapter = (ViewPagerAdapter) ((ViewPager2) activityLoginBinding.loginButton).getAdapter();
        if (viewPagerAdapter != null) {
            ActivityLoginBinding activityLoginBinding2 = this._binding;
            activityLoginBinding2.getClass();
            fragment = viewPagerAdapter.getFragmentAt(((ViewPager2) activityLoginBinding2.loginButton).getCurrentItem());
        } else {
            fragment = null;
        }
        return (SuggestedEditsItemFragment) fragment;
    }

    public final SuggestedEditsCardsItemFragment topChild() {
        Fragment fragment;
        ActivityLoginBinding activityLoginBinding = this._binding;
        activityLoginBinding.getClass();
        ViewPagerAdapter viewPagerAdapter = (ViewPagerAdapter) ((ViewPager2) activityLoginBinding.loginButton).getAdapter();
        if (viewPagerAdapter != null) {
            ActivityLoginBinding activityLoginBinding2 = this._binding;
            activityLoginBinding2.getClass();
            fragment = viewPagerAdapter.getFragmentAt(((ViewPager2) activityLoginBinding2.loginButton).getCurrentItem());
        } else {
            fragment = null;
        }
        return (SuggestedEditsCardsItemFragment) fragment;
    }

    @Override // org.wikipedia.suggestededits.SuggestedEditsItemFragment.Callback
    public final void updateActionButton() {
        SuggestedEditsItemFragment suggestedEditsItemFragment = topBaseChild();
        if (suggestedEditsItemFragment != null) {
            if (suggestedEditsItemFragment instanceof SuggestedEditsCardsItemFragment) {
                SuggestedEditsCardsItemFragment suggestedEditsCardsItemFragment = (SuggestedEditsCardsItemFragment) suggestedEditsItemFragment;
                r2 = suggestedEditsCardsItemFragment.addedContribution.length() == 0;
                if (!r2) {
                    suggestedEditsCardsItemFragment.showAddedContributionView(suggestedEditsCardsItemFragment.addedContribution);
                }
            }
            ActivityLoginBinding activityLoginBinding = this._binding;
            activityLoginBinding.getClass();
            ((MaterialButton) activityLoginBinding.footerContainer).setIconResource(r2 ? R.drawable.ic_add_gray_white_24dp : R.drawable.ic_mode_edit_white_24dp);
            ActivityLoginBinding activityLoginBinding2 = this._binding;
            activityLoginBinding2.getClass();
            ((MaterialButton) activityLoginBinding2.footerContainer).setEnabled(suggestedEditsItemFragment.publishEnabled());
            ActivityLoginBinding activityLoginBinding3 = this._binding;
            activityLoginBinding3.getClass();
            ((MaterialButton) activityLoginBinding3.footerContainer).setAlpha(suggestedEditsItemFragment.publishEnabled() ? 1.0f : 0.5f);
        }
        ActivityLoginBinding activityLoginBinding4 = this._binding;
        activityLoginBinding4.getClass();
        ((ConstraintLayout) activityLoginBinding4.loginUsernameText).setVisibility(getViewModel().action == DescriptionEditActivity.Action.IMAGE_RECOMMENDATIONS ? 8 : 0);
        if (getViewModel().action == DescriptionEditActivity.Action.VANDALISM_PATROL) {
            ActivityLoginBinding activityLoginBinding5 = this._binding;
            activityLoginBinding5.getClass();
            ((ConstraintLayout) activityLoginBinding5.loginUsernameText).setVisibility(8);
            return;
        }
        if (getViewModel().action == DescriptionEditActivity.Action.ADD_IMAGE_TAGS) {
            ActivityLoginBinding activityLoginBinding6 = this._binding;
            activityLoginBinding6.getClass();
            boolean areEqual = Intrinsics.areEqual(((MaterialButton) activityLoginBinding6.footerContainer).getTag(), "landscape");
            ActivityLoginBinding activityLoginBinding7 = this._binding;
            if (areEqual) {
                activityLoginBinding7.getClass();
                ((MaterialButton) activityLoginBinding7.footerContainer).setText((CharSequence) null);
                ActivityLoginBinding activityLoginBinding8 = this._binding;
                activityLoginBinding8.getClass();
                ((MaterialButton) activityLoginBinding8.footerContainer).setIconResource(R.drawable.ic_check_black_24dp);
                return;
            }
            activityLoginBinding7.getClass();
            ((MaterialButton) activityLoginBinding7.footerContainer).setText(getString(R.string.description_edit_save));
            ActivityLoginBinding activityLoginBinding9 = this._binding;
            activityLoginBinding9.getClass();
            ((MaterialButton) activityLoginBinding9.footerContainer).setIcon(null);
            return;
        }
        if (getViewModel().action == DescriptionEditActivity.Action.TRANSLATE_DESCRIPTION || getViewModel().action == DescriptionEditActivity.Action.TRANSLATE_CAPTION) {
            ActivityLoginBinding activityLoginBinding10 = this._binding;
            activityLoginBinding10.getClass();
            ((MaterialButton) activityLoginBinding10.footerContainer).setText(getString(r2 ? R.string.suggested_edits_add_translation_button : R.string.suggested_edits_edit_translation_button));
            return;
        }
        ActivityLoginBinding activityLoginBinding11 = this._binding;
        activityLoginBinding11.getClass();
        if (Intrinsics.areEqual(((MaterialButton) activityLoginBinding11.footerContainer).getTag(), "portrait")) {
            DescriptionEditActivity.Action action = getViewModel().action;
            DescriptionEditActivity.Action action2 = DescriptionEditActivity.Action.ADD_CAPTION;
            ActivityLoginBinding activityLoginBinding12 = this._binding;
            if (action == action2) {
                activityLoginBinding12.getClass();
                ((MaterialButton) activityLoginBinding12.footerContainer).setText(getString(r2 ? R.string.suggested_edits_add_caption_button : R.string.suggested_edits_edit_caption_button));
            } else {
                activityLoginBinding12.getClass();
                ((MaterialButton) activityLoginBinding12.footerContainer).setText(getString(r2 ? R.string.suggested_edits_add_description_button : R.string.suggested_edits_edit_description_button));
            }
        }
    }

    public final void updateBackButton(int i) {
        ActivityLoginBinding activityLoginBinding = this._binding;
        activityLoginBinding.getClass();
        ((ImageView) activityLoginBinding.loginPasswordInput).setClickable(i != 0);
        ActivityLoginBinding activityLoginBinding2 = this._binding;
        activityLoginBinding2.getClass();
        ((ImageView) activityLoginBinding2.loginPasswordInput).setAlpha(i == 0 ? 0.31f : 1.0f);
    }

    @Override // androidx.core.view.MenuProvider
    public final void onMenuClosed(Menu menu) {
    }

    @Override // androidx.core.view.MenuProvider
    public final void onPrepareMenu(Menu menu) {
    }
}
