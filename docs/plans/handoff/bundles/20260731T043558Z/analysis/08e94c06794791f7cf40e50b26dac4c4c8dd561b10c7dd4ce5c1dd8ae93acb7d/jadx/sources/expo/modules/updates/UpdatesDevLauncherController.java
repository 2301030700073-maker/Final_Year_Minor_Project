package expo.modules.updates;

import android.content.Context;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Bundle;
import com.facebook.gamingservices.cloudgaming.internal.SDKConstants;
import com.facebook.react.bridge.ReactContext;
import com.facebook.react.devsupport.interfaces.DevSupportManager;
import expo.modules.kotlin.exception.CodedException;
import expo.modules.updates.IUpdatesController;
import expo.modules.updates.UpdatesConfiguration;
import expo.modules.updates.db.DatabaseHolder;
import expo.modules.updates.db.Reaper;
import expo.modules.updates.db.UpdatesDatabase;
import expo.modules.updates.db.entity.AssetEntity;
import expo.modules.updates.db.entity.UpdateEntity;
import expo.modules.updates.events.NoOpUpdatesEventManager;
import expo.modules.updates.launcher.DatabaseLauncher;
import expo.modules.updates.launcher.Launcher;
import expo.modules.updates.loader.FileDownloader;
import expo.modules.updates.loader.Loader;
import expo.modules.updates.loader.RemoteLoader;
import expo.modules.updates.loader.UpdateDirective;
import expo.modules.updates.loader.UpdateResponse;
import expo.modules.updates.loader.UpdateResponsePart;
import expo.modules.updates.logging.UpdatesErrorCode;
import expo.modules.updates.logging.UpdatesLogger;
import expo.modules.updates.manifest.Update;
import expo.modules.updates.selectionpolicy.LauncherSelectionPolicySingleUpdate;
import expo.modules.updates.selectionpolicy.ReaperSelectionPolicyDevelopmentClient;
import expo.modules.updates.selectionpolicy.SelectionPolicy;
import expo.modules.updates.selectionpolicy.SelectionPolicyFactory;
import expo.modules.updates.statemachine.UpdatesStateContext;
import expo.modules.updatesinterface.UpdatesInterface;
import expo.modules.updatesinterface.UpdatesInterfaceCallbacks;
import io.sentry.SentryEvent;
import java.io.File;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Result;
import kotlin.Unit;
import kotlin.collections.MapsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugProbesKt;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CancellableContinuationImpl;
import kotlinx.coroutines.Dispatchers;
import org.json.JSONObject;

/* compiled from: UpdatesDevLauncherController.kt */
@Metadata(d1 = {"\u0000è\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u0000 t2\u00020\u00012\u00020\u0002:\u0002stB3\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\b\u0012\u000e\u0010\t\u001a\n\u0018\u00010\nj\u0004\u0018\u0001`\u000b¢\u0006\u0004\b\f\u0010\rJ\u0012\u0010)\u001a\u00020*2\b\u0010&\u001a\u0004\u0018\u00010$H\u0002J\b\u0010+\u001a\u00020*H\u0002J\u0010\u0010,\u001a\u00020*2\u0006\u0010&\u001a\u00020$H\u0002J\b\u00103\u001a\u00020*H\u0016J\u0010\u00104\u001a\u00020*2\u0006\u00105\u001a\u000206H\u0016J\u0010\u00107\u001a\u00020*2\u0006\u00108\u001a\u000209H\u0016J\u0010\u0010:\u001a\u00020*2\u0006\u0010;\u001a\u00020\nH\u0016J\b\u0010?\u001a\u00020*H\u0016J\b\u0010J\u001a\u00020*H\u0016J4\u0010Q\u001a\u00020*2\"\u0010R\u001a\u001e\u0012\u0004\u0012\u00020.\u0012\u0004\u0012\u00020T0Sj\u000e\u0012\u0004\u0012\u00020.\u0012\u0004\u0012\u00020T`U2\u0006\u0010V\u001a\u00020WH\u0016J,\u0010X\u001a\u00020=2\"\u0010R\u001a\u001e\u0012\u0004\u0012\u00020.\u0012\u0004\u0012\u00020T0Sj\u000e\u0012\u0004\u0012\u00020.\u0012\u0004\u0012\u00020T`UH\u0016J,\u0010Y\u001a\u00020\u00062\"\u0010R\u001a\u001e\u0012\u0004\u0012\u00020.\u0012\u0004\u0012\u00020T0Sj\u000e\u0012\u0004\u0012\u00020.\u0012\u0004\u0012\u00020T`UH\u0002J\b\u0010Z\u001a\u00020*H\u0002J(\u0010[\u001a\u00020*2\u0006\u0010\\\u001a\u00020A2\u0006\u0010R\u001a\u00020\u00062\u0006\u0010]\u001a\u00020^2\u0006\u0010V\u001a\u00020WH\u0002J\b\u0010_\u001a\u00020`H\u0002J\b\u0010a\u001a\u00020*H\u0002J\b\u0010b\u001a\u00020cH\u0016J\u000e\u0010d\u001a\u00020*H\u0096@¢\u0006\u0002\u0010eJ\u000e\u0010f\u001a\u00020gH\u0096@¢\u0006\u0002\u0010eJ\u000e\u0010h\u001a\u00020iH\u0096@¢\u0006\u0002\u0010eJ\u000e\u0010j\u001a\u00020kH\u0096@¢\u0006\u0002\u0010eJ \u0010l\u001a\u00020*2\u0006\u0010m\u001a\u00020.2\b\u0010n\u001a\u0004\u0018\u00010.H\u0096@¢\u0006\u0002\u0010oJ\u0012\u0010p\u001a\u00020*2\b\u0010q\u001a\u0004\u0018\u00010rH\u0016R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u0016\u0010\u0007\u001a\u0004\u0018\u00010\bX\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000fR\u0016\u0010\t\u001a\n\u0018\u00010\nj\u0004\u0018\u0001`\u000bX\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0010\u001a\u00020\u0011X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0013R\"\u0010\u0014\u001a\n\u0012\u0004\u0012\u00020\u0016\u0018\u00010\u0015X\u0096\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0017\u0010\u0018\"\u0004\b\u0019\u0010\u001aR\u0010\u0010\u001b\u001a\u0004\u0018\u00010\u001cX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u001d\u001a\u00020\u001eX\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u001f\u001a\u0004\u0018\u00010\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010 \u001a\u0004\u0018\u00010\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010!\u001a\u00020\"X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010#\u001a\u0004\u0018\u00010$X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010%\u001a\u00020$X\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u0010&\u001a\u00020$8BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b'\u0010(R\u0016\u0010-\u001a\u0004\u0018\u00010.8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b/\u00100R\u0014\u00101\u001a\u00020.8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b2\u00100R\u0014\u0010<\u001a\u00020=X\u0096D¢\u0006\b\n\u0000\u001a\u0004\b<\u0010>R\u0013\u0010@\u001a\u0004\u0018\u00010A8F¢\u0006\u0006\u001a\u0004\bB\u0010CR\"\u0010D\u001a\u0010\u0012\u0004\u0012\u00020F\u0012\u0004\u0012\u00020.\u0018\u00010E8BX\u0082\u0004¢\u0006\u0006\u001a\u0004\bG\u0010HR\u0014\u0010I\u001a\u00020=8BX\u0082\u0004¢\u0006\u0006\u001a\u0004\bI\u0010>R\u0016\u0010K\u001a\u0004\u0018\u00010.8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\bL\u00100R\u0016\u0010M\u001a\u0004\u0018\u00010N8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\bO\u0010P¨\u0006u"}, d2 = {"Lexpo/modules/updates/UpdatesDevLauncherController;", "Lexpo/modules/updates/IUpdatesController;", "Lexpo/modules/updatesinterface/UpdatesInterface;", "context", "Landroid/content/Context;", "initialUpdatesConfiguration", "Lexpo/modules/updates/UpdatesConfiguration;", "updatesDirectory", "Ljava/io/File;", "updatesDirectoryException", "Ljava/lang/Exception;", "Lkotlin/Exception;", "<init>", "(Landroid/content/Context;Lexpo/modules/updates/UpdatesConfiguration;Ljava/io/File;Ljava/lang/Exception;)V", "getUpdatesDirectory", "()Ljava/io/File;", "eventManager", "Lexpo/modules/updates/events/NoOpUpdatesEventManager;", "getEventManager", "()Lexpo/modules/updates/events/NoOpUpdatesEventManager;", "updatesInterfaceCallbacks", "Ljava/lang/ref/WeakReference;", "Lexpo/modules/updatesinterface/UpdatesInterfaceCallbacks;", "getUpdatesInterfaceCallbacks", "()Ljava/lang/ref/WeakReference;", "setUpdatesInterfaceCallbacks", "(Ljava/lang/ref/WeakReference;)V", "launcher", "Lexpo/modules/updates/launcher/Launcher;", SentryEvent.JsonKeys.LOGGER, "Lexpo/modules/updates/logging/UpdatesLogger;", "previousUpdatesConfiguration", "updatesConfiguration", "databaseHolder", "Lexpo/modules/updates/db/DatabaseHolder;", "mSelectionPolicy", "Lexpo/modules/updates/selectionpolicy/SelectionPolicy;", "defaultSelectionPolicy", "selectionPolicy", "getSelectionPolicy", "()Lexpo/modules/updates/selectionpolicy/SelectionPolicy;", "setNextSelectionPolicy", "", "resetSelectionPolicyToDefault", "setDefaultSelectionPolicy", "launchAssetFile", "", "getLaunchAssetFile", "()Ljava/lang/String;", "bundleAssetName", "getBundleAssetName", "onEventListenerStartObserving", "onDidCreateDevSupportManager", "devSupportManager", "Lcom/facebook/react/devsupport/interfaces/DevSupportManager;", "onDidCreateReactInstance", "reactContext", "Lcom/facebook/react/bridge/ReactContext;", "onReactInstanceException", SentryEvent.JsonKeys.EXCEPTION, "isActiveController", "", "()Z", "start", "launchedUpdate", "Lexpo/modules/updates/db/entity/UpdateEntity;", "getLaunchedUpdate", "()Lexpo/modules/updates/db/entity/UpdateEntity;", "localAssetFiles", "", "Lexpo/modules/updates/db/entity/AssetEntity;", "getLocalAssetFiles", "()Ljava/util/Map;", "isUsingEmbeddedAssets", "reset", UpdatesConfiguration.UPDATES_CONFIGURATION_RUNTIME_VERSION_KEY, "getRuntimeVersion", UpdatesConfiguration.UPDATES_CONFIGURATION_UPDATE_URL_KEY, "Landroid/net/Uri;", "getUpdateUrl", "()Landroid/net/Uri;", "fetchUpdateWithConfiguration", "configuration", "Ljava/util/HashMap;", "", "Lkotlin/collections/HashMap;", "callback", "Lexpo/modules/updatesinterface/UpdatesInterface$UpdateCallback;", "isValidUpdatesConfiguration", "createUpdatesConfiguration", "setDevelopmentSelectionPolicy", "launchUpdate", "update", "fileDownloader", "Lexpo/modules/updates/loader/FileDownloader;", "getDatabase", "Lexpo/modules/updates/db/UpdatesDatabase;", "runReaper", "getConstantsForModule", "Lexpo/modules/updates/IUpdatesController$UpdatesModuleConstants;", "relaunchReactApplicationForModule", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "checkForUpdate", "Lexpo/modules/updates/IUpdatesController$CheckForUpdateResult;", "fetchUpdate", "Lexpo/modules/updates/IUpdatesController$FetchUpdateResult;", "getExtraParams", "Landroid/os/Bundle;", "setExtraParam", SDKConstants.PARAM_KEY, "value", "(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "setUpdateURLAndRequestHeadersOverride", "configOverride", "Lexpo/modules/updates/UpdatesConfigurationOverride;", "NotAvailableInDevClientException", "Companion", "expo-updates_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
/* loaded from: classes5.dex */
public final class UpdatesDevLauncherController implements IUpdatesController, UpdatesInterface {
    private static final String TAG = "UpdatesDevLauncherController";
    private final Context context;
    private final DatabaseHolder databaseHolder;
    private SelectionPolicy defaultSelectionPolicy;
    private final NoOpUpdatesEventManager eventManager;
    private final boolean isActiveController;
    private Launcher launcher;
    private final UpdatesLogger logger;
    private SelectionPolicy mSelectionPolicy;
    private UpdatesConfiguration previousUpdatesConfiguration;
    private UpdatesConfiguration updatesConfiguration;
    private final File updatesDirectory;
    private final Exception updatesDirectoryException;
    private WeakReference<UpdatesInterfaceCallbacks> updatesInterfaceCallbacks;

    /* compiled from: UpdatesDevLauncherController.kt */
    @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[UpdatesConfigurationValidationResult.values().length];
            try {
                iArr[UpdatesConfigurationValidationResult.VALID.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[UpdatesConfigurationValidationResult.INVALID_NOT_ENABLED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[UpdatesConfigurationValidationResult.INVALID_MISSING_URL.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[UpdatesConfigurationValidationResult.INVALID_MISSING_RUNTIME_VERSION.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    @Override // expo.modules.updates.IUpdatesController
    public void onDidCreateDevSupportManager(DevSupportManager devSupportManager) {
        Intrinsics.checkNotNullParameter(devSupportManager, "devSupportManager");
    }

    @Override // expo.modules.updates.IUpdatesController
    public void onDidCreateReactInstance(ReactContext reactContext) {
        Intrinsics.checkNotNullParameter(reactContext, "reactContext");
    }

    @Override // expo.modules.updates.IUpdatesController
    public void onEventListenerStartObserving() {
    }

    @Override // expo.modules.updates.IUpdatesController
    public void onReactInstanceException(Exception exception) {
        Intrinsics.checkNotNullParameter(exception, "exception");
    }

    @Override // expo.modules.updates.IUpdatesController
    public void start() {
    }

    public UpdatesDevLauncherController(Context context, UpdatesConfiguration updatesConfiguration, File file, Exception exc) {
        String runtimeVersion;
        Intrinsics.checkNotNullParameter(context, "context");
        this.context = context;
        this.updatesDirectory = file;
        this.updatesDirectoryException = exc;
        this.eventManager = new NoOpUpdatesEventManager();
        File filesDir = context.getFilesDir();
        Intrinsics.checkNotNullExpressionValue(filesDir, "getFilesDir(...)");
        this.logger = new UpdatesLogger(filesDir);
        this.updatesConfiguration = updatesConfiguration;
        this.databaseHolder = new DatabaseHolder(UpdatesDatabase.INSTANCE.getInstance(context, Dispatchers.getIO()));
        this.defaultSelectionPolicy = SelectionPolicyFactory.createFilterAwarePolicy((updatesConfiguration == null || (runtimeVersion = updatesConfiguration.getRuntimeVersion()) == null) ? "1" : runtimeVersion);
    }

    @Override // expo.modules.updates.IUpdatesController
    public File getUpdatesDirectory() {
        return this.updatesDirectory;
    }

    @Override // expo.modules.updates.IUpdatesController
    public NoOpUpdatesEventManager getEventManager() {
        return this.eventManager;
    }

    @Override // expo.modules.updatesinterface.UpdatesInterface
    public WeakReference<UpdatesInterfaceCallbacks> getUpdatesInterfaceCallbacks() {
        return this.updatesInterfaceCallbacks;
    }

    @Override // expo.modules.updatesinterface.UpdatesInterface
    public void setUpdatesInterfaceCallbacks(WeakReference<UpdatesInterfaceCallbacks> weakReference) {
        this.updatesInterfaceCallbacks = weakReference;
    }

    private final SelectionPolicy getSelectionPolicy() {
        SelectionPolicy selectionPolicy = this.mSelectionPolicy;
        return selectionPolicy == null ? this.defaultSelectionPolicy : selectionPolicy;
    }

    private final void setNextSelectionPolicy(SelectionPolicy selectionPolicy) {
        this.mSelectionPolicy = selectionPolicy;
    }

    private final void resetSelectionPolicyToDefault() {
        this.mSelectionPolicy = null;
    }

    private final void setDefaultSelectionPolicy(SelectionPolicy selectionPolicy) {
        this.defaultSelectionPolicy = selectionPolicy;
    }

    @Override // expo.modules.updates.IUpdatesController
    public synchronized String getLaunchAssetFile() {
        UpdatesLogger.warn$default(this.logger, "launchAssetFile should not be called from expo-dev-client build, except for Detox testing", null, 2, null);
        return null;
    }

    @Override // expo.modules.updates.IUpdatesController
    public String getBundleAssetName() {
        throw new Exception("IUpdatesController.bundleAssetName should not be called in dev client");
    }

    @Override // expo.modules.updates.IUpdatesController
    /* renamed from: isActiveController, reason: from getter */
    public boolean getIsActiveController() {
        return this.isActiveController;
    }

    public final UpdateEntity getLaunchedUpdate() {
        Launcher launcher = this.launcher;
        if (launcher != null) {
            return launcher.getLaunchedUpdate();
        }
        return null;
    }

    private final Map<AssetEntity, String> getLocalAssetFiles() {
        Launcher launcher = this.launcher;
        if (launcher != null) {
            return launcher.mo1948getLocalAssetFiles();
        }
        return null;
    }

    private final boolean isUsingEmbeddedAssets() {
        Launcher launcher = this.launcher;
        if (launcher != null) {
            return launcher.getIsUsingEmbeddedAssets();
        }
        return false;
    }

    @Override // expo.modules.updatesinterface.UpdatesInterface
    public void reset() {
        this.launcher = null;
    }

    @Override // expo.modules.updatesinterface.UpdatesInterface
    public String getRuntimeVersion() {
        UpdatesConfiguration updatesConfiguration = this.updatesConfiguration;
        if (updatesConfiguration != null) {
            return updatesConfiguration.getRuntimeVersion();
        }
        return null;
    }

    @Override // expo.modules.updatesinterface.UpdatesInterface
    public Uri getUpdateUrl() {
        UpdatesConfiguration updatesConfiguration = this.updatesConfiguration;
        if (updatesConfiguration != null) {
            return updatesConfiguration.getUpdateUrl();
        }
        return null;
    }

    @Override // expo.modules.updatesinterface.UpdatesInterface
    public void fetchUpdateWithConfiguration(HashMap<String, Object> configuration, final UpdatesInterface.UpdateCallback callback) {
        Intrinsics.checkNotNullParameter(configuration, "configuration");
        Intrinsics.checkNotNullParameter(callback, "callback");
        try {
            UpdatesConfiguration createUpdatesConfiguration = createUpdatesConfiguration(configuration);
            if (getUpdatesDirectory() == null) {
                throw new IllegalStateException("Check failed.".toString());
            }
            this.previousUpdatesConfiguration = this.updatesConfiguration;
            this.updatesConfiguration = createUpdatesConfiguration;
            setDevelopmentSelectionPolicy();
            Context context = this.context;
            UpdatesConfiguration updatesConfiguration = this.updatesConfiguration;
            Intrinsics.checkNotNull(updatesConfiguration);
            final FileDownloader fileDownloader = new FileDownloader(context, updatesConfiguration, this.logger);
            Context context2 = this.context;
            UpdatesConfiguration updatesConfiguration2 = this.updatesConfiguration;
            Intrinsics.checkNotNull(updatesConfiguration2);
            new RemoteLoader(context2, updatesConfiguration2, this.logger, this.databaseHolder.getDatabase(), fileDownloader, getUpdatesDirectory(), null).start(new Loader.LoaderCallback() { // from class: expo.modules.updates.UpdatesDevLauncherController$fetchUpdateWithConfiguration$1
                @Override // expo.modules.updates.loader.Loader.LoaderCallback
                public void onFailure(Exception e) {
                    UpdatesConfiguration updatesConfiguration3;
                    Intrinsics.checkNotNullParameter(e, "e");
                    UpdatesDevLauncherController updatesDevLauncherController = UpdatesDevLauncherController.this;
                    updatesConfiguration3 = updatesDevLauncherController.previousUpdatesConfiguration;
                    updatesDevLauncherController.updatesConfiguration = updatesConfiguration3;
                    callback.onFailure(e);
                }

                @Override // expo.modules.updates.loader.Loader.LoaderCallback
                public void onSuccess(Loader.LoaderResult loaderResult) {
                    UpdatesConfiguration updatesConfiguration3;
                    Intrinsics.checkNotNullParameter(loaderResult, "loaderResult");
                    if (loaderResult.getUpdateEntity() == null) {
                        callback.onSuccess(null);
                        return;
                    }
                    UpdatesDevLauncherController updatesDevLauncherController = UpdatesDevLauncherController.this;
                    UpdateEntity updateEntity = loaderResult.getUpdateEntity();
                    updatesConfiguration3 = UpdatesDevLauncherController.this.updatesConfiguration;
                    Intrinsics.checkNotNull(updatesConfiguration3);
                    updatesDevLauncherController.launchUpdate(updateEntity, updatesConfiguration3, fileDownloader, callback);
                }

                @Override // expo.modules.updates.loader.Loader.LoaderCallback
                public void onAssetLoaded(AssetEntity asset, int successfulAssetCount, int failedAssetCount, int totalAssetCount) {
                    Intrinsics.checkNotNullParameter(asset, "asset");
                    callback.onProgress(successfulAssetCount, failedAssetCount, totalAssetCount);
                }

                @Override // expo.modules.updates.loader.Loader.LoaderCallback
                public Loader.OnUpdateResponseLoadedResult onUpdateResponseLoaded(UpdateResponse updateResponse) {
                    Update update;
                    Intrinsics.checkNotNullParameter(updateResponse, "updateResponse");
                    UpdateResponsePart.DirectiveUpdateResponsePart directiveUpdateResponsePart = updateResponse.getDirectiveUpdateResponsePart();
                    UpdateDirective updateDirective = directiveUpdateResponsePart != null ? directiveUpdateResponsePart.getUpdateDirective() : null;
                    if (updateDirective != null) {
                        if ((updateDirective instanceof UpdateDirective.RollBackToEmbeddedUpdateDirective) || (updateDirective instanceof UpdateDirective.NoUpdateAvailableUpdateDirective)) {
                            return new Loader.OnUpdateResponseLoadedResult(false);
                        }
                        throw new NoWhenBranchMatchedException();
                    }
                    UpdateResponsePart.ManifestUpdateResponsePart manifestUpdateResponsePart = updateResponse.getManifestUpdateResponsePart();
                    if (manifestUpdateResponsePart == null || (update = manifestUpdateResponsePart.getUpdate()) == null) {
                        return new Loader.OnUpdateResponseLoadedResult(false);
                    }
                    return new Loader.OnUpdateResponseLoadedResult(callback.onManifestLoaded(update.getManifest().getRawJson()));
                }
            });
        } catch (Exception e) {
            callback.onFailure(e);
        }
    }

    @Override // expo.modules.updatesinterface.UpdatesInterface
    public boolean isValidUpdatesConfiguration(HashMap<String, Object> configuration) {
        Intrinsics.checkNotNullParameter(configuration, "configuration");
        try {
            createUpdatesConfiguration(configuration);
            return true;
        } catch (Exception e) {
            this.logger.error("Invalid updates configuration", e, UpdatesErrorCode.InitializationError);
            return false;
        }
    }

    private final UpdatesConfiguration createUpdatesConfiguration(HashMap<String, Object> configuration) throws Exception {
        if (getUpdatesDirectory() == null) {
            Exception exc = this.updatesDirectoryException;
            Intrinsics.checkNotNull(exc);
            throw exc;
        }
        HashMap<String, Object> hashMap = configuration;
        int i = WhenMappings.$EnumSwitchMapping$0[UpdatesConfiguration.INSTANCE.getUpdatesConfigurationValidationResult(this.context, hashMap).ordinal()];
        if (i == 1) {
            return new UpdatesConfiguration(this.context, hashMap);
        }
        if (i == 2) {
            throw new Exception("Failed to load update: UpdatesConfiguration object is not enabled");
        }
        if (i == 3) {
            throw new Exception("Failed to load update: UpdatesConfiguration object must include a valid update URL");
        }
        if (i != 4) {
            throw new NoWhenBranchMatchedException();
        }
        throw new Exception("Failed to load update: UpdatesConfiguration object must include a valid runtime version");
    }

    private final void setDevelopmentSelectionPolicy() {
        resetSelectionPolicyToDefault();
        SelectionPolicy selectionPolicy = getSelectionPolicy();
        setDefaultSelectionPolicy(new SelectionPolicy(selectionPolicy.getLauncherSelectionPolicy(), selectionPolicy.getLoaderSelectionPolicy(), new ReaperSelectionPolicyDevelopmentClient(0, 1, null)));
        resetSelectionPolicyToDefault();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void launchUpdate(UpdateEntity update, UpdatesConfiguration configuration, FileDownloader fileDownloader, final UpdatesInterface.UpdateCallback callback) {
        SelectionPolicy selectionPolicy = getSelectionPolicy();
        setNextSelectionPolicy(new SelectionPolicy(new LauncherSelectionPolicySingleUpdate(update.getId()), selectionPolicy.getLoaderSelectionPolicy(), selectionPolicy.getReaperSelectionPolicy()));
        Context context = this.context;
        File updatesDirectory = getUpdatesDirectory();
        Intrinsics.checkNotNull(updatesDirectory);
        final DatabaseLauncher databaseLauncher = new DatabaseLauncher(context, configuration, updatesDirectory, fileDownloader, getSelectionPolicy(), this.logger, false, 64, null);
        databaseLauncher.launch(this.databaseHolder.getDatabase(), new Launcher.LauncherCallback() { // from class: expo.modules.updates.UpdatesDevLauncherController$launchUpdate$1
            @Override // expo.modules.updates.launcher.Launcher.LauncherCallback
            public void onFailure(Exception e) {
                UpdatesConfiguration updatesConfiguration;
                Intrinsics.checkNotNullParameter(e, "e");
                UpdatesDevLauncherController updatesDevLauncherController = UpdatesDevLauncherController.this;
                updatesConfiguration = updatesDevLauncherController.previousUpdatesConfiguration;
                updatesDevLauncherController.updatesConfiguration = updatesConfiguration;
                callback.onFailure(e);
            }

            @Override // expo.modules.updates.launcher.Launcher.LauncherCallback
            public void onSuccess() {
                UpdatesDevLauncherController.this.launcher = databaseLauncher;
                UpdatesInterface.UpdateCallback updateCallback = callback;
                final DatabaseLauncher databaseLauncher2 = databaseLauncher;
                updateCallback.onSuccess(new UpdatesInterface.Update() { // from class: expo.modules.updates.UpdatesDevLauncherController$launchUpdate$1$onSuccess$1
                    @Override // expo.modules.updatesinterface.UpdatesInterface.Update
                    public JSONObject getManifest() {
                        UpdateEntity launchedUpdate = DatabaseLauncher.this.getLaunchedUpdate();
                        Intrinsics.checkNotNull(launchedUpdate);
                        return launchedUpdate.getManifest();
                    }

                    @Override // expo.modules.updatesinterface.UpdatesInterface.Update
                    public String getLaunchAssetPath() {
                        String launchAssetFile = DatabaseLauncher.this.getLaunchAssetFile();
                        Intrinsics.checkNotNull(launchAssetFile);
                        return launchAssetFile;
                    }
                });
                UpdatesDevLauncherController.this.runReaper();
            }
        });
    }

    private final UpdatesDatabase getDatabase() {
        return this.databaseHolder.getDatabase();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void runReaper() {
        AsyncTask.execute(new Runnable() { // from class: expo.modules.updates.UpdatesDevLauncherController$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                UpdatesDevLauncherController.runReaper$lambda$1(UpdatesDevLauncherController.this);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void runReaper$lambda$1(UpdatesDevLauncherController updatesDevLauncherController) {
        UpdatesConfiguration updatesConfiguration = updatesDevLauncherController.updatesConfiguration;
        if (updatesConfiguration != null) {
            Reaper.reapUnusedUpdates(updatesConfiguration, updatesDevLauncherController.getDatabase(), updatesDevLauncherController.getUpdatesDirectory(), updatesDevLauncherController.getLaunchedUpdate(), updatesDevLauncherController.getSelectionPolicy());
        }
    }

    /* compiled from: UpdatesDevLauncherController.kt */
    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lexpo/modules/updates/UpdatesDevLauncherController$NotAvailableInDevClientException;", "Lexpo/modules/kotlin/exception/CodedException;", "message", "", "<init>", "(Ljava/lang/String;)V", "expo-updates_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class NotAvailableInDevClientException extends CodedException {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public NotAvailableInDevClientException(String message) {
            super(message, null, 2, null);
            Intrinsics.checkNotNullParameter(message, "message");
        }
    }

    @Override // expo.modules.updates.IUpdatesController
    public IUpdatesController.UpdatesModuleConstants getConstantsForModule() {
        String str;
        UpdatesConfiguration.CheckAutomaticallyConfiguration checkAutomaticallyConfiguration;
        Map<String, String> emptyMap;
        UpdateEntity launchedUpdate = getLaunchedUpdate();
        Exception exc = this.updatesDirectoryException;
        boolean isUsingEmbeddedAssets = isUsingEmbeddedAssets();
        UpdatesConfiguration updatesConfiguration = this.updatesConfiguration;
        if (updatesConfiguration == null || (str = updatesConfiguration.getRuntimeVersionRaw()) == null) {
            str = "1";
        }
        String str2 = str;
        UpdatesConfiguration updatesConfiguration2 = this.updatesConfiguration;
        if (updatesConfiguration2 == null || (checkAutomaticallyConfiguration = updatesConfiguration2.getCheckOnLaunch()) == null) {
            checkAutomaticallyConfiguration = UpdatesConfiguration.CheckAutomaticallyConfiguration.ALWAYS;
        }
        UpdatesConfiguration.CheckAutomaticallyConfiguration checkAutomaticallyConfiguration2 = checkAutomaticallyConfiguration;
        UpdatesConfiguration updatesConfiguration3 = this.updatesConfiguration;
        if (updatesConfiguration3 == null || (emptyMap = updatesConfiguration3.getRequestHeaders()) == null) {
            emptyMap = MapsKt.emptyMap();
        }
        return new IUpdatesController.UpdatesModuleConstants(launchedUpdate, null, null, exc, true, isUsingEmbeddedAssets, str2, checkAutomaticallyConfiguration2, emptyMap, getLocalAssetFiles(), true, new UpdatesStateContext(false, false, false, false, false, false, 0, null, null, null, null, null, null, 8191, null), null);
    }

    @Override // expo.modules.updates.IUpdatesController
    public Object checkForUpdate(Continuation<? super IUpdatesController.CheckForUpdateResult> continuation) {
        throw new NotAvailableInDevClientException("Updates.checkForUpdateAsync() is not supported in development builds.");
    }

    @Override // expo.modules.updates.IUpdatesController
    public Object fetchUpdate(Continuation<? super IUpdatesController.FetchUpdateResult> continuation) {
        throw new NotAvailableInDevClientException("Updates.fetchUpdateAsync() is not supported in development builds.");
    }

    @Override // expo.modules.updates.IUpdatesController
    public Object getExtraParams(Continuation<? super Bundle> continuation) {
        throw new NotAvailableInDevClientException("Updates.getExtraParamsAsync() is not supported in development builds.");
    }

    @Override // expo.modules.updates.IUpdatesController
    public Object setExtraParam(String str, String str2, Continuation<? super Unit> continuation) {
        throw new NotAvailableInDevClientException("Updates.setExtraParamAsync() is not supported in development builds.");
    }

    @Override // expo.modules.updates.IUpdatesController
    public void setUpdateURLAndRequestHeadersOverride(UpdatesConfigurationOverride configOverride) {
        throw new NotAvailableInDevClientException("Updates.setUpdateURLAndRequestHeadersOverride() is not supported in development builds.");
    }

    @Override // expo.modules.updates.IUpdatesController
    public Object relaunchReactApplicationForModule(Continuation<? super Unit> continuation) {
        UpdatesInterfaceCallbacks updatesInterfaceCallbacks;
        CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(IntrinsicsKt.intercepted(continuation), 1);
        cancellableContinuationImpl.initCancellability();
        CancellableContinuationImpl cancellableContinuationImpl2 = cancellableContinuationImpl;
        WeakReference<UpdatesInterfaceCallbacks> updatesInterfaceCallbacks2 = getUpdatesInterfaceCallbacks();
        if (updatesInterfaceCallbacks2 != null && (updatesInterfaceCallbacks = updatesInterfaceCallbacks2.get()) != null) {
            updatesInterfaceCallbacks.onRequestRelaunch();
        }
        Result.Companion companion = Result.INSTANCE;
        cancellableContinuationImpl2.resumeWith(Result.m2098constructorimpl(Unit.INSTANCE));
        Object result = cancellableContinuationImpl.getResult();
        if (result == IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
            DebugProbesKt.probeCoroutineSuspended(continuation);
        }
        return result == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? result : Unit.INSTANCE;
    }
}
