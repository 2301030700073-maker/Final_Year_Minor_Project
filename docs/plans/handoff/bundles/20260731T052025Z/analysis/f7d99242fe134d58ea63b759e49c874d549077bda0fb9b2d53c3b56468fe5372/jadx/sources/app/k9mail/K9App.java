package app.k9mail;

import android.app.Application;
import android.appwidget.AppWidgetManager;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.res.Configuration;
import android.content.res.Resources;
import androidx.camera.camera2.compat.Api24Compat;
import androidx.camera.camera2.pipe.core.WakeLock$release$2;
import androidx.compose.ui.unit.IntOffsetKt;
import androidx.emoji2.text.EmojiCompatInitializer;
import androidx.lifecycle.ProcessLifecycleOwner;
import app.k9mail.K9App;
import app.k9mail.feature.widget.message.list.MessageListWidgetManager;
import app.k9mail.legacy.di.DI$$ExternalSyntheticLambda0;
import app.k9mail.legacy.message.controller.SimpleMessagingListener;
import com.fsck.k9.Core;
import com.fsck.k9.Core$restoreNotifications$1;
import com.fsck.k9.DefaultMessagingListenerProvider;
import com.fsck.k9.K9;
import com.fsck.k9.controller.MessagingController;
import com.fsck.k9.job.WorkManagerConfigurationProvider;
import com.fsck.k9.mail.K9MailLib;
import com.fsck.k9.mail.internet.BinaryTempFileBody;
import com.fsck.k9.notification.NotificationChannelManager;
import com.fsck.k9.preferences.DefaultGeneralSettingsManager;
import com.fsck.k9.ui.base.AppLanguageManager;
import com.fsck.k9.widget.list.MessageListWidgetProvider;
import java.util.Iterator;
import java.util.Locale;
import kotlin.Lazy;
import kotlin.LazyThreadSafetyMode;
import kotlin.ResultKt;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Reflection;
import kotlinx.atomicfu.AtomicFU;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.InterruptibleKt$runInterruptible$2;
import kotlinx.coroutines.JobKt;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.FlowKt__LimitKt$drop$$inlined$unsafeFlow$1;
import kotlinx.coroutines.flow.FlowKt__MergeKt$flatMapConcat$$inlined$map$1;
import kotlinx.coroutines.internal.ContextScope;
import kotlinx.coroutines.internal.MainDispatcherLoader;
import kotlinx.coroutines.scheduling.DefaultIoScheduler;
import kotlinx.coroutines.scheduling.DefaultScheduler;
import net.thunderbird.core.common.exception.ExceptionHandler;
import net.thunderbird.core.logging.Logger;
import net.thunderbird.core.logging.file.FileLogSink;
import net.thunderbird.core.logging.legacy.Log;
import net.thunderbird.core.preference.display.coreSettings.DisplayCoreSettings;
import net.thunderbird.core.ui.theme.manager.ThemeManager;
import okhttp3.internal.http2.Http2Connection;
import okio.Path;
import org.koin.core.KoinApplication;
import org.koin.core.context.GlobalContext;
import org.koin.core.error.InstanceCreationException;
import org.koin.core.qualifier.StringQualifier;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class K9App extends Application {
    public static final /* synthetic */ int $r8$clinit = 0;
    public final ContextScope appCoroutineScope;
    public final Lazy appLanguageManager$delegate;
    public boolean appLanguageManagerInitialized;
    public final Lazy logger$delegate;
    public final Lazy messageListWidgetManager$delegate;
    public final Lazy messagingController$delegate;
    public final Lazy messagingListenerProvider$delegate;
    public final Lazy notificationChannelManager$delegate;
    public final Lazy syncDebugFileLogSink$delegate;
    public final Lazy themeManager$delegate;
    public final Lazy workManagerConfigurationProvider$delegate;

    public K9App() {
        final int i = 0;
        Function0 function0 = new Function0(this) { // from class: net.thunderbird.app.common.BaseApplication$special$$inlined$inject$default$1
            public final /* synthetic */ K9App $this_inject;

            {
                this.$this_inject = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i2 = i;
                K9App k9App = this.$this_inject;
                switch (i2) {
                    case 0:
                        return AtomicFU.getKoinScope(k9App).resolve(Reflection.getOrCreateKotlinClass(MessagingController.class), null, null);
                    case 1:
                        return AtomicFU.getKoinScope(k9App).resolve(Reflection.getOrCreateKotlinClass(DefaultMessagingListenerProvider.class), null, null);
                    case 2:
                        return AtomicFU.getKoinScope(k9App).resolve(Reflection.getOrCreateKotlinClass(ThemeManager.class), null, null);
                    case 3:
                        return AtomicFU.getKoinScope(k9App).resolve(Reflection.getOrCreateKotlinClass(AppLanguageManager.class), null, null);
                    case 4:
                        return AtomicFU.getKoinScope(k9App).resolve(Reflection.getOrCreateKotlinClass(NotificationChannelManager.class), null, null);
                    case 5:
                        return AtomicFU.getKoinScope(k9App).resolve(Reflection.getOrCreateKotlinClass(MessageListWidgetManager.class), null, null);
                    case 6:
                        return AtomicFU.getKoinScope(k9App).resolve(Reflection.getOrCreateKotlinClass(WorkManagerConfigurationProvider.class), null, null);
                    default:
                        return AtomicFU.getKoinScope(k9App).resolve(Reflection.getOrCreateKotlinClass(Logger.class), null, null);
                }
            }
        };
        LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.SYNCHRONIZED;
        this.messagingController$delegate = ResultKt.lazy(lazyThreadSafetyMode, function0);
        final int i2 = 1;
        this.messagingListenerProvider$delegate = ResultKt.lazy(lazyThreadSafetyMode, new Function0(this) { // from class: net.thunderbird.app.common.BaseApplication$special$$inlined$inject$default$1
            public final /* synthetic */ K9App $this_inject;

            {
                this.$this_inject = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i22 = i2;
                K9App k9App = this.$this_inject;
                switch (i22) {
                    case 0:
                        return AtomicFU.getKoinScope(k9App).resolve(Reflection.getOrCreateKotlinClass(MessagingController.class), null, null);
                    case 1:
                        return AtomicFU.getKoinScope(k9App).resolve(Reflection.getOrCreateKotlinClass(DefaultMessagingListenerProvider.class), null, null);
                    case 2:
                        return AtomicFU.getKoinScope(k9App).resolve(Reflection.getOrCreateKotlinClass(ThemeManager.class), null, null);
                    case 3:
                        return AtomicFU.getKoinScope(k9App).resolve(Reflection.getOrCreateKotlinClass(AppLanguageManager.class), null, null);
                    case 4:
                        return AtomicFU.getKoinScope(k9App).resolve(Reflection.getOrCreateKotlinClass(NotificationChannelManager.class), null, null);
                    case 5:
                        return AtomicFU.getKoinScope(k9App).resolve(Reflection.getOrCreateKotlinClass(MessageListWidgetManager.class), null, null);
                    case 6:
                        return AtomicFU.getKoinScope(k9App).resolve(Reflection.getOrCreateKotlinClass(WorkManagerConfigurationProvider.class), null, null);
                    default:
                        return AtomicFU.getKoinScope(k9App).resolve(Reflection.getOrCreateKotlinClass(Logger.class), null, null);
                }
            }
        });
        final int i3 = 2;
        this.themeManager$delegate = ResultKt.lazy(lazyThreadSafetyMode, new Function0(this) { // from class: net.thunderbird.app.common.BaseApplication$special$$inlined$inject$default$1
            public final /* synthetic */ K9App $this_inject;

            {
                this.$this_inject = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i22 = i3;
                K9App k9App = this.$this_inject;
                switch (i22) {
                    case 0:
                        return AtomicFU.getKoinScope(k9App).resolve(Reflection.getOrCreateKotlinClass(MessagingController.class), null, null);
                    case 1:
                        return AtomicFU.getKoinScope(k9App).resolve(Reflection.getOrCreateKotlinClass(DefaultMessagingListenerProvider.class), null, null);
                    case 2:
                        return AtomicFU.getKoinScope(k9App).resolve(Reflection.getOrCreateKotlinClass(ThemeManager.class), null, null);
                    case 3:
                        return AtomicFU.getKoinScope(k9App).resolve(Reflection.getOrCreateKotlinClass(AppLanguageManager.class), null, null);
                    case 4:
                        return AtomicFU.getKoinScope(k9App).resolve(Reflection.getOrCreateKotlinClass(NotificationChannelManager.class), null, null);
                    case 5:
                        return AtomicFU.getKoinScope(k9App).resolve(Reflection.getOrCreateKotlinClass(MessageListWidgetManager.class), null, null);
                    case 6:
                        return AtomicFU.getKoinScope(k9App).resolve(Reflection.getOrCreateKotlinClass(WorkManagerConfigurationProvider.class), null, null);
                    default:
                        return AtomicFU.getKoinScope(k9App).resolve(Reflection.getOrCreateKotlinClass(Logger.class), null, null);
                }
            }
        });
        final int i4 = 3;
        this.appLanguageManager$delegate = ResultKt.lazy(lazyThreadSafetyMode, new Function0(this) { // from class: net.thunderbird.app.common.BaseApplication$special$$inlined$inject$default$1
            public final /* synthetic */ K9App $this_inject;

            {
                this.$this_inject = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i22 = i4;
                K9App k9App = this.$this_inject;
                switch (i22) {
                    case 0:
                        return AtomicFU.getKoinScope(k9App).resolve(Reflection.getOrCreateKotlinClass(MessagingController.class), null, null);
                    case 1:
                        return AtomicFU.getKoinScope(k9App).resolve(Reflection.getOrCreateKotlinClass(DefaultMessagingListenerProvider.class), null, null);
                    case 2:
                        return AtomicFU.getKoinScope(k9App).resolve(Reflection.getOrCreateKotlinClass(ThemeManager.class), null, null);
                    case 3:
                        return AtomicFU.getKoinScope(k9App).resolve(Reflection.getOrCreateKotlinClass(AppLanguageManager.class), null, null);
                    case 4:
                        return AtomicFU.getKoinScope(k9App).resolve(Reflection.getOrCreateKotlinClass(NotificationChannelManager.class), null, null);
                    case 5:
                        return AtomicFU.getKoinScope(k9App).resolve(Reflection.getOrCreateKotlinClass(MessageListWidgetManager.class), null, null);
                    case 6:
                        return AtomicFU.getKoinScope(k9App).resolve(Reflection.getOrCreateKotlinClass(WorkManagerConfigurationProvider.class), null, null);
                    default:
                        return AtomicFU.getKoinScope(k9App).resolve(Reflection.getOrCreateKotlinClass(Logger.class), null, null);
                }
            }
        });
        final int i5 = 4;
        this.notificationChannelManager$delegate = ResultKt.lazy(lazyThreadSafetyMode, new Function0(this) { // from class: net.thunderbird.app.common.BaseApplication$special$$inlined$inject$default$1
            public final /* synthetic */ K9App $this_inject;

            {
                this.$this_inject = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i22 = i5;
                K9App k9App = this.$this_inject;
                switch (i22) {
                    case 0:
                        return AtomicFU.getKoinScope(k9App).resolve(Reflection.getOrCreateKotlinClass(MessagingController.class), null, null);
                    case 1:
                        return AtomicFU.getKoinScope(k9App).resolve(Reflection.getOrCreateKotlinClass(DefaultMessagingListenerProvider.class), null, null);
                    case 2:
                        return AtomicFU.getKoinScope(k9App).resolve(Reflection.getOrCreateKotlinClass(ThemeManager.class), null, null);
                    case 3:
                        return AtomicFU.getKoinScope(k9App).resolve(Reflection.getOrCreateKotlinClass(AppLanguageManager.class), null, null);
                    case 4:
                        return AtomicFU.getKoinScope(k9App).resolve(Reflection.getOrCreateKotlinClass(NotificationChannelManager.class), null, null);
                    case 5:
                        return AtomicFU.getKoinScope(k9App).resolve(Reflection.getOrCreateKotlinClass(MessageListWidgetManager.class), null, null);
                    case 6:
                        return AtomicFU.getKoinScope(k9App).resolve(Reflection.getOrCreateKotlinClass(WorkManagerConfigurationProvider.class), null, null);
                    default:
                        return AtomicFU.getKoinScope(k9App).resolve(Reflection.getOrCreateKotlinClass(Logger.class), null, null);
                }
            }
        });
        final int i6 = 5;
        this.messageListWidgetManager$delegate = ResultKt.lazy(lazyThreadSafetyMode, new Function0(this) { // from class: net.thunderbird.app.common.BaseApplication$special$$inlined$inject$default$1
            public final /* synthetic */ K9App $this_inject;

            {
                this.$this_inject = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i22 = i6;
                K9App k9App = this.$this_inject;
                switch (i22) {
                    case 0:
                        return AtomicFU.getKoinScope(k9App).resolve(Reflection.getOrCreateKotlinClass(MessagingController.class), null, null);
                    case 1:
                        return AtomicFU.getKoinScope(k9App).resolve(Reflection.getOrCreateKotlinClass(DefaultMessagingListenerProvider.class), null, null);
                    case 2:
                        return AtomicFU.getKoinScope(k9App).resolve(Reflection.getOrCreateKotlinClass(ThemeManager.class), null, null);
                    case 3:
                        return AtomicFU.getKoinScope(k9App).resolve(Reflection.getOrCreateKotlinClass(AppLanguageManager.class), null, null);
                    case 4:
                        return AtomicFU.getKoinScope(k9App).resolve(Reflection.getOrCreateKotlinClass(NotificationChannelManager.class), null, null);
                    case 5:
                        return AtomicFU.getKoinScope(k9App).resolve(Reflection.getOrCreateKotlinClass(MessageListWidgetManager.class), null, null);
                    case 6:
                        return AtomicFU.getKoinScope(k9App).resolve(Reflection.getOrCreateKotlinClass(WorkManagerConfigurationProvider.class), null, null);
                    default:
                        return AtomicFU.getKoinScope(k9App).resolve(Reflection.getOrCreateKotlinClass(Logger.class), null, null);
                }
            }
        });
        final int i7 = 6;
        this.workManagerConfigurationProvider$delegate = ResultKt.lazy(lazyThreadSafetyMode, new Function0(this) { // from class: net.thunderbird.app.common.BaseApplication$special$$inlined$inject$default$1
            public final /* synthetic */ K9App $this_inject;

            {
                this.$this_inject = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i22 = i7;
                K9App k9App = this.$this_inject;
                switch (i22) {
                    case 0:
                        return AtomicFU.getKoinScope(k9App).resolve(Reflection.getOrCreateKotlinClass(MessagingController.class), null, null);
                    case 1:
                        return AtomicFU.getKoinScope(k9App).resolve(Reflection.getOrCreateKotlinClass(DefaultMessagingListenerProvider.class), null, null);
                    case 2:
                        return AtomicFU.getKoinScope(k9App).resolve(Reflection.getOrCreateKotlinClass(ThemeManager.class), null, null);
                    case 3:
                        return AtomicFU.getKoinScope(k9App).resolve(Reflection.getOrCreateKotlinClass(AppLanguageManager.class), null, null);
                    case 4:
                        return AtomicFU.getKoinScope(k9App).resolve(Reflection.getOrCreateKotlinClass(NotificationChannelManager.class), null, null);
                    case 5:
                        return AtomicFU.getKoinScope(k9App).resolve(Reflection.getOrCreateKotlinClass(MessageListWidgetManager.class), null, null);
                    case 6:
                        return AtomicFU.getKoinScope(k9App).resolve(Reflection.getOrCreateKotlinClass(WorkManagerConfigurationProvider.class), null, null);
                    default:
                        return AtomicFU.getKoinScope(k9App).resolve(Reflection.getOrCreateKotlinClass(Logger.class), null, null);
                }
            }
        });
        final int i8 = 7;
        this.logger$delegate = ResultKt.lazy(lazyThreadSafetyMode, new Function0(this) { // from class: net.thunderbird.app.common.BaseApplication$special$$inlined$inject$default$1
            public final /* synthetic */ K9App $this_inject;

            {
                this.$this_inject = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i22 = i8;
                K9App k9App = this.$this_inject;
                switch (i22) {
                    case 0:
                        return AtomicFU.getKoinScope(k9App).resolve(Reflection.getOrCreateKotlinClass(MessagingController.class), null, null);
                    case 1:
                        return AtomicFU.getKoinScope(k9App).resolve(Reflection.getOrCreateKotlinClass(DefaultMessagingListenerProvider.class), null, null);
                    case 2:
                        return AtomicFU.getKoinScope(k9App).resolve(Reflection.getOrCreateKotlinClass(ThemeManager.class), null, null);
                    case 3:
                        return AtomicFU.getKoinScope(k9App).resolve(Reflection.getOrCreateKotlinClass(AppLanguageManager.class), null, null);
                    case 4:
                        return AtomicFU.getKoinScope(k9App).resolve(Reflection.getOrCreateKotlinClass(NotificationChannelManager.class), null, null);
                    case 5:
                        return AtomicFU.getKoinScope(k9App).resolve(Reflection.getOrCreateKotlinClass(MessageListWidgetManager.class), null, null);
                    case 6:
                        return AtomicFU.getKoinScope(k9App).resolve(Reflection.getOrCreateKotlinClass(WorkManagerConfigurationProvider.class), null, null);
                    default:
                        return AtomicFU.getKoinScope(k9App).resolve(Reflection.getOrCreateKotlinClass(Logger.class), null, null);
                }
            }
        });
        this.syncDebugFileLogSink$delegate = ResultKt.lazy(lazyThreadSafetyMode, new Http2Connection.ReaderRunnable(27, this, new StringQualifier("syncDebug")));
        this.appCoroutineScope = JobKt.MainScope();
    }

    public final void applyOverrideLocaleToConfiguration() {
        Locale locale = getAppLanguageManager().currentOverrideLocale;
        if (locale != null) {
            Configuration configuration = getSuperResources().getConfiguration();
            configuration.getClass();
            updateConfigurationWithLocale(configuration, locale);
        }
    }

    @Override // android.content.ContextWrapper
    public final void attachBaseContext(Context context) {
        Lazy lazy = Core.context$delegate;
        DI$$ExternalSyntheticLambda0 dI$$ExternalSyntheticLambda0 = new DI$$ExternalSyntheticLambda0(0, this, IntOffsetKt.listOf(K9KoinModuleKt.appModule));
        synchronized (GlobalContext.INSTANCE) {
            KoinApplication koinApplication = new KoinApplication();
            if (GlobalContext._koin != null) {
                throw new InstanceCreationException("A Koin Application has already been started");
            }
            GlobalContext._koin = koinApplication.koin;
            dI$$ExternalSyntheticLambda0.invoke(koinApplication);
            koinApplication.koin.createEagerInstances();
        }
        Logger logger = (Logger) this.logger$delegate.getValue();
        logger.getClass();
        Log.logger = logger;
        super.attachBaseContext(context);
    }

    public final AppLanguageManager getAppLanguageManager() {
        return (AppLanguageManager) this.appLanguageManager$delegate.getValue();
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public final Resources getResources() {
        Locale locale;
        Resources resources = super.getResources();
        if (this.appLanguageManagerInitialized && (locale = getAppLanguageManager().currentOverrideLocale) != null) {
            Configuration configuration = resources.getConfiguration();
            configuration.getClass();
            if (!Api24Compat.getCurrentLocale(configuration).equals(locale)) {
                Log.w("Resources configuration was reset. Re-applying locale override.", new Object[0]);
                Locale locale2 = getAppLanguageManager().currentOverrideLocale;
                if (locale2 != null) {
                    Locale.setDefault(locale2);
                }
                applyOverrideLocaleToConfiguration();
            }
        }
        resources.getClass();
        return resources;
    }

    public final Resources getSuperResources() {
        Resources resources = super.getResources();
        resources.getClass();
        return resources;
    }

    @Override // android.app.Application, android.content.ComponentCallbacks
    public final void onConfigurationChanged(Configuration configuration) {
        configuration.getClass();
        applyOverrideLocaleToConfiguration();
        super.onConfigurationChanged(getSuperResources().getConfiguration());
    }

    @Override // android.app.Application
    public final void onCreate() {
        super.onCreate();
        K9 k9 = K9.INSTANCE;
        K9MailLib.debugStatus = new Path.Companion();
        SharedPreferences sharedPreferences = getSharedPreferences("database_version_cache", 0);
        K9.databaseVersionCache = sharedPreferences;
        sharedPreferences.getClass();
        int i = sharedPreferences.getInt("last_account_database_version", 0);
        if (i >= 91) {
            K9.setDatabasesUpToDate(false);
        }
        K9.loadPrefs(((DefaultGeneralSettingsManager) K9.generalSettingsManager$delegate.getValue()).preferences.getStorage());
        Lazy lazy = Core.context$delegate;
        BinaryTempFileBody.mTempDirectory = getCacheDir();
        Core.setServicesEnabled(this);
        CoroutineScope coroutineScope = (CoroutineScope) Core.appCoroutineScope$delegate.getValue();
        DefaultScheduler defaultScheduler = Dispatchers.Default;
        Continuation continuation = null;
        JobKt.launch$default(coroutineScope, DefaultIoScheduler.INSTANCE, null, new Core$restoreNotifications$1(2, continuation, r1), 2);
        AppLanguageManager appLanguageManager = getAppLanguageManager();
        appLanguageManager.setLocale(((DisplayCoreSettings) appLanguageManager.displayCoreSettingsPreferenceManager.getConfig()).appLanguage);
        applyOverrideLocaleToConfiguration();
        this.appLanguageManagerInitialized = true;
        FlowKt__MergeKt$flatMapConcat$$inlined$map$1 flowKt__MergeKt$flatMapConcat$$inlined$map$1 = new FlowKt__MergeKt$flatMapConcat$$inlined$map$1(new FlowKt__LimitKt$drop$$inlined$unsafeFlow$1(getAppLanguageManager().overrideLocale, 0), new InterruptibleKt$runInterruptible$2(this, continuation, 12), 2);
        ContextScope contextScope = this.appCoroutineScope;
        FlowKt.launchIn(flowKt__MergeKt$flatMapConcat$$inlined$map$1, contextScope);
        FlowKt.launchIn(new FlowKt__MergeKt$flatMapConcat$$inlined$map$1(FlowKt.distinctUntilChanged(getAppLanguageManager().appLocale), new WakeLock$release$2(this, continuation, 15), 2), contextScope);
        ThemeManager themeManager = (ThemeManager) this.themeManager$delegate.getValue();
        FlowKt.launchIn(new FlowKt__MergeKt$flatMapConcat$$inlined$map$1(FlowKt.distinctUntilChanged(new FlowKt__LimitKt$drop$$inlined$unsafeFlow$1(((DefaultGeneralSettingsManager) themeManager.generalSettingsManager).generalSettings, 4)), new InterruptibleKt$runInterruptible$2(themeManager, continuation, 16), 2), new ContextScope(themeManager.appCoroutineScope.getCoroutineContext().plus(MainDispatcherLoader.dispatcher.immediate)));
        MessageListWidgetManager messageListWidgetManager = (MessageListWidgetManager) this.messageListWidgetManager$delegate.getValue();
        Context context = messageListWidgetManager.context;
        AppWidgetManager appWidgetManager = AppWidgetManager.getInstance(context);
        messageListWidgetManager.appWidgetManager = appWidgetManager;
        if (appWidgetManager == null) {
            Log.v("Message list widget is not supported on this device.", new Object[0]);
        }
        if ((messageListWidgetManager.getAppWidgetIds().length == 0 ? 1 : 0) == 0) {
            int[] appWidgetIds = messageListWidgetManager.getAppWidgetIds();
            if (appWidgetIds.length != 0) {
                Intent intent = new Intent(context, (Class<?>) MessageListWidgetProvider.class);
                intent.setAction("android.appwidget.action.APPWIDGET_UPDATE");
                intent.putExtra("appWidgetIds", appWidgetIds);
                context.sendBroadcast(intent);
            }
            messageListWidgetManager.registerMessageListChangedListener();
        }
        Iterator it = ((DefaultMessagingListenerProvider) this.messagingListenerProvider$delegate.getValue()).listeners.iterator();
        while (it.hasNext()) {
            ((MessagingController) this.messagingController$delegate.getValue()).addListener((SimpleMessagingListener) it.next());
        }
        Thread.setDefaultUncaughtExceptionHandler(new ExceptionHandler(Thread.getDefaultUncaughtExceptionHandler()));
        ProcessLifecycleOwner.newInstance.registry.addObserver(new EmojiCompatInitializer.AnonymousClass1((FileLogSink) this.syncDebugFileLogSink$delegate.getValue()));
    }

    public final void updateConfigurationWithLocale(Configuration configuration, Locale locale) {
        Log.d("Updating application configuration with locale '" + locale + "'", new Object[0]);
        Configuration configuration2 = new Configuration(configuration);
        Api24Compat.setCurrentLocale(configuration2, locale);
        getSuperResources().updateConfiguration(configuration2, getSuperResources().getDisplayMetrics());
    }
}
