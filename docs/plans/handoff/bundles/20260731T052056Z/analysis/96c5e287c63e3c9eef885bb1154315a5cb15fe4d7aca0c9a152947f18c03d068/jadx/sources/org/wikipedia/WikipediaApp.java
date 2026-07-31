package org.wikipedia;

import android.accounts.Account;
import android.app.Application;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.ResolveInfo;
import android.content.res.Resources;
import android.os.Build;
import android.os.Handler;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import androidx.core.util.TypedValueCompat$Api34Impl;
import androidx.preference.PreferenceManager;
import androidx.recyclerview.widget.RecyclerView;
import coil3.network.NetworkHeaders;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.UUID;
import kotlin.Metadata;
import kotlin.SynchronizedLazyImpl;
import kotlin.UnsignedKt;
import kotlin.collections.EmptyList;
import kotlin.collections.EmptyMap;
import kotlin.jvm.functions.Function0;
import kotlin.text.RegexKt;
import kotlin.text.StringsKt;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlinx.coroutines.AwaitKt;
import kotlinx.serialization.internal.HashSetSerializer;
import kotlinx.serialization.json.JsonImpl;
import okhttp3.Cache;
import okhttp3.Headers;
import okio.Okio__OkioKt;
import org.jsoup.Jsoup;
import org.jsoup.select.NodeTraversor;
import org.wikipedia.analytics.eventplatform.AppSessionEvent;
import org.wikipedia.concurrency.FlowEventBus;
import org.wikipedia.connectivity.ConnectionStateMonitor;
import org.wikipedia.dataclient.WikiSite;
import org.wikipedia.events.ChangeTextSizeEvent;
import org.wikipedia.events.LoggedOutEvent;
import org.wikipedia.events.ThemeFontChangeEvent;
import org.wikipedia.feed.HomeViewModel;
import org.wikipedia.json.JsonUtil;
import org.wikipedia.language.AppLanguageState;
import org.wikipedia.page.tabs.Tab;
import org.wikipedia.settings.Prefs;
import org.wikipedia.settings.PrefsIoUtil;
import org.wikipedia.theme.Theme;
import org.wikipedia.util.log.L;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u0001:\u0001\u0004B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0005"}, d2 = {"Lorg/wikipedia/WikipediaApp;", "Landroid/app/Application;", "<init>", "()V", "org/jsoup/Jsoup", "app"}, k = 1, mv = {2, 3, 0}, xi = 48)
/* loaded from: classes.dex */
public final class WikipediaApp extends Application {
    public static WikipediaApp instance;
    public final ActivityLifecycleHandler activityLifecycleHandler;
    public final SynchronizedLazyImpl appSessionEvent$delegate;
    public final ConnectionStateMonitor connectionStateMonitor;
    public Theme currentTheme;
    public WikiSite defaultWikiSite;
    public final SynchronizedLazyImpl languageState$delegate;
    public final SynchronizedLazyImpl mainThreadHandler$delegate;
    public final ArrayList tabList;
    public final SynchronizedLazyImpl userAgent$delegate;
    public final SynchronizedLazyImpl voiceRecognitionAvailable$delegate;

    public WikipediaApp() {
        instance = this;
        final int i = 0;
        this.mainThreadHandler$delegate = new SynchronizedLazyImpl(new Function0(this) { // from class: org.wikipedia.WikipediaApp$$ExternalSyntheticLambda0
            public final /* synthetic */ WikipediaApp f$0;

            {
                this.f$0 = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i2 = i;
                boolean z = false;
                WikipediaApp wikipediaApp = this.f$0;
                switch (i2) {
                    case 0:
                        WikipediaApp wikipediaApp2 = WikipediaApp.instance;
                        return new Handler(wikipediaApp.getMainLooper());
                    case 1:
                        WikipediaApp wikipediaApp3 = WikipediaApp.instance;
                        return new AppLanguageState(wikipediaApp);
                    case 2:
                        WikipediaApp wikipediaApp4 = WikipediaApp.instance;
                        String channel = NodeTraversor.getChannel(wikipediaApp);
                        return String.format("WikipediaApp/%s (Android %s; %s; %s Build/%s)%s", Arrays.copyOf(new Object[]{"r/50598-r-2026-07-13", Build.VERSION.RELEASE, wikipediaApp.getString(R.string.device_type), Build.MODEL, Build.ID, StringsKt.isBlank(channel) ? "" : " ".concat(channel)}, 6));
                    default:
                        WikipediaApp wikipediaApp5 = WikipediaApp.instance;
                        try {
                            List<ResolveInfo> queryIntentActivities = wikipediaApp.getPackageManager().queryIntentActivities(new Intent("android.speech.action.RECOGNIZE_SPEECH"), 65536);
                            queryIntentActivities.getClass();
                            z = !queryIntentActivities.isEmpty();
                        } catch (Exception e) {
                            L.e(e);
                        }
                        return Boolean.valueOf(z);
                }
            }
        });
        final int i2 = 1;
        this.languageState$delegate = new SynchronizedLazyImpl(new Function0(this) { // from class: org.wikipedia.WikipediaApp$$ExternalSyntheticLambda0
            public final /* synthetic */ WikipediaApp f$0;

            {
                this.f$0 = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i22 = i2;
                boolean z = false;
                WikipediaApp wikipediaApp = this.f$0;
                switch (i22) {
                    case 0:
                        WikipediaApp wikipediaApp2 = WikipediaApp.instance;
                        return new Handler(wikipediaApp.getMainLooper());
                    case 1:
                        WikipediaApp wikipediaApp3 = WikipediaApp.instance;
                        return new AppLanguageState(wikipediaApp);
                    case 2:
                        WikipediaApp wikipediaApp4 = WikipediaApp.instance;
                        String channel = NodeTraversor.getChannel(wikipediaApp);
                        return String.format("WikipediaApp/%s (Android %s; %s; %s Build/%s)%s", Arrays.copyOf(new Object[]{"r/50598-r-2026-07-13", Build.VERSION.RELEASE, wikipediaApp.getString(R.string.device_type), Build.MODEL, Build.ID, StringsKt.isBlank(channel) ? "" : " ".concat(channel)}, 6));
                    default:
                        WikipediaApp wikipediaApp5 = WikipediaApp.instance;
                        try {
                            List<ResolveInfo> queryIntentActivities = wikipediaApp.getPackageManager().queryIntentActivities(new Intent("android.speech.action.RECOGNIZE_SPEECH"), 65536);
                            queryIntentActivities.getClass();
                            z = !queryIntentActivities.isEmpty();
                        } catch (Exception e) {
                            L.e(e);
                        }
                        return Boolean.valueOf(z);
                }
            }
        });
        this.appSessionEvent$delegate = new SynchronizedLazyImpl(new WikipediaApp$$ExternalSyntheticLambda2(0));
        final int i3 = 2;
        this.userAgent$delegate = new SynchronizedLazyImpl(new Function0(this) { // from class: org.wikipedia.WikipediaApp$$ExternalSyntheticLambda0
            public final /* synthetic */ WikipediaApp f$0;

            {
                this.f$0 = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i22 = i3;
                boolean z = false;
                WikipediaApp wikipediaApp = this.f$0;
                switch (i22) {
                    case 0:
                        WikipediaApp wikipediaApp2 = WikipediaApp.instance;
                        return new Handler(wikipediaApp.getMainLooper());
                    case 1:
                        WikipediaApp wikipediaApp3 = WikipediaApp.instance;
                        return new AppLanguageState(wikipediaApp);
                    case 2:
                        WikipediaApp wikipediaApp4 = WikipediaApp.instance;
                        String channel = NodeTraversor.getChannel(wikipediaApp);
                        return String.format("WikipediaApp/%s (Android %s; %s; %s Build/%s)%s", Arrays.copyOf(new Object[]{"r/50598-r-2026-07-13", Build.VERSION.RELEASE, wikipediaApp.getString(R.string.device_type), Build.MODEL, Build.ID, StringsKt.isBlank(channel) ? "" : " ".concat(channel)}, 6));
                    default:
                        WikipediaApp wikipediaApp5 = WikipediaApp.instance;
                        try {
                            List<ResolveInfo> queryIntentActivities = wikipediaApp.getPackageManager().queryIntentActivities(new Intent("android.speech.action.RECOGNIZE_SPEECH"), 65536);
                            queryIntentActivities.getClass();
                            z = !queryIntentActivities.isEmpty();
                        } catch (Exception e) {
                            L.e(e);
                        }
                        return Boolean.valueOf(z);
                }
            }
        });
        this.activityLifecycleHandler = new ActivityLifecycleHandler();
        this.connectionStateMonitor = new ConnectionStateMonitor();
        this.tabList = new ArrayList();
        Theme.Companion.getClass();
        this.currentTheme = Theme.LIGHT;
        final int i4 = 3;
        this.voiceRecognitionAvailable$delegate = new SynchronizedLazyImpl(new Function0(this) { // from class: org.wikipedia.WikipediaApp$$ExternalSyntheticLambda0
            public final /* synthetic */ WikipediaApp f$0;

            {
                this.f$0 = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i22 = i4;
                boolean z = false;
                WikipediaApp wikipediaApp = this.f$0;
                switch (i22) {
                    case 0:
                        WikipediaApp wikipediaApp2 = WikipediaApp.instance;
                        return new Handler(wikipediaApp.getMainLooper());
                    case 1:
                        WikipediaApp wikipediaApp3 = WikipediaApp.instance;
                        return new AppLanguageState(wikipediaApp);
                    case 2:
                        WikipediaApp wikipediaApp4 = WikipediaApp.instance;
                        String channel = NodeTraversor.getChannel(wikipediaApp);
                        return String.format("WikipediaApp/%s (Android %s; %s; %s Build/%s)%s", Arrays.copyOf(new Object[]{"r/50598-r-2026-07-13", Build.VERSION.RELEASE, wikipediaApp.getString(R.string.device_type), Build.MODEL, Build.ID, StringsKt.isBlank(channel) ? "" : " ".concat(channel)}, 6));
                    default:
                        WikipediaApp wikipediaApp5 = WikipediaApp.instance;
                        try {
                            List<ResolveInfo> queryIntentActivities = wikipediaApp.getPackageManager().queryIntentActivities(new Intent("android.speech.action.RECOGNIZE_SPEECH"), 65536);
                            queryIntentActivities.getClass();
                            z = !queryIntentActivities.isEmpty();
                        } catch (Exception e) {
                            L.e(e);
                        }
                        return Boolean.valueOf(z);
                }
            }
        });
    }

    public static String getAppInstallID() {
        Prefs prefs = Prefs.INSTANCE;
        String string = PrefsIoUtil.getString(R.string.preference_key_reading_app_install_id, null);
        if (string != null) {
            return string;
        }
        String uuid = UUID.randomUUID().toString();
        PrefsIoUtil.setString(R.string.preference_key_reading_app_install_id, uuid);
        return uuid;
    }

    public static void resetAfterLogOut() {
        Account account = Headers.Companion.account();
        if (account != null) {
            Headers.Companion.accountManager().removeAccountExplicitly(account);
        }
        Prefs prefs = Prefs.INSTANCE;
        PrefsIoUtil.setBoolean(R.string.preference_key_push_notification_token_subscribed, false);
        PrefsIoUtil.setString(R.string.preference_key_push_notification_token_old, "");
        PrefsIoUtil.setString(R.string.preference_key_last_background_login_date_time, "");
        PrefsIoUtil.setBoolean(R.string.preference_key_temp_account_welcome_shown, false);
        PrefsIoUtil.setLong(0L, R.string.preference_key_temp_account_create_day);
        PrefsIoUtil.setBoolean(R.string.preference_key_temp_account_dialog_shown, false);
        PrefsIoUtil.setLong(0L, R.string.preference_key_impact_last_query_time);
        EmptyMap emptyMap = EmptyMap.INSTANCE;
        Prefs.setImpactLastResponseBody(emptyMap);
        Prefs.setYearInReviewModelData(emptyMap);
        if (NetworkHeaders.Builder.INSTANCE == null) {
            try {
                NetworkHeaders.Builder.INSTANCE = new NetworkHeaders.Builder(new LinkedHashMap(Prefs.getCookies()));
            } catch (Exception e) {
                L.logRemoteErrorIfProd(e);
            }
        }
        NetworkHeaders.Builder builder = NetworkHeaders.Builder.INSTANCE;
        if (builder == null) {
            builder = new NetworkHeaders.Builder(new LinkedHashMap());
            NetworkHeaders.Builder.INSTANCE = builder;
        }
        synchronized (builder) {
            builder.data.clear();
            builder.persistCookies();
        }
        AwaitKt.launch$default(AwaitKt.MainScope(), null, null, new HomeViewModel.AnonymousClass1(2, 3, null), 3);
        FlowEventBus.post(new LoggedOutEvent());
        L.d("Logout complete.");
    }

    public static Theme unmarshalTheme(int i) {
        Object obj;
        Theme.Companion.getClass();
        Iterator<E> it = Theme.getEntries().iterator();
        while (true) {
            if (!it.hasNext()) {
                obj = null;
                break;
            }
            obj = it.next();
            if (((Theme) obj).getMarshallingId() == i) {
                break;
            }
        }
        Theme theme = (Theme) obj;
        if (theme != null) {
            return theme;
        }
        L.d("Theme id=" + i + " is invalid, using fallback.");
        Theme.Companion.getClass();
        return Theme.LIGHT;
    }

    public final void commitTabState() {
        String str;
        ArrayList arrayList = this.tabList;
        if (arrayList.isEmpty()) {
            Prefs prefs = Prefs.INSTANCE;
            PrefsIoUtil.remove(R.string.preference_key_tabs);
            initTabs();
            return;
        }
        Prefs prefs2 = Prefs.INSTANCE;
        arrayList.getClass();
        try {
            JsonImpl jsonImpl = JsonUtil.json;
            jsonImpl.getClass();
            str = jsonImpl.encodeToString(new HashSetSerializer(Tab.Companion.serializer(), 1), arrayList);
        } catch (Exception e) {
            L.w(e);
            str = null;
        }
        PrefsIoUtil.setString(R.string.preference_key_tabs, str);
    }

    public final String getAcceptLanguage(WikiSite wikiSite) {
        String bcp47LanguageCode;
        String str = (wikiSite == null || "meta".equals(wikiSite.languageCode)) ? "" : wikiSite.languageCode;
        String appLanguageCode = getLanguageState().getAppLanguageCode();
        String systemLanguageCode = getLanguageState().getSystemLanguageCode();
        str.getClass();
        appLanguageCode.getClass();
        AppLanguageState languageState = Jsoup.getInstance().getLanguageState();
        float f = 0.9f;
        if (StringsKt__StringsJVMKt.startsWith(str, "zh", false)) {
            bcp47LanguageCode = Cache.Companion.appendToAcceptLanguage(str, languageState.getBcp47LanguageCode(str), 0.9f);
            f = 0.79999995f;
        } else {
            bcp47LanguageCode = languageState.getBcp47LanguageCode(str);
        }
        return Cache.Companion.appendToAcceptLanguage(Cache.Companion.appendToAcceptLanguage(bcp47LanguageCode, languageState.getBcp47LanguageCode(appLanguageCode), f), languageState.getBcp47LanguageCode(systemLanguageCode), f - 0.1f);
    }

    public final String getAppOrSystemLanguageCode() {
        return getLanguageState().getAppLanguageCode();
    }

    public final AppSessionEvent getAppSessionEvent() {
        return (AppSessionEvent) this.appSessionEvent$delegate.getValue();
    }

    public final float getFontSize(boolean z) {
        float f;
        int textSizeMultiplier;
        float dimension = getResources().getDimension(R.dimen.textSize);
        DisplayMetrics displayMetrics = Okio__OkioKt.getDisplayMetrics();
        if (Build.VERSION.SDK_INT >= 34) {
            f = TypedValueCompat$Api34Impl.deriveDimension(dimension, displayMetrics);
        } else {
            float f2 = displayMetrics.scaledDensity;
            f = f2 == RecyclerView.DECELERATION_RATE ? 0.0f : dimension / f2;
        }
        if (z) {
            Prefs prefs = Prefs.INSTANCE;
            textSizeMultiplier = PrefsIoUtil.getInt(R.string.preference_key_editing_text_size_multiplier, 0);
        } else {
            Prefs prefs2 = Prefs.INSTANCE;
            textSizeMultiplier = Prefs.getTextSizeMultiplier();
        }
        TypedValue typedValue = new TypedValue();
        Resources resources = Jsoup.getInstance().getResources();
        resources.getClass();
        resources.getValue(R.dimen.textSizeMultiplierFactor, typedValue, true);
        return ((typedValue.getFloat() * textSizeMultiplier) + 1.0f) * f;
    }

    public final AppLanguageState getLanguageState() {
        return (AppLanguageState) this.languageState$delegate.getValue();
    }

    public final Handler getMainThreadHandler() {
        return (Handler) this.mainThreadHandler$delegate.getValue();
    }

    public final int getTabCount() {
        ArrayList arrayList = this.tabList;
        if (arrayList.size() > 1) {
            return arrayList.size();
        }
        if (arrayList.isEmpty() || ((Tab) arrayList.get(0)).backStack.isEmpty()) {
            return 0;
        }
        return arrayList.size();
    }

    public final synchronized WikiSite getWikiSite() {
        WikiSite wikiSite;
        try {
            wikiSite = this.defaultWikiSite;
            if (wikiSite == null) {
                Prefs prefs = Prefs.INSTANCE;
                String string = Jsoup.getInstance().getResources().getString(R.string.preference_key_mediawiki_base_uri_supports_lang_code, Arrays.copyOf(new Object[0], 0));
                string.getClass();
                WikipediaApp jsoup = Jsoup.getInstance();
                String appOrSystemLanguageCode = jsoup.getSharedPreferences(PreferenceManager.getDefaultSharedPreferencesName(jsoup), 0).getBoolean(string, true) ? getAppOrSystemLanguageCode() : "";
                WikiSite.Companion.getClass();
                wikiSite = WikiSite.Companion.forLanguageCode(appOrSystemLanguageCode);
                this.defaultWikiSite = wikiSite;
            }
        } catch (Throwable th) {
            throw th;
        }
        return wikiSite;
    }

    public final void initTabs() {
        Prefs prefs = Prefs.INSTANCE;
        WikipediaApp jsoup = Jsoup.getInstance();
        SharedPreferences sharedPreferences = jsoup.getSharedPreferences(PreferenceManager.getDefaultSharedPreferencesName(jsoup), 0);
        String string = Jsoup.getInstance().getResources().getString(R.string.preference_key_tabs, Arrays.copyOf(new Object[0], 0));
        string.getClass();
        boolean contains = sharedPreferences.contains(string);
        ArrayList arrayList = this.tabList;
        if (contains) {
            JsonImpl jsonImpl = JsonUtil.json;
            Object obj = null;
            String string2 = PrefsIoUtil.getString(R.string.preference_key_tabs, null);
            if (string2 != null && string2.length() != 0) {
                try {
                    JsonImpl jsonImpl2 = JsonUtil.json;
                    jsonImpl2.getClass();
                    obj = jsonImpl2.decodeFromString(string2, UnsignedKt.getNullable(new HashSetSerializer(Tab.Companion.serializer(), 1)));
                } catch (Exception e) {
                    L.w(e);
                }
            }
            Collection collection = (List) obj;
            if (collection == null) {
                collection = EmptyList.INSTANCE;
            }
            arrayList.addAll(collection);
        }
        if (arrayList.isEmpty()) {
            arrayList.add(new Tab());
        }
    }

    public final boolean isOnline() {
        ConnectionStateMonitor connectionStateMonitor = this.connectionStateMonitor;
        connectionStateMonitor.getClass();
        if (System.currentTimeMillis() - connectionStateMonitor.lastCheckedMillis > 60000) {
            connectionStateMonitor.updateOnlineState(null);
            connectionStateMonitor.lastCheckedMillis = System.currentTimeMillis();
        }
        return connectionStateMonitor.online;
    }

    /* JADX WARN: Removed duplicated region for block: B:64:0x0162  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x0199 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:70:0x013b A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:71:0x0196  */
    @Override // android.app.Application
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void onCreate() {
        /*
            Method dump skipped, instructions count: 644
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.wikipedia.WikipediaApp.onCreate():void");
    }

    public final synchronized void resetWikiSite() {
        this.defaultWikiSite = null;
    }

    public final void setCurrentTheme(Theme theme) {
        theme.getClass();
        if (theme != this.currentTheme) {
            this.currentTheme = theme;
            Prefs prefs = Prefs.INSTANCE;
            PrefsIoUtil.setInt(R.string.preference_key_color_theme, theme.getMarshallingId());
            FlowEventBus.post(new ThemeFontChangeEvent());
        }
    }

    public final boolean setFontSizeMultiplier(int i) {
        int coerceIn = RegexKt.coerceIn(i, getResources().getInteger(R.integer.minTextSizeMultiplier), getResources().getInteger(R.integer.maxTextSizeMultiplier));
        Prefs prefs = Prefs.INSTANCE;
        if (coerceIn == Prefs.getTextSizeMultiplier()) {
            return false;
        }
        PrefsIoUtil.setInt(R.string.preference_key_text_size_multiplier, coerceIn);
        FlowEventBus.post(new ChangeTextSizeEvent());
        return true;
    }
}
