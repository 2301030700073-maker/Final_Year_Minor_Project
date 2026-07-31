package androidx.work.impl;

import android.content.Context;
import android.util.Size;
import android.view.ActionMode;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.widget.TooltipPopup;
import androidx.camera.camera2.impl.CameraCallbackMap;
import androidx.camera.camera2.pipe.RequestMetadata;
import androidx.camera.camera2.pipe.compat.AndroidFrameInfo;
import androidx.camera.core.DynamicRange;
import androidx.camera.core.SurfaceRequest;
import androidx.camera.core.impl.AbstractCameraPresenceSource$ObserverWrapper;
import androidx.camera.core.impl.CameraCaptureCallback;
import androidx.camera.core.impl.CameraInfoInternal;
import androidx.camera.core.impl.utils.executor.IoExecutor;
import androidx.camera.core.processing.DefaultSurfaceProcessor;
import androidx.camera.core.processing.SurfaceEdge;
import androidx.camera.core.processing.concurrent.DualSurfaceProcessor;
import androidx.camera.view.PreviewView$1$$ExternalSyntheticLambda2;
import androidx.camera.view.SurfaceViewImplementation;
import androidx.compose.foundation.layout.OffsetKt;
import androidx.compose.foundation.text.BasicTextKt;
import androidx.compose.foundation.text.contextmenu.internal.AndroidTextContextMenuToolbarProvider;
import androidx.compose.foundation.text.contextmenu.internal.FloatingTextActionModeCallback;
import androidx.compose.material3.IconKt$$ExternalSyntheticLambda1;
import androidx.concurrent.futures.CallbackToFutureAdapter$Completer;
import androidx.concurrent.futures.CallbackToFutureAdapter$SafeFuture;
import androidx.core.view.MenuHostHelper;
import androidx.datastore.preferences.PreferencesProto$Value;
import androidx.datastore.preferences.protobuf.Utf8;
import androidx.emoji2.text.EmojiCompat;
import androidx.emoji2.text.FontRequestEmojiCompatConfig;
import androidx.fragment.app.DefaultSpecialEffectsController;
import androidx.fragment.app.SpecialEffectsController$FragmentStateManagerOperation;
import androidx.lifecycle.LiveData;
import androidx.lifecycle.Observer;
import androidx.navigation.internal.NavContext;
import androidx.room.util.DBUtil;
import androidx.work.Configuration;
import androidx.work.Logger$LogcatLogger;
import androidx.work.Operation$State;
import androidx.work.impl.model.WorkGenerationalId;
import androidx.work.impl.model.WorkSpec;
import androidx.work.impl.model.WorkSpecDao_Impl;
import androidx.work.impl.model.WorkTagDao_Impl;
import androidx.work.impl.utils.EnqueueUtilsKt;
import com.beetstra.jutf7.Base64Util;
import com.fsck.k9.controller.MessagingController;
import com.fsck.k9.mailstore.LocalMessage;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.Callable;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ThreadPoolExecutor;
import kotlin.jvm.internal.Intrinsics;
import kotlin.math.MathKt;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.JobKt;
import net.thunderbird.core.android.account.LegacyAccountDto;
import okhttp3.Dispatcher;
import okio.Path;
import org.jsoup.helper.Validate;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class Processor$$ExternalSyntheticLambda1 implements Runnable {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;
    public final /* synthetic */ Object f$1;
    public final /* synthetic */ Object f$2;

    public /* synthetic */ Processor$$ExternalSyntheticLambda1(DualSurfaceProcessor dualSurfaceProcessor, DynamicRange dynamicRange, CallbackToFutureAdapter$Completer callbackToFutureAdapter$Completer) {
        this.$r8$classId = 8;
        Map map = Collections.EMPTY_MAP;
        this.f$0 = dualSurfaceProcessor;
        this.f$1 = dynamicRange;
        this.f$2 = callbackToFutureAdapter$Completer;
    }

    private final void run$androidx$emoji2$text$EmojiCompatInitializer$BackgroundDefaultLoader$$ExternalSyntheticLambda0() {
        NavContext navContext = (NavContext) this.f$0;
        final Operation$State operation$State = (Operation$State) this.f$1;
        final ThreadPoolExecutor threadPoolExecutor = (ThreadPoolExecutor) this.f$2;
        try {
            FontRequestEmojiCompatConfig create = MathKt.create(navContext.context);
            if (create == null) {
                throw new RuntimeException("EmojiCompat font provider not available on this device.");
            }
            FontRequestEmojiCompatConfig.FontRequestMetadataLoader fontRequestMetadataLoader = (FontRequestEmojiCompatConfig.FontRequestMetadataLoader) ((EmojiCompat.MetadataRepoLoader) create.identityHash);
            synchronized (fontRequestMetadataLoader.mLock) {
                fontRequestMetadataLoader.mExecutor = threadPoolExecutor;
            }
            ((EmojiCompat.MetadataRepoLoader) create.identityHash).load(new Operation$State() { // from class: androidx.emoji2.text.EmojiCompatInitializer$BackgroundDefaultLoader$1
                @Override // androidx.work.Operation$State
                public final void onFailed(Throwable th) {
                    ThreadPoolExecutor threadPoolExecutor2 = threadPoolExecutor;
                    try {
                        Operation$State.this.onFailed(th);
                    } finally {
                        threadPoolExecutor2.shutdown();
                    }
                }

                @Override // androidx.work.Operation$State
                public final void onLoaded(Dispatcher dispatcher) {
                    ThreadPoolExecutor threadPoolExecutor2 = threadPoolExecutor;
                    try {
                        Operation$State.this.onLoaded(dispatcher);
                    } finally {
                        threadPoolExecutor2.shutdown();
                    }
                }
            });
        } catch (Throwable th) {
            operation$State.onFailed(th);
            threadPoolExecutor.shutdown();
        }
    }

    private final void run$androidx$work$impl$WorkLauncherImpl$$ExternalSyntheticLambda0() {
        Base64Util base64Util = (Base64Util) this.f$0;
        StartStopToken startStopToken = (StartStopToken) this.f$1;
        final Processor processor = (Processor) base64Util.alphabet;
        processor.getClass();
        WorkGenerationalId workGenerationalId = startStopToken.id;
        final String str = workGenerationalId.workSpecId;
        final ArrayList arrayList = new ArrayList();
        WorkSpec workSpec = (WorkSpec) processor.mWorkDatabase.runInTransaction(new Callable() { // from class: androidx.work.impl.Processor$$ExternalSyntheticLambda0
            @Override // java.util.concurrent.Callable
            public final Object call() {
                WorkDatabase workDatabase = Processor.this.mWorkDatabase;
                WorkTagDao_Impl workTagDao = workDatabase.workTagDao();
                workTagDao.getClass();
                String str2 = str;
                str2.getClass();
                arrayList.addAll((List) DBUtil.performBlocking(workTagDao.__db, true, false, new IconKt$$ExternalSyntheticLambda1(str2, 24)));
                return workDatabase.workSpecDao().getWorkSpec(str2);
            }
        });
        int i = 0;
        if (workSpec == null) {
            Logger$LogcatLogger.get().warning(Processor.TAG, "Didn't find WorkSpec for id " + workGenerationalId);
            ((IoExecutor) processor.mWorkTaskExecutor.runningSyncCalls).execute(new Processor$$ExternalSyntheticLambda2(i, processor, workGenerationalId));
            return;
        }
        synchronized (processor.mLock) {
            try {
                if (processor.isEnqueued(str)) {
                    Set set = (Set) processor.mWorkRuns.get(str);
                    if (((StartStopToken) set.iterator().next()).id.generation == workGenerationalId.generation) {
                        set.add(startStopToken);
                        Logger$LogcatLogger.get().debug(Processor.TAG, "Work " + workGenerationalId + " is already enqueued for processing");
                    } else {
                        ((IoExecutor) processor.mWorkTaskExecutor.runningSyncCalls).execute(new Processor$$ExternalSyntheticLambda2(i, processor, workGenerationalId));
                    }
                    return;
                }
                if (workSpec.generation != workGenerationalId.generation) {
                    ((IoExecutor) processor.mWorkTaskExecutor.runningSyncCalls).execute(new Processor$$ExternalSyntheticLambda2(i, processor, workGenerationalId));
                    return;
                }
                Context context = processor.mAppContext;
                Configuration configuration = processor.mConfiguration;
                Dispatcher dispatcher = processor.mWorkTaskExecutor;
                WorkDatabase workDatabase = processor.mWorkDatabase;
                context.getClass();
                processor.getClass();
                TooltipPopup tooltipPopup = new TooltipPopup();
                tooltipPopup.mContentView = configuration;
                tooltipPopup.mMessageView = dispatcher;
                tooltipPopup.mLayoutParams = processor;
                tooltipPopup.mTmpDisplayFrame = workDatabase;
                tooltipPopup.mTmpAnchorPos = workSpec;
                tooltipPopup.mTmpAppPos = arrayList;
                Context applicationContext = context.getApplicationContext();
                applicationContext.getClass();
                tooltipPopup.mContext = applicationContext;
                WorkerWrapper workerWrapper = new WorkerWrapper(tooltipPopup);
                CallbackToFutureAdapter$SafeFuture launchFuture$default = MathKt.launchFuture$default(((CoroutineDispatcher) workerWrapper.workTaskExecutor.readyAsyncCalls).plus(JobKt.Job$default()), new WorkerWrapper$launch$1(workerWrapper, null, i));
                launchFuture$default.delegate.addListener(new Processor$$ExternalSyntheticLambda1(processor, launchFuture$default, workerWrapper, i), (IoExecutor) processor.mWorkTaskExecutor.runningSyncCalls);
                processor.mEnqueuedWorkMap.put(str, workerWrapper);
                HashSet hashSet = new HashSet();
                hashSet.add(startStopToken);
                processor.mWorkRuns.put(str, hashSet);
                Logger$LogcatLogger.get().debug(Processor.TAG, "Processor: processing " + workGenerationalId);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // java.lang.Runnable
    public final void run() {
        LiveData cameraState;
        boolean z = true;
        Object obj = null;
        switch (this.$r8$classId) {
            case 0:
                Processor processor = (Processor) this.f$0;
                CallbackToFutureAdapter$SafeFuture callbackToFutureAdapter$SafeFuture = (CallbackToFutureAdapter$SafeFuture) this.f$1;
                WorkerWrapper workerWrapper = (WorkerWrapper) this.f$2;
                processor.getClass();
                try {
                    z = ((Boolean) callbackToFutureAdapter$SafeFuture.delegate.get()).booleanValue();
                } catch (InterruptedException | ExecutionException unused) {
                }
                synchronized (processor.mLock) {
                    try {
                        WorkGenerationalId generationalId = Validate.generationalId(workerWrapper.workSpec);
                        String str = generationalId.workSpecId;
                        if (processor.getWorkerWrapperUnsafe(str) == workerWrapper) {
                            processor.cleanUpWorkerUnsafe(str);
                        }
                        Logger$LogcatLogger.get().debug(Processor.TAG, "Processor " + str + " executed; reschedule = " + z);
                        Iterator it = processor.mOuterListeners.iterator();
                        while (it.hasNext()) {
                            ((ExecutionListener) it.next()).onExecuted(generationalId, z);
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
                return;
            case 1:
                ((CameraCaptureCallback) this.f$0).onCaptureCompleted(CameraCallbackMap.getCaptureConfigId((RequestMetadata) this.f$1), (AndroidFrameInfo) this.f$2);
                return;
            case 2:
                ((CameraCaptureCallback) this.f$0).onCaptureFailed(CameraCallbackMap.getCaptureConfigId((RequestMetadata) this.f$1), (Path.Companion) this.f$2);
                return;
            case 3:
                Throwable th2 = (Throwable) this.f$0;
                AbstractCameraPresenceSource$ObserverWrapper abstractCameraPresenceSource$ObserverWrapper = (AbstractCameraPresenceSource$ObserverWrapper) this.f$1;
                List list = (List) this.f$2;
                if (th2 != null) {
                    abstractCameraPresenceSource$ObserverWrapper.mObserver.onError(th2);
                    return;
                } else {
                    abstractCameraPresenceSource$ObserverWrapper.mObserver.onNewData(list);
                    return;
                }
            case 4:
                ArrayList arrayList = (ArrayList) this.f$0;
                Observer observer = (Observer) this.f$1;
                String str2 = (String) this.f$2;
                try {
                    Iterator it2 = arrayList.iterator();
                    while (true) {
                        if (it2.hasNext()) {
                            Object next = it2.next();
                            if (Intrinsics.areEqual(((CameraInfoInternal) next).getCameraId(), str2)) {
                                obj = next;
                            }
                        }
                    }
                    CameraInfoInternal cameraInfoInternal = (CameraInfoInternal) obj;
                    if (cameraInfoInternal == null || (cameraState = cameraInfoInternal.getCameraState()) == null) {
                        return;
                    }
                    cameraState.removeObserver(observer);
                    return;
                } catch (IllegalArgumentException unused2) {
                    return;
                }
            case 5:
                DefaultSurfaceProcessor defaultSurfaceProcessor = (DefaultSurfaceProcessor) this.f$0;
                Runnable runnable = (Runnable) this.f$1;
                Runnable runnable2 = (Runnable) this.f$2;
                if (defaultSurfaceProcessor.mIsReleased) {
                    runnable.run();
                    return;
                } else {
                    runnable2.run();
                    return;
                }
            case 6:
                DefaultSurfaceProcessor defaultSurfaceProcessor2 = (DefaultSurfaceProcessor) this.f$0;
                DynamicRange dynamicRange = (DynamicRange) this.f$1;
                Map map = Collections.EMPTY_MAP;
                CallbackToFutureAdapter$Completer callbackToFutureAdapter$Completer = (CallbackToFutureAdapter$Completer) this.f$2;
                try {
                    defaultSurfaceProcessor2.mGlRenderer.init(dynamicRange);
                    callbackToFutureAdapter$Completer.set(null);
                    return;
                } catch (RuntimeException e) {
                    callbackToFutureAdapter$Completer.setException(e);
                    return;
                }
            case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                ((MenuHostHelper) this.f$0).createAndSendSurfaceOutput((SurfaceEdge) this.f$1, (Map.Entry) this.f$2);
                return;
            case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                DualSurfaceProcessor dualSurfaceProcessor = (DualSurfaceProcessor) this.f$0;
                DynamicRange dynamicRange2 = (DynamicRange) this.f$1;
                Map map2 = Collections.EMPTY_MAP;
                CallbackToFutureAdapter$Completer callbackToFutureAdapter$Completer2 = (CallbackToFutureAdapter$Completer) this.f$2;
                try {
                    dualSurfaceProcessor.mGlRenderer.init(dynamicRange2);
                    callbackToFutureAdapter$Completer2.set(null);
                    return;
                } catch (RuntimeException e2) {
                    callbackToFutureAdapter$Completer2.setException(e2);
                    return;
                }
            case 9:
                DualSurfaceProcessor dualSurfaceProcessor2 = (DualSurfaceProcessor) this.f$0;
                Runnable runnable3 = (Runnable) this.f$1;
                Runnable runnable4 = (Runnable) this.f$2;
                if (dualSurfaceProcessor2.mIsReleased) {
                    runnable3.run();
                    return;
                } else {
                    runnable4.run();
                    return;
                }
            case 10:
                SurfaceViewImplementation surfaceViewImplementation = (SurfaceViewImplementation) this.f$0;
                SurfaceRequest surfaceRequest = (SurfaceRequest) this.f$1;
                PreviewView$1$$ExternalSyntheticLambda2 previewView$1$$ExternalSyntheticLambda2 = (PreviewView$1$$ExternalSyntheticLambda2) this.f$2;
                SurfaceViewImplementation.SurfaceRequestCallback surfaceRequestCallback = surfaceViewImplementation.mSurfaceRequestCallback;
                surfaceRequestCallback.cancelPreviousRequest();
                if (surfaceRequestCallback.mNeedToInvalidate) {
                    surfaceRequestCallback.mNeedToInvalidate = false;
                    surfaceRequest.willNotProvideSurface();
                    surfaceRequest.mSurfaceRecreationCompleter.set(null);
                    return;
                }
                surfaceRequestCallback.mSurfaceRequest = surfaceRequest;
                surfaceRequestCallback.mOnSurfaceNotInUseListener = previewView$1$$ExternalSyntheticLambda2;
                Size size = surfaceRequest.mResolution;
                surfaceRequestCallback.mTargetSize = size;
                surfaceRequestCallback.mWasSurfaceProvided = false;
                if (surfaceRequestCallback.tryToComplete()) {
                    return;
                }
                Utf8.SafeProcessor.d("SurfaceViewImpl", "Wait for new Surface creation.");
                SurfaceViewImplementation.this.mSurfaceView.getHolder().setFixedSize(size.getWidth(), size.getHeight());
                return;
            case 11:
                AndroidTextContextMenuToolbarProvider androidTextContextMenuToolbarProvider = (AndroidTextContextMenuToolbarProvider) this.f$0;
                AndroidTextContextMenuToolbarProvider.TextActionModeCallbackImpl textActionModeCallbackImpl = (AndroidTextContextMenuToolbarProvider.TextActionModeCallbackImpl) this.f$1;
                AndroidTextContextMenuToolbarProvider.TextContextMenuSessionImpl textContextMenuSessionImpl = (AndroidTextContextMenuToolbarProvider.TextContextMenuSessionImpl) this.f$2;
                ActionMode startActionMode = androidTextContextMenuToolbarProvider.view.startActionMode(new FloatingTextActionModeCallback(textActionModeCallbackImpl), 1);
                Intrinsics.areEqual(androidTextContextMenuToolbarProvider.actionMode, startActionMode);
                if (startActionMode == null) {
                    textContextMenuSessionImpl.close();
                    return;
                }
                return;
            case BasicTextKt.ShiftMeta /* 12 */:
                run$androidx$emoji2$text$EmojiCompatInitializer$BackgroundDefaultLoader$$ExternalSyntheticLambda0();
                return;
            case 13:
                ViewGroup viewGroup = (ViewGroup) this.f$0;
                View view = (View) this.f$1;
                DefaultSpecialEffectsController.AnimationEffect animationEffect = (DefaultSpecialEffectsController.AnimationEffect) this.f$2;
                viewGroup.getClass();
                viewGroup.endViewTransition(view);
                ((SpecialEffectsController$FragmentStateManagerOperation) animationEffect.animationInfo.response).completeEffect(animationEffect);
                return;
            case 14:
                run$androidx$work$impl$WorkLauncherImpl$$ExternalSyntheticLambda0();
                return;
            case OffsetKt.Horizontal /* 15 */:
                WorkDatabase workDatabase = (WorkDatabase) this.f$0;
                String str3 = (String) this.f$1;
                WorkManagerImpl workManagerImpl = (WorkManagerImpl) this.f$2;
                WorkSpecDao_Impl workSpecDao = workDatabase.workSpecDao();
                workSpecDao.getClass();
                str3.getClass();
                Iterator it3 = ((List) DBUtil.performBlocking(workSpecDao.__db, true, false, new IconKt$$ExternalSyntheticLambda1(str3, 16))).iterator();
                while (it3.hasNext()) {
                    EnqueueUtilsKt.cancel(workManagerImpl, (String) it3.next());
                }
                return;
            case 16:
                MessagingController messagingController = (MessagingController) this.f$0;
                LegacyAccountDto legacyAccountDto = (LegacyAccountDto) this.f$1;
                CountDownLatch countDownLatch = (CountDownLatch) this.f$2;
                messagingController.getClass();
                try {
                    messagingController.refreshFolderListSynchronous(legacyAccountDto);
                    return;
                } finally {
                    countDownLatch.countDown();
                }
            default:
                ((MessagingController) this.f$0).notificationController.removeNewMailNotification((LegacyAccountDto) this.f$1, ((LocalMessage) this.f$2).makeMessageReference());
                return;
        }
    }

    public /* synthetic */ Processor$$ExternalSyntheticLambda1(DefaultSurfaceProcessor defaultSurfaceProcessor, DynamicRange dynamicRange, CallbackToFutureAdapter$Completer callbackToFutureAdapter$Completer) {
        this.$r8$classId = 6;
        Map map = Collections.EMPTY_MAP;
        this.f$0 = defaultSurfaceProcessor;
        this.f$1 = dynamicRange;
        this.f$2 = callbackToFutureAdapter$Completer;
    }

    public /* synthetic */ Processor$$ExternalSyntheticLambda1(CameraCaptureCallback cameraCaptureCallback, CameraCallbackMap cameraCallbackMap, RequestMetadata requestMetadata, Object obj, int i) {
        this.$r8$classId = i;
        this.f$0 = cameraCaptureCallback;
        this.f$1 = requestMetadata;
        this.f$2 = obj;
    }

    public /* synthetic */ Processor$$ExternalSyntheticLambda1(Object obj, Object obj2, Object obj3, int i) {
        this.$r8$classId = i;
        this.f$0 = obj;
        this.f$1 = obj2;
        this.f$2 = obj3;
    }
}
