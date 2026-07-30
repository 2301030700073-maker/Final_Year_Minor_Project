package expo.modules.updates;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import com.facebook.gamingservices.cloudgaming.internal.SDKConstants;
import com.facebook.react.bridge.ReactContext;
import com.facebook.react.devsupport.interfaces.DevSupportManager;
import expo.modules.kotlin.exception.CodedException;
import expo.modules.kotlin.exception.UnexpectedException;
import expo.modules.updates.IUpdatesController;
import expo.modules.updates.db.BuildData;
import expo.modules.updates.db.DatabaseHolder;
import expo.modules.updates.db.UpdatesDatabase;
import expo.modules.updates.db.entity.AssetEntity;
import expo.modules.updates.db.entity.UpdateEntity;
import expo.modules.updates.events.IUpdatesEventManager;
import expo.modules.updates.events.UpdatesEventManager;
import expo.modules.updates.launcher.Launcher;
import expo.modules.updates.loader.FileDownloader;
import expo.modules.updates.logging.UpdatesErrorCode;
import expo.modules.updates.logging.UpdatesLogReader;
import expo.modules.updates.logging.UpdatesLogger;
import expo.modules.updates.manifest.EmbeddedManifestUtils;
import expo.modules.updates.manifest.EmbeddedUpdate;
import expo.modules.updates.procedures.CheckForUpdateProcedure;
import expo.modules.updates.procedures.FetchUpdateProcedure;
import expo.modules.updates.procedures.RelaunchProcedure;
import expo.modules.updates.procedures.StartupProcedure;
import expo.modules.updates.selectionpolicy.SelectionPolicy;
import expo.modules.updates.selectionpolicy.SelectionPolicyFactory;
import expo.modules.updates.statemachine.UpdatesStateMachine;
import expo.modules.updates.statemachine.UpdatesStateValue;
import io.sentry.SentryEvent;
import java.io.File;
import java.lang.ref.WeakReference;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugProbesKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.time.Duration;
import kotlin.time.DurationKt;
import kotlin.time.DurationUnit;
import kotlinx.coroutines.BuildersKt__BuildersKt;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CancellableContinuation;
import kotlinx.coroutines.CancellableContinuationImpl;
import kotlinx.coroutines.CompletableDeferred;
import kotlinx.coroutines.CompletableDeferredKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.sync.Mutex;
import kotlinx.coroutines.sync.MutexKt;

/* compiled from: EnabledUpdatesController.kt */
@Metadata(d1 = {"\u0000â\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u0000 f2\u00020\u0001:\u0001fB\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0004\b\b\u0010\tJ\b\u0010$\u001a\u00020!H\u0002J\b\u0010,\u001a\u00020!H\u0002J\b\u0010D\u001a\u00020!H\u0016J\u0010\u0010E\u001a\u00020!2\u0006\u0010F\u001a\u00020GH\u0016J\u0010\u0010H\u001a\u00020!2\u0006\u0010I\u001a\u00020JH\u0016J\u0014\u0010K\u001a\u00020!2\n\u0010L\u001a\u00060Mj\u0002`NH\u0016J\b\u0010P\u001a\u00020!H\u0016J\u0018\u0010Q\u001a\u00020!2\u0006\u0010R\u001a\u00020&2\u0006\u0010S\u001a\u00020TH\u0002J\b\u0010U\u001a\u00020VH\u0016J\u000e\u0010W\u001a\u00020!H\u0096@¢\u0006\u0002\u0010XJ\u000e\u0010Y\u001a\u00020ZH\u0096@¢\u0006\u0002\u0010XJ\u000e\u0010[\u001a\u00020\\H\u0096@¢\u0006\u0002\u0010XJ\u000e\u0010]\u001a\u00020^H\u0096@¢\u0006\u0002\u0010XJ \u0010_\u001a\u00020!2\u0006\u0010`\u001a\u00020<2\b\u0010a\u001a\u0004\u0018\u00010<H\u0096@¢\u0006\u0002\u0010bJ\u0012\u0010c\u001a\u00020!2\b\u0010d\u001a\u0004\u0018\u00010eH\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u00020\u0007X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u0016\u0010\f\u001a\n\u0012\u0004\u0012\u00020\u000e\u0018\u00010\rX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0011\u001a\u00020\u0012X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0014R\u000e\u0010\u0015\u001a\u00020\u0016X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0017\u001a\u00020\u0018X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0019\u001a\u00020\u001aX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u001b\u001a\u00020\u001cX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u001d\u001a\u00020\u001eX\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u001f\u001a\b\u0012\u0004\u0012\u00020!0 X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\"\u001a\u00020#X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010%\u001a\u00020&X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010'\u001a\u00020&X\u0082\u000e¢\u0006\u0002\n\u0000R\u0012\u0010(\u001a\u0004\u0018\u00010)X\u0082\u000e¢\u0006\u0004\n\u0002\u0010*R\u0012\u0010+\u001a\u0004\u0018\u00010)X\u0082\u000e¢\u0006\u0004\n\u0002\u0010*R\u000e\u0010-\u001a\u00020.X\u0082\u0004¢\u0006\u0002\n\u0000R\u0016\u0010/\u001a\u0004\u0018\u0001008BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b1\u00102R\u0016\u00103\u001a\u0004\u0018\u0001048BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b5\u00106R\u0014\u00107\u001a\u00020&8BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b7\u00108R\"\u00109\u001a\u0010\u0012\u0004\u0012\u00020;\u0012\u0004\u0012\u00020<\u0018\u00010:8BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b=\u0010>R\u0016\u0010?\u001a\u0004\u0018\u00010<8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b@\u0010AR\u0016\u0010B\u001a\u0004\u0018\u00010<8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\bC\u0010AR\u0014\u0010O\u001a\u00020&X\u0096D¢\u0006\b\n\u0000\u001a\u0004\bO\u00108¨\u0006g"}, d2 = {"Lexpo/modules/updates/EnabledUpdatesController;", "Lexpo/modules/updates/IUpdatesController;", "context", "Landroid/content/Context;", "updatesConfiguration", "Lexpo/modules/updates/UpdatesConfiguration;", "updatesDirectory", "Ljava/io/File;", "<init>", "(Landroid/content/Context;Lexpo/modules/updates/UpdatesConfiguration;Ljava/io/File;)V", "getUpdatesDirectory", "()Ljava/io/File;", "weakActivity", "Ljava/lang/ref/WeakReference;", "Landroid/app/Activity;", SentryEvent.JsonKeys.LOGGER, "Lexpo/modules/updates/logging/UpdatesLogger;", "eventManager", "Lexpo/modules/updates/events/IUpdatesEventManager;", "getEventManager", "()Lexpo/modules/updates/events/IUpdatesEventManager;", "fileDownloader", "Lexpo/modules/updates/loader/FileDownloader;", "selectionPolicy", "Lexpo/modules/updates/selectionpolicy/SelectionPolicy;", "stateMachine", "Lexpo/modules/updates/statemachine/UpdatesStateMachine;", "controllerScope", "Lkotlinx/coroutines/CoroutineScope;", "databaseHolder", "Lexpo/modules/updates/db/DatabaseHolder;", "startupFinishedDeferred", "Lkotlinx/coroutines/CompletableDeferred;", "", "startupFinishedMutex", "Lkotlinx/coroutines/sync/Mutex;", "purgeUpdatesLogsOlderThanOneDay", "isStarted", "", "isStartupFinished", "startupStartTimeMillis", "", "Ljava/lang/Long;", "startupEndTimeMillis", "onStartupProcedureFinished", "startupProcedure", "Lexpo/modules/updates/procedures/StartupProcedure;", "launchedUpdate", "Lexpo/modules/updates/db/entity/UpdateEntity;", "getLaunchedUpdate", "()Lexpo/modules/updates/db/entity/UpdateEntity;", "launchDuration", "Lkotlin/time/Duration;", "getLaunchDuration-FghU774", "()Lkotlin/time/Duration;", "isUsingEmbeddedAssets", "()Z", "localAssetFiles", "", "Lexpo/modules/updates/db/entity/AssetEntity;", "", "getLocalAssetFiles", "()Ljava/util/Map;", "launchAssetFile", "getLaunchAssetFile", "()Ljava/lang/String;", "bundleAssetName", "getBundleAssetName", "onEventListenerStartObserving", "onDidCreateDevSupportManager", "devSupportManager", "Lcom/facebook/react/devsupport/interfaces/DevSupportManager;", "onDidCreateReactInstance", "reactContext", "Lcom/facebook/react/bridge/ReactContext;", "onReactInstanceException", SentryEvent.JsonKeys.EXCEPTION, "Ljava/lang/Exception;", "Lkotlin/Exception;", "isActiveController", "start", "relaunchReactApplication", "shouldRunReaper", "callback", "Lexpo/modules/updates/launcher/Launcher$LauncherCallback;", "getConstantsForModule", "Lexpo/modules/updates/IUpdatesController$UpdatesModuleConstants;", "relaunchReactApplicationForModule", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "checkForUpdate", "Lexpo/modules/updates/IUpdatesController$CheckForUpdateResult;", "fetchUpdate", "Lexpo/modules/updates/IUpdatesController$FetchUpdateResult;", "getExtraParams", "Landroid/os/Bundle;", "setExtraParam", SDKConstants.PARAM_KEY, "value", "(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "setUpdateURLAndRequestHeadersOverride", "configOverride", "Lexpo/modules/updates/UpdatesConfigurationOverride;", "Companion", "expo-updates_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
/* loaded from: classes5.dex */
public final class EnabledUpdatesController implements IUpdatesController {
    private static final String TAG = "EnabledUpdatesController";
    private final Context context;
    private final CoroutineScope controllerScope;
    private final DatabaseHolder databaseHolder;
    private final IUpdatesEventManager eventManager;
    private final FileDownloader fileDownloader;
    private final boolean isActiveController;
    private boolean isStarted;
    private boolean isStartupFinished;
    private final UpdatesLogger logger;
    private final SelectionPolicy selectionPolicy;
    private Long startupEndTimeMillis;
    private final CompletableDeferred<Unit> startupFinishedDeferred;
    private final Mutex startupFinishedMutex;
    private final StartupProcedure startupProcedure;
    private Long startupStartTimeMillis;
    private final UpdatesStateMachine stateMachine;
    private final UpdatesConfiguration updatesConfiguration;
    private final File updatesDirectory;
    private WeakReference<Activity> weakActivity;

    public EnabledUpdatesController(Context context, UpdatesConfiguration updatesConfiguration, File updatesDirectory) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(updatesConfiguration, "updatesConfiguration");
        Intrinsics.checkNotNullParameter(updatesDirectory, "updatesDirectory");
        this.context = context;
        this.updatesConfiguration = updatesConfiguration;
        this.updatesDirectory = updatesDirectory;
        File filesDir = context.getFilesDir();
        Intrinsics.checkNotNullExpressionValue(filesDir, "getFilesDir(...)");
        UpdatesLogger updatesLogger = new UpdatesLogger(filesDir);
        this.logger = updatesLogger;
        this.eventManager = new UpdatesEventManager(updatesLogger);
        FileDownloader fileDownloader = new FileDownloader(context, updatesConfiguration, updatesLogger);
        this.fileDownloader = fileDownloader;
        SelectionPolicy createFilterAwarePolicy = SelectionPolicyFactory.createFilterAwarePolicy(updatesConfiguration.getRuntimeVersion());
        this.selectionPolicy = createFilterAwarePolicy;
        this.stateMachine = new UpdatesStateMachine(updatesLogger, getEventManager(), CollectionsKt.toSet(UpdatesStateValue.getEntries()));
        this.controllerScope = CoroutineScopeKt.CoroutineScope(Dispatchers.getIO());
        DatabaseHolder databaseHolder = new DatabaseHolder(UpdatesDatabase.INSTANCE.getInstance(context, Dispatchers.getIO()));
        this.databaseHolder = databaseHolder;
        this.startupFinishedDeferred = CompletableDeferredKt.CompletableDeferred$default(null, 1, null);
        this.startupFinishedMutex = MutexKt.Mutex$default(false, 1, null);
        this.startupProcedure = new StartupProcedure(context, updatesConfiguration, databaseHolder, getUpdatesDirectory(), fileDownloader, createFilterAwarePolicy, updatesLogger, new StartupProcedure.StartupProcedureCallback() { // from class: expo.modules.updates.EnabledUpdatesController$startupProcedure$1
            @Override // expo.modules.updates.procedures.StartupProcedure.StartupProcedureCallback
            public void onFinished() {
                EnabledUpdatesController.this.onStartupProcedureFinished();
            }

            @Override // expo.modules.updates.procedures.StartupProcedure.StartupProcedureCallback
            public void onRequestRelaunch(boolean shouldRunReaper, Launcher.LauncherCallback callback) {
                Intrinsics.checkNotNullParameter(callback, "callback");
                EnabledUpdatesController.this.relaunchReactApplication(shouldRunReaper, callback);
            }
        }, null, 256, null);
        this.isActiveController = true;
    }

    @Override // expo.modules.updates.IUpdatesController
    public File getUpdatesDirectory() {
        return this.updatesDirectory;
    }

    @Override // expo.modules.updates.IUpdatesController
    public IUpdatesEventManager getEventManager() {
        return this.eventManager;
    }

    private final void purgeUpdatesLogsOlderThanOneDay() {
        File filesDir = this.context.getFilesDir();
        Intrinsics.checkNotNullExpressionValue(filesDir, "getFilesDir(...)");
        UpdatesLogReader.purgeLogEntries$default(new UpdatesLogReader(filesDir), null, new Function1() { // from class: expo.modules.updates.EnabledUpdatesController$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Unit purgeUpdatesLogsOlderThanOneDay$lambda$0;
                purgeUpdatesLogsOlderThanOneDay$lambda$0 = EnabledUpdatesController.purgeUpdatesLogsOlderThanOneDay$lambda$0(EnabledUpdatesController.this, (Exception) obj);
                return purgeUpdatesLogsOlderThanOneDay$lambda$0;
            }
        }, 1, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit purgeUpdatesLogsOlderThanOneDay$lambda$0(EnabledUpdatesController enabledUpdatesController, Exception exc) {
        if (exc != null) {
            enabledUpdatesController.logger.error("UpdatesLogReader: error in purgeLogEntries", exc, UpdatesErrorCode.Unknown);
        }
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final synchronized void onStartupProcedureFinished() {
        BuildersKt__Builders_commonKt.launch$default(this.controllerScope, null, null, new EnabledUpdatesController$onStartupProcedureFinished$1(this, null), 3, null);
        this.isStartupFinished = true;
        this.startupEndTimeMillis = Long.valueOf(System.currentTimeMillis());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final UpdateEntity getLaunchedUpdate() {
        return this.startupProcedure.getLaunchedUpdate();
    }

    /* renamed from: getLaunchDuration-FghU774, reason: not valid java name */
    private final Duration m1936getLaunchDurationFghU774() {
        Long l = this.startupStartTimeMillis;
        if (l == null) {
            return null;
        }
        long longValue = l.longValue();
        Long l2 = this.startupEndTimeMillis;
        if (l2 != null) {
            return Duration.m3461boximpl(DurationKt.toDuration(l2.longValue() - longValue, DurationUnit.MILLISECONDS));
        }
        return null;
    }

    private final boolean isUsingEmbeddedAssets() {
        return this.startupProcedure.isUsingEmbeddedAssets();
    }

    private final Map<AssetEntity, String> getLocalAssetFiles() {
        return this.startupProcedure.getLocalAssetFiles();
    }

    @Override // expo.modules.updates.IUpdatesController
    public String getLaunchAssetFile() {
        BuildersKt__BuildersKt.runBlocking$default(null, new EnabledUpdatesController$launchAssetFile$1(this, null), 1, null);
        return this.startupProcedure.getLaunchAssetFile();
    }

    @Override // expo.modules.updates.IUpdatesController
    public String getBundleAssetName() {
        return this.startupProcedure.getBundleAssetName();
    }

    @Override // expo.modules.updates.IUpdatesController
    public void onEventListenerStartObserving() {
        this.stateMachine.sendContextToJS();
    }

    @Override // expo.modules.updates.IUpdatesController
    public void onDidCreateDevSupportManager(DevSupportManager devSupportManager) {
        Intrinsics.checkNotNullParameter(devSupportManager, "devSupportManager");
        this.startupProcedure.onDidCreateDevSupportManager(devSupportManager);
    }

    @Override // expo.modules.updates.IUpdatesController
    public void onDidCreateReactInstance(ReactContext reactContext) {
        Intrinsics.checkNotNullParameter(reactContext, "reactContext");
        this.weakActivity = new WeakReference<>(reactContext.getCurrentActivity());
    }

    @Override // expo.modules.updates.IUpdatesController
    public void onReactInstanceException(Exception exception) {
        Intrinsics.checkNotNullParameter(exception, "exception");
        this.startupProcedure.onReactInstanceException(exception);
    }

    @Override // expo.modules.updates.IUpdatesController
    /* renamed from: isActiveController, reason: from getter */
    public boolean getIsActiveController() {
        return this.isActiveController;
    }

    @Override // expo.modules.updates.IUpdatesController
    public synchronized void start() {
        if (this.isStarted) {
            return;
        }
        this.isStarted = true;
        this.startupStartTimeMillis = Long.valueOf(System.currentTimeMillis());
        purgeUpdatesLogsOlderThanOneDay();
        BuildData.INSTANCE.ensureBuildDataIsConsistent(this.updatesConfiguration, this.databaseHolder.getDatabase());
        this.stateMachine.queueExecution(this.startupProcedure);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void relaunchReactApplication(boolean shouldRunReaper, Launcher.LauncherCallback callback) {
        this.stateMachine.queueExecution(new RelaunchProcedure(this.context, this.weakActivity, this.updatesConfiguration, this.logger, this.databaseHolder, getUpdatesDirectory(), this.fileDownloader, this.selectionPolicy, new Function0() { // from class: expo.modules.updates.EnabledUpdatesController$$ExternalSyntheticLambda1
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                Launcher relaunchReactApplication$lambda$3;
                relaunchReactApplication$lambda$3 = EnabledUpdatesController.relaunchReactApplication$lambda$3(EnabledUpdatesController.this);
                return relaunchReactApplication$lambda$3;
            }
        }, new Function1() { // from class: expo.modules.updates.EnabledUpdatesController$$ExternalSyntheticLambda2
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Unit relaunchReactApplication$lambda$4;
                relaunchReactApplication$lambda$4 = EnabledUpdatesController.relaunchReactApplication$lambda$4(EnabledUpdatesController.this, (Launcher) obj);
                return relaunchReactApplication$lambda$4;
            }
        }, shouldRunReaper, callback, null, 4096, null));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Launcher relaunchReactApplication$lambda$3(EnabledUpdatesController enabledUpdatesController) {
        Launcher launcher = enabledUpdatesController.startupProcedure.getLauncher();
        Intrinsics.checkNotNull(launcher);
        return launcher;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit relaunchReactApplication$lambda$4(EnabledUpdatesController enabledUpdatesController, Launcher currentLauncher) {
        Intrinsics.checkNotNullParameter(currentLauncher, "currentLauncher");
        enabledUpdatesController.startupProcedure.setLauncher(currentLauncher);
        return Unit.INSTANCE;
    }

    @Override // expo.modules.updates.IUpdatesController
    public IUpdatesController.UpdatesModuleConstants getConstantsForModule() {
        UpdateEntity launchedUpdate = getLaunchedUpdate();
        Duration m1936getLaunchDurationFghU774 = m1936getLaunchDurationFghU774();
        EmbeddedUpdate embeddedUpdate = EmbeddedManifestUtils.INSTANCE.getEmbeddedUpdate(this.context, this.updatesConfiguration);
        return new IUpdatesController.UpdatesModuleConstants(launchedUpdate, m1936getLaunchDurationFghU774, embeddedUpdate != null ? embeddedUpdate.getUpdateEntity() : null, this.startupProcedure.getEmergencyLaunchException(), true, isUsingEmbeddedAssets(), this.updatesConfiguration.getRuntimeVersionRaw(), this.updatesConfiguration.getCheckOnLaunch(), this.updatesConfiguration.getRequestHeaders(), getLocalAssetFiles(), false, this.stateMachine.getContext(), null);
    }

    @Override // expo.modules.updates.IUpdatesController
    public void setUpdateURLAndRequestHeadersOverride(UpdatesConfigurationOverride configOverride) {
        if (!this.updatesConfiguration.getDisableAntiBrickingMeasures()) {
            throw new CodedException("ERR_UPDATES_RUNTIME_OVERRIDE", "Must set disableAntiBrickingMeasures configuration to use updates overriding", null);
        }
        UpdatesConfigurationOverride.INSTANCE.save$expo_updates_release(this.context, configOverride);
    }

    @Override // expo.modules.updates.IUpdatesController
    public Object relaunchReactApplicationForModule(Continuation<? super Unit> continuation) {
        CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(IntrinsicsKt.intercepted(continuation), 1);
        cancellableContinuationImpl.initCancellability();
        final CancellableContinuationImpl cancellableContinuationImpl2 = cancellableContinuationImpl;
        if (getLaunchedUpdate() != null) {
            relaunchReactApplication(true, new Launcher.LauncherCallback() { // from class: expo.modules.updates.EnabledUpdatesController$relaunchReactApplicationForModule$2$2
                @Override // expo.modules.updates.launcher.Launcher.LauncherCallback
                public void onFailure(Exception e) {
                    UnexpectedException unexpectedException;
                    Intrinsics.checkNotNullParameter(e, "e");
                    CancellableContinuation<Unit> cancellableContinuation = cancellableContinuationImpl2;
                    Exception exc = e;
                    if (exc instanceof CodedException) {
                        unexpectedException = (CodedException) exc;
                    } else if (exc instanceof expo.modules.core.errors.CodedException) {
                        expo.modules.core.errors.CodedException codedException = (expo.modules.core.errors.CodedException) exc;
                        String code = codedException.getCode();
                        Intrinsics.checkNotNullExpressionValue(code, "getCode(...)");
                        unexpectedException = new CodedException(code, codedException.getMessage(), codedException.getCause());
                    } else {
                        unexpectedException = new UnexpectedException(exc);
                    }
                    Result.Companion companion = Result.INSTANCE;
                    cancellableContinuation.resumeWith(Result.m2098constructorimpl(ResultKt.createFailure(unexpectedException)));
                }

                @Override // expo.modules.updates.launcher.Launcher.LauncherCallback
                public void onSuccess() {
                    CancellableContinuation<Unit> cancellableContinuation = cancellableContinuationImpl2;
                    Result.Companion companion = Result.INSTANCE;
                    cancellableContinuation.resumeWith(Result.m2098constructorimpl(Unit.INSTANCE));
                }
            });
        } else {
            Result.Companion companion = Result.INSTANCE;
            cancellableContinuationImpl2.resumeWith(Result.m2098constructorimpl(ResultKt.createFailure(new CodedException() { // from class: expo.modules.updates.EnabledUpdatesController$relaunchReactApplicationForModule$2$1
            })));
        }
        Object result = cancellableContinuationImpl.getResult();
        if (result == IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
            DebugProbesKt.probeCoroutineSuspended(continuation);
        }
        return result == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? result : Unit.INSTANCE;
    }

    @Override // expo.modules.updates.IUpdatesController
    public Object checkForUpdate(Continuation<? super IUpdatesController.CheckForUpdateResult> continuation) {
        CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(IntrinsicsKt.intercepted(continuation), 1);
        cancellableContinuationImpl.initCancellability();
        final CancellableContinuationImpl cancellableContinuationImpl2 = cancellableContinuationImpl;
        this.stateMachine.queueExecution(new CheckForUpdateProcedure(this.context, this.updatesConfiguration, this.databaseHolder, this.logger, this.fileDownloader, this.selectionPolicy, getLaunchedUpdate(), new Function1<IUpdatesController.CheckForUpdateResult, Unit>() { // from class: expo.modules.updates.EnabledUpdatesController$checkForUpdate$2$procedure$1
            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(IUpdatesController.CheckForUpdateResult checkForUpdateResult) {
                invoke2(checkForUpdateResult);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(IUpdatesController.CheckForUpdateResult it) {
                Intrinsics.checkNotNullParameter(it, "it");
                CancellableContinuation<IUpdatesController.CheckForUpdateResult> cancellableContinuation = cancellableContinuationImpl2;
                Result.Companion companion = Result.INSTANCE;
                cancellableContinuation.resumeWith(Result.m2098constructorimpl(it));
            }
        }));
        Object result = cancellableContinuationImpl.getResult();
        if (result == IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
            DebugProbesKt.probeCoroutineSuspended(continuation);
        }
        return result;
    }

    @Override // expo.modules.updates.IUpdatesController
    public Object fetchUpdate(Continuation<? super IUpdatesController.FetchUpdateResult> continuation) {
        CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(IntrinsicsKt.intercepted(continuation), 1);
        cancellableContinuationImpl.initCancellability();
        final CancellableContinuationImpl cancellableContinuationImpl2 = cancellableContinuationImpl;
        this.stateMachine.queueExecution(new FetchUpdateProcedure(this.context, this.updatesConfiguration, this.logger, this.databaseHolder, getUpdatesDirectory(), this.fileDownloader, this.selectionPolicy, getLaunchedUpdate(), new Function1<IUpdatesController.FetchUpdateResult, Unit>() { // from class: expo.modules.updates.EnabledUpdatesController$fetchUpdate$2$procedure$1
            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(IUpdatesController.FetchUpdateResult fetchUpdateResult) {
                invoke2(fetchUpdateResult);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(IUpdatesController.FetchUpdateResult it) {
                Intrinsics.checkNotNullParameter(it, "it");
                CancellableContinuation<IUpdatesController.FetchUpdateResult> cancellableContinuation = cancellableContinuationImpl2;
                Result.Companion companion = Result.INSTANCE;
                cancellableContinuation.resumeWith(Result.m2098constructorimpl(it));
            }
        }));
        Object result = cancellableContinuationImpl.getResult();
        if (result == IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
            DebugProbesKt.probeCoroutineSuspended(continuation);
        }
        return result;
    }

    @Override // expo.modules.updates.IUpdatesController
    public Object getExtraParams(Continuation<? super Bundle> continuation) {
        CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(IntrinsicsKt.intercepted(continuation), 1);
        cancellableContinuationImpl.initCancellability();
        BuildersKt__Builders_commonKt.launch$default(this.controllerScope, null, null, new EnabledUpdatesController$getExtraParams$2$1(this, cancellableContinuationImpl, null), 3, null);
        Object result = cancellableContinuationImpl.getResult();
        if (result == IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
            DebugProbesKt.probeCoroutineSuspended(continuation);
        }
        return result;
    }

    @Override // expo.modules.updates.IUpdatesController
    public Object setExtraParam(String str, String str2, Continuation<? super Unit> continuation) {
        CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(IntrinsicsKt.intercepted(continuation), 1);
        cancellableContinuationImpl.initCancellability();
        BuildersKt__Builders_commonKt.launch$default(this.controllerScope, null, null, new EnabledUpdatesController$setExtraParam$2$1(this, str, str2, cancellableContinuationImpl, null), 3, null);
        Object result = cancellableContinuationImpl.getResult();
        if (result == IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
            DebugProbesKt.probeCoroutineSuspended(continuation);
        }
        return result == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? result : Unit.INSTANCE;
    }
}
