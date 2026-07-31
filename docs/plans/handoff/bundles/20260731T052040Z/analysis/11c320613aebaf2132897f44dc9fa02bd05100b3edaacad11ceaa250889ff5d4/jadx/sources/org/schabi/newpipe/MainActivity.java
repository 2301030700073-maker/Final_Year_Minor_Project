package org.schabi.newpipe;

import android.R;
import android.content.BroadcastReceiver;
import android.content.Intent;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.Spinner;
import android.widget.SpinnerAdapter;
import androidx.activity.OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0;
import androidx.appcompat.app.ActionBarDrawerToggle;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.widget.Toolbar;
import androidx.core.app.ActivityCompat;
import androidx.drawerlayout.widget.DrawerLayout;
import androidx.fragment.app.BackStackRecord;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentContainerView;
import androidx.fragment.app.FragmentManagerImpl;
import androidx.lifecycle.LifecycleOwner;
import androidx.preference.PreferenceManager;
import androidx.room.Room;
import androidx.sqlite.SQLite;
import androidx.viewpager.widget.ViewPager;
import com.google.android.exoplayer2.decoder.DecoderReuseEvaluation;
import com.google.android.material.bottomsheet.BottomSheetBehavior;
import com.google.android.material.navigation.NavigationView;
import com.google.common.collect.CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0;
import j$.util.function.Function$CC;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.function.Function;
import kotlin.Result;
import kotlin.ranges.RangesKt;
import okio.Options;
import org.acra.builder.ReportExecutor$$ExternalSyntheticLambda0;
import org.jsoup.nodes.Printer;
import org.jsoup.parser.TokenData;
import org.schabi.newpipe.App;
import org.schabi.newpipe.databinding.DrawerHeaderBinding;
import org.schabi.newpipe.error.ErrorUtil;
import org.schabi.newpipe.extractor.ServiceList;
import org.schabi.newpipe.extractor.StreamingService;
import org.schabi.newpipe.extractor.comments.CommentsInfoItem;
import org.schabi.newpipe.extractor.services.peertube.PeertubeInstance;
import org.schabi.newpipe.fragments.BackPressable;
import org.schabi.newpipe.fragments.MainFragment;
import org.schabi.newpipe.fragments.detail.VideoDetailFragment;
import org.schabi.newpipe.fragments.list.comments.CommentRepliesFragment;
import org.schabi.newpipe.fragments.list.comments.CommentsFragment;
import org.schabi.newpipe.fragments.list.kiosk.KioskFragment;
import org.schabi.newpipe.fragments.list.search.SearchFragment;
import org.schabi.newpipe.local.feed.notifications.NotificationHelper;
import org.schabi.newpipe.local.feed.notifications.NotificationWorker;
import org.schabi.newpipe.local.feed.notifications.ScheduleOptions;
import org.schabi.newpipe.player.event.OnKeyDownListener;
import org.schabi.newpipe.player.playqueue.PlayQueue;
import org.schabi.newpipe.player.ui.VideoPlayerUi;
import org.schabi.newpipe.util.DeviceUtils;
import org.schabi.newpipe.util.Localization;
import org.schabi.newpipe.util.NavigationHelper$$ExternalSyntheticLambda0;
import org.schabi.newpipe.util.SerializedCache;
import org.schabi.newpipe.util.ServiceHelper;
import org.schabi.newpipe.util.StateSaver;
import org.schabi.newpipe.views.FocusAwareDrawerLayout;
import org.schabi.newpipe.views.NewPipeTextView;
import us.shandian.giga.util.Utility;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public class MainActivity extends AppCompatActivity {
    public static final /* synthetic */ int $r8$clinit = 0;
    public AnonymousClass3 broadcastReceiver;
    public DrawerHeaderBinding drawerHeaderBinding;
    public TokenData drawerLayoutBinding;
    public Printer mainBinding;
    public boolean servicesShown = false;
    public SharedPreferences.Editor sharedPrefEditor;
    public SharedPreferences sharedPreferences;
    public ActionBarDrawerToggle toggle;
    public Printer toolbarLayoutBinding;

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    /* renamed from: org.schabi.newpipe.MainActivity$3, reason: invalid class name */
    public final class AnonymousClass3 extends BroadcastReceiver {
        public final /* synthetic */ int $r8$classId;
        public final /* synthetic */ Object this$0;

        public /* synthetic */ AnonymousClass3(Object obj, int i) {
            this.$r8$classId = i;
            this.this$0 = obj;
        }

        /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
        /* JADX WARN: Code restructure failed: missing block: B:41:0x0071, code lost:
        
            if (r11.equals("org.schabi.newpipe.player.MainPlayer.CLOSE") == false) goto L11;
         */
        /* JADX WARN: Code restructure failed: missing block: B:89:0x013e, code lost:
        
            if (r11.equals("org.schabi.newpipe.VideoDetailFragment.ACTION_HIDE_MAIN_PLAYER") == false) goto L83;
         */
        @Override // android.content.BroadcastReceiver
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void onReceive(android.content.Context r11, android.content.Intent r12) {
            /*
                Method dump skipped, instructions count: 542
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: org.schabi.newpipe.MainActivity.AnonymousClass3.onReceive(android.content.Context, android.content.Intent):void");
        }
    }

    public final void addDrawerMenuForCurrentService() {
        ((NavigationView) this.drawerLayoutBinding.builder).getMenu().add(R.id.menu_tabs_group, -1, 0, R.string.tab_subscriptions).setIcon(R.drawable.ic_tv);
        ((NavigationView) this.drawerLayoutBinding.builder).getMenu().add(R.id.menu_tabs_group, -2, 0, R.string.fragment_feed_title).setIcon(R.drawable.ic_subscriptions);
        ((NavigationView) this.drawerLayoutBinding.builder).getMenu().add(R.id.menu_tabs_group, -3, 0, R.string.tab_bookmarks).setIcon(R.drawable.ic_bookmark);
        ((NavigationView) this.drawerLayoutBinding.builder).getMenu().add(R.id.menu_tabs_group, -4, 0, R.string.downloads).setIcon(R.drawable.ic_file_download);
        ((NavigationView) this.drawerLayoutBinding.builder).getMenu().add(R.id.menu_tabs_group, -5, 0, R.string.action_history).setIcon(R.drawable.ic_history);
        int i = 0;
        for (String str : ((HashMap) Utility.getService(ServiceHelper.getSelectedServiceId(this)).getKioskList().builder).keySet()) {
            ((NavigationView) this.drawerLayoutBinding.builder).getMenu().add(R.id.menu_kiosks_group, i, 0, RangesKt.getTranslatedKioskName(this, str)).setIcon(RangesKt.getKioskIcon(str));
            i++;
        }
        ((NavigationView) this.drawerLayoutBinding.builder).getMenu().add(R.id.menu_options_about_group, 0, 0, R.string.settings).setIcon(R.drawable.ic_settings);
        ((NavigationView) this.drawerLayoutBinding.builder).getMenu().add(R.id.menu_options_about_group, 1, 0, R.string.donation_title).setIcon(R.drawable.volunteer_activism_ic);
        ((NavigationView) this.drawerLayoutBinding.builder).getMenu().add(R.id.menu_options_about_group, 2, 0, R.string.tab_about).setIcon(R.drawable.ic_info_outline);
    }

    public final void changeService(MenuItem menuItem) {
        Object failure;
        ((NavigationView) this.drawerLayoutBinding.builder).getMenu().getItem(ServiceHelper.getSelectedServiceId(this)).setChecked(false);
        try {
            failure = Utility.getService(menuItem.getItemId()).serviceInfo.name;
        } catch (Throwable th) {
            failure = new Result.Failure(th);
        }
        Object obj = ServiceHelper.DEFAULT_FALLBACK_SERVICE.serviceInfo.name;
        if (failure instanceof Result.Failure) {
            failure = obj;
        }
        SharedPreferences sharedPreferences = getSharedPreferences(PreferenceManager.getDefaultSharedPreferencesName(this), 0);
        sharedPreferences.getClass();
        SharedPreferences.Editor edit = sharedPreferences.edit();
        edit.getClass();
        edit.putString(getString(R.string.current_service_key), (String) failure);
        edit.apply();
        ((NavigationView) this.drawerLayoutBinding.builder).getMenu().getItem(ServiceHelper.getSelectedServiceId(this)).setChecked(true);
    }

    public final void handleIntent(Intent intent) {
        PlayQueue playQueue;
        try {
            String str = "";
            if (!intent.hasExtra("key_link_type")) {
                if (!intent.hasExtra("key_open_search")) {
                    SQLite.gotoMainFragment(getSupportFragmentManager());
                    return;
                }
                String stringExtra = intent.getStringExtra("key_search_string");
                if (stringExtra != null) {
                    str = stringExtra;
                }
                SQLite.openSearchFragment(getSupportFragmentManager(), intent.getIntExtra("key_service_id", 0), str);
                return;
            }
            String stringExtra2 = intent.getStringExtra("key_url");
            int intExtra = intent.getIntExtra("key_service_id", 0);
            String stringExtra3 = intent.getStringExtra("key_title");
            String str2 = stringExtra3 == null ? "" : stringExtra3;
            int ordinal = ((StreamingService.LinkType) intent.getSerializableExtra("key_link_type")).ordinal();
            if (ordinal != 1) {
                if (ordinal == 2) {
                    SQLite.openChannelFragment(getSupportFragmentManager(), intExtra, stringExtra2, str2);
                    return;
                } else {
                    if (ordinal != 3) {
                        return;
                    }
                    SQLite.openPlaylistFragment(getSupportFragmentManager(), intExtra, stringExtra2, str2);
                    return;
                }
            }
            String stringExtra4 = intent.getStringExtra("play_queue_key");
            if (stringExtra4 != null) {
                SerializedCache.INSTANCE.getClass();
                playQueue = (PlayQueue) SerializedCache.take(stringExtra4);
            } else {
                playQueue = null;
            }
            SQLite.openVideoDetailFragment(getApplicationContext(), getSupportFragmentManager(), intExtra, stringExtra2, str2, playQueue, intent.getBooleanExtra("switching_players", false));
        } catch (Exception e) {
            ErrorUtil.showUiErrorSnackbar(this, "Handling intent", e);
        }
    }

    public final void kioskSelected(MenuItem menuItem) {
        StreamingService selectedService = ServiceHelper.getSelectedService(this);
        int i = 0;
        for (String str : ((HashMap) selectedService.getKioskList().builder).keySet()) {
            if (i == menuItem.getItemId()) {
                FragmentManagerImpl supportFragmentManager = getSupportFragmentManager();
                int i2 = selectedService.serviceId;
                BackStackRecord defaultTransaction = SQLite.defaultTransaction(supportFragmentManager);
                defaultTransaction.replace(R.id.fragment_holder, KioskFragment.getInstance(i2, str), null);
                defaultTransaction.addToBackStack(null);
                defaultTransaction.commit();
                return;
            }
            i++;
        }
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public final void onBackPressed() {
        if (DeviceUtils.isTv(this)) {
            FocusAwareDrawerLayout focusAwareDrawerLayout = (FocusAwareDrawerLayout) this.mainBinding.root;
            NavigationView navigationView = (NavigationView) this.drawerLayoutBinding.builder;
            focusAwareDrawerLayout.getClass();
            if (DrawerLayout.isDrawerOpen(navigationView)) {
                ((FocusAwareDrawerLayout) this.mainBinding.root).closeDrawers(false);
                return;
            }
        }
        int i = BottomSheetBehavior.from((FragmentContainerView) this.mainBinding.accum).state;
        if (i == 5 || i == 4) {
            FragmentManagerImpl supportFragmentManager = getSupportFragmentManager();
            LifecycleOwner findFragmentById = supportFragmentManager.findFragmentById(R.id.fragment_holder);
            if (findFragmentById instanceof BackPressable) {
                if (((BackPressable) findFragmentById).onBackPressed()) {
                    return;
                }
            } else if (findFragmentById instanceof CommentRepliesFragment) {
                openDetailFragmentFromCommentReplies(supportFragmentManager, false);
            }
        } else {
            LifecycleOwner findFragmentById2 = getSupportFragmentManager().findFragmentById(R.id.fragment_player_holder);
            if (findFragmentById2 instanceof BackPressable) {
                if (((BackPressable) findFragmentById2).onBackPressed()) {
                    return;
                }
                BottomSheetBehavior.from((FragmentContainerView) this.mainBinding.accum).setState(4);
                return;
            }
        }
        if (getSupportFragmentManager().getBackStackEntryCount() == 1) {
            finish();
        } else {
            super.onBackPressed();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:67:0x0230  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x02a8  */
    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void onCreate(android.os.Bundle r28) {
        /*
            Method dump skipped, instructions count: 937
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.schabi.newpipe.MainActivity.onCreate(android.os.Bundle):void");
    }

    @Override // android.app.Activity
    public final boolean onCreateOptionsMenu(Menu menu) {
        super.onCreateOptionsMenu(menu);
        if (!(getSupportFragmentManager().findFragmentById(R.id.fragment_holder) instanceof SearchFragment)) {
            ((FrameLayout) ((Printer) this.toolbarLayoutBinding.settings).root).setVisibility(8);
        }
        Options.Companion supportActionBar = getSupportActionBar();
        if (supportActionBar != null) {
            supportActionBar.setDisplayHomeAsUpEnabled(false);
        }
        int i = 1;
        if (getSupportActionBar() != null) {
            if (!(getSupportFragmentManager().findFragmentById(R.id.fragment_holder) instanceof MainFragment)) {
                ((FocusAwareDrawerLayout) this.mainBinding.root).setDrawerLockMode(1);
                getSupportActionBar().setDisplayHomeAsUpEnabled(true);
                ((Toolbar) this.toolbarLayoutBinding.accum).setNavigationOnClickListener(new MainActivity$$ExternalSyntheticLambda3(this, 2));
                return true;
            }
            getSupportActionBar().setDisplayHomeAsUpEnabled(false);
            ActionBarDrawerToggle actionBarDrawerToggle = this.toggle;
            if (actionBarDrawerToggle != null) {
                actionBarDrawerToggle.syncState();
                ((Toolbar) this.toolbarLayoutBinding.accum).setNavigationOnClickListener(new MainActivity$$ExternalSyntheticLambda3(this, i));
                ((FocusAwareDrawerLayout) this.mainBinding.root).setDrawerLockMode(3);
            }
        }
        return true;
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public final void onDestroy() {
        super.onDestroy();
        if (!isChangingConfigurations()) {
            StateSaver.clearStateFiles();
        }
        AnonymousClass3 anonymousClass3 = this.broadcastReceiver;
        if (anonymousClass3 != null) {
            unregisterReceiver(anonymousClass3);
        }
    }

    public final void onHomeButtonPressed() {
        FragmentManagerImpl supportFragmentManager = getSupportFragmentManager();
        if (supportFragmentManager.findFragmentById(R.id.fragment_holder) instanceof CommentRepliesFragment) {
            openDetailFragmentFromCommentReplies(supportFragmentManager, true);
        } else {
            if (supportFragmentManager.popBackStackImmediate(-1, 0, "search_fragment_tag")) {
                return;
            }
            SQLite.gotoMainFragment(supportFragmentManager);
        }
    }

    @Override // androidx.appcompat.app.AppCompatActivity, android.app.Activity, android.view.KeyEvent.Callback
    public final boolean onKeyDown(final int i, KeyEvent keyEvent) {
        int i2;
        LifecycleOwner findFragmentById = getSupportFragmentManager().findFragmentById(R.id.fragment_player_holder);
        if (!(findFragmentById instanceof OnKeyDownListener) || (i2 = BottomSheetBehavior.from((FragmentContainerView) this.mainBinding.accum).state) == 5 || i2 == 4) {
            return super.onKeyDown(i, keyEvent);
        }
        VideoDetailFragment videoDetailFragment = (VideoDetailFragment) ((OnKeyDownListener) findFragmentById);
        return (videoDetailFragment.isPlayerAvailable() && ((Boolean) videoDetailFragment.player.UIs.get(VideoPlayerUi.class).map(new Function() { // from class: org.schabi.newpipe.fragments.detail.VideoDetailFragment$$ExternalSyntheticLambda7
            @Override // java.util.function.Function
            /* renamed from: andThen */
            public /* synthetic */ Function mo646andThen(Function function) {
                return Function$CC.$default$andThen(this, function);
            }

            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                LinkedList linkedList = VideoDetailFragment.stack;
                return Boolean.valueOf(((VideoPlayerUi) obj).onKeyDown(i));
            }

            public /* synthetic */ Function compose(Function function) {
                return Function$CC.$default$compose(this, function);
            }
        }).orElse(Boolean.FALSE)).booleanValue()) || super.onKeyDown(i, keyEvent);
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public final void onNewIntent(Intent intent) {
        String action;
        if (intent == null || (action = intent.getAction()) == null || !action.equals("android.intent.action.MAIN") || !intent.hasCategory("android.intent.category.LAUNCHER")) {
            super.onNewIntent(intent);
            setIntent(intent);
            handleIntent(intent);
        }
    }

    @Override // android.app.Activity
    public final boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() != 16908332) {
            return super.onOptionsItemSelected(menuItem);
        }
        onHomeButtonPressed();
        return true;
    }

    @Override // androidx.appcompat.app.AppCompatActivity, android.app.Activity
    public final void onPostCreate(Bundle bundle) {
        super.onPostCreate(bundle);
        App.Companion.getClass();
        App companion = App.Companion.getInstance();
        if (this.sharedPreferences.getBoolean(companion.getString(R.string.update_app_key), false) && this.sharedPreferences.getBoolean(companion.getString(R.string.update_check_consent_key), false)) {
            NewVersionWorker.enqueueNewVersionCheckingWork(companion, false);
        }
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public final void onRequestPermissionsResult(int i, String[] strArr, int[] iArr) {
        super.onRequestPermissionsResult(i, strArr, iArr);
        for (int i2 : iArr) {
            if (i2 == -1) {
                return;
            }
        }
        switch (i) {
            case 777:
                SQLite.openDownloads(this);
                break;
            case 778:
                Fragment findFragmentById = getSupportFragmentManager().findFragmentById(R.id.fragment_player_holder);
                if (findFragmentById instanceof VideoDetailFragment) {
                    ((VideoDetailFragment) findFragmentById).openDownloadDialog();
                    break;
                }
                break;
            case 779:
                NotificationWorker.Companion.getClass();
                NotificationHelper.Companion.getClass();
                if (!NotificationHelper.Companion.areNewStreamsNotificationsEnabled(this) || !NotificationHelper.Companion.areNotificationsEnabledOnDevice(this)) {
                    NotificationWorker.Companion.cancel(this);
                    break;
                } else {
                    ScheduleOptions.Companion.getClass();
                    NotificationWorker.Companion.schedule(this, ScheduleOptions.Companion.from(this), false);
                    break;
                }
                break;
        }
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public final void onResume() {
        Localization.initPrettyTime(Localization.resolvePrettyTime());
        super.onResume();
        ((FocusAwareDrawerLayout) this.mainBinding.root).closeDrawer(false);
        try {
            int selectedServiceId = ServiceHelper.getSelectedServiceId(this);
            String str = Utility.getService(selectedServiceId).serviceInfo.name;
            ((NewPipeTextView) this.drawerHeaderBinding.drawerHeaderServiceView).setText(str);
            ((ImageView) this.drawerHeaderBinding.drawerHeaderServiceIcon).setImageResource(ServiceHelper.getIcon(selectedServiceId));
            ((NewPipeTextView) this.drawerHeaderBinding.drawerHeaderServiceView).post(new ReportExecutor$$ExternalSyntheticLambda0(this, 21));
            ((Button) this.drawerHeaderBinding.drawerHeaderActionButton).setContentDescription(getString(R.string.drawer_header_description) + str);
        } catch (Exception e) {
            ErrorUtil.showUiErrorSnackbar(this, "Setting up service toggle", e);
        }
        if (this.sharedPreferences.getBoolean("key_theme_change", false)) {
            this.sharedPrefEditor.putBoolean("key_theme_change", false).apply();
            ActivityCompat.recreate(this);
        }
        if (this.sharedPreferences.getBoolean("key_main_page_change", false)) {
            this.sharedPrefEditor.putBoolean("key_main_page_change", false).apply();
            Intent intent = new Intent(this, (Class<?>) MainActivity.class);
            intent.addFlags(268435456);
            intent.addFlags(DecoderReuseEvaluation.DISCARD_REASON_AUDIO_BYPASS_POSSIBLE);
            startActivity(intent);
        }
        ((NavigationView) this.drawerLayoutBinding.builder).getMenu().findItem(-5).setVisible(this.sharedPreferences.getBoolean(getString(R.string.enable_watch_history_key), true));
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public final void onStart() {
        super.onStart();
        this.sharedPrefEditor.putBoolean("is_in_background", false).apply();
        Log.d("MainActivity", "App moved to foreground");
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public final void onStop() {
        super.onStop();
        this.sharedPrefEditor.putBoolean("is_in_background", true).apply();
        Log.d("MainActivity", "App moved to background");
    }

    public final void openDetailFragmentFromCommentReplies(final FragmentManagerImpl fragmentManagerImpl, boolean z) {
        BackStackRecord backStackRecord;
        String str;
        if (fragmentManagerImpl.getBackStackEntryCount() < 2) {
            str = null;
        } else {
            int backStackEntryCount = fragmentManagerImpl.getBackStackEntryCount() - 2;
            if (backStackEntryCount == fragmentManagerImpl.mBackStack.size()) {
                backStackRecord = fragmentManagerImpl.mTransitioningOp;
                if (backStackRecord == null) {
                    throw new IndexOutOfBoundsException();
                }
            } else {
                backStackRecord = (BackStackRecord) fragmentManagerImpl.mBackStack.get(backStackEntryCount);
            }
            str = backStackRecord.mName;
        }
        int i = CommentRepliesFragment.$r8$clinit;
        CommentRepliesFragment commentRepliesFragment = (CommentRepliesFragment) fragmentManagerImpl.findFragmentByTag("CommentRepliesFragment");
        final CommentsInfoItem commentsInfoItem = commentRepliesFragment != null ? commentRepliesFragment.getCommentsInfoItem() : null;
        if (z) {
            fragmentManagerImpl.popBackStackImmediate();
        }
        if ("CommentRepliesFragment".equals(str)) {
            return;
        }
        final BottomSheetBehavior from = BottomSheetBehavior.from((FragmentContainerView) this.mainBinding.accum);
        if (from.state == 5) {
            return;
        }
        BottomSheetBehavior.BottomSheetCallback bottomSheetCallback = new BottomSheetBehavior.BottomSheetCallback() { // from class: org.schabi.newpipe.MainActivity.4
            @Override // com.google.android.material.bottomsheet.BottomSheetBehavior.BottomSheetCallback
            public final void onStateChanged(int i2) {
                CommentsInfoItem commentsInfoItem2;
                if (i2 == 3) {
                    Fragment findFragmentById = FragmentManagerImpl.this.findFragmentById(R.id.fragment_player_holder);
                    if ((findFragmentById instanceof VideoDetailFragment) && (commentsInfoItem2 = commentsInfoItem) != null) {
                        VideoDetailFragment videoDetailFragment = (VideoDetailFragment) findFragmentById;
                        int indexOf = videoDetailFragment.pageAdapter.mFragmentTitleList.indexOf("COMMENTS");
                        Fragment fragment = (Fragment) videoDetailFragment.pageAdapter.mFragmentList.get(indexOf);
                        if (fragment instanceof CommentsFragment) {
                            CommentsFragment commentsFragment = (CommentsFragment) fragment;
                            int indexOf2 = commentsFragment.infoListAdapter.infoItemList.indexOf(commentsInfoItem2);
                            if (indexOf2 >= 0) {
                                commentsFragment.itemsList.scrollToPosition(indexOf2);
                                videoDetailFragment.binding.appBarLayout.setExpanded(false, false, true);
                                ViewPager viewPager = videoDetailFragment.binding.viewPager;
                                viewPager.mPopulatePending = false;
                                viewPager.setCurrentItemInternal(indexOf, 0, false, false);
                            }
                        }
                    }
                    from.callbacks.remove(this);
                }
            }

            @Override // com.google.android.material.bottomsheet.BottomSheetBehavior.BottomSheetCallback
            public final void onSlide(float f) {
            }
        };
        ArrayList arrayList = from.callbacks;
        if (!arrayList.contains(bottomSheetCallback)) {
            arrayList.add(bottomSheetCallback);
        }
        from.setState(3);
    }

    public final void openMiniPlayerIfMissing() {
        if (getSupportFragmentManager().findFragmentById(R.id.fragment_player_holder) == null) {
            FragmentManagerImpl supportFragmentManager = getSupportFragmentManager();
            VideoDetailFragment videoDetailFragment = new VideoDetailFragment();
            videoDetailFragment.updateBottomSheetState(4);
            BackStackRecord defaultTransaction = SQLite.defaultTransaction(supportFragmentManager);
            defaultTransaction.replace(R.id.fragment_player_holder, videoDetailFragment, null);
            defaultTransaction.runOnCommitInternal(false, new NavigationHelper$$ExternalSyntheticLambda0(videoDetailFragment, 0));
            defaultTransaction.commitInternal(true, true);
        }
    }

    public final void setupDrawer() {
        addDrawerMenuForCurrentService();
        ActionBarDrawerToggle actionBarDrawerToggle = new ActionBarDrawerToggle(this, (FocusAwareDrawerLayout) this.mainBinding.root, (Toolbar) this.toolbarLayoutBinding.accum);
        this.toggle = actionBarDrawerToggle;
        actionBarDrawerToggle.syncState();
        ((FocusAwareDrawerLayout) this.mainBinding.root).addDrawerListener(this.toggle);
        ((FocusAwareDrawerLayout) this.mainBinding.root).addDrawerListener(new DrawerLayout.SimpleDrawerListener() { // from class: org.schabi.newpipe.MainActivity.1
            public int lastService;

            @Override // androidx.drawerlayout.widget.DrawerLayout.DrawerListener
            public final void onDrawerClosed(View view) {
                MainActivity mainActivity = MainActivity.this;
                if (mainActivity.servicesShown) {
                    mainActivity.toggleServices();
                }
                if (this.lastService != ServiceHelper.getSelectedServiceId(mainActivity)) {
                    ActivityCompat.recreate(mainActivity);
                }
            }

            @Override // androidx.drawerlayout.widget.DrawerLayout.DrawerListener
            public final void onDrawerOpened(View view) {
                this.lastService = ServiceHelper.getSelectedServiceId(MainActivity.this);
            }
        });
        ((NavigationView) this.drawerLayoutBinding.builder).setNavigationItemSelectedListener(new OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0(this, 8));
        ((Button) this.drawerHeaderBinding.drawerHeaderActionButton).setOnClickListener(new MainActivity$$ExternalSyntheticLambda3(this, 3));
        if (getString(R.string.app_name).length() > 7) {
            ViewGroup.LayoutParams layoutParams = ((NewPipeTextView) this.drawerHeaderBinding.drawerHeaderNewpipeTitle).getLayoutParams();
            layoutParams.width = -2;
            ((NewPipeTextView) this.drawerHeaderBinding.drawerHeaderNewpipeTitle).setLayoutParams(layoutParams);
            ((NewPipeTextView) this.drawerHeaderBinding.drawerHeaderNewpipeTitle).setMaxLines(2);
            ((NewPipeTextView) this.drawerHeaderBinding.drawerHeaderNewpipeTitle).setMinWidth(getResources().getDimensionPixelSize(R.dimen.drawer_header_newpipe_title_default_width));
            ((NewPipeTextView) this.drawerHeaderBinding.drawerHeaderNewpipeTitle).setMaxWidth(getResources().getDimensionPixelSize(R.dimen.drawer_header_newpipe_title_max_width));
        }
    }

    public final void toggleServices() {
        this.servicesShown = !this.servicesShown;
        ((NavigationView) this.drawerLayoutBinding.builder).getMenu().removeGroup(R.id.menu_services_group);
        ((NavigationView) this.drawerLayoutBinding.builder).getMenu().removeGroup(R.id.menu_tabs_group);
        ((NavigationView) this.drawerLayoutBinding.builder).getMenu().removeGroup(R.id.menu_kiosks_group);
        ((NavigationView) this.drawerLayoutBinding.builder).getMenu().removeGroup(R.id.menu_options_about_group);
        ((ImageView) this.drawerHeaderBinding.drawerArrow).setImageResource(this.servicesShown ? R.drawable.ic_arrow_drop_up : R.drawable.ic_arrow_drop_down);
        if (!this.servicesShown) {
            try {
                addDrawerMenuForCurrentService();
                return;
            } catch (Exception e) {
                ErrorUtil.showUiErrorSnackbar(this, "Showing main page tabs", e);
                return;
            }
        }
        for (StreamingService streamingService : ServiceList.SERVICES) {
            StreamingService.ServiceInfo serviceInfo = streamingService.serviceInfo;
            int i = streamingService.serviceId;
            MenuItem icon = ((NavigationView) this.drawerLayoutBinding.builder).getMenu().add(R.id.menu_services_group, i, 0, serviceInfo.name).setIcon(ServiceHelper.getIcon(i));
            if (i == 3) {
                PeertubeInstance peertubeInstance = ServiceList.PeerTube.instance;
                peertubeInstance.getClass();
                icon.setTitle(peertubeInstance.name);
                View inflate = LayoutInflater.from(this).inflate(R.layout.instance_spinner_layout, (ViewGroup) null, false);
                if (inflate == null) {
                    CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0.m$1("rootView");
                    return;
                }
                Spinner spinner = (Spinner) inflate;
                List<PeertubeInstance> instanceList = Room.getInstanceList(this);
                ArrayList arrayList = new ArrayList();
                int i2 = 0;
                for (PeertubeInstance peertubeInstance2 : instanceList) {
                    arrayList.add(peertubeInstance2.name);
                    if (peertubeInstance2.url.equals(peertubeInstance.url)) {
                        i2 = arrayList.size() - 1;
                    }
                }
                ArrayAdapter arrayAdapter = new ArrayAdapter(this, R.layout.instance_spinner_item, arrayList);
                arrayAdapter.setDropDownViewResource(R.layout.simple_spinner_dropdown_item);
                spinner.setAdapter((SpinnerAdapter) arrayAdapter);
                spinner.setSelection(i2, false);
                spinner.setOnItemSelectedListener(new AnonymousClass2(instanceList, icon));
                icon.setActionView(spinner);
            }
        }
        ((NavigationView) this.drawerLayoutBinding.builder).getMenu().getItem(ServiceHelper.getSelectedServiceId(this)).setChecked(true);
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    /* renamed from: org.schabi.newpipe.MainActivity$2, reason: invalid class name */
    public final class AnonymousClass2 implements AdapterView.OnItemSelectedListener {
        public final /* synthetic */ List val$instances;
        public final /* synthetic */ MenuItem val$menuItem;

        public AnonymousClass2(List list, MenuItem menuItem) {
            this.val$instances = list;
            this.val$menuItem = menuItem;
        }

        @Override // android.widget.AdapterView.OnItemSelectedListener
        public final void onItemSelected(AdapterView adapterView, View view, int i, long j) {
            PeertubeInstance peertubeInstance = (PeertubeInstance) this.val$instances.get(i);
            String str = peertubeInstance.url;
            PeertubeInstance peertubeInstance2 = ServiceList.PeerTube.instance;
            peertubeInstance2.getClass();
            if (str.equals(peertubeInstance2.url)) {
                return;
            }
            MainActivity mainActivity = MainActivity.this;
            Room.selectInstance(peertubeInstance, mainActivity.getApplicationContext());
            int i2 = MainActivity.$r8$clinit;
            mainActivity.changeService(this.val$menuItem);
            ((FocusAwareDrawerLayout) mainActivity.mainBinding.root).closeDrawers(false);
            new Handler(Looper.getMainLooper()).postDelayed(new ReportExecutor$$ExternalSyntheticLambda0(this, 22), 300L);
        }

        @Override // android.widget.AdapterView.OnItemSelectedListener
        public final void onNothingSelected(AdapterView adapterView) {
        }
    }
}
