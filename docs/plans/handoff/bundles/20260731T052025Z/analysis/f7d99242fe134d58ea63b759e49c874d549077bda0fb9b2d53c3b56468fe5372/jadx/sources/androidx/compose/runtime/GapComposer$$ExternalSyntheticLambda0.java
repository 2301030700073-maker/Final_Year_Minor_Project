package androidx.compose.runtime;

import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.os.PowerManager;
import android.os.SystemClock;
import android.os.Trace;
import android.util.Log;
import androidx.camera.camera2.adapter.CameraCoordinatorAdapter;
import androidx.camera.camera2.adapter.CameraFactoryProvider;
import androidx.camera.camera2.config.DaggerCameraAppComponent$CameraAppComponentImpl;
import androidx.camera.camera2.impl.CameraInteropStateCallbackRepository$CameraDeviceStateCallbacks;
import androidx.camera.camera2.pipe.CameraPipe$CameraInteropConfig;
import androidx.camera.camera2.pipe.CameraPipe$Config;
import androidx.camera.camera2.pipe.CameraPipe$ThreadConfig;
import androidx.camera.camera2.pipe.CameraPipeImpl;
import androidx.camera.camera2.pipe.CameraPipeKt;
import androidx.camera.camera2.pipe.core.DurationNs;
import androidx.camera.core.CameraXConfig;
import androidx.camera.core.impl.AutoValue_CameraThreadConfig;
import androidx.camera.core.impl.utils.ContextUtil;
import androidx.camera.core.impl.utils.executor.SequentialExecutor;
import androidx.cardview.widget.CardView;
import androidx.collection.MutableIntObjectMap;
import androidx.compose.animation.core.Animatable;
import androidx.compose.animation.core.ArcSplineKt;
import androidx.compose.animation.core.InfiniteRepeatableSpec;
import androidx.compose.animation.core.InfiniteTransition;
import androidx.compose.animation.core.SpringSpec;
import androidx.compose.animation.core.TargetBasedAnimation;
import androidx.compose.material3.AppBarKt$$ExternalSyntheticLambda0;
import androidx.compose.material3.ModalBottomSheetKt$ModalBottomSheet$5$1;
import androidx.compose.material3.SheetState;
import androidx.compose.material3.SheetValue;
import androidx.compose.material3.ThumbNode$onAttach$1;
import androidx.compose.runtime.composer.gapbuffer.SlotReader;
import androidx.compose.runtime.composer.gapbuffer.changelist.ChangeList;
import androidx.compose.runtime.composer.gapbuffer.changelist.ComposerChangeListWriter;
import androidx.compose.ui.node.NodeChain;
import androidx.compose.ui.text.input.TextFieldValue;
import androidx.datastore.core.Api26Impl;
import androidx.datastore.preferences.PreferencesProto$Value;
import androidx.datastore.preferences.protobuf.Utf8;
import androidx.work.ForegroundInfo;
import androidx.work.Logger$LogcatLogger;
import androidx.work.impl.Processor;
import androidx.work.impl.WorkerWrapper;
import androidx.work.impl.foreground.SystemForegroundDispatcher;
import androidx.work.impl.foreground.SystemForegroundService;
import androidx.work.impl.model.WorkGenerationalId;
import androidx.work.impl.model.WorkSpec;
import androidx.work.impl.utils.WakeLocks;
import androidx.work.impl.utils.WorkForegroundUpdater;
import app.k9mail.legacy.mailstore.ListenableMessageStore;
import app.k9mail.legacy.ui.folder.DefaultDisplayFolderRepository;
import app.k9mail.legacy.ui.folder.DefaultDisplayFolderRepository$getDisplayFoldersFlow$1$$ExternalSyntheticLambda0;
import app.k9mail.legacy.ui.folder.DefaultDisplayFolderRepository$getDisplayFoldersFlow$1$folderStatusChangedListener$1;
import com.eygraber.uri.Uri;
import com.fsck.k9.controller.MessagingController;
import java.util.Arrays;
import java.util.UUID;
import kotlin.SynchronizedLazyImpl;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Reflection;
import kotlin.text.StringsKt__IndentKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.JobKt;
import net.thunderbird.core.ui.setting.SettingValue;
import net.thunderbird.feature.mail.message.list.ui.state.sideeffect.MessageListStateSideEffectHandler;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.jsoup.helper.Validate;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class GapComposer$$ExternalSyntheticLambda0 implements Function0 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;
    public final /* synthetic */ Object f$1;
    public final /* synthetic */ Object f$2;
    public final /* synthetic */ Object f$3;

    public /* synthetic */ GapComposer$$ExternalSyntheticLambda0(Object obj, Object obj2, Object obj3, Object obj4, int i) {
        this.$r8$classId = i;
        this.f$0 = obj;
        this.f$1 = obj2;
        this.f$2 = obj3;
        this.f$3 = obj4;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        Continuation continuation = null;
        switch (this.$r8$classId) {
            case 0:
                GapComposer gapComposer = (GapComposer) this.f$0;
                ChangeList changeList = (ChangeList) this.f$1;
                SlotReader slotReader = (SlotReader) this.f$2;
                MovableContentStateReference movableContentStateReference = (MovableContentStateReference) this.f$3;
                ComposerChangeListWriter composerChangeListWriter = gapComposer.changeListWriter;
                ChangeList changeList2 = composerChangeListWriter.changeList;
                try {
                    composerChangeListWriter.changeList = changeList;
                    SlotReader slotReader2 = gapComposer.reader;
                    int[] iArr = gapComposer.nodeCountOverrides;
                    MutableIntObjectMap mutableIntObjectMap = gapComposer.providerUpdates;
                    gapComposer.nodeCountOverrides = null;
                    gapComposer.providerUpdates = null;
                    try {
                        gapComposer.reader = slotReader;
                        boolean z = composerChangeListWriter.implicitRootStart;
                        try {
                            composerChangeListWriter.implicitRootStart = false;
                            gapComposer.invokeMovableContentLambda(movableContentStateReference.content, movableContentStateReference.locals, movableContentStateReference.parameter, true);
                            composerChangeListWriter.implicitRootStart = z;
                            gapComposer.reader = slotReader2;
                            gapComposer.nodeCountOverrides = iArr;
                            gapComposer.providerUpdates = mutableIntObjectMap;
                            composerChangeListWriter.changeList = changeList2;
                            return Unit.INSTANCE;
                        } catch (Throwable th) {
                            composerChangeListWriter.implicitRootStart = z;
                            throw th;
                        }
                    } catch (Throwable th2) {
                        gapComposer.reader = slotReader2;
                        gapComposer.nodeCountOverrides = iArr;
                        gapComposer.providerUpdates = mutableIntObjectMap;
                        throw th2;
                    }
                } catch (Throwable th3) {
                    composerChangeListWriter.changeList = changeList2;
                    throw th3;
                }
            case 1:
                Context context = (Context) this.f$0;
                AutoValue_CameraThreadConfig autoValue_CameraThreadConfig = (AutoValue_CameraThreadConfig) this.f$1;
                NodeChain nodeChain = (NodeChain) this.f$2;
                CardView.AnonymousClass1 anonymousClass1 = (CardView.AnonymousClass1) this.f$3;
                Trace.beginSection("CameraFactoryAdapter#appComponent");
                long elapsedRealtimeNanos = SystemClock.elapsedRealtimeNanos();
                DaggerCameraAppComponent$CameraAppComponentImpl daggerCameraAppComponent$CameraAppComponentImpl = new DaggerCameraAppComponent$CameraAppComponentImpl(new Uri.Builder(context, autoValue_CameraThreadConfig, (CameraPipeImpl) ((SynchronizedLazyImpl) nodeChain.layoutNode).getValue(), anonymousClass1, (CameraCoordinatorAdapter) nodeChain.tail, (CameraXConfig) nodeChain.outerCoordinator));
                if (Utf8.SafeProcessor.isDebugEnabled("CXCP")) {
                    Log.d("CXCP", "Created CameraFactoryAdapter in ".concat(String.format(null, "%.3f ms", Arrays.copyOf(new Object[]{Double.valueOf((SystemClock.elapsedRealtimeNanos() - elapsedRealtimeNanos) / 1000000.0d)}, 1))));
                }
                return daggerCameraAppComponent$CameraAppComponentImpl;
            case 2:
                CameraFactoryProvider cameraFactoryProvider = (CameraFactoryProvider) this.f$0;
                Context context2 = (Context) this.f$1;
                AutoValue_CameraThreadConfig autoValue_CameraThreadConfig2 = (AutoValue_CameraThreadConfig) this.f$2;
                DurationNs durationNs = (DurationNs) this.f$3;
                try {
                    Trace.beginSection("Create CameraPipe");
                    long elapsedRealtimeNanos2 = SystemClock.elapsedRealtimeNanos();
                    Context persistentApplicationContext = ContextUtil.getPersistentApplicationContext(context2);
                    persistentApplicationContext.getClass();
                    CameraPipe$ThreadConfig cameraPipe$ThreadConfig = new CameraPipe$ThreadConfig(new SequentialExecutor(autoValue_CameraThreadConfig2.cameraExecutor), 119);
                    CardView.AnonymousClass1 anonymousClass12 = cameraFactoryProvider.sharedInteropCallbacks;
                    CameraPipeImpl CameraPipe = CameraPipeKt.CameraPipe(new CameraPipe$Config(persistentApplicationContext, cameraPipe$ThreadConfig, new CameraPipe$CameraInteropConfig((CameraInteropStateCallbackRepository$CameraDeviceStateCallbacks) anonymousClass12.mCardBackground, (CardView.AnonymousClass1) anonymousClass12.this$0, durationNs)));
                    if (Utf8.SafeProcessor.isDebugEnabled("CXCP")) {
                        Log.d("CXCP", "Created CameraPipe in ".concat(String.format(null, "%.3f ms", Arrays.copyOf(new Object[]{Double.valueOf((SystemClock.elapsedRealtimeNanos() - elapsedRealtimeNanos2) / 1000000.0d)}, 1))));
                    }
                    return CameraPipe;
                } finally {
                    Trace.endSection();
                }
            case 3:
                Float f = (Float) this.f$0;
                InfiniteTransition.TransitionAnimationState transitionAnimationState = (InfiniteTransition.TransitionAnimationState) this.f$1;
                Float f2 = (Float) this.f$2;
                InfiniteRepeatableSpec infiniteRepeatableSpec = (InfiniteRepeatableSpec) this.f$3;
                if (!f.equals(transitionAnimationState.initialValue) || !f2.equals(transitionAnimationState.targetValue)) {
                    transitionAnimationState.initialValue = f;
                    transitionAnimationState.targetValue = f2;
                    transitionAnimationState.animation = new TargetBasedAnimation(infiniteRepeatableSpec, ArcSplineKt.FloatToVector, f, f2, null);
                    transitionAnimationState.this$0.refreshChildNeeded$delegate.setValue(Boolean.TRUE);
                    transitionAnimationState.isFinished = false;
                    transitionAnimationState.startOnTheNextFrame = true;
                }
                return Unit.INSTANCE;
            case 4:
                SheetState sheetState = (SheetState) this.f$0;
                SpringSpec springSpec = (SpringSpec) this.f$1;
                SpringSpec springSpec2 = (SpringSpec) this.f$2;
                SpringSpec springSpec3 = (SpringSpec) this.f$3;
                sheetState.showMotionSpec = springSpec;
                sheetState.hideMotionSpec = springSpec2;
                sheetState.anchoredDraggableMotionSpec = springSpec3;
                return Unit.INSTANCE;
            case 5:
                SheetState sheetState2 = (SheetState) this.f$0;
                CoroutineScope coroutineScope = (CoroutineScope) this.f$1;
                Animatable animatable = (Animatable) this.f$2;
                Function0 function0 = (Function0) this.f$3;
                if (((SheetValue) sheetState2.anchoredDraggableState.currentValue$delegate.getValue()) == SheetValue.Expanded) {
                    if (sheetState2.anchoredDraggableState.getAnchors().anchors.containsKey(SheetValue.PartiallyExpanded)) {
                        JobKt.launch$default(coroutineScope, null, null, new ThumbNode$onAttach$1(animatable, continuation, 24), 3);
                        JobKt.launch$default(coroutineScope, null, null, new ModalBottomSheetKt$ModalBottomSheet$5$1(sheetState2, null, 1), 3);
                        return Unit.INSTANCE;
                    }
                }
                JobKt.launch$default(coroutineScope, null, null, new ModalBottomSheetKt$ModalBottomSheet$5$1(sheetState2, null, 2), 3).invokeOnCompletion(new AppBarKt$$ExternalSyntheticLambda0(3, function0));
                return Unit.INSTANCE;
            case 6:
                return new SheetState((Function0) this.f$0, (Function0) this.f$1, (SheetValue) this.f$2, (Function1) this.f$3);
            case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                WorkForegroundUpdater workForegroundUpdater = (WorkForegroundUpdater) this.f$0;
                UUID uuid = (UUID) this.f$1;
                ForegroundInfo foregroundInfo = (ForegroundInfo) this.f$2;
                Context context3 = (Context) this.f$3;
                String uuid2 = uuid.toString();
                WorkSpec workSpec = workForegroundUpdater.mWorkSpecDao.getWorkSpec(uuid2);
                if (workSpec == null || workSpec.state.isFinished()) {
                    _UtilJvmKt$$ExternalSyntheticLambda0.m$2("Calls to setForegroundAsync() must complete before a ListenableWorker signals completion of work by returning an instance of Result.");
                } else {
                    Processor processor = workForegroundUpdater.mForegroundProcessor;
                    synchronized (processor.mLock) {
                        try {
                            Logger$LogcatLogger.get().info(Processor.TAG, "Moving WorkSpec (" + uuid2 + ") to the foreground");
                            WorkerWrapper workerWrapper = (WorkerWrapper) processor.mEnqueuedWorkMap.remove(uuid2);
                            if (workerWrapper != null) {
                                if (processor.mForegroundLock == null) {
                                    PowerManager.WakeLock newWakeLock = WakeLocks.newWakeLock(processor.mAppContext);
                                    processor.mForegroundLock = newWakeLock;
                                    newWakeLock.acquire();
                                }
                                processor.mForegroundWorkMap.put(uuid2, workerWrapper);
                                Intent createStartForegroundIntent = SystemForegroundDispatcher.createStartForegroundIntent(processor.mAppContext, Validate.generationalId(workerWrapper.workSpec), foregroundInfo);
                                Context context4 = processor.mAppContext;
                                if (Build.VERSION.SDK_INT >= 26) {
                                    Api26Impl.startForegroundService(context4, createStartForegroundIntent);
                                } else {
                                    context4.startService(createStartForegroundIntent);
                                }
                            }
                        } catch (Throwable th4) {
                            throw th4;
                        }
                    }
                    WorkGenerationalId generationalId = Validate.generationalId(workSpec);
                    String str = SystemForegroundDispatcher.TAG;
                    Intent intent = new Intent(context3, (Class<?>) SystemForegroundService.class);
                    intent.setAction("ACTION_NOTIFY");
                    intent.putExtra("KEY_NOTIFICATION_ID", foregroundInfo.mNotificationId);
                    intent.putExtra("KEY_FOREGROUND_SERVICE_TYPE", foregroundInfo.mForegroundServiceType);
                    intent.putExtra("KEY_NOTIFICATION", foregroundInfo.mNotification);
                    intent.putExtra("KEY_WORKSPEC_ID", generationalId.workSpecId);
                    intent.putExtra("KEY_GENERATION", generationalId.generation);
                    context3.startService(intent);
                }
                return null;
            case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                DefaultDisplayFolderRepository defaultDisplayFolderRepository = (DefaultDisplayFolderRepository) this.f$0;
                DefaultDisplayFolderRepository$getDisplayFoldersFlow$1$folderStatusChangedListener$1 defaultDisplayFolderRepository$getDisplayFoldersFlow$1$folderStatusChangedListener$1 = (DefaultDisplayFolderRepository$getDisplayFoldersFlow$1$folderStatusChangedListener$1) this.f$1;
                ListenableMessageStore listenableMessageStore = (ListenableMessageStore) this.f$2;
                DefaultDisplayFolderRepository$getDisplayFoldersFlow$1$$ExternalSyntheticLambda0 defaultDisplayFolderRepository$getDisplayFoldersFlow$1$$ExternalSyntheticLambda0 = (DefaultDisplayFolderRepository$getDisplayFoldersFlow$1$$ExternalSyntheticLambda0) this.f$3;
                ((MessagingController) defaultDisplayFolderRepository.messagingController).removeListener(defaultDisplayFolderRepository$getDisplayFoldersFlow$1$folderStatusChangedListener$1);
                listenableMessageStore.folderSettingsListener.remove(defaultDisplayFolderRepository$getDisplayFoldersFlow$1$$ExternalSyntheticLambda0);
                return Unit.INSTANCE;
            case 9:
                MessageListStateSideEffectHandler messageListStateSideEffectHandler = (MessageListStateSideEffectHandler) this.f$0;
                Object obj = this.f$1;
                Object obj2 = this.f$2;
                Object obj3 = this.f$3;
                return StringsKt__IndentKt.trimMargin$default(Reflection.getOrCreateKotlinClass(messageListStateSideEffectHandler.getClass()).getSimpleName() + ".handle() called with:\n                    |   event = " + obj + ",\n                    |   oldState = " + obj2 + ",\n                    |   newState = " + obj3 + ",\n                ");
            default:
                SettingValue.Text text = (SettingValue.Text) this.f$0;
                Function1 function1 = (Function1) this.f$1;
                MutableState mutableState = (MutableState) this.f$2;
                MutableState mutableState2 = (MutableState) this.f$3;
                String str2 = (String) text.transform.invoke(((TextFieldValue) mutableState.getValue()).annotatedString.text);
                Function1 function12 = text.validate;
                String str3 = (String) function12.invoke(str2);
                if (str3 == null) {
                    String str4 = text.id;
                    Function0 function02 = text.title;
                    Function0 function03 = text.description;
                    Function0 function04 = text.icon;
                    Function1 function13 = text.transform;
                    str2.getClass();
                    function1.invoke(new SettingValue.Text(str4, function02, function03, function04, str2, function13, function12));
                } else {
                    mutableState2.setValue(str3);
                }
                return Unit.INSTANCE;
        }
    }
}
