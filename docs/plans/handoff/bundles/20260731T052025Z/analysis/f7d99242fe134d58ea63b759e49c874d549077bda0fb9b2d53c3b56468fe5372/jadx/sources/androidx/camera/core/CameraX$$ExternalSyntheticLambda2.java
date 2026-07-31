package androidx.camera.core;

import android.graphics.SurfaceTexture;
import android.hardware.camera2.CameraCaptureSession;
import android.util.Log;
import android.util.LongSparseArray;
import android.util.Size;
import android.view.Surface;
import androidx.activity.OnBackPressedDispatcher;
import androidx.appcompat.app.AppCompatActivity;
import androidx.camera.camera2.adapter.CameraCoordinatorAdapter;
import androidx.camera.camera2.adapter.CameraUseCaseAdapter;
import androidx.camera.camera2.impl.UseCaseThreads;
import androidx.camera.camera2.interop.CaptureRequestOptions$Builder$Companion$$ExternalSyntheticLambda0;
import androidx.camera.camera2.pipe.CameraPipeImpl;
import androidx.camera.camera2.pipe.Request;
import androidx.camera.core.Preview;
import androidx.camera.core.SurfaceRequest;
import androidx.camera.core.featuregroup.impl.ResolvedFeatureGroup;
import androidx.camera.core.impl.CameraInfoInternal;
import androidx.camera.core.impl.CameraInternal;
import androidx.camera.core.impl.CameraPresenceProvider;
import androidx.camera.core.impl.CameraPresenceProvider$$ExternalSyntheticLambda6;
import androidx.camera.core.impl.CameraRepository;
import androidx.camera.core.impl.DeferrableSurface;
import androidx.camera.core.impl.ImageReaderProxy;
import androidx.camera.core.impl.LiveDataObservable$Result;
import androidx.camera.core.impl.Observable;
import androidx.camera.core.impl.utils.executor.HandlerScheduledExecutorService;
import androidx.camera.core.internal.CameraUseCaseAdapter$$ExternalSyntheticLambda1;
import androidx.camera.core.processing.DefaultSurfaceProcessor;
import androidx.camera.core.processing.OpenGlRenderer;
import androidx.camera.core.processing.SurfaceOutputImpl;
import androidx.camera.core.processing.concurrent.DualOpenGlRenderer;
import androidx.camera.core.processing.concurrent.DualSurfaceProcessor;
import androidx.camera.core.processing.util.GLUtils;
import androidx.camera.view.PreviewView;
import androidx.camera.view.PreviewView$1$$ExternalSyntheticLambda2;
import androidx.camera.view.TextureViewImplementation;
import androidx.compose.foundation.layout.OffsetKt;
import androidx.compose.foundation.text.BasicTextKt;
import androidx.compose.ui.contentcapture.AndroidContentCaptureManager;
import androidx.compose.ui.node.NodeChain;
import androidx.concurrent.futures.CallbackToFutureAdapter$Completer;
import androidx.core.util.Consumer;
import androidx.core.view.DisplayCompat;
import androidx.core.view.MenuHostHelper;
import androidx.core.view.MenuHostHelper$$ExternalSyntheticLambda0;
import androidx.datastore.preferences.PreferencesProto$Value;
import androidx.datastore.preferences.protobuf.Utf8;
import androidx.lifecycle.MutableLiveData;
import androidx.lifecycle.Observer;
import androidx.room.TransactionExecutor;
import com.fsck.k9.mailstore.LocalFolder;
import com.fsck.k9.mailstore.LockableDatabase;
import com.fsck.k9.ui.compose.QuotedMessagePresenter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.CancellationException;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;
import kotlin.SynchronizedLazyImpl;
import kotlin.jvm.internal.Ref$ObjectRef;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.JobKt;
import kotlinx.coroutines.StandaloneCoroutine;
import okhttp3.internal.connection.RouteSelector;
import org.jsoup.helper.Validate;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class CameraX$$ExternalSyntheticLambda2 implements Runnable {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;
    public final /* synthetic */ Object f$1;

    public /* synthetic */ CameraX$$ExternalSyntheticLambda2(int i, Object obj, Object obj2) {
        this.$r8$classId = i;
        this.f$0 = obj;
        this.f$1 = obj2;
    }

    private final void run$androidx$camera$core$impl$CameraPresenceProvider$$ExternalSyntheticLambda2() {
        CameraPresenceProvider.ListenerWrapper listenerWrapper = (CameraPresenceProvider.ListenerWrapper) this.f$0;
        Set<CameraIdentifier> set = (Set) this.f$1;
        LockableDatabase lockableDatabase = listenerWrapper.listener;
        Validate.checkMainThread();
        synchronized (lockableDatabase.mDb) {
            try {
                for (CameraIdentifier cameraIdentifier : set) {
                    Set keySet = ((HashMap) lockableDatabase.mSchemaDefinition).keySet();
                    ArrayList arrayList = new ArrayList();
                    for (Object obj : keySet) {
                        if (((CameraIdentifier) obj).cameraIds.equals(cameraIdentifier.cameraIds)) {
                            arrayList.add(obj);
                        }
                    }
                    Iterator it = arrayList.iterator();
                    while (it.hasNext()) {
                        ((HashMap) lockableDatabase.mSchemaDefinition).remove((CameraIdentifier) it.next());
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private final void run$androidx$camera$core$impl$CameraRepository$$ExternalSyntheticLambda1() {
        CameraRepository cameraRepository = (CameraRepository) this.f$0;
        CameraInternal cameraInternal = (CameraInternal) this.f$1;
        synchronized (cameraRepository.mCamerasLock) {
            try {
                cameraRepository.mReleasingCameras.remove(cameraInternal);
                if (cameraRepository.mReleasingCameras.isEmpty()) {
                    cameraRepository.mDeinitCompleter.getClass();
                    cameraRepository.mDeinitCompleter.set(null);
                    cameraRepository.mDeinitCompleter = null;
                    cameraRepository.mDeinitFuture = null;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private final void run$androidx$camera$core$impl$DeferrableSurface$$ExternalSyntheticLambda2() {
        DeferrableSurface deferrableSurface = (DeferrableSurface) this.f$0;
        String str = (String) this.f$1;
        try {
            deferrableSurface.mTerminationFuture.get();
            deferrableSurface.printGlobalDebugCounts(DeferrableSurface.TOTAL_COUNT.decrementAndGet(), "Surface terminated", DeferrableSurface.USED_COUNT.get());
        } catch (Exception e) {
            Utf8.SafeProcessor.e("DeferrableSurface", "Unexpected surface termination for " + deferrableSurface + "\nStack Trace:\n" + str);
            synchronized (deferrableSurface.mLock) {
                throw new IllegalArgumentException(String.format("DeferrableSurface %s [closed: %b, use_count: %s] terminated with unexpected exception.", deferrableSurface, Boolean.valueOf(deferrableSurface.mClosed), Integer.valueOf(deferrableSurface.mUseCount)), e);
            }
        }
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = 1;
        switch (this.$r8$classId) {
            case 0:
                CameraX cameraX = (CameraX) this.f$0;
                CallbackToFutureAdapter$Completer callbackToFutureAdapter$Completer = (CallbackToFutureAdapter$Completer) this.f$1;
                NodeChain nodeChain = cameraX.mCameraFactory;
                if (!((AtomicBoolean) nodeChain.cachedDiffer).getAndSet(true)) {
                    CameraCoordinatorAdapter cameraCoordinatorAdapter = (CameraCoordinatorAdapter) nodeChain.tail;
                    cameraCoordinatorAdapter.getClass();
                    cameraCoordinatorAdapter.concurrentModeOn = false;
                    synchronized (cameraCoordinatorAdapter.lock) {
                        cameraCoordinatorAdapter.cameraRepository = null;
                        cameraCoordinatorAdapter.concurrentMode = 0;
                        cameraCoordinatorAdapter.pendingCameraIds.clear();
                    }
                    QuotedMessagePresenter quotedMessagePresenter = (QuotedMessagePresenter) nodeChain.head;
                    quotedMessagePresenter.getClass();
                    Log.i("PipePresenceSrc", "Stopping camera ID flow collection.");
                    if (((AtomicBoolean) quotedMessagePresenter.quotedTextFormat).compareAndSet(true, false)) {
                        StandaloneCoroutine standaloneCoroutine = (StandaloneCoroutine) quotedMessagePresenter.quotedHtmlContent;
                        if (standaloneCoroutine != null) {
                            standaloneCoroutine.cancel(null);
                        }
                        quotedMessagePresenter.quotedHtmlContent = null;
                    }
                    if (((SynchronizedLazyImpl) nodeChain.layoutNode).isInitialized()) {
                        ((CameraPipeImpl) ((SynchronizedLazyImpl) nodeChain.layoutNode).getValue()).shutdown();
                    }
                }
                if (cameraX.mSchedulerThread != null) {
                    Executor executor = cameraX.mCameraExecutor;
                    if (executor instanceof CameraExecutor) {
                        ((CameraExecutor) executor).deinit();
                    }
                    cameraX.mSchedulerThread.quit();
                }
                callbackToFutureAdapter$Completer.set(null);
                return;
            case 1:
                AppCompatActivity appCompatActivity = (AppCompatActivity) this.f$0;
                appCompatActivity.lifecycleRegistry.addObserver(new MenuHostHelper$$ExternalSyntheticLambda0(i, (OnBackPressedDispatcher) this.f$1, appCompatActivity));
                return;
            case 2:
                TransactionExecutor transactionExecutor = (TransactionExecutor) this.f$0;
                try {
                    ((Runnable) this.f$1).run();
                    return;
                } finally {
                    transactionExecutor.scheduleNext();
                }
            case 3:
                ((Consumer) this.f$0).accept((AutoValue_CameraState) this.f$1);
                return;
            case 4:
                ((CameraUseCaseAdapter.CaptureCallbackContainer) this.f$0).captureCallback.onCaptureSequenceAborted((CameraCaptureSession) this.f$1, -1);
                return;
            case 5:
                ((Request.Listener) this.f$0).onAborted((Request) this.f$1);
                return;
            case 6:
                Surface surface = (Surface) this.f$0;
                SurfaceTexture surfaceTexture = (SurfaceTexture) this.f$1;
                surface.release();
                surfaceTexture.release();
                return;
            case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                UseCaseThreads useCaseThreads = (UseCaseThreads) this.f$0;
                Runnable runnable = (Runnable) this.f$1;
                ThreadLocal threadLocal = useCaseThreads.isSequentialThread;
                threadLocal.set(Boolean.TRUE);
                try {
                    runnable.run();
                    return;
                } finally {
                    threadLocal.remove();
                }
            case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                Ref$ObjectRef ref$ObjectRef = (Ref$ObjectRef) this.f$0;
                Ref$ObjectRef ref$ObjectRef2 = (Ref$ObjectRef) this.f$1;
                JobKt.cancel((CoroutineScope) ref$ObjectRef.element, (CancellationException) null);
                JobKt.cancel((CoroutineScope) ref$ObjectRef2.element, (CancellationException) null);
                return;
            case 9:
                ((ImageReaderProxy.OnImageAvailableListener) this.f$1).onImageAvailable((LocalFolder.AnonymousClass12) this.f$0);
                return;
            case 10:
                RouteSelector routeSelector = (RouteSelector) this.f$0;
                RouteSelector routeSelector2 = (RouteSelector) this.f$1;
                routeSelector.safeClose();
                if (routeSelector2 != null) {
                    routeSelector2.safeClose();
                    return;
                }
                return;
            case 11:
                ((ImageReaderProxy.OnImageAvailableListener) this.f$1).onImageAvailable((MetadataImageReader) this.f$0);
                return;
            case BasicTextKt.ShiftMeta /* 12 */:
                ((Preview.SurfaceProvider) this.f$0).onSurfaceRequested((SurfaceRequest) this.f$1);
                return;
            case 13:
                run$androidx$camera$core$impl$CameraPresenceProvider$$ExternalSyntheticLambda2();
                return;
            case 14:
                ((CameraInternal) this.f$0).getCameraInfoInternal().getCameraState().removeObserver((Observer) this.f$1);
                return;
            case OffsetKt.Horizontal /* 15 */:
                ((CameraInfoInternal) this.f$0).getCameraState().observeForever((CameraPresenceProvider$$ExternalSyntheticLambda6) this.f$1);
                return;
            case 16:
                run$androidx$camera$core$impl$CameraRepository$$ExternalSyntheticLambda1();
                return;
            case 17:
                run$androidx$camera$core$impl$DeferrableSurface$$ExternalSyntheticLambda2();
                return;
            case 18:
                MenuHostHelper menuHostHelper = (MenuHostHelper) this.f$0;
                Observable.Observer observer = (Observable.Observer) this.f$1;
                LiveDataObservable$Result liveDataObservable$Result = (LiveDataObservable$Result) ((MutableLiveData) menuHostHelper.mOnInvalidateMenuCallback).getValue();
                if (liveDataObservable$Result == null) {
                    return;
                }
                observer.onNewData(liveDataObservable$Result.mValue);
                return;
            case 19:
                Map.Entry entry = (Map.Entry) this.f$0;
                LiveDataObservable$Result liveDataObservable$Result2 = (LiveDataObservable$Result) this.f$1;
                Observable.Observer observer2 = (Observable.Observer) entry.getKey();
                liveDataObservable$Result2.getClass();
                observer2.onNewData(liveDataObservable$Result2.mValue);
                return;
            case 20:
                Preview$$ExternalSyntheticLambda0 preview$$ExternalSyntheticLambda0 = (Preview$$ExternalSyntheticLambda0) this.f$0;
                CountDownLatch countDownLatch = (CountDownLatch) this.f$1;
                try {
                    preview$$ExternalSyntheticLambda0.run();
                    return;
                } finally {
                    countDownLatch.countDown();
                }
            case 21:
                DefaultSurfaceProcessor defaultSurfaceProcessor = (DefaultSurfaceProcessor) this.f$0;
                SurfaceOutputImpl surfaceOutputImpl = (SurfaceOutputImpl) this.f$1;
                Surface surface2 = surfaceOutputImpl.getSurface(defaultSurfaceProcessor.mGlExecutor, new CameraUseCaseAdapter$$ExternalSyntheticLambda1(i, defaultSurfaceProcessor, surfaceOutputImpl));
                defaultSurfaceProcessor.mGlRenderer.registerOutputSurface(surface2);
                defaultSurfaceProcessor.mOutputSurfaces.put(surfaceOutputImpl, surface2);
                return;
            case 22:
                final DefaultSurfaceProcessor defaultSurfaceProcessor2 = (DefaultSurfaceProcessor) this.f$0;
                final SurfaceRequest surfaceRequest = (SurfaceRequest) this.f$1;
                defaultSurfaceProcessor2.mInputSurfaceCount++;
                OpenGlRenderer openGlRenderer = defaultSurfaceProcessor2.mGlRenderer;
                GLUtils.checkInitializedOrThrow((AtomicBoolean) openGlRenderer.mInitialized, true);
                GLUtils.checkGlThreadOrThrow((Thread) openGlRenderer.mGlThread);
                final SurfaceTexture surfaceTexture2 = new SurfaceTexture(openGlRenderer.mExternalTextureId);
                Size size = surfaceRequest.mResolution;
                surfaceTexture2.setDefaultBufferSize(size.getWidth(), size.getHeight());
                final Surface surface3 = new Surface(surfaceTexture2);
                HandlerScheduledExecutorService handlerScheduledExecutorService = defaultSurfaceProcessor2.mGlExecutor;
                surfaceRequest.setTransformationInfoListener(handlerScheduledExecutorService, new CaptureRequestOptions$Builder$Companion$$ExternalSyntheticLambda0(4, defaultSurfaceProcessor2, surfaceRequest));
                surfaceRequest.provideSurface(surface3, handlerScheduledExecutorService, new Consumer() { // from class: androidx.camera.core.processing.DefaultSurfaceProcessor$$ExternalSyntheticLambda7
                    @Override // androidx.core.util.Consumer
                    public final void accept(Object obj) {
                        DefaultSurfaceProcessor defaultSurfaceProcessor3 = DefaultSurfaceProcessor.this;
                        SurfaceRequest surfaceRequest2 = surfaceRequest;
                        SurfaceTexture surfaceTexture3 = surfaceTexture2;
                        Surface surface4 = surface3;
                        synchronized (surfaceRequest2.mLock) {
                            surfaceRequest2.mTransformationInfoListener = null;
                            surfaceRequest2.mTransformationInfoExecutor = null;
                        }
                        surfaceTexture3.setOnFrameAvailableListener(null);
                        surfaceTexture3.release();
                        surface4.release();
                        defaultSurfaceProcessor3.mInputSurfaceCount--;
                        defaultSurfaceProcessor3.checkReadyToRelease();
                    }
                });
                surfaceTexture2.setOnFrameAvailableListener(defaultSurfaceProcessor2, defaultSurfaceProcessor2.mGlHandler);
                return;
            case 23:
                ((Consumer) ((AtomicReference) this.f$1).get()).accept(new AutoValue_SurfaceOutput_Event((SurfaceOutputImpl) this.f$0));
                return;
            case 24:
                final DualSurfaceProcessor dualSurfaceProcessor = (DualSurfaceProcessor) this.f$0;
                SurfaceRequest surfaceRequest2 = (SurfaceRequest) this.f$1;
                dualSurfaceProcessor.mInputSurfaceCount++;
                DualOpenGlRenderer dualOpenGlRenderer = dualSurfaceProcessor.mGlRenderer;
                boolean z = surfaceRequest2.mIsPrimary;
                Size size2 = surfaceRequest2.mResolution;
                GLUtils.checkInitializedOrThrow((AtomicBoolean) dualOpenGlRenderer.mInitialized, true);
                GLUtils.checkGlThreadOrThrow((Thread) dualOpenGlRenderer.mGlThread);
                final SurfaceTexture surfaceTexture3 = new SurfaceTexture(z ? dualOpenGlRenderer.mPrimaryExternalTextureId : dualOpenGlRenderer.mSecondaryExternalTextureId);
                surfaceTexture3.setDefaultBufferSize(size2.getWidth(), size2.getHeight());
                final Surface surface4 = new Surface(surfaceTexture3);
                surfaceRequest2.provideSurface(surface4, dualSurfaceProcessor.mGlExecutor, new Consumer() { // from class: androidx.camera.core.processing.concurrent.DualSurfaceProcessor$$ExternalSyntheticLambda6
                    @Override // androidx.core.util.Consumer
                    public final void accept(Object obj) {
                        SurfaceTexture surfaceTexture4 = surfaceTexture3;
                        surfaceTexture4.setOnFrameAvailableListener(null);
                        surfaceTexture4.release();
                        surface4.release();
                        r1.mInputSurfaceCount--;
                        DualSurfaceProcessor.this.checkReadyToRelease$1();
                    }
                });
                if (z) {
                    dualSurfaceProcessor.mPrimarySurfaceTexture = surfaceTexture3;
                    return;
                } else {
                    dualSurfaceProcessor.mSecondarySurfaceTexture = surfaceTexture3;
                    surfaceTexture3.setOnFrameAvailableListener(dualSurfaceProcessor, dualSurfaceProcessor.mGlHandler);
                    return;
                }
            case 25:
                DualSurfaceProcessor dualSurfaceProcessor2 = (DualSurfaceProcessor) this.f$0;
                SurfaceOutputImpl surfaceOutputImpl2 = (SurfaceOutputImpl) this.f$1;
                Surface surface5 = surfaceOutputImpl2.getSurface(dualSurfaceProcessor2.mGlExecutor, new CameraUseCaseAdapter$$ExternalSyntheticLambda1(2, dualSurfaceProcessor2, surfaceOutputImpl2));
                dualSurfaceProcessor2.mGlRenderer.registerOutputSurface(surface5);
                dualSurfaceProcessor2.mOutputSurfaces.put(surfaceOutputImpl2, surface5);
                return;
            case 26:
                ResolvedFeatureGroup resolvedFeatureGroup = (ResolvedFeatureGroup) this.f$0;
                LegacySessionConfig legacySessionConfig = (LegacySessionConfig) this.f$1;
                HashSet hashSet = new HashSet();
                if (resolvedFeatureGroup != null) {
                    hashSet.addAll(resolvedFeatureGroup.features);
                }
                ((SessionConfig$$ExternalSyntheticLambda0) legacySessionConfig.featureSelectionListener).getClass();
                return;
            case 27:
                ((PreviewView) ((PreviewView.AnonymousClass1) this.f$0).this$0).mSurfaceProvider.onSurfaceRequested((SurfaceRequest) this.f$1);
                return;
            case 28:
                TextureViewImplementation textureViewImplementation = (TextureViewImplementation) this.f$0;
                SurfaceRequest surfaceRequest3 = (SurfaceRequest) this.f$1;
                SurfaceRequest surfaceRequest4 = textureViewImplementation.mSurfaceRequest;
                if (surfaceRequest4 != null && surfaceRequest4 == surfaceRequest3) {
                    textureViewImplementation.mSurfaceRequest = null;
                    textureViewImplementation.mSurfaceReleaseFuture = null;
                }
                PreviewView$1$$ExternalSyntheticLambda2 previewView$1$$ExternalSyntheticLambda2 = textureViewImplementation.mOnSurfaceNotInUseListener;
                if (previewView$1$$ExternalSyntheticLambda2 != null) {
                    previewView$1$$ExternalSyntheticLambda2.onSurfaceNotInUse();
                    textureViewImplementation.mOnSurfaceNotInUseListener = null;
                    return;
                }
                return;
            default:
                DisplayCompat.doTranslation((AndroidContentCaptureManager) this.f$0, (LongSparseArray) this.f$1);
                return;
        }
    }
}
