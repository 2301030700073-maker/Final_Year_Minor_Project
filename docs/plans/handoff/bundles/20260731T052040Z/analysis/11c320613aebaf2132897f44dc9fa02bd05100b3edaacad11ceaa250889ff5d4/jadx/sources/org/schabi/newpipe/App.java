package org.schabi.newpipe;

import android.app.ActivityManager;
import android.app.Application;
import android.app.NotificationChannel;
import android.content.Context;
import android.content.SharedPreferences;
import android.os.Build;
import android.os.Environment;
import android.os.Process;
import android.text.TextUtils;
import android.util.Log;
import androidx.compose.runtime.composer.gapbuffer.changelist.Operation;
import androidx.core.app.NotificationChannelCompat;
import androidx.core.app.NotificationManagerCompat;
import androidx.preference.PreferenceManager;
import androidx.work.Worker$$ExternalSyntheticLambda0;
import coil3.ComponentRegistry;
import coil3.ComponentRegistry$Builder$$ExternalSyntheticLambda0;
import coil3.Extras;
import coil3.RealImageLoader;
import coil3.SingletonImageLoader;
import coil3.Uri;
import coil3.decode.DataSource;
import coil3.network.NetworkFetcher;
import coil3.request.ImageRequestsKt;
import coil3.request.ImageRequests_androidKt;
import coil3.request.ImageResult;
import coil3.request.SuccessResult;
import coil3.target.ImageViewTarget;
import coil3.transition.Transition;
import coil3.util.UtilsKt;
import com.grack.nanojson.JsonObject;
import com.grack.nanojson.JsonParser;
import com.livefront.bridge.Bridge;
import com.livefront.bridge.BridgeDelegate;
import j$.util.concurrent.ConcurrentHashMap;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.ExecutorService;
import kotlin.Result;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.math.MathKt;
import okhttp3.Dispatcher;
import okhttp3.OkHttpClient;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;
import okio.ByteString;
import okio.Options;
import org.jsoup.Jsoup;
import org.schabi.newpipe.error.ErrorInfo;
import org.schabi.newpipe.error.ErrorUtil;
import org.schabi.newpipe.error.UserAction;
import org.schabi.newpipe.extractor.ServiceList;
import org.schabi.newpipe.extractor.StreamingService;
import org.schabi.newpipe.extractor.localization.ContentCountry;
import org.schabi.newpipe.extractor.services.peertube.PeertubeInstance;
import org.schabi.newpipe.extractor.services.youtube.YoutubeService;
import org.schabi.newpipe.extractor.services.youtube.extractors.YoutubeStreamExtractor;
import org.schabi.newpipe.extractor.utils.JavaScript;
import org.schabi.newpipe.settings.migration.MigrationManager;
import org.schabi.newpipe.settings.migration.SettingMigrations;
import org.schabi.newpipe.util.Localization;
import org.schabi.newpipe.util.ServiceHelper;
import org.schabi.newpipe.util.StateSaver;
import org.schabi.newpipe.util.image.ImageStrategy;
import org.schabi.newpipe.util.image.PreferredImageQuality;
import org.schabi.newpipe.util.potoken.PoTokenProviderImpl;
import us.shandian.giga.util.Utility;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public class App extends Application implements SingletonImageLoader.Factory {
    public static final Companion Companion = new Companion();
    public static final String TAG;
    public static App instance;
    public boolean isFirstRun;
    public boolean notificationsRequested;

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class Companion {
        public static App getInstance() {
            App app = App.instance;
            if (app != null) {
                return app;
            }
            Intrinsics.throwUninitializedPropertyAccessException("instance");
            throw null;
        }
    }

    static {
        String cls = App.class.toString();
        cls.getClass();
        TAG = cls;
    }

    /* JADX WARN: Removed duplicated region for block: B:46:0x0373  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x0376  */
    @Override // android.content.ContextWrapper
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void attachBaseContext(android.content.Context r54) {
        /*
            Method dump skipped, instructions count: 916
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.schabi.newpipe.App.attachBaseContext(android.content.Context):void");
    }

    @Override // coil3.SingletonImageLoader.Factory
    public final RealImageLoader newImageLoader(Context context) {
        context.getClass();
        Dispatcher dispatcher = new Dispatcher(this);
        Object systemService = getSystemService((Class<Object>) ActivityManager.class);
        systemService.getClass();
        boolean isLowRamDevice = ((ActivityManager) systemService).isLowRamDevice();
        Extras.Key key = ImageRequests_androidKt.transitionFactoryKey;
        Extras.Builder builder = (Extras.Builder) dispatcher.runningSyncCalls;
        builder.data.put(ImageRequests_androidKt.allowRgb565Key, Boolean.valueOf(isLowRamDevice));
        Extras.Key key2 = ImageRequestsKt.transformationsKey;
        final int i = 200;
        Transition.Factory factory = new Transition.Factory(i) { // from class: coil3.transition.CrossfadeTransition$Factory
            public final int durationMillis;

            {
                this.durationMillis = i;
                if (i > 0) {
                    return;
                }
                _UtilJvmKt$$ExternalSyntheticLambda1.m$1("durationMillis must be > 0.");
                throw null;
            }

            @Override // coil3.transition.Transition.Factory
            public final Transition create(ImageViewTarget imageViewTarget, ImageResult imageResult) {
                return !(imageResult instanceof SuccessResult) ? new NoneTransition(imageViewTarget, imageResult) : ((SuccessResult) imageResult).dataSource == DataSource.MEMORY_CACHE ? new NoneTransition(imageViewTarget, imageResult) : new JsonParser(imageViewTarget, imageResult, this.durationMillis);
            }
        };
        builder.data.put(ImageRequests_androidKt.transitionFactoryKey, factory);
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        ArrayList arrayList3 = new ArrayList();
        ArrayList arrayList4 = new ArrayList();
        ArrayList arrayList5 = new ArrayList();
        OkHttpClient okHttpClient = DownloaderImpl.instance.client;
        okHttpClient.getClass();
        arrayList4.add(new ComponentRegistry$Builder$$ExternalSyntheticLambda0(new NetworkFetcher.Factory(new Worker$$ExternalSyntheticLambda0(okHttpClient, 25)), Reflection.getOrCreateKotlinClass(Uri.class), 0));
        dispatcher.runningAsyncCalls = new ComponentRegistry(UtilsKt.toImmutableList(arrayList), UtilsKt.toImmutableList(arrayList2), UtilsKt.toImmutableList(arrayList3), UtilsKt.toImmutableList(arrayList4), UtilsKt.toImmutableList(arrayList5));
        return dispatcher.build();
    }

    @Override // android.app.Application
    public final void onCreate() {
        String string;
        Object failure;
        NotificationChannel createNotificationChannel;
        super.onCreate();
        instance = this;
        int myPid = Process.myPid();
        List<ActivityManager.RunningAppProcessInfo> runningAppProcesses = ((ActivityManager) getSystemService("activity")).getRunningAppProcesses();
        if (runningAppProcesses != null) {
            for (ActivityManager.RunningAppProcessInfo runningAppProcessInfo : runningAppProcesses) {
                if (runningAppProcessInfo.pid == myPid && runningAppProcessInfo.processName.endsWith(":phoenix")) {
                    Log.i(TAG, "This is a phoenix process! Aborting initialization of App[onCreate]");
                    return;
                }
            }
        }
        this.isFirstRun = getSharedPreferences(PreferenceManager.getDefaultSharedPreferencesName(this), 0).getInt(getString(R.string.last_used_preferences_version), -1) == -1;
        ArrayList arrayList = MigrationManager.MIGRATION_INFO;
        SharedPreferences sharedPreferences = SettingMigrations.sp;
        SettingMigrations.sp = getSharedPreferences(PreferenceManager.getDefaultSharedPreferencesName(this), 0);
        String string2 = getString(R.string.last_used_preferences_version);
        int i = SettingMigrations.sp.getInt(string2, 0);
        Companion.getClass();
        if (Companion.getInstance().isFirstRun) {
            SettingMigrations.sp.edit().putInt(string2, 8).apply();
        } else if (i != 8) {
            int i2 = i;
            for (Operation operation : SettingMigrations.SETTING_MIGRATIONS) {
                try {
                    if (operation.ints >= i2) {
                        int i3 = MainActivity.$r8$clinit;
                        operation.migrate(this);
                        i2 = operation.objects;
                    }
                } catch (Exception e) {
                    SettingMigrations.sp.edit().putInt(string2, i2).apply();
                    ErrorInfo errorInfo = new ErrorInfo(e, UserAction.PREFERENCES_MIGRATION, "Migrating preferences from version " + i + " to 8. Error at " + i2 + " => " + (i2 + 1), (Integer) null, 24);
                    ErrorUtil.Companion.getClass();
                    ErrorUtil.Companion.openActivity(this, errorInfo);
                }
            }
            SettingMigrations.sp.edit().putInt(string2, i2).apply();
        }
        PreferenceManager.setDefaultValues(this, R.xml.main_settings);
        PreferenceManager.setDefaultValues(this, R.xml.video_audio_settings);
        PreferenceManager.setDefaultValues(this, R.xml.download_settings);
        PreferenceManager.setDefaultValues(this, R.xml.appearance_settings);
        PreferenceManager.setDefaultValues(this, R.xml.history_settings);
        PreferenceManager.setDefaultValues(this, R.xml.content_settings);
        PreferenceManager.setDefaultValues(this, R.xml.player_notification_settings);
        PreferenceManager.setDefaultValues(this, R.xml.update_settings);
        PreferenceManager.setDefaultValues(this, R.xml.debug_settings);
        PreferenceManager.setDefaultValues(this, R.xml.backup_restore_settings);
        Options.Companion.saveDefaultDirectory(this, R.string.download_path_video_key, Environment.DIRECTORY_MOVIES);
        Options.Companion.saveDefaultDirectory(this, R.string.download_path_audio_key, Environment.DIRECTORY_MUSIC);
        SharedPreferences sharedPreferences2 = getSharedPreferences(PreferenceManager.getDefaultSharedPreferencesName(this), 0);
        String string3 = getString(R.string.disable_media_tunneling_key);
        String string4 = getString(R.string.disabled_media_tunneling_automatically_key);
        boolean z = 994 != sharedPreferences2.getInt(getString(R.string.media_tunneling_device_blacklist_version), 0);
        boolean z2 = sharedPreferences2.getInt(string4, -1) == 0 && !sharedPreferences2.getBoolean(string3, false);
        Companion.getClass();
        if (Companion.getInstance().isFirstRun || (z && !z2)) {
            Options.Companion.setMediaTunneling(this);
        }
        DownloaderImpl downloaderImpl = new DownloaderImpl(new OkHttpClient.Builder());
        DownloaderImpl.instance = downloaderImpl;
        SharedPreferences sharedPreferences3 = getSharedPreferences(PreferenceManager.getDefaultSharedPreferencesName(this), 0);
        String string5 = getString(R.string.recaptcha_cookies_key);
        string5.getClass();
        downloaderImpl.mCookies.put("recaptcha_cookies", sharedPreferences3.getString(string5, null));
        downloaderImpl.updateYoutubeRestrictedModeCookies(this);
        Locale preferredLocale = Localization.getPreferredLocale(this);
        org.schabi.newpipe.extractor.localization.Localization localization = new org.schabi.newpipe.extractor.localization.Localization(preferredLocale.getLanguage(), preferredLocale.getCountry());
        ContentCountry preferredContentCountry = Localization.getPreferredContentCountry(this);
        JavaScript.d("Initializing with downloader={}, localization={}, country={}", downloaderImpl, localization, preferredContentCountry);
        Utility.downloader = downloaderImpl;
        Utility.preferredLocalization = localization;
        Utility.preferredContentCountry = preferredContentCountry;
        Localization.initPrettyTime(Localization.resolvePrettyTime());
        ByteString.Companion companion = new ByteString.Companion(11);
        ExecutorService executorService = Bridge.sExecutorService;
        synchronized (Bridge.class) {
            Bridge.sDelegate = new BridgeDelegate(this, Bridge.sExecutorService, companion);
        }
        ConcurrentHashMap concurrentHashMap = StateSaver.STATE_OBJECTS_HOLDER;
        File externalCacheDir = getExternalCacheDir();
        if (externalCacheDir != null) {
            StateSaver.cacheDirPath = externalCacheDir.getAbsolutePath();
        }
        if (TextUtils.isEmpty(StateSaver.cacheDirPath)) {
            StateSaver.cacheDirPath = getCacheDir().getAbsolutePath();
        }
        NotificationChannelCompat notificationChannelCompat = new NotificationChannelCompat(getString(R.string.notification_channel_id), 2);
        notificationChannelCompat.mName = getString(R.string.notification_channel_name);
        notificationChannelCompat.mDescription = getString(R.string.notification_channel_description);
        NotificationChannelCompat notificationChannelCompat2 = new NotificationChannelCompat(getString(R.string.app_update_notification_channel_id), 2);
        notificationChannelCompat2.mName = getString(R.string.app_update_notification_channel_name);
        notificationChannelCompat2.mDescription = getString(R.string.app_update_notification_channel_description);
        NotificationChannelCompat notificationChannelCompat3 = new NotificationChannelCompat(getString(R.string.hash_channel_id), 4);
        notificationChannelCompat3.mName = getString(R.string.hash_channel_name);
        notificationChannelCompat3.mDescription = getString(R.string.hash_channel_description);
        NotificationChannelCompat notificationChannelCompat4 = new NotificationChannelCompat(getString(R.string.error_report_channel_id), 2);
        notificationChannelCompat4.mName = getString(R.string.error_report_channel_name);
        notificationChannelCompat4.mDescription = getString(R.string.error_report_channel_description);
        NotificationChannelCompat notificationChannelCompat5 = new NotificationChannelCompat(getString(R.string.streams_notification_channel_id), 3);
        notificationChannelCompat5.mName = getString(R.string.streams_notification_channel_name);
        notificationChannelCompat5.mDescription = getString(R.string.streams_notification_channel_description);
        List<NotificationChannelCompat> listOf = Jsoup.listOf((Object[]) new NotificationChannelCompat[]{notificationChannelCompat, notificationChannelCompat2, notificationChannelCompat3, notificationChannelCompat4, notificationChannelCompat5});
        NotificationManagerCompat notificationManagerCompat = new NotificationManagerCompat(this);
        if (Build.VERSION.SDK_INT >= 26 && !listOf.isEmpty()) {
            ArrayList arrayList2 = new ArrayList(listOf.size());
            for (NotificationChannelCompat notificationChannelCompat6 : listOf) {
                if (Build.VERSION.SDK_INT < 26) {
                    notificationChannelCompat6.getClass();
                    createNotificationChannel = null;
                } else {
                    createNotificationChannel = NotificationChannelCompat.Api26Impl.createNotificationChannel(notificationChannelCompat6.mId, notificationChannelCompat6.mName, notificationChannelCompat6.mImportance);
                    NotificationChannelCompat.Api26Impl.setDescription(createNotificationChannel, notificationChannelCompat6.mDescription);
                    NotificationChannelCompat.Api26Impl.setGroup(createNotificationChannel);
                    NotificationChannelCompat.Api26Impl.setShowBadge(createNotificationChannel);
                    NotificationChannelCompat.Api26Impl.setSound(createNotificationChannel, notificationChannelCompat6.mSound, notificationChannelCompat6.mAudioAttributes);
                    NotificationChannelCompat.Api26Impl.enableLights(createNotificationChannel);
                    NotificationChannelCompat.Api26Impl.setLightColor(createNotificationChannel);
                    NotificationChannelCompat.Api26Impl.setVibrationPattern(createNotificationChannel);
                    NotificationChannelCompat.Api26Impl.enableVibration(createNotificationChannel);
                }
                arrayList2.add(createNotificationChannel);
            }
            NotificationChannelCompat.Api26Impl.createNotificationChannels(notificationManagerCompat.mNotificationManager, arrayList2);
        }
        YoutubeService youtubeService = ServiceHelper.DEFAULT_FALLBACK_SERVICE;
        List list = ServiceList.SERVICES;
        list.getClass();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            if (((StreamingService) it.next()).serviceId == ServiceList.PeerTube.serviceId && (string = getSharedPreferences(PreferenceManager.getDefaultSharedPreferencesName(this), 0).getString(getString(R.string.peertube_selected_instance_key), null)) != null) {
                try {
                    failure = (JsonObject) JsonParser.object().from(string);
                } catch (Throwable th) {
                    failure = new Result.Failure(th);
                }
                if (Result.m656exceptionOrNullimpl(failure) == null) {
                    JsonObject jsonObject = (JsonObject) failure;
                    ServiceList.PeerTube.instance = new PeertubeInstance(jsonObject.getString("url", null), jsonObject.getString("name", null));
                }
            }
        }
        SharedPreferences sharedPreferences4 = getSharedPreferences(PreferenceManager.getDefaultSharedPreferencesName(this), 0);
        PreferredImageQuality.Companion companion2 = PreferredImageQuality.Companion;
        String string6 = sharedPreferences4.getString(getString(R.string.image_quality_key), getString(R.string.image_quality_default));
        companion2.getClass();
        ImageStrategy.preferredImageQuality = PreferredImageQuality.Companion.fromPreferenceKey(this, string6);
        MathKt.errorHandler = new ByteString.Companion(this);
        YoutubeStreamExtractor.poTokenProvider = PoTokenProviderImpl.INSTANCE;
    }
}
