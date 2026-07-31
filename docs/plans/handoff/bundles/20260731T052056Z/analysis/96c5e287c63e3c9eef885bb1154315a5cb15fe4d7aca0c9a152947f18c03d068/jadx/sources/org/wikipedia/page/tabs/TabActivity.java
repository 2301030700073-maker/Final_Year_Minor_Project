package org.wikipedia.page.tabs;

import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.fragment.app.FragmentManagerImpl;
import androidx.recyclerview.widget.ItemTouchHelper;
import androidx.recyclerview.widget.RecyclerView;
import androidx.room.Room;
import coil3.util.ContextsKt;
import com.google.android.material.appbar.MaterialToolbar;
import com.google.android.material.dialog.MaterialAlertDialogBuilder;
import com.google.android.material.snackbar.Snackbar;
import java.util.ArrayList;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.collections.CollectionsKt__IteratorsJVMKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.RegexKt;
import kotlin.text.UStringsKt;
import okhttp3.Cache;
import okhttp3.Headers;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import okio.Okio__OkioKt;
import okio.internal.DefaultSocket;
import org.jsoup.Jsoup;
import org.wikipedia.Constants;
import org.wikipedia.R;
import org.wikipedia.WikipediaApp;
import org.wikipedia.activity.BaseActivity;
import org.wikipedia.diff.DiffUtil$DiffLinesAdapter;
import org.wikipedia.login.LoginClient;
import org.wikipedia.main.MainActivity;
import org.wikipedia.navtab.NavTab;
import org.wikipedia.notifications.NotificationActivity;
import org.wikipedia.page.PageActivity;
import org.wikipedia.page.PageFragment$$ExternalSyntheticLambda28;
import org.wikipedia.page.PageTitle;
import org.wikipedia.readinglist.AddToReadingListDialog;
import org.wikipedia.settings.Prefs;
import org.wikipedia.util.ShareUtil;
import org.wikipedia.views.AutoFitRecyclerView;
import org.wikipedia.views.NotificationButtonView;
import org.wikipedia.views.TabCountsView;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0007\u0018\u00002\u00020\u0001:\u0002\u0004\u0005B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0006"}, d2 = {"Lorg/wikipedia/page/tabs/TabActivity;", "Lorg/wikipedia/activity/BaseActivity;", "<init>", "()V", "TabViewHolder", "DiffLinesAdapter", "app"}, k = 1, mv = {2, 3, 0}, xi = 48)
/* loaded from: classes.dex */
public final class TabActivity extends BaseActivity {
    public static final /* synthetic */ int $r8$clinit = 0;
    public final WikipediaApp app;
    public DefaultSocket binding;
    public boolean launchedFromPageActivity;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class TabViewHolder extends RecyclerView.ViewHolder implements View.OnClickListener {
        public TabViewHolder(View view) {
            super(view);
        }

        public final void doCloseTab() {
            RecyclerView.Adapter adapter;
            final int bindingAdapterPosition = getBindingAdapterPosition();
            int i = TabActivity.$r8$clinit;
            final TabActivity tabActivity = TabActivity.this;
            WikipediaApp wikipediaApp = tabActivity.app;
            final int size = (wikipediaApp.tabList.size() - bindingAdapterPosition) - 1;
            final Tab tab = (Tab) wikipediaApp.tabList.remove(size);
            DefaultSocket defaultSocket = tabActivity.binding;
            if (defaultSocket == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                throw null;
            }
            ((TabCountsView) defaultSocket.closeBits).updateTabCount(false);
            RecyclerView.Adapter adapter2 = this.mBindingAdapter;
            if (adapter2 != null) {
                adapter2.mObservable.notifyItemRangeRemoved(bindingAdapterPosition, 1);
            }
            if (bindingAdapterPosition == 0 && (adapter = this.mBindingAdapter) != null) {
                adapter.notifyItemChanged(0);
            }
            tabActivity.setResult(10);
            PageTitle backStackPositionTitle = tab.getBackStackPositionTitle();
            if (backStackPositionTitle != null) {
                String string = tabActivity.getString(R.string.tab_item_closed, backStackPositionTitle.getDisplayText());
                string.getClass();
                Snackbar makeSnackbar$default = ShareUtil.makeSnackbar$default(tabActivity, string, 0, 12);
                makeSnackbar$default.setAction(R.string.reading_list_item_delete_undo, new View.OnClickListener() { // from class: org.wikipedia.page.tabs.TabActivity$$ExternalSyntheticLambda3
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        TabActivity tabActivity2 = TabActivity.this;
                        WikipediaApp wikipediaApp2 = tabActivity2.app;
                        wikipediaApp2.tabList.add(size, tab);
                        DefaultSocket defaultSocket2 = tabActivity2.binding;
                        if (defaultSocket2 == null) {
                            Intrinsics.throwUninitializedPropertyAccessException("binding");
                            throw null;
                        }
                        RecyclerView.Adapter adapter3 = ((AutoFitRecyclerView) defaultSocket2.source).getAdapter();
                        int i2 = bindingAdapterPosition;
                        if (adapter3 != null) {
                            adapter3.mObservable.notifyItemRangeInserted(i2, 1);
                        }
                        DefaultSocket defaultSocket3 = tabActivity2.binding;
                        if (defaultSocket3 == null) {
                            Intrinsics.throwUninitializedPropertyAccessException("binding");
                            throw null;
                        }
                        ((TabCountsView) defaultSocket3.closeBits).updateTabCount(false);
                        if (i2 != 0 || wikipediaApp2.getTabCount() <= 1) {
                            return;
                        }
                        DefaultSocket defaultSocket4 = tabActivity2.binding;
                        if (defaultSocket4 == null) {
                            Intrinsics.throwUninitializedPropertyAccessException("binding");
                            throw null;
                        }
                        RecyclerView.Adapter adapter4 = ((AutoFitRecyclerView) defaultSocket4.source).getAdapter();
                        if (adapter4 != null) {
                            adapter4.notifyItemChanged(1);
                        }
                    }
                });
                makeSnackbar$default.show();
            }
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            view.getClass();
            int bindingAdapterPosition = getBindingAdapterPosition();
            int i = TabActivity.$r8$clinit;
            TabActivity tabActivity = TabActivity.this;
            WikipediaApp wikipediaApp = tabActivity.app;
            int size = (wikipediaApp.tabList.size() - bindingAdapterPosition) - 1;
            if (size < 0 || size >= wikipediaApp.tabList.size()) {
                return;
            }
            if (view.getId() != R.id.tabContainer) {
                if (view.getId() == R.id.tabCloseButton) {
                    doCloseTab();
                    return;
                }
                return;
            }
            if (size < wikipediaApp.tabList.size() - 1) {
                wikipediaApp.tabList.add((Tab) wikipediaApp.tabList.remove(size));
            }
            if (tabActivity.launchedFromPageActivity) {
                tabActivity.setResult(10);
            } else {
                int i2 = PageActivity.$r8$clinit;
                tabActivity.startActivity(LoginClient.newIntent(tabActivity));
            }
            tabActivity.finish();
        }
    }

    public TabActivity() {
        WikipediaApp wikipediaApp = WikipediaApp.instance;
        this.app = Jsoup.getInstance();
    }

    @Override // org.wikipedia.activity.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        final int i = 0;
        View inflate = getLayoutInflater().inflate(R.layout.activity_tabs, (ViewGroup) null, false);
        int i2 = R.id.tab_button_notifications;
        NotificationButtonView notificationButtonView = (NotificationButtonView) Room.findChildViewById(inflate, R.id.tab_button_notifications);
        if (notificationButtonView != null) {
            FrameLayout frameLayout = (FrameLayout) inflate;
            i2 = R.id.tab_counts_view;
            TabCountsView tabCountsView = (TabCountsView) Room.findChildViewById(inflate, R.id.tab_counts_view);
            if (tabCountsView != null) {
                i2 = R.id.tabRecyclerView;
                AutoFitRecyclerView autoFitRecyclerView = (AutoFitRecyclerView) Room.findChildViewById(inflate, R.id.tabRecyclerView);
                if (autoFitRecyclerView != null) {
                    i2 = R.id.tab_toolbar;
                    MaterialToolbar materialToolbar = (MaterialToolbar) Room.findChildViewById(inflate, R.id.tab_toolbar);
                    if (materialToolbar != null) {
                        this.binding = new DefaultSocket(frameLayout, notificationButtonView, tabCountsView, autoFitRecyclerView, materialToolbar, 11);
                        setContentView(frameLayout);
                        DefaultSocket defaultSocket = this.binding;
                        if (defaultSocket == null) {
                            Intrinsics.throwUninitializedPropertyAccessException("binding");
                            throw null;
                        }
                        ((TabCountsView) defaultSocket.closeBits).updateTabCount(false);
                        DefaultSocket defaultSocket2 = this.binding;
                        if (defaultSocket2 == null) {
                            Intrinsics.throwUninitializedPropertyAccessException("binding");
                            throw null;
                        }
                        ((TabCountsView) defaultSocket2.closeBits).setOnClickListener(new View.OnClickListener(this) { // from class: org.wikipedia.page.tabs.TabActivity$$ExternalSyntheticLambda1
                            public final /* synthetic */ TabActivity f$0;

                            {
                                this.f$0 = this;
                            }

                            @Override // android.view.View.OnClickListener
                            public final void onClick(View view) {
                                int i3 = i;
                                TabActivity tabActivity = this.f$0;
                                switch (i3) {
                                    case 0:
                                        int i4 = TabActivity.$r8$clinit;
                                        tabActivity.getOnBackPressedDispatcher().onBackPressed();
                                        break;
                                    default:
                                        int i5 = TabActivity.$r8$clinit;
                                        if (Headers.Companion.isLoggedIn()) {
                                            tabActivity.startActivity(new Intent(tabActivity, (Class<?>) NotificationActivity.class));
                                            break;
                                        }
                                        break;
                                }
                            }
                        });
                        DefaultSocket defaultSocket3 = this.binding;
                        if (defaultSocket3 == null) {
                            Intrinsics.throwUninitializedPropertyAccessException("binding");
                            throw null;
                        }
                        TabCountsView tabCountsView2 = (TabCountsView) defaultSocket3.closeBits;
                        if (defaultSocket3 == null) {
                            Intrinsics.throwUninitializedPropertyAccessException("binding");
                            throw null;
                        }
                        final int i3 = 1;
                        View[] viewArr = {tabCountsView2, (NotificationButtonView) defaultSocket3.socket};
                        while (i < 2) {
                            View view = viewArr[i];
                            RegexKt.setTooltipText(view, view.getContentDescription());
                            i++;
                        }
                        DefaultSocket defaultSocket4 = this.binding;
                        if (defaultSocket4 == null) {
                            Intrinsics.throwUninitializedPropertyAccessException("binding");
                            throw null;
                        }
                        ((AutoFitRecyclerView) defaultSocket4.source).setAdapter(new DiffUtil$DiffLinesAdapter(4, this));
                        SwipeableTabTouchHelperCallback swipeableTabTouchHelperCallback = new SwipeableTabTouchHelperCallback(this);
                        swipeableTabTouchHelperCallback.swipeableEnabled = true;
                        ItemTouchHelper itemTouchHelper = new ItemTouchHelper(swipeableTabTouchHelperCallback);
                        DefaultSocket defaultSocket5 = this.binding;
                        if (defaultSocket5 == null) {
                            Intrinsics.throwUninitializedPropertyAccessException("binding");
                            throw null;
                        }
                        itemTouchHelper.attachToRecyclerView((AutoFitRecyclerView) defaultSocket5.source);
                        this.launchedFromPageActivity = getIntent().hasExtra("launchedFromPageActivity");
                        setStatusBarColor(Cache.Companion.getThemedColor(this, android.R.attr.colorBackground));
                        setNavigationBarColor(Cache.Companion.getThemedColor(this, android.R.attr.colorBackground));
                        DefaultSocket defaultSocket6 = this.binding;
                        if (defaultSocket6 == null) {
                            Intrinsics.throwUninitializedPropertyAccessException("binding");
                            throw null;
                        }
                        setSupportActionBar((MaterialToolbar) defaultSocket6.sink);
                        ContextsKt supportActionBar = getSupportActionBar();
                        if (supportActionBar != null) {
                            supportActionBar.setDisplayHomeAsUpEnabled(true);
                            supportActionBar.setTitle("");
                        }
                        DefaultSocket defaultSocket7 = this.binding;
                        if (defaultSocket7 != null) {
                            ((NotificationButtonView) defaultSocket7.socket).setOnClickListener(new View.OnClickListener(this) { // from class: org.wikipedia.page.tabs.TabActivity$$ExternalSyntheticLambda1
                                public final /* synthetic */ TabActivity f$0;

                                {
                                    this.f$0 = this;
                                }

                                @Override // android.view.View.OnClickListener
                                public final void onClick(View view2) {
                                    int i32 = i3;
                                    TabActivity tabActivity = this.f$0;
                                    switch (i32) {
                                        case 0:
                                            int i4 = TabActivity.$r8$clinit;
                                            tabActivity.getOnBackPressedDispatcher().onBackPressed();
                                            break;
                                        default:
                                            int i5 = TabActivity.$r8$clinit;
                                            if (Headers.Companion.isLoggedIn()) {
                                                tabActivity.startActivity(new Intent(tabActivity, (Class<?>) NotificationActivity.class));
                                                break;
                                            }
                                            break;
                                    }
                                }
                            });
                            return;
                        } else {
                            Intrinsics.throwUninitializedPropertyAccessException("binding");
                            throw null;
                        }
                    }
                }
            }
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m$3("Missing required view with ID: ".concat(inflate.getResources().getResourceName(i2)));
    }

    @Override // android.app.Activity
    public final boolean onCreateOptionsMenu(Menu menu) {
        menu.getClass();
        getMenuInflater().inflate(R.menu.menu_tabs, menu);
        return true;
    }

    @Override // org.wikipedia.activity.BaseActivity, android.app.Activity
    public final boolean onOptionsItemSelected(MenuItem menuItem) {
        menuItem.getClass();
        int itemId = menuItem.getItemId();
        if (itemId == 16908332 || itemId == R.id.menu_open_a_new_tab) {
            if (this.launchedFromPageActivity) {
                setResult(11);
            } else {
                Intent intent = new Intent("org.wikipedia.create_new_tab").setClass(this, PageActivity.class);
                intent.getClass();
                startActivity(intent);
            }
            finish();
            return true;
        }
        WikipediaApp wikipediaApp = this.app;
        if (itemId == R.id.menu_close_all_tabs) {
            if (!wikipediaApp.tabList.isEmpty()) {
                MaterialAlertDialogBuilder materialAlertDialogBuilder = new MaterialAlertDialogBuilder(this, 0);
                materialAlertDialogBuilder.setMessage(R.string.close_all_tabs_confirm);
                materialAlertDialogBuilder.setPositiveButton(R.string.close_all_tabs_confirm_yes, new PageFragment$$ExternalSyntheticLambda28(5, this));
                materialAlertDialogBuilder.setNegativeButton(R.string.close_all_tabs_confirm_no, (DialogInterface.OnClickListener) null);
                materialAlertDialogBuilder.show();
                return true;
            }
        } else {
            if (itemId != R.id.menu_save_all_tabs) {
                if (itemId != R.id.menu_home) {
                    return super.onOptionsItemSelected(menuItem);
                }
                startActivity(new Intent(this, (Class<?>) MainActivity.class).addFlags(67108864).putExtra("returnToMain", true).putExtra("goToMainTab", NavTab.HOME.ordinal()));
                finish();
                return true;
            }
            if (!wikipediaApp.tabList.isEmpty()) {
                ArrayList arrayList = wikipediaApp.tabList;
                ArrayList arrayList2 = new ArrayList();
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    Object next = it.next();
                    if (((Tab) next).getBackStackPositionTitle() != null) {
                        arrayList2.add(next);
                    }
                }
                ArrayList arrayList3 = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(arrayList2, 10));
                Iterator it2 = arrayList2.iterator();
                while (it2.hasNext()) {
                    PageTitle backStackPositionTitle = ((Tab) it2.next()).getBackStackPositionTitle();
                    backStackPositionTitle.getClass();
                    arrayList3.add(backStackPositionTitle);
                }
                FragmentManagerImpl supportFragmentManager = getSupportFragmentManager();
                Constants.InvokeSource invokeSource = Constants.InvokeSource.TABS_ACTIVITY;
                invokeSource.getClass();
                AddToReadingListDialog addToReadingListDialog = new AddToReadingListDialog();
                addToReadingListDialog.setArguments(UStringsKt.bundleOf(new Pair("pageTitleList", new ArrayList(arrayList3)), new Pair("invokeSource", invokeSource), new Pair("showDefaultList", Boolean.TRUE)));
                addToReadingListDialog.dismissListener = null;
                Okio__OkioKt.show(supportFragmentManager, addToReadingListDialog);
            }
        }
        return true;
    }

    @Override // org.wikipedia.activity.BaseActivity, androidx.appcompat.app.AppCompatActivity, android.app.Activity
    public final void onPause() {
        super.onPause();
        this.app.commitTabState();
    }

    @Override // org.wikipedia.activity.BaseActivity, androidx.appcompat.app.AppCompatActivity, android.app.Activity
    public final void onResume() {
        super.onResume();
        updateNotificationsButton$1(false);
    }

    @Override // org.wikipedia.activity.BaseActivity
    public final void onUnreadNotification() {
        updateNotificationsButton$1(true);
    }

    public final void updateNotificationsButton$1(boolean z) {
        boolean isLoggedIn = Headers.Companion.isLoggedIn();
        DefaultSocket defaultSocket = this.binding;
        if (!isLoggedIn) {
            if (defaultSocket != null) {
                ((NotificationButtonView) defaultSocket.socket).setVisibility(8);
                return;
            } else {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                throw null;
            }
        }
        if (defaultSocket == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            throw null;
        }
        ((NotificationButtonView) defaultSocket.socket).setVisibility(0);
        Prefs prefs = Prefs.INSTANCE;
        int notificationUnreadCount = Prefs.getNotificationUnreadCount();
        DefaultSocket defaultSocket2 = this.binding;
        if (notificationUnreadCount <= 0) {
            if (defaultSocket2 != null) {
                ((NotificationButtonView) defaultSocket2.socket).setUnreadCount(0);
                return;
            } else {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                throw null;
            }
        }
        if (defaultSocket2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            throw null;
        }
        ((NotificationButtonView) defaultSocket2.socket).setUnreadCount(Prefs.getNotificationUnreadCount());
        if (z) {
            DefaultSocket defaultSocket3 = this.binding;
            if (defaultSocket3 != null) {
                ((NotificationButtonView) defaultSocket3.socket).runAnimation();
            } else {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                throw null;
            }
        }
    }
}
