package org.wikipedia.main;

import android.content.Intent;
import android.content.res.ColorStateList;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.activity.EdgeToEdge;
import androidx.activity.OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0;
import androidx.activity.result.ActivityResultRegistry$register$2;
import androidx.appcompat.view.ActionMode;
import androidx.appcompat.view.ContextThemeWrapper;
import androidx.compose.ui.unit.DpKt;
import androidx.core.graphics.Insets;
import androidx.core.view.WindowInsetsControllerCompat$Impl23;
import androidx.core.view.WindowInsetsControllerCompat$Impl26;
import androidx.core.view.WindowInsetsControllerCompat$Impl30;
import androidx.core.view.WindowInsetsControllerCompat$Impl35;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager$FragmentIntentSenderContract;
import androidx.paging.HintHandler;
import androidx.recyclerview.widget.RecyclerView;
import androidx.room.Room;
import coil3.size.ViewSizeResolver$CC;
import coil3.util.ContextsKt;
import com.caverock.androidsvg.SVGAndroidRenderer;
import com.google.android.material.appbar.MaterialToolbar;
import j$.time.LocalDate;
import java.util.Set;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsJVMKt;
import okhttp3.Cache;
import okhttp3.MultipartBody;
import okhttp3.Request;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import okio.Okio__OkioKt;
import org.jsoup.Jsoup;
import org.wikimedia.testkitchen.TestKitchenClient;
import org.wikipedia.R;
import org.wikipedia.WikipediaApp;
import org.wikipedia.activity.SingleFragmentActivity;
import org.wikipedia.analytics.eventplatform.AppInteractionEvent;
import org.wikipedia.analytics.eventplatform.EventPlatformClient;
import org.wikipedia.analytics.eventplatform.ImageRecommendationsEvent;
import org.wikipedia.analytics.testkitchen.TestKitchenAdapter;
import org.wikipedia.feed.HomeFragment;
import org.wikipedia.feed.HomeTab;
import org.wikipedia.history.HistoryFragment;
import org.wikipedia.main.MainFragment;
import org.wikipedia.navtab.NavTab;
import org.wikipedia.navtab.NavTabLayout;
import org.wikipedia.onboarding.InitialOnboardingActivity;
import org.wikipedia.page.PageActivity;
import org.wikipedia.settings.Prefs;
import org.wikipedia.settings.PrefsIoUtil;
import org.wikipedia.theme.Theme;
import org.wikipedia.util.FileUtil;
import org.wikipedia.util.ShareUtil;
import org.wikipedia.views.ImageZoomHelper;
import org.wikipedia.widgets.readingchallenge.ReadingChallengeInstallWidgetDialog;
import org.wikipedia.widgets.readingchallenge.ReadingChallengeOnboardingActivity;
import org.wikipedia.widgets.readingchallenge.ReadingChallengeWidgetRepository;
import org.wikipedia.widgets.readingchallenge.StreakProgressBarKt;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u0003:\u0001\u0006B\u0007¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0007"}, d2 = {"Lorg/wikipedia/main/MainActivity;", "Lorg/wikipedia/activity/SingleFragmentActivity;", "Lorg/wikipedia/main/MainFragment;", "Lorg/wikipedia/main/MainFragment$Callback;", "<init>", "()V", "org/wikipedia/util/UriUtil", "app"}, k = 1, mv = {2, 3, 0}, xi = 48)
/* loaded from: classes.dex */
public final class MainActivity extends SingleFragmentActivity implements MainFragment.Callback {
    public static final /* synthetic */ int $r8$clinit = 0;
    public MultipartBody.Builder binding;
    public boolean controlNavTabInFragment;
    public Insets navBarInsets;
    public final ActivityResultRegistry$register$2 onboardingLauncher;
    public Insets statusBarInsets;

    public MainActivity() {
        Insets insets = Insets.NONE;
        this.statusBarInsets = insets;
        this.navBarInsets = insets;
        this.onboardingLauncher = (ActivityResultRegistry$register$2) registerForActivityResult(new OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0(22, this), new FragmentManager$FragmentIntentSenderContract(3));
    }

    public final void applyInsets() {
        MultipartBody.Builder builder = this.binding;
        if (builder == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            throw null;
        }
        LinearLayout linearLayout = (LinearLayout) builder.boundary;
        linearLayout.getClass();
        int i = ((MainFragment) getFragment()).getCurrentFragment() instanceof HomeFragment ? 0 : this.statusBarInsets.top + this.navBarInsets.top;
        Insets insets = this.statusBarInsets;
        int i2 = insets.left;
        Insets insets2 = this.navBarInsets;
        linearLayout.setPadding(i2 + insets2.left, i, insets.right + insets2.right, linearLayout.getPaddingBottom());
        Request.Builder builder2 = ((MainFragment) getFragment())._binding;
        builder2.getClass();
        FrameLayout frameLayout = (FrameLayout) builder2.headers;
        frameLayout.setPadding(frameLayout.getPaddingLeft(), frameLayout.getPaddingTop(), frameLayout.getPaddingRight(), this.statusBarInsets.bottom + this.navBarInsets.bottom);
    }

    public final void applyNavBarTheme(Theme theme) {
        ContextThemeWrapper contextThemeWrapper = new ContextThemeWrapper(this, theme.getResourceId());
        int themedColor = Cache.Companion.getThemedColor(contextThemeWrapper, R.attr.paper_color);
        int themedColor2 = Cache.Companion.getThemedColor(contextThemeWrapper, R.attr.border_color);
        ColorStateList colorStateList = FileUtil.getColorStateList(contextThemeWrapper, R.color.color_state_nav_tab);
        Request.Builder builder = ((MainFragment) getFragment())._binding;
        builder.getClass();
        NavTabLayout navTabLayout = (NavTabLayout) builder.body;
        colorStateList.getClass();
        navTabLayout.setBackgroundColor(themedColor);
        navTabLayout.setItemIconTintList(colorStateList);
        navTabLayout.setItemTextColor(colorStateList);
        Request.Builder builder2 = ((MainFragment) getFragment())._binding;
        builder2.getClass();
        ((View) builder2.method).setBackgroundColor(themedColor2);
        Request.Builder builder3 = ((MainFragment) getFragment())._binding;
        builder3.getClass();
        ((FrameLayout) builder3.headers).setBackgroundColor(themedColor);
        setNavigationBarColor(themedColor);
        boolean z = !theme.isDark();
        Window window = getWindow();
        window.getClass();
        HintHandler hintHandler = new HintHandler(window.getDecorView());
        int i = Build.VERSION.SDK_INT;
        (i >= 35 ? new WindowInsetsControllerCompat$Impl35(window, hintHandler) : i >= 30 ? new WindowInsetsControllerCompat$Impl30(window, hintHandler) : i >= 26 ? new WindowInsetsControllerCompat$Impl26(window, hintHandler) : new WindowInsetsControllerCompat$Impl23(window, hintHandler)).setAppearanceLightStatusBars(z);
        Window window2 = getWindow();
        window2.getClass();
        HintHandler hintHandler2 = new HintHandler(window2.getDecorView());
        int i2 = Build.VERSION.SDK_INT;
        (i2 >= 35 ? new WindowInsetsControllerCompat$Impl35(window2, hintHandler2) : i2 >= 30 ? new WindowInsetsControllerCompat$Impl30(window2, hintHandler2) : i2 >= 26 ? new WindowInsetsControllerCompat$Impl26(window2, hintHandler2) : new WindowInsetsControllerCompat$Impl23(window2, hintHandler2)).setAppearanceLightNavigationBars(z);
    }

    @Override // org.wikipedia.activity.SingleFragmentActivity
    public final Fragment createFragment() {
        MainFragment mainFragment = new MainFragment();
        mainFragment.setRetainInstance();
        return mainFragment;
    }

    @Override // org.wikipedia.activity.SingleFragmentActivity
    public final void inflateAndSetContentView() {
        View inflate = getLayoutInflater().inflate(R.layout.activity_main, (ViewGroup) null, false);
        int i = R.id.fragment_container;
        if (((FrameLayout) Room.findChildViewById(inflate, R.id.fragment_container)) != null) {
            i = R.id.main_toolbar;
            MaterialToolbar materialToolbar = (MaterialToolbar) Room.findChildViewById(inflate, R.id.main_toolbar);
            if (materialToolbar != null) {
                i = R.id.main_toolbar_wordmark;
                ImageView imageView = (ImageView) Room.findChildViewById(inflate, R.id.main_toolbar_wordmark);
                if (imageView != null) {
                    LinearLayout linearLayout = (LinearLayout) inflate;
                    this.binding = new MultipartBody.Builder(linearLayout, materialToolbar, imageView);
                    setContentView(linearLayout);
                    return;
                }
            }
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m$3("Missing required view with ID: ".concat(inflate.getResources().getResourceName(i)));
    }

    @Override // org.wikipedia.activity.SingleFragmentActivity, org.wikipedia.activity.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public final void onCreate(Bundle bundle) {
        Uri data;
        Set<String> categories;
        super.onCreate(bundle);
        if (getApplicationContext() instanceof WikipediaApp) {
            int i = 0;
            ((FrameLayout) findViewById(R.id.fragment_container)).setFitsSystemWindows(false);
            EdgeToEdge.enable$default(this);
            WikipediaApp wikipediaApp = WikipediaApp.instance;
            boolean z = !Jsoup.getInstance().currentTheme.isDark();
            Window window = getWindow();
            window.getClass();
            HintHandler hintHandler = new HintHandler(window.getDecorView());
            int i2 = Build.VERSION.SDK_INT;
            (i2 >= 35 ? new WindowInsetsControllerCompat$Impl35(window, hintHandler) : i2 >= 30 ? new WindowInsetsControllerCompat$Impl30(window, hintHandler) : i2 >= 26 ? new WindowInsetsControllerCompat$Impl26(window, hintHandler) : new WindowInsetsControllerCompat$Impl23(window, hintHandler)).setAppearanceLightStatusBars(z);
            Window window2 = getWindow();
            window2.getClass();
            HintHandler hintHandler2 = new HintHandler(window2.getDecorView());
            (i2 >= 35 ? new WindowInsetsControllerCompat$Impl35(window2, hintHandler2) : i2 >= 30 ? new WindowInsetsControllerCompat$Impl30(window2, hintHandler2) : i2 >= 26 ? new WindowInsetsControllerCompat$Impl26(window2, hintHandler2) : new WindowInsetsControllerCompat$Impl23(window2, hintHandler2)).setAppearanceLightNavigationBars(z);
            MultipartBody.Builder builder = this.binding;
            if (builder == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                throw null;
            }
            ((LinearLayout) builder.boundary).setOnApplyWindowInsetsListener(new MainActivity$$ExternalSyntheticLambda0(i, this));
            DpKt.addCallback$default(getOnBackPressedDispatcher(), this, new MainActivity$$ExternalSyntheticLambda1(i, this));
            this.imageZoomHelper = new ImageZoomHelper(this);
            Prefs prefs = Prefs.INSTANCE;
            if (Prefs.isInitialOnboardingEnabled() && bundle == null && !getIntent().hasExtra("previewSavedReadingList")) {
                this.onboardingLauncher.launch(new Intent(this, (Class<?>) InitialOnboardingActivity.class), null);
            }
            setNavigationBarColor(0);
            MultipartBody.Builder builder2 = this.binding;
            if (builder2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                throw null;
            }
            setSupportActionBar((MaterialToolbar) builder2.type);
            ContextsKt supportActionBar = getSupportActionBar();
            if (supportActionBar != null) {
                supportActionBar.setTitle("");
            }
            ContextsKt supportActionBar2 = getSupportActionBar();
            if (supportActionBar2 != null) {
                supportActionBar2.setDisplayHomeAsUpEnabled(false);
            }
            MultipartBody.Builder builder3 = this.binding;
            if (builder3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                throw null;
            }
            ((MaterialToolbar) builder3.type).setNavigationIcon((Drawable) null);
            if (bundle == null) {
                Intent intent = getIntent();
                intent.getClass();
                if (Intrinsics.areEqual(intent.getAction(), "android.intent.action.MAIN") && (categories = intent.getCategories()) != null && categories.contains("android.intent.category.LAUNCHER")) {
                    TestKitchenClient testKitchenClient = TestKitchenAdapter.client;
                    testKitchenClient.getClass();
                    SVGAndroidRenderer.submitInteraction$default(new SVGAndroidRenderer("apps-open", testKitchenClient), "app_open", "app_icon", null, null, null, null, 252);
                }
                if (!"android.intent.action.VIEW".equals(intent.getAction()) || intent.getData() == null || (data = intent.getData()) == null) {
                    return;
                }
                String authority = data.getAuthority();
                if (StringsKt__StringsJVMKt.endsWith(authority != null ? authority : "", "wikipedia.org", false)) {
                    String uri = data.toString();
                    uri.getClass();
                    Uri parse = Uri.parse(StringsKt__StringsJVMKt.replace$default(uri, "wikipedia://", "https://"));
                    parse.getClass();
                    startActivity(new Intent(this, (Class<?>) PageActivity.class).setAction("android.intent.action.VIEW").setData(parse));
                }
            }
        }
    }

    @Override // org.wikipedia.activity.BaseActivity
    public final void onGoOffline() {
        Fragment currentFragment = ((MainFragment) getFragment()).getCurrentFragment();
        if (currentFragment instanceof HistoryFragment) {
            ((HistoryFragment) currentFragment).refresh();
        }
    }

    @Override // org.wikipedia.activity.BaseActivity
    public final void onGoOnline() {
        Fragment currentFragment = ((MainFragment) getFragment()).getCurrentFragment();
        if (currentFragment instanceof HistoryFragment) {
            ((HistoryFragment) currentFragment).refresh();
        }
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public final void onNewIntent(Intent intent) {
        intent.getClass();
        super.onNewIntent(intent);
        setIntent(intent);
        if (intent.hasExtra("reading_challenge_join")) {
            LocalDate localDate = ReadingChallengeWidgetRepository.REMOVE_DATE;
            if (!Prefs.getReadingChallengeOnboardingShown() && !LocalDate.now().isBefore(StreakProgressBarKt.getSTART_DATE()) && !LocalDate.now().isAfter(StreakProgressBarKt.getEND_DATE())) {
                Intent flags = new Intent(this, (Class<?>) ReadingChallengeOnboardingActivity.class).setFlags(67108864);
                flags.getClass();
                this.requestReadingChallengeActivity.launch(flags, null);
            }
        }
        ((MainFragment) getFragment()).handleIntent$2(intent);
    }

    @Override // org.wikipedia.activity.BaseActivity, androidx.appcompat.app.AppCompatActivity, android.app.Activity
    public final void onResume() {
        super.onResume();
        invalidateOptionsMenu();
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.appcompat.app.AppCompatCallback
    public final void onSupportActionModeFinished(ActionMode actionMode) {
        actionMode.getClass();
        ((MainFragment) getFragment()).setBottomNavVisible(true);
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.appcompat.app.AppCompatCallback
    public final void onSupportActionModeStarted(ActionMode actionMode) {
        actionMode.getClass();
        if (this.controlNavTabInFragment) {
            return;
        }
        ((MainFragment) getFragment()).setBottomNavVisible(false);
    }

    public final void onTabChanged(NavTab navTab) {
        Theme theme;
        navTab.getClass();
        if (navTab == NavTab.HOME) {
            MultipartBody.Builder builder = this.binding;
            if (builder == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                throw null;
            }
            ((MaterialToolbar) builder.type).setVisibility(8);
            MultipartBody.Builder builder2 = this.binding;
            if (builder2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                throw null;
            }
            ((ImageView) builder2.parts).setVisibility(0);
            MultipartBody.Builder builder3 = this.binding;
            if (builder3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                throw null;
            }
            ((MaterialToolbar) builder3.type).setTitle("");
            this.controlNavTabInFragment = false;
            Fragment currentFragment = ((MainFragment) getFragment()).getCurrentFragment();
            HomeFragment homeFragment = currentFragment instanceof HomeFragment ? (HomeFragment) currentFragment : null;
            if ((homeFragment != null ? (HomeTab) homeFragment.getViewModel().selectedTab.$$delegate_0.getValue() : null) == HomeTab.FOR_YOU) {
                theme = Theme.BLACK;
            } else {
                WikipediaApp wikipediaApp = WikipediaApp.instance;
                theme = Jsoup.getInstance().currentTheme;
            }
            applyNavBarTheme(theme);
        } else {
            NavTab navTab2 = NavTab.SEARCH;
            if (navTab == navTab2) {
                Prefs prefs = Prefs.INSTANCE;
                WikipediaApp wikipediaApp2 = WikipediaApp.instance;
                if (ViewSizeResolver$CC.m(Jsoup.getInstance(), 0, ViewSizeResolver$CC.m(new Object[0], 0, Jsoup.getInstance().getResources(), R.string.preference_key_show_search_tab_tooltip), true)) {
                    Request.Builder builder4 = ((MainFragment) getFragment())._binding;
                    builder4.getClass();
                    View findViewById = ((NavTabLayout) builder4.body).findViewById(navTab2.getId());
                    findViewById.getClass();
                    String string = getString(R.string.search_tab_tooltip);
                    string.getClass();
                    ShareUtil.showTooltip$default(this, findViewById, string, true, false, 224);
                    PrefsIoUtil.setBoolean(R.string.preference_key_show_search_tab_tooltip, false);
                }
            }
            if (navTab == NavTab.EDITS) {
                ImageRecommendationsEvent.Companion.logImpression$default(ImageRecommendationsEvent.Companion, "suggested_edit_dialog", null, 6);
                EventPlatformClient eventPlatformClient = EventPlatformClient.INSTANCE;
                WikipediaApp wikipediaApp3 = WikipediaApp.instance;
                String m = ViewSizeResolver$CC.m();
                Prefs prefs2 = Prefs.INSTANCE;
                EventPlatformClient.submit(new AppInteractionEvent("impression", "suggested_edits_dialog", "", m, Prefs.getRecentEditsWikiCode(), "app_patroller_experience"));
                LocalDate localDate = ReadingChallengeWidgetRepository.REMOVE_DATE;
                if (StreakProgressBarKt.shouldShowWidgetInstallDialog()) {
                    Okio__OkioKt.show(getSupportFragmentManager(), new ReadingChallengeInstallWidgetDialog());
                }
            }
            MultipartBody.Builder builder5 = this.binding;
            if (builder5 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                throw null;
            }
            ((ImageView) builder5.parts).setVisibility(8);
            MultipartBody.Builder builder6 = this.binding;
            if (builder6 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                throw null;
            }
            ((MaterialToolbar) builder6.type).setTitle(navTab.getText());
            MultipartBody.Builder builder7 = this.binding;
            if (builder7 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                throw null;
            }
            ((MaterialToolbar) builder7.type).setVisibility(0);
            this.controlNavTabInFragment = true;
            WikipediaApp wikipediaApp4 = WikipediaApp.instance;
            applyNavBarTheme(Jsoup.getInstance().currentTheme);
        }
        applyInsets();
    }

    @Override // org.wikipedia.activity.BaseActivity
    public final void onUnreadNotification() {
        ((MainFragment) getFragment()).updateNotificationDot$1(true);
        Fragment currentFragment = ((MainFragment) getFragment()).getCurrentFragment();
        HomeFragment homeFragment = currentFragment instanceof HomeFragment ? (HomeFragment) currentFragment : null;
        if (homeFragment != null) {
            homeFragment.refreshNotification();
        }
    }

    public final void updateToolbarElevation(boolean z) {
        MultipartBody.Builder builder = this.binding;
        if (z) {
            if (builder != null) {
                ((MaterialToolbar) builder.type).setElevation(Okio__OkioKt.dpToPx(Okio__OkioKt.getDimension(R.dimen.toolbar_default_elevation)));
                return;
            } else {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                throw null;
            }
        }
        if (builder != null) {
            ((MaterialToolbar) builder.type).setElevation(RecyclerView.DECELERATION_RATE);
        } else {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            throw null;
        }
    }
}
