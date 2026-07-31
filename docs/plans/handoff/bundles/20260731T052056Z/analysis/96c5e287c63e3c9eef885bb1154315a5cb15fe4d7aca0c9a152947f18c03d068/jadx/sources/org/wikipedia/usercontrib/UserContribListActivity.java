package org.wikipedia.usercontrib;

import android.content.Intent;
import android.os.Bundle;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.activity.result.ActivityResultRegistry$register$2;
import androidx.appcompat.view.ActionMode;
import androidx.compose.animation.core.Animation;
import androidx.compose.ui.Modifier;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.fragment.app.FragmentManager$FragmentIntentSenderContract;
import androidx.lifecycle.ViewModelKt;
import androidx.recyclerview.widget.ConcatAdapter;
import androidx.recyclerview.widget.FastScroller;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.room.Room;
import coil3.util.ContextsKt;
import com.google.android.material.appbar.MaterialToolbar;
import j$.util.concurrent.ConcurrentHashMap;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.text.RegexKt;
import kotlinx.coroutines.AwaitKt;
import okhttp3.MultipartBody;
import okhttp3.Request;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import okio.internal.DefaultSocket;
import org.wikipedia.Constants;
import org.wikipedia.R;
import org.wikipedia.activity.BaseActivity;
import org.wikipedia.categories.CategoryActivity;
import org.wikipedia.databinding.ViewUserContribStatsBinding;
import org.wikipedia.databinding.ViewWatchlistSearchBarBinding;
import org.wikipedia.dataclient.WikiSite;
import org.wikipedia.dataclient.mwapi.UserContribution;
import org.wikipedia.main.MainActivity$$ExternalSyntheticLambda1;
import org.wikipedia.page.LinkHandler;
import org.wikipedia.page.LinkMovementMethodExt;
import org.wikipedia.page.PageTitle;
import org.wikipedia.staticdata.UserAliasData;
import org.wikipedia.talk.TalkTopicActivity;
import org.wikipedia.talk.UserTalkPopupHelper;
import org.wikipedia.usercontrib.UserContribItemView;
import org.wikipedia.usercontrib.UserContribListViewModel;
import org.wikipedia.util.DateUtil;
import org.wikipedia.util.Resource;
import org.wikipedia.util.SingleLiveData$sam$androidx_lifecycle_Observer$0;
import org.wikipedia.util.StringUtil;
import org.wikipedia.views.WikiCardView;
import org.wikipedia.views.WikiSwipeRefreshLayout;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0010\b\u0007\u0018\u00002\u00020\u0001:\u000f\u0004\u0004\u0004\u0005\u0006\u0007\b\t\n\u000b\f\r\u000e\u000f\u0010B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0011"}, d2 = {"Lorg/wikipedia/usercontrib/UserContribListActivity;", "Lorg/wikipedia/activity/BaseActivity;", "<init>", "()V", "SearchBarAdapter", "LoadingItemAdapter", "CategoryMemberDiffCallback", "CategoryMembersAdapter", "LoadingViewHolder", "StatsViewHolder", "SeparatorViewHolder", "SearchBarViewHolder", "EmptyMessagesViewHolder", "UserContribListItemHolder", "SearchCallback", "UserContribLinkHandler", "Companion", "app"}, k = 1, mv = {2, 3, 0}, xi = 48)
/* loaded from: classes.dex */
public final class UserContribListActivity extends BaseActivity {
    public static final /* synthetic */ int $r8$clinit = 0;
    public ActionMode actionMode;
    public MultipartBody.Builder binding;
    public UserContribLinkHandler linkHandler;
    public final CategoryActivity.LoadingItemAdapter loadFooter;
    public final CategoryActivity.LoadingItemAdapter loadHeader;
    public final SearchBarAdapter userContribEmptyMessagesAdapter;
    public final SearchBarAdapter userContribSearchBarAdapter;
    public final SearchBarAdapter userContribStatsAdapter;
    public final Request.Builder viewModel$delegate;
    public final CategoryActivity.CategoryMembersAdapter userContribListAdapter = new CategoryActivity.CategoryMembersAdapter(this);
    public final TalkTopicActivity.SearchCallback searchActionModeCallback = new TalkTopicActivity.SearchCallback(6, this);
    public final LinkMovementMethodExt linkMovementMethod = new LinkMovementMethodExt((LinkMovementMethodExt.UrlHandlerWithTextAndCoords) new UserContribListActivity$$ExternalSyntheticLambda0(this));
    public final ActivityResultRegistry$register$2 launchFilterActivity = (ActivityResultRegistry$register$2) registerForActivityResult(new UserContribListActivity$$ExternalSyntheticLambda0(this), new FragmentManager$FragmentIntentSenderContract(3));

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class EmptyMessagesViewHolder extends RecyclerView.ViewHolder {
        public final DefaultSocket binding;

        public EmptyMessagesViewHolder(DefaultSocket defaultSocket) {
            super((LinearLayout) defaultSocket.socket);
            this.binding = defaultSocket;
            ((TextView) defaultSocket.closeBits).setMovementMethod(new LinkMovementMethodExt((LinkMovementMethodExt.UrlHandler) new UserContribListActivity$$ExternalSyntheticLambda0(UserContribListActivity.this)));
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class LoadingViewHolder extends RecyclerView.ViewHolder {
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class SearchBarAdapter extends RecyclerView.Adapter {
        public final /* synthetic */ int $r8$classId;
        public final /* synthetic */ UserContribListActivity this$0;

        public /* synthetic */ SearchBarAdapter(UserContribListActivity userContribListActivity, int i) {
            this.$r8$classId = i;
            this.this$0 = userContribListActivity;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public final int getItemCount() {
            switch (this.$r8$classId) {
            }
            return 1;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public final void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
            PageTitle pageTitle;
            final int i2 = 1;
            final int i3 = 0;
            switch (this.$r8$classId) {
                case 0:
                    SearchBarViewHolder searchBarViewHolder = (SearchBarViewHolder) viewHolder;
                    ViewWatchlistSearchBarBinding viewWatchlistSearchBarBinding = searchBarViewHolder.binding;
                    WikiCardView wikiCardView = viewWatchlistSearchBarBinding.rootView;
                    final UserContribListActivity userContribListActivity = searchBarViewHolder.this$0;
                    int i4 = UserContribListActivity.$r8$clinit;
                    if (((Resource) userContribListActivity.getViewModel().userContribStatsData.getValue()) instanceof Resource.Success) {
                        ImageView imageView = viewWatchlistSearchBarBinding.filterButton;
                        TypedValue typedValue = new TypedValue();
                        TypedValue typedValue2 = userContribListActivity.getTheme().resolveAttribute(R.attr.background_color, typedValue, true) ? typedValue : null;
                        if (typedValue2 == null) {
                            _UtilJvmKt$$ExternalSyntheticLambda0.m("Attribute not found; ID=2130968673");
                            break;
                        } else {
                            wikiCardView.setCardBackgroundColor(typedValue2.data);
                            searchBarViewHolder.itemView.setOnClickListener(new View.OnClickListener() { // from class: org.wikipedia.usercontrib.UserContribListActivity$SearchBarViewHolder$$ExternalSyntheticLambda0
                                @Override // android.view.View.OnClickListener
                                public final void onClick(View view) {
                                    int i5 = i3;
                                    UserContribListActivity userContribListActivity2 = userContribListActivity;
                                    switch (i5) {
                                        case 0:
                                            int i6 = UserContribListActivity.$r8$clinit;
                                            userContribListActivity2.actionMode = userContribListActivity2.startSupportActionMode(userContribListActivity2.searchActionModeCallback);
                                            break;
                                        default:
                                            ActivityResultRegistry$register$2 activityResultRegistry$register$2 = userContribListActivity2.launchFilterActivity;
                                            List list = UserContribFilterActivity.NAMESPACE_LIST;
                                            activityResultRegistry$register$2.launch(new Intent(userContribListActivity2, (Class<?>) UserContribFilterActivity.class), null);
                                            break;
                                    }
                                }
                            });
                            imageView.setOnClickListener(new View.OnClickListener() { // from class: org.wikipedia.usercontrib.UserContribListActivity$SearchBarViewHolder$$ExternalSyntheticLambda0
                                @Override // android.view.View.OnClickListener
                                public final void onClick(View view) {
                                    int i5 = i2;
                                    UserContribListActivity userContribListActivity2 = userContribListActivity;
                                    switch (i5) {
                                        case 0:
                                            int i6 = UserContribListActivity.$r8$clinit;
                                            userContribListActivity2.actionMode = userContribListActivity2.startSupportActionMode(userContribListActivity2.searchActionModeCallback);
                                            break;
                                        default:
                                            ActivityResultRegistry$register$2 activityResultRegistry$register$2 = userContribListActivity2.launchFilterActivity;
                                            List list = UserContribFilterActivity.NAMESPACE_LIST;
                                            activityResultRegistry$register$2.launch(new Intent(userContribListActivity2, (Class<?>) UserContribFilterActivity.class), null);
                                            break;
                                    }
                                }
                            });
                            View view = new View[]{imageView}[0];
                            RegexKt.setTooltipText(view, view.getContentDescription());
                            wikiCardView.getClass();
                            wikiCardView.setVisibility(0);
                            break;
                        }
                    }
                    break;
                case 1:
                    EmptyMessagesViewHolder emptyMessagesViewHolder = (EmptyMessagesViewHolder) viewHolder;
                    TextView textView = (TextView) emptyMessagesViewHolder.binding.closeBits;
                    StringUtil stringUtil = StringUtil.INSTANCE;
                    textView.setText(StringUtil.fromHtml(UserContribListActivity.this.getString(R.string.page_edit_history_empty_search_message)));
                    break;
                default:
                    StatsViewHolder statsViewHolder = (StatsViewHolder) viewHolder;
                    UserContribListActivity userContribListActivity2 = UserContribListActivity.this;
                    int i5 = UserContribListActivity.$r8$clinit;
                    Resource resource = (Resource) userContribListActivity2.getViewModel().userContribStatsData.getValue();
                    if (resource instanceof Resource.Success) {
                        UserContribStatsView userContribStatsView = statsViewHolder.view;
                        String str = userContribListActivity2.getViewModel().userName;
                        UserContribListViewModel.UserContribStats userContribStats = (UserContribListViewModel.UserContribStats) ((Resource.Success) resource).data;
                        LinkMovementMethodExt linkMovementMethodExt = userContribListActivity2.linkMovementMethod;
                        String str2 = userContribListActivity2.getViewModel().userName;
                        String str3 = userContribListActivity2.getViewModel().langCode;
                        str2.getClass();
                        str3.getClass();
                        if (str3.equals("commons")) {
                            pageTitle = new PageTitle(Animation.CC.m(UserAliasData.valueFor("en"), ":", str2), new WikiSite("https://commons.wikimedia.org/"), (String) null);
                        } else if (str3.equals("wikidata")) {
                            pageTitle = new PageTitle(Animation.CC.m(UserAliasData.valueFor("en"), ":", str2), new WikiSite("https://www.wikidata.org/"), (String) null);
                        } else {
                            String m = Animation.CC.m(UserAliasData.valueFor(str3), ":", str2);
                            WikiSite.Companion.getClass();
                            pageTitle = new PageTitle(m, WikiSite.Companion.forLanguageCode(str3), (String) null);
                        }
                        str.getClass();
                        userContribStats.getClass();
                        linkMovementMethodExt.getClass();
                        ViewUserContribStatsBinding viewUserContribStatsBinding = userContribStatsView.binding;
                        TextView textView2 = viewUserContribStatsBinding.userNameView;
                        TextView textView3 = viewUserContribStatsBinding.editCountsView;
                        StringUtil stringUtil2 = StringUtil.INSTANCE;
                        textView2.setText(StringUtil.fromHtml(userContribStatsView.getContext().getString(R.string.user_contrib_activity_title, Modifier.CC.m("<a href='", pageTitle.getUri(), "'>", str, "</a>"))));
                        viewUserContribStatsBinding.userNameView.setMovementMethod(linkMovementMethodExt);
                        int i6 = userContribStats.totalEdits;
                        if (i6 < 0) {
                            textView3.setVisibility(8);
                            break;
                        } else {
                            ConcurrentHashMap concurrentHashMap = DateUtil.DATE_FORMATS;
                            String dateStringWithSkeletonPattern = DateUtil.getDateStringWithSkeletonPattern("yyyy", userContribStats.registrationDate);
                            textView3.setVisibility(0);
                            textView3.setText(userContribStatsView.getContext().getResources().getQuantityString(R.plurals.edits_since_year_per_wiki, i6, Integer.valueOf(i6), dateStringWithSkeletonPattern, userContribStats.projectName));
                            break;
                        }
                    }
                    break;
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public final RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
            int i2 = this.$r8$classId;
            UserContribListActivity userContribListActivity = this.this$0;
            switch (i2) {
                case 0:
                    return new SearchBarViewHolder(userContribListActivity, ViewWatchlistSearchBarBinding.inflate(userContribListActivity.getLayoutInflater(), viewGroup));
                case 1:
                    return userContribListActivity.new EmptyMessagesViewHolder(DefaultSocket.inflate(userContribListActivity.getLayoutInflater(), viewGroup));
                default:
                    return userContribListActivity.new StatsViewHolder(new UserContribStatsView(userContribListActivity));
            }
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class SearchBarViewHolder extends RecyclerView.ViewHolder {
        public final ViewWatchlistSearchBarBinding binding;
        public final /* synthetic */ UserContribListActivity this$0;

        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public SearchBarViewHolder(org.wikipedia.usercontrib.UserContribListActivity r5, org.wikipedia.databinding.ViewWatchlistSearchBarBinding r6) {
            /*
                r4 = this;
                android.widget.TextView r0 = r6.filterCount
                r4.this$0 = r5
                org.wikipedia.views.WikiCardView r1 = r6.rootView
                r4.<init>(r1)
                r4.binding = r6
                r4 = 8
                r1.setVisibility(r4)
                int r1 = org.wikipedia.usercontrib.UserContribListActivity.$r8$clinit
                org.wikipedia.usercontrib.UserContribListViewModel r1 = r5.getViewModel()
                int r1 = r1.excludedFiltersCount()
                r2 = 0
                if (r1 == 0) goto L1f
                r1 = 1
                goto L20
            L1f:
                r1 = r2
            L20:
                if (r1 == 0) goto L26
                r3 = 2130969888(0x7f040520, float:1.754847E38)
                goto L29
            L26:
                r3 = 2130969882(0x7f04051a, float:1.7548458E38)
            L29:
                if (r1 == 0) goto L2c
                r4 = r2
            L2c:
                r0.setVisibility(r4)
                org.wikipedia.usercontrib.UserContribListViewModel r4 = r5.getViewModel()
                int r4 = r4.excludedFiltersCount()
                java.lang.String r4 = java.lang.String.valueOf(r4)
                r0.setText(r4)
                android.widget.ImageView r4 = r6.filterButton
                android.content.res.ColorStateList r5 = okhttp3.Cache.Companion.getThemedColorStateList(r5, r3)
                r4.setImageTintList(r5)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: org.wikipedia.usercontrib.UserContribListActivity.SearchBarViewHolder.<init>(org.wikipedia.usercontrib.UserContribListActivity, org.wikipedia.databinding.ViewWatchlistSearchBarBinding):void");
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class SeparatorViewHolder extends RecyclerView.ViewHolder {
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class StatsViewHolder extends RecyclerView.ViewHolder {
        public final UserContribStatsView view;

        public StatsViewHolder(UserContribStatsView userContribStatsView) {
            super(userContribStatsView);
            this.view = userContribStatsView;
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class UserContribLinkHandler extends LinkHandler {
        public int lastX;
        public int lastY;
        public WikiSite wikiSite;

        public UserContribLinkHandler(UserContribListActivity userContribListActivity) {
            super(userContribListActivity);
        }

        @Override // org.wikipedia.page.LinkHandler
        public final WikiSite getWikiSite() {
            WikiSite wikiSite = this.wikiSite;
            if (wikiSite != null) {
                return wikiSite;
            }
            Intrinsics.throwUninitializedPropertyAccessException("wikiSite");
            throw null;
        }

        @Override // org.wikipedia.page.LinkHandler
        public final void onInternalLinkClicked(PageTitle pageTitle) {
            UserTalkPopupHelper.show$default(UserTalkPopupHelper.INSTANCE, UserContribListActivity.this, pageTitle, false, this.lastX, this.lastY, Constants.InvokeSource.USER_CONTRIB_ACTIVITY, 38, false, null, null, 1792);
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class UserContribListItemHolder extends RecyclerView.ViewHolder implements UserContribItemView.Listener {
        public UserContribution contrib;
        public final UserContribItemView view;

        public UserContribListItemHolder(UserContribItemView userContribItemView) {
            super(userContribItemView);
            this.view = userContribItemView;
        }
    }

    public UserContribListActivity() {
        final int i = 2;
        this.userContribStatsAdapter = new SearchBarAdapter(this, i);
        final int i2 = 0;
        this.userContribSearchBarAdapter = new SearchBarAdapter(this, i2);
        final int i3 = 1;
        this.userContribEmptyMessagesAdapter = new SearchBarAdapter(this, i3);
        int i4 = 4;
        this.loadHeader = new CategoryActivity.LoadingItemAdapter(this, new Function0(this) { // from class: org.wikipedia.usercontrib.UserContribListActivity$$ExternalSyntheticLambda2
            public final /* synthetic */ UserContribListActivity f$0;

            {
                this.f$0 = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i5 = i2;
                Unit unit = Unit.INSTANCE;
                UserContribListActivity userContribListActivity = this.f$0;
                switch (i5) {
                    case 0:
                        userContribListActivity.userContribListAdapter.retry();
                        break;
                    default:
                        userContribListActivity.userContribListAdapter.retry();
                        break;
                }
                return unit;
            }
        }, i4);
        this.loadFooter = new CategoryActivity.LoadingItemAdapter(this, new Function0(this) { // from class: org.wikipedia.usercontrib.UserContribListActivity$$ExternalSyntheticLambda2
            public final /* synthetic */ UserContribListActivity f$0;

            {
                this.f$0 = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i5 = i3;
                Unit unit = Unit.INSTANCE;
                UserContribListActivity userContribListActivity = this.f$0;
                switch (i5) {
                    case 0:
                        userContribListActivity.userContribListAdapter.retry();
                        break;
                    default:
                        userContribListActivity.userContribListAdapter.retry();
                        break;
                }
                return unit;
            }
        }, i4);
        this.viewModel$delegate = new Request.Builder(Reflection.factory.getOrCreateKotlinClass(UserContribListViewModel.class), new Function0(this) { // from class: org.wikipedia.usercontrib.UserContribListActivity$special$$inlined$viewModels$default$1
            public final /* synthetic */ UserContribListActivity $this_viewModels;

            {
                this.$this_viewModels = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i5 = i3;
                UserContribListActivity userContribListActivity = this.$this_viewModels;
                switch (i5) {
                    case 0:
                        return userContribListActivity.getDefaultViewModelProviderFactory();
                    case 1:
                        return userContribListActivity.getViewModelStore();
                    default:
                        return userContribListActivity.getDefaultViewModelCreationExtras();
                }
            }
        }, new Function0(this) { // from class: org.wikipedia.usercontrib.UserContribListActivity$special$$inlined$viewModels$default$1
            public final /* synthetic */ UserContribListActivity $this_viewModels;

            {
                this.$this_viewModels = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i5 = i2;
                UserContribListActivity userContribListActivity = this.$this_viewModels;
                switch (i5) {
                    case 0:
                        return userContribListActivity.getDefaultViewModelProviderFactory();
                    case 1:
                        return userContribListActivity.getViewModelStore();
                    default:
                        return userContribListActivity.getDefaultViewModelCreationExtras();
                }
            }
        }, new Function0(this) { // from class: org.wikipedia.usercontrib.UserContribListActivity$special$$inlined$viewModels$default$1
            public final /* synthetic */ UserContribListActivity $this_viewModels;

            {
                this.$this_viewModels = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i5 = i;
                UserContribListActivity userContribListActivity = this.$this_viewModels;
                switch (i5) {
                    case 0:
                        return userContribListActivity.getDefaultViewModelProviderFactory();
                    case 1:
                        return userContribListActivity.getViewModelStore();
                    default:
                        return userContribListActivity.getDefaultViewModelCreationExtras();
                }
            }
        });
    }

    public final UserContribListViewModel getViewModel() {
        return (UserContribListViewModel) this.viewModel$delegate.getValue();
    }

    @Override // org.wikipedia.activity.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Continuation continuation = null;
        int i = 0;
        View inflate = getLayoutInflater().inflate(R.layout.activity_user_contrib, (ViewGroup) null, false);
        int i2 = R.id.refresh_container;
        WikiSwipeRefreshLayout wikiSwipeRefreshLayout = (WikiSwipeRefreshLayout) Room.findChildViewById(inflate, R.id.refresh_container);
        if (wikiSwipeRefreshLayout != null) {
            i2 = R.id.toolbar;
            MaterialToolbar materialToolbar = (MaterialToolbar) Room.findChildViewById(inflate, R.id.toolbar);
            if (materialToolbar != null) {
                i2 = R.id.user_contrib_coordinator;
                if (((CoordinatorLayout) Room.findChildViewById(inflate, R.id.user_contrib_coordinator)) != null) {
                    i2 = R.id.user_contrib_recycler;
                    RecyclerView recyclerView = (RecyclerView) Room.findChildViewById(inflate, R.id.user_contrib_recycler);
                    if (recyclerView != null) {
                        LinearLayout linearLayout = (LinearLayout) inflate;
                        this.binding = new MultipartBody.Builder(linearLayout, wikiSwipeRefreshLayout, materialToolbar, recyclerView);
                        setContentView(linearLayout);
                        MultipartBody.Builder builder = this.binding;
                        if (builder == null) {
                            Intrinsics.throwUninitializedPropertyAccessException("binding");
                            throw null;
                        }
                        setSupportActionBar((MaterialToolbar) builder.type);
                        ContextsKt supportActionBar = getSupportActionBar();
                        if (supportActionBar != null) {
                            supportActionBar.setDisplayShowTitleEnabled(false);
                        }
                        ContextsKt supportActionBar2 = getSupportActionBar();
                        if (supportActionBar2 != null) {
                            StringUtil stringUtil = StringUtil.INSTANCE;
                            supportActionBar2.setTitle(getString(R.string.user_contrib_activity_title, StringUtil.fromHtml(getViewModel().userName)));
                        }
                        UserContribLinkHandler userContribLinkHandler = new UserContribLinkHandler(this);
                        this.linkHandler = userContribLinkHandler;
                        userContribLinkHandler.wikiSite = getViewModel().getWikiSite();
                        MultipartBody.Builder builder2 = this.binding;
                        if (builder2 == null) {
                            Intrinsics.throwUninitializedPropertyAccessException("binding");
                            throw null;
                        }
                        ((WikiSwipeRefreshLayout) builder2.boundary).setOnRefreshListener(new UserContribListActivity$$ExternalSyntheticLambda0(this));
                        MultipartBody.Builder builder3 = this.binding;
                        if (builder3 == null) {
                            Intrinsics.throwUninitializedPropertyAccessException("binding");
                            throw null;
                        }
                        ((RecyclerView) builder3.parts).setLayoutManager(new LinearLayoutManager(1));
                        setupAdapters$1();
                        MultipartBody.Builder builder4 = this.binding;
                        if (builder4 == null) {
                            Intrinsics.throwUninitializedPropertyAccessException("binding");
                            throw null;
                        }
                        ((RecyclerView) builder4.parts).addOnScrollListener(new FastScroller.AnonymousClass2(5, this));
                        AwaitKt.launch$default(ViewModelKt.getLifecycleScope(this), null, null, new UserContribListActivity$onCreate$3(this, continuation, i), 3);
                        getViewModel().userContribStatsData.observe(this, new SingleLiveData$sam$androidx_lifecycle_Observer$0(new MainActivity$$ExternalSyntheticLambda1(28, this), 8));
                        if (getViewModel().actionModeActive) {
                            this.actionMode = startSupportActionMode(this.searchActionModeCallback);
                            return;
                        }
                        return;
                    }
                }
            }
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m$3("Missing required view with ID: ".concat(inflate.getResources().getResourceName(i2)));
    }

    public final void setupAdapters$1() {
        ActionMode actionMode = this.actionMode;
        MultipartBody.Builder builder = this.binding;
        CategoryActivity.LoadingItemAdapter loadingItemAdapter = this.loadFooter;
        CategoryActivity.CategoryMembersAdapter categoryMembersAdapter = this.userContribListAdapter;
        if (actionMode != null) {
            if (builder != null) {
                ((RecyclerView) builder.parts).setAdapter(categoryMembersAdapter.withLoadStateFooter(loadingItemAdapter));
                return;
            } else {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                throw null;
            }
        }
        if (builder == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            throw null;
        }
        RecyclerView recyclerView = (RecyclerView) builder.parts;
        ConcatAdapter withLoadStateHeaderAndFooter = categoryMembersAdapter.withLoadStateHeaderAndFooter(this.loadHeader, loadingItemAdapter);
        withLoadStateHeaderAndFooter.addAdapter(0, this.userContribStatsAdapter);
        withLoadStateHeaderAndFooter.addAdapter(1, this.userContribSearchBarAdapter);
        recyclerView.setAdapter(withLoadStateHeaderAndFooter);
    }
}
