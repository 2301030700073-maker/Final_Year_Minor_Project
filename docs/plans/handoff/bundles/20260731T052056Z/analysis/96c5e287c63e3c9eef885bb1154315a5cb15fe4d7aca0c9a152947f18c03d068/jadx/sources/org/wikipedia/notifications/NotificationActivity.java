package org.wikipedia.notifications;

import android.content.Context;
import android.content.Intent;
import android.content.res.TypedArray;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.util.TypedValue;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.PopupWindow;
import android.widget.ProgressBar;
import android.widget.TextView;
import android.widget.Toast;
import androidx.activity.result.ActivityResultRegistry$register$2;
import androidx.appcompat.view.ActionMode;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.compose.animation.core.Animation;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.view.ViewCompat;
import androidx.fragment.app.FragmentManager$FragmentIntentSenderContract;
import androidx.lifecycle.ViewModelKt;
import androidx.recyclerview.widget.ItemTouchHelper;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.room.Room;
import coil3.util.ContextsKt;
import com.google.android.material.appbar.AppBarLayout;
import com.google.android.material.appbar.MaterialToolbar;
import com.google.android.material.snackbar.Snackbar;
import com.google.android.material.tabs.TabLayout;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Random;
import java.util.WeakHashMap;
import kotlin.Metadata;
import kotlin.TuplesKt;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.text.RegexKt;
import kotlinx.coroutines.AwaitKt;
import okhttp3.Request;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import okio.Okio__OkioKt;
import org.jsoup.Jsoup;
import org.wikipedia.Constants;
import org.wikipedia.R;
import org.wikipedia.WikipediaApp;
import org.wikipedia.activity.BaseActivity;
import org.wikipedia.databinding.ItemNotificationBinding;
import org.wikipedia.dataclient.WikiSite;
import org.wikipedia.diff.DiffUtil$DiffLinesAdapter;
import org.wikipedia.login.LoginClient$login$$inlined$CoroutineExceptionHandler$1;
import org.wikipedia.notifications.db.Notification;
import org.wikipedia.page.LinkMovementMethodExt;
import org.wikipedia.readinglist.ReadingListFragment;
import org.wikipedia.settings.NotificationSettingsActivity;
import org.wikipedia.settings.Prefs;
import org.wikipedia.settings.PrefsIoUtil;
import org.wikipedia.talk.TalkTopicActivity;
import org.wikipedia.talk.TalkTopicsViewModel$subscribeTopic$1;
import org.wikipedia.util.ShareUtil;
import org.wikipedia.util.StringUtil;
import org.wikipedia.views.DrawableItemDecoration;
import org.wikipedia.views.LanguageScrollView;
import org.wikipedia.views.NotificationActionsOverflowView;
import org.wikipedia.views.SearchAndFilterActionProvider;
import org.wikipedia.views.SwipeableItemTouchHelperCallback;
import org.wikipedia.views.WikiCardView;
import org.wikipedia.views.WikiErrorView;
import org.wikipedia.views.WikiSwipeRefreshLayout;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\t\b\u0007\u0018\u00002\u00020\u0001:\u0006\u0004\u0005\u0006\u0007\b\tB\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\n"}, d2 = {"Lorg/wikipedia/notifications/NotificationActivity;", "Lorg/wikipedia/activity/BaseActivity;", "<init>", "()V", "NotificationItemHolder", "NotificationSearchBarHolder", "DiffLinesAdapter", "SearchCallback", "MultiSelectCallback", "Companion", "app"}, k = 1, mv = {2, 3, 0}, xi = 48)
/* loaded from: classes.dex */
public final class NotificationActivity extends BaseActivity {
    public static final /* synthetic */ int $r8$clinit = 0;
    public ActionMode actionMode;
    public ItemNotificationBinding binding;
    public Drawable externalLinkIcon;
    public boolean fromContinuation;
    public final ReadingListFragment.MultiSelectCallback multiSelectActionModeCallback;
    public NotificationActionsOverflowView notificationActionOverflowView;
    public final TalkTopicActivity.SearchCallback searchActionModeCallback;
    public final Request.Builder viewModel$delegate;
    public final ArrayList notificationContainerList = new ArrayList();
    public final Typeface typefaceSansSerifBold = Typeface.create("sans-serif", 1);
    public final ActivityResultRegistry$register$2 resultLauncher = (ActivityResultRegistry$register$2) registerForActivityResult(new NotificationActivity$$ExternalSyntheticLambda0(this), new FragmentManager$FragmentIntentSenderContract(3));

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class NotificationItemHolder extends RecyclerView.ViewHolder implements View.OnClickListener, View.OnLongClickListener, SwipeableItemTouchHelperCallback.Callback {
        public final ItemNotificationBinding binding;
        public NotificationListItemContainer container;
        public int itemPosition;
        public NotificationLinkHandler linkHandler;

        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public NotificationItemHolder(org.wikipedia.databinding.ItemNotificationBinding r2) {
            /*
                r0 = this;
                org.wikipedia.notifications.NotificationActivity.this = r1
                java.lang.Object r1 = r2.rootView
                androidx.constraintlayout.widget.ConstraintLayout r1 = (androidx.constraintlayout.widget.ConstraintLayout) r1
                r0.<init>(r1)
                r0.binding = r2
                r2 = -1
                r0.itemPosition = r2
                r1.setOnClickListener(r0)
                r1.setOnLongClickListener(r0)
                r0 = 1
                android.view.View[] r0 = new android.view.View[r0]
                r2 = 0
                r0[r2] = r1
                r0 = r0[r2]
                org.wikipedia.util.DeviceUtil$$ExternalSyntheticLambda0 r1 = new org.wikipedia.util.DeviceUtil$$ExternalSyntheticLambda0
                r1.<init>()
                r0.setOnContextClickListener(r1)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: org.wikipedia.notifications.NotificationActivity.NotificationItemHolder.<init>(org.wikipedia.notifications.NotificationActivity, org.wikipedia.databinding.ItemNotificationBinding):void");
        }

        public final NotificationListItemContainer getContainer() {
            NotificationListItemContainer notificationListItemContainer = this.container;
            if (notificationListItemContainer != null) {
                return notificationListItemContainer;
            }
            Intrinsics.throwUninitializedPropertyAccessException("container");
            throw null;
        }

        @Override // org.wikipedia.views.SwipeableItemTouchHelperCallback.Callback
        public final boolean isSwipeable() {
            return true;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            Notification.Links links;
            Notification.Link primary;
            view.getClass();
            NotificationActivity notificationActivity = NotificationActivity.this;
            ActionMode actionMode = notificationActivity.actionMode;
            if (actionMode != null && "multiSelectActionMode".equals(actionMode.mTag)) {
                notificationActivity.toggleSelectItem(getContainer(), this.itemPosition);
                return;
            }
            Notification notification = getContainer().notification;
            notification.getClass();
            notificationActivity.markReadItems(Room.listOf(getContainer()), false, true, Integer.valueOf(this.itemPosition));
            Notification.Contents contents = notification.contents;
            if (contents == null || (links = contents.links) == null || (primary = links.getPrimary()) == null) {
                return;
            }
            String str = primary.url;
            if (str.length() > 0) {
                NotificationLinkHandler notificationLinkHandler = this.linkHandler;
                if (notificationLinkHandler == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("linkHandler");
                    throw null;
                }
                notificationLinkHandler.wikiSite = new WikiSite(str);
                NotificationLinkHandler notificationLinkHandler2 = this.linkHandler;
                if (notificationLinkHandler2 != null) {
                    notificationLinkHandler2.onUrlClick(str, null, "");
                } else {
                    Intrinsics.throwUninitializedPropertyAccessException("linkHandler");
                    throw null;
                }
            }
        }

        @Override // android.view.View.OnLongClickListener
        public final boolean onLongClick(View view) {
            view.getClass();
            NotificationActivity notificationActivity = NotificationActivity.this;
            ActionMode actionMode = notificationActivity.actionMode;
            if (actionMode != null) {
                return false;
            }
            if ("searchActionMode".equals(actionMode != null ? actionMode.mTag : null)) {
                notificationActivity.finishActionMode$1();
            }
            ActionMode actionMode2 = notificationActivity.actionMode;
            if (actionMode2 == null || !"multiSelectActionMode".equals(actionMode2.mTag)) {
                notificationActivity.startSupportActionMode(notificationActivity.multiSelectActionModeCallback);
            }
            notificationActivity.toggleSelectItem(getContainer(), this.itemPosition);
            return true;
        }

        @Override // org.wikipedia.views.SwipeableItemTouchHelperCallback.Callback
        public final void onSwipe() {
            if (getContainer().notification != null) {
                NotificationActivity.markReadItems$default(NotificationActivity.this, Room.listOf(getContainer()), !r0.isUnread(), Integer.valueOf(this.itemPosition), 4);
            }
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class NotificationSearchBarHolder extends RecyclerView.ViewHolder {
        public final AppCompatImageView notificationFilterButton;
        public final TextView notificationFilterCountView;

        public NotificationSearchBarHolder(View view) {
            super(view);
            View findViewById = view.findViewById(R.id.notification_filter_button);
            findViewById.getClass();
            AppCompatImageView appCompatImageView = (AppCompatImageView) findViewById;
            this.notificationFilterButton = appCompatImageView;
            View findViewById2 = view.findViewById(R.id.filter_count);
            findViewById2.getClass();
            this.notificationFilterCountView = (TextView) findViewById2;
            WikiCardView wikiCardView = (WikiCardView) view;
            TypedValue typedValue = new TypedValue();
            typedValue = NotificationActivity.this.getTheme().resolveAttribute(R.attr.background_color, typedValue, true) ? typedValue : null;
            if (typedValue == null) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m("Attribute not found; ID=2130968673");
                throw null;
            }
            wikiCardView.setCardBackgroundColor(typedValue.data);
            view.setOnClickListener(new NotificationActivity$$ExternalSyntheticLambda3(NotificationActivity.this, 2));
            appCompatImageView.setOnClickListener(new NotificationActivity$$ExternalSyntheticLambda3(NotificationActivity.this, 3));
            View view2 = new View[]{appCompatImageView}[0];
            RegexKt.setTooltipText(view2, view2.getContentDescription());
        }
    }

    public NotificationActivity() {
        final int i = 0;
        final int i2 = 1;
        final int i3 = 2;
        this.viewModel$delegate = new Request.Builder(Reflection.factory.getOrCreateKotlinClass(NotificationViewModel.class), new Function0(this) { // from class: org.wikipedia.notifications.NotificationActivity$special$$inlined$viewModels$default$1
            public final /* synthetic */ NotificationActivity $this_viewModels;

            {
                this.$this_viewModels = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i4 = i2;
                NotificationActivity notificationActivity = this.$this_viewModels;
                switch (i4) {
                    case 0:
                        return notificationActivity.getDefaultViewModelProviderFactory();
                    case 1:
                        return notificationActivity.getViewModelStore();
                    default:
                        return notificationActivity.getDefaultViewModelCreationExtras();
                }
            }
        }, new Function0(this) { // from class: org.wikipedia.notifications.NotificationActivity$special$$inlined$viewModels$default$1
            public final /* synthetic */ NotificationActivity $this_viewModels;

            {
                this.$this_viewModels = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i4 = i;
                NotificationActivity notificationActivity = this.$this_viewModels;
                switch (i4) {
                    case 0:
                        return notificationActivity.getDefaultViewModelProviderFactory();
                    case 1:
                        return notificationActivity.getViewModelStore();
                    default:
                        return notificationActivity.getDefaultViewModelCreationExtras();
                }
            }
        }, new Function0(this) { // from class: org.wikipedia.notifications.NotificationActivity$special$$inlined$viewModels$default$1
            public final /* synthetic */ NotificationActivity $this_viewModels;

            {
                this.$this_viewModels = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i4 = i3;
                NotificationActivity notificationActivity = this.$this_viewModels;
                switch (i4) {
                    case 0:
                        return notificationActivity.getDefaultViewModelProviderFactory();
                    case 1:
                        return notificationActivity.getViewModelStore();
                    default:
                        return notificationActivity.getDefaultViewModelCreationExtras();
                }
            }
        });
        this.multiSelectActionModeCallback = new ReadingListFragment.MultiSelectCallback(i2, this);
        this.searchActionModeCallback = new TalkTopicActivity.SearchCallback(i3, this);
    }

    public static /* synthetic */ void markReadItems$default(NotificationActivity notificationActivity, List list, boolean z, Integer num, int i) {
        boolean z2 = (i & 4) == 0;
        if ((i & 8) != 0) {
            num = null;
        }
        notificationActivity.markReadItems(list, z, z2, num);
    }

    public final void adjustRefreshViewLayoutParams$1(boolean z) {
        ItemNotificationBinding itemNotificationBinding = this.binding;
        if (itemNotificationBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            throw null;
        }
        WikiSwipeRefreshLayout wikiSwipeRefreshLayout = (WikiSwipeRefreshLayout) itemNotificationBinding.notificationWikiCodeImage;
        ViewGroup.LayoutParams layoutParams = wikiSwipeRefreshLayout.getLayoutParams();
        if (layoutParams == null) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$3("null cannot be cast to non-null type androidx.coordinatorlayout.widget.CoordinatorLayout.LayoutParams");
            return;
        }
        CoordinatorLayout.LayoutParams layoutParams2 = (CoordinatorLayout.LayoutParams) layoutParams;
        layoutParams2.setBehavior(z ? null : new AppBarLayout.ScrollingViewBehavior());
        int i = 0;
        if (z) {
            TypedArray obtainStyledAttributes = getTheme().obtainStyledAttributes(new int[]{R.attr.actionBarSize});
            obtainStyledAttributes.getClass();
            i = obtainStyledAttributes.getDimensionPixelSize(0, 0);
            obtainStyledAttributes.recycle();
        }
        ((ViewGroup.MarginLayoutParams) layoutParams2).topMargin = i;
        wikiSwipeRefreshLayout.setLayoutParams(layoutParams2);
    }

    public final void finishActionMode$1() {
        ActionMode actionMode = this.actionMode;
        if (actionMode != null) {
            actionMode.finish();
        }
    }

    public final int getSelectedItemCount() {
        int i = 0;
        ArrayList arrayList = this.notificationContainerList;
        if (arrayList != null && arrayList.isEmpty()) {
            return 0;
        }
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            if (((NotificationListItemContainer) it.next()).selected && (i = i + 1) < 0) {
                Room.throwCountOverflow();
                throw null;
            }
        }
        return i;
    }

    public final ArrayList getSelectedItems() {
        ArrayList arrayList = new ArrayList();
        Iterator it = this.notificationContainerList.iterator();
        while (it.hasNext()) {
            Object next = it.next();
            if (((NotificationListItemContainer) next).type != 0) {
                arrayList.add(next);
            }
        }
        ArrayList arrayList2 = new ArrayList();
        Iterator it2 = arrayList.iterator();
        while (it2.hasNext()) {
            Object next2 = it2.next();
            if (((NotificationListItemContainer) next2).selected) {
                arrayList2.add(next2);
            }
        }
        return arrayList2;
    }

    public final NotificationViewModel getViewModel() {
        return (NotificationViewModel) this.viewModel$delegate.getValue();
    }

    public final void markReadItems(final List list, final boolean z, boolean z2, Integer num) {
        WikiSite forLanguageCode;
        WikipediaApp wikipediaApp = WikipediaApp.instance;
        if (Jsoup.getInstance().isOnline()) {
            NotificationViewModel viewModel = getViewModel();
            LoginClient$login$$inlined$CoroutineExceptionHandler$1 loginClient$login$$inlined$CoroutineExceptionHandler$1 = viewModel.handler;
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            if (list.size() > 1) {
                new Random().nextLong();
            }
            Iterator it = list.iterator();
            while (it.hasNext()) {
                Notification notification = ((NotificationListItemContainer) it.next()).notification;
                notification.getClass();
                String str = notification.wiki;
                Object obj = viewModel.dbNameMap.get(str);
                if (obj == null) {
                    if (Intrinsics.areEqual(str, "commonswiki")) {
                        forLanguageCode = Constants.commonsWikiSite;
                    } else if (Intrinsics.areEqual(str, "wikidatawiki")) {
                        forLanguageCode = Constants.wikidataWikiSite;
                    } else {
                        StringUtil stringUtil = StringUtil.INSTANCE;
                        String dbNameToLangCode = StringUtil.dbNameToLangCode(str);
                        WikiSite.Companion companion = WikiSite.Companion;
                        WikipediaApp wikipediaApp2 = WikipediaApp.instance;
                        String defaultLanguageCode = Jsoup.getInstance().getLanguageState().getDefaultLanguageCode(dbNameToLangCode);
                        if (defaultLanguageCode != null) {
                            dbNameToLangCode = defaultLanguageCode;
                        }
                        companion.getClass();
                        forLanguageCode = WikiSite.Companion.forLanguageCode(dbNameToLangCode);
                    }
                    obj = forLanguageCode;
                }
                WikiSite wikiSite = (WikiSite) obj;
                Object obj2 = linkedHashMap.get(wikiSite);
                if (obj2 == null) {
                    obj2 = new ArrayList();
                    linkedHashMap.put(wikiSite, obj2);
                }
                ((List) obj2).add(notification);
            }
            AwaitKt.launch$default(ViewModelKt.getViewModelScope(viewModel), loginClient$login$$inlined$CoroutineExceptionHandler$1, null, new TalkTopicsViewModel$subscribeTopic$1(linkedHashMap, z, (Continuation) null, 4), 2);
            AwaitKt.launch$default(ViewModelKt.getViewModelScope(viewModel), loginClient$login$$inlined$CoroutineExceptionHandler$1, null, new NotificationViewModel$markItemsAsRead$3(viewModel, list, z, null), 2);
            if (!z2) {
                String quantityString = getResources().getQuantityString(z ? R.plurals.notifications_mark_as_unread_plural : R.plurals.notifications_mark_as_read_plural, list.size(), Integer.valueOf(list.size()));
                quantityString.getClass();
                Snackbar makeSnackbar$default = ShareUtil.makeSnackbar$default(this, quantityString, 0, 12);
                makeSnackbar$default.setAction(R.string.notification_archive_undo, new View.OnClickListener() { // from class: org.wikipedia.notifications.NotificationActivity$$ExternalSyntheticLambda1
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        NotificationActivity.markReadItems$default(NotificationActivity.this, list, !z, null, 8);
                    }
                });
                makeSnackbar$default.show();
            }
        } else if (z2 && num != null) {
            return;
        } else {
            Toast.makeText(this, R.string.notifications_offline_disable_message, 0).show();
        }
        finishActionMode$1();
        postprocessAndDisplay(num);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // org.wikipedia.activity.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Continuation continuation = null;
        int i = 0;
        Object[] objArr = 0;
        Object[] objArr2 = 0;
        Object[] objArr3 = 0;
        View inflate = getLayoutInflater().inflate(R.layout.activity_notifications, (ViewGroup) null, false);
        int i2 = R.id.notification_tab_layout;
        TabLayout tabLayout = (TabLayout) Room.findChildViewById(inflate, R.id.notification_tab_layout);
        if (tabLayout != null) {
            CoordinatorLayout coordinatorLayout = (CoordinatorLayout) inflate;
            int i3 = R.id.notifications_empty_container;
            LinearLayout linearLayout = (LinearLayout) Room.findChildViewById(inflate, R.id.notifications_empty_container);
            if (linearLayout != null) {
                i3 = R.id.notifications_empty_search_message;
                TextView textView = (TextView) Room.findChildViewById(inflate, R.id.notifications_empty_search_message);
                if (textView != null) {
                    i3 = R.id.notifications_error_view;
                    WikiErrorView wikiErrorView = (WikiErrorView) Room.findChildViewById(inflate, R.id.notifications_error_view);
                    if (wikiErrorView != null) {
                        i3 = R.id.notifications_progress_bar;
                        ProgressBar progressBar = (ProgressBar) Room.findChildViewById(inflate, R.id.notifications_progress_bar);
                        if (progressBar != null) {
                            i3 = R.id.notifications_recycler_view;
                            RecyclerView recyclerView = (RecyclerView) Room.findChildViewById(inflate, R.id.notifications_recycler_view);
                            if (recyclerView != null) {
                                i3 = R.id.notifications_refresh_view;
                                WikiSwipeRefreshLayout wikiSwipeRefreshLayout = (WikiSwipeRefreshLayout) Room.findChildViewById(inflate, R.id.notifications_refresh_view);
                                if (wikiSwipeRefreshLayout != null) {
                                    i3 = R.id.notifications_search_empty_container;
                                    LinearLayout linearLayout2 = (LinearLayout) Room.findChildViewById(inflate, R.id.notifications_search_empty_container);
                                    if (linearLayout2 != null) {
                                        i3 = R.id.notifications_search_empty_text;
                                        TextView textView2 = (TextView) Room.findChildViewById(inflate, R.id.notifications_search_empty_text);
                                        if (textView2 != null) {
                                            i3 = R.id.notifications_toolbar;
                                            MaterialToolbar materialToolbar = (MaterialToolbar) Room.findChildViewById(inflate, R.id.notifications_toolbar);
                                            if (materialToolbar != null) {
                                                i3 = R.id.notifications_toolbar_container;
                                                if (((AppBarLayout) Room.findChildViewById(inflate, R.id.notifications_toolbar_container)) != null) {
                                                    ItemNotificationBinding itemNotificationBinding = new ItemNotificationBinding();
                                                    itemNotificationBinding.rootView = coordinatorLayout;
                                                    itemNotificationBinding.notificationSubtitle = tabLayout;
                                                    itemNotificationBinding.notificationTime = coordinatorLayout;
                                                    itemNotificationBinding.notificationTitle = linearLayout;
                                                    itemNotificationBinding.notificationDescription = textView;
                                                    itemNotificationBinding.notificationItemImage = wikiErrorView;
                                                    itemNotificationBinding.notificationItemSelectedImage = progressBar;
                                                    itemNotificationBinding.notificationOverflowMenu = recyclerView;
                                                    itemNotificationBinding.notificationWikiCodeImage = wikiSwipeRefreshLayout;
                                                    itemNotificationBinding.notificationWikiCode = linearLayout2;
                                                    itemNotificationBinding.notificationSource = textView2;
                                                    itemNotificationBinding.notificationWikiCodeContainer = materialToolbar;
                                                    this.binding = itemNotificationBinding;
                                                    setContentView(coordinatorLayout);
                                                    ItemNotificationBinding itemNotificationBinding2 = this.binding;
                                                    if (itemNotificationBinding2 == null) {
                                                        Intrinsics.throwUninitializedPropertyAccessException("binding");
                                                        throw null;
                                                    }
                                                    setSupportActionBar((MaterialToolbar) itemNotificationBinding2.notificationWikiCodeContainer);
                                                    ContextsKt supportActionBar = getSupportActionBar();
                                                    if (supportActionBar != null) {
                                                        supportActionBar.setTitle(getString(R.string.notifications_activity_title));
                                                    }
                                                    ItemNotificationBinding itemNotificationBinding3 = this.binding;
                                                    if (itemNotificationBinding3 == null) {
                                                        Intrinsics.throwUninitializedPropertyAccessException("binding");
                                                        throw null;
                                                    }
                                                    CoordinatorLayout coordinatorLayout2 = (CoordinatorLayout) itemNotificationBinding3.notificationTime;
                                                    NotificationActivity$$ExternalSyntheticLambda0 notificationActivity$$ExternalSyntheticLambda0 = new NotificationActivity$$ExternalSyntheticLambda0(this);
                                                    WeakHashMap weakHashMap = ViewCompat.sViewPropertyAnimatorMap;
                                                    ViewCompat.Api21Impl.setOnApplyWindowInsetsListener(coordinatorLayout2, notificationActivity$$ExternalSyntheticLambda0);
                                                    ItemNotificationBinding itemNotificationBinding4 = this.binding;
                                                    if (itemNotificationBinding4 == null) {
                                                        Intrinsics.throwUninitializedPropertyAccessException("binding");
                                                        throw null;
                                                    }
                                                    ((WikiErrorView) itemNotificationBinding4.notificationItemImage).setRetryClickListener(new NotificationActivity$$ExternalSyntheticLambda3(this, i));
                                                    ItemNotificationBinding itemNotificationBinding5 = this.binding;
                                                    if (itemNotificationBinding5 == null) {
                                                        Intrinsics.throwUninitializedPropertyAccessException("binding");
                                                        throw null;
                                                    }
                                                    int i4 = 1;
                                                    ((WikiErrorView) itemNotificationBinding5.notificationItemImage).setBackClickListener(new NotificationActivity$$ExternalSyntheticLambda3(this, i4));
                                                    ItemNotificationBinding itemNotificationBinding6 = this.binding;
                                                    if (itemNotificationBinding6 == null) {
                                                        Intrinsics.throwUninitializedPropertyAccessException("binding");
                                                        throw null;
                                                    }
                                                    ((RecyclerView) itemNotificationBinding6.notificationOverflowMenu).setLayoutManager(new LinearLayoutManager(1));
                                                    ItemNotificationBinding itemNotificationBinding7 = this.binding;
                                                    if (itemNotificationBinding7 == null) {
                                                        Intrinsics.throwUninitializedPropertyAccessException("binding");
                                                        throw null;
                                                    }
                                                    ((RecyclerView) itemNotificationBinding7.notificationOverflowMenu).setAdapter(new DiffUtil$DiffLinesAdapter(i4, this));
                                                    ItemNotificationBinding itemNotificationBinding8 = this.binding;
                                                    if (itemNotificationBinding8 == null) {
                                                        Intrinsics.throwUninitializedPropertyAccessException("binding");
                                                        throw null;
                                                    }
                                                    ((RecyclerView) itemNotificationBinding8.notificationOverflowMenu).addItemDecoration(new DrawableItemDecoration((Context) this, (boolean) (objArr3 == true ? 1 : 0), (boolean) (objArr2 == true ? 1 : 0), 12));
                                                    Drawable drawable = TuplesKt.getDrawable(this, R.drawable.ic_open_in_new_black_24px);
                                                    drawable.getClass();
                                                    int roundedDpToPx = Okio__OkioKt.roundedDpToPx(16.0f);
                                                    drawable.setBounds(drawable.getBounds().left, drawable.getBounds().top, roundedDpToPx, roundedDpToPx);
                                                    this.externalLinkIcon = drawable;
                                                    TypedValue typedValue = new TypedValue();
                                                    if (!getTheme().resolveAttribute(R.attr.progressive_color, typedValue, true)) {
                                                        typedValue = null;
                                                    }
                                                    if (typedValue == null) {
                                                        _UtilJvmKt$$ExternalSyntheticLambda0.m("Attribute not found; ID=2130969888");
                                                        return;
                                                    }
                                                    int i5 = typedValue.resourceId;
                                                    Integer valueOf = Integer.valueOf(android.R.color.white);
                                                    ItemNotificationBinding itemNotificationBinding9 = this.binding;
                                                    if (itemNotificationBinding9 == null) {
                                                        Intrinsics.throwUninitializedPropertyAccessException("binding");
                                                        throw null;
                                                    }
                                                    SwipeableItemTouchHelperCallback swipeableItemTouchHelperCallback = new SwipeableItemTouchHelperCallback(this, i5, R.drawable.ic_outline_drafts_24, valueOf, true, (WikiSwipeRefreshLayout) itemNotificationBinding9.notificationWikiCodeImage);
                                                    swipeableItemTouchHelperCallback.swipeableEnabled = true;
                                                    ItemTouchHelper itemTouchHelper = new ItemTouchHelper(swipeableItemTouchHelperCallback);
                                                    ItemNotificationBinding itemNotificationBinding10 = this.binding;
                                                    if (itemNotificationBinding10 == null) {
                                                        Intrinsics.throwUninitializedPropertyAccessException("binding");
                                                        throw null;
                                                    }
                                                    itemTouchHelper.attachToRecyclerView((RecyclerView) itemNotificationBinding10.notificationOverflowMenu);
                                                    ItemNotificationBinding itemNotificationBinding11 = this.binding;
                                                    if (itemNotificationBinding11 == null) {
                                                        Intrinsics.throwUninitializedPropertyAccessException("binding");
                                                        throw null;
                                                    }
                                                    ((WikiSwipeRefreshLayout) itemNotificationBinding11.notificationWikiCodeImage).setOnRefreshListener(new NotificationActivity$$ExternalSyntheticLambda0(this));
                                                    ItemNotificationBinding itemNotificationBinding12 = this.binding;
                                                    if (itemNotificationBinding12 == null) {
                                                        Intrinsics.throwUninitializedPropertyAccessException("binding");
                                                        throw null;
                                                    }
                                                    ((TabLayout) itemNotificationBinding12.notificationSubtitle).addOnTabSelectedListener(new LanguageScrollView.AnonymousClass1(3, this));
                                                    Prefs prefs = Prefs.INSTANCE;
                                                    PrefsIoUtil.setInt(R.string.preference_key_notification_unread_count, 0);
                                                    ItemNotificationBinding itemNotificationBinding13 = this.binding;
                                                    if (itemNotificationBinding13 == null) {
                                                        Intrinsics.throwUninitializedPropertyAccessException("binding");
                                                        throw null;
                                                    }
                                                    ((WikiErrorView) itemNotificationBinding13.notificationItemImage).setVisibility(8);
                                                    ItemNotificationBinding itemNotificationBinding14 = this.binding;
                                                    if (itemNotificationBinding14 == null) {
                                                        Intrinsics.throwUninitializedPropertyAccessException("binding");
                                                        throw null;
                                                    }
                                                    ((RecyclerView) itemNotificationBinding14.notificationOverflowMenu).setVisibility(8);
                                                    ItemNotificationBinding itemNotificationBinding15 = this.binding;
                                                    if (itemNotificationBinding15 == null) {
                                                        Intrinsics.throwUninitializedPropertyAccessException("binding");
                                                        throw null;
                                                    }
                                                    ((LinearLayout) itemNotificationBinding15.notificationTitle).setVisibility(8);
                                                    ItemNotificationBinding itemNotificationBinding16 = this.binding;
                                                    if (itemNotificationBinding16 == null) {
                                                        Intrinsics.throwUninitializedPropertyAccessException("binding");
                                                        throw null;
                                                    }
                                                    ((LinearLayout) itemNotificationBinding16.notificationWikiCode).setVisibility(8);
                                                    ItemNotificationBinding itemNotificationBinding17 = this.binding;
                                                    if (itemNotificationBinding17 == null) {
                                                        Intrinsics.throwUninitializedPropertyAccessException("binding");
                                                        throw null;
                                                    }
                                                    ((ProgressBar) itemNotificationBinding17.notificationItemSelectedImage).setVisibility(0);
                                                    ItemNotificationBinding itemNotificationBinding18 = this.binding;
                                                    if (itemNotificationBinding18 == null) {
                                                        Intrinsics.throwUninitializedPropertyAccessException("binding");
                                                        throw null;
                                                    }
                                                    ((TabLayout) itemNotificationBinding18.notificationSubtitle).setVisibility(8);
                                                    ContextsKt supportActionBar2 = getSupportActionBar();
                                                    if (supportActionBar2 != null) {
                                                        supportActionBar2.setTitle();
                                                    }
                                                    AwaitKt.launch$default(ViewModelKt.getLifecycleScope(this), null, null, new NotificationActivity$onCreate$7(this, continuation, objArr == true ? 1 : 0), 3);
                                                    return;
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
            i2 = i3;
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m$3("Missing required view with ID: ".concat(inflate.getResources().getResourceName(i2)));
    }

    @Override // android.app.Activity
    public final boolean onCreateOptionsMenu(Menu menu) {
        menu.getClass();
        getMenuInflater().inflate(R.menu.menu_notifications, menu);
        return true;
    }

    @Override // org.wikipedia.activity.BaseActivity, android.app.Activity
    public final boolean onOptionsItemSelected(MenuItem menuItem) {
        menuItem.getClass();
        int itemId = menuItem.getItemId();
        if (itemId != R.id.menu_notifications_mark_all_as_read) {
            if (itemId != R.id.menu_notifications_prefs) {
                return super.onOptionsItemSelected(menuItem);
            }
            this.resultLauncher.launch(new Intent(this, (Class<?>) NotificationSettingsActivity.class), null);
            return true;
        }
        ArrayList arrayList = this.notificationContainerList;
        if (!arrayList.isEmpty()) {
            ArrayList arrayList2 = new ArrayList();
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                Object next = it.next();
                if (((NotificationListItemContainer) next).type != 0) {
                    arrayList2.add(next);
                }
            }
            ArrayList arrayList3 = new ArrayList();
            Iterator it2 = arrayList2.iterator();
            while (it2.hasNext()) {
                Object next2 = it2.next();
                Notification notification = ((NotificationListItemContainer) next2).notification;
                if (notification != null && notification.isUnread()) {
                    arrayList3.add(next2);
                }
            }
            markReadItems$default(this, arrayList3, false, null, 12);
        }
        return true;
    }

    @Override // android.app.Activity
    public final boolean onPrepareOptionsMenu(Menu menu) {
        menu.getClass();
        menu.findItem(R.id.menu_notifications_mark_all_as_read).setVisible(getViewModel().allUnreadCount > 0);
        return super.onPrepareOptionsMenu(menu);
    }

    @Override // org.wikipedia.activity.BaseActivity, androidx.appcompat.app.AppCompatActivity, android.app.Activity
    public final void onResume() {
        SearchAndFilterActionProvider searchAndFilterActionProvider;
        super.onResume();
        ActionMode actionMode = this.actionMode;
        if (actionMode != null) {
            postprocessAndDisplay(null);
            if (!"searchActionMode".equals(actionMode.mTag) || (searchAndFilterActionProvider = (SearchAndFilterActionProvider) this.searchActionModeCallback.searchActionProvider) == null) {
                return;
            }
            searchAndFilterActionProvider.updateFilterIconAndText();
        }
    }

    @Override // androidx.appcompat.app.AppCompatActivity, android.app.Activity
    public final void onStop() {
        ItemNotificationBinding itemNotificationBinding = this.binding;
        if (itemNotificationBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            throw null;
        }
        ((CoordinatorLayout) itemNotificationBinding.rootView).requestFocus();
        NotificationActionsOverflowView notificationActionsOverflowView = this.notificationActionOverflowView;
        if (notificationActionsOverflowView != null) {
            PopupWindow popupWindow = notificationActionsOverflowView.popupWindowHost;
            if (popupWindow != null) {
                popupWindow.dismiss();
            }
            notificationActionsOverflowView.popupWindowHost = null;
        }
        super.onStop();
    }

    public final void postprocessAndDisplay(Integer num) {
        ItemNotificationBinding itemNotificationBinding = this.binding;
        if (itemNotificationBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            throw null;
        }
        TabLayout.Tab tabAt = ((TabLayout) itemNotificationBinding.notificationSubtitle).getTabAt(0);
        tabAt.getClass();
        int i = getViewModel().allUnreadCount;
        if (i > 0) {
            tabAt.setText(getString(R.string.notifications_tab_filter_all) + " " + getString(R.string.notifications_tab_filter_unread, String.valueOf(i)));
        } else {
            tabAt.setText(getString(R.string.notifications_tab_filter_all));
        }
        ItemNotificationBinding itemNotificationBinding2 = this.binding;
        if (itemNotificationBinding2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            throw null;
        }
        TabLayout.Tab tabAt2 = ((TabLayout) itemNotificationBinding2.notificationSubtitle).getTabAt(1);
        tabAt2.getClass();
        int i2 = getViewModel().mentionsUnreadCount;
        if (i2 > 0) {
            tabAt2.setText(getString(R.string.notifications_tab_filter_mentions) + " " + getString(R.string.notifications_tab_filter_unread, String.valueOf(i2)));
        } else {
            tabAt2.setText(getString(R.string.notifications_tab_filter_mentions));
        }
        ItemNotificationBinding itemNotificationBinding3 = this.binding;
        if (itemNotificationBinding3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            throw null;
        }
        ((TabLayout) itemNotificationBinding3.notificationSubtitle).setVisibility(this.actionMode != null ? 8 : 0);
        ActionMode actionMode = this.actionMode;
        ArrayList arrayList = this.notificationContainerList;
        if (actionMode == null) {
            if (arrayList == null || !arrayList.isEmpty()) {
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    if (((NotificationListItemContainer) it.next()).type == 0) {
                        break;
                    }
                }
            }
            arrayList.add(0, new NotificationListItemContainer(null, 7));
        } else if (arrayList == null || !arrayList.isEmpty()) {
            Iterator it2 = arrayList.iterator();
            while (true) {
                if (!it2.hasNext()) {
                    break;
                } else if (((NotificationListItemContainer) it2.next()).type == 0) {
                    arrayList.remove(0);
                    break;
                }
            }
        }
        ArrayList arrayList2 = new ArrayList();
        Iterator it3 = arrayList.iterator();
        while (it3.hasNext()) {
            Object next = it3.next();
            if (((NotificationListItemContainer) next).type != 0) {
                arrayList2.add(next);
            }
        }
        boolean isEmpty = arrayList2.isEmpty();
        ItemNotificationBinding itemNotificationBinding4 = this.binding;
        if (isEmpty) {
            if (itemNotificationBinding4 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                throw null;
            }
            ((LinearLayout) itemNotificationBinding4.notificationTitle).setVisibility((this.actionMode == null && getViewModel().excludedFiltersCount() == 0) ? 0 : 8);
            ItemNotificationBinding itemNotificationBinding5 = this.binding;
            if (itemNotificationBinding5 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                throw null;
            }
            ((LinearLayout) itemNotificationBinding5.notificationWikiCode).setVisibility(getViewModel().excludedFiltersCount() != 0 ? 0 : 8);
            ItemNotificationBinding itemNotificationBinding6 = this.binding;
            if (itemNotificationBinding6 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                throw null;
            }
            ((TextView) itemNotificationBinding6.notificationSource).setVisibility(this.actionMode != null ? 0 : 8);
            String quantityString = getResources().getQuantityString(R.plurals.notifications_number_of_filters, getViewModel().excludedFiltersCount(), Integer.valueOf(getViewModel().excludedFiltersCount()));
            quantityString.getClass();
            ItemNotificationBinding itemNotificationBinding7 = this.binding;
            if (itemNotificationBinding7 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                throw null;
            }
            TextView textView = (TextView) itemNotificationBinding7.notificationDescription;
            StringUtil stringUtil = StringUtil.INSTANCE;
            textView.setText(StringUtil.fromHtml(getString(R.string.notifications_empty_search_message, Animation.CC.m("<a href=\"#\">", quantityString, "</a>"))));
            ItemNotificationBinding itemNotificationBinding8 = this.binding;
            if (itemNotificationBinding8 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                throw null;
            }
            ((TextView) itemNotificationBinding8.notificationDescription).setMovementMethod(new LinkMovementMethodExt(new NotificationActivity$$ExternalSyntheticLambda0(this)));
        } else {
            if (itemNotificationBinding4 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                throw null;
            }
            ((LinearLayout) itemNotificationBinding4.notificationTitle).setVisibility(8);
            ItemNotificationBinding itemNotificationBinding9 = this.binding;
            if (itemNotificationBinding9 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                throw null;
            }
            ((LinearLayout) itemNotificationBinding9.notificationWikiCode).setVisibility(8);
            ItemNotificationBinding itemNotificationBinding10 = this.binding;
            if (itemNotificationBinding10 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                throw null;
            }
            ((TextView) itemNotificationBinding10.notificationSource).setVisibility(8);
        }
        invalidateOptionsMenu();
        ItemNotificationBinding itemNotificationBinding11 = this.binding;
        if (num != null) {
            if (itemNotificationBinding11 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                throw null;
            }
            RecyclerView.Adapter adapter = ((RecyclerView) itemNotificationBinding11.notificationOverflowMenu).getAdapter();
            if (adapter != null) {
                adapter.notifyItemChanged(num.intValue());
                return;
            }
            return;
        }
        if (itemNotificationBinding11 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            throw null;
        }
        RecyclerView.Adapter adapter2 = ((RecyclerView) itemNotificationBinding11.notificationOverflowMenu).getAdapter();
        if (adapter2 != null) {
            adapter2.notifyDataSetChanged();
        }
    }

    public final void toggleSelectItem(NotificationListItemContainer notificationListItemContainer, int i) {
        notificationListItemContainer.selected = !notificationListItemContainer.selected;
        if (getSelectedItemCount() == 0) {
            finishActionMode$1();
        }
        ActionMode actionMode = this.actionMode;
        if (actionMode != null) {
            actionMode.invalidate();
        }
        ItemNotificationBinding itemNotificationBinding = this.binding;
        if (itemNotificationBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            throw null;
        }
        RecyclerView.Adapter adapter = ((RecyclerView) itemNotificationBinding.notificationOverflowMenu).getAdapter();
        if (adapter != null) {
            adapter.notifyItemChanged(i);
        }
    }
}
