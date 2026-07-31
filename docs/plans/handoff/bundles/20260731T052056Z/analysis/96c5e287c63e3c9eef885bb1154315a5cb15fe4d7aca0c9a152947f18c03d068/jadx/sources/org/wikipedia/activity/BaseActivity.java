package org.wikipedia.activity;

import android.content.Intent;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.ColorDrawable;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.util.TypedValue;
import android.view.MenuItem;
import android.view.Window;
import androidx.activity.ComponentActivity;
import androidx.activity.contextaware.OnContextAvailableListener;
import androidx.activity.result.ActivityResult;
import androidx.activity.result.ActivityResultCallback;
import androidx.activity.result.ActivityResultRegistry$register$2;
import androidx.appcompat.app.AlertController;
import androidx.appcompat.app.AppCompatActivity;
import androidx.core.content.pm.ShortcutManagerCompat;
import androidx.core.view.WindowInsetsControllerCompat$Impl23;
import androidx.core.view.WindowInsetsControllerCompat$Impl26;
import androidx.core.view.WindowInsetsControllerCompat$Impl30;
import androidx.core.view.WindowInsetsControllerCompat$Impl35;
import androidx.fragment.app.DialogFragment;
import androidx.fragment.app.FragmentManager$FragmentIntentSenderContract;
import androidx.fragment.app.FragmentManagerImpl;
import androidx.lifecycle.ViewModelKt;
import androidx.paging.HintHandler;
import androidx.room.Room;
import coil3.size.ViewSizeResolver$CC;
import coil3.svg.internal.AndroidSvg;
import coil3.util.ContextsKt;
import com.caverock.androidsvg.SVGAndroidRenderer;
import com.google.android.material.dialog.MaterialAlertDialogBuilder;
import com.skydoves.balloon.Balloon;
import j$.time.LocalDate;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import kotlin.coroutines.Continuation;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.ReflectionFactory;
import kotlin.reflect.KClass;
import kotlin.text.StringsKt;
import kotlinx.coroutines.AwaitKt;
import kotlinx.coroutines.Job;
import okhttp3.Cache;
import okhttp3.Headers;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import okio.Okio__OkioKt;
import okio.Path;
import org.jsoup.Jsoup;
import org.wikimedia.testkitchen.TestKitchenClient;
import org.wikipedia.Constants;
import org.wikipedia.R;
import org.wikipedia.WikipediaApp;
import org.wikipedia.activity.BaseActivity;
import org.wikipedia.alphaupdater.AlphaUpdateChecker;
import org.wikipedia.analytics.eventplatform.BreadCrumbLogEvent;
import org.wikipedia.analytics.eventplatform.Event;
import org.wikipedia.analytics.eventplatform.EventPlatformClient;
import org.wikipedia.analytics.testkitchen.TestKitchenAdapter;
import org.wikipedia.connectivity.ConnectionStateMonitor;
import org.wikipedia.edit.richtext.SyntaxHighlighter;
import org.wikipedia.login.LoginActivity;
import org.wikipedia.login.LoginClient;
import org.wikipedia.main.MainActivity;
import org.wikipedia.notifications.NotificationPresenter;
import org.wikipedia.page.PageActivity;
import org.wikipedia.recurring.DailyEventTask;
import org.wikipedia.recurring.RecurringTask;
import org.wikipedia.richtext.CustomHtmlParser;
import org.wikipedia.settings.Prefs;
import org.wikipedia.settings.PrefsIoUtil;
import org.wikipedia.settings.RemoteConfigRefreshTask;
import org.wikipedia.talk.UserTalkPopupHelper$sendThanks$$inlined$CoroutineExceptionHandler$1;
import org.wikipedia.theme.Theme;
import org.wikipedia.util.DeviceUtil$$ExternalSyntheticLambda1;
import org.wikipedia.util.FileUtil;
import org.wikipedia.util.ShareUtil;
import org.wikipedia.util.log.L;
import org.wikipedia.views.ImageZoomHelper;
import org.wikipedia.widgets.readingchallenge.ReadingChallengeInstallWidgetDialog;
import org.wikipedia.widgets.readingchallenge.ReadingChallengeOnboardingActivity;
import org.wikipedia.widgets.readingchallenge.ReadingChallengeWidgetRepository;
import org.wikipedia.widgets.readingchallenge.StreakProgressBarKt;
import org.wikipedia.yearinreview.YearInReviewOnboardingActivity;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class BaseActivity extends AppCompatActivity {
    public static final /* synthetic */ int $r8$clinit = 0;
    public SVGAndroidRenderer _instrument;
    public Callback callback;
    public Balloon currentTooltip;
    public ImageZoomHelper imageZoomHelper;
    public final ActivityResultRegistry$register$2 notificationPermissionLauncher;
    public final ActivityResultRegistry$register$2 requestDonateActivity;
    public final ActivityResultRegistry$register$2 requestPermissionLauncher;
    public final ActivityResultRegistry$register$2 requestReadingChallengeActivity;
    public final ActivityResultRegistry$register$2 yearInReviewLauncher;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public interface Callback {
        void onPermissionResult(BaseActivity baseActivity, boolean z);
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public abstract /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[Constants.InvokeSource.values().length];
            try {
                iArr[Constants.InvokeSource.WIDGET.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[Constants.InvokeSource.NOTIFICATION.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[Constants.InvokeSource.APP_SHORTCUTS.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public BaseActivity() {
        ((AndroidSvg) this.savedStateRegistryController.renderOptions).registerSavedStateProvider("androidx:appcompat", new AppCompatActivity.AnonymousClass1(this));
        addOnContextAvailableListener(new OnContextAvailableListener() { // from class: androidx.appcompat.app.AppCompatActivity.2
            public AnonymousClass2() {
            }

            @Override // androidx.activity.contextaware.OnContextAvailableListener
            public final void onContextAvailable(ComponentActivity componentActivity) {
                BaseActivity baseActivity = BaseActivity.this;
                AppCompatDelegate delegate = baseActivity.getDelegate();
                delegate.installViewFactory();
                ((AndroidSvg) baseActivity.savedStateRegistryController.renderOptions).consumeRestoredStateForKey("androidx:appcompat");
                delegate.onCreate();
            }
        });
        final int i = 2;
        final int i2 = 0;
        this.requestPermissionLauncher = (ActivityResultRegistry$register$2) registerForActivityResult(new ActivityResultCallback(this) { // from class: org.wikipedia.activity.BaseActivity$$ExternalSyntheticLambda2
            public final /* synthetic */ BaseActivity f$0;

            {
                this.f$0 = this;
            }

            @Override // androidx.activity.result.ActivityResultCallback
            public final void onActivityResult(Object obj) {
                int i3 = i2;
                DialogFragment dialogFragment = null;
                BaseActivity baseActivity = this.f$0;
                switch (i3) {
                    case 0:
                        boolean booleanValue = ((Boolean) obj).booleanValue();
                        BaseActivity.Callback callback = baseActivity.callback;
                        if (callback != null) {
                            callback.onPermissionResult(baseActivity, booleanValue);
                            break;
                        }
                        break;
                    case 1:
                        ActivityResult activityResult = (ActivityResult) obj;
                        activityResult.getClass();
                        if (activityResult.resultCode == -1) {
                            FragmentManagerImpl supportFragmentManager = baseActivity.getSupportFragmentManager();
                            if (!supportFragmentManager.isStateSaved() && !supportFragmentManager.mDestroyed) {
                                dialogFragment = (DialogFragment) supportFragmentManager.findFragmentByTag("bottom_sheet_fragment");
                            }
                            if (dialogFragment != null) {
                                dialogFragment.dismiss();
                            }
                            ShareUtil.showMessage(baseActivity, R.string.donate_gpay_success_message);
                            break;
                        }
                        break;
                    case 2:
                        ((ActivityResult) obj).getClass();
                        LocalDate localDate = ReadingChallengeWidgetRepository.REMOVE_DATE;
                        if (StreakProgressBarKt.shouldShowWidgetInstallDialog()) {
                            FragmentManagerImpl supportFragmentManager2 = baseActivity.getSupportFragmentManager();
                            if (!supportFragmentManager2.isStateSaved() && !supportFragmentManager2.mDestroyed) {
                                dialogFragment = (DialogFragment) supportFragmentManager2.findFragmentByTag("bottom_sheet_fragment");
                            }
                            if (dialogFragment != null) {
                                dialogFragment.dismiss();
                            }
                            Okio__OkioKt.show(baseActivity.getSupportFragmentManager(), new ReadingChallengeInstallWidgetDialog());
                            break;
                        }
                        break;
                    default:
                        ActivityResult activityResult2 = (ActivityResult) obj;
                        activityResult2.getClass();
                        if (activityResult2.resultCode == 0) {
                            String string = baseActivity.getString(R.string.year_in_review_get_started_later);
                            string.getClass();
                            ShareUtil.showMessage(baseActivity, string, 0);
                            break;
                        }
                        break;
                }
            }
        }, new FragmentManager$FragmentIntentSenderContract(i));
        final int i3 = 3;
        final int i4 = 1;
        this.requestDonateActivity = (ActivityResultRegistry$register$2) registerForActivityResult(new ActivityResultCallback(this) { // from class: org.wikipedia.activity.BaseActivity$$ExternalSyntheticLambda2
            public final /* synthetic */ BaseActivity f$0;

            {
                this.f$0 = this;
            }

            @Override // androidx.activity.result.ActivityResultCallback
            public final void onActivityResult(Object obj) {
                int i32 = i4;
                DialogFragment dialogFragment = null;
                BaseActivity baseActivity = this.f$0;
                switch (i32) {
                    case 0:
                        boolean booleanValue = ((Boolean) obj).booleanValue();
                        BaseActivity.Callback callback = baseActivity.callback;
                        if (callback != null) {
                            callback.onPermissionResult(baseActivity, booleanValue);
                            break;
                        }
                        break;
                    case 1:
                        ActivityResult activityResult = (ActivityResult) obj;
                        activityResult.getClass();
                        if (activityResult.resultCode == -1) {
                            FragmentManagerImpl supportFragmentManager = baseActivity.getSupportFragmentManager();
                            if (!supportFragmentManager.isStateSaved() && !supportFragmentManager.mDestroyed) {
                                dialogFragment = (DialogFragment) supportFragmentManager.findFragmentByTag("bottom_sheet_fragment");
                            }
                            if (dialogFragment != null) {
                                dialogFragment.dismiss();
                            }
                            ShareUtil.showMessage(baseActivity, R.string.donate_gpay_success_message);
                            break;
                        }
                        break;
                    case 2:
                        ((ActivityResult) obj).getClass();
                        LocalDate localDate = ReadingChallengeWidgetRepository.REMOVE_DATE;
                        if (StreakProgressBarKt.shouldShowWidgetInstallDialog()) {
                            FragmentManagerImpl supportFragmentManager2 = baseActivity.getSupportFragmentManager();
                            if (!supportFragmentManager2.isStateSaved() && !supportFragmentManager2.mDestroyed) {
                                dialogFragment = (DialogFragment) supportFragmentManager2.findFragmentByTag("bottom_sheet_fragment");
                            }
                            if (dialogFragment != null) {
                                dialogFragment.dismiss();
                            }
                            Okio__OkioKt.show(baseActivity.getSupportFragmentManager(), new ReadingChallengeInstallWidgetDialog());
                            break;
                        }
                        break;
                    default:
                        ActivityResult activityResult2 = (ActivityResult) obj;
                        activityResult2.getClass();
                        if (activityResult2.resultCode == 0) {
                            String string = baseActivity.getString(R.string.year_in_review_get_started_later);
                            string.getClass();
                            ShareUtil.showMessage(baseActivity, string, 0);
                            break;
                        }
                        break;
                }
            }
        }, new FragmentManager$FragmentIntentSenderContract(i3));
        this.requestReadingChallengeActivity = (ActivityResultRegistry$register$2) registerForActivityResult(new ActivityResultCallback(this) { // from class: org.wikipedia.activity.BaseActivity$$ExternalSyntheticLambda2
            public final /* synthetic */ BaseActivity f$0;

            {
                this.f$0 = this;
            }

            @Override // androidx.activity.result.ActivityResultCallback
            public final void onActivityResult(Object obj) {
                int i32 = i;
                DialogFragment dialogFragment = null;
                BaseActivity baseActivity = this.f$0;
                switch (i32) {
                    case 0:
                        boolean booleanValue = ((Boolean) obj).booleanValue();
                        BaseActivity.Callback callback = baseActivity.callback;
                        if (callback != null) {
                            callback.onPermissionResult(baseActivity, booleanValue);
                            break;
                        }
                        break;
                    case 1:
                        ActivityResult activityResult = (ActivityResult) obj;
                        activityResult.getClass();
                        if (activityResult.resultCode == -1) {
                            FragmentManagerImpl supportFragmentManager = baseActivity.getSupportFragmentManager();
                            if (!supportFragmentManager.isStateSaved() && !supportFragmentManager.mDestroyed) {
                                dialogFragment = (DialogFragment) supportFragmentManager.findFragmentByTag("bottom_sheet_fragment");
                            }
                            if (dialogFragment != null) {
                                dialogFragment.dismiss();
                            }
                            ShareUtil.showMessage(baseActivity, R.string.donate_gpay_success_message);
                            break;
                        }
                        break;
                    case 2:
                        ((ActivityResult) obj).getClass();
                        LocalDate localDate = ReadingChallengeWidgetRepository.REMOVE_DATE;
                        if (StreakProgressBarKt.shouldShowWidgetInstallDialog()) {
                            FragmentManagerImpl supportFragmentManager2 = baseActivity.getSupportFragmentManager();
                            if (!supportFragmentManager2.isStateSaved() && !supportFragmentManager2.mDestroyed) {
                                dialogFragment = (DialogFragment) supportFragmentManager2.findFragmentByTag("bottom_sheet_fragment");
                            }
                            if (dialogFragment != null) {
                                dialogFragment.dismiss();
                            }
                            Okio__OkioKt.show(baseActivity.getSupportFragmentManager(), new ReadingChallengeInstallWidgetDialog());
                            break;
                        }
                        break;
                    default:
                        ActivityResult activityResult2 = (ActivityResult) obj;
                        activityResult2.getClass();
                        if (activityResult2.resultCode == 0) {
                            String string = baseActivity.getString(R.string.year_in_review_get_started_later);
                            string.getClass();
                            ShareUtil.showMessage(baseActivity, string, 0);
                            break;
                        }
                        break;
                }
            }
        }, new FragmentManager$FragmentIntentSenderContract(i3));
        this.notificationPermissionLauncher = (ActivityResultRegistry$register$2) registerForActivityResult(new _UtilJvmKt$$ExternalSyntheticLambda0(), new FragmentManager$FragmentIntentSenderContract(i));
        this.yearInReviewLauncher = (ActivityResultRegistry$register$2) registerForActivityResult(new ActivityResultCallback(this) { // from class: org.wikipedia.activity.BaseActivity$$ExternalSyntheticLambda2
            public final /* synthetic */ BaseActivity f$0;

            {
                this.f$0 = this;
            }

            @Override // androidx.activity.result.ActivityResultCallback
            public final void onActivityResult(Object obj) {
                int i32 = i3;
                DialogFragment dialogFragment = null;
                BaseActivity baseActivity = this.f$0;
                switch (i32) {
                    case 0:
                        boolean booleanValue = ((Boolean) obj).booleanValue();
                        BaseActivity.Callback callback = baseActivity.callback;
                        if (callback != null) {
                            callback.onPermissionResult(baseActivity, booleanValue);
                            break;
                        }
                        break;
                    case 1:
                        ActivityResult activityResult = (ActivityResult) obj;
                        activityResult.getClass();
                        if (activityResult.resultCode == -1) {
                            FragmentManagerImpl supportFragmentManager = baseActivity.getSupportFragmentManager();
                            if (!supportFragmentManager.isStateSaved() && !supportFragmentManager.mDestroyed) {
                                dialogFragment = (DialogFragment) supportFragmentManager.findFragmentByTag("bottom_sheet_fragment");
                            }
                            if (dialogFragment != null) {
                                dialogFragment.dismiss();
                            }
                            ShareUtil.showMessage(baseActivity, R.string.donate_gpay_success_message);
                            break;
                        }
                        break;
                    case 2:
                        ((ActivityResult) obj).getClass();
                        LocalDate localDate = ReadingChallengeWidgetRepository.REMOVE_DATE;
                        if (StreakProgressBarKt.shouldShowWidgetInstallDialog()) {
                            FragmentManagerImpl supportFragmentManager2 = baseActivity.getSupportFragmentManager();
                            if (!supportFragmentManager2.isStateSaved() && !supportFragmentManager2.mDestroyed) {
                                dialogFragment = (DialogFragment) supportFragmentManager2.findFragmentByTag("bottom_sheet_fragment");
                            }
                            if (dialogFragment != null) {
                                dialogFragment.dismiss();
                            }
                            Okio__OkioKt.show(baseActivity.getSupportFragmentManager(), new ReadingChallengeInstallWidgetDialog());
                            break;
                        }
                        break;
                    default:
                        ActivityResult activityResult2 = (ActivityResult) obj;
                        activityResult2.getClass();
                        if (activityResult2.resultCode == 0) {
                            String string = baseActivity.getString(R.string.year_in_review_get_started_later);
                            string.getClass();
                            ShareUtil.showMessage(baseActivity, string, 0);
                            break;
                        }
                        break;
                }
            }
        }, new FragmentManager$FragmentIntentSenderContract(i3));
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x02db A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:14:? A[RETURN, SYNTHETIC] */
    @Override // android.app.Activity, android.view.Window.Callback
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean dispatchTouchEvent(android.view.MotionEvent r22) {
        /*
            Method dump skipped, instructions count: 746
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.wikipedia.activity.BaseActivity.dispatchTouchEvent(android.view.MotionEvent):boolean");
    }

    public final void maybeShowLoggedOutInBackgroundDialog() {
        Prefs prefs = Prefs.INSTANCE;
        int i = 0;
        WikipediaApp wikipediaApp = WikipediaApp.instance;
        if (!ViewSizeResolver$CC.m(Jsoup.getInstance(), 0, ViewSizeResolver$CC.m(new Object[0], 0, Jsoup.getInstance().getResources(), R.string.preference_key_logged_out_in_background), false) || isDestroyed() || (this instanceof LoginActivity)) {
            return;
        }
        Prefs.setQueueLoggedOutInBackgroundDialog(false);
        TestKitchenClient testKitchenClient = TestKitchenAdapter.client;
        testKitchenClient.getClass();
        SVGAndroidRenderer sVGAndroidRenderer = new SVGAndroidRenderer("apps-authentication", testKitchenClient);
        sVGAndroidRenderer.parentStack = "logout_background_dialog";
        sVGAndroidRenderer.startFunnel("logout_account_background");
        SVGAndroidRenderer.submitInteraction$default(sVGAndroidRenderer, "impression", null, null, null, null, null, 254);
        MaterialAlertDialogBuilder materialAlertDialogBuilder = new MaterialAlertDialogBuilder(this, 0);
        ((AlertController.AlertParams) materialAlertDialogBuilder.array).mCancelable = false;
        materialAlertDialogBuilder.setTitle(R.string.logged_out_in_background_title);
        materialAlertDialogBuilder.setMessage(R.string.logged_out_in_background_dialog);
        materialAlertDialogBuilder.setPositiveButton(R.string.logged_out_in_background_login, new BaseActivity$$ExternalSyntheticLambda0(i, sVGAndroidRenderer, this));
        materialAlertDialogBuilder.setNegativeButton(R.string.logged_out_in_background_cancel, new BaseActivity$$ExternalSyntheticLambda1(sVGAndroidRenderer, i));
        materialAlertDialogBuilder.show();
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        if (i2 == -1 && intent != null && intent.hasExtra("onThisDayGameCompleted") && (this instanceof PageActivity)) {
            Prefs prefs = Prefs.INSTANCE;
            WikipediaApp wikipediaApp = WikipediaApp.instance;
            if (ViewSizeResolver$CC.m(Jsoup.getInstance(), 0, ViewSizeResolver$CC.m(new Object[0], 0, Jsoup.getInstance().getResources(), R.string.preference_key_otd_game_first_played_shown), false)) {
                return;
            }
            ShareUtil.showMessage(this, R.string.on_this_day_game_completed_message);
            PrefsIoUtil.setBoolean(R.string.preference_key_otd_game_first_played_shown, true);
        }
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        int i = 0;
        if (!(getApplicationContext() instanceof WikipediaApp)) {
            new Handler(getMainLooper()).post(new DeviceUtil$$ExternalSyntheticLambda1(i));
            finish();
            return;
        }
        setTheme();
        Window window = getWindow();
        TypedValue typedValue = new TypedValue();
        int i2 = 1;
        Continuation continuation = null;
        if (!getTheme().resolveAttribute(R.attr.paper_color, typedValue, true)) {
            typedValue = null;
        }
        if (typedValue == null) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m("Attribute not found; ID=2130969831");
            return;
        }
        window.setBackgroundDrawable(new ColorDrawable(typedValue.data));
        if ("ACTION_APP_SHORTCUT".equals(getIntent().getAction())) {
            getIntent().putExtra("invokeSource", Constants.InvokeSource.APP_SHORTCUTS);
            String stringExtra = getIntent().getStringExtra("APP_SHORTCUT_ID");
            if (stringExtra != null && stringExtra.length() != 0) {
                ShortcutManagerCompat.reportShortcutUsed(getApplicationContext(), stringExtra);
            }
        }
        Constants.InvokeSource invokeSource = (Constants.InvokeSource) getIntent().getSerializableExtra("invokeSource");
        int i3 = 3;
        int i4 = 2;
        if (invokeSource != null) {
            int i5 = WhenMappings.$EnumSwitchMapping$0[invokeSource.ordinal()];
            if (i5 == 1) {
                String stringExtra2 = getIntent().getStringExtra("widgetType");
                TestKitchenClient testKitchenClient = TestKitchenAdapter.client;
                testKitchenClient.getClass();
                SVGAndroidRenderer.submitInteraction$default(new SVGAndroidRenderer("apps-open", testKitchenClient), "app_open", "widget", stringExtra2, null, null, null, 248);
            } else if (i5 == 2) {
                TestKitchenClient testKitchenClient2 = TestKitchenAdapter.client;
                testKitchenClient2.getClass();
                SVGAndroidRenderer.submitInteraction$default(new SVGAndroidRenderer("apps-open", testKitchenClient2), "app_open", "notification", null, null, null, null, 252);
            } else if (i5 == 3) {
                String stringExtra3 = getIntent().getStringExtra("APP_SHORTCUT_ID");
                TestKitchenClient testKitchenClient3 = TestKitchenAdapter.client;
                testKitchenClient3.getClass();
                SVGAndroidRenderer.submitInteraction$default(new SVGAndroidRenderer("apps-open", testKitchenClient3), "app_open", "shortcut", stringExtra3, null, null, null, 248);
            }
        }
        ContextsKt supportActionBar = getSupportActionBar();
        if (supportActionBar != null) {
            supportActionBar.setDisplayHomeAsUpEnabled(true);
        }
        WikipediaApp wikipediaApp = WikipediaApp.instance;
        WikipediaApp jsoup = Jsoup.getInstance();
        ArrayList mutableListOf = Room.mutableListOf(new RemoteConfigRefreshTask(i), new DailyEventTask(jsoup), new AlphaUpdateChecker(jsoup, 1), new RemoteConfigRefreshTask(i2), new RemoteConfigRefreshTask(i4));
        if (!StringsKt.contains("org.wikipedia", "beta", false)) {
            if (StringsKt.contains("org.wikipedia", "alpha", false)) {
                mutableListOf.add(new AlphaUpdateChecker(jsoup, 0));
            } else {
                StringsKt.contains("org.wikipedia", "dev", false);
            }
        }
        Iterator it = mutableListOf.iterator();
        while (it.hasNext()) {
            AwaitKt.launch$default(AwaitKt.MainScope(), new UserTalkPopupHelper$sendThanks$$inlined$CoroutineExceptionHandler$1(Job.Key.$$INSTANCE$1, 8), null, new SyntaxHighlighter.AnonymousClass2(13, (RecurringTask) it.next(), continuation), 2);
        }
        Prefs prefs = Prefs.INSTANCE;
        WikipediaApp wikipediaApp2 = WikipediaApp.instance;
        if (ViewSizeResolver$CC.m(Jsoup.getInstance(), 0, ViewSizeResolver$CC.m(new Object[0], 0, Jsoup.getInstance().getResources(), R.string.preference_key_reading_lists_first_time_sync), true) && Headers.Companion.isLoggedIn()) {
            PrefsIoUtil.setBoolean(R.string.preference_key_reading_lists_first_time_sync, false);
            Prefs.setReadingListSyncEnabled(true);
            Path.Companion.manualSyncWithForce();
        }
        ConnectionStateMonitor connectionStateMonitor = Jsoup.getInstance().connectionStateMonitor;
        connectionStateMonitor.getClass();
        connectionStateMonitor.ensureNetworkCallbackRegistered();
        connectionStateMonitor.callbacks.add(this);
        boolean z = !Jsoup.getInstance().currentTheme.isDark();
        Window window2 = getWindow();
        window2.getClass();
        HintHandler hintHandler = new HintHandler(window2.getDecorView());
        int i6 = Build.VERSION.SDK_INT;
        (i6 >= 35 ? new WindowInsetsControllerCompat$Impl35(window2, hintHandler) : i6 >= 30 ? new WindowInsetsControllerCompat$Impl30(window2, hintHandler) : i6 >= 26 ? new WindowInsetsControllerCompat$Impl26(window2, hintHandler) : new WindowInsetsControllerCompat$Impl23(window2, hintHandler)).setAppearanceLightStatusBars(z);
        Window window3 = getWindow();
        window3.getClass();
        HintHandler hintHandler2 = new HintHandler(window3.getDecorView());
        int i7 = Build.VERSION.SDK_INT;
        (i7 >= 35 ? new WindowInsetsControllerCompat$Impl35(window3, hintHandler2) : i7 >= 30 ? new WindowInsetsControllerCompat$Impl30(window3, hintHandler2) : i7 >= 26 ? new WindowInsetsControllerCompat$Impl26(window3, hintHandler2) : new WindowInsetsControllerCompat$Impl23(window3, hintHandler2)).setAppearanceLightNavigationBars(z);
        setStatusBarColor(Cache.Companion.getThemedColor(this, R.attr.paper_color));
        setNavigationBarColor(Cache.Companion.getThemedColor(this, R.attr.paper_color));
        maybeShowLoggedOutInBackgroundDialog();
        ReflectionFactory reflectionFactory = Reflection.factory;
        List listOf = Room.listOf((Object[]) new KClass[]{reflectionFactory.getOrCreateKotlinClass(MainActivity.class), reflectionFactory.getOrCreateKotlinClass(PageActivity.class)});
        if (!listOf.isEmpty()) {
            Iterator it2 = listOf.iterator();
            while (true) {
                if (!it2.hasNext()) {
                    break;
                }
                if (((KClass) it2.next()).isInstance(this)) {
                    Prefs prefs2 = Prefs.INSTANCE;
                    if (!Prefs.isInitialOnboardingEnabled() && Prefs.isExploreFeedUpdatePromptShown()) {
                        LocalDate localDate = ReadingChallengeWidgetRepository.REMOVE_DATE;
                        if (!Prefs.getReadingChallengeOnboardingShown() && !LocalDate.now().isBefore(StreakProgressBarKt.getSTART_DATE()) && !LocalDate.now().isAfter(StreakProgressBarKt.getEND_DATE())) {
                            Intent flags = new Intent(this, (Class<?>) ReadingChallengeOnboardingActivity.class).setFlags(67108864);
                            flags.getClass();
                            this.requestReadingChallengeActivity.launch(flags, null);
                        } else if (LoginClient.isAccessible() && Prefs.isYearInReviewEnabled() && !Prefs.getYearInReviewVisited()) {
                            this.yearInReviewLauncher.launch(new Intent(this, (Class<?>) YearInReviewOnboardingActivity.class), null);
                        }
                    }
                }
            }
        }
        Prefs prefs3 = Prefs.INSTANCE;
        PrefsIoUtil.setString(R.string.preference_key_crash_report_local_class_name, getLocalClassName());
        AwaitKt.launch$default(ViewModelKt.getLifecycleScope(this), null, null, new BaseActivity$onCreate$2(this, continuation, i), 3);
        AwaitKt.launch$default(ViewModelKt.getLifecycleScope(this), null, null, new BaseActivity$onCreate$2(this, continuation, i3), 3);
    }

    @Override // androidx.appcompat.app.AppCompatActivity, android.app.Activity
    public void onDestroy() {
        WikipediaApp wikipediaApp = WikipediaApp.instance;
        ConnectionStateMonitor connectionStateMonitor = Jsoup.getInstance().connectionStateMonitor;
        connectionStateMonitor.getClass();
        connectionStateMonitor.callbacks.remove(this);
        Map map = (Map) CustomHtmlParser.contextBmpMap.get(this);
        if (map != null) {
            Iterator it = map.values().iterator();
            while (it.hasNext()) {
                try {
                    ((BitmapDrawable) it.next()).getBitmap().recycle();
                } catch (Exception e) {
                    L.e(e);
                }
            }
            map.clear();
        }
        super.onDestroy();
    }

    @Override // android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        menuItem.getClass();
        if (menuItem.getItemId() != 16908332) {
            return false;
        }
        getOnBackPressedDispatcher().onBackPressed();
        return true;
    }

    @Override // androidx.appcompat.app.AppCompatActivity, android.app.Activity
    public void onPause() {
        super.onPause();
        WikipediaApp wikipediaApp = WikipediaApp.instance;
        Jsoup.getInstance().getAppSessionEvent().persistSession();
        TestKitchenClient testKitchenClient = TestKitchenAdapter.client;
        testKitchenClient.sessionController.touchSession();
        testKitchenClient.eventProcessor.sendEnqueuedEvents();
        if (!EventPlatformClient.STREAM_CONFIGS.isEmpty()) {
            ArrayList arrayList = EventPlatformClient.INITIAL_QUEUE;
            synchronized (arrayList) {
                try {
                    if (!arrayList.isEmpty()) {
                        Iterator it = arrayList.iterator();
                        while (it.hasNext()) {
                            Event event = (Event) it.next();
                            EventPlatformClient eventPlatformClient = EventPlatformClient.INSTANCE;
                            EventPlatformClient.doSubmit(event);
                        }
                        EventPlatformClient.INITIAL_QUEUE.clear();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        EventPlatformClient.OutputBuffer.sendAllScheduled();
    }

    @Override // androidx.appcompat.app.AppCompatActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        WikipediaApp wikipediaApp = WikipediaApp.instance;
        Jsoup.getInstance().getAppSessionEvent().touchSession();
        TestKitchenClient testKitchenClient = TestKitchenAdapter.client;
        testKitchenClient.sessionController.touchSession();
        BreadCrumbLogEvent.Companion.getClass();
        BreadCrumbLogEvent.Companion.logScreenShown(this, null);
        SVGAndroidRenderer.submitInteraction$default(new SVGAndroidRenderer("apps-open", testKitchenClient), "app_open", "background", getClass().getSimpleName(), null, null, null, 248);
    }

    @Override // androidx.appcompat.app.AppCompatActivity, android.app.Activity
    public void onStart() {
        super.onStart();
        ActivityResultRegistry$register$2 activityResultRegistry$register$2 = this.notificationPermissionLauncher;
        activityResultRegistry$register$2.getClass();
        long currentTimeMillis = System.currentTimeMillis() - NotificationPresenter.lastPermissionRequestTime;
        if (Build.VERSION.SDK_INT >= 33) {
            Prefs prefs = Prefs.INSTANCE;
            if (Prefs.isInitialOnboardingEnabled() || !Headers.Companion.isLoggedIn()) {
                return;
            }
            if ((currentTimeMillis > 3600000 || currentTimeMillis < 0) && FileUtil.checkSelfPermission(this, "android.permission.POST_NOTIFICATIONS") != 0) {
                activityResultRegistry$register$2.launch("android.permission.POST_NOTIFICATIONS", null);
                NotificationPresenter.lastPermissionRequestTime = System.currentTimeMillis();
            }
        }
    }

    public final void setNavigationBarColor(int i) {
        Window window = getWindow();
        window.getClass();
        if (Build.VERSION.SDK_INT >= 26) {
            WikipediaApp wikipediaApp = WikipediaApp.instance;
            boolean z = Jsoup.getInstance().currentTheme.isDark() || i == -16777216;
            window.setNavigationBarColor(i);
            HintHandler hintHandler = new HintHandler(window.getDecorView());
            int i2 = Build.VERSION.SDK_INT;
            (i2 >= 35 ? new WindowInsetsControllerCompat$Impl35(window, hintHandler) : i2 >= 30 ? new WindowInsetsControllerCompat$Impl30(window, hintHandler) : i2 >= 26 ? new WindowInsetsControllerCompat$Impl26(window, hintHandler) : new WindowInsetsControllerCompat$Impl23(window, hintHandler)).setAppearanceLightNavigationBars(!z);
        }
    }

    public final void setStatusBarColor(int i) {
        getWindow().setStatusBarColor(i);
    }

    public void setTheme() {
        WikipediaApp wikipediaApp = WikipediaApp.instance;
        if (Jsoup.getInstance().currentTheme != Theme.LIGHT) {
            setTheme(Jsoup.getInstance().currentTheme.getResourceId());
        }
    }

    public void onGoOffline() {
    }

    public void onGoOnline() {
    }

    public void onUnreadNotification() {
    }
}
