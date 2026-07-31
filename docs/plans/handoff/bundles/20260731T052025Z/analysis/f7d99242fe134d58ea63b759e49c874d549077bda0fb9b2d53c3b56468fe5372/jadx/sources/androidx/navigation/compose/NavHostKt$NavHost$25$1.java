package androidx.navigation.compose;

import android.app.Activity;
import android.appwidget.AppWidgetManager;
import android.content.BroadcastReceiver;
import android.content.Context;
import androidx.activity.compose.ManagedActivityResultLauncher;
import androidx.compose.animation.core.SeekableTransitionState;
import androidx.compose.animation.core.Transition;
import androidx.compose.foundation.gestures.PressGestureScopeImpl;
import androidx.compose.foundation.gestures.ScrollingLogic;
import androidx.compose.foundation.gestures.TrackpadScrollingLogic;
import androidx.compose.foundation.layout.OffsetKt;
import androidx.compose.foundation.relocation.BringIntoViewRequesterImpl;
import androidx.compose.foundation.text.BasicTextKt;
import androidx.compose.foundation.text.BasicTextKt$$ExternalSyntheticLambda0;
import androidx.compose.foundation.text.LegacyTextFieldState;
import androidx.compose.foundation.text.TextFieldPressGestureFilterKt$tapPressTextFieldModifier$1$2$1;
import androidx.compose.foundation.text.TextLayoutResultProxy;
import androidx.compose.foundation.text.input.internal.AndroidLegacyPlatformTextInputServiceAdapter;
import androidx.compose.foundation.text.input.internal.LegacyAdaptingPlatformTextInputModifierNode;
import androidx.compose.foundation.text.selection.TextFieldSelectionManager;
import androidx.compose.runtime.BroadcastFrameClock;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.ParcelableSnapshotMutableFloatState;
import androidx.compose.runtime.Recomposer;
import androidx.compose.runtime.Recomposer$runRecomposeAndApplyChanges$2;
import androidx.compose.ui.input.pointer.PointerInputScope;
import androidx.compose.ui.platform.AndroidPlatformTextInputSession;
import androidx.compose.ui.text.input.ImeOptions;
import androidx.compose.ui.text.input.OffsetMapping;
import androidx.compose.ui.text.input.TextFieldValue;
import androidx.compose.ui.text.input.TextInputService;
import androidx.datastore.preferences.PreferencesProto$Value;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LiveDataScopeImpl;
import app.k9mail.feature.account.setup.navigation.AccountSetupNavHostKt$$ExternalSyntheticLambda31;
import app.k9mail.feature.migration.qrcode.ui.QrCodeScannerViewModel;
import app.k9mail.legacy.di.DI$$ExternalSyntheticLambda0;
import com.beetstra.jutf7.Base64Util;
import com.fsck.k9.K9;
import com.fsck.k9.mailstore.folder.DefaultOutboxFolderManager;
import com.fsck.k9.preferences.DefaultGeneralSettingsManager;
import com.fsck.k9.preferences.K9StorageEditor;
import com.fsck.k9.provider.UnreadWidgetProvider;
import com.fsck.k9.ui.endtoend.AutocryptSetupMessage;
import com.fsck.k9.ui.endtoend.AutocryptSetupTransferLiveEvent;
import java.util.ArrayList;
import java.util.List;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref$ObjectRef;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.JobKt;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.flow.StateFlowImpl;
import kotlinx.coroutines.sync.MutexImpl;
import kotlinx.io.Sink$CC;
import net.thunderbird.core.android.account.LegacyAccountDto;
import net.thunderbird.core.common.action.SwipeActions;
import net.thunderbird.core.common.notification.NotificationActionTokens;
import net.thunderbird.core.logging.LogEvent;
import net.thunderbird.core.logging.file.AndroidFileLogSink;
import net.thunderbird.core.preference.DefaultPreferenceChangeBroker;
import net.thunderbird.core.preference.GeneralSettings;
import net.thunderbird.core.preference.PreferenceScope;
import net.thunderbird.core.preference.debugging.DebuggingSettings;
import net.thunderbird.core.preference.debugging.DefaultDebuggingSettingsPreferenceManager;
import net.thunderbird.core.preference.display.coreSettings.DefaultDisplayCoreSettingsPreferenceManager;
import net.thunderbird.core.preference.display.coreSettings.DisplayCoreSettings;
import net.thunderbird.core.preference.display.inboxSettings.DefaultDisplayInboxSettingsPreferenceManager;
import net.thunderbird.core.preference.display.inboxSettings.DisplayInboxSettings;
import net.thunderbird.core.preference.display.miscSettings.DefaultDisplayMiscSettingsPreferenceManager;
import net.thunderbird.core.preference.display.miscSettings.DisplayMiscSettings;
import net.thunderbird.core.preference.display.visualSettings.DefaultDisplayVisualSettingsPreferenceManager;
import net.thunderbird.core.preference.display.visualSettings.DisplayVisualSettings;
import net.thunderbird.core.preference.interaction.DefaultInteractionSettingsPreferenceManager;
import net.thunderbird.core.preference.interaction.InteractionSettings;
import net.thunderbird.core.preference.network.DefaultNetworkSettingsPreferenceManager;
import net.thunderbird.core.preference.network.NetworkSettings;
import net.thunderbird.core.preference.notification.DefaultNotificationPreferenceManager;
import net.thunderbird.core.preference.notification.NotificationPreference;
import net.thunderbird.core.preference.privacy.DefaultPrivacySettingsPreferenceManager;
import net.thunderbird.core.preference.privacy.PrivacySettings;
import net.thunderbird.feature.account.AccountId;
import net.thunderbird.feature.account.server.settings.ui.common.Authenticator;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import okio.internal.ResourceFileSystem$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class NavHostKt$NavHost$25$1 extends SuspendLambda implements Function2 {
    public Object $composeNavigator;
    public Object $currentBackStack$delegate;
    public Object $inPredictiveBack$delegate;
    public final /* synthetic */ Object $progress$delegate;
    public final /* synthetic */ int $r8$classId;
    public Object L$0;
    public int label;

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    /* renamed from: androidx.navigation.compose.NavHostKt$NavHost$25$1$1, reason: invalid class name */
    public final class AnonymousClass1 implements FlowCollector {
        public static final AnonymousClass1 INSTANCE = new AnonymousClass1();

        @Override // kotlinx.coroutines.flow.FlowCollector
        public final /* bridge */ /* synthetic */ Object emit(Object obj, Continuation continuation) {
            return Unit.INSTANCE;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NavHostKt$NavHost$25$1(QrCodeScannerViewModel qrCodeScannerViewModel, Continuation continuation, ManagedActivityResultLauncher managedActivityResultLauncher, Context context, Function1 function1, Function0 function0) {
        super(2, continuation);
        this.$r8$classId = 13;
        this.L$0 = qrCodeScannerViewModel;
        this.$composeNavigator = managedActivityResultLauncher;
        this.$currentBackStack$delegate = context;
        this.$inPredictiveBack$delegate = function1;
        this.$progress$delegate = function0;
    }

    /* JADX WARN: Can't wrap try/catch for region: R(10:0|1|(1:(1:(1:(4:6|7|8|9)(2:11|12))(4:13|14|(4:17|7|8|9)|16))(4:18|19|20|21))(8:35|36|37|38|39|40|(1:42)|16)|22|23|24|(1:26)|8|9|(1:(0))) */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x00cf, code lost:
    
        if (r0 == r13) goto L39;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x0094, code lost:
    
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x0095, code lost:
    
        r14 = r7;
     */
    /* JADX WARN: Removed duplicated region for block: B:26:0x00b2  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final java.lang.Object invokeSuspend$com$fsck$k9$mailstore$folder$DefaultOutboxFolderManager$getOutboxFolderId$4(java.lang.Object r19) {
        /*
            Method dump skipped, instructions count: 243
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.navigation.compose.NavHostKt$NavHost$25$1.invokeSuspend$com$fsck$k9$mailstore$folder$DefaultOutboxFolderManager$getOutboxFolderId$4(java.lang.Object):java.lang.Object");
    }

    private final Object invokeSuspend$com$fsck$k9$preferences$DefaultGeneralSettingsManager$save$1(Object obj) {
        DefaultGeneralSettingsManager defaultGeneralSettingsManager;
        MutexImpl mutexImpl;
        GeneralSettings generalSettings;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i = this.label;
        Continuation continuation = null;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            defaultGeneralSettingsManager = (DefaultGeneralSettingsManager) this.$inPredictiveBack$delegate;
            MutexImpl mutexImpl2 = defaultGeneralSettingsManager.mutex;
            GeneralSettings generalSettings2 = (GeneralSettings) this.$progress$delegate;
            this.L$0 = mutexImpl2;
            this.$composeNavigator = defaultGeneralSettingsManager;
            this.$currentBackStack$delegate = generalSettings2;
            this.label = 1;
            if (mutexImpl2.lock(this) == coroutineSingletons) {
                return coroutineSingletons;
            }
            mutexImpl = mutexImpl2;
            generalSettings = generalSettings2;
        } else {
            if (i != 1) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m$2("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            generalSettings = (GeneralSettings) this.$currentBackStack$delegate;
            defaultGeneralSettingsManager = (DefaultGeneralSettingsManager) this.$composeNavigator;
            mutexImpl = (MutexImpl) this.L$0;
            ResultKt.throwOnFailure(obj);
        }
        try {
            synchronized (defaultGeneralSettingsManager) {
                K9StorageEditor createStorageEditor = defaultGeneralSettingsManager.preferences.createStorageEditor();
                K9 k9 = K9.INSTANCE;
                K9.save$core(createStorageEditor);
                createStorageEditor.commit();
                ((DefaultPreferenceChangeBroker) defaultGeneralSettingsManager.changePublisher).publish(PreferenceScope.ALL);
            }
            defaultGeneralSettingsManager.privacySettingsPreferenceManager.save(generalSettings.privacy);
            DefaultNotificationPreferenceManager defaultNotificationPreferenceManager = defaultGeneralSettingsManager.notificationPreferenceManager;
            NotificationPreference notificationPreference = generalSettings.notification;
            defaultNotificationPreferenceManager.getClass();
            notificationPreference.getClass();
            Sink$CC.debug$default(defaultNotificationPreferenceManager.logger, "DefaultNotificationPreferenceManager", null, new ResourceFileSystem$$ExternalSyntheticLambda0(3, notificationPreference), 2);
            JobKt.launch$default(defaultNotificationPreferenceManager.scope, defaultNotificationPreferenceManager.ioDispatcher, null, new NavHostKt$NavHost$25$1(defaultNotificationPreferenceManager, notificationPreference, continuation, 27), 2);
            defaultGeneralSettingsManager.displaySettingsSettingsPreferenceManager.save(generalSettings.display);
            defaultGeneralSettingsManager.displayCoreSettingsPreferenceManager.save(generalSettings.display.coreSettings);
            defaultGeneralSettingsManager.displayInboxSettingsPreferenceManager.save(generalSettings.display.inboxSettings);
            ((DefaultDisplayVisualSettingsPreferenceManager) defaultGeneralSettingsManager.displayVisualSettingsPreferenceManager).save(generalSettings.display.visualSettings);
            defaultGeneralSettingsManager.messageListPreferencesManager.save(generalSettings.display.visualSettings.messageListSettings);
            defaultGeneralSettingsManager.displayMiscSettingsPreferenceManager.save(generalSettings.display.miscSettings);
            defaultGeneralSettingsManager.networkSettingsPreferenceManager.save(generalSettings.network);
            defaultGeneralSettingsManager.debuggingSettingsPreferenceManager.save(generalSettings.debugging);
            defaultGeneralSettingsManager.interactionSettingsPreferenceManager.save(generalSettings.interaction);
            mutexImpl.unlock(null);
            return Unit.INSTANCE;
        } catch (Throwable th) {
            mutexImpl.unlock(null);
            throw th;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x008b, code lost:
    
        if (r0.emit(r1, r10) == r7) goto L28;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x007c, code lost:
    
        if (kotlinx.coroutines.JobKt.cancelAndJoin(r11, r10) == r7) goto L28;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r11v10 */
    /* JADX WARN: Type inference failed for: r11v3 */
    /* JADX WARN: Type inference failed for: r11v4, types: [kotlinx.coroutines.Job] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final java.lang.Object invokeSuspend$com$fsck$k9$ui$base$loader$LiveDataLoaderKt$liveDataLoader$1$1(java.lang.Object r11) {
        /*
            r10 = this;
            java.lang.Object r0 = r10.$inPredictiveBack$delegate
            androidx.lifecycle.LiveDataScopeImpl r0 = (androidx.lifecycle.LiveDataScopeImpl) r0
            java.lang.Object r1 = r10.L$0
            kotlinx.coroutines.CoroutineScope r1 = (kotlinx.coroutines.CoroutineScope) r1
            int r2 = r10.label
            r3 = 3
            r4 = 2
            r5 = 1
            r6 = 0
            kotlin.coroutines.intrinsics.CoroutineSingletons r7 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            if (r2 == 0) goto L35
            if (r2 == r5) goto L2b
            if (r2 == r4) goto L23
            if (r2 != r3) goto L1d
            kotlin.ResultKt.throwOnFailure(r11)
            goto L8e
        L1d:
            java.lang.String r10 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$2(r10)
            return r6
        L23:
            java.lang.Object r1 = r10.$currentBackStack$delegate
            com.fsck.k9.ui.base.loader.LoaderState r1 = (com.fsck.k9.ui.base.loader.LoaderState) r1
            kotlin.ResultKt.throwOnFailure(r11)
            goto L7f
        L2b:
            java.lang.Object r1 = r10.$composeNavigator
            kotlinx.coroutines.StandaloneCoroutine r1 = (kotlinx.coroutines.StandaloneCoroutine) r1
            kotlin.ResultKt.throwOnFailure(r11)     // Catch: java.lang.Exception -> L33
            goto L5b
        L33:
            r11 = move-exception
            goto L63
        L35:
            kotlin.ResultKt.throwOnFailure(r11)
            androidx.lifecycle.BlockRunner$cancel$1 r11 = new androidx.lifecycle.BlockRunner$cancel$1
            r2 = 16
            r11.<init>(r0, r6, r2)
            kotlinx.coroutines.StandaloneCoroutine r1 = kotlinx.coroutines.JobKt.launch$default(r1, r6, r6, r11, r3)
            kotlinx.coroutines.scheduling.DefaultIoScheduler r11 = kotlinx.coroutines.scheduling.DefaultIoScheduler.INSTANCE     // Catch: java.lang.Exception -> L33
            kotlinx.coroutines.InterruptibleKt$runInterruptible$2 r2 = new kotlinx.coroutines.InterruptibleKt$runInterruptible$2     // Catch: java.lang.Exception -> L33
            java.lang.Object r8 = r10.$progress$delegate     // Catch: java.lang.Exception -> L33
            app.k9mail.legacy.di.DI$$ExternalSyntheticLambda0 r8 = (app.k9mail.legacy.di.DI$$ExternalSyntheticLambda0) r8     // Catch: java.lang.Exception -> L33
            r2.<init>(r8, r6, r4)     // Catch: java.lang.Exception -> L33
            r10.L$0 = r6     // Catch: java.lang.Exception -> L33
            r10.$composeNavigator = r1     // Catch: java.lang.Exception -> L33
            r10.label = r5     // Catch: java.lang.Exception -> L33
            java.lang.Object r11 = kotlinx.coroutines.JobKt.withContext(r11, r2, r10)     // Catch: java.lang.Exception -> L33
            if (r11 != r7) goto L5b
            goto L8d
        L5b:
            com.fsck.k9.ui.base.loader.LoaderState$Data r2 = new com.fsck.k9.ui.base.loader.LoaderState$Data     // Catch: java.lang.Exception -> L33
            r2.<init>(r11)     // Catch: java.lang.Exception -> L33
            r11 = r1
            r1 = r2
            goto L70
        L63:
            r2 = 0
            java.lang.Object[] r2 = new java.lang.Object[r2]
            java.lang.String r5 = "Error loading data"
            net.thunderbird.core.logging.legacy.Log.e(r11, r5, r2)
            com.fsck.k9.ui.base.loader.LoaderState$Error r11 = com.fsck.k9.ui.base.loader.LoaderState.Error.INSTANCE
            r9 = r1
            r1 = r11
            r11 = r9
        L70:
            r10.L$0 = r6
            r10.$composeNavigator = r6
            r10.$currentBackStack$delegate = r1
            r10.label = r4
            java.lang.Object r11 = kotlinx.coroutines.JobKt.cancelAndJoin(r11, r10)
            if (r11 != r7) goto L7f
            goto L8d
        L7f:
            r10.L$0 = r6
            r10.$composeNavigator = r6
            r10.$currentBackStack$delegate = r6
            r10.label = r3
            java.lang.Object r10 = r0.emit(r1, r10)
            if (r10 != r7) goto L8e
        L8d:
            return r7
        L8e:
            kotlin.Unit r10 = kotlin.Unit.INSTANCE
            return r10
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.navigation.compose.NavHostKt$NavHost$25$1.invokeSuspend$com$fsck$k9$ui$base$loader$LiveDataLoaderKt$liveDataLoader$1$1(java.lang.Object):java.lang.Object");
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x005f, code lost:
    
        if (r0.await(r12) == r9) goto L18;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x0061, code lost:
    
        return r9;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0052, code lost:
    
        if (kotlinx.coroutines.JobKt.delay(2000, r12) == r9) goto L18;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final java.lang.Object invokeSuspend$com$fsck$k9$ui$endtoend$AutocryptSetupTransferLiveEvent$sendMessageAsync$1(java.lang.Object r13) {
        /*
            r12 = this;
            java.lang.Object r0 = r12.$inPredictiveBack$delegate
            r4 = r0
            com.fsck.k9.ui.endtoend.AutocryptSetupMessage r4 = (com.fsck.k9.ui.endtoend.AutocryptSetupMessage) r4
            java.lang.Object r0 = r12.$currentBackStack$delegate
            r2 = r0
            com.fsck.k9.ui.endtoend.AutocryptSetupTransferLiveEvent r2 = (com.fsck.k9.ui.endtoend.AutocryptSetupTransferLiveEvent) r2
            java.lang.Object r0 = r12.L$0
            kotlinx.coroutines.CoroutineScope r0 = (kotlinx.coroutines.CoroutineScope) r0
            int r1 = r12.label
            r7 = 2
            r8 = 1
            r5 = 0
            kotlin.coroutines.intrinsics.CoroutineSingletons r9 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            if (r1 == 0) goto L31
            if (r1 == r8) goto L29
            if (r1 != r7) goto L22
            kotlin.ResultKt.throwOnFailure(r13)     // Catch: java.lang.Exception -> L1f
            goto L62
        L1f:
            r0 = move-exception
            r12 = r0
            goto L6d
        L22:
            java.lang.String r12 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$2(r12)
            r12 = 0
            return r12
        L29:
            java.lang.Object r0 = r12.$composeNavigator
            kotlinx.coroutines.DeferredCoroutine r0 = (kotlinx.coroutines.DeferredCoroutine) r0
            kotlin.ResultKt.throwOnFailure(r13)
            goto L55
        L31:
            kotlin.ResultKt.throwOnFailure(r13)
            kotlinx.coroutines.scheduling.DefaultScheduler r13 = kotlinx.coroutines.Dispatchers.Default
            kotlinx.coroutines.scheduling.DefaultIoScheduler r13 = kotlinx.coroutines.scheduling.DefaultIoScheduler.INSTANCE
            com.skydoves.landscapist.ImageLoadKt$ImageLoad$2$1$1 r1 = new com.skydoves.landscapist.ImageLoadKt$ImageLoad$2$1$1
            java.lang.Object r3 = r12.$progress$delegate
            net.thunderbird.core.android.account.LegacyAccountDto r3 = (net.thunderbird.core.android.account.LegacyAccountDto) r3
            r6 = 4
            r1.<init>(r2, r3, r4, r5, r6)
            kotlinx.coroutines.DeferredCoroutine r0 = kotlinx.coroutines.JobKt.async$default(r0, r13, r5, r1, r7)
            r12.L$0 = r5
            r12.$composeNavigator = r0
            r12.label = r8
            r10 = 2000(0x7d0, double:9.88E-321)
            java.lang.Object r13 = kotlinx.coroutines.JobKt.delay(r10, r12)
            if (r13 != r9) goto L55
            goto L61
        L55:
            r12.L$0 = r5     // Catch: java.lang.Exception -> L1f
            r12.$composeNavigator = r5     // Catch: java.lang.Exception -> L1f
            r12.label = r7     // Catch: java.lang.Exception -> L1f
            java.lang.Object r12 = r0.await(r12)     // Catch: java.lang.Exception -> L1f
            if (r12 != r9) goto L62
        L61:
            return r9
        L62:
            com.fsck.k9.ui.endtoend.AutocryptSetupTransferResult$Success r12 = new com.fsck.k9.ui.endtoend.AutocryptSetupTransferResult$Success     // Catch: java.lang.Exception -> L1f
            android.app.PendingIntent r13 = r4.showTransferCodePi     // Catch: java.lang.Exception -> L1f
            r12.<init>(r13)     // Catch: java.lang.Exception -> L1f
            r2.setValue(r12)     // Catch: java.lang.Exception -> L1f
            goto L75
        L6d:
            com.fsck.k9.ui.endtoend.AutocryptSetupTransferResult$Failure r13 = new com.fsck.k9.ui.endtoend.AutocryptSetupTransferResult$Failure
            r13.<init>(r12)
            r2.setValue(r13)
        L75:
            kotlin.Unit r12 = kotlin.Unit.INSTANCE
            return r12
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.navigation.compose.NavHostKt$NavHost$25$1.invokeSuspend$com$fsck$k9$ui$endtoend$AutocryptSetupTransferLiveEvent$sendMessageAsync$1(java.lang.Object):java.lang.Object");
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x009b, code lost:
    
        if (r0.writeToLogFile(r9) == r5) goto L19;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final java.lang.Object invokeSuspend$net$thunderbird$core$logging$file$AndroidFileLogSink$log$1(java.lang.Object r10) {
        /*
            r9 = this;
            java.lang.Object r0 = r9.$inPredictiveBack$delegate
            net.thunderbird.core.logging.file.AndroidFileLogSink r0 = (net.thunderbird.core.logging.file.AndroidFileLogSink) r0
            int r1 = r9.label
            r2 = 2
            r3 = 1
            r4 = 0
            kotlin.coroutines.intrinsics.CoroutineSingletons r5 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            if (r1 == 0) goto L2c
            if (r1 == r3) goto L1c
            if (r1 != r2) goto L16
            kotlin.ResultKt.throwOnFailure(r10)
            goto L9e
        L16:
            java.lang.String r9 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$2(r9)
            return r4
        L1c:
            java.lang.Object r1 = r9.$currentBackStack$delegate
            net.thunderbird.core.logging.LogEvent r1 = (net.thunderbird.core.logging.LogEvent) r1
            java.lang.Object r3 = r9.$composeNavigator
            net.thunderbird.core.logging.file.AndroidFileLogSink r3 = (net.thunderbird.core.logging.file.AndroidFileLogSink) r3
            java.lang.Object r6 = r9.L$0
            kotlinx.coroutines.sync.MutexImpl r6 = (kotlinx.coroutines.sync.MutexImpl) r6
            kotlin.ResultKt.throwOnFailure(r10)
            goto L46
        L2c:
            kotlin.ResultKt.throwOnFailure(r10)
            kotlinx.coroutines.sync.MutexImpl r6 = r0.mutex
            java.lang.Object r10 = r9.$progress$delegate
            r1 = r10
            net.thunderbird.core.logging.LogEvent r1 = (net.thunderbird.core.logging.LogEvent) r1
            r9.L$0 = r6
            r9.$composeNavigator = r0
            r9.$currentBackStack$delegate = r1
            r9.label = r3
            java.lang.Object r10 = r6.lock(r9)
            if (r10 != r5) goto L45
            goto L9d
        L45:
            r3 = r0
        L46:
            java.util.ArrayList r10 = r3.accumulatedLogs     // Catch: java.lang.Throwable -> La1
            long r7 = r1.timestamp     // Catch: java.lang.Throwable -> La1
            kotlin.time.Instant r3 = kotlin.time.Instant.MIN     // Catch: java.lang.Throwable -> La1
            kotlin.time.Instant r3 = kotlin.time.InstantKt.fromEpochMilliseconds(r7)     // Catch: java.lang.Throwable -> La1
            kotlinx.datetime.FixedOffsetTimeZone r7 = kotlinx.datetime.TimeZone.UTC     // Catch: java.lang.Throwable -> La1
            kotlinx.datetime.TimeZone r7 = kotlin.text.CharsKt__CharKt.currentSystemDefault()     // Catch: java.lang.Throwable -> La1
            kotlinx.datetime.LocalDateTime r3 = org.minidns.util.Hex.toLocalDateTime(r3, r7)     // Catch: java.lang.Throwable -> La1
            kotlinx.datetime.format.LocalDateTimeFormat r7 = kotlinx.datetime.LocalDateTime.Formats.ISO     // Catch: java.lang.Throwable -> La1
            java.lang.String r3 = r7.format(r3)     // Catch: java.lang.Throwable -> La1
            net.thunderbird.core.logging.LogLevel r7 = r1.level     // Catch: java.lang.Throwable -> La1
            java.lang.String r1 = r1.message     // Catch: java.lang.Throwable -> La1
            java.lang.StringBuilder r8 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> La1
            r8.<init>()     // Catch: java.lang.Throwable -> La1
            r8.append(r3)     // Catch: java.lang.Throwable -> La1
            java.lang.String r3 = " priority = "
            r8.append(r3)     // Catch: java.lang.Throwable -> La1
            r8.append(r7)     // Catch: java.lang.Throwable -> La1
            java.lang.String r3 = ", "
            r8.append(r3)     // Catch: java.lang.Throwable -> La1
            r8.append(r1)     // Catch: java.lang.Throwable -> La1
            java.lang.String r1 = r8.toString()     // Catch: java.lang.Throwable -> La1
            r10.add(r1)     // Catch: java.lang.Throwable -> La1
            r6.unlock(r4)
            java.util.ArrayList r10 = r0.accumulatedLogs
            int r10 = r10.size()
            r1 = 4
            if (r10 <= r1) goto L9e
            r9.L$0 = r4
            r9.$composeNavigator = r4
            r9.$currentBackStack$delegate = r4
            r9.label = r2
            java.lang.Object r9 = r0.writeToLogFile(r9)
            if (r9 != r5) goto L9e
        L9d:
            return r5
        L9e:
            kotlin.Unit r9 = kotlin.Unit.INSTANCE
            return r9
        La1:
            r9 = move-exception
            r6.unlock(r4)
            throw r9
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.navigation.compose.NavHostKt$NavHost$25$1.invokeSuspend$net$thunderbird$core$logging$file$AndroidFileLogSink$log$1(java.lang.Object):java.lang.Object");
    }

    private final Object invokeSuspend$net$thunderbird$core$preference$debugging$DefaultDebuggingSettingsPreferenceManager$writeConfig$2(Object obj) {
        DefaultDebuggingSettingsPreferenceManager defaultDebuggingSettingsPreferenceManager;
        DebuggingSettings debuggingSettings;
        MutexImpl mutexImpl;
        int i = this.label;
        int i2 = 1;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            defaultDebuggingSettingsPreferenceManager = (DefaultDebuggingSettingsPreferenceManager) this.$inPredictiveBack$delegate;
            MutexImpl mutexImpl2 = defaultDebuggingSettingsPreferenceManager.mutex;
            debuggingSettings = (DebuggingSettings) this.$progress$delegate;
            this.L$0 = mutexImpl2;
            this.$composeNavigator = defaultDebuggingSettingsPreferenceManager;
            this.$currentBackStack$delegate = debuggingSettings;
            this.label = 1;
            Object lock = mutexImpl2.lock(this);
            CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
            if (lock == coroutineSingletons) {
                return coroutineSingletons;
            }
            mutexImpl = mutexImpl2;
        } else {
            if (i != 1) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m$2("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            debuggingSettings = (DebuggingSettings) this.$currentBackStack$delegate;
            defaultDebuggingSettingsPreferenceManager = (DefaultDebuggingSettingsPreferenceManager) this.$composeNavigator;
            mutexImpl = (MutexImpl) this.L$0;
            ResultKt.throwOnFailure(obj);
        }
        try {
            K9StorageEditor k9StorageEditor = defaultDebuggingSettingsPreferenceManager.storageEditor;
            k9StorageEditor.putBoolean("enableDebugLogging", debuggingSettings.isDebugLoggingEnabled);
            k9StorageEditor.putBoolean("enableSyncDebugLogging", debuggingSettings.isSyncLoggingEnabled);
            k9StorageEditor.putBoolean("enableSensitiveLogging", debuggingSettings.isSensitiveLoggingEnabled);
            Sink$CC.verbose$default(defaultDebuggingSettingsPreferenceManager.logger, "DefaultDebuggingSettingsPreferenceManager", null, new AccountSetupNavHostKt$$ExternalSyntheticLambda31(k9StorageEditor.commit(), i2), 2);
            mutexImpl.unlock(null);
            return Unit.INSTANCE;
        } catch (Throwable th) {
            mutexImpl.unlock(null);
            throw th;
        }
    }

    private final Object invokeSuspend$net$thunderbird$core$preference$display$coreSettings$DefaultDisplayCoreSettingsPreferenceManager$writeConfig$2(Object obj) {
        DefaultDisplayCoreSettingsPreferenceManager defaultDisplayCoreSettingsPreferenceManager;
        MutexImpl mutexImpl;
        DisplayCoreSettings displayCoreSettings;
        int i = this.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            DefaultDisplayCoreSettingsPreferenceManager defaultDisplayCoreSettingsPreferenceManager2 = (DefaultDisplayCoreSettingsPreferenceManager) this.$inPredictiveBack$delegate;
            MutexImpl mutexImpl2 = defaultDisplayCoreSettingsPreferenceManager2.mutex;
            DisplayCoreSettings displayCoreSettings2 = (DisplayCoreSettings) this.$progress$delegate;
            this.L$0 = mutexImpl2;
            this.$composeNavigator = defaultDisplayCoreSettingsPreferenceManager2;
            this.$currentBackStack$delegate = displayCoreSettings2;
            this.label = 1;
            Object lock = mutexImpl2.lock(this);
            CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
            if (lock == coroutineSingletons) {
                return coroutineSingletons;
            }
            defaultDisplayCoreSettingsPreferenceManager = defaultDisplayCoreSettingsPreferenceManager2;
            mutexImpl = mutexImpl2;
            displayCoreSettings = displayCoreSettings2;
        } else {
            if (i != 1) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m$2("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            displayCoreSettings = (DisplayCoreSettings) this.$currentBackStack$delegate;
            defaultDisplayCoreSettingsPreferenceManager = (DefaultDisplayCoreSettingsPreferenceManager) this.$composeNavigator;
            mutexImpl = (MutexImpl) this.L$0;
            ResultKt.throwOnFailure(obj);
        }
        try {
            K9StorageEditor k9StorageEditor = defaultDisplayCoreSettingsPreferenceManager.storageEditor;
            k9StorageEditor.putString("theme", displayCoreSettings.appTheme.name());
            k9StorageEditor.putString("messageViewTheme", displayCoreSettings.messageViewTheme.name());
            k9StorageEditor.putString("messageComposeTheme", displayCoreSettings.messageComposeTheme.name());
            k9StorageEditor.putBoolean("fixedMessageViewTheme", displayCoreSettings.fixedMessageViewTheme);
            k9StorageEditor.putString("language", displayCoreSettings.appLanguage);
            k9StorageEditor.putString("splitViewMode", displayCoreSettings.splitViewMode.name());
            Sink$CC.verbose$default(defaultDisplayCoreSettingsPreferenceManager.logger, "DefaultDisplayCoreSettingsPreferenceManager", null, new AccountSetupNavHostKt$$ExternalSyntheticLambda31(k9StorageEditor.commit(), 2), 2);
            mutexImpl.unlock(null);
            return Unit.INSTANCE;
        } catch (Throwable th) {
            mutexImpl.unlock(null);
            throw th;
        }
    }

    private final Object invokeSuspend$net$thunderbird$core$preference$display$inboxSettings$DefaultDisplayInboxSettingsPreferenceManager$writeConfig$2(Object obj) {
        DefaultDisplayInboxSettingsPreferenceManager defaultDisplayInboxSettingsPreferenceManager;
        MutexImpl mutexImpl;
        DisplayInboxSettings displayInboxSettings;
        int i = this.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            DefaultDisplayInboxSettingsPreferenceManager defaultDisplayInboxSettingsPreferenceManager2 = (DefaultDisplayInboxSettingsPreferenceManager) this.$inPredictiveBack$delegate;
            MutexImpl mutexImpl2 = defaultDisplayInboxSettingsPreferenceManager2.mutex;
            DisplayInboxSettings displayInboxSettings2 = (DisplayInboxSettings) this.$progress$delegate;
            this.L$0 = mutexImpl2;
            this.$composeNavigator = defaultDisplayInboxSettingsPreferenceManager2;
            this.$currentBackStack$delegate = displayInboxSettings2;
            this.label = 1;
            Object lock = mutexImpl2.lock(this);
            CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
            if (lock == coroutineSingletons) {
                return coroutineSingletons;
            }
            defaultDisplayInboxSettingsPreferenceManager = defaultDisplayInboxSettingsPreferenceManager2;
            mutexImpl = mutexImpl2;
            displayInboxSettings = displayInboxSettings2;
        } else {
            if (i != 1) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m$2("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            displayInboxSettings = (DisplayInboxSettings) this.$currentBackStack$delegate;
            defaultDisplayInboxSettingsPreferenceManager = (DefaultDisplayInboxSettingsPreferenceManager) this.$composeNavigator;
            mutexImpl = (MutexImpl) this.L$0;
            ResultKt.throwOnFailure(obj);
        }
        try {
            K9StorageEditor k9StorageEditor = defaultDisplayInboxSettingsPreferenceManager.storageEditor;
            k9StorageEditor.putBoolean("messageListSenderAboveSubject", displayInboxSettings.isMessageListSenderAboveSubject);
            k9StorageEditor.putBoolean("messageListStars", displayInboxSettings.isShowMessageListStars);
            k9StorageEditor.putBoolean("showComposeButtonOnMessageList", displayInboxSettings.isShowComposeButtonOnMessageList);
            k9StorageEditor.putBoolean("isThreadedViewEnabled", displayInboxSettings.isThreadedViewEnabled);
            k9StorageEditor.putBoolean("showUnifiedInbox", displayInboxSettings.isShowUnifiedInbox);
            k9StorageEditor.putBoolean("showStarredCount", displayInboxSettings.isShowStarredCount);
            Sink$CC.verbose$default(defaultDisplayInboxSettingsPreferenceManager.logger, "DefaultDisplayInboxSettingsPreferenceManager", null, new AccountSetupNavHostKt$$ExternalSyntheticLambda31(k9StorageEditor.commit(), 3), 2);
            mutexImpl.unlock(null);
            return Unit.INSTANCE;
        } catch (Throwable th) {
            mutexImpl.unlock(null);
            throw th;
        }
    }

    private final Object invokeSuspend$net$thunderbird$core$preference$display$miscSettings$DefaultDisplayMiscSettingsPreferenceManager$writeConfig$2(Object obj) {
        DefaultDisplayMiscSettingsPreferenceManager defaultDisplayMiscSettingsPreferenceManager;
        MutexImpl mutexImpl;
        DisplayMiscSettings displayMiscSettings;
        int i = this.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            DefaultDisplayMiscSettingsPreferenceManager defaultDisplayMiscSettingsPreferenceManager2 = (DefaultDisplayMiscSettingsPreferenceManager) this.$inPredictiveBack$delegate;
            MutexImpl mutexImpl2 = defaultDisplayMiscSettingsPreferenceManager2.mutex;
            DisplayMiscSettings displayMiscSettings2 = (DisplayMiscSettings) this.$progress$delegate;
            this.L$0 = mutexImpl2;
            this.$composeNavigator = defaultDisplayMiscSettingsPreferenceManager2;
            this.$currentBackStack$delegate = displayMiscSettings2;
            this.label = 1;
            Object lock = mutexImpl2.lock(this);
            CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
            if (lock == coroutineSingletons) {
                return coroutineSingletons;
            }
            defaultDisplayMiscSettingsPreferenceManager = defaultDisplayMiscSettingsPreferenceManager2;
            mutexImpl = mutexImpl2;
            displayMiscSettings = displayMiscSettings2;
        } else {
            if (i != 1) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m$2("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            displayMiscSettings = (DisplayMiscSettings) this.$currentBackStack$delegate;
            defaultDisplayMiscSettingsPreferenceManager = (DefaultDisplayMiscSettingsPreferenceManager) this.$composeNavigator;
            mutexImpl = (MutexImpl) this.L$0;
            ResultKt.throwOnFailure(obj);
        }
        try {
            K9StorageEditor k9StorageEditor = defaultDisplayMiscSettingsPreferenceManager.storageEditor;
            k9StorageEditor.putBoolean("shouldShowSetupArchiveFolderDialog", displayMiscSettings.shouldShowSetupArchiveFolderDialog);
            k9StorageEditor.putBoolean("showRecentChanges", displayMiscSettings.showRecentChanges);
            Sink$CC.verbose$default(defaultDisplayMiscSettingsPreferenceManager.logger, "DefaultDisplayMiscSettingsPreferenceManager", null, new AccountSetupNavHostKt$$ExternalSyntheticLambda31(k9StorageEditor.commit(), 4), 2);
            mutexImpl.unlock(null);
            return Unit.INSTANCE;
        } catch (Throwable th) {
            mutexImpl.unlock(null);
            throw th;
        }
    }

    private final Object invokeSuspend$net$thunderbird$core$preference$display$visualSettings$DefaultDisplayVisualSettingsPreferenceManager$writeConfig$2(Object obj) {
        DefaultDisplayVisualSettingsPreferenceManager defaultDisplayVisualSettingsPreferenceManager;
        MutexImpl mutexImpl;
        DisplayVisualSettings displayVisualSettings;
        int i = this.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            DefaultDisplayVisualSettingsPreferenceManager defaultDisplayVisualSettingsPreferenceManager2 = (DefaultDisplayVisualSettingsPreferenceManager) this.$inPredictiveBack$delegate;
            MutexImpl mutexImpl2 = defaultDisplayVisualSettingsPreferenceManager2.mutex;
            DisplayVisualSettings displayVisualSettings2 = (DisplayVisualSettings) this.$progress$delegate;
            this.L$0 = mutexImpl2;
            this.$composeNavigator = defaultDisplayVisualSettingsPreferenceManager2;
            this.$currentBackStack$delegate = displayVisualSettings2;
            this.label = 1;
            Object lock = mutexImpl2.lock(this);
            CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
            if (lock == coroutineSingletons) {
                return coroutineSingletons;
            }
            defaultDisplayVisualSettingsPreferenceManager = defaultDisplayVisualSettingsPreferenceManager2;
            mutexImpl = mutexImpl2;
            displayVisualSettings = displayVisualSettings2;
        } else {
            if (i != 1) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m$2("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            displayVisualSettings = (DisplayVisualSettings) this.$currentBackStack$delegate;
            defaultDisplayVisualSettingsPreferenceManager = (DefaultDisplayVisualSettingsPreferenceManager) this.$composeNavigator;
            mutexImpl = (MutexImpl) this.L$0;
            ResultKt.throwOnFailure(obj);
        }
        try {
            K9StorageEditor k9StorageEditor = defaultDisplayVisualSettingsPreferenceManager.storageEditor;
            k9StorageEditor.putString("animations", displayVisualSettings.animationPreference.name());
            k9StorageEditor.putBoolean("messageViewFixedWidthFont", displayVisualSettings.isUseMessageViewFixedWidthFont);
            k9StorageEditor.putBoolean("autofitWidth", displayVisualSettings.isAutoFitWidth);
            k9StorageEditor.putString("messageViewBodyContentType", displayVisualSettings.bodyContentType.name());
            k9StorageEditor.putBoolean("drawerExpandAllFolder", displayVisualSettings.drawerExpandAllFolder);
            defaultDisplayVisualSettingsPreferenceManager.messageListPreferences.save(displayVisualSettings.messageListSettings);
            k9StorageEditor.putBoolean("messageViewArchiveActionVisible", displayVisualSettings.isMessageViewArchiveActionVisible);
            k9StorageEditor.putBoolean("messageViewDeleteActionVisible", displayVisualSettings.isMessageViewDeleteActionVisible);
            k9StorageEditor.putBoolean("messageViewMoveActionVisible", displayVisualSettings.isMessageViewMoveActionVisible);
            k9StorageEditor.putBoolean("messageViewCopyActionVisible", displayVisualSettings.isMessageViewCopyActionVisible);
            k9StorageEditor.putBoolean("messageViewSpamActionVisible", displayVisualSettings.isMessageViewSpamActionVisible);
            Sink$CC.verbose$default(defaultDisplayVisualSettingsPreferenceManager.logger, "DefaultDisplayVisualSettingsPreferenceManager", null, new AccountSetupNavHostKt$$ExternalSyntheticLambda31(k9StorageEditor.commit(), 5), 2);
            mutexImpl.unlock(null);
            return Unit.INSTANCE;
        } catch (Throwable th) {
            mutexImpl.unlock(null);
            throw th;
        }
    }

    private final Object invokeSuspend$net$thunderbird$core$preference$interaction$DefaultInteractionSettingsPreferenceManager$writeConfig$2(Object obj) {
        DefaultInteractionSettingsPreferenceManager defaultInteractionSettingsPreferenceManager;
        MutexImpl mutexImpl;
        InteractionSettings interactionSettings;
        int i = this.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            DefaultInteractionSettingsPreferenceManager defaultInteractionSettingsPreferenceManager2 = (DefaultInteractionSettingsPreferenceManager) this.$inPredictiveBack$delegate;
            MutexImpl mutexImpl2 = defaultInteractionSettingsPreferenceManager2.mutex;
            InteractionSettings interactionSettings2 = (InteractionSettings) this.$progress$delegate;
            this.L$0 = mutexImpl2;
            this.$composeNavigator = defaultInteractionSettingsPreferenceManager2;
            this.$currentBackStack$delegate = interactionSettings2;
            this.label = 1;
            Object lock = mutexImpl2.lock(this);
            CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
            if (lock == coroutineSingletons) {
                return coroutineSingletons;
            }
            defaultInteractionSettingsPreferenceManager = defaultInteractionSettingsPreferenceManager2;
            mutexImpl = mutexImpl2;
            interactionSettings = interactionSettings2;
        } else {
            if (i != 1) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m$2("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            interactionSettings = (InteractionSettings) this.$currentBackStack$delegate;
            defaultInteractionSettingsPreferenceManager = (DefaultInteractionSettingsPreferenceManager) this.$composeNavigator;
            mutexImpl = (MutexImpl) this.L$0;
            ResultKt.throwOnFailure(obj);
        }
        try {
            K9StorageEditor k9StorageEditor = defaultInteractionSettingsPreferenceManager.storageEditor;
            boolean z = interactionSettings.useVolumeKeysForNavigation;
            SwipeActions swipeActions = interactionSettings.swipeActions;
            k9StorageEditor.putBoolean("useVolumeKeysForNavigation", z);
            k9StorageEditor.putString("messageViewPostDeleteAction", interactionSettings.messageViewPostRemoveNavigation);
            k9StorageEditor.putString("messageViewPostMarkAsReadAction", interactionSettings.messageViewPostMarkAsUnreadNavigation.name());
            k9StorageEditor.putString("swipeLeftAction", swipeActions.leftAction.name());
            k9StorageEditor.putString("swipeRightAction", swipeActions.rightAction.name());
            k9StorageEditor.putBoolean("confirmDelete", interactionSettings.isConfirmDelete);
            k9StorageEditor.putBoolean("confirmDiscardMessage", interactionSettings.isConfirmDiscardMessage);
            k9StorageEditor.putBoolean("confirmDeleteStarred", interactionSettings.isConfirmDeleteStarred);
            k9StorageEditor.putBoolean("confirmSpam", interactionSettings.isConfirmSpam);
            k9StorageEditor.putBoolean("confirmDeleteFromNotification", interactionSettings.isConfirmDeleteFromNotification);
            k9StorageEditor.putBoolean("confirmMarkAllRead", interactionSettings.isConfirmMarkAllRead);
            Sink$CC.verbose$default(defaultInteractionSettingsPreferenceManager.logger, "DefaultInteractionSettingsPreferenceManager", null, new AccountSetupNavHostKt$$ExternalSyntheticLambda31(k9StorageEditor.commit(), 7), 2);
            mutexImpl.unlock(null);
            return Unit.INSTANCE;
        } catch (Throwable th) {
            mutexImpl.unlock(null);
            throw th;
        }
    }

    private final Object invokeSuspend$net$thunderbird$core$preference$network$DefaultNetworkSettingsPreferenceManager$writeConfig$2(Object obj) {
        DefaultNetworkSettingsPreferenceManager defaultNetworkSettingsPreferenceManager;
        MutexImpl mutexImpl;
        NetworkSettings networkSettings;
        int i = this.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            DefaultNetworkSettingsPreferenceManager defaultNetworkSettingsPreferenceManager2 = (DefaultNetworkSettingsPreferenceManager) this.$inPredictiveBack$delegate;
            MutexImpl mutexImpl2 = defaultNetworkSettingsPreferenceManager2.mutex;
            NetworkSettings networkSettings2 = (NetworkSettings) this.$progress$delegate;
            this.L$0 = mutexImpl2;
            this.$composeNavigator = defaultNetworkSettingsPreferenceManager2;
            this.$currentBackStack$delegate = networkSettings2;
            this.label = 1;
            Object lock = mutexImpl2.lock(this);
            CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
            if (lock == coroutineSingletons) {
                return coroutineSingletons;
            }
            defaultNetworkSettingsPreferenceManager = defaultNetworkSettingsPreferenceManager2;
            mutexImpl = mutexImpl2;
            networkSettings = networkSettings2;
        } else {
            if (i != 1) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m$2("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            networkSettings = (NetworkSettings) this.$currentBackStack$delegate;
            defaultNetworkSettingsPreferenceManager = (DefaultNetworkSettingsPreferenceManager) this.$composeNavigator;
            mutexImpl = (MutexImpl) this.L$0;
            ResultKt.throwOnFailure(obj);
        }
        try {
            defaultNetworkSettingsPreferenceManager.storageEditor.putString("backgroundOperations", networkSettings.backgroundOps.name());
            Sink$CC.verbose$default(defaultNetworkSettingsPreferenceManager.logger, "DefaultNetworkSettingsPreferenceManager", null, new AccountSetupNavHostKt$$ExternalSyntheticLambda31(defaultNetworkSettingsPreferenceManager.storageEditor.commit(), 8), 2);
            mutexImpl.unlock(null);
            return Unit.INSTANCE;
        } catch (Throwable th) {
            mutexImpl.unlock(null);
            throw th;
        }
    }

    private final Object invokeSuspend$net$thunderbird$core$preference$notification$DefaultNotificationPreferenceManager$save$2(Object obj) {
        MutexImpl mutexImpl;
        NotificationPreference notificationPreference;
        DefaultNotificationPreferenceManager defaultNotificationPreferenceManager;
        Object value;
        NotificationPreference notificationPreference2 = (NotificationPreference) this.$progress$delegate;
        DefaultNotificationPreferenceManager defaultNotificationPreferenceManager2 = (DefaultNotificationPreferenceManager) this.$inPredictiveBack$delegate;
        int i = this.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            MutexImpl mutexImpl2 = defaultNotificationPreferenceManager2.mutex;
            this.L$0 = mutexImpl2;
            this.$composeNavigator = defaultNotificationPreferenceManager2;
            this.$currentBackStack$delegate = notificationPreference2;
            this.label = 1;
            Object lock = mutexImpl2.lock(this);
            CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
            if (lock == coroutineSingletons) {
                return coroutineSingletons;
            }
            mutexImpl = mutexImpl2;
            notificationPreference = notificationPreference2;
            defaultNotificationPreferenceManager = defaultNotificationPreferenceManager2;
        } else {
            if (i != 1) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m$2("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            notificationPreference = (NotificationPreference) this.$currentBackStack$delegate;
            defaultNotificationPreferenceManager = (DefaultNotificationPreferenceManager) this.$composeNavigator;
            mutexImpl = (MutexImpl) this.L$0;
            ResultKt.throwOnFailure(obj);
        }
        try {
            K9StorageEditor k9StorageEditor = defaultNotificationPreferenceManager.storageEditor;
            k9StorageEditor.putString("quietTimeEnds", notificationPreference.quietTimeEnds);
            k9StorageEditor.putString("quietTimeStarts", notificationPreference.quietTimeStarts);
            k9StorageEditor.putBoolean("quietTimeEnabled", notificationPreference.isQuietTimeEnabled);
            k9StorageEditor.putBoolean("notificationDuringQuietTimeEnabled", notificationPreference.isNotificationDuringQuietTimeEnabled);
            List list = NotificationActionTokens.DEFAULT_ORDER;
            List list2 = notificationPreference.messageActionsOrder;
            list2.getClass();
            k9StorageEditor.putString("messageActionsOrder", CollectionsKt.joinToString$default(list2, ",", null, null, null, 62));
            k9StorageEditor.putInt("messageActionsCutoff", notificationPreference.messageActionsCutoff);
            k9StorageEditor.putBoolean("isSummaryDeleteActionEnabled", notificationPreference.isSummaryDeleteActionEnabled);
            k9StorageEditor.putBoolean("showContactPictureInNotification", notificationPreference.isShowContactPictureInNotification);
            k9StorageEditor.putString("notificationQuickDelete", notificationPreference.notificationQuickDeleteBehaviour.name());
            k9StorageEditor.putString("lockScreenNotificationVisibility", notificationPreference.lockScreenNotificationVisibility.name());
            Sink$CC.verbose$default(defaultNotificationPreferenceManager.logger, "DefaultNotificationPreferenceManager", null, new AccountSetupNavHostKt$$ExternalSyntheticLambda31(k9StorageEditor.commit(), 9), 2);
            mutexImpl.unlock(null);
            StateFlowImpl stateFlowImpl = defaultNotificationPreferenceManager2.configState;
            do {
                value = stateFlowImpl.getValue();
            } while (!stateFlowImpl.compareAndSet(value, notificationPreference2));
            return Unit.INSTANCE;
        } catch (Throwable th) {
            mutexImpl.unlock(null);
            throw th;
        }
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        int i = this.$r8$classId;
        Object obj2 = this.$progress$delegate;
        switch (i) {
            case 0:
                NavHostKt$NavHost$25$1 navHostKt$NavHost$25$1 = new NavHostKt$NavHost$25$1((ComposeNavigator) this.$composeNavigator, (MutableState) this.$currentBackStack$delegate, (ParcelableSnapshotMutableFloatState) obj2, (MutableState) this.$inPredictiveBack$delegate, continuation);
                navHostKt$NavHost$25$1.L$0 = obj;
                return navHostKt$NavHost$25$1;
            case 1:
                return new NavHostKt$NavHost$25$1((SeekableTransitionState) this.$inPredictiveBack$delegate, this.L$0, (Transition) obj2, continuation);
            case 2:
                NavHostKt$NavHost$25$1 navHostKt$NavHost$25$12 = new NavHostKt$NavHost$25$1((PointerInputScope) this.$composeNavigator, (TextFieldPressGestureFilterKt$tapPressTextFieldModifier$1$2$1.AnonymousClass1) this.$currentBackStack$delegate, (BasicTextKt$$ExternalSyntheticLambda0) this.$inPredictiveBack$delegate, (PressGestureScopeImpl) obj2, continuation, 2);
                navHostKt$NavHost$25$12.L$0 = obj;
                return navHostKt$NavHost$25$12;
            case 3:
                NavHostKt$NavHost$25$1 navHostKt$NavHost$25$13 = new NavHostKt$NavHost$25$1((TrackpadScrollingLogic) this.$currentBackStack$delegate, (ScrollingLogic) this.$inPredictiveBack$delegate, (Ref$ObjectRef) obj2, continuation, 3);
                navHostKt$NavHost$25$13.L$0 = obj;
                return navHostKt$NavHost$25$13;
            case 4:
                return new NavHostKt$NavHost$25$1((LegacyTextFieldState) this.L$0, (MutableState) this.$currentBackStack$delegate, (TextInputService) this.$composeNavigator, (TextFieldSelectionManager) this.$inPredictiveBack$delegate, (ImeOptions) obj2, continuation);
            case 5:
                return new NavHostKt$NavHost$25$1((BringIntoViewRequesterImpl) this.L$0, (TextFieldValue) this.$composeNavigator, (LegacyTextFieldState) this.$currentBackStack$delegate, (TextLayoutResultProxy) this.$inPredictiveBack$delegate, (OffsetMapping) obj2, continuation, 5);
            case 6:
                NavHostKt$NavHost$25$1 navHostKt$NavHost$25$14 = new NavHostKt$NavHost$25$1((AndroidPlatformTextInputSession) this.$composeNavigator, (Function1) this.$currentBackStack$delegate, (AndroidLegacyPlatformTextInputServiceAdapter) this.$inPredictiveBack$delegate, (LegacyAdaptingPlatformTextInputModifierNode) obj2, continuation, 6);
                navHostKt$NavHost$25$14.L$0 = obj;
                return navHostKt$NavHost$25$14;
            case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                NavHostKt$NavHost$25$1 navHostKt$NavHost$25$15 = new NavHostKt$NavHost$25$1((Recomposer) this.$currentBackStack$delegate, (Recomposer$runRecomposeAndApplyChanges$2) this.$inPredictiveBack$delegate, (BroadcastFrameClock) obj2, continuation, 7);
                navHostKt$NavHost$25$15.L$0 = obj;
                return navHostKt$NavHost$25$15;
            case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                NavHostKt$NavHost$25$1 navHostKt$NavHost$25$16 = new NavHostKt$NavHost$25$1((Function0) obj2, continuation, 8);
                navHostKt$NavHost$25$16.$inPredictiveBack$delegate = obj;
                return navHostKt$NavHost$25$16;
            case 9:
                NavHostKt$NavHost$25$1 navHostKt$NavHost$25$17 = new NavHostKt$NavHost$25$1((List) this.$inPredictiveBack$delegate, (ArrayList) obj2, continuation, 9);
                navHostKt$NavHost$25$17.$currentBackStack$delegate = obj;
                return navHostKt$NavHost$25$17;
            case 10:
                NavHostKt$NavHost$25$1 navHostKt$NavHost$25$18 = new NavHostKt$NavHost$25$1((Lifecycle) this.$composeNavigator, (Lifecycle.State) this.$currentBackStack$delegate, (CoroutineContext) this.$inPredictiveBack$delegate, (Flow) obj2, continuation, 10);
                navHostKt$NavHost$25$18.L$0 = obj;
                return navHostKt$NavHost$25$18;
            case 11:
                NavHostKt$NavHost$25$1 navHostKt$NavHost$25$19 = new NavHostKt$NavHost$25$1((Base64Util) obj2, continuation, 11);
                navHostKt$NavHost$25$19.L$0 = obj;
                return navHostKt$NavHost$25$19;
            case BasicTextKt.ShiftMeta /* 12 */:
                return new NavHostKt$NavHost$25$1((Authenticator) this.L$0, (Function1) this.$composeNavigator, (Activity) obj2, (MutableState) this.$currentBackStack$delegate, (MutableState) this.$inPredictiveBack$delegate, continuation);
            case 13:
                return new NavHostKt$NavHost$25$1((QrCodeScannerViewModel) this.L$0, continuation, (ManagedActivityResultLauncher) this.$composeNavigator, (Context) this.$currentBackStack$delegate, (Function1) this.$inPredictiveBack$delegate, (Function0) obj2);
            case 14:
                return new NavHostKt$NavHost$25$1((UnreadWidgetProvider) this.L$0, (Context) this.$composeNavigator, (AppWidgetManager) this.$currentBackStack$delegate, (int[]) this.$inPredictiveBack$delegate, (BroadcastReceiver.PendingResult) obj2, continuation, 14);
            case OffsetKt.Horizontal /* 15 */:
                return new NavHostKt$NavHost$25$1((DefaultOutboxFolderManager) this.$inPredictiveBack$delegate, (AccountId) obj2, continuation, 15);
            case 16:
                return new NavHostKt$NavHost$25$1((DefaultGeneralSettingsManager) this.$inPredictiveBack$delegate, (GeneralSettings) obj2, continuation, 16);
            case 17:
                NavHostKt$NavHost$25$1 navHostKt$NavHost$25$110 = new NavHostKt$NavHost$25$1((LiveDataScopeImpl) this.$inPredictiveBack$delegate, (DI$$ExternalSyntheticLambda0) obj2, continuation, 17);
                navHostKt$NavHost$25$110.L$0 = obj;
                return navHostKt$NavHost$25$110;
            case 18:
                NavHostKt$NavHost$25$1 navHostKt$NavHost$25$111 = new NavHostKt$NavHost$25$1((AutocryptSetupTransferLiveEvent) this.$currentBackStack$delegate, (AutocryptSetupMessage) this.$inPredictiveBack$delegate, (LegacyAccountDto) obj2, continuation, 18);
                navHostKt$NavHost$25$111.L$0 = obj;
                return navHostKt$NavHost$25$111;
            case 19:
                return new NavHostKt$NavHost$25$1((AndroidFileLogSink) this.$inPredictiveBack$delegate, (LogEvent) obj2, continuation, 19);
            case 20:
                return new NavHostKt$NavHost$25$1((DefaultDebuggingSettingsPreferenceManager) this.$inPredictiveBack$delegate, (DebuggingSettings) obj2, continuation, 20);
            case 21:
                return new NavHostKt$NavHost$25$1((DefaultDisplayCoreSettingsPreferenceManager) this.$inPredictiveBack$delegate, (DisplayCoreSettings) obj2, continuation, 21);
            case 22:
                return new NavHostKt$NavHost$25$1((DefaultDisplayInboxSettingsPreferenceManager) this.$inPredictiveBack$delegate, (DisplayInboxSettings) obj2, continuation, 22);
            case 23:
                return new NavHostKt$NavHost$25$1((DefaultDisplayMiscSettingsPreferenceManager) this.$inPredictiveBack$delegate, (DisplayMiscSettings) obj2, continuation, 23);
            case 24:
                return new NavHostKt$NavHost$25$1((DefaultDisplayVisualSettingsPreferenceManager) this.$inPredictiveBack$delegate, (DisplayVisualSettings) obj2, continuation, 24);
            case 25:
                return new NavHostKt$NavHost$25$1((DefaultInteractionSettingsPreferenceManager) this.$inPredictiveBack$delegate, (InteractionSettings) obj2, continuation, 25);
            case 26:
                return new NavHostKt$NavHost$25$1((DefaultNetworkSettingsPreferenceManager) this.$inPredictiveBack$delegate, (NetworkSettings) obj2, continuation, 26);
            case 27:
                return new NavHostKt$NavHost$25$1((DefaultNotificationPreferenceManager) this.$inPredictiveBack$delegate, (NotificationPreference) obj2, continuation, 27);
            default:
                return new NavHostKt$NavHost$25$1((DefaultPrivacySettingsPreferenceManager) this.$inPredictiveBack$delegate, (PrivacySettings) obj2, continuation, 28);
        }
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        Unit unit = Unit.INSTANCE;
        switch (i) {
            case 6:
                ((NavHostKt$NavHost$25$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(unit);
                break;
            case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                ((NavHostKt$NavHost$25$1) create((FlowCollector) obj, (Continuation) obj2)).invokeSuspend(unit);
                break;
            case 13:
                ((NavHostKt$NavHost$25$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(unit);
                break;
        }
        return ((NavHostKt$NavHost$25$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(unit);
    }

    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions count limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:228:0x0424  */
    /* JADX WARN: Removed duplicated region for block: B:231:0x042f A[Catch: all -> 0x03c9, TRY_LEAVE, TryCatch #2 {all -> 0x03c9, blocks: (B:223:0x03e0, B:224:0x0425, B:226:0x0414, B:231:0x042f, B:236:0x03c5, B:238:0x03ff), top: B:215:0x03af }] */
    /* JADX WARN: Removed duplicated region for block: B:284:0x0510 A[Catch: all -> 0x0475, TryCatch #9 {all -> 0x0475, blocks: (B:255:0x0470, B:282:0x0501, B:284:0x0510, B:286:0x051e, B:288:0x0524, B:290:0x052a, B:292:0x052e, B:294:0x0531, B:299:0x0534, B:301:0x0537), top: B:251:0x0462 }] */
    /* JADX WARN: Removed duplicated region for block: B:303:0x0552  */
    /* JADX WARN: Removed duplicated region for block: B:392:0x0785  */
    /* JADX WARN: Removed duplicated region for block: B:396:0x0739  */
    /* JADX WARN: Removed duplicated region for block: B:401:0x07de  */
    /* JADX WARN: Removed duplicated region for block: B:435:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:439:0x08f3  */
    /* JADX WARN: Removed duplicated region for block: B:474:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r17v11, types: [app.k9mail.autodiscovery.api.AutoDiscoveryResult] */
    /* JADX WARN: Type inference failed for: r2v12, types: [androidx.activity.OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0, int] */
    /* JADX WARN: Type inference failed for: r5v0 */
    /* JADX WARN: Type inference failed for: r5v20, types: [kotlinx.coroutines.Job] */
    /* JADX WARN: Type inference failed for: r5v27, types: [androidx.camera.view.PreviewView$1] */
    /* JADX WARN: Type inference failed for: r5v30, types: [androidx.camera.view.PreviewView$1, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r5v57 */
    /* JADX WARN: Type inference failed for: r5v58 */
    /* JADX WARN: Type inference failed for: r6v30, types: [app.k9mail.autodiscovery.api.AutoDiscoveryResult$UnexpectedException] */
    /* JADX WARN: Type inference failed for: r9v0, types: [boolean] */
    /* JADX WARN: Type inference failed for: r9v44 */
    /* JADX WARN: Type inference failed for: r9v45, types: [int] */
    /* JADX WARN: Type inference failed for: r9v46 */
    /* JADX WARN: Type inference failed for: r9v47, types: [int] */
    /* JADX WARN: Type inference failed for: r9v48 */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:101:0x026c -> B:89:0x026d). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:104:0x0281 -> B:92:0x0282). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:107:0x027b -> B:92:0x0282). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:196:0x042d -> B:197:0x0414). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:203:0x0441 -> B:197:0x0414). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:355:0x0751 -> B:345:0x0753). Please report as a decompilation issue!!! */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r26) {
        /*
            Method dump skipped, instructions count: 2720
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.navigation.compose.NavHostKt$NavHost$25$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NavHostKt$NavHost$25$1(LegacyTextFieldState legacyTextFieldState, MutableState mutableState, TextInputService textInputService, TextFieldSelectionManager textFieldSelectionManager, ImeOptions imeOptions, Continuation continuation) {
        super(2, continuation);
        this.$r8$classId = 4;
        this.L$0 = legacyTextFieldState;
        this.$currentBackStack$delegate = mutableState;
        this.$composeNavigator = textInputService;
        this.$inPredictiveBack$delegate = textFieldSelectionManager;
        this.$progress$delegate = imeOptions;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NavHostKt$NavHost$25$1(ComposeNavigator composeNavigator, MutableState mutableState, ParcelableSnapshotMutableFloatState parcelableSnapshotMutableFloatState, MutableState mutableState2, Continuation continuation) {
        super(2, continuation);
        this.$r8$classId = 0;
        this.$composeNavigator = composeNavigator;
        this.$currentBackStack$delegate = mutableState;
        this.$progress$delegate = parcelableSnapshotMutableFloatState;
        this.$inPredictiveBack$delegate = mutableState2;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NavHostKt$NavHost$25$1(SeekableTransitionState seekableTransitionState, Object obj, Transition transition, Continuation continuation) {
        super(2, continuation);
        this.$r8$classId = 1;
        this.$inPredictiveBack$delegate = seekableTransitionState;
        this.L$0 = obj;
        this.$progress$delegate = transition;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ NavHostKt$NavHost$25$1(Object obj, Object obj2, Object obj3, Object obj4, Object obj5, Continuation continuation, int i) {
        super(2, continuation);
        this.$r8$classId = i;
        this.L$0 = obj;
        this.$composeNavigator = obj2;
        this.$currentBackStack$delegate = obj3;
        this.$inPredictiveBack$delegate = obj4;
        this.$progress$delegate = obj5;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ NavHostKt$NavHost$25$1(Object obj, Object obj2, Object obj3, Object obj4, Continuation continuation, int i) {
        super(2, continuation);
        this.$r8$classId = i;
        this.$composeNavigator = obj;
        this.$currentBackStack$delegate = obj2;
        this.$inPredictiveBack$delegate = obj3;
        this.$progress$delegate = obj4;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ NavHostKt$NavHost$25$1(Object obj, Object obj2, Object obj3, Continuation continuation, int i) {
        super(2, continuation);
        this.$r8$classId = i;
        this.$currentBackStack$delegate = obj;
        this.$inPredictiveBack$delegate = obj2;
        this.$progress$delegate = obj3;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ NavHostKt$NavHost$25$1(Object obj, Object obj2, Continuation continuation, int i) {
        super(2, continuation);
        this.$r8$classId = i;
        this.$inPredictiveBack$delegate = obj;
        this.$progress$delegate = obj2;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ NavHostKt$NavHost$25$1(Object obj, Continuation continuation, int i) {
        super(2, continuation);
        this.$r8$classId = i;
        this.$progress$delegate = obj;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NavHostKt$NavHost$25$1(Authenticator authenticator, Function1 function1, Activity activity, MutableState mutableState, MutableState mutableState2, Continuation continuation) {
        super(2, continuation);
        this.$r8$classId = 12;
        this.L$0 = authenticator;
        this.$composeNavigator = function1;
        this.$progress$delegate = activity;
        this.$currentBackStack$delegate = mutableState;
        this.$inPredictiveBack$delegate = mutableState2;
    }
}
