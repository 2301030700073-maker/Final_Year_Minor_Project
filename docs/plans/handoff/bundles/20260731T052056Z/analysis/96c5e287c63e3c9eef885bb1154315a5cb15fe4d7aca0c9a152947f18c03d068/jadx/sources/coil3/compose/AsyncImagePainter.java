package coil3.compose;

import android.os.Trace;
import androidx.compose.runtime.ParcelableSnapshotMutableState;
import androidx.compose.runtime.RememberObserver;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.graphics.BlendModeColorFilter;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import androidx.compose.ui.graphics.painter.Painter;
import androidx.compose.ui.layout.ContentScale;
import androidx.work.Data$$ExternalSyntheticLambda0;
import coil3.RealImageLoader;
import coil3.RealImageLoader$execute$2;
import coil3.compose.internal.DeferredDispatchCoroutineContext;
import coil3.compose.internal.DeferredDispatchCoroutineDispatcher;
import coil3.compose.internal.UtilsKt;
import coil3.request.ErrorResult;
import coil3.request.ImageRequest;
import coil3.request.SuccessResult;
import coil3.size.Precision;
import coil3.size.Scale;
import coil3.size.SizeResolver;
import coil3.svg.internal.AndroidSvg;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.AwaitKt;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineStart;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.StandaloneCoroutine;
import kotlinx.coroutines.flow.ReadonlyStateFlow;
import kotlinx.coroutines.flow.StateFlowImpl;
import kotlinx.coroutines.flow.StateFlowKt;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class AsyncImagePainter extends Painter implements RememberObserver {
    public static final Data$$ExternalSyntheticLambda0 DefaultTransform = new Data$$ExternalSyntheticLambda0(16);
    public Input _input;
    public BlendModeColorFilter colorFilter;
    public final StateFlowImpl inputFlow;
    public boolean isRemembered;
    public Function1 onState;
    public AsyncImagePreviewHandler$Companion$Default$1 previewHandler;
    public Job rememberJob;
    public CoroutineScope scope;
    public final ReadonlyStateFlow state;
    public final StateFlowImpl stateFlow;
    public final ParcelableSnapshotMutableState painter$delegate = Updater.mutableStateOf$default(null);
    public float alpha = 1.0f;
    public long drawSize = 9205357640488583168L;
    public Function1 transform = DefaultTransform;
    public ContentScale contentScale = ContentScale.Companion.Fit;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Input {
        public final RealImageLoader imageLoader;
        public final AsyncImageModelEqualityDelegate$Companion$Default$1 modelEqualityDelegate;
        public final ImageRequest request;

        public Input(RealImageLoader realImageLoader, ImageRequest imageRequest, AsyncImageModelEqualityDelegate$Companion$Default$1 asyncImageModelEqualityDelegate$Companion$Default$1) {
            this.imageLoader = realImageLoader;
            this.request = imageRequest;
            this.modelEqualityDelegate = asyncImageModelEqualityDelegate$Companion$Default$1;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Input)) {
                return false;
            }
            Input input = (Input) obj;
            if (this.imageLoader != input.imageLoader) {
                return false;
            }
            AsyncImageModelEqualityDelegate$Companion$Default$1 asyncImageModelEqualityDelegate$Companion$Default$1 = input.modelEqualityDelegate;
            AsyncImageModelEqualityDelegate$Companion$Default$1 asyncImageModelEqualityDelegate$Companion$Default$12 = this.modelEqualityDelegate;
            return Intrinsics.areEqual(asyncImageModelEqualityDelegate$Companion$Default$12, asyncImageModelEqualityDelegate$Companion$Default$1) && asyncImageModelEqualityDelegate$Companion$Default$12.equals(this.request, input.request);
        }

        public final int hashCode() {
            int hashCode = this.imageLoader.hashCode() * 31;
            AsyncImageModelEqualityDelegate$Companion$Default$1 asyncImageModelEqualityDelegate$Companion$Default$1 = this.modelEqualityDelegate;
            return asyncImageModelEqualityDelegate$Companion$Default$1.hashCode(this.request) + ((asyncImageModelEqualityDelegate$Companion$Default$1.hashCode() + hashCode) * 31);
        }

        public final String toString() {
            return "Input(imageLoader=" + this.imageLoader + ", request=" + this.request + ", modelEqualityDelegate=" + this.modelEqualityDelegate + ")";
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public interface State {

        /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
        public final class Empty implements State {
            public static final Empty INSTANCE = new Empty();

            public final boolean equals(Object obj) {
                return this == obj || (obj instanceof Empty);
            }

            @Override // coil3.compose.AsyncImagePainter.State
            public final Painter getPainter() {
                return null;
            }

            public final int hashCode() {
                return -1625786264;
            }

            public final String toString() {
                return "Empty";
            }
        }

        /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
        public final class Error implements State {
            public final Painter painter;
            public final ErrorResult result;

            public Error(Painter painter, ErrorResult errorResult) {
                this.painter = painter;
                this.result = errorResult;
            }

            public final boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                if (!(obj instanceof Error)) {
                    return false;
                }
                Error error = (Error) obj;
                return Intrinsics.areEqual(this.painter, error.painter) && this.result.equals(error.result);
            }

            @Override // coil3.compose.AsyncImagePainter.State
            public final Painter getPainter() {
                return this.painter;
            }

            public final int hashCode() {
                Painter painter = this.painter;
                return this.result.hashCode() + ((painter == null ? 0 : painter.hashCode()) * 31);
            }

            public final String toString() {
                return "Error(painter=" + this.painter + ", result=" + this.result + ")";
            }
        }

        /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
        public final class Loading implements State {
            public final Painter painter;

            public Loading(Painter painter) {
                this.painter = painter;
            }

            public final boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                return (obj instanceof Loading) && Intrinsics.areEqual(this.painter, ((Loading) obj).painter);
            }

            @Override // coil3.compose.AsyncImagePainter.State
            public final Painter getPainter() {
                return this.painter;
            }

            public final int hashCode() {
                Painter painter = this.painter;
                if (painter == null) {
                    return 0;
                }
                return painter.hashCode();
            }

            public final String toString() {
                return "Loading(painter=" + this.painter + ")";
            }
        }

        /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
        public final class Success implements State {
            public final Painter painter;
            public final SuccessResult result;

            public Success(Painter painter, SuccessResult successResult) {
                this.painter = painter;
                this.result = successResult;
            }

            public final boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                if (!(obj instanceof Success)) {
                    return false;
                }
                Success success = (Success) obj;
                return this.painter.equals(success.painter) && this.result.equals(success.result);
            }

            @Override // coil3.compose.AsyncImagePainter.State
            public final Painter getPainter() {
                return this.painter;
            }

            public final int hashCode() {
                return this.result.hashCode() + (this.painter.hashCode() * 31);
            }

            public final String toString() {
                return "Success(painter=" + this.painter + ", result=" + this.result + ")";
            }
        }

        Painter getPainter();
    }

    public AsyncImagePainter(Input input) {
        this._input = input;
        this.inputFlow = StateFlowKt.MutableStateFlow(input);
        StateFlowImpl MutableStateFlow = StateFlowKt.MutableStateFlow(State.Empty.INSTANCE);
        this.stateFlow = MutableStateFlow;
        this.state = new ReadonlyStateFlow(MutableStateFlow);
    }

    @Override // androidx.compose.ui.graphics.painter.Painter
    public final boolean applyAlpha(float f) {
        this.alpha = f;
        return true;
    }

    @Override // androidx.compose.ui.graphics.painter.Painter
    public final boolean applyColorFilter(BlendModeColorFilter blendModeColorFilter) {
        this.colorFilter = blendModeColorFilter;
        return true;
    }

    @Override // androidx.compose.ui.graphics.painter.Painter
    /* renamed from: getIntrinsicSize-NH-jbRc */
    public final long mo493getIntrinsicSizeNHjbRc() {
        Painter painter = getPainter();
        if (painter != null) {
            return painter.mo493getIntrinsicSizeNHjbRc();
        }
        return 9205357640488583168L;
    }

    public final Painter getPainter() {
        return (Painter) this.painter$delegate.getValue();
    }

    public final void launchJob() {
        Input input = this._input;
        if (input == null) {
            return;
        }
        CoroutineScope coroutineScope = this.scope;
        Continuation continuation = null;
        if (coroutineScope == null) {
            Intrinsics.throwUninitializedPropertyAccessException("scope");
            throw null;
        }
        RealImageLoader$execute$2 realImageLoader$execute$2 = new RealImageLoader$execute$2(this, input, continuation, 8);
        CoroutineContext coroutineContext = coroutineScope.getCoroutineContext();
        int i = UtilsKt.$r8$clinit;
        CoroutineDispatcher coroutineDispatcher = (CoroutineDispatcher) coroutineContext.get(CoroutineDispatcher.Key);
        StandaloneCoroutine launch = (coroutineDispatcher == null || coroutineDispatcher.equals(Dispatchers.Unconfined)) ? AwaitKt.launch(coroutineScope, Dispatchers.Unconfined, CoroutineStart.UNDISPATCHED, realImageLoader$execute$2) : AwaitKt.launch(AwaitKt.CoroutineScope(new DeferredDispatchCoroutineContext(coroutineScope.getCoroutineContext())), new DeferredDispatchCoroutineDispatcher(coroutineDispatcher), CoroutineStart.UNDISPATCHED, realImageLoader$execute$2);
        Job job = this.rememberJob;
        if (job != null) {
            job.cancel(null);
        }
        this.rememberJob = launch;
    }

    @Override // androidx.compose.runtime.RememberObserver
    public final void onAbandoned() {
        Job job = this.rememberJob;
        if (job != null) {
            job.cancel(null);
        }
        this.rememberJob = null;
        Object painter = getPainter();
        RememberObserver rememberObserver = painter instanceof RememberObserver ? (RememberObserver) painter : null;
        if (rememberObserver != null) {
            rememberObserver.onAbandoned();
        }
        this.isRemembered = false;
    }

    @Override // androidx.compose.ui.graphics.painter.Painter
    public final void onDraw(DrawScope drawScope) {
        long mo476getSizeNHjbRc = drawScope.mo476getSizeNHjbRc();
        if (!Size.m394equalsimpl0(this.drawSize, mo476getSizeNHjbRc)) {
            this.drawSize = mo476getSizeNHjbRc;
        }
        Painter painter = getPainter();
        if (painter != null) {
            painter.m494drawx_KDEd0(drawScope, drawScope.mo476getSizeNHjbRc(), this.alpha, this.colorFilter);
        }
    }

    @Override // androidx.compose.runtime.RememberObserver
    public final void onForgotten() {
        Job job = this.rememberJob;
        if (job != null) {
            job.cancel(null);
        }
        this.rememberJob = null;
        Object painter = getPainter();
        RememberObserver rememberObserver = painter instanceof RememberObserver ? (RememberObserver) painter : null;
        if (rememberObserver != null) {
            rememberObserver.onForgotten();
        }
        this.isRemembered = false;
    }

    @Override // androidx.compose.runtime.RememberObserver
    public final void onRemembered() {
        Trace.beginSection("AsyncImagePainter.onRemembered");
        try {
            Object painter = getPainter();
            RememberObserver rememberObserver = painter instanceof RememberObserver ? (RememberObserver) painter : null;
            if (rememberObserver != null) {
                rememberObserver.onRemembered();
            }
            launchJob();
            this.isRemembered = true;
        } finally {
            Trace.endSection();
        }
    }

    public final void set_input$coil_compose_core(Input input) {
        if (Intrinsics.areEqual(this._input, input)) {
            return;
        }
        this._input = input;
        if (input == null) {
            Job job = this.rememberJob;
            if (job != null) {
                job.cancel(null);
            }
            this.rememberJob = null;
        } else if (this.isRemembered) {
            launchJob();
        }
        if (input != null) {
            this.inputFlow.updateState(null, input);
        }
    }

    public final ImageRequest updateRequest(ImageRequest imageRequest, boolean z) {
        ImageRequest.Builder newBuilder$default = ImageRequest.newBuilder$default(imageRequest);
        newBuilder$default.target = new AndroidSvg(imageRequest, this);
        ImageRequest.Defined defined = imageRequest.defined;
        if (defined.sizeResolver == null) {
            newBuilder$default.sizeResolver = SizeResolver.ORIGINAL;
        }
        if (defined.scale == null) {
            ContentScale contentScale = this.contentScale;
            int i = UtilsKt.$r8$clinit;
            newBuilder$default.scale = (Intrinsics.areEqual(contentScale, ContentScale.Companion.Fit) || Intrinsics.areEqual(contentScale, ContentScale.Companion.Inside)) ? Scale.FIT : Scale.FILL;
        }
        if (defined.precision == null) {
            newBuilder$default.precision = Precision.INEXACT;
        }
        if (z) {
            EmptyCoroutineContext emptyCoroutineContext = EmptyCoroutineContext.INSTANCE;
            newBuilder$default.interceptorCoroutineContext = emptyCoroutineContext;
            newBuilder$default.fetcherCoroutineContext = emptyCoroutineContext;
            newBuilder$default.decoderCoroutineContext = emptyCoroutineContext;
        }
        return newBuilder$default.build();
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x006e  */
    /* JADX WARN: Removed duplicated region for block: B:23:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0048  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void updateState(coil3.compose.AsyncImagePainter.State r4) {
        /*
            r3 = this;
            kotlinx.coroutines.flow.StateFlowImpl r0 = r3.stateFlow
            java.lang.Object r1 = r0.getValue()
            coil3.compose.AsyncImagePainter$State r1 = (coil3.compose.AsyncImagePainter.State) r1
            kotlin.jvm.functions.Function1 r2 = r3.transform
            java.lang.Object r4 = r2.invoke(r4)
            coil3.compose.AsyncImagePainter$State r4 = (coil3.compose.AsyncImagePainter.State) r4
            r0.setValue(r4)
            boolean r0 = r4 instanceof coil3.compose.AsyncImagePainter.State.Success
            if (r0 == 0) goto L1d
            r0 = r4
            coil3.compose.AsyncImagePainter$State$Success r0 = (coil3.compose.AsyncImagePainter.State.Success) r0
            coil3.request.SuccessResult r0 = r0.result
            goto L26
        L1d:
            boolean r0 = r4 instanceof coil3.compose.AsyncImagePainter.State.Error
            if (r0 == 0) goto L35
            r0 = r4
            coil3.compose.AsyncImagePainter$State$Error r0 = (coil3.compose.AsyncImagePainter.State.Error) r0
            coil3.request.ErrorResult r0 = r0.result
        L26:
            coil3.request.ImageRequest r0 = r0.getRequest()
            coil3.Extras$Key r2 = coil3.request.ImageRequests_androidKt.transitionFactoryKey
            java.lang.Object r0 = coil3.UriKt.getExtra(r0, r2)
            coil3.transition.NoneTransition$Factory r0 = (coil3.transition.NoneTransition$Factory) r0
            r0.getClass()
        L35:
            androidx.compose.ui.graphics.painter.Painter r0 = r4.getPainter()
            androidx.compose.runtime.ParcelableSnapshotMutableState r2 = r3.painter$delegate
            r2.setValue(r0)
            androidx.compose.ui.graphics.painter.Painter r0 = r1.getPainter()
            androidx.compose.ui.graphics.painter.Painter r2 = r4.getPainter()
            if (r0 == r2) goto L6a
            androidx.compose.ui.graphics.painter.Painter r0 = r1.getPainter()
            boolean r1 = r0 instanceof androidx.compose.runtime.RememberObserver
            r2 = 0
            if (r1 == 0) goto L54
            androidx.compose.runtime.RememberObserver r0 = (androidx.compose.runtime.RememberObserver) r0
            goto L55
        L54:
            r0 = r2
        L55:
            if (r0 == 0) goto L5a
            r0.onForgotten()
        L5a:
            androidx.compose.ui.graphics.painter.Painter r0 = r4.getPainter()
            boolean r1 = r0 instanceof androidx.compose.runtime.RememberObserver
            if (r1 == 0) goto L65
            r2 = r0
            androidx.compose.runtime.RememberObserver r2 = (androidx.compose.runtime.RememberObserver) r2
        L65:
            if (r2 == 0) goto L6a
            r2.onRemembered()
        L6a:
            kotlin.jvm.functions.Function1 r3 = r3.onState
            if (r3 == 0) goto L71
            r3.invoke(r4)
        L71:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: coil3.compose.AsyncImagePainter.updateState(coil3.compose.AsyncImagePainter$State):void");
    }
}
