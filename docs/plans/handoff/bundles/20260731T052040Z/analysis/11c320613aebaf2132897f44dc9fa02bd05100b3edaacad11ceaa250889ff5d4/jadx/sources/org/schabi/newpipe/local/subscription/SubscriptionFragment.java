package org.schabi.newpipe.local.subscription;

import android.content.Context;
import android.os.Bundle;
import android.os.Parcelable;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.MimeTypeMap;
import android.widget.RelativeLayout;
import androidx.activity.result.ActivityResultLauncher;
import androidx.core.app.NotificationCompat$Style;
import androidx.fragment.app.BackStackRecord;
import androidx.lifecycle.ViewModelKt;
import androidx.lifecycle.ViewModelProvider$Factory;
import androidx.lifecycle.ViewModelStore;
import androidx.lifecycle.viewmodel.CreationExtras;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.room.RoomDatabase$closeBarrier$1;
import androidx.sqlite.SQLite;
import coil3.decode.DecodeUtils$$ExternalSyntheticBUOutline0;
import com.google.common.collect.CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0;
import com.xwray.groupie.Group;
import com.xwray.groupie.GroupAdapter;
import com.xwray.groupie.Section;
import io.reactivex.rxjava3.disposables.CompositeDisposable;
import java.util.List;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.ClassReference;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import net.newpipe.app.AppKt;
import okhttp3.Cookie;
import okhttp3.Dispatcher;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;
import okio.Options;
import org.jsoup.Jsoup;
import org.jsoup.parser.TokenData;
import org.schabi.newpipe.R;
import org.schabi.newpipe.databinding.ErrorPanelBinding;
import org.schabi.newpipe.databinding.ListEmptyViewBinding;
import org.schabi.newpipe.error.ErrorInfo;
import org.schabi.newpipe.error.UserAction;
import org.schabi.newpipe.extractor.ServiceList;
import org.schabi.newpipe.extractor.StreamingService;
import org.schabi.newpipe.fragments.BaseStateFragment;
import org.schabi.newpipe.local.subscription.SubscriptionFragment;
import org.schabi.newpipe.local.subscription.SubscriptionViewModel;
import org.schabi.newpipe.local.subscription.item.ChannelItem;
import org.schabi.newpipe.local.subscription.item.FeedGroupCarouselItem;
import org.schabi.newpipe.local.subscription.item.GroupsHeader;
import org.schabi.newpipe.local.subscription.item.Header;
import org.schabi.newpipe.local.subscription.item.ImportSubscriptionsHintPlaceholderItem;
import org.schabi.newpipe.player.ui.VideoPlayerUi;
import org.schabi.newpipe.streams.io.StoredFileHelper;
import org.schabi.newpipe.util.ServiceHelper;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class SubscriptionFragment extends BaseStateFragment<SubscriptionViewModel.SubscriptionState> {
    public static final Companion Companion = new Companion();
    public static final String JSON_MIME_TYPE;
    public TokenData _binding;
    public GroupAdapter carouselAdapter;
    public FeedGroupCarouselItem feedGroupsCarousel;
    public Parcelable feedGroupsCarouselState;
    public GroupsHeader feedGroupsSortMenuItem;
    public SubscriptionsImportExportHelper importExportHelper;
    public Parcelable itemsListState;
    public final VideoPlayerUi.AnonymousClass1 listenerChannelItem;
    public SubscriptionManager subscriptionManager;
    public SubscriptionViewModel viewModel;
    public final CompositeDisposable disposables = new CompositeDisposable();
    public final GroupAdapter groupAdapter = new GroupAdapter();
    public final Section subscriptionsSection = new Section();

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class Companion {
    }

    static {
        String mimeTypeFromExtension = MimeTypeMap.getSingleton().getMimeTypeFromExtension("json");
        if (mimeTypeFromExtension == null) {
            mimeTypeFromExtension = "application/octet-stream";
        }
        JSON_MIME_TYPE = mimeTypeFromExtension;
    }

    public SubscriptionFragment() {
        setHasOptionsMenu(true);
        this.listenerChannelItem = new VideoPlayerUi.AnonymousClass1(this, 5);
    }

    @Override // org.schabi.newpipe.fragments.BaseStateFragment
    public final void hideLoading() {
        super.hideLoading();
        TokenData tokenData = this._binding;
        tokenData.getClass();
        AppKt.animate$default((RecyclerView) tokenData.builder, true, 200L, null, 0L, null, 28);
    }

    @Override // org.schabi.newpipe.fragments.BaseStateFragment, org.schabi.newpipe.BaseFragment
    public final void initViews(View view, Bundle bundle) {
        int i;
        view.getClass();
        super.initViews(view, bundle);
        int i2 = R.id.empty_state_view;
        View findChildViewById = Options.Companion.findChildViewById(R.id.empty_state_view, view);
        if (findChildViewById != null) {
            ListEmptyViewBinding.bind(findChildViewById);
            i2 = R.id.error_panel;
            View findChildViewById2 = Options.Companion.findChildViewById(R.id.error_panel, view);
            if (findChildViewById2 != null) {
                ErrorPanelBinding.bind(findChildViewById2);
                i2 = R.id.items_list;
                RecyclerView recyclerView = (RecyclerView) Options.Companion.findChildViewById(R.id.items_list, view);
                if (recyclerView != null) {
                    this._binding = new TokenData((RelativeLayout) view, recyclerView, 6);
                    SubscriptionViewModel.Companion companion = SubscriptionViewModel.Companion;
                    Context requireContext = requireContext();
                    requireContext.getClass();
                    companion.getClass();
                    final int i3 = 1;
                    if (SubscriptionViewModel.Companion.shouldUseGridForSubscription(requireContext)) {
                        Context context = getContext();
                        i = Math.max(1, context.getResources().getDisplayMetrics().widthPixels / context.getResources().getDimensionPixelSize(R.dimen.channel_item_grid_min_width));
                    } else {
                        i = 1;
                    }
                    GroupAdapter groupAdapter = this.groupAdapter;
                    groupAdapter.spanCount = i;
                    TokenData tokenData = this._binding;
                    tokenData.getClass();
                    RecyclerView recyclerView2 = (RecyclerView) tokenData.builder;
                    GridLayoutManager gridLayoutManager = new GridLayoutManager(requireContext(), groupAdapter.spanCount);
                    gridLayoutManager.mSpanSizeLookup = groupAdapter.spanSizeLookup;
                    recyclerView2.setLayoutManager(gridLayoutManager);
                    TokenData tokenData2 = this._binding;
                    tokenData2.getClass();
                    ((RecyclerView) tokenData2.builder).setAdapter(groupAdapter);
                    TokenData tokenData3 = this._binding;
                    tokenData3.getClass();
                    ((RecyclerView) tokenData3.builder).setItemAnimator(null);
                    ViewModelStore viewModelStore = getViewModelStore();
                    ViewModelProvider$Factory viewModelProviderFactory = ViewModelKt.getViewModelProviderFactory(this);
                    CreationExtras viewModelCreationExtras = ViewModelKt.getViewModelCreationExtras(this);
                    viewModelStore.getClass();
                    viewModelProviderFactory.getClass();
                    viewModelCreationExtras.getClass();
                    Dispatcher dispatcher = new Dispatcher(viewModelStore, viewModelProviderFactory, viewModelCreationExtras);
                    ClassReference orCreateKotlinClass = Reflection.getOrCreateKotlinClass(SubscriptionViewModel.class);
                    String qualifiedName = orCreateKotlinClass.getQualifiedName();
                    if (qualifiedName == null) {
                        _UtilJvmKt$$ExternalSyntheticLambda1.m$1("Local and anonymous classes can not be ViewModels");
                        return;
                    }
                    SubscriptionViewModel subscriptionViewModel = (SubscriptionViewModel) dispatcher.getViewModel$lifecycle_viewmodel("androidx.lifecycle.ViewModelProvider.DefaultKey:".concat(qualifiedName), orCreateKotlinClass);
                    this.viewModel = subscriptionViewModel;
                    final int i4 = 0;
                    subscriptionViewModel.stateLiveData.observe(getViewLifecycleOwner(), new SubscriptionFragment$sam$androidx_lifecycle_Observer$0(new Function1(this) { // from class: org.schabi.newpipe.local.subscription.SubscriptionFragment$$ExternalSyntheticLambda3
                        public final /* synthetic */ SubscriptionFragment f$0;

                        {
                            this.f$0 = this;
                        }

                        @Override // kotlin.jvm.functions.Function1
                        public final Object invoke(Object obj) {
                            int i5 = i4;
                            Unit unit = Unit.INSTANCE;
                            SubscriptionFragment subscriptionFragment = this.f$0;
                            switch (i5) {
                                case 0:
                                    SubscriptionViewModel.SubscriptionState subscriptionState = (SubscriptionViewModel.SubscriptionState) obj;
                                    if (subscriptionState == null) {
                                        SubscriptionFragment.Companion companion2 = SubscriptionFragment.Companion;
                                        return unit;
                                    }
                                    Section section = subscriptionFragment.subscriptionsSection;
                                    subscriptionFragment.hideLoading();
                                    if (!(subscriptionState instanceof SubscriptionViewModel.SubscriptionState.LoadedState)) {
                                        if (!(subscriptionState instanceof SubscriptionViewModel.SubscriptionState.ErrorState)) {
                                            DecodeUtils$$ExternalSyntheticBUOutline0.m();
                                            return null;
                                        }
                                        Throwable th = ((SubscriptionViewModel.SubscriptionState.ErrorState) subscriptionState).error;
                                        if (th == null) {
                                            return unit;
                                        }
                                        subscriptionFragment.showError(new ErrorInfo(th, UserAction.SOMETHING_ELSE, "Subscriptions", (Integer) null, 24));
                                        return unit;
                                    }
                                    List<Group> list = ((SubscriptionViewModel.SubscriptionState.LoadedState) subscriptionState).subscriptions;
                                    for (Group group : list) {
                                        if (group instanceof ChannelItem) {
                                            ChannelItem channelItem = (ChannelItem) group;
                                            channelItem.gesturesListener = subscriptionFragment.listenerChannelItem;
                                            SubscriptionViewModel.Companion companion3 = SubscriptionViewModel.Companion;
                                            Context requireContext2 = subscriptionFragment.requireContext();
                                            requireContext2.getClass();
                                            companion3.getClass();
                                            channelItem.itemVersion = SubscriptionViewModel.Companion.shouldUseGridForSubscription(requireContext2) ? ChannelItem.ItemVersion.GRID : ChannelItem.ItemVersion.MINI;
                                        }
                                    }
                                    section.update(list, true);
                                    if (section.hideWhenEmpty) {
                                        section.hideWhenEmpty = false;
                                        section.refreshEmptyState();
                                    }
                                    if (subscriptionFragment.itemsListState == null) {
                                        return unit;
                                    }
                                    TokenData tokenData4 = subscriptionFragment._binding;
                                    tokenData4.getClass();
                                    RecyclerView.LayoutManager layoutManager = ((RecyclerView) tokenData4.builder).getLayoutManager();
                                    if (layoutManager != null) {
                                        layoutManager.onRestoreInstanceState(subscriptionFragment.itemsListState);
                                    }
                                    subscriptionFragment.itemsListState = null;
                                    return unit;
                                default:
                                    Pair pair = (Pair) obj;
                                    SubscriptionFragment.Companion companion4 = SubscriptionFragment.Companion;
                                    if (pair != null) {
                                        List list2 = (List) pair.component1();
                                        boolean booleanValue = ((Boolean) pair.component2()).booleanValue();
                                        Parcelable parcelable = subscriptionFragment.feedGroupsCarouselState;
                                        if (parcelable != null) {
                                            FeedGroupCarouselItem feedGroupCarouselItem = subscriptionFragment.feedGroupsCarousel;
                                            if (feedGroupCarouselItem == null) {
                                                Intrinsics.throwUninitializedPropertyAccessException("feedGroupsCarousel");
                                                throw null;
                                            }
                                            LinearLayoutManager linearLayoutManager = feedGroupCarouselItem.carouselLayoutManager;
                                            if (linearLayoutManager != null) {
                                                linearLayoutManager.onRestoreInstanceState(parcelable);
                                            }
                                            feedGroupCarouselItem.listState = parcelable;
                                            subscriptionFragment.feedGroupsCarouselState = null;
                                        }
                                        TokenData tokenData5 = subscriptionFragment._binding;
                                        tokenData5.getClass();
                                        ((RecyclerView) tokenData5.builder).post(new SubscriptionFragment$$ExternalSyntheticLambda9(subscriptionFragment, booleanValue, list2));
                                    }
                                    return unit;
                            }
                        }
                    }, 0));
                    SubscriptionViewModel subscriptionViewModel2 = this.viewModel;
                    if (subscriptionViewModel2 == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("viewModel");
                        throw null;
                    }
                    subscriptionViewModel2.feedGroupsLiveData.observe(getViewLifecycleOwner(), new SubscriptionFragment$sam$androidx_lifecycle_Observer$0(new Function1(this) { // from class: org.schabi.newpipe.local.subscription.SubscriptionFragment$$ExternalSyntheticLambda3
                        public final /* synthetic */ SubscriptionFragment f$0;

                        {
                            this.f$0 = this;
                        }

                        @Override // kotlin.jvm.functions.Function1
                        public final Object invoke(Object obj) {
                            int i5 = i3;
                            Unit unit = Unit.INSTANCE;
                            SubscriptionFragment subscriptionFragment = this.f$0;
                            switch (i5) {
                                case 0:
                                    SubscriptionViewModel.SubscriptionState subscriptionState = (SubscriptionViewModel.SubscriptionState) obj;
                                    if (subscriptionState == null) {
                                        SubscriptionFragment.Companion companion2 = SubscriptionFragment.Companion;
                                        return unit;
                                    }
                                    Section section = subscriptionFragment.subscriptionsSection;
                                    subscriptionFragment.hideLoading();
                                    if (!(subscriptionState instanceof SubscriptionViewModel.SubscriptionState.LoadedState)) {
                                        if (!(subscriptionState instanceof SubscriptionViewModel.SubscriptionState.ErrorState)) {
                                            DecodeUtils$$ExternalSyntheticBUOutline0.m();
                                            return null;
                                        }
                                        Throwable th = ((SubscriptionViewModel.SubscriptionState.ErrorState) subscriptionState).error;
                                        if (th == null) {
                                            return unit;
                                        }
                                        subscriptionFragment.showError(new ErrorInfo(th, UserAction.SOMETHING_ELSE, "Subscriptions", (Integer) null, 24));
                                        return unit;
                                    }
                                    List<Group> list = ((SubscriptionViewModel.SubscriptionState.LoadedState) subscriptionState).subscriptions;
                                    for (Group group : list) {
                                        if (group instanceof ChannelItem) {
                                            ChannelItem channelItem = (ChannelItem) group;
                                            channelItem.gesturesListener = subscriptionFragment.listenerChannelItem;
                                            SubscriptionViewModel.Companion companion3 = SubscriptionViewModel.Companion;
                                            Context requireContext2 = subscriptionFragment.requireContext();
                                            requireContext2.getClass();
                                            companion3.getClass();
                                            channelItem.itemVersion = SubscriptionViewModel.Companion.shouldUseGridForSubscription(requireContext2) ? ChannelItem.ItemVersion.GRID : ChannelItem.ItemVersion.MINI;
                                        }
                                    }
                                    section.update(list, true);
                                    if (section.hideWhenEmpty) {
                                        section.hideWhenEmpty = false;
                                        section.refreshEmptyState();
                                    }
                                    if (subscriptionFragment.itemsListState == null) {
                                        return unit;
                                    }
                                    TokenData tokenData4 = subscriptionFragment._binding;
                                    tokenData4.getClass();
                                    RecyclerView.LayoutManager layoutManager = ((RecyclerView) tokenData4.builder).getLayoutManager();
                                    if (layoutManager != null) {
                                        layoutManager.onRestoreInstanceState(subscriptionFragment.itemsListState);
                                    }
                                    subscriptionFragment.itemsListState = null;
                                    return unit;
                                default:
                                    Pair pair = (Pair) obj;
                                    SubscriptionFragment.Companion companion4 = SubscriptionFragment.Companion;
                                    if (pair != null) {
                                        List list2 = (List) pair.component1();
                                        boolean booleanValue = ((Boolean) pair.component2()).booleanValue();
                                        Parcelable parcelable = subscriptionFragment.feedGroupsCarouselState;
                                        if (parcelable != null) {
                                            FeedGroupCarouselItem feedGroupCarouselItem = subscriptionFragment.feedGroupsCarousel;
                                            if (feedGroupCarouselItem == null) {
                                                Intrinsics.throwUninitializedPropertyAccessException("feedGroupsCarousel");
                                                throw null;
                                            }
                                            LinearLayoutManager linearLayoutManager = feedGroupCarouselItem.carouselLayoutManager;
                                            if (linearLayoutManager != null) {
                                                linearLayoutManager.onRestoreInstanceState(parcelable);
                                            }
                                            feedGroupCarouselItem.listState = parcelable;
                                            subscriptionFragment.feedGroupsCarouselState = null;
                                        }
                                        TokenData tokenData5 = subscriptionFragment._binding;
                                        tokenData5.getClass();
                                        ((RecyclerView) tokenData5.builder).post(new SubscriptionFragment$$ExternalSyntheticLambda9(subscriptionFragment, booleanValue, list2));
                                    }
                                    return unit;
                            }
                        }
                    }, 0));
                    Section section = new Section();
                    GroupAdapter groupAdapter2 = new GroupAdapter();
                    this.carouselAdapter = groupAdapter2;
                    groupAdapter2.onItemClickListener = new SubscriptionFragment$$ExternalSyntheticLambda7(this);
                    groupAdapter2.onItemLongClickListener = new SubscriptionFragment$$ExternalSyntheticLambda7(this);
                    GroupAdapter groupAdapter3 = this.carouselAdapter;
                    if (groupAdapter3 == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("carouselAdapter");
                        throw null;
                    }
                    SubscriptionViewModel subscriptionViewModel3 = this.viewModel;
                    if (subscriptionViewModel3 == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("viewModel");
                        throw null;
                    }
                    this.feedGroupsCarousel = new FeedGroupCarouselItem(groupAdapter3, subscriptionViewModel3.getListViewMode());
                    String string = getString(R.string.feed_groups_header_title);
                    string.getClass();
                    RoomDatabase$closeBarrier$1 roomDatabase$closeBarrier$1 = new RoomDatabase$closeBarrier$1(0, this, SubscriptionFragment.class, "openReorderDialog", "openReorderDialog()V", 0, 5);
                    RoomDatabase$closeBarrier$1 roomDatabase$closeBarrier$12 = new RoomDatabase$closeBarrier$1(0, this, SubscriptionFragment.class, "toggleListViewMode", "toggleListViewMode()V", 0, 6);
                    SubscriptionViewModel subscriptionViewModel4 = this.viewModel;
                    if (subscriptionViewModel4 == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("viewModel");
                        throw null;
                    }
                    GroupsHeader groupsHeader = new GroupsHeader(string, roomDatabase$closeBarrier$1, roomDatabase$closeBarrier$12, subscriptionViewModel4.getListViewMode());
                    this.feedGroupsSortMenuItem = groupsHeader;
                    FeedGroupCarouselItem feedGroupCarouselItem = this.feedGroupsCarousel;
                    if (feedGroupCarouselItem == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("feedGroupsCarousel");
                        throw null;
                    }
                    Section section2 = new Section(groupsHeader, Jsoup.listOf(feedGroupCarouselItem));
                    section2.registerGroupDataObserver(section);
                    int itemCountWithoutFooter = section.getItemCountWithoutFooter();
                    section.children.add(section2);
                    section.notifyItemRangeInserted(itemCountWithoutFooter, section2.getItemCount());
                    section.refreshEmptyState();
                    groupAdapter.clear();
                    groupAdapter.add(section);
                    ImportSubscriptionsHintPlaceholderItem importSubscriptionsHintPlaceholderItem = new ImportSubscriptionsHintPlaceholderItem();
                    Section section3 = this.subscriptionsSection;
                    ImportSubscriptionsHintPlaceholderItem importSubscriptionsHintPlaceholderItem2 = section3.placeholder;
                    if (importSubscriptionsHintPlaceholderItem2 != null) {
                        if (section3.isPlaceholderVisible && importSubscriptionsHintPlaceholderItem2 != null) {
                            section3.isPlaceholderVisible = false;
                            int headerItemCount = section3.getHeaderItemCount();
                            section3.placeholder.getClass();
                            section3.observable.onItemRangeRemoved(section3, headerItemCount, 1);
                        }
                        section3.placeholder = null;
                    }
                    section3.placeholder = importSubscriptionsHintPlaceholderItem;
                    section3.refreshEmptyState();
                    if (!section3.hideWhenEmpty) {
                        section3.hideWhenEmpty = true;
                        section3.refreshEmptyState();
                    }
                    String string2 = getString(R.string.tab_subscriptions);
                    string2.getClass();
                    groupAdapter.add(new Section(new Header(string2), Jsoup.listOf(section3)));
                    return;
                }
            }
        }
        CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0.m$1("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @Override // org.schabi.newpipe.BaseFragment, androidx.fragment.app.Fragment
    public final void onAttach(Context context) {
        context.getClass();
        super.onAttach(context);
        Context requireContext = requireContext();
        requireContext.getClass();
        this.subscriptionManager = new SubscriptionManager(requireContext);
        this.importExportHelper = new SubscriptionsImportExportHelper(this);
    }

    @Override // androidx.fragment.app.Fragment
    public final void onCreateOptionsMenu(Menu menu, MenuInflater menuInflater) {
        menu.getClass();
        menuInflater.getClass();
        Options.Companion supportActionBar = this.activity.getSupportActionBar();
        final int i = 1;
        if (supportActionBar != null) {
            supportActionBar.setDisplayShowTitleEnabled(true);
        }
        Options.Companion supportActionBar2 = this.activity.getSupportActionBar();
        if (supportActionBar2 != null) {
            supportActionBar2.setTitle(R.string.tab_subscriptions);
        }
        SubMenu addSubMenu = menu.addSubMenu(R.string.import_from);
        addSubMenu.getClass();
        final int i2 = 0;
        final Runnable runnable = new Runnable(this) { // from class: org.schabi.newpipe.local.subscription.SubscriptionFragment$$ExternalSyntheticLambda0
            public final /* synthetic */ SubscriptionFragment f$0;

            {
                this.f$0 = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                int i3 = i2;
                SubscriptionFragment subscriptionFragment = this.f$0;
                switch (i3) {
                    case 0:
                        SubscriptionsImportExportHelper subscriptionsImportExportHelper = subscriptionFragment.importExportHelper;
                        if (subscriptionsImportExportHelper == null) {
                            Intrinsics.throwUninitializedPropertyAccessException("importExportHelper");
                            throw null;
                        }
                        ActivityResultLauncher activityResultLauncher = subscriptionsImportExportHelper.requestImportLauncher;
                        Context context = subscriptionsImportExportHelper.context;
                        SubscriptionFragment.Companion.getClass();
                        Cookie.Companion.launchSafe(activityResultLauncher, StoredFileHelper.getPicker(context, SubscriptionFragment.JSON_MIME_TYPE), SubscriptionsImportExportHelper.TAG, context);
                        return;
                    default:
                        SubscriptionsImportExportHelper subscriptionsImportExportHelper2 = subscriptionFragment.importExportHelper;
                        if (subscriptionsImportExportHelper2 != null) {
                            subscriptionsImportExportHelper2.onExportSelected();
                            return;
                        } else {
                            Intrinsics.throwUninitializedPropertyAccessException("importExportHelper");
                            throw null;
                        }
                }
            }
        };
        MenuItem add = addSubMenu.add(R.string.previous_export);
        add.getClass();
        add.setOnMenuItemClickListener(new MenuItem.OnMenuItemClickListener() { // from class: org.schabi.newpipe.local.subscription.SubscriptionFragment$$ExternalSyntheticLambda6
            @Override // android.view.MenuItem.OnMenuItemClickListener
            public final boolean onMenuItemClick(MenuItem menuItem) {
                SubscriptionFragment.Companion companion = SubscriptionFragment.Companion;
                menuItem.getClass();
                runnable.run();
                return true;
            }
        });
        add.setIcon(R.drawable.ic_backup);
        for (final StreamingService streamingService : ServiceList.SERVICES) {
            NotificationCompat$Style subscriptionExtractor = streamingService.getSubscriptionExtractor();
            if (subscriptionExtractor != null && !((List) subscriptionExtractor.mBuilder).isEmpty()) {
                String str = streamingService.serviceInfo.name;
                final Runnable runnable2 = new Runnable() { // from class: org.schabi.newpipe.local.subscription.SubscriptionFragment$$ExternalSyntheticLambda1
                    @Override // java.lang.Runnable
                    public final void run() {
                        SubscriptionFragment.Companion companion = SubscriptionFragment.Companion;
                        int i3 = streamingService.serviceId;
                        BackStackRecord defaultTransaction = SQLite.defaultTransaction(SubscriptionFragment.this.getFM());
                        SubscriptionsImportFragment subscriptionsImportFragment = new SubscriptionsImportFragment();
                        subscriptionsImportFragment.currentServiceId = i3;
                        defaultTransaction.replace(R.id.fragment_holder, subscriptionsImportFragment, null);
                        defaultTransaction.addToBackStack(null);
                        defaultTransaction.commit();
                    }
                };
                MenuItem add2 = addSubMenu.add(str);
                add2.getClass();
                add2.setOnMenuItemClickListener(new MenuItem.OnMenuItemClickListener() { // from class: org.schabi.newpipe.local.subscription.SubscriptionFragment$$ExternalSyntheticLambda6
                    @Override // android.view.MenuItem.OnMenuItemClickListener
                    public final boolean onMenuItemClick(MenuItem menuItem) {
                        SubscriptionFragment.Companion companion = SubscriptionFragment.Companion;
                        menuItem.getClass();
                        runnable2.run();
                        return true;
                    }
                });
                add2.setIcon(ServiceHelper.getIcon(streamingService.serviceId));
            }
        }
        SubMenu addSubMenu2 = menu.addSubMenu(R.string.export_to);
        addSubMenu2.getClass();
        final Runnable runnable3 = new Runnable(this) { // from class: org.schabi.newpipe.local.subscription.SubscriptionFragment$$ExternalSyntheticLambda0
            public final /* synthetic */ SubscriptionFragment f$0;

            {
                this.f$0 = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                int i3 = i;
                SubscriptionFragment subscriptionFragment = this.f$0;
                switch (i3) {
                    case 0:
                        SubscriptionsImportExportHelper subscriptionsImportExportHelper = subscriptionFragment.importExportHelper;
                        if (subscriptionsImportExportHelper == null) {
                            Intrinsics.throwUninitializedPropertyAccessException("importExportHelper");
                            throw null;
                        }
                        ActivityResultLauncher activityResultLauncher = subscriptionsImportExportHelper.requestImportLauncher;
                        Context context = subscriptionsImportExportHelper.context;
                        SubscriptionFragment.Companion.getClass();
                        Cookie.Companion.launchSafe(activityResultLauncher, StoredFileHelper.getPicker(context, SubscriptionFragment.JSON_MIME_TYPE), SubscriptionsImportExportHelper.TAG, context);
                        return;
                    default:
                        SubscriptionsImportExportHelper subscriptionsImportExportHelper2 = subscriptionFragment.importExportHelper;
                        if (subscriptionsImportExportHelper2 != null) {
                            subscriptionsImportExportHelper2.onExportSelected();
                            return;
                        } else {
                            Intrinsics.throwUninitializedPropertyAccessException("importExportHelper");
                            throw null;
                        }
                }
            }
        };
        MenuItem add3 = addSubMenu2.add(R.string.file);
        add3.getClass();
        add3.setOnMenuItemClickListener(new MenuItem.OnMenuItemClickListener() { // from class: org.schabi.newpipe.local.subscription.SubscriptionFragment$$ExternalSyntheticLambda6
            @Override // android.view.MenuItem.OnMenuItemClickListener
            public final boolean onMenuItemClick(MenuItem menuItem) {
                SubscriptionFragment.Companion companion = SubscriptionFragment.Companion;
                menuItem.getClass();
                runnable3.run();
                return true;
            }
        });
        add3.setIcon(R.drawable.ic_save);
    }

    @Override // androidx.fragment.app.Fragment
    public final View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        layoutInflater.getClass();
        return layoutInflater.inflate(R.layout.fragment_subscription, viewGroup, false);
    }

    @Override // androidx.fragment.app.Fragment
    public final void onDestroy() {
        super.onDestroy();
        this.disposables.dispose();
    }

    @Override // org.schabi.newpipe.fragments.BaseStateFragment, androidx.fragment.app.Fragment
    public final void onDestroyView() {
        super.onDestroyView();
        this._binding = null;
    }

    @Override // org.schabi.newpipe.fragments.BaseStateFragment, androidx.fragment.app.Fragment
    public final void onPause() {
        super.onPause();
        TokenData tokenData = this._binding;
        tokenData.getClass();
        RecyclerView.LayoutManager layoutManager = ((RecyclerView) tokenData.builder).getLayoutManager();
        this.itemsListState = layoutManager != null ? layoutManager.onSaveInstanceState() : null;
        FeedGroupCarouselItem feedGroupCarouselItem = this.feedGroupsCarousel;
        if (feedGroupCarouselItem == null) {
            Intrinsics.throwUninitializedPropertyAccessException("feedGroupsCarousel");
            throw null;
        }
        LinearLayoutManager linearLayoutManager = feedGroupCarouselItem.carouselLayoutManager;
        Parcelable onSaveInstanceState = linearLayoutManager != null ? linearLayoutManager.onSaveInstanceState() : null;
        feedGroupCarouselItem.listState = onSaveInstanceState;
        this.feedGroupsCarouselState = onSaveInstanceState;
    }

    @Override // org.schabi.newpipe.fragments.BaseStateFragment
    public final void showLoading() {
        super.showLoading();
        TokenData tokenData = this._binding;
        tokenData.getClass();
        AppKt.animate$default((RecyclerView) tokenData.builder, false, 100L, null, 0L, null, 28);
    }

    @Override // org.schabi.newpipe.fragments.BaseStateFragment
    public final void doInitialLoadLogic() {
    }

    @Override // org.schabi.newpipe.fragments.BaseStateFragment
    public final void startLoading(boolean z) {
    }
}
