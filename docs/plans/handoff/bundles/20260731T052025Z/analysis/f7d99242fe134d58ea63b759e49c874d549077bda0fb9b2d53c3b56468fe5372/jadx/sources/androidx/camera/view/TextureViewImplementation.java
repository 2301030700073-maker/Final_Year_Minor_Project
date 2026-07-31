package androidx.camera.view;

import android.graphics.Bitmap;
import android.graphics.SurfaceTexture;
import android.util.Size;
import android.view.Surface;
import android.view.TextureView;
import android.view.View;
import android.widget.FrameLayout;
import androidx.camera.camera2.interop.CaptureRequestOptions$Builder$Companion$$ExternalSyntheticLambda0;
import androidx.camera.camera2.pipe.CameraDevices$CC;
import androidx.camera.core.CameraX$$ExternalSyntheticLambda2;
import androidx.camera.core.SurfaceRequest;
import androidx.cardview.widget.CardView;
import androidx.concurrent.futures.CallbackToFutureAdapter$Completer;
import androidx.concurrent.futures.CallbackToFutureAdapter$SafeFuture;
import androidx.concurrent.futures.ResolvableFuture;
import androidx.core.app.ActivityRecreator;
import androidx.datastore.preferences.protobuf.Utf8;
import androidx.tracing.TraceApi29Impl;
import androidx.work.WorkRequest;
import androidx.work.impl.Schedulers$$ExternalSyntheticLambda1;
import com.fsck.k9.sasl.OAuthBearer;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class TextureViewImplementation extends WorkRequest.Builder {
    public SurfaceTexture mDetachedSurfaceTexture;
    public boolean mIsSurfaceTextureDetachedFromView;
    public AtomicReference mNextFrameCompleter;
    public PreviewView$1$$ExternalSyntheticLambda2 mOnSurfaceNotInUseListener;
    public CallbackToFutureAdapter$SafeFuture mSurfaceReleaseFuture;
    public SurfaceRequest mSurfaceRequest;
    public SurfaceTexture mSurfaceTexture;
    public TextureView mTextureView;

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    /* renamed from: androidx.camera.view.TextureViewImplementation$1, reason: invalid class name */
    public final class AnonymousClass1 implements TextureView.SurfaceTextureListener {
        public AnonymousClass1() {
        }

        @Override // android.view.TextureView.SurfaceTextureListener
        public final void onSurfaceTextureAvailable(SurfaceTexture surfaceTexture, int i, int i2) {
            Utf8.SafeProcessor.d("TextureViewImpl", "SurfaceTexture available. Size: " + i + "x" + i2);
            TextureViewImplementation textureViewImplementation = TextureViewImplementation.this;
            textureViewImplementation.mSurfaceTexture = surfaceTexture;
            if (textureViewImplementation.mSurfaceReleaseFuture == null) {
                textureViewImplementation.tryToProvidePreviewSurface();
                return;
            }
            textureViewImplementation.mSurfaceRequest.getClass();
            Utf8.SafeProcessor.d("TextureViewImpl", "Surface invalidated " + textureViewImplementation.mSurfaceRequest);
            textureViewImplementation.mSurfaceRequest.mInternalDeferrableSurface.close();
        }

        @Override // android.view.TextureView.SurfaceTextureListener
        public final boolean onSurfaceTextureDestroyed(SurfaceTexture surfaceTexture) {
            TextureViewImplementation textureViewImplementation = TextureViewImplementation.this;
            textureViewImplementation.mSurfaceTexture = null;
            CallbackToFutureAdapter$SafeFuture callbackToFutureAdapter$SafeFuture = textureViewImplementation.mSurfaceReleaseFuture;
            if (callbackToFutureAdapter$SafeFuture == null) {
                Utf8.SafeProcessor.d("TextureViewImpl", "SurfaceTexture about to be destroyed");
                return true;
            }
            CardView.AnonymousClass1 anonymousClass1 = new CardView.AnonymousClass1(19, this, surfaceTexture);
            callbackToFutureAdapter$SafeFuture.addListener(new ActivityRecreator.AnonymousClass1(1, callbackToFutureAdapter$SafeFuture, anonymousClass1), TraceApi29Impl.getMainExecutor(textureViewImplementation.mTextureView.getContext()));
            textureViewImplementation.mDetachedSurfaceTexture = surfaceTexture;
            return false;
        }

        @Override // android.view.TextureView.SurfaceTextureListener
        public final void onSurfaceTextureSizeChanged(SurfaceTexture surfaceTexture, int i, int i2) {
            Utf8.SafeProcessor.d("TextureViewImpl", "SurfaceTexture size changed: " + i + "x" + i2);
        }

        @Override // android.view.TextureView.SurfaceTextureListener
        public final void onSurfaceTextureUpdated(SurfaceTexture surfaceTexture) {
            CallbackToFutureAdapter$Completer callbackToFutureAdapter$Completer = (CallbackToFutureAdapter$Completer) TextureViewImplementation.this.mNextFrameCompleter.getAndSet(null);
            if (callbackToFutureAdapter$Completer != null) {
                callbackToFutureAdapter$Completer.set(null);
            }
        }
    }

    @Override // androidx.work.WorkRequest.Builder
    public final View getPreview() {
        return this.mTextureView;
    }

    @Override // androidx.work.WorkRequest.Builder
    public final Bitmap getPreviewBitmap() {
        TextureView textureView = this.mTextureView;
        if (textureView == null || !textureView.isAvailable()) {
            return null;
        }
        return this.mTextureView.getBitmap();
    }

    @Override // androidx.work.WorkRequest.Builder
    public final void onAttachedToWindow() {
        if (!this.mIsSurfaceTextureDetachedFromView || this.mDetachedSurfaceTexture == null) {
            return;
        }
        SurfaceTexture surfaceTexture = this.mTextureView.getSurfaceTexture();
        SurfaceTexture surfaceTexture2 = this.mDetachedSurfaceTexture;
        if (surfaceTexture != surfaceTexture2) {
            this.mTextureView.setSurfaceTexture(surfaceTexture2);
            this.mDetachedSurfaceTexture = null;
            this.mIsSurfaceTextureDetachedFromView = false;
        }
    }

    @Override // androidx.work.WorkRequest.Builder
    public final void onDetachedFromWindow() {
        this.mIsSurfaceTextureDetachedFromView = true;
    }

    @Override // androidx.work.WorkRequest.Builder
    public final void onSurfaceRequested(SurfaceRequest surfaceRequest, PreviewView$1$$ExternalSyntheticLambda2 previewView$1$$ExternalSyntheticLambda2) {
        PreviewView$1$$ExternalSyntheticLambda2 previewView$1$$ExternalSyntheticLambda22;
        Size size = surfaceRequest.mResolution;
        this.id = size;
        FrameLayout frameLayout = (FrameLayout) this.workSpec;
        size.getClass();
        TextureView textureView = new TextureView(frameLayout.getContext());
        this.mTextureView = textureView;
        textureView.setLayoutParams(new FrameLayout.LayoutParams(((Size) this.id).getWidth(), ((Size) this.id).getHeight()));
        this.mTextureView.setSurfaceTextureListener(new AnonymousClass1());
        frameLayout.removeAllViews();
        frameLayout.addView(this.mTextureView);
        SurfaceRequest surfaceRequest2 = this.mSurfaceRequest;
        if (surfaceRequest2 != null && surfaceRequest2.willNotProvideSurface() && (previewView$1$$ExternalSyntheticLambda22 = this.mOnSurfaceNotInUseListener) != null) {
            previewView$1$$ExternalSyntheticLambda22.onSurfaceNotInUse();
            this.mOnSurfaceNotInUseListener = null;
        }
        this.mSurfaceRequest = surfaceRequest;
        this.mOnSurfaceNotInUseListener = previewView$1$$ExternalSyntheticLambda2;
        surfaceRequest.mRequestCancellationCompleter.addCancellationListener(new CameraX$$ExternalSyntheticLambda2(28, this, surfaceRequest), TraceApi29Impl.getMainExecutor(this.mTextureView.getContext()));
        tryToProvidePreviewSurface();
    }

    public final void tryToProvidePreviewSurface() {
        SurfaceTexture surfaceTexture;
        Size size = (Size) this.id;
        if (size == null || (surfaceTexture = this.mSurfaceTexture) == null || this.mSurfaceRequest == null) {
            return;
        }
        surfaceTexture.setDefaultBufferSize(size.getWidth(), ((Size) this.id).getHeight());
        Surface surface = new Surface(this.mSurfaceTexture);
        SurfaceRequest surfaceRequest = this.mSurfaceRequest;
        CallbackToFutureAdapter$SafeFuture future = OAuthBearer.getFuture(new CaptureRequestOptions$Builder$Companion$$ExternalSyntheticLambda0(5, this, surface));
        this.mSurfaceReleaseFuture = future;
        future.delegate.addListener(new Schedulers$$ExternalSyntheticLambda1(this, surface, future, surfaceRequest, 3), TraceApi29Impl.getMainExecutor(this.mTextureView.getContext()));
        this.backoffCriteriaSet = true;
        redrawPreview();
    }

    @Override // androidx.work.WorkRequest.Builder
    public final ListenableFuture waitForNextFrame() {
        CallbackToFutureAdapter$Completer callbackToFutureAdapter$Completer = new CallbackToFutureAdapter$Completer();
        callbackToFutureAdapter$Completer.cancellationFuture = new ResolvableFuture();
        CallbackToFutureAdapter$SafeFuture callbackToFutureAdapter$SafeFuture = new CallbackToFutureAdapter$SafeFuture(callbackToFutureAdapter$Completer);
        callbackToFutureAdapter$Completer.future = callbackToFutureAdapter$SafeFuture;
        callbackToFutureAdapter$Completer.tag = CameraDevices$CC.class;
        try {
            this.mNextFrameCompleter.set(callbackToFutureAdapter$Completer);
            callbackToFutureAdapter$Completer.tag = "textureViewImpl_waitForNextFrame";
            return callbackToFutureAdapter$SafeFuture;
        } catch (Exception e) {
            callbackToFutureAdapter$SafeFuture.setException(e);
            return callbackToFutureAdapter$SafeFuture;
        }
    }
}
