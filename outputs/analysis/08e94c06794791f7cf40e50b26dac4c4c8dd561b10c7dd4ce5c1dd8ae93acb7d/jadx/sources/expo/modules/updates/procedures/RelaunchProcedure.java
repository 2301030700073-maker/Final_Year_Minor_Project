package expo.modules.updates.procedures;

import android.app.Activity;
import android.content.Context;
import com.facebook.react.ReactApplication;
import com.facebook.react.ReactInstanceManager;
import com.facebook.react.bridge.JSBundleLoader;
import expo.modules.rncompatibility.ReactNativeFeatureFlags;
import expo.modules.updates.UpdatesConfiguration;
import expo.modules.updates.db.DatabaseHolder;
import expo.modules.updates.launcher.DatabaseLauncher;
import expo.modules.updates.launcher.Launcher;
import expo.modules.updates.loader.FileDownloader;
import expo.modules.updates.logging.UpdatesLogger;
import expo.modules.updates.selectionpolicy.SelectionPolicy;
import io.sentry.SentryEvent;
import java.io.File;
import java.lang.ref.WeakReference;
import java.lang.reflect.Field;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugProbesKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CancellableContinuation;
import kotlinx.coroutines.CancellableContinuationImpl;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.Dispatchers;

/* compiled from: RelaunchProcedure.kt */
@Metadata(d1 = {"\u0000\u008e\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u0000 52\u00020\u0001:\u00015B\u009a\u0001\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u000e\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005\u0012\u0006\u0010\u0007\u001a\u00020\b\u0012\u0006\u0010\t\u001a\u00020\n\u0012\u0006\u0010\u000b\u001a\u00020\f\u0012\u0006\u0010\r\u001a\u00020\u000e\u0012\u0006\u0010\u000f\u001a\u00020\u0010\u0012\u0006\u0010\u0011\u001a\u00020\u0012\u0012\f\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00150\u0014\u0012!\u0010\u0016\u001a\u001d\u0012\u0013\u0012\u00110\u0015¢\u0006\f\b\u0018\u0012\b\b\u0019\u0012\u0004\b\b(\u001a\u0012\u0004\u0012\u00020\u001b0\u0017\u0012\u0006\u0010\u001c\u001a\u00020\u001d\u0012\u0006\u0010\u001e\u001a\u00020\u001f\u0012\b\b\u0002\u0010 \u001a\u00020!¢\u0006\u0004\b\"\u0010#J\u0016\u0010(\u001a\u00020\u001b2\u0006\u0010)\u001a\u00020*H\u0096@¢\u0006\u0002\u0010+J\b\u0010,\u001a\u00020\u001bH\u0002J\u0016\u0010-\u001a\u00020\u001b2\u0006\u0010.\u001a\u00020/H\u0082@¢\u0006\u0002\u00100J\u0018\u00101\u001a\u00020\u001b2\u0006\u00102\u001a\u0002032\u0006\u00104\u001a\u00020%H\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u0016\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\fX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00150\u0014X\u0082\u0004¢\u0006\u0002\n\u0000R)\u0010\u0016\u001a\u001d\u0012\u0013\u0012\u00110\u0015¢\u0006\f\b\u0018\u0012\b\b\u0019\u0012\u0004\b\b(\u001a\u0012\u0004\u0012\u00020\u001b0\u0017X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u001c\u001a\u00020\u001dX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u001e\u001a\u00020\u001fX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010 \u001a\u00020!X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010$\u001a\u00020%X\u0096D¢\u0006\b\n\u0000\u001a\u0004\b&\u0010'¨\u00066"}, d2 = {"Lexpo/modules/updates/procedures/RelaunchProcedure;", "Lexpo/modules/updates/procedures/StateMachineProcedure;", "context", "Landroid/content/Context;", "weakActivity", "Ljava/lang/ref/WeakReference;", "Landroid/app/Activity;", "updatesConfiguration", "Lexpo/modules/updates/UpdatesConfiguration;", SentryEvent.JsonKeys.LOGGER, "Lexpo/modules/updates/logging/UpdatesLogger;", "databaseHolder", "Lexpo/modules/updates/db/DatabaseHolder;", "updatesDirectory", "Ljava/io/File;", "fileDownloader", "Lexpo/modules/updates/loader/FileDownloader;", "selectionPolicy", "Lexpo/modules/updates/selectionpolicy/SelectionPolicy;", "getCurrentLauncher", "Lkotlin/Function0;", "Lexpo/modules/updates/launcher/Launcher;", "setCurrentLauncher", "Lkotlin/Function1;", "Lkotlin/ParameterName;", "name", "launcher", "", "shouldRunReaper", "", "callback", "Lexpo/modules/updates/launcher/Launcher$LauncherCallback;", "procedureScope", "Lkotlinx/coroutines/CoroutineScope;", "<init>", "(Landroid/content/Context;Ljava/lang/ref/WeakReference;Lexpo/modules/updates/UpdatesConfiguration;Lexpo/modules/updates/logging/UpdatesLogger;Lexpo/modules/updates/db/DatabaseHolder;Ljava/io/File;Lexpo/modules/updates/loader/FileDownloader;Lexpo/modules/updates/selectionpolicy/SelectionPolicy;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;ZLexpo/modules/updates/launcher/Launcher$LauncherCallback;Lkotlinx/coroutines/CoroutineScope;)V", "loggerTimerLabel", "", "getLoggerTimerLabel", "()Ljava/lang/String;", "run", "procedureContext", "Lexpo/modules/updates/procedures/StateMachineProcedure$ProcedureContext;", "(Lexpo/modules/updates/procedures/StateMachineProcedure$ProcedureContext;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "runReaper", "launchWith", "newLauncher", "Lexpo/modules/updates/launcher/DatabaseLauncher;", "(Lexpo/modules/updates/launcher/DatabaseLauncher;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "replaceLaunchAssetFileIfNeeded", "reactApplication", "Lcom/facebook/react/ReactApplication;", "launchAssetFile", "Companion", "expo-updates_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
/* loaded from: classes5.dex */
public final class RelaunchProcedure extends StateMachineProcedure {
    private static final String TAG = "RelaunchProcedure";
    private final Launcher.LauncherCallback callback;
    private final Context context;
    private final DatabaseHolder databaseHolder;
    private final FileDownloader fileDownloader;
    private final Function0<Launcher> getCurrentLauncher;
    private final UpdatesLogger logger;
    private final String loggerTimerLabel;
    private final CoroutineScope procedureScope;
    private final SelectionPolicy selectionPolicy;
    private final Function1<Launcher, Unit> setCurrentLauncher;
    private final boolean shouldRunReaper;
    private final UpdatesConfiguration updatesConfiguration;
    private final File updatesDirectory;
    private final WeakReference<Activity> weakActivity;

    public /* synthetic */ RelaunchProcedure(Context context, WeakReference weakReference, UpdatesConfiguration updatesConfiguration, UpdatesLogger updatesLogger, DatabaseHolder databaseHolder, File file, FileDownloader fileDownloader, SelectionPolicy selectionPolicy, Function0 function0, Function1 function1, boolean z, Launcher.LauncherCallback launcherCallback, CoroutineScope coroutineScope, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, weakReference, updatesConfiguration, updatesLogger, databaseHolder, file, fileDownloader, selectionPolicy, function0, function1, z, launcherCallback, (i & 4096) != 0 ? CoroutineScopeKt.CoroutineScope(Dispatchers.getIO()) : coroutineScope);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public RelaunchProcedure(Context context, WeakReference<Activity> weakReference, UpdatesConfiguration updatesConfiguration, UpdatesLogger logger, DatabaseHolder databaseHolder, File updatesDirectory, FileDownloader fileDownloader, SelectionPolicy selectionPolicy, Function0<? extends Launcher> getCurrentLauncher, Function1<? super Launcher, Unit> setCurrentLauncher, boolean z, Launcher.LauncherCallback callback, CoroutineScope procedureScope) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(updatesConfiguration, "updatesConfiguration");
        Intrinsics.checkNotNullParameter(logger, "logger");
        Intrinsics.checkNotNullParameter(databaseHolder, "databaseHolder");
        Intrinsics.checkNotNullParameter(updatesDirectory, "updatesDirectory");
        Intrinsics.checkNotNullParameter(fileDownloader, "fileDownloader");
        Intrinsics.checkNotNullParameter(selectionPolicy, "selectionPolicy");
        Intrinsics.checkNotNullParameter(getCurrentLauncher, "getCurrentLauncher");
        Intrinsics.checkNotNullParameter(setCurrentLauncher, "setCurrentLauncher");
        Intrinsics.checkNotNullParameter(callback, "callback");
        Intrinsics.checkNotNullParameter(procedureScope, "procedureScope");
        this.context = context;
        this.weakActivity = weakReference;
        this.updatesConfiguration = updatesConfiguration;
        this.logger = logger;
        this.databaseHolder = databaseHolder;
        this.updatesDirectory = updatesDirectory;
        this.fileDownloader = fileDownloader;
        this.selectionPolicy = selectionPolicy;
        this.getCurrentLauncher = getCurrentLauncher;
        this.setCurrentLauncher = setCurrentLauncher;
        this.shouldRunReaper = z;
        this.callback = callback;
        this.procedureScope = procedureScope;
        this.loggerTimerLabel = "timer-relaunch";
    }

    @Override // expo.modules.updates.procedures.StateMachineProcedure
    public String getLoggerTimerLabel() {
        return this.loggerTimerLabel;
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x00fe  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0053  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x002a  */
    @Override // expo.modules.updates.procedures.StateMachineProcedure
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object run(expo.modules.updates.procedures.StateMachineProcedure.ProcedureContext r20, kotlin.coroutines.Continuation<? super kotlin.Unit> r21) {
        /*
            Method dump skipped, instructions count: 288
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: expo.modules.updates.procedures.RelaunchProcedure.run(expo.modules.updates.procedures.StateMachineProcedure$ProcedureContext, kotlin.coroutines.Continuation):java.lang.Object");
    }

    private final void runReaper() {
        BuildersKt__Builders_commonKt.launch$default(this.procedureScope, null, null, new RelaunchProcedure$runReaper$1(this, null), 3, null);
    }

    private final void replaceLaunchAssetFileIfNeeded(ReactApplication reactApplication, String launchAssetFile) {
        if (ReactNativeFeatureFlags.INSTANCE.getEnableBridgelessArchitecture()) {
            return;
        }
        ReactInstanceManager reactInstanceManager = reactApplication.getReactNativeHost().getReactInstanceManager();
        Field declaredField = reactInstanceManager.getClass().getDeclaredField("mBundleLoader");
        declaredField.setAccessible(true);
        declaredField.set(reactInstanceManager, JSBundleLoader.createFileLoader(launchAssetFile));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object launchWith(DatabaseLauncher databaseLauncher, Continuation<? super Unit> continuation) {
        CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(IntrinsicsKt.intercepted(continuation), 1);
        cancellableContinuationImpl.initCancellability();
        final CancellableContinuationImpl cancellableContinuationImpl2 = cancellableContinuationImpl;
        databaseLauncher.launch(this.databaseHolder.getDatabase(), new Launcher.LauncherCallback() { // from class: expo.modules.updates.procedures.RelaunchProcedure$launchWith$2$1
            @Override // expo.modules.updates.launcher.Launcher.LauncherCallback
            public void onFailure(Exception e) {
                Intrinsics.checkNotNullParameter(e, "e");
                if (cancellableContinuationImpl2.isActive()) {
                    CancellableContinuation<Unit> cancellableContinuation = cancellableContinuationImpl2;
                    Result.Companion companion = Result.INSTANCE;
                    cancellableContinuation.resumeWith(Result.m2098constructorimpl(ResultKt.createFailure(e)));
                }
            }

            @Override // expo.modules.updates.launcher.Launcher.LauncherCallback
            public void onSuccess() {
                if (cancellableContinuationImpl2.isActive()) {
                    CancellableContinuation<Unit> cancellableContinuation = cancellableContinuationImpl2;
                    Result.Companion companion = Result.INSTANCE;
                    cancellableContinuation.resumeWith(Result.m2098constructorimpl(Unit.INSTANCE));
                }
            }
        });
        Object result = cancellableContinuationImpl.getResult();
        if (result == IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
            DebugProbesKt.probeCoroutineSuspended(continuation);
        }
        return result == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? result : Unit.INSTANCE;
    }
}
