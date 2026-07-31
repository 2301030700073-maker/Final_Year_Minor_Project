package androidx.camera.core;

import android.util.Range;
import android.util.Size;
import android.view.Surface;
import androidx.biometric.BiometricPrompt;
import androidx.camera.camera2.interop.CaptureRequestOptions$Builder$Companion$$ExternalSyntheticLambda0;
import androidx.camera.camera2.pipe.CameraDevices$CC;
import androidx.camera.core.impl.AutoValue_StreamSpec;
import androidx.camera.core.impl.CameraInternal;
import androidx.camera.core.impl.DeferrableSurface;
import androidx.camera.core.impl.utils.futures.FutureCallback;
import androidx.camera.core.impl.utils.futures.Futures;
import androidx.camera.core.processing.SurfaceEdge$$ExternalSyntheticLambda0;
import androidx.concurrent.futures.CallbackToFutureAdapter$Completer;
import androidx.concurrent.futures.CallbackToFutureAdapter$SafeFuture;
import androidx.concurrent.futures.ResolvableFuture;
import androidx.core.app.ActivityRecreator;
import androidx.core.util.Consumer;
import androidx.core.util.Pair;
import androidx.core.view.MenuHostHelper;
import androidx.room.util.RelationUtil;
import com.bumptech.glide.util.Executors$1;
import com.fsck.k9.sasl.OAuthBearer;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicReference;
import org.koin.core.error.InstanceCreationException;
import org.slf4j.helpers.Util;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class SurfaceRequest {
    public final CameraInternal mCamera;
    public final DynamicRange mDynamicRange;
    public final AnonymousClass2 mInternalDeferrableSurface;
    public final boolean mIsPrimary;
    public final Object mLock = new Object();
    public final CallbackToFutureAdapter$Completer mRequestCancellationCompleter;
    public final Size mResolution;
    public final CallbackToFutureAdapter$SafeFuture mSessionStatusFuture;
    public final CallbackToFutureAdapter$Completer mSurfaceCompleter;
    public final CallbackToFutureAdapter$SafeFuture mSurfaceFuture;
    public final CallbackToFutureAdapter$Completer mSurfaceRecreationCompleter;
    public AutoValue_SurfaceRequest_TransformationInfo mTransformationInfo;
    public Executor mTransformationInfoExecutor;
    public TransformationInfoListener mTransformationInfoListener;

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    /* renamed from: androidx.camera.core.SurfaceRequest$1, reason: invalid class name */
    public final class AnonymousClass1 implements FutureCallback {
        public static final AnonymousClass1 DEFAULT;
        public final /* synthetic */ int $r8$classId;
        public final Object val$requestCancellationCompleter;
        public final Object val$requestCancellationFuture;

        static {
            Float valueOf = Float.valueOf(1.0f);
            Float valueOf2 = Float.valueOf(0.0f);
            DEFAULT = new AnonymousClass1(1, new Pair(valueOf2, valueOf2), new Pair(valueOf, valueOf));
        }

        public /* synthetic */ AnonymousClass1(int i, Object obj, Object obj2) {
            this.$r8$classId = i;
            this.val$requestCancellationCompleter = obj;
            this.val$requestCancellationFuture = obj2;
        }

        @Override // androidx.camera.core.impl.utils.futures.FutureCallback
        public void onFailure(Throwable th) {
            int i = this.$r8$classId;
            Object obj = this.val$requestCancellationFuture;
            Object obj2 = this.val$requestCancellationCompleter;
            switch (i) {
                case 0:
                    if (!(th instanceof RequestCancelledException)) {
                        RelationUtil.checkState(null, ((CallbackToFutureAdapter$Completer) obj2).set(null));
                        break;
                    } else {
                        RelationUtil.checkState(null, ((CallbackToFutureAdapter$SafeFuture) obj).cancel(false));
                        break;
                    }
                default:
                    RelationUtil.checkState("Camera surface session should only fail with request cancellation. Instead failed due to:\n" + th, th instanceof RequestCancelledException);
                    ((Consumer) obj2).accept(new AutoValue_SurfaceRequest_Result(1, (Surface) obj));
                    break;
            }
        }

        @Override // androidx.camera.core.impl.utils.futures.FutureCallback
        public void onSuccess(Object obj) {
            int i = this.$r8$classId;
            Object obj2 = this.val$requestCancellationCompleter;
            switch (i) {
                case 0:
                    RelationUtil.checkState(null, ((CallbackToFutureAdapter$Completer) obj2).set(null));
                    break;
                default:
                    ((Consumer) obj2).accept(new AutoValue_SurfaceRequest_Result(0, (Surface) this.val$requestCancellationFuture));
                    break;
            }
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class RequestCancelledException extends RuntimeException {
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public interface TransformationInfoListener {
        void onTransformationInfoUpdate(AutoValue_SurfaceRequest_TransformationInfo autoValue_SurfaceRequest_TransformationInfo);
    }

    static {
        Range range = AutoValue_StreamSpec.FRAME_RATE_RANGE_UNSPECIFIED;
    }

    public SurfaceRequest(Size size, CameraInternal cameraInternal, boolean z, DynamicRange dynamicRange, SurfaceEdge$$ExternalSyntheticLambda0 surfaceEdge$$ExternalSyntheticLambda0) {
        this.mResolution = size;
        this.mCamera = cameraInternal;
        this.mIsPrimary = z;
        RelationUtil.checkArgument("SurfaceRequest's DynamicRange must always be fully specified.", dynamicRange.isFullySpecified());
        this.mDynamicRange = dynamicRange;
        String str = "SurfaceRequest[size: " + size + ", id: " + hashCode() + "]";
        AtomicReference atomicReference = new AtomicReference(null);
        CallbackToFutureAdapter$Completer callbackToFutureAdapter$Completer = new CallbackToFutureAdapter$Completer();
        callbackToFutureAdapter$Completer.cancellationFuture = new ResolvableFuture();
        CallbackToFutureAdapter$SafeFuture callbackToFutureAdapter$SafeFuture = new CallbackToFutureAdapter$SafeFuture(callbackToFutureAdapter$Completer);
        callbackToFutureAdapter$Completer.future = callbackToFutureAdapter$SafeFuture;
        callbackToFutureAdapter$Completer.tag = CameraDevices$CC.class;
        try {
            atomicReference.set(callbackToFutureAdapter$Completer);
            callbackToFutureAdapter$Completer.tag = str.concat("-cancellation");
        } catch (Exception e) {
            callbackToFutureAdapter$SafeFuture.setException(e);
        }
        CallbackToFutureAdapter$Completer callbackToFutureAdapter$Completer2 = (CallbackToFutureAdapter$Completer) atomicReference.get();
        callbackToFutureAdapter$Completer2.getClass();
        this.mRequestCancellationCompleter = callbackToFutureAdapter$Completer2;
        AtomicReference atomicReference2 = new AtomicReference(null);
        CallbackToFutureAdapter$Completer callbackToFutureAdapter$Completer3 = new CallbackToFutureAdapter$Completer();
        callbackToFutureAdapter$Completer3.cancellationFuture = new ResolvableFuture();
        CallbackToFutureAdapter$SafeFuture callbackToFutureAdapter$SafeFuture2 = new CallbackToFutureAdapter$SafeFuture(callbackToFutureAdapter$Completer3);
        callbackToFutureAdapter$Completer3.future = callbackToFutureAdapter$SafeFuture2;
        callbackToFutureAdapter$Completer3.tag = CameraDevices$CC.class;
        try {
            atomicReference2.set(callbackToFutureAdapter$Completer3);
            callbackToFutureAdapter$Completer3.tag = str.concat("-status");
        } catch (Exception e2) {
            callbackToFutureAdapter$SafeFuture2.setException(e2);
        }
        this.mSessionStatusFuture = callbackToFutureAdapter$SafeFuture2;
        int i = 1;
        callbackToFutureAdapter$SafeFuture2.addListener(new ActivityRecreator.AnonymousClass1(i, callbackToFutureAdapter$SafeFuture2, new AnonymousClass1(0, callbackToFutureAdapter$Completer2, callbackToFutureAdapter$SafeFuture)), Util.directExecutor());
        CallbackToFutureAdapter$Completer callbackToFutureAdapter$Completer4 = (CallbackToFutureAdapter$Completer) atomicReference2.get();
        callbackToFutureAdapter$Completer4.getClass();
        AtomicReference atomicReference3 = new AtomicReference(null);
        CallbackToFutureAdapter$Completer callbackToFutureAdapter$Completer5 = new CallbackToFutureAdapter$Completer();
        callbackToFutureAdapter$Completer5.cancellationFuture = new ResolvableFuture();
        CallbackToFutureAdapter$SafeFuture callbackToFutureAdapter$SafeFuture3 = new CallbackToFutureAdapter$SafeFuture(callbackToFutureAdapter$Completer5);
        callbackToFutureAdapter$Completer5.future = callbackToFutureAdapter$SafeFuture3;
        callbackToFutureAdapter$Completer5.tag = CameraDevices$CC.class;
        try {
            atomicReference3.set(callbackToFutureAdapter$Completer5);
            callbackToFutureAdapter$Completer5.tag = str.concat("-Surface");
        } catch (Exception e3) {
            callbackToFutureAdapter$SafeFuture3.setException(e3);
        }
        this.mSurfaceFuture = callbackToFutureAdapter$SafeFuture3;
        CallbackToFutureAdapter$Completer callbackToFutureAdapter$Completer6 = (CallbackToFutureAdapter$Completer) atomicReference3.get();
        callbackToFutureAdapter$Completer6.getClass();
        this.mSurfaceCompleter = callbackToFutureAdapter$Completer6;
        AnonymousClass2 anonymousClass2 = new AnonymousClass2(this, size);
        this.mInternalDeferrableSurface = anonymousClass2;
        ListenableFuture nonCancellationPropagating = Futures.nonCancellationPropagating(anonymousClass2.mTerminationFuture);
        callbackToFutureAdapter$SafeFuture3.addListener(new ActivityRecreator.AnonymousClass1(i, callbackToFutureAdapter$SafeFuture3, new MenuHostHelper(nonCancellationPropagating, callbackToFutureAdapter$Completer4, str, 5)), Util.directExecutor());
        nonCancellationPropagating.addListener(new SurfaceRequest$$ExternalSyntheticLambda1(this, 0), Util.directExecutor());
        Executors$1 directExecutor = Util.directExecutor();
        AtomicReference atomicReference4 = new AtomicReference(null);
        CallbackToFutureAdapter$SafeFuture future = OAuthBearer.getFuture(new CaptureRequestOptions$Builder$Companion$$ExternalSyntheticLambda0(2, this, atomicReference4));
        future.addListener(new ActivityRecreator.AnonymousClass1(i, future, new BiometricPrompt(24, surfaceEdge$$ExternalSyntheticLambda0)), directExecutor);
        CallbackToFutureAdapter$Completer callbackToFutureAdapter$Completer7 = (CallbackToFutureAdapter$Completer) atomicReference4.get();
        callbackToFutureAdapter$Completer7.getClass();
        this.mSurfaceRecreationCompleter = callbackToFutureAdapter$Completer7;
    }

    public final void provideSurface(final Surface surface, Executor executor, final Consumer consumer) {
        if (!surface.isValid()) {
            final int i = 0;
            executor.execute(new Runnable() { // from class: androidx.camera.core.SurfaceRequest$$ExternalSyntheticLambda4
                @Override // java.lang.Runnable
                public final void run() {
                    int i2 = i;
                    Surface surface2 = surface;
                    Consumer consumer2 = consumer;
                    switch (i2) {
                        case 0:
                            consumer2.accept(new AutoValue_SurfaceRequest_Result(2, surface2));
                            break;
                        case 1:
                            consumer2.accept(new AutoValue_SurfaceRequest_Result(3, surface2));
                            break;
                        default:
                            consumer2.accept(new AutoValue_SurfaceRequest_Result(4, surface2));
                            break;
                    }
                }
            });
            return;
        }
        final int i2 = 2;
        final int i3 = 1;
        if (!this.mSurfaceCompleter.set(surface)) {
            CallbackToFutureAdapter$SafeFuture callbackToFutureAdapter$SafeFuture = this.mSurfaceFuture;
            if (!callbackToFutureAdapter$SafeFuture.isCancelled()) {
                RelationUtil.checkState(null, callbackToFutureAdapter$SafeFuture.delegate.isDone());
                try {
                    callbackToFutureAdapter$SafeFuture.get();
                    executor.execute(new Runnable() { // from class: androidx.camera.core.SurfaceRequest$$ExternalSyntheticLambda4
                        @Override // java.lang.Runnable
                        public final void run() {
                            int i22 = i3;
                            Surface surface2 = surface;
                            Consumer consumer2 = consumer;
                            switch (i22) {
                                case 0:
                                    consumer2.accept(new AutoValue_SurfaceRequest_Result(2, surface2));
                                    break;
                                case 1:
                                    consumer2.accept(new AutoValue_SurfaceRequest_Result(3, surface2));
                                    break;
                                default:
                                    consumer2.accept(new AutoValue_SurfaceRequest_Result(4, surface2));
                                    break;
                            }
                        }
                    });
                    return;
                } catch (InterruptedException | ExecutionException unused) {
                    executor.execute(new Runnable() { // from class: androidx.camera.core.SurfaceRequest$$ExternalSyntheticLambda4
                        @Override // java.lang.Runnable
                        public final void run() {
                            int i22 = i2;
                            Surface surface2 = surface;
                            Consumer consumer2 = consumer;
                            switch (i22) {
                                case 0:
                                    consumer2.accept(new AutoValue_SurfaceRequest_Result(2, surface2));
                                    break;
                                case 1:
                                    consumer2.accept(new AutoValue_SurfaceRequest_Result(3, surface2));
                                    break;
                                default:
                                    consumer2.accept(new AutoValue_SurfaceRequest_Result(4, surface2));
                                    break;
                            }
                        }
                    });
                    return;
                }
            }
        }
        AnonymousClass1 anonymousClass1 = new AnonymousClass1(i2, consumer, surface);
        CallbackToFutureAdapter$SafeFuture callbackToFutureAdapter$SafeFuture2 = this.mSessionStatusFuture;
        callbackToFutureAdapter$SafeFuture2.addListener(new ActivityRecreator.AnonymousClass1(i3, callbackToFutureAdapter$SafeFuture2, anonymousClass1), executor);
    }

    public final void setTransformationInfoListener(Executor executor, TransformationInfoListener transformationInfoListener) {
        AutoValue_SurfaceRequest_TransformationInfo autoValue_SurfaceRequest_TransformationInfo;
        synchronized (this.mLock) {
            this.mTransformationInfoListener = transformationInfoListener;
            this.mTransformationInfoExecutor = executor;
            autoValue_SurfaceRequest_TransformationInfo = this.mTransformationInfo;
        }
        if (autoValue_SurfaceRequest_TransformationInfo != null) {
            executor.execute(new SurfaceRequest$$ExternalSyntheticLambda0(transformationInfoListener, autoValue_SurfaceRequest_TransformationInfo, 1));
        }
    }

    public final boolean willNotProvideSurface() {
        return this.mSurfaceCompleter.setException(new InstanceCreationException("Surface request will not complete."));
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    /* renamed from: androidx.camera.core.SurfaceRequest$2, reason: invalid class name */
    public final class AnonymousClass2 extends DeferrableSurface {
        public final /* synthetic */ int $r8$classId = 1;
        public final Object this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass2(SurfaceRequest surfaceRequest, Size size) {
            super(34, size);
            this.this$0 = surfaceRequest;
        }

        @Override // androidx.camera.core.impl.DeferrableSurface
        public final ListenableFuture provideSurface() {
            int i = this.$r8$classId;
            Object obj = this.this$0;
            switch (i) {
                case 0:
                    return ((SurfaceRequest) obj).mSurfaceFuture;
                default:
                    return Futures.immediateFuture((Surface) obj);
            }
        }

        public AnonymousClass2(Surface surface, Size size, int i) {
            super(i, size);
            this.this$0 = surface;
        }
    }
}
