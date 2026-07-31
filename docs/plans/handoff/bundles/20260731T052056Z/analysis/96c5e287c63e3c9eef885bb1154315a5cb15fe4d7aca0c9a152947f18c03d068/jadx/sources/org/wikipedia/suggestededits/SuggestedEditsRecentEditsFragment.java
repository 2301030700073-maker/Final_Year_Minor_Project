package org.wikipedia.suggestededits;

import android.content.Context;
import android.net.Uri;
import android.os.Bundle;
import android.util.TypedValue;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.view.ActionMode;
import androidx.compose.animation.core.Animation;
import androidx.core.view.MenuProvider;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager$FragmentIntentSenderContract;
import androidx.lifecycle.Lifecycle$State;
import androidx.lifecycle.ViewModelKt;
import androidx.recyclerview.widget.ConcatAdapter;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.room.Room;
import coil3.util.ContextsKt;
import com.google.android.material.appbar.MaterialToolbar;
import kotlin.Lazy;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.text.RegexKt;
import kotlinx.coroutines.AwaitKt;
import okhttp3.Cookie;
import okhttp3.Headers;
import okhttp3.Request;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import okio.Path;
import okio.internal.DefaultSocket;
import org.wikipedia.R;
import org.wikipedia.categories.CategoryActivity;
import org.wikipedia.databinding.ViewWatchlistSearchBarBinding;
import org.wikipedia.dataclient.WikiSite;
import org.wikipedia.donate.DonateDialog$special$$inlined$viewModels$default$5;
import org.wikipedia.page.LinkMovementMethodExt;
import org.wikipedia.page.PageTitle;
import org.wikipedia.places.PlacesFragment$special$$inlined$viewModels$default$3;
import org.wikipedia.settings.Prefs;
import org.wikipedia.staticdata.UserAliasData;
import org.wikipedia.suggestededits.SuggestedEditsRecentEditsItemView;
import org.wikipedia.suggestededits.SuggestedEditsRecentEditsViewModel;
import org.wikipedia.talk.TalkTopicActivity;
import org.wikipedia.talk.template.TalkTemplatesActivity;
import org.wikipedia.util.ShareUtil;
import org.wikipedia.util.StringUtil;
import org.wikipedia.util.UriUtil;
import org.wikipedia.views.NotificationButtonView;
import org.wikipedia.views.SearchAndFilterActionProvider;
import org.wikipedia.views.WikiCardView;
import org.wikipedia.views.WikiSwipeRefreshLayout;
import org.wikipedia.watchlist.WatchlistFragment$special$$inlined$viewModels$default$1;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\r\b\u0007\u0018\u00002\u00020\u00012\u00020\u0002:\u000b\u0005\u0005\u0006\u0007\b\t\n\u000b\f\r\u000eB\u0007¢\u0006\u0004\b\u0003\u0010\u0004¨\u0006\u000f"}, d2 = {"Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFragment;", "Landroidx/fragment/app/Fragment;", "Landroidx/core/view/MenuProvider;", "<init>", "()V", "SearchBarAdapter", "LoadingItemAdapter", "CategoryMemberDiffCallback", "CategoryMembersAdapter", "LoadingViewHolder", "SeparatorViewHolder", "SearchBarViewHolder", "EmptyMessagesViewHolder", "RecentEditsItemHolder", "SearchCallback", "app"}, k = 1, mv = {2, 3, 0}, xi = 48)
/* loaded from: classes.dex */
public final class SuggestedEditsRecentEditsFragment extends Fragment implements MenuProvider {
    public DefaultSocket _binding;
    public ActionMode actionMode;
    public final Fragment.AnonymousClass10 launchFilterActivity;
    public final CategoryActivity.LoadingItemAdapter loadFooter;
    public final CategoryActivity.LoadingItemAdapter loadHeader;
    public NotificationButtonView notificationButtonView;
    public final SearchBarAdapter recentEditsEmptyMessagesAdapter;
    public final CategoryActivity.CategoryMembersAdapter recentEditsListAdapter = new CategoryActivity.CategoryMembersAdapter(this);
    public final SearchBarAdapter recentEditsSearchBarAdapter;
    public final TalkTopicActivity.SearchCallback searchActionModeCallback;
    public final Request.Builder viewModel$delegate;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class EmptyMessagesViewHolder extends RecyclerView.ViewHolder {
        public final DefaultSocket binding;

        public EmptyMessagesViewHolder(DefaultSocket defaultSocket) {
            super((LinearLayout) defaultSocket.socket);
            this.binding = defaultSocket;
            ((TextView) defaultSocket.closeBits).setMovementMethod(new LinkMovementMethodExt(new SuggestedEditsRecentEditsFragment$$ExternalSyntheticLambda0(SuggestedEditsRecentEditsFragment.this, 3)));
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class LoadingViewHolder extends RecyclerView.ViewHolder {
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class RecentEditsItemHolder extends RecyclerView.ViewHolder implements SuggestedEditsRecentEditsItemView.Callback {
        public final SuggestedEditsRecentEditsItemView view;

        public RecentEditsItemHolder(SuggestedEditsRecentEditsItemView suggestedEditsRecentEditsItemView) {
            super(suggestedEditsRecentEditsItemView);
            this.view = suggestedEditsRecentEditsItemView;
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class SearchBarAdapter extends RecyclerView.Adapter {
        public final /* synthetic */ int $r8$classId;
        public final /* synthetic */ SuggestedEditsRecentEditsFragment this$0;

        public /* synthetic */ SearchBarAdapter(SuggestedEditsRecentEditsFragment suggestedEditsRecentEditsFragment, int i) {
            this.$r8$classId = i;
            this.this$0 = suggestedEditsRecentEditsFragment;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public final int getItemCount() {
            switch (this.$r8$classId) {
            }
            return 1;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public final void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
            int i2 = 1;
            switch (this.$r8$classId) {
                case 0:
                    SearchBarViewHolder searchBarViewHolder = (SearchBarViewHolder) viewHolder;
                    ViewWatchlistSearchBarBinding viewWatchlistSearchBarBinding = searchBarViewHolder.binding;
                    WikiCardView wikiCardView = viewWatchlistSearchBarBinding.rootView;
                    ImageView imageView = viewWatchlistSearchBarBinding.filterButton;
                    SuggestedEditsRecentEditsFragment suggestedEditsRecentEditsFragment = searchBarViewHolder.this$0;
                    Context requireContext = suggestedEditsRecentEditsFragment.requireContext();
                    TypedValue typedValue = new TypedValue();
                    if (!requireContext.getTheme().resolveAttribute(R.attr.background_color, typedValue, true)) {
                        typedValue = null;
                    }
                    if (typedValue == null) {
                        _UtilJvmKt$$ExternalSyntheticLambda0.m("Attribute not found; ID=2130968673");
                        break;
                    } else {
                        wikiCardView.setCardBackgroundColor(typedValue.data);
                        searchBarViewHolder.itemView.setOnClickListener(new SuggestedEditsRecentEditsFragment$$ExternalSyntheticLambda5(suggestedEditsRecentEditsFragment, i2));
                        imageView.setOnClickListener(new SuggestedEditsRecentEditsFragment$$ExternalSyntheticLambda5(suggestedEditsRecentEditsFragment, 2));
                        View view = new View[]{imageView}[0];
                        RegexKt.setTooltipText(view, view.getContentDescription());
                        wikiCardView.getClass();
                        wikiCardView.setVisibility(0);
                        break;
                    }
                default:
                    EmptyMessagesViewHolder emptyMessagesViewHolder = (EmptyMessagesViewHolder) viewHolder;
                    SuggestedEditsRecentEditsFragment suggestedEditsRecentEditsFragment2 = SuggestedEditsRecentEditsFragment.this;
                    DefaultSocket defaultSocket = emptyMessagesViewHolder.binding;
                    ((LinearLayout) defaultSocket.source).setVisibility(SuggestedEditsRecentEditsViewModel.Companion.filtersCount() > 0 ? 0 : 8);
                    String quantityString = suggestedEditsRecentEditsFragment2.getResources().getQuantityString(R.plurals.patroller_tasks_filters_number_of_filters, SuggestedEditsRecentEditsViewModel.Companion.filtersCount(), Integer.valueOf(SuggestedEditsRecentEditsViewModel.Companion.filtersCount()));
                    quantityString.getClass();
                    TextView textView = (TextView) defaultSocket.closeBits;
                    StringUtil stringUtil = StringUtil.INSTANCE;
                    textView.setText(StringUtil.fromHtml(suggestedEditsRecentEditsFragment2.getString(R.string.patroller_tasks_filters_empty_search_message, Animation.CC.m("<a href=\"#\">", quantityString, "</a>"))));
                    break;
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public final RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
            int i2 = this.$r8$classId;
            SuggestedEditsRecentEditsFragment suggestedEditsRecentEditsFragment = this.this$0;
            switch (i2) {
                case 0:
                    return new SearchBarViewHolder(suggestedEditsRecentEditsFragment, ViewWatchlistSearchBarBinding.inflate(suggestedEditsRecentEditsFragment.getLayoutInflater(), viewGroup));
                default:
                    return suggestedEditsRecentEditsFragment.new EmptyMessagesViewHolder(DefaultSocket.inflate(suggestedEditsRecentEditsFragment.getLayoutInflater(), viewGroup));
            }
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class SearchBarViewHolder extends RecyclerView.ViewHolder {
        public final ViewWatchlistSearchBarBinding binding;
        public final /* synthetic */ SuggestedEditsRecentEditsFragment this$0;

        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public SearchBarViewHolder(org.wikipedia.suggestededits.SuggestedEditsRecentEditsFragment r5, org.wikipedia.databinding.ViewWatchlistSearchBarBinding r6) {
            /*
                r4 = this;
                android.widget.TextView r0 = r6.filterCount
                r4.this$0 = r5
                org.wikipedia.views.WikiCardView r1 = r6.rootView
                r4.<init>(r1)
                r4.binding = r6
                r4 = 8
                r1.setVisibility(r4)
                int r1 = org.wikipedia.suggestededits.SuggestedEditsRecentEditsViewModel.Companion.filtersCount()
                r2 = 0
                if (r1 == 0) goto L19
                r1 = 1
                goto L1a
            L19:
                r1 = r2
            L1a:
                if (r1 == 0) goto L20
                r3 = 2130969888(0x7f040520, float:1.754847E38)
                goto L23
            L20:
                r3 = 2130969882(0x7f04051a, float:1.7548458E38)
            L23:
                if (r1 == 0) goto L26
                r4 = r2
            L26:
                r0.setVisibility(r4)
                int r4 = org.wikipedia.suggestededits.SuggestedEditsRecentEditsViewModel.Companion.filtersCount()
                java.lang.String r4 = java.lang.String.valueOf(r4)
                r0.setText(r4)
                android.widget.ImageView r4 = r6.filterButton
                android.content.Context r5 = r5.requireContext()
                android.content.res.ColorStateList r5 = okhttp3.Cache.Companion.getThemedColorStateList(r5, r3)
                r4.setImageTintList(r5)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: org.wikipedia.suggestededits.SuggestedEditsRecentEditsFragment.SearchBarViewHolder.<init>(org.wikipedia.suggestededits.SuggestedEditsRecentEditsFragment, org.wikipedia.databinding.ViewWatchlistSearchBarBinding):void");
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class SeparatorViewHolder extends RecyclerView.ViewHolder {
    }

    public SuggestedEditsRecentEditsFragment() {
        final int i = 0;
        this.recentEditsSearchBarAdapter = new SearchBarAdapter(this, i);
        final int i2 = 1;
        this.recentEditsEmptyMessagesAdapter = new SearchBarAdapter(this, i2);
        this.loadHeader = new CategoryActivity.LoadingItemAdapter(this, new Function0(this) { // from class: org.wikipedia.suggestededits.SuggestedEditsRecentEditsFragment$$ExternalSyntheticLambda2
            public final /* synthetic */ SuggestedEditsRecentEditsFragment f$0;

            {
                this.f$0 = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i3 = i;
                Unit unit = Unit.INSTANCE;
                SuggestedEditsRecentEditsFragment suggestedEditsRecentEditsFragment = this.f$0;
                switch (i3) {
                    case 0:
                        suggestedEditsRecentEditsFragment.recentEditsListAdapter.retry();
                        break;
                    default:
                        suggestedEditsRecentEditsFragment.recentEditsListAdapter.retry();
                        break;
                }
                return unit;
            }
        }, 2);
        this.loadFooter = new CategoryActivity.LoadingItemAdapter(this, new Function0(this) { // from class: org.wikipedia.suggestededits.SuggestedEditsRecentEditsFragment$$ExternalSyntheticLambda2
            public final /* synthetic */ SuggestedEditsRecentEditsFragment f$0;

            {
                this.f$0 = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i3 = i2;
                Unit unit = Unit.INSTANCE;
                SuggestedEditsRecentEditsFragment suggestedEditsRecentEditsFragment = this.f$0;
                switch (i3) {
                    case 0:
                        suggestedEditsRecentEditsFragment.recentEditsListAdapter.retry();
                        break;
                    default:
                        suggestedEditsRecentEditsFragment.recentEditsListAdapter.retry();
                        break;
                }
                return unit;
            }
        }, 2);
        Lazy lazy = ContextsKt.lazy(LazyThreadSafetyMode.NONE, new WatchlistFragment$special$$inlined$viewModels$default$1(12, new WatchlistFragment$special$$inlined$viewModels$default$1(11, this)));
        this.viewModel$delegate = new Request.Builder(Reflection.factory.getOrCreateKotlinClass(SuggestedEditsRecentEditsViewModel.class), new PlacesFragment$special$$inlined$viewModels$default$3(lazy, 20), new DonateDialog$special$$inlined$viewModels$default$5(this, lazy, 20), new PlacesFragment$special$$inlined$viewModels$default$3(lazy, 21));
        this.searchActionModeCallback = new TalkTopicActivity.SearchCallback(4, this);
        this.launchFilterActivity = (Fragment.AnonymousClass10) registerForActivityResult(new SuggestedEditsRecentEditsFragment$$ExternalSyntheticLambda0(this, 2), new FragmentManager$FragmentIntentSenderContract(3));
    }

    public final SuggestedEditsRecentEditsViewModel getViewModel() {
        return (SuggestedEditsRecentEditsViewModel) this.viewModel$delegate.getValue();
    }

    @Override // androidx.core.view.MenuProvider
    public final void onCreateMenu(Menu menu, MenuInflater menuInflater) {
        menu.getClass();
        menuInflater.getClass();
        menuInflater.inflate(R.menu.menu_recent_edits, menu);
    }

    @Override // androidx.fragment.app.Fragment
    public final View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        layoutInflater.getClass();
        View inflate = layoutInflater.inflate(R.layout.fragment_suggested_edits_recent_edits, viewGroup, false);
        int i = R.id.recyclerView;
        RecyclerView recyclerView = (RecyclerView) Room.findChildViewById(inflate, R.id.recyclerView);
        if (recyclerView != null) {
            i = R.id.refreshContainer;
            WikiSwipeRefreshLayout wikiSwipeRefreshLayout = (WikiSwipeRefreshLayout) Room.findChildViewById(inflate, R.id.refreshContainer);
            if (wikiSwipeRefreshLayout != null) {
                i = R.id.toolbar;
                MaterialToolbar materialToolbar = (MaterialToolbar) Room.findChildViewById(inflate, R.id.toolbar);
                if (materialToolbar != null) {
                    this._binding = new DefaultSocket((LinearLayout) inflate, recyclerView, wikiSwipeRefreshLayout, materialToolbar, 17);
                    AppCompatActivity requireActivity = requireActivity();
                    DefaultSocket defaultSocket = this._binding;
                    defaultSocket.getClass();
                    requireActivity.setSupportActionBar((MaterialToolbar) defaultSocket.sink);
                    ContextsKt supportActionBar = requireActivity().getSupportActionBar();
                    supportActionBar.getClass();
                    supportActionBar.setTitle(getString(R.string.suggested_edits_edit_patrol));
                    DefaultSocket defaultSocket2 = this._binding;
                    defaultSocket2.getClass();
                    LinearLayout linearLayout = (LinearLayout) defaultSocket2.socket;
                    linearLayout.getClass();
                    return linearLayout;
                }
            }
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m$3("Missing required view with ID: ".concat(inflate.getResources().getResourceName(i)));
        return null;
    }

    @Override // androidx.fragment.app.Fragment
    public final void onDestroyView() {
        this.mCalled = true;
        this._binding = null;
    }

    @Override // androidx.core.view.MenuProvider
    public final boolean onMenuItemSelected(MenuItem menuItem) {
        menuItem.getClass();
        int itemId = menuItem.getItemId();
        if (itemId == R.id.menu_learn_more) {
            Cookie.Companion.submitPatrollerActivityEvent("top_menu_learn_click", "pt_recent_changes", "");
            Context requireContext = requireContext();
            String string = requireContext.getString(R.string.android_app_edit_help_url);
            string.getClass();
            Uri parse = Uri.parse(string);
            parse.getClass();
            UriUtil.visitInExternalBrowser(requireContext, parse);
            return true;
        }
        if (itemId != R.id.menu_saved_messages) {
            if (itemId != R.id.menu_report_feature) {
                return false;
            }
            Cookie.Companion.submitPatrollerActivityEvent("top_menu_feedback_click", "pt_recent_changes", "");
            Context requireContext2 = requireContext();
            String string2 = getString(R.string.email_report_patroller_tasks_subject);
            string2.getClass();
            String string3 = getString(R.string.email_report_patroller_tasks_body);
            string3.getClass();
            ShareUtil.composeEmail$default(requireContext2, null, string2, string3, 2);
            return true;
        }
        Cookie.Companion.submitPatrollerActivityEvent("list_saved_init", "pt_warning_messages", "");
        SuggestedEditsRecentEditsViewModel viewModel = getViewModel();
        WikiSite.Companion companion = WikiSite.Companion;
        String str = viewModel.langCode;
        companion.getClass();
        String valueFor = UserAliasData.valueFor(WikiSite.Companion.forLanguageCode(str).languageCode);
        String userName = Headers.Companion.getUserName();
        String str2 = getViewModel().langCode;
        companion.getClass();
        PageTitle pageTitle = new PageTitle(valueFor, WikiSite.Companion.forLanguageCode(str2), userName, null, null, null, null, null);
        AppCompatActivity requireActivity = requireActivity();
        int i = TalkTemplatesActivity.$r8$clinit;
        requireActivity.startActivity(Path.Companion.newIntent$default(requireContext(), pageTitle, 0L, 0L, 24));
        return true;
    }

    @Override // androidx.core.view.MenuProvider
    public final void onPrepareMenu(Menu menu) {
        menu.getClass();
        MenuItem findItem = menu.findItem(R.id.menu_notifications);
        int i = 0;
        if (Headers.Companion.isLoggedIn()) {
            findItem.setVisible(true);
            NotificationButtonView notificationButtonView = this.notificationButtonView;
            if (notificationButtonView == null) {
                Intrinsics.throwUninitializedPropertyAccessException("notificationButtonView");
                throw null;
            }
            Prefs prefs = Prefs.INSTANCE;
            notificationButtonView.setUnreadCount(Prefs.getNotificationUnreadCount());
            NotificationButtonView notificationButtonView2 = this.notificationButtonView;
            if (notificationButtonView2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("notificationButtonView");
                throw null;
            }
            notificationButtonView2.setOnClickListener(new SuggestedEditsRecentEditsFragment$$ExternalSyntheticLambda5(this, i));
            NotificationButtonView notificationButtonView3 = this.notificationButtonView;
            if (notificationButtonView3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("notificationButtonView");
                throw null;
            }
            notificationButtonView3.setContentDescription(getString(R.string.notifications_activity_title));
            NotificationButtonView notificationButtonView4 = this.notificationButtonView;
            if (notificationButtonView4 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("notificationButtonView");
                throw null;
            }
            findItem.setActionView(notificationButtonView4);
            findItem.expandActionView();
            NotificationButtonView notificationButtonView5 = this.notificationButtonView;
            if (notificationButtonView5 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("notificationButtonView");
                throw null;
            }
            View view = new View[]{notificationButtonView5}[0];
            RegexKt.setTooltipText(view, view.getContentDescription());
        } else {
            findItem.setVisible(false);
        }
        updateNotificationDot$1(false);
    }

    @Override // androidx.fragment.app.Fragment
    public final void onResume() {
        SearchAndFilterActionProvider searchAndFilterActionProvider;
        this.mCalled = true;
        ActionMode actionMode = this.actionMode;
        if (actionMode == null || !"searchActionMode".equals(actionMode.mTag) || (searchAndFilterActionProvider = (SearchAndFilterActionProvider) this.searchActionModeCallback.searchActionProvider) == null) {
            return;
        }
        searchAndFilterActionProvider.updateFilterIconAndText();
    }

    @Override // androidx.fragment.app.Fragment
    public final void onViewCreated(View view, Bundle bundle) {
        view.getClass();
        this.notificationButtonView = new NotificationButtonView(requireActivity(), null);
        requireActivity().addMenuProvider(this, getViewLifecycleOwner(), Lifecycle$State.RESUMED);
        DefaultSocket defaultSocket = this._binding;
        defaultSocket.getClass();
        int i = 0;
        ((WikiSwipeRefreshLayout) defaultSocket.source).setOnRefreshListener(new SuggestedEditsRecentEditsFragment$$ExternalSyntheticLambda0(this, i));
        DefaultSocket defaultSocket2 = this._binding;
        defaultSocket2.getClass();
        ((WikiSwipeRefreshLayout) defaultSocket2.source).setOnRefreshListener(new SuggestedEditsRecentEditsFragment$$ExternalSyntheticLambda0(this, 1));
        DefaultSocket defaultSocket3 = this._binding;
        defaultSocket3.getClass();
        RecyclerView recyclerView = (RecyclerView) defaultSocket3.closeBits;
        requireContext();
        recyclerView.setLayoutManager(new LinearLayoutManager(1));
        setupAdapters$2();
        AwaitKt.launch$default(ViewModelKt.getLifecycleScope(this), null, null, new SuggestedEditsRecentEditsFragment$onViewCreated$3(this, null, i), 3);
        if (getViewModel().actionModeActive) {
            this.actionMode = requireActivity().startSupportActionMode(this.searchActionModeCallback);
        }
    }

    public final void setupAdapters$2() {
        ActionMode actionMode = this.actionMode;
        DefaultSocket defaultSocket = this._binding;
        CategoryActivity.LoadingItemAdapter loadingItemAdapter = this.loadFooter;
        CategoryActivity.CategoryMembersAdapter categoryMembersAdapter = this.recentEditsListAdapter;
        if (actionMode != null) {
            defaultSocket.getClass();
            ((RecyclerView) defaultSocket.closeBits).setAdapter(categoryMembersAdapter.withLoadStateFooter(loadingItemAdapter));
            return;
        }
        defaultSocket.getClass();
        RecyclerView recyclerView = (RecyclerView) defaultSocket.closeBits;
        ConcatAdapter withLoadStateHeaderAndFooter = categoryMembersAdapter.withLoadStateHeaderAndFooter(this.loadHeader, loadingItemAdapter);
        withLoadStateHeaderAndFooter.addAdapter(0, this.recentEditsSearchBarAdapter);
        recyclerView.setAdapter(withLoadStateHeaderAndFooter);
    }

    public final void updateNotificationDot$1(boolean z) {
        if (Headers.Companion.isLoggedIn()) {
            Prefs prefs = Prefs.INSTANCE;
            if (Prefs.getNotificationUnreadCount() > 0) {
                NotificationButtonView notificationButtonView = this.notificationButtonView;
                if (notificationButtonView == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("notificationButtonView");
                    throw null;
                }
                notificationButtonView.setUnreadCount(Prefs.getNotificationUnreadCount());
                if (z) {
                    NotificationButtonView notificationButtonView2 = this.notificationButtonView;
                    if (notificationButtonView2 != null) {
                        notificationButtonView2.runAnimation();
                        return;
                    } else {
                        Intrinsics.throwUninitializedPropertyAccessException("notificationButtonView");
                        throw null;
                    }
                }
                return;
            }
        }
        NotificationButtonView notificationButtonView3 = this.notificationButtonView;
        if (notificationButtonView3 != null) {
            notificationButtonView3.setUnreadCount(0);
        } else {
            Intrinsics.throwUninitializedPropertyAccessException("notificationButtonView");
            throw null;
        }
    }

    @Override // androidx.core.view.MenuProvider
    public final void onMenuClosed(Menu menu) {
    }
}
