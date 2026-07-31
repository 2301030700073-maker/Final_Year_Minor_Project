package org.wikipedia.suggestededits;

import android.content.Context;
import android.os.Bundle;
import android.util.TypedValue;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.core.view.MenuProvider;
import androidx.core.widget.NestedScrollView;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager$FragmentIntentSenderContract;
import androidx.lifecycle.Lifecycle$State;
import androidx.lifecycle.ViewModelKt;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.room.Room;
import coil3.size.ViewSizeResolver$CC;
import coil3.util.ContextsKt;
import com.caverock.androidsvg.SVGAndroidRenderer;
import com.google.android.material.button.MaterialButton;
import com.google.android.material.progressindicator.LinearProgressIndicator;
import j$.time.LocalDate;
import j$.time.LocalDateTime;
import j$.time.ZoneId;
import j$.util.DateRetargetClass;
import j$.util.concurrent.ConcurrentHashMap;
import java.util.ArrayList;
import java.util.Date;
import kotlin.Lazy;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.text.RegexKt;
import kotlin.text.StringsKt;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlinx.coroutines.AwaitKt;
import kotlinx.coroutines.StandaloneCoroutine;
import kotlinx.coroutines.flow.StateFlowImpl;
import okhttp3.Headers;
import okhttp3.Request;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.jsoup.Jsoup;
import org.wikipedia.R;
import org.wikipedia.WikipediaApp;
import org.wikipedia.analytics.eventplatform.WikiGamesEvent;
import org.wikipedia.databinding.FragmentNewsBinding;
import org.wikipedia.donate.DonateDialog$special$$inlined$viewModels$default$5;
import org.wikipedia.feed.news.NewsFragment;
import org.wikipedia.media.AvPlayer;
import org.wikipedia.places.PlacesFragment$special$$inlined$viewModels$default$3;
import org.wikipedia.readinglist.ReadingListFragment;
import org.wikipedia.settings.Prefs;
import org.wikipedia.settings.PrefsIoUtil;
import org.wikipedia.suggestededits.SuggestedEditsTasksFragmentViewModel;
import org.wikipedia.util.DateUtil;
import org.wikipedia.util.Resource;
import org.wikipedia.views.MessageCardView;
import org.wikipedia.views.NotificationButtonView;
import org.wikipedia.views.WikiErrorView;
import org.wikipedia.views.WikiSwipeRefreshLayout;
import org.wikipedia.watchlist.WatchlistFragment$special$$inlined$viewModels$default$1;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0007\u0018\u00002\u00020\u00012\u00020\u0002:\u0002\u0005\u0006B\u0007¢\u0006\u0004\b\u0003\u0010\u0004¨\u0006\u0007"}, d2 = {"Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;", "Landroidx/fragment/app/Fragment;", "Landroidx/core/view/MenuProvider;", "<init>", "()V", "org/wikipedia/media/AvPlayer", "RecyclerAdapter", "app"}, k = 1, mv = {2, 3, 0}, xi = 48)
/* loaded from: classes.dex */
public final class SuggestedEditsTasksFragment extends Fragment implements MenuProvider {
    public SVGAndroidRenderer _binding;
    public SuggestedEditsTask addDescriptionsTask;
    public SuggestedEditsTask addImageCaptionsTask;
    public SuggestedEditsTask addImageTagsTask;
    public final AvPlayer callback;
    public final ArrayList displayedTasks;
    public SuggestedEditsTask imageRecommendationsTask;
    public final SuggestedEditsTasksFragment$$ExternalSyntheticLambda1 learnMoreClickListener;
    public NotificationButtonView notificationButtonView;
    public final Fragment.AnonymousClass10 requestAddImageTags;
    public final Fragment.AnonymousClass10 requestAddLanguage;
    public final Fragment.AnonymousClass10 requestLogin;
    public SuggestedEditsTask vandalismPatrolTask;
    public final Request.Builder viewModel$delegate;

    public SuggestedEditsTasksFragment() {
        Lazy lazy = ContextsKt.lazy(LazyThreadSafetyMode.NONE, new WatchlistFragment$special$$inlined$viewModels$default$1(14, new WatchlistFragment$special$$inlined$viewModels$default$1(13, this)));
        this.viewModel$delegate = new Request.Builder(Reflection.factory.getOrCreateKotlinClass(SuggestedEditsTasksFragmentViewModel.class), new PlacesFragment$special$$inlined$viewModels$default$3(lazy, 22), new DonateDialog$special$$inlined$viewModels$default$5(this, lazy, 21), new PlacesFragment$special$$inlined$viewModels$default$3(lazy, 23));
        this.displayedTasks = new ArrayList();
        this.callback = new AvPlayer(23, this);
        int i = 3;
        this.requestAddLanguage = (Fragment.AnonymousClass10) registerForActivityResult(new SuggestedEditsTasksFragment$$ExternalSyntheticLambda0(this, 1), new FragmentManager$FragmentIntentSenderContract(i));
        this.requestAddImageTags = (Fragment.AnonymousClass10) registerForActivityResult(new SuggestedEditsTasksFragment$$ExternalSyntheticLambda0(this, 2), new FragmentManager$FragmentIntentSenderContract(i));
        this.requestLogin = (Fragment.AnonymousClass10) registerForActivityResult(new SuggestedEditsTasksFragment$$ExternalSyntheticLambda0(this, i), new FragmentManager$FragmentIntentSenderContract(i));
        this.learnMoreClickListener = new SuggestedEditsTasksFragment$$ExternalSyntheticLambda1(this, 4);
    }

    public final void clearContents(boolean z) {
        SVGAndroidRenderer sVGAndroidRenderer = this._binding;
        sVGAndroidRenderer.getClass();
        ((NestedScrollView) sVGAndroidRenderer.parentStack).setVisibility(0);
        SVGAndroidRenderer sVGAndroidRenderer2 = this._binding;
        sVGAndroidRenderer2.getClass();
        ((WikiSwipeRefreshLayout) sVGAndroidRenderer2.matrixStack).setRefreshing(false);
        SVGAndroidRenderer sVGAndroidRenderer3 = this._binding;
        sVGAndroidRenderer3.getClass();
        ((LinearProgressIndicator) sVGAndroidRenderer3.stateStack).setVisibility(8);
        SVGAndroidRenderer sVGAndroidRenderer4 = this._binding;
        sVGAndroidRenderer4.getClass();
        ((LinearLayout) ((FragmentNewsBinding) sVGAndroidRenderer4.document).storyTextView).setVisibility(8);
        SVGAndroidRenderer sVGAndroidRenderer5 = this._binding;
        sVGAndroidRenderer5.getClass();
        ((WikiErrorView) sVGAndroidRenderer5.canvas).setVisibility(8);
        SVGAndroidRenderer sVGAndroidRenderer6 = this._binding;
        sVGAndroidRenderer6.getClass();
        ((MessageCardView) sVGAndroidRenderer6.state).setVisibility(8);
        if (z) {
            SVGAndroidRenderer sVGAndroidRenderer7 = this._binding;
            sVGAndroidRenderer7.getClass();
            ((NestedScrollView) sVGAndroidRenderer7.parentStack).scrollTo(0, 0);
        }
        SVGAndroidRenderer sVGAndroidRenderer8 = this._binding;
        sVGAndroidRenderer8.getClass();
        WikiSwipeRefreshLayout wikiSwipeRefreshLayout = (WikiSwipeRefreshLayout) sVGAndroidRenderer8.matrixStack;
        Context requireContext = requireContext();
        TypedValue typedValue = new TypedValue();
        if (!requireContext.getTheme().resolveAttribute(R.attr.paper_color, typedValue, true)) {
            typedValue = null;
        }
        if (typedValue != null) {
            wikiSwipeRefreshLayout.setBackgroundColor(typedValue.data);
        } else {
            _UtilJvmKt$$ExternalSyntheticLambda0.m("Attribute not found; ID=2130969831");
        }
    }

    public final SuggestedEditsTasksFragmentViewModel getViewModel() {
        return (SuggestedEditsTasksFragmentViewModel) this.viewModel$delegate.getValue();
    }

    @Override // androidx.core.view.MenuProvider
    public final void onCreateMenu(Menu menu, MenuInflater menuInflater) {
        menu.getClass();
        menuInflater.getClass();
        menuInflater.inflate(R.menu.menu_suggested_edits_tasks, menu);
    }

    @Override // androidx.fragment.app.Fragment
    public final View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        layoutInflater.getClass();
        View inflate = layoutInflater.inflate(R.layout.fragment_suggested_edits_tasks, viewGroup, false);
        int i = R.id.errorView;
        WikiErrorView wikiErrorView = (WikiErrorView) Room.findChildViewById(inflate, R.id.errorView);
        if (wikiErrorView != null) {
            i = R.id.layoutTasksContainer;
            View findChildViewById = Room.findChildViewById(inflate, R.id.layoutTasksContainer);
            if (findChildViewById != null) {
                int i2 = R.id.learnMoreButton;
                MaterialButton materialButton = (MaterialButton) Room.findChildViewById(findChildViewById, R.id.learnMoreButton);
                if (materialButton != null) {
                    i2 = R.id.learnMoreCard;
                    LinearLayout linearLayout = (LinearLayout) Room.findChildViewById(findChildViewById, R.id.learnMoreCard);
                    if (linearLayout != null) {
                        i2 = R.id.showIPBlockedMessage;
                        TextView textView = (TextView) Room.findChildViewById(findChildViewById, R.id.showIPBlockedMessage);
                        if (textView != null) {
                            i2 = R.id.showOnboardingMessage;
                            TextView textView2 = (TextView) Room.findChildViewById(findChildViewById, R.id.showOnboardingMessage);
                            if (textView2 != null) {
                                LinearLayout linearLayout2 = (LinearLayout) findChildViewById;
                                i2 = R.id.tasksRecyclerView;
                                RecyclerView recyclerView = (RecyclerView) Room.findChildViewById(findChildViewById, R.id.tasksRecyclerView);
                                if (recyclerView != null) {
                                    i2 = R.id.whatIsBodyText;
                                    TextView textView3 = (TextView) Room.findChildViewById(findChildViewById, R.id.whatIsBodyText);
                                    if (textView3 != null) {
                                        i2 = R.id.whatIsTitleText;
                                        TextView textView4 = (TextView) Room.findChildViewById(findChildViewById, R.id.whatIsTitleText);
                                        if (textView4 != null) {
                                            FragmentNewsBinding fragmentNewsBinding = new FragmentNewsBinding(materialButton, linearLayout, textView, textView2, linearLayout2, recyclerView, textView3, textView4);
                                            i = R.id.messageCard;
                                            MessageCardView messageCardView = (MessageCardView) Room.findChildViewById(inflate, R.id.messageCard);
                                            if (messageCardView != null) {
                                                i = R.id.progressBar;
                                                LinearProgressIndicator linearProgressIndicator = (LinearProgressIndicator) Room.findChildViewById(inflate, R.id.progressBar);
                                                if (linearProgressIndicator != null) {
                                                    i = R.id.suggestedEditsScrollView;
                                                    NestedScrollView nestedScrollView = (NestedScrollView) Room.findChildViewById(inflate, R.id.suggestedEditsScrollView);
                                                    if (nestedScrollView != null) {
                                                        WikiSwipeRefreshLayout wikiSwipeRefreshLayout = (WikiSwipeRefreshLayout) inflate;
                                                        this._binding = new SVGAndroidRenderer(wikiSwipeRefreshLayout, wikiErrorView, fragmentNewsBinding, messageCardView, linearProgressIndicator, nestedScrollView, wikiSwipeRefreshLayout);
                                                        wikiSwipeRefreshLayout.getClass();
                                                        return wikiSwipeRefreshLayout;
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
                _UtilJvmKt$$ExternalSyntheticLambda0.m$3("Missing required view with ID: ".concat(findChildViewById.getResources().getResourceName(i2)));
                return null;
            }
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m$3("Missing required view with ID: ".concat(inflate.getResources().getResourceName(i)));
        return null;
    }

    @Override // androidx.fragment.app.Fragment
    public final void onDestroyView() {
        SVGAndroidRenderer sVGAndroidRenderer = this._binding;
        sVGAndroidRenderer.getClass();
        ((RecyclerView) ((FragmentNewsBinding) sVGAndroidRenderer.document).newsStoryItemsRecyclerview).setAdapter(null);
        this._binding = null;
        this.mCalled = true;
    }

    @Override // androidx.core.view.MenuProvider
    public final boolean onMenuItemSelected(MenuItem menuItem) {
        menuItem.getClass();
        return false;
    }

    @Override // androidx.core.view.MenuProvider
    public final void onPrepareMenu(Menu menu) {
        menu.getClass();
        NotificationButtonView notificationButtonView = this.notificationButtonView;
        if (notificationButtonView != null) {
            MenuItem findItem = menu.findItem(R.id.menu_notifications);
            if (Headers.Companion.isLoggedIn()) {
                findItem.setVisible(true);
                Prefs prefs = Prefs.INSTANCE;
                notificationButtonView.setUnreadCount(Prefs.getNotificationUnreadCount());
                notificationButtonView.setOnClickListener(new SuggestedEditsTasksFragment$$ExternalSyntheticLambda1(this, 7));
                notificationButtonView.setContentDescription(getString(R.string.notifications_activity_title));
                findItem.setActionView(notificationButtonView);
                findItem.expandActionView();
                View view = new View[]{notificationButtonView}[0];
                RegexKt.setTooltipText(view, view.getContentDescription());
            } else {
                findItem.setVisible(false);
            }
            updateNotificationDot$1(false);
        }
    }

    @Override // androidx.fragment.app.Fragment
    public final void onResume() {
        this.mCalled = true;
        refreshContents$1();
    }

    @Override // androidx.fragment.app.Fragment
    public final void onViewCreated(View view, Bundle bundle) {
        view.getClass();
        SVGAndroidRenderer sVGAndroidRenderer = this._binding;
        sVGAndroidRenderer.getClass();
        FragmentNewsBinding fragmentNewsBinding = (FragmentNewsBinding) sVGAndroidRenderer.document;
        TextView textView = (TextView) fragmentNewsBinding.headerImageView;
        TextView textView2 = (TextView) fragmentNewsBinding.gradientView;
        int i = 0;
        int i2 = 3;
        int i3 = 1;
        int i4 = 2;
        boolean z = StringsKt.contains("org.wikipedia", "beta", false) ? true : StringsKt.contains("org.wikipedia", "alpha", false) ? 2 : StringsKt.contains("org.wikipedia", "dev", false) ? 3 : false;
        if (!z || z) {
            textView2.setVisibility(8);
            textView.setVisibility(8);
        }
        textView2.setOnClickListener(new SuggestedEditsTasksFragment$$ExternalSyntheticLambda1(this, i3));
        textView.setOnClickListener(new SuggestedEditsTasksFragment$$ExternalSyntheticLambda1(this, i4));
        this.notificationButtonView = new NotificationButtonView(requireContext(), null);
        requireActivity().addMenuProvider(this, getViewLifecycleOwner(), Lifecycle$State.RESUMED);
        SVGAndroidRenderer sVGAndroidRenderer2 = this._binding;
        sVGAndroidRenderer2.getClass();
        ((TextView) ((FragmentNewsBinding) sVGAndroidRenderer2.document).toolbarContainer).setText(getString(R.string.edits_screen_what_is_title));
        SVGAndroidRenderer sVGAndroidRenderer3 = this._binding;
        sVGAndroidRenderer3.getClass();
        ((TextView) ((FragmentNewsBinding) sVGAndroidRenderer3.document).toolbar).setText(getString(R.string.edits_screen_what_is_body));
        SVGAndroidRenderer sVGAndroidRenderer4 = this._binding;
        sVGAndroidRenderer4.getClass();
        FragmentNewsBinding fragmentNewsBinding2 = (FragmentNewsBinding) sVGAndroidRenderer4.document;
        RecyclerView recyclerView = (RecyclerView) fragmentNewsBinding2.newsStoryItemsRecyclerview;
        LinearLayout linearLayout = (LinearLayout) fragmentNewsBinding2.appBarLayout;
        SuggestedEditsTasksFragment$$ExternalSyntheticLambda1 suggestedEditsTasksFragment$$ExternalSyntheticLambda1 = this.learnMoreClickListener;
        linearLayout.setOnClickListener(suggestedEditsTasksFragment$$ExternalSyntheticLambda1);
        ((MaterialButton) fragmentNewsBinding2.rootView).setOnClickListener(suggestedEditsTasksFragment$$ExternalSyntheticLambda1);
        SVGAndroidRenderer sVGAndroidRenderer5 = this._binding;
        sVGAndroidRenderer5.getClass();
        ((WikiSwipeRefreshLayout) sVGAndroidRenderer5.matrixStack).setOnRefreshListener(new SuggestedEditsTasksFragment$$ExternalSyntheticLambda0(this, i));
        SVGAndroidRenderer sVGAndroidRenderer6 = this._binding;
        sVGAndroidRenderer6.getClass();
        ((WikiErrorView) sVGAndroidRenderer6.canvas).setRetryClickListener(new SuggestedEditsTasksFragment$$ExternalSyntheticLambda1(this, i));
        SVGAndroidRenderer sVGAndroidRenderer7 = this._binding;
        sVGAndroidRenderer7.getClass();
        ((WikiErrorView) sVGAndroidRenderer7.canvas).setLoginClickListener(new SuggestedEditsTasksFragment$$ExternalSyntheticLambda1(this, i2));
        recyclerView.setLayoutManager(new LinearLayoutManager(1));
        recyclerView.setAdapter(new NewsFragment.RecyclerAdapter(this, this.displayedTasks));
        ((LinearLayout) fragmentNewsBinding2.storyTextView).setVisibility(8);
        AwaitKt.launch$default(ViewModelKt.getLifecycleScope(getViewLifecycleOwner()), null, null, new SuggestedEditsTasksFragment$onViewCreated$4(this, null, i), 3);
    }

    public final void refreshContents$1() {
        requireActivity().invalidateOptionsMenu();
        SuggestedEditsTasksFragmentViewModel viewModel = getViewModel();
        StateFlowImpl stateFlowImpl = viewModel._uiState;
        Resource.Loading loading = new Resource.Loading();
        stateFlowImpl.getClass();
        stateFlowImpl.updateState(null, loading);
        viewModel.wikiSupportsImageRecommendations = false;
        if (!Headers.Companion.isLoggedIn() || Headers.Companion.isTemporaryAccount()) {
            stateFlowImpl.updateState(null, new SuggestedEditsTasksFragmentViewModel.RequireLogin());
            return;
        }
        StandaloneCoroutine standaloneCoroutine = viewModel.clientJob;
        if (standaloneCoroutine != null) {
            standaloneCoroutine.cancel(null);
        }
        viewModel.clientJob = AwaitKt.launch$default(ViewModelKt.getViewModelScope(viewModel), viewModel.handler, null, new SuggestedEditsTasksFragmentViewModel$fetchData$1(viewModel, null), 2);
    }

    public final void setFinalUIState() {
        String str;
        String str2;
        String str3;
        String str4;
        String str5;
        WikiGamesEvent.submit$default("edit_home", "impression", Integer.valueOf(getViewModel().totalContributions), null, null, null, null, null, null, null, null, null, 16372);
        clearContents(false);
        WikipediaApp wikipediaApp = WikipediaApp.instance;
        if (!StringsKt__StringsJVMKt.startsWith(Jsoup.getInstance().getAppOrSystemLanguageCode(), "test", false)) {
            Date maybePauseAndGetEndDate = ReadingListFragment.MultiSelectCallback.maybePauseAndGetEndDate();
            if (getViewModel().totalContributions < 3 && Intrinsics.areEqual(Jsoup.getInstance().getAppOrSystemLanguageCode(), "en")) {
                clearContents(true);
                SVGAndroidRenderer sVGAndroidRenderer = this._binding;
                sVGAndroidRenderer.getClass();
                MessageCardView messageCardView = (MessageCardView) sVGAndroidRenderer.state;
                String string = getString(R.string.suggested_edits_gate_message, Headers.Companion.getUserName());
                string.getClass();
                messageCardView.setDisabled(string);
                SVGAndroidRenderer sVGAndroidRenderer2 = this._binding;
                sVGAndroidRenderer2.getClass();
                ((MessageCardView) sVGAndroidRenderer2.state).setPositiveButton(R.string.suggested_edits_learn_more, new SuggestedEditsTasksFragment$$ExternalSyntheticLambda1(this, 6));
                SVGAndroidRenderer sVGAndroidRenderer3 = this._binding;
                sVGAndroidRenderer3.getClass();
                ((MessageCardView) sVGAndroidRenderer3.state).setVisibility(0);
                return;
            }
            if ((ReadingListFragment.MultiSelectCallback.totalEdits <= 100 ? ReadingListFragment.MultiSelectCallback.totalReverts : (int) Math.ceil((ReadingListFragment.MultiSelectCallback.totalReverts / r6) * 100.0f)) > 7) {
                clearContents(true);
                SVGAndroidRenderer sVGAndroidRenderer4 = this._binding;
                sVGAndroidRenderer4.getClass();
                MessageCardView messageCardView2 = (MessageCardView) sVGAndroidRenderer4.state;
                String string2 = getString(R.string.suggested_edits_disabled_message, Headers.Companion.getUserName());
                string2.getClass();
                messageCardView2.setDisabled(string2);
                SVGAndroidRenderer sVGAndroidRenderer5 = this._binding;
                sVGAndroidRenderer5.getClass();
                ((MessageCardView) sVGAndroidRenderer5.state).setVisibility(0);
                return;
            }
            if (maybePauseAndGetEndDate != null) {
                clearContents(true);
                LocalDate localDate = LocalDateTime.ofInstant(DateRetargetClass.toInstant(maybePauseAndGetEndDate), ZoneId.systemDefault()).toLocalDate();
                SVGAndroidRenderer sVGAndroidRenderer6 = this._binding;
                sVGAndroidRenderer6.getClass();
                MessageCardView messageCardView3 = (MessageCardView) sVGAndroidRenderer6.state;
                ConcurrentHashMap concurrentHashMap = DateUtil.DATE_FORMATS;
                localDate.getClass();
                String string3 = getString(R.string.suggested_edits_paused_message, DateUtil.getShortDateString(localDate), Headers.Companion.getUserName());
                string3.getClass();
                messageCardView3.setPaused(string3);
                SVGAndroidRenderer sVGAndroidRenderer7 = this._binding;
                sVGAndroidRenderer7.getClass();
                ((MessageCardView) sVGAndroidRenderer7.state).setVisibility(0);
                return;
            }
            SVGAndroidRenderer sVGAndroidRenderer8 = this._binding;
            sVGAndroidRenderer8.getClass();
            ((MessageCardView) sVGAndroidRenderer8.state).setVisibility(8);
        }
        ArrayList arrayList = this.displayedTasks;
        arrayList.clear();
        SuggestedEditsTask suggestedEditsTask = new SuggestedEditsTask();
        this.addImageTagsTask = suggestedEditsTask;
        suggestedEditsTask.title = getString(R.string.suggested_edits_image_tags);
        SuggestedEditsTask suggestedEditsTask2 = this.addImageTagsTask;
        if (suggestedEditsTask2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("addImageTagsTask");
            throw null;
        }
        suggestedEditsTask2.description = getString(R.string.suggested_edits_image_tags_task_detail);
        SuggestedEditsTask suggestedEditsTask3 = this.addImageTagsTask;
        if (suggestedEditsTask3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("addImageTagsTask");
            throw null;
        }
        suggestedEditsTask3.imageDrawable = R.drawable.ic_image_tag;
        suggestedEditsTask3.primaryAction = getString(R.string.suggested_edits_task_action_text_add);
        SuggestedEditsTask suggestedEditsTask4 = new SuggestedEditsTask();
        this.addImageCaptionsTask = suggestedEditsTask4;
        suggestedEditsTask4.title = getString(R.string.suggested_edits_image_captions);
        SuggestedEditsTask suggestedEditsTask5 = this.addImageCaptionsTask;
        if (suggestedEditsTask5 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("addImageCaptionsTask");
            throw null;
        }
        suggestedEditsTask5.description = getString(R.string.suggested_edits_image_captions_task_detail);
        SuggestedEditsTask suggestedEditsTask6 = this.addImageCaptionsTask;
        if (suggestedEditsTask6 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("addImageCaptionsTask");
            throw null;
        }
        suggestedEditsTask6.imageDrawable = R.drawable.ic_image_caption;
        suggestedEditsTask6.primaryAction = getString(R.string.suggested_edits_task_action_text_add);
        SuggestedEditsTask suggestedEditsTask7 = this.addImageCaptionsTask;
        if (suggestedEditsTask7 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("addImageCaptionsTask");
            throw null;
        }
        suggestedEditsTask7.secondaryAction = getString(R.string.suggested_edits_task_action_text_translate);
        SuggestedEditsTask suggestedEditsTask8 = new SuggestedEditsTask();
        this.addDescriptionsTask = suggestedEditsTask8;
        suggestedEditsTask8.title = getString(R.string.description_edit_tutorial_title_descriptions);
        SuggestedEditsTask suggestedEditsTask9 = this.addDescriptionsTask;
        if (suggestedEditsTask9 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("addDescriptionsTask");
            throw null;
        }
        suggestedEditsTask9.description = getString(R.string.suggested_edits_add_descriptions_task_detail);
        SuggestedEditsTask suggestedEditsTask10 = this.addDescriptionsTask;
        if (suggestedEditsTask10 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("addDescriptionsTask");
            throw null;
        }
        suggestedEditsTask10.imageDrawable = R.drawable.ic_article_ltr_ooui;
        suggestedEditsTask10.primaryAction = getString(R.string.suggested_edits_task_action_text_add);
        SuggestedEditsTask suggestedEditsTask11 = this.addDescriptionsTask;
        if (suggestedEditsTask11 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("addDescriptionsTask");
            throw null;
        }
        suggestedEditsTask11.secondaryAction = getString(R.string.suggested_edits_task_action_text_translate);
        SuggestedEditsTask suggestedEditsTask12 = new SuggestedEditsTask();
        this.imageRecommendationsTask = suggestedEditsTask12;
        suggestedEditsTask12.title = getString(R.string.suggested_edits_image_recommendations_task_title);
        SuggestedEditsTask suggestedEditsTask13 = this.imageRecommendationsTask;
        if (suggestedEditsTask13 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("imageRecommendationsTask");
            throw null;
        }
        suggestedEditsTask13.description = getString(R.string.suggested_edits_image_recommendations_task_detail);
        SuggestedEditsTask suggestedEditsTask14 = this.imageRecommendationsTask;
        if (suggestedEditsTask14 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("imageRecommendationsTask");
            throw null;
        }
        suggestedEditsTask14.imageDrawable = R.drawable.ic_add_image;
        suggestedEditsTask14.primaryAction = getString(R.string.suggested_edits_task_action_text_add);
        SuggestedEditsTask suggestedEditsTask15 = new SuggestedEditsTask();
        this.vandalismPatrolTask = suggestedEditsTask15;
        suggestedEditsTask15.title = getString(R.string.suggested_edits_edit_patrol);
        SuggestedEditsTask suggestedEditsTask16 = this.vandalismPatrolTask;
        if (suggestedEditsTask16 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("vandalismPatrolTask");
            throw null;
        }
        suggestedEditsTask16.description = getString(R.string.suggested_edits_edit_patrol_hint);
        SuggestedEditsTask suggestedEditsTask17 = this.vandalismPatrolTask;
        if (suggestedEditsTask17 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("vandalismPatrolTask");
            throw null;
        }
        suggestedEditsTask17.primaryAction = getString(R.string.suggested_edits_edit_patrol_review);
        SuggestedEditsTask suggestedEditsTask18 = this.vandalismPatrolTask;
        if (suggestedEditsTask18 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("vandalismPatrolTask");
            throw null;
        }
        suggestedEditsTask18.imageDrawable = R.drawable.ic_patrol_24;
        suggestedEditsTask18.primaryActionIcon = R.drawable.ic_check_black_24dp;
        Prefs prefs = Prefs.INSTANCE;
        suggestedEditsTask18.f76new = !Prefs.getRecentEditsOnboardingShown();
        if (getViewModel().allowToPatrolEdits && ((str5 = getViewModel().blockMessageWikipedia) == null || str5.length() == 0)) {
            String appOrSystemLanguageCode = Jsoup.getInstance().getAppOrSystemLanguageCode();
            appOrSystemLanguageCode.getClass();
            PrefsIoUtil.setString(R.string.preference_key_recent_edits_wiki_code, appOrSystemLanguageCode);
            SuggestedEditsTask suggestedEditsTask19 = this.vandalismPatrolTask;
            if (suggestedEditsTask19 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("vandalismPatrolTask");
                throw null;
            }
            arrayList.add(suggestedEditsTask19);
        }
        String str6 = Jsoup.getInstance().getWikiSite().languageCode;
        str6.getClass();
        boolean z = str6.equals("en") || StringsKt__StringsJVMKt.startsWith(str6, "test", false);
        boolean z2 = getViewModel().totalContributions > (z ? 50 : 3);
        if (((z && ((str4 = getViewModel().blockMessageWikipedia) == null || str4.length() == 0)) || (!z && ((str = getViewModel().blockMessageWikidata) == null || str.length() == 0))) && z2) {
            SuggestedEditsTask suggestedEditsTask20 = this.addDescriptionsTask;
            if (suggestedEditsTask20 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("addDescriptionsTask");
                throw null;
            }
            arrayList.add(suggestedEditsTask20);
            if (getViewModel().totalContributions < 50 && ((ArrayList) ViewSizeResolver$CC.m785m()).contains("en")) {
                SuggestedEditsTask suggestedEditsTask21 = this.addDescriptionsTask;
                if (suggestedEditsTask21 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("addDescriptionsTask");
                    throw null;
                }
                suggestedEditsTask21.secondaryAction = null;
            }
        }
        if (((Intrinsics.areEqual(Jsoup.getInstance().getWikiSite().languageCode, "de") && getViewModel().homeContributions > 50) || (!Intrinsics.areEqual(Jsoup.getInstance().getWikiSite().languageCode, "de") && getViewModel().totalContributions > 50)) && getViewModel().wikiSupportsImageRecommendations && ((str3 = getViewModel().blockMessageWikipedia) == null || str3.length() == 0)) {
            SuggestedEditsTask suggestedEditsTask22 = this.imageRecommendationsTask;
            if (suggestedEditsTask22 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("imageRecommendationsTask");
                throw null;
            }
            arrayList.add(suggestedEditsTask22);
        }
        String str7 = getViewModel().blockMessageCommons;
        if (str7 == null || str7.length() == 0) {
            SuggestedEditsTask suggestedEditsTask23 = this.addImageCaptionsTask;
            if (suggestedEditsTask23 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("addImageCaptionsTask");
                throw null;
            }
            arrayList.add(suggestedEditsTask23);
            SuggestedEditsTask suggestedEditsTask24 = this.addImageTagsTask;
            if (suggestedEditsTask24 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("addImageTagsTask");
                throw null;
            }
            arrayList.add(suggestedEditsTask24);
        }
        if (arrayList.isEmpty() && (str2 = getViewModel().blockMessageWikipedia) != null && str2.length() != 0) {
            clearContents(true);
            setIPBlockedStatus();
            return;
        }
        SVGAndroidRenderer sVGAndroidRenderer9 = this._binding;
        sVGAndroidRenderer9.getClass();
        RecyclerView.Adapter adapter = ((RecyclerView) ((FragmentNewsBinding) sVGAndroidRenderer9.document).newsStoryItemsRecyclerview).getAdapter();
        adapter.getClass();
        adapter.notifyDataSetChanged();
        if (getViewModel().totalContributions == 0) {
            SVGAndroidRenderer sVGAndroidRenderer10 = this._binding;
            sVGAndroidRenderer10.getClass();
            ((MessageCardView) sVGAndroidRenderer10.state).setVisibility(0);
            SVGAndroidRenderer sVGAndroidRenderer11 = this._binding;
            sVGAndroidRenderer11.getClass();
            MessageCardView messageCardView4 = (MessageCardView) sVGAndroidRenderer11.state;
            String string4 = getString(R.string.suggested_edits_onboarding_message, Headers.Companion.getUserName());
            string4.getClass();
            messageCardView4.setOnboarding(string4);
        }
        SVGAndroidRenderer sVGAndroidRenderer12 = this._binding;
        sVGAndroidRenderer12.getClass();
        WikiSwipeRefreshLayout wikiSwipeRefreshLayout = (WikiSwipeRefreshLayout) sVGAndroidRenderer12.matrixStack;
        Context requireContext = requireContext();
        TypedValue typedValue = new TypedValue();
        TypedValue typedValue2 = requireContext.getTheme().resolveAttribute(R.attr.paper_color, typedValue, true) ? typedValue : null;
        if (typedValue2 == null) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m("Attribute not found; ID=2130969831");
            return;
        }
        wikiSwipeRefreshLayout.setBackgroundColor(typedValue2.data);
        SVGAndroidRenderer sVGAndroidRenderer13 = this._binding;
        sVGAndroidRenderer13.getClass();
        ((LinearLayout) ((FragmentNewsBinding) sVGAndroidRenderer13.document).storyTextView).setVisibility(0);
    }

    public final void setIPBlockedStatus() {
        clearContents(true);
        SVGAndroidRenderer sVGAndroidRenderer = this._binding;
        sVGAndroidRenderer.getClass();
        ((MessageCardView) sVGAndroidRenderer.state).setIPBlocked(getViewModel().blockMessageWikipedia);
        SVGAndroidRenderer sVGAndroidRenderer2 = this._binding;
        sVGAndroidRenderer2.getClass();
        ((MessageCardView) sVGAndroidRenderer2.state).setVisibility(0);
    }

    public final void updateNotificationDot$1(boolean z) {
        NotificationButtonView notificationButtonView = this.notificationButtonView;
        if (notificationButtonView != null) {
            if (Headers.Companion.isLoggedIn()) {
                Prefs prefs = Prefs.INSTANCE;
                if (Prefs.getNotificationUnreadCount() > 0) {
                    notificationButtonView.setUnreadCount(Prefs.getNotificationUnreadCount());
                    if (z) {
                        notificationButtonView.runAnimation();
                        return;
                    }
                    return;
                }
            }
            notificationButtonView.setUnreadCount(0);
        }
    }

    @Override // androidx.core.view.MenuProvider
    public final void onMenuClosed(Menu menu) {
    }
}
