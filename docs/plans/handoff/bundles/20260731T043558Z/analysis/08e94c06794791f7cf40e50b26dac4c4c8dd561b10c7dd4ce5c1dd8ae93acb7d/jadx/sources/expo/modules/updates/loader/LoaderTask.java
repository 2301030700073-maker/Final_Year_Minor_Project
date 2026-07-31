package expo.modules.updates.loader;

import android.content.Context;
import android.os.HandlerThread;
import com.facebook.common.util.UriUtil;
import expo.modules.updates.UpdatesConfiguration;
import expo.modules.updates.db.DatabaseHolder;
import expo.modules.updates.db.Reaper;
import expo.modules.updates.db.UpdatesDatabase;
import expo.modules.updates.db.entity.AssetEntity;
import expo.modules.updates.db.entity.UpdateEntity;
import expo.modules.updates.launcher.DatabaseLauncher;
import expo.modules.updates.launcher.Launcher;
import expo.modules.updates.loader.Loader;
import expo.modules.updates.logging.UpdatesErrorCode;
import expo.modules.updates.logging.UpdatesLogger;
import expo.modules.updates.manifest.EmbeddedManifestUtils;
import expo.modules.updates.manifest.EmbeddedUpdate;
import expo.modules.updates.manifest.ManifestMetadata;
import expo.modules.updates.manifest.Update;
import expo.modules.updates.selectionpolicy.SelectionPolicy;
import io.sentry.ProfilingTraceData;
import io.sentry.SentryEvent;
import io.sentry.clientreport.DiscardedEvent;
import java.io.File;
import java.util.Date;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugProbesKt;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CancellableContinuation;
import kotlinx.coroutines.CancellableContinuationImpl;
import org.json.JSONObject;

/* compiled from: LoaderTask.kt */
@Metadata(d1 = {"\u0000f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\f\u0018\u0000 32\u00020\u0001:\u0005/0123BG\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\u0006\u0010\f\u001a\u00020\r\u0012\u0006\u0010\u000e\u001a\u00020\u000f\u0012\u0006\u0010\u0010\u001a\u00020\u0011¢\u0006\u0004\b\u0012\u0010\u0013J\u000e\u0010!\u001a\u00020\"H\u0086@¢\u0006\u0002\u0010#J\u000e\u0010$\u001a\u00020\"H\u0082@¢\u0006\u0002\u0010#J\u0018\u0010%\u001a\u00020\"2\u000e\u0010&\u001a\n\u0018\u00010'j\u0004\u0018\u0001`(H\u0002J\b\u0010)\u001a\u00020\"H\u0002J\b\u0010*\u001a\u00020\"H\u0002J\b\u0010+\u001a\u00020\"H\u0002J\u000e\u0010,\u001a\u00020\"H\u0082@¢\u0006\u0002\u0010#J\u000e\u0010-\u001a\u00020\"H\u0082@¢\u0006\u0002\u0010#J\b\u0010.\u001a\u00020\"H\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\rX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u0004¢\u0006\u0002\n\u0000R\u001e\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u0014\u001a\u00020\u0015@BX\u0086\u000e¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u0017R\u000e\u0010\u0018\u001a\u00020\u0015X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0019\u001a\u00020\u0015X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u001a\u001a\u00020\u0015X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u001b\u001a\u00020\u0015X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u001c\u001a\u00020\u001dX\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u001e\u001a\u0004\u0018\u00010\u001fX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010 \u001a\u0004\u0018\u00010\u001fX\u0082\u000e¢\u0006\u0002\n\u0000¨\u00064"}, d2 = {"Lexpo/modules/updates/loader/LoaderTask;", "", "context", "Landroid/content/Context;", "configuration", "Lexpo/modules/updates/UpdatesConfiguration;", "databaseHolder", "Lexpo/modules/updates/db/DatabaseHolder;", "directory", "Ljava/io/File;", "fileDownloader", "Lexpo/modules/updates/loader/FileDownloader;", "selectionPolicy", "Lexpo/modules/updates/selectionpolicy/SelectionPolicy;", SentryEvent.JsonKeys.LOGGER, "Lexpo/modules/updates/logging/UpdatesLogger;", "callback", "Lexpo/modules/updates/loader/LoaderTask$LoaderTaskCallback;", "<init>", "(Landroid/content/Context;Lexpo/modules/updates/UpdatesConfiguration;Lexpo/modules/updates/db/DatabaseHolder;Ljava/io/File;Lexpo/modules/updates/loader/FileDownloader;Lexpo/modules/updates/selectionpolicy/SelectionPolicy;Lexpo/modules/updates/logging/UpdatesLogger;Lexpo/modules/updates/loader/LoaderTask$LoaderTaskCallback;)V", "value", "", "isRunning", "()Z", "isReadyToLaunch", "timeoutFinished", "hasLaunched", "isUpToDate", "handlerThread", "Landroid/os/HandlerThread;", "candidateLauncher", "Lexpo/modules/updates/launcher/Launcher;", "finalizedLauncher", "start", "", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "launchRemoteUpdate", "finish", "e", "Ljava/lang/Exception;", "Lkotlin/Exception;", "maybeFinish", "stopTimer", ProfilingTraceData.TRUNCATION_REASON_TIMEOUT, "launchFallbackUpdateFromDisk", "launchRemoteUpdateInBackground", "runReaper", "RemoteUpdateStatus", "RemoteCheckResultNotAvailableReason", "RemoteCheckResult", "LoaderTaskCallback", "Companion", "expo-updates_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
/* loaded from: classes5.dex */
public final class LoaderTask {
    private static final String TAG = "LoaderTask";
    private final LoaderTaskCallback callback;
    private Launcher candidateLauncher;
    private final UpdatesConfiguration configuration;
    private final Context context;
    private final DatabaseHolder databaseHolder;
    private final File directory;
    private final FileDownloader fileDownloader;
    private Launcher finalizedLauncher;
    private final HandlerThread handlerThread;
    private boolean hasLaunched;
    private boolean isReadyToLaunch;
    private boolean isRunning;
    private boolean isUpToDate;
    private final UpdatesLogger logger;
    private final SelectionPolicy selectionPolicy;
    private boolean timeoutFinished;

    /* compiled from: LoaderTask.kt */
    @Metadata(d1 = {"\u0000V\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\bf\u0018\u00002\u00020\u0001J\u0014\u0010\u0002\u001a\u00020\u00032\n\u0010\u0004\u001a\u00060\u0005j\u0002`\u0006H&J\u0018\u0010\u0007\u001a\u00020\u00032\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH&J\b\u0010\f\u001a\u00020\u0003H&J\u0010\u0010\r\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\u000fH&J\u0010\u0010\u0010\u001a\u00020\u00032\u0006\u0010\u000e\u001a\u00020\u0011H&J\b\u0010\u0012\u001a\u00020\u0003H\u0016J\u0010\u0010\u0013\u001a\u00020\u00032\u0006\u0010\u0014\u001a\u00020\u0015H\u0016J\b\u0010\u0016\u001a\u00020\u0003H\u0016J(\u0010\u0017\u001a\u00020\u00032\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u001b2\u0006\u0010\u001d\u001a\u00020\u001bH\u0016J*\u0010\u001e\u001a\u00020\u00032\u0006\u0010\u001f\u001a\u00020 2\b\u0010\u000e\u001a\u0004\u0018\u00010\u000f2\u000e\u0010!\u001a\n\u0018\u00010\u0005j\u0004\u0018\u0001`\u0006H&¨\u0006\""}, d2 = {"Lexpo/modules/updates/loader/LoaderTask$LoaderTaskCallback;", "", "onFailure", "", "e", "Ljava/lang/Exception;", "Lkotlin/Exception;", "onSuccess", "launcher", "Lexpo/modules/updates/launcher/Launcher;", "isUpToDate", "", "onFinishedAllLoading", "onCachedUpdateLoaded", "update", "Lexpo/modules/updates/db/entity/UpdateEntity;", "onRemoteUpdateManifestResponseUpdateLoaded", "Lexpo/modules/updates/manifest/Update;", "onRemoteCheckForUpdateStarted", "onRemoteCheckForUpdateFinished", "result", "Lexpo/modules/updates/loader/LoaderTask$RemoteCheckResult;", "onRemoteUpdateLoadStarted", "onRemoteUpdateAssetLoaded", UriUtil.LOCAL_ASSET_SCHEME, "Lexpo/modules/updates/db/entity/AssetEntity;", "successfulAssetCount", "", "failedAssetCount", "totalAssetCount", "onRemoteUpdateFinished", "status", "Lexpo/modules/updates/loader/LoaderTask$RemoteUpdateStatus;", SentryEvent.JsonKeys.EXCEPTION, "expo-updates_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public interface LoaderTaskCallback {

        /* compiled from: LoaderTask.kt */
        @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
        public static final class DefaultImpls {
            public static void onRemoteCheckForUpdateFinished(LoaderTaskCallback loaderTaskCallback, RemoteCheckResult result) {
                Intrinsics.checkNotNullParameter(result, "result");
            }

            public static void onRemoteCheckForUpdateStarted(LoaderTaskCallback loaderTaskCallback) {
            }

            public static void onRemoteUpdateAssetLoaded(LoaderTaskCallback loaderTaskCallback, AssetEntity asset, int i, int i2, int i3) {
                Intrinsics.checkNotNullParameter(asset, "asset");
            }

            public static void onRemoteUpdateLoadStarted(LoaderTaskCallback loaderTaskCallback) {
            }
        }

        boolean onCachedUpdateLoaded(UpdateEntity update);

        void onFailure(Exception e);

        void onFinishedAllLoading();

        void onRemoteCheckForUpdateFinished(RemoteCheckResult result);

        void onRemoteCheckForUpdateStarted();

        void onRemoteUpdateAssetLoaded(AssetEntity asset, int successfulAssetCount, int failedAssetCount, int totalAssetCount);

        void onRemoteUpdateFinished(RemoteUpdateStatus status, UpdateEntity update, Exception exception);

        void onRemoteUpdateLoadStarted();

        void onRemoteUpdateManifestResponseUpdateLoaded(Update update);

        void onSuccess(Launcher launcher, boolean isUpToDate);
    }

    public LoaderTask(Context context, UpdatesConfiguration configuration, DatabaseHolder databaseHolder, File directory, FileDownloader fileDownloader, SelectionPolicy selectionPolicy, UpdatesLogger logger, LoaderTaskCallback callback) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(configuration, "configuration");
        Intrinsics.checkNotNullParameter(databaseHolder, "databaseHolder");
        Intrinsics.checkNotNullParameter(directory, "directory");
        Intrinsics.checkNotNullParameter(fileDownloader, "fileDownloader");
        Intrinsics.checkNotNullParameter(selectionPolicy, "selectionPolicy");
        Intrinsics.checkNotNullParameter(logger, "logger");
        Intrinsics.checkNotNullParameter(callback, "callback");
        this.context = context;
        this.configuration = configuration;
        this.databaseHolder = databaseHolder;
        this.directory = directory;
        this.fileDownloader = fileDownloader;
        this.selectionPolicy = selectionPolicy;
        this.logger = logger;
        this.callback = callback;
        this.handlerThread = new HandlerThread("expo-updates-timer");
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* compiled from: LoaderTask.kt */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0006\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006¨\u0006\u0007"}, d2 = {"Lexpo/modules/updates/loader/LoaderTask$RemoteUpdateStatus;", "", "<init>", "(Ljava/lang/String;I)V", "ERROR", "NO_UPDATE_AVAILABLE", "UPDATE_AVAILABLE", "expo-updates_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class RemoteUpdateStatus {
        private static final /* synthetic */ EnumEntries $ENTRIES;
        private static final /* synthetic */ RemoteUpdateStatus[] $VALUES;
        public static final RemoteUpdateStatus ERROR = new RemoteUpdateStatus("ERROR", 0);
        public static final RemoteUpdateStatus NO_UPDATE_AVAILABLE = new RemoteUpdateStatus("NO_UPDATE_AVAILABLE", 1);
        public static final RemoteUpdateStatus UPDATE_AVAILABLE = new RemoteUpdateStatus("UPDATE_AVAILABLE", 2);

        private static final /* synthetic */ RemoteUpdateStatus[] $values() {
            return new RemoteUpdateStatus[]{ERROR, NO_UPDATE_AVAILABLE, UPDATE_AVAILABLE};
        }

        public static EnumEntries<RemoteUpdateStatus> getEntries() {
            return $ENTRIES;
        }

        private RemoteUpdateStatus(String str, int i) {
        }

        static {
            RemoteUpdateStatus[] $values = $values();
            $VALUES = $values;
            $ENTRIES = EnumEntriesKt.enumEntries($values);
        }

        public static RemoteUpdateStatus valueOf(String str) {
            return (RemoteUpdateStatus) Enum.valueOf(RemoteUpdateStatus.class, str);
        }

        public static RemoteUpdateStatus[] values() {
            return (RemoteUpdateStatus[]) $VALUES.clone();
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* compiled from: LoaderTask.kt */
    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\b\n\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0011\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\f¨\u0006\r"}, d2 = {"Lexpo/modules/updates/loader/LoaderTask$RemoteCheckResultNotAvailableReason;", "", "value", "", "<init>", "(Ljava/lang/String;ILjava/lang/String;)V", "getValue", "()Ljava/lang/String;", "NO_UPDATE_AVAILABLE_ON_SERVER", "UPDATE_REJECTED_BY_SELECTION_POLICY", "UPDATE_PREVIOUSLY_FAILED", "ROLLBACK_REJECTED_BY_SELECTION_POLICY", "ROLLBACK_NO_EMBEDDED", "expo-updates_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class RemoteCheckResultNotAvailableReason {
        private static final /* synthetic */ EnumEntries $ENTRIES;
        private static final /* synthetic */ RemoteCheckResultNotAvailableReason[] $VALUES;
        private final String value;
        public static final RemoteCheckResultNotAvailableReason NO_UPDATE_AVAILABLE_ON_SERVER = new RemoteCheckResultNotAvailableReason("NO_UPDATE_AVAILABLE_ON_SERVER", 0, "noUpdateAvailableOnServer");
        public static final RemoteCheckResultNotAvailableReason UPDATE_REJECTED_BY_SELECTION_POLICY = new RemoteCheckResultNotAvailableReason("UPDATE_REJECTED_BY_SELECTION_POLICY", 1, "updateRejectedBySelectionPolicy");
        public static final RemoteCheckResultNotAvailableReason UPDATE_PREVIOUSLY_FAILED = new RemoteCheckResultNotAvailableReason("UPDATE_PREVIOUSLY_FAILED", 2, "updatePreviouslyFailed");
        public static final RemoteCheckResultNotAvailableReason ROLLBACK_REJECTED_BY_SELECTION_POLICY = new RemoteCheckResultNotAvailableReason("ROLLBACK_REJECTED_BY_SELECTION_POLICY", 3, "rollbackRejectedBySelectionPolicy");
        public static final RemoteCheckResultNotAvailableReason ROLLBACK_NO_EMBEDDED = new RemoteCheckResultNotAvailableReason("ROLLBACK_NO_EMBEDDED", 4, "rollbackNoEmbeddedConfiguration");

        private static final /* synthetic */ RemoteCheckResultNotAvailableReason[] $values() {
            return new RemoteCheckResultNotAvailableReason[]{NO_UPDATE_AVAILABLE_ON_SERVER, UPDATE_REJECTED_BY_SELECTION_POLICY, UPDATE_PREVIOUSLY_FAILED, ROLLBACK_REJECTED_BY_SELECTION_POLICY, ROLLBACK_NO_EMBEDDED};
        }

        public static EnumEntries<RemoteCheckResultNotAvailableReason> getEntries() {
            return $ENTRIES;
        }

        private RemoteCheckResultNotAvailableReason(String str, int i, String str2) {
            this.value = str2;
        }

        public final String getValue() {
            return this.value;
        }

        static {
            RemoteCheckResultNotAvailableReason[] $values = $values();
            $VALUES = $values;
            $ENTRIES = EnumEntriesKt.enumEntries($values);
        }

        public static RemoteCheckResultNotAvailableReason valueOf(String str) {
            return (RemoteCheckResultNotAvailableReason) Enum.valueOf(RemoteCheckResultNotAvailableReason.class, str);
        }

        public static RemoteCheckResultNotAvailableReason[] values() {
            return (RemoteCheckResultNotAvailableReason[]) $VALUES.clone();
        }
    }

    /* compiled from: LoaderTask.kt */
    @Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b6\u0018\u00002\u00020\u0001:\u0004\u0006\u0007\b\tB\u0011\b\u0004\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000\u0082\u0001\u0003\n\u000b\f¨\u0006\r"}, d2 = {"Lexpo/modules/updates/loader/LoaderTask$RemoteCheckResult;", "", "status", "Lexpo/modules/updates/loader/LoaderTask$RemoteCheckResult$Status;", "<init>", "(Lexpo/modules/updates/loader/LoaderTask$RemoteCheckResult$Status;)V", "Status", "NoUpdateAvailable", "UpdateAvailable", "RollBackToEmbedded", "Lexpo/modules/updates/loader/LoaderTask$RemoteCheckResult$NoUpdateAvailable;", "Lexpo/modules/updates/loader/LoaderTask$RemoteCheckResult$RollBackToEmbedded;", "Lexpo/modules/updates/loader/LoaderTask$RemoteCheckResult$UpdateAvailable;", "expo-updates_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static abstract class RemoteCheckResult {
        private final Status status;

        public /* synthetic */ RemoteCheckResult(Status status, DefaultConstructorMarker defaultConstructorMarker) {
            this(status);
        }

        /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
        /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
        /* compiled from: LoaderTask.kt */
        @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0006\b\u0082\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006¨\u0006\u0007"}, d2 = {"Lexpo/modules/updates/loader/LoaderTask$RemoteCheckResult$Status;", "", "<init>", "(Ljava/lang/String;I)V", "NO_UPDATE_AVAILABLE", "UPDATE_AVAILABLE", "ROLL_BACK_TO_EMBEDDED", "expo-updates_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
        private static final class Status {
            private static final /* synthetic */ EnumEntries $ENTRIES;
            private static final /* synthetic */ Status[] $VALUES;
            public static final Status NO_UPDATE_AVAILABLE = new Status("NO_UPDATE_AVAILABLE", 0);
            public static final Status UPDATE_AVAILABLE = new Status("UPDATE_AVAILABLE", 1);
            public static final Status ROLL_BACK_TO_EMBEDDED = new Status("ROLL_BACK_TO_EMBEDDED", 2);

            private static final /* synthetic */ Status[] $values() {
                return new Status[]{NO_UPDATE_AVAILABLE, UPDATE_AVAILABLE, ROLL_BACK_TO_EMBEDDED};
            }

            public static EnumEntries<Status> getEntries() {
                return $ENTRIES;
            }

            private Status(String str, int i) {
            }

            static {
                Status[] $values = $values();
                $VALUES = $values;
                $ENTRIES = EnumEntriesKt.enumEntries($values);
            }

            public static Status valueOf(String str) {
                return (Status) Enum.valueOf(Status.class, str);
            }

            public static Status[] values() {
                return (Status[]) $VALUES.clone();
            }
        }

        private RemoteCheckResult(Status status) {
            this.status = status;
        }

        /* compiled from: LoaderTask.kt */
        @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lexpo/modules/updates/loader/LoaderTask$RemoteCheckResult$NoUpdateAvailable;", "Lexpo/modules/updates/loader/LoaderTask$RemoteCheckResult;", DiscardedEvent.JsonKeys.REASON, "Lexpo/modules/updates/loader/LoaderTask$RemoteCheckResultNotAvailableReason;", "<init>", "(Lexpo/modules/updates/loader/LoaderTask$RemoteCheckResultNotAvailableReason;)V", "getReason", "()Lexpo/modules/updates/loader/LoaderTask$RemoteCheckResultNotAvailableReason;", "expo-updates_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
        public static final class NoUpdateAvailable extends RemoteCheckResult {
            private final RemoteCheckResultNotAvailableReason reason;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public NoUpdateAvailable(RemoteCheckResultNotAvailableReason reason) {
                super(Status.NO_UPDATE_AVAILABLE, null);
                Intrinsics.checkNotNullParameter(reason, "reason");
                this.reason = reason;
            }

            public final RemoteCheckResultNotAvailableReason getReason() {
                return this.reason;
            }
        }

        /* compiled from: LoaderTask.kt */
        @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lexpo/modules/updates/loader/LoaderTask$RemoteCheckResult$UpdateAvailable;", "Lexpo/modules/updates/loader/LoaderTask$RemoteCheckResult;", "manifest", "Lorg/json/JSONObject;", "<init>", "(Lorg/json/JSONObject;)V", "getManifest", "()Lorg/json/JSONObject;", "expo-updates_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
        public static final class UpdateAvailable extends RemoteCheckResult {
            private final JSONObject manifest;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public UpdateAvailable(JSONObject manifest) {
                super(Status.UPDATE_AVAILABLE, null);
                Intrinsics.checkNotNullParameter(manifest, "manifest");
                this.manifest = manifest;
            }

            public final JSONObject getManifest() {
                return this.manifest;
            }
        }

        /* compiled from: LoaderTask.kt */
        @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lexpo/modules/updates/loader/LoaderTask$RemoteCheckResult$RollBackToEmbedded;", "Lexpo/modules/updates/loader/LoaderTask$RemoteCheckResult;", "commitTime", "Ljava/util/Date;", "<init>", "(Ljava/util/Date;)V", "getCommitTime", "()Ljava/util/Date;", "expo-updates_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
        public static final class RollBackToEmbedded extends RemoteCheckResult {
            private final Date commitTime;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public RollBackToEmbedded(Date commitTime) {
                super(Status.ROLL_BACK_TO_EMBEDDED, null);
                Intrinsics.checkNotNullParameter(commitTime, "commitTime");
                this.commitTime = commitTime;
            }

            public final Date getCommitTime() {
                return this.commitTime;
            }
        }
    }

    /* renamed from: isRunning, reason: from getter */
    public final boolean getIsRunning() {
        return this.isRunning;
    }

    /* JADX WARN: Can't wrap try/catch for region: R(5:(1:(1:(5:12|13|14|15|16)(2:18|19))(1:20))(1:32)|21|22|15|16) */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0057, code lost:
    
        r13 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0058, code lost:
    
        r8 = r5;
     */
    /* JADX WARN: Removed duplicated region for block: B:27:0x010d  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0118  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x00bc A[Catch: Exception -> 0x0065, TryCatch #3 {Exception -> 0x0065, blocks: (B:35:0x0061, B:36:0x00b1, B:38:0x00bc, B:40:0x00d0, B:43:0x00e3, B:46:0x00eb, B:48:0x00ee, B:51:0x00fb, B:54:0x0107, B:55:0x0108, B:45:0x00e4), top: B:34:0x0061, inners: #0 }] */
    /* JADX WARN: Removed duplicated region for block: B:44:0x00e4 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:57:0x0068  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0028  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object start(kotlin.coroutines.Continuation<? super kotlin.Unit> r13) {
        /*
            Method dump skipped, instructions count: 309
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: expo.modules.updates.loader.LoaderTask.start(kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:13:0x0049 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0039  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0025  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object launchRemoteUpdate(kotlin.coroutines.Continuation<? super kotlin.Unit> r6) {
        /*
            r5 = this;
            boolean r0 = r6 instanceof expo.modules.updates.loader.LoaderTask$launchRemoteUpdate$1
            if (r0 == 0) goto L14
            r0 = r6
            expo.modules.updates.loader.LoaderTask$launchRemoteUpdate$1 r0 = (expo.modules.updates.loader.LoaderTask$launchRemoteUpdate$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r1 = r1 & r2
            if (r1 == 0) goto L14
            int r6 = r0.label
            int r6 = r6 - r2
            r0.label = r6
            goto L19
        L14:
            expo.modules.updates.loader.LoaderTask$launchRemoteUpdate$1 r0 = new expo.modules.updates.loader.LoaderTask$launchRemoteUpdate$1
            r0.<init>(r5, r6)
        L19:
            java.lang.Object r6 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.label
            r3 = 0
            r4 = 1
            if (r2 == 0) goto L39
            if (r2 != r4) goto L31
            java.lang.Object r0 = r0.L$0
            expo.modules.updates.loader.LoaderTask r0 = (expo.modules.updates.loader.LoaderTask) r0
            kotlin.ResultKt.throwOnFailure(r6)     // Catch: java.lang.Exception -> L2f
            goto L48
        L2f:
            r6 = move-exception
            goto L62
        L31:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r0)
            throw r6
        L39:
            kotlin.ResultKt.throwOnFailure(r6)
            r0.L$0 = r5     // Catch: java.lang.Exception -> L60
            r0.label = r4     // Catch: java.lang.Exception -> L60
            java.lang.Object r6 = r5.launchRemoteUpdateInBackground(r0)     // Catch: java.lang.Exception -> L60
            if (r6 != r1) goto L47
            return r1
        L47:
            r0 = r5
        L48:
            monitor-enter(r0)     // Catch: java.lang.Exception -> L2f
            r0.isReadyToLaunch = r4     // Catch: java.lang.Throwable -> L5d
            kotlin.Unit r6 = kotlin.Unit.INSTANCE     // Catch: java.lang.Throwable -> L5d
            monitor-exit(r0)     // Catch: java.lang.Exception -> L2f
            r6 = 0
            r0.finish(r6)     // Catch: java.lang.Exception -> L2f
            r0.isRunning = r3     // Catch: java.lang.Exception -> L2f
            r0.runReaper()     // Catch: java.lang.Exception -> L2f
            expo.modules.updates.loader.LoaderTask$LoaderTaskCallback r6 = r0.callback     // Catch: java.lang.Exception -> L2f
            r6.onFinishedAllLoading()     // Catch: java.lang.Exception -> L2f
            goto L6f
        L5d:
            r6 = move-exception
            monitor-exit(r0)     // Catch: java.lang.Exception -> L2f
            throw r6     // Catch: java.lang.Exception -> L2f
        L60:
            r6 = move-exception
            r0 = r5
        L62:
            r0.finish(r6)
            r0.isRunning = r3
            r0.runReaper()
            expo.modules.updates.loader.LoaderTask$LoaderTaskCallback r6 = r0.callback
            r6.onFinishedAllLoading()
        L6f:
            kotlin.Unit r6 = kotlin.Unit.INSTANCE
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: expo.modules.updates.loader.LoaderTask.launchRemoteUpdate(kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x003f A[Catch: all -> 0x004f, TryCatch #0 {, blocks: (B:3:0x0001, B:9:0x0008, B:12:0x0014, B:15:0x001e, B:16:0x003b, B:18:0x003f, B:20:0x0044, B:24:0x002b, B:26:0x002f, B:27:0x0038), top: B:2:0x0001 }] */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0044 A[Catch: all -> 0x004f, TRY_LEAVE, TryCatch #0 {, blocks: (B:3:0x0001, B:9:0x0008, B:12:0x0014, B:15:0x001e, B:16:0x003b, B:18:0x003f, B:20:0x0044, B:24:0x002b, B:26:0x002f, B:27:0x0038), top: B:2:0x0001 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final synchronized void finish(java.lang.Exception r4) {
        /*
            r3 = this;
            monitor-enter(r3)
            boolean r0 = r3.hasLaunched     // Catch: java.lang.Throwable -> L4f
            if (r0 == 0) goto L7
            monitor-exit(r3)
            return
        L7:
            r0 = 1
            r3.hasLaunched = r0     // Catch: java.lang.Throwable -> L4f
            expo.modules.updates.launcher.Launcher r0 = r3.candidateLauncher     // Catch: java.lang.Throwable -> L4f
            r3.finalizedLauncher = r0     // Catch: java.lang.Throwable -> L4f
            boolean r1 = r3.isReadyToLaunch     // Catch: java.lang.Throwable -> L4f
            if (r1 == 0) goto L2b
            if (r0 == 0) goto L2b
            kotlin.jvm.internal.Intrinsics.checkNotNull(r0)     // Catch: java.lang.Throwable -> L4f
            expo.modules.updates.db.entity.UpdateEntity r0 = r0.getLaunchedUpdate()     // Catch: java.lang.Throwable -> L4f
            if (r0 != 0) goto L1e
            goto L2b
        L1e:
            expo.modules.updates.loader.LoaderTask$LoaderTaskCallback r0 = r3.callback     // Catch: java.lang.Throwable -> L4f
            expo.modules.updates.launcher.Launcher r1 = r3.finalizedLauncher     // Catch: java.lang.Throwable -> L4f
            kotlin.jvm.internal.Intrinsics.checkNotNull(r1)     // Catch: java.lang.Throwable -> L4f
            boolean r2 = r3.isUpToDate     // Catch: java.lang.Throwable -> L4f
            r0.onSuccess(r1, r2)     // Catch: java.lang.Throwable -> L4f
            goto L3b
        L2b:
            expo.modules.updates.loader.LoaderTask$LoaderTaskCallback r0 = r3.callback     // Catch: java.lang.Throwable -> L4f
            if (r4 != 0) goto L37
            java.lang.Exception r1 = new java.lang.Exception     // Catch: java.lang.Throwable -> L4f
            java.lang.String r2 = "LoaderTask encountered an unexpected error and could not launch an update."
            r1.<init>(r2)     // Catch: java.lang.Throwable -> L4f
            goto L38
        L37:
            r1 = r4
        L38:
            r0.onFailure(r1)     // Catch: java.lang.Throwable -> L4f
        L3b:
            boolean r0 = r3.timeoutFinished     // Catch: java.lang.Throwable -> L4f
            if (r0 != 0) goto L42
            r3.stopTimer()     // Catch: java.lang.Throwable -> L4f
        L42:
            if (r4 == 0) goto L4d
            expo.modules.updates.logging.UpdatesLogger r0 = r3.logger     // Catch: java.lang.Throwable -> L4f
            java.lang.String r1 = "Unexpected error encountered while loading this app"
            expo.modules.updates.logging.UpdatesErrorCode r2 = expo.modules.updates.logging.UpdatesErrorCode.Unknown     // Catch: java.lang.Throwable -> L4f
            r0.error(r1, r4, r2)     // Catch: java.lang.Throwable -> L4f
        L4d:
            monitor-exit(r3)
            return
        L4f:
            r4 = move-exception
            monitor-exit(r3)     // Catch: java.lang.Throwable -> L4f
            throw r4
        */
        throw new UnsupportedOperationException("Method not decompiled: expo.modules.updates.loader.LoaderTask.finish(java.lang.Exception):void");
    }

    private final synchronized void maybeFinish() {
        if (this.isReadyToLaunch && this.timeoutFinished) {
            finish(null);
        }
    }

    private final synchronized void stopTimer() {
        this.timeoutFinished = true;
        this.handlerThread.quitSafely();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final synchronized void timeout() {
        if (!this.timeoutFinished) {
            this.timeoutFinished = true;
            maybeFinish();
        }
        stopTimer();
    }

    private final void runReaper() {
        synchronized (this) {
            Launcher launcher = this.finalizedLauncher;
            UpdateEntity launchedUpdate = launcher != null ? launcher.getLaunchedUpdate() : null;
            if (launchedUpdate != null) {
                Reaper.reapUnusedUpdates(this.configuration, this.databaseHolder.getDatabase(), this.directory, launchedUpdate, this.selectionPolicy);
            }
            Unit unit = Unit.INSTANCE;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object launchFallbackUpdateFromDisk(Continuation<? super Unit> continuation) {
        CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(IntrinsicsKt.intercepted(continuation), 1);
        cancellableContinuationImpl.initCancellability();
        final CancellableContinuationImpl cancellableContinuationImpl2 = cancellableContinuationImpl;
        final UpdatesDatabase database = this.databaseHolder.getDatabase();
        final DatabaseLauncher databaseLauncher = new DatabaseLauncher(this.context, this.configuration, this.directory, this.fileDownloader, this.selectionPolicy, this.logger, false, 64, null);
        this.candidateLauncher = databaseLauncher;
        final Launcher.LauncherCallback launcherCallback = new Launcher.LauncherCallback() { // from class: expo.modules.updates.loader.LoaderTask$launchFallbackUpdateFromDisk$2$launcherCallback$1
            @Override // expo.modules.updates.launcher.Launcher.LauncherCallback
            public void onFailure(Exception e) {
                Intrinsics.checkNotNullParameter(e, "e");
                CancellableContinuation<Unit> cancellableContinuation = cancellableContinuationImpl2;
                Result.Companion companion = Result.INSTANCE;
                cancellableContinuation.resumeWith(Result.m2098constructorimpl(ResultKt.createFailure(e)));
            }

            @Override // expo.modules.updates.launcher.Launcher.LauncherCallback
            public void onSuccess() {
                CancellableContinuation<Unit> cancellableContinuation = cancellableContinuationImpl2;
                Result.Companion companion = Result.INSTANCE;
                cancellableContinuation.resumeWith(Result.m2098constructorimpl(Unit.INSTANCE));
            }
        };
        if (this.configuration.getHasEmbeddedUpdate()) {
            EmbeddedUpdate embeddedUpdate = EmbeddedManifestUtils.INSTANCE.getEmbeddedUpdate(this.context, this.configuration);
            Intrinsics.checkNotNull(embeddedUpdate);
            if (this.selectionPolicy.shouldLoadNewUpdate(embeddedUpdate.getUpdateEntity(), databaseLauncher.getLaunchableUpdate(database), ManifestMetadata.INSTANCE.getManifestFilters(database, this.configuration))) {
                new EmbeddedLoader(this.context, this.configuration, this.logger, database, this.directory).start(new Loader.LoaderCallback() { // from class: expo.modules.updates.loader.LoaderTask$launchFallbackUpdateFromDisk$2$1
                    @Override // expo.modules.updates.loader.Loader.LoaderCallback
                    public void onAssetLoaded(AssetEntity asset, int successfulAssetCount, int failedAssetCount, int totalAssetCount) {
                        Intrinsics.checkNotNullParameter(asset, "asset");
                    }

                    @Override // expo.modules.updates.loader.Loader.LoaderCallback
                    public void onFailure(Exception e) {
                        Intrinsics.checkNotNullParameter(e, "e");
                        LoaderTask.this.logger.error("Unexpected error copying embedded update", e, UpdatesErrorCode.Unknown);
                        databaseLauncher.launch(database, launcherCallback);
                    }

                    @Override // expo.modules.updates.loader.Loader.LoaderCallback
                    public void onSuccess(Loader.LoaderResult loaderResult) {
                        Intrinsics.checkNotNullParameter(loaderResult, "loaderResult");
                        databaseLauncher.launch(database, launcherCallback);
                    }

                    @Override // expo.modules.updates.loader.Loader.LoaderCallback
                    public Loader.OnUpdateResponseLoadedResult onUpdateResponseLoaded(UpdateResponse updateResponse) {
                        Intrinsics.checkNotNullParameter(updateResponse, "updateResponse");
                        return new Loader.OnUpdateResponseLoadedResult(true);
                    }
                });
            } else {
                databaseLauncher.launch(database, launcherCallback);
            }
        } else {
            databaseLauncher.launch(database, launcherCallback);
        }
        Object result = cancellableContinuationImpl.getResult();
        if (result == IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
            DebugProbesKt.probeCoroutineSuspended(continuation);
        }
        return result == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? result : Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object launchRemoteUpdateInBackground(Continuation<? super Unit> continuation) {
        CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(IntrinsicsKt.intercepted(continuation), 1);
        cancellableContinuationImpl.initCancellability();
        CancellableContinuationImpl cancellableContinuationImpl2 = cancellableContinuationImpl;
        UpdatesDatabase database = this.databaseHolder.getDatabase();
        this.callback.onRemoteCheckForUpdateStarted();
        Context context = this.context;
        UpdatesConfiguration updatesConfiguration = this.configuration;
        UpdatesLogger updatesLogger = this.logger;
        FileDownloader fileDownloader = this.fileDownloader;
        File file = this.directory;
        Launcher launcher = this.candidateLauncher;
        new RemoteLoader(context, updatesConfiguration, updatesLogger, database, fileDownloader, file, launcher != null ? launcher.getLaunchedUpdate() : null).start(new LoaderTask$launchRemoteUpdateInBackground$2$1(this, cancellableContinuationImpl2, database));
        Object result = cancellableContinuationImpl.getResult();
        if (result == IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
            DebugProbesKt.probeCoroutineSuspended(continuation);
        }
        return result == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? result : Unit.INSTANCE;
    }
}
