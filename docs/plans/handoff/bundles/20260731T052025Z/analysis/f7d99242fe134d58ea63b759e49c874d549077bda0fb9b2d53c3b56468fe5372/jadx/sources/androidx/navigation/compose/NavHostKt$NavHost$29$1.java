package androidx.navigation.compose;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Rect;
import android.os.Build;
import android.os.Trace;
import android.view.ScrollCaptureSession;
import androidx.activity.OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0;
import androidx.activity.compose.ManagedActivityResultLauncher;
import androidx.appcompat.app.ActionBar;
import androidx.biometric.BiometricPrompt;
import androidx.camera.camera2.adapter.CameraCoordinatorAdapter;
import androidx.camera.camera2.impl.DeferredUseCaseCameraRequestControl;
import androidx.camera.camera2.impl.TorchControl$$ExternalSyntheticLambda1;
import androidx.camera.camera2.impl.UseCaseCameraRequestControl;
import androidx.camera.camera2.impl.UseCaseCameraRequestControlImpl;
import androidx.camera.camera2.pipe.compat.Camera2DeviceCloserImpl;
import androidx.camera.camera2.pipe.compat.RetryingCameraStateOpenerImpl;
import androidx.camera.core.CameraSelector;
import androidx.camera.core.CameraX;
import androidx.camera.core.LegacySessionConfig;
import androidx.camera.core.Preview;
import androidx.camera.core.UseCase;
import androidx.camera.core.impl.Config;
import androidx.camera.core.impl.ImageOutputConfig;
import androidx.camera.core.impl.LensFacingCameraFilter;
import androidx.camera.core.impl.OptionsBundle;
import androidx.camera.core.impl.PreviewConfig;
import androidx.camera.core.impl.utils.ContextUtil;
import androidx.camera.core.impl.utils.futures.ChainingListenableFuture;
import androidx.camera.core.impl.utils.futures.FutureChain;
import androidx.camera.core.impl.utils.futures.Futures;
import androidx.camera.core.streamsharing.StreamSharing$$ExternalSyntheticLambda0;
import androidx.camera.lifecycle.LifecycleCameraRepositories;
import androidx.camera.lifecycle.ProcessCameraProvider;
import androidx.camera.view.PreviewView;
import androidx.compose.animation.core.Animatable;
import androidx.compose.animation.core.InfiniteTransition;
import androidx.compose.animation.core.SeekableTransitionState;
import androidx.compose.animation.core.Transition;
import androidx.compose.foundation.BorderKt$$ExternalSyntheticLambda1;
import androidx.compose.foundation.gestures.TrackpadScrollingLogic;
import androidx.compose.foundation.layout.OffsetKt;
import androidx.compose.foundation.text.BasicTextKt;
import androidx.compose.foundation.text.input.internal.AndroidLegacyPlatformTextInputServiceAdapter;
import androidx.compose.foundation.text.input.internal.LegacyAdaptingPlatformTextInputModifierNode;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.Recomposer;
import androidx.compose.ui.draw.DrawResult;
import androidx.compose.ui.graphics.AndroidImageBitmap;
import androidx.compose.ui.node.NodeChain;
import androidx.compose.ui.platform.AndroidPlatformTextInputSession;
import androidx.compose.ui.scrollcapture.ComposeScrollCaptureCallback;
import androidx.core.app.ActivityRecreator;
import androidx.datastore.core.FileWriteScope$writeData$2;
import androidx.datastore.core.SimpleActor$$ExternalSyntheticLambda0;
import androidx.datastore.preferences.PreferencesProto$Value;
import androidx.fragment.app.FragmentManager;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleOwner;
import androidx.navigation.NavBackStackEntry;
import androidx.room.TriggerBasedInvalidationTracker;
import androidx.work.ListenableWorker;
import androidx.work.impl.model.WorkSpec;
import androidx.work.impl.utils.WorkForegroundUpdater;
import androidx.work.impl.workers.ConstraintTrackingWorker;
import app.k9mail.feature.account.server.settings.ui.incoming.IncomingServerSettingsViewModel;
import app.k9mail.feature.onboarding.permissions.ui.PermissionsViewModel;
import com.fsck.k9.mailstore.LockableDatabase;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;
import java.util.function.Consumer;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.collections.EmptyList;
import kotlin.coroutines.Continuation;
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
import kotlinx.coroutines.flow.MutableSharedFlow;
import kotlinx.coroutines.flow.SharingStarted;
import kotlinx.coroutines.internal.ContextScope;
import kotlinx.coroutines.sync.MutexImpl;
import net.thunderbird.core.ui.contract.mvi.UnidirectionalViewModel;
import net.thunderbird.feature.account.AccountId;
import net.thunderbird.feature.account.settings.impl.ui.fetchingMail.FetchingMailSettingsViewModel;
import okhttp3.Headers;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.jetbrains.compose.resources.AsyncCache$getOrLoad$2;
import org.jetbrains.compose.resources.DefaultAndroidResourceReader;
import org.jetbrains.compose.resources.DensityQualifier;
import org.jetbrains.compose.resources.DrawableResource;
import org.jetbrains.compose.resources.ImageCache$Bitmap;
import org.jetbrains.compose.resources.ImageResourcesKt;
import org.jetbrains.compose.resources.Qualifier;
import org.jetbrains.compose.resources.ResourceEnvironment;
import org.jetbrains.compose.resources.ResourceEnvironmentKt;
import org.jetbrains.compose.resources.ResourceItem;
import org.jetbrains.compose.resources.StringResource;
import org.jsoup.internal.SoftPool;
import org.slf4j.helpers.Util;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class NavHostKt$NavHost$29$1 extends SuspendLambda implements Function2 {
    public Object $backStackEntry;
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object $transition;
    public Object $transitionState;
    public Object L$0;
    public int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NavHostKt$NavHost$29$1(SharingStarted sharingStarted, Flow flow, MutableSharedFlow mutableSharedFlow, Object obj, Continuation continuation) {
        super(2, continuation);
        this.$r8$classId = 23;
        this.$transitionState = sharingStarted;
        this.$backStackEntry = flow;
        this.$transition = mutableSharedFlow;
        this.L$0 = obj;
    }

    private final Object invokeSuspend$app$k9mail$feature$migration$qrcode$ui$CameraPreviewViewKt$CameraPreviewView$2$1(Object obj) {
        ListenableFuture listenableFuture;
        int i;
        int i2;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = this.label;
        int i4 = 0;
        int i5 = 1;
        if (i3 == 0) {
            ResultKt.throwOnFailure(obj);
            ProcessCameraProvider processCameraProvider = ProcessCameraProvider.sAppInstance;
            Context context = (Context) this.L$0;
            this.label = 1;
            context.getClass();
            LockableDatabase lockableDatabase = ProcessCameraProvider.sAppInstance.lifecycleCameraProvider;
            synchronized (lockableDatabase.mDb) {
                Object obj2 = ContextUtil.CACHE_LOCK;
                lockableDatabase.inTransaction = LifecycleCameraRepositories.getInstance$camera_lifecycle(Build.VERSION.SDK_INT >= 34 ? context.getDeviceId() : 0);
                listenableFuture = (FutureChain) lockableDatabase.mReadLock;
                i = 29;
                i2 = 8;
                if (listenableFuture == null) {
                    CameraX cameraX = new CameraX(context, null);
                    ListenableFuture listenableFuture2 = (ListenableFuture) lockableDatabase.mWriteLock;
                    int i6 = 3;
                    ChainingListenableFuture transformAsync = Futures.transformAsync(Futures.transformAsync(listenableFuture2 instanceof FutureChain ? (FutureChain) listenableFuture2 : new FutureChain(listenableFuture2), new OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0(7, new TorchControl$$ExternalSyntheticLambda1(9, cameraX)), Util.directExecutor()), new BiometricPrompt(i, new OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0(i2, new SimpleActor$$ExternalSyntheticLambda0(lockableDatabase, cameraX, context, i6))), Util.directExecutor());
                    lockableDatabase.mReadLock = transformAsync;
                    transformAsync.addListener(new ActivityRecreator.AnonymousClass1(i5, transformAsync, new PreviewView.AnonymousClass1(i6, lockableDatabase)), Util.directExecutor());
                    listenableFuture = Futures.nonCancellationPropagating(transformAsync);
                }
            }
            obj = ActionBar.await(Futures.transformAsync(listenableFuture, new BiometricPrompt(i, new StreamSharing$$ExternalSyntheticLambda0(new BorderKt$$ExternalSyntheticLambda1(i2))), Util.directExecutor()), this);
            if (obj == coroutineSingletons) {
                return coroutineSingletons;
            }
        } else {
            if (i3 != 1) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m$2("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.throwOnFailure(obj);
        }
        ProcessCameraProvider processCameraProvider2 = (ProcessCameraProvider) obj;
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        linkedHashSet.add(new LensFacingCameraFilter(1));
        CameraSelector cameraSelector = new CameraSelector(linkedHashSet);
        PreviewConfig previewConfig = new PreviewConfig(OptionsBundle.from(new Preview.Builder(0).mMutableConfig));
        ImageOutputConfig.CC.validateConfig(previewConfig);
        Preview preview = new Preview(previewConfig);
        preview.mSurfaceProviderExecutor = Preview.DEFAULT_SURFACE_PROVIDER_EXECUTOR;
        List useCases = ((DrawResult) this.$transitionState).getUseCases();
        processCameraProvider2.lifecycleCameraProvider.unbindAll();
        LifecycleOwner lifecycleOwner = (LifecycleOwner) this.$backStackEntry;
        Headers.Builder builder = new Headers.Builder(10);
        builder.namesAndValues.add(preview);
        builder.addSpread(useCases.toArray(new UseCase[0]));
        UseCase[] useCaseArr = (UseCase[]) builder.namesAndValues.toArray(new UseCase[builder.namesAndValues.size()]);
        lifecycleOwner.getClass();
        useCaseArr.getClass();
        LockableDatabase lockableDatabase2 = processCameraProvider2.lifecycleCameraProvider;
        UseCase[] useCaseArr2 = (UseCase[]) Arrays.copyOf(useCaseArr, useCaseArr.length);
        Trace.beginSection(Util.truncatedTraceSectionLabel("CX:bindToLifecycle"));
        try {
            CameraX cameraX2 = (CameraX) lockableDatabase2.storageFilesProvider;
            if (cameraX2 != null) {
                cameraX2.getClass();
                NodeChain nodeChain = cameraX2.mCameraFactory;
                if (nodeChain == null) {
                    throw new IllegalStateException("CameraX not initialized yet.");
                }
                i4 = ((CameraCoordinatorAdapter) nodeChain.tail).getCameraOperatingMode();
            }
            if (i4 == 2) {
                throw new UnsupportedOperationException("bindToLifecycle for single camera is not supported in concurrent camera mode, call unbindAll() first");
            }
            LockableDatabase.access$setCameraOperatingMode(lockableDatabase2, 1);
            LockableDatabase.bindToLifecycleInternal$default(lockableDatabase2, lifecycleOwner, cameraSelector, new LegacySessionConfig(ArraysKt___ArraysKt.filterNotNull(useCaseArr2), EmptyList.INSTANCE));
            Trace.endSection();
            preview.setSurfaceProvider(((PreviewView) this.$transition).getSurfaceProvider());
            return Unit.INSTANCE;
        } catch (Throwable th) {
            Trace.endSection();
            throw th;
        }
    }

    private final Object invokeSuspend$org$jetbrains$compose$resources$ImageResourcesKt$imageResource$imageBitmap$3$1(Object obj) {
        Continuation continuation;
        Object obj2;
        ResourceEnvironment resourceEnvironment = (ResourceEnvironment) this.L$0;
        int i = this.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            ResourceItem resourceItemByEnvironment = ResourceEnvironmentKt.getResourceItemByEnvironment((DrawableResource) this.$transitionState, resourceEnvironment);
            Iterator it = resourceItemByEnvironment.qualifiers.iterator();
            while (true) {
                continuation = null;
                if (!it.hasNext()) {
                    obj2 = null;
                    break;
                }
                obj2 = it.next();
                if (((Qualifier) obj2) instanceof DensityQualifier) {
                    break;
                }
            }
            DensityQualifier densityQualifier = obj2 instanceof DensityQualifier ? (DensityQualifier) obj2 : null;
            final int i2 = densityQualifier != null ? densityQualifier.dpi : 160;
            final int i3 = ((ResourceEnvironment) this.$backStackEntry).density.dpi;
            String str = resourceItemByEnvironment.path;
            DefaultAndroidResourceReader defaultAndroidResourceReader = (DefaultAndroidResourceReader) this.$transition;
            Function1 function1 = new Function1() { // from class: org.jetbrains.compose.resources.ImageResourcesKt$imageResource$imageBitmap$3$1$$ExternalSyntheticLambda0
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj3) {
                    byte[] bArr = (byte[]) obj3;
                    bArr.getClass();
                    BitmapFactory.Options options = new BitmapFactory.Options();
                    int i4 = i2;
                    int i5 = i3;
                    if (i4 > i5) {
                        options.inDensity = i4;
                        options.inTargetDensity = i5;
                    }
                    Bitmap decodeByteArray = BitmapFactory.decodeByteArray(bArr, 0, bArr.length, options);
                    decodeByteArray.getClass();
                    return new ImageCache$Bitmap(new AndroidImageBitmap(decodeByteArray));
                }
            };
            this.L$0 = null;
            this.label = 1;
            SoftPool softPool = ImageResourcesKt.imageCache;
            FileWriteScope$writeData$2 fileWriteScope$writeData$2 = new FileWriteScope$writeData$2(function1, defaultAndroidResourceReader, str, continuation, 3);
            softPool.getClass();
            obj = JobKt.coroutineScope(new AsyncCache$getOrLoad$2(softPool, str + "-" + i3 + "dpi", fileWriteScope$writeData$2, (Continuation) null), this);
            CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
            if (obj == coroutineSingletons) {
                return coroutineSingletons;
            }
        } else {
            if (i != 1) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m$2("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.throwOnFailure(obj);
        }
        obj.getClass();
        return ((ImageCache$Bitmap) obj).bitmap;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        int i = this.$r8$classId;
        Object obj2 = this.$transition;
        switch (i) {
            case 0:
                NavHostKt$NavHost$29$1 navHostKt$NavHost$29$1 = new NavHostKt$NavHost$29$1((SeekableTransitionState) this.$transitionState, (NavBackStackEntry) this.$backStackEntry, (Transition) obj2, continuation, 0);
                navHostKt$NavHost$29$1.L$0 = obj;
                return navHostKt$NavHost$29$1;
            case 1:
                return new NavHostKt$NavHost$29$1((DeferredUseCaseCameraRequestControl) this.L$0, continuation, (Map) this.$transitionState, (UseCaseCameraRequestControl.Type) this.$backStackEntry, (Config.OptionPriority) obj2, 1);
            case 2:
                return new NavHostKt$NavHost$29$1((UseCaseCameraRequestControlImpl) this.L$0, (UseCaseCameraRequestControl.Type) this.$transitionState, (Map) this.$backStackEntry, (Config.OptionPriority) obj2, continuation, 2);
            case 3:
                return new NavHostKt$NavHost$29$1((RetryingCameraStateOpenerImpl) this.$transitionState, (String) this.$backStackEntry, (Camera2DeviceCloserImpl) obj2, continuation, 3);
            case 4:
                NavHostKt$NavHost$29$1 navHostKt$NavHost$29$12 = new NavHostKt$NavHost$29$1((BiometricPrompt) this.$backStackEntry, (Function2) obj2, continuation, 4);
                navHostKt$NavHost$29$12.L$0 = obj;
                return navHostKt$NavHost$29$12;
            case 5:
                return new NavHostKt$NavHost$29$1(this.L$0, (Animatable) this.$transitionState, (MutableState) this.$backStackEntry, (MutableState) obj2, continuation, 5);
            case 6:
                NavHostKt$NavHost$29$1 navHostKt$NavHost$29$13 = new NavHostKt$NavHost$29$1((MutableState) this.$backStackEntry, (InfiniteTransition) obj2, continuation, 6);
                navHostKt$NavHost$29$13.L$0 = obj;
                return navHostKt$NavHost$29$13;
            case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                NavHostKt$NavHost$29$1 navHostKt$NavHost$29$14 = new NavHostKt$NavHost$29$1((TrackpadScrollingLogic) obj2, continuation);
                navHostKt$NavHost$29$14.L$0 = obj;
                return navHostKt$NavHost$29$14;
            case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                NavHostKt$NavHost$29$1 navHostKt$NavHost$29$15 = new NavHostKt$NavHost$29$1((Function1) this.$transitionState, (AndroidLegacyPlatformTextInputServiceAdapter) this.$backStackEntry, (LegacyAdaptingPlatformTextInputModifierNode) obj2, continuation, 8);
                navHostKt$NavHost$29$15.L$0 = obj;
                return navHostKt$NavHost$29$15;
            case 9:
                NavHostKt$NavHost$29$1 navHostKt$NavHost$29$16 = new NavHostKt$NavHost$29$1((Function1) this.$transitionState, (AtomicReference) this.$backStackEntry, (Function2) obj2, continuation, 9);
                navHostKt$NavHost$29$16.L$0 = obj;
                return navHostKt$NavHost$29$16;
            case 10:
                return new NavHostKt$NavHost$29$1((Ref$ObjectRef) this.L$0, (Recomposer) this.$transitionState, (LifecycleOwner) this.$backStackEntry, (FragmentManager.AnonymousClass6) obj2, continuation, 10);
            case 11:
                return new NavHostKt$NavHost$29$1((ComposeScrollCaptureCallback) this.L$0, (ScrollCaptureSession) this.$transitionState, (Rect) this.$backStackEntry, (Consumer) obj2, continuation, 11);
            case BasicTextKt.ShiftMeta /* 12 */:
                NavHostKt$NavHost$29$1 navHostKt$NavHost$29$17 = new NavHostKt$NavHost$29$1((Function2) this.$transitionState, (ContextScope) this.$backStackEntry, (BroadcastReceiver.PendingResult) obj2, continuation, 12);
                navHostKt$NavHost$29$17.L$0 = obj;
                return navHostKt$NavHost$29$17;
            case 13:
                return new NavHostKt$NavHost$29$1((MutexImpl) this.$backStackEntry, (Function2) obj2, continuation, 13);
            case 14:
                NavHostKt$NavHost$29$1 navHostKt$NavHost$29$18 = new NavHostKt$NavHost$29$1((Lifecycle) this.$transitionState, (Lifecycle.State) this.$backStackEntry, (Function2) obj2, continuation, 14);
                navHostKt$NavHost$29$18.L$0 = obj;
                return navHostKt$NavHost$29$18;
            case OffsetKt.Horizontal /* 15 */:
                NavHostKt$NavHost$29$1 navHostKt$NavHost$29$19 = new NavHostKt$NavHost$29$1((TriggerBasedInvalidationTracker) this.$transitionState, (int[]) this.$backStackEntry, (String[]) obj2, continuation, 15);
                navHostKt$NavHost$29$19.L$0 = obj;
                return navHostKt$NavHost$29$19;
            case 16:
                return new NavHostKt$NavHost$29$1((ListenableWorker) this.L$0, (WorkSpec) this.$transitionState, (WorkForegroundUpdater) this.$backStackEntry, (Context) obj2, continuation, 16);
            case 17:
                return new NavHostKt$NavHost$29$1((Headers.Builder) this.L$0, (WorkSpec) this.$transitionState, (AtomicInteger) this.$backStackEntry, (ListenableFuture) obj2, continuation, 17);
            case 18:
                return new NavHostKt$NavHost$29$1((ConstraintTrackingWorker) this.L$0, (ListenableWorker) this.$transitionState, (Headers.Builder) this.$backStackEntry, (WorkSpec) obj2, continuation, 18);
            case 19:
                return new NavHostKt$NavHost$29$1((UnidirectionalViewModel) this.L$0, continuation, (Function1) this.$transitionState, (IncomingServerSettingsViewModel) this.$backStackEntry, (Function0) obj2, 19);
            case 20:
                return new NavHostKt$NavHost$29$1((Context) this.L$0, (DrawResult) this.$transitionState, (LifecycleOwner) this.$backStackEntry, (PreviewView) obj2, continuation, 20);
            case 21:
                return new NavHostKt$NavHost$29$1((PermissionsViewModel) this.L$0, continuation, (ManagedActivityResultLauncher) this.$transitionState, (ManagedActivityResultLauncher) this.$backStackEntry, (Function0) obj2, 21);
            case 22:
                NavHostKt$NavHost$29$1 navHostKt$NavHost$29$110 = new NavHostKt$NavHost$29$1((Flow) this.$transitionState, (MutableSharedFlow) this.$backStackEntry, this.$transition, continuation, 22);
                navHostKt$NavHost$29$110.L$0 = obj;
                return navHostKt$NavHost$29$110;
            case 23:
                return new NavHostKt$NavHost$29$1((SharingStarted) this.$transitionState, (Flow) this.$backStackEntry, (MutableSharedFlow) obj2, this.L$0, continuation);
            case 24:
                return new NavHostKt$NavHost$29$1((FetchingMailSettingsViewModel) this.L$0, continuation, (Function0) this.$transitionState, (Context) this.$backStackEntry, (AccountId) obj2, 24);
            case 25:
                NavHostKt$NavHost$29$1 navHostKt$NavHost$29$111 = new NavHostKt$NavHost$29$1((DrawableResource) this.$transitionState, (ResourceEnvironment) this.$backStackEntry, (DefaultAndroidResourceReader) obj2, continuation, 25);
                navHostKt$NavHost$29$111.L$0 = obj;
                return navHostKt$NavHost$29$111;
            default:
                NavHostKt$NavHost$29$1 navHostKt$NavHost$29$112 = new NavHostKt$NavHost$29$1((StringResource) this.$transitionState, (ArrayList) this.$backStackEntry, (DefaultAndroidResourceReader) obj2, continuation, 26);
                navHostKt$NavHost$29$112.L$0 = obj;
                return navHostKt$NavHost$29$112;
        }
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        Unit unit = Unit.INSTANCE;
        switch (i) {
            case 6:
                ((NavHostKt$NavHost$29$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(unit);
                break;
            case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                ((NavHostKt$NavHost$29$1) create((AndroidPlatformTextInputSession) obj, (Continuation) obj2)).invokeSuspend(unit);
                break;
            case OffsetKt.Horizontal /* 15 */:
                ((NavHostKt$NavHost$29$1) create((FlowCollector) obj, (Continuation) obj2)).invokeSuspend(unit);
                break;
            case 19:
                ((NavHostKt$NavHost$29$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(unit);
                break;
            case 21:
                ((NavHostKt$NavHost$29$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(unit);
                break;
            case 24:
                ((NavHostKt$NavHost$29$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(unit);
                break;
        }
        return ((NavHostKt$NavHost$29$1) create((ResourceEnvironment) obj, (Continuation) obj2)).invokeSuspend(unit);
    }

    /* JADX WARN: Code restructure failed: missing block: B:144:0x0231, code lost:
    
        if (r2 == r9) goto L120;
     */
    /* JADX WARN: Code restructure failed: missing block: B:240:0x0413, code lost:
    
        if (kotlinx.coroutines.JobKt.coroutineScope(r2, r25) == r9) goto L207;
     */
    /* JADX WARN: Code restructure failed: missing block: B:422:0x069b, code lost:
    
        r16 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:467:0x0781, code lost:
    
        if (kotlinx.coroutines.JobKt.coroutineScope(r0, r25) == r9) goto L404;
     */
    /* JADX WARN: Code restructure failed: missing block: B:510:0x08a4, code lost:
    
        if (r0 == r9) goto L445;
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x00c4, code lost:
    
        if (kotlinx.coroutines.flow.FlowKt.first(r0, r2, r25) == r9) goto L48;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:190:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:336:0x0599  */
    /* JADX WARN: Removed duplicated region for block: B:350:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:394:0x0655  */
    /* JADX WARN: Removed duplicated region for block: B:414:0x06be  */
    /* JADX WARN: Removed duplicated region for block: B:418:0x06d4  */
    /* JADX WARN: Removed duplicated region for block: B:424:0x06f4  */
    /* JADX WARN: Removed duplicated region for block: B:478:0x0838  */
    /* JADX WARN: Removed duplicated region for block: B:480:0x085a  */
    /* JADX WARN: Type inference failed for: r13v14, types: [java.lang.Object, kotlinx.coroutines.flow.Flow] */
    /* JADX WARN: Type inference failed for: r14v13, types: [java.lang.Object, kotlinx.coroutines.flow.FlowCollector, kotlinx.coroutines.flow.MutableSharedFlow] */
    /* JADX WARN: Type inference failed for: r1v0, types: [int] */
    /* JADX WARN: Type inference failed for: r1v115 */
    /* JADX WARN: Type inference failed for: r1v116 */
    /* JADX WARN: Type inference failed for: r1v117 */
    /* JADX WARN: Type inference failed for: r1v119 */
    /* JADX WARN: Type inference failed for: r1v120 */
    /* JADX WARN: Type inference failed for: r1v21, types: [kotlinx.coroutines.sync.Mutex] */
    /* JADX WARN: Type inference failed for: r1v24, types: [kotlinx.coroutines.sync.Mutex] */
    /* JADX WARN: Type inference failed for: r1v65, types: [kotlinx.coroutines.sync.Mutex] */
    /* JADX WARN: Type inference failed for: r1v67, types: [kotlin.jvm.functions.Function2] */
    /* JADX WARN: Type inference failed for: r1v70, types: [kotlinx.coroutines.sync.Mutex] */
    /* JADX WARN: Type inference failed for: r2v0 */
    /* JADX WARN: Type inference failed for: r2v31, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r2v35 */
    /* JADX WARN: Type inference failed for: r2v76 */
    /* JADX WARN: Type inference failed for: r2v77 */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:336:0x0655 -> B:326:0x061f). Please report as a decompilation issue!!! */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r26) {
        /*
            Method dump skipped, instructions count: 2462
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.navigation.compose.NavHostKt$NavHost$29$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ NavHostKt$NavHost$29$1(Object obj, Object obj2, Object obj3, Object obj4, Continuation continuation, int i) {
        super(2, continuation);
        this.$r8$classId = i;
        this.L$0 = obj;
        this.$transitionState = obj2;
        this.$backStackEntry = obj3;
        this.$transition = obj4;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ NavHostKt$NavHost$29$1(Object obj, Object obj2, Object obj3, Continuation continuation, int i) {
        super(2, continuation);
        this.$r8$classId = i;
        this.$transitionState = obj;
        this.$backStackEntry = obj2;
        this.$transition = obj3;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ NavHostKt$NavHost$29$1(Object obj, Object obj2, Continuation continuation, int i) {
        super(2, continuation);
        this.$r8$classId = i;
        this.$backStackEntry = obj;
        this.$transition = obj2;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ NavHostKt$NavHost$29$1(Object obj, Continuation continuation, Object obj2, Object obj3, Object obj4, int i) {
        super(2, continuation);
        this.$r8$classId = i;
        this.L$0 = obj;
        this.$transitionState = obj2;
        this.$backStackEntry = obj3;
        this.$transition = obj4;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NavHostKt$NavHost$29$1(TrackpadScrollingLogic trackpadScrollingLogic, Continuation continuation) {
        super(2, continuation);
        this.$r8$classId = 7;
        this.$transition = trackpadScrollingLogic;
    }
}
