package androidx.camera.camera2.pipe.media;

import android.content.ContentProviderClient;
import android.content.res.TypedArray;
import android.drm.DrmManagerClient;
import android.media.Image;
import android.media.MediaDrm;
import android.media.MediaMetadataRetriever;
import androidx.activity.OnBackPressedCallback$$ExternalSyntheticAutoCloseableForwarder0;
import androidx.core.view.MenuHostHelper;
import java.util.concurrent.ExecutorService;
import kotlin.jvm.internal.ClassReference;
import kotlin.jvm.internal.Reflection;
import kotlinx.atomicfu.AtomicBoolean;
import kotlinx.atomicfu.AtomicFU;
import kotlinx.atomicfu.AtomicInt;
import kotlinx.atomicfu.AtomicRef;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class SharedOutputImage$Companion$SharedOutputImageImpl implements OutputImage {
    public final AtomicBoolean closed = AtomicFU.atomic(false);
    public final OutputImage outputImage;
    public final MenuHostHelper sharedReference;

    public SharedOutputImage$Companion$SharedOutputImageImpl(OutputImage outputImage, MenuHostHelper menuHostHelper) {
        this.outputImage = outputImage;
        this.sharedReference = menuHostHelper;
    }

    /* JADX WARN: Removed duplicated region for block: B:5:0x0036 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0037  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final androidx.camera.camera2.pipe.media.SharedOutputImage$Companion$SharedOutputImageImpl acquire() {
        /*
            r6 = this;
            kotlinx.atomicfu.AtomicBoolean r0 = r6.closed
            boolean r0 = r0.getValue()
            r1 = 0
            if (r0 == 0) goto Lb
        L9:
            r0 = r1
            goto L34
        Lb:
            androidx.core.view.MenuHostHelper r0 = r6.sharedReference
            java.lang.Object r2 = r0.mMenuProviders
            kotlinx.atomicfu.AtomicInt r2 = (kotlinx.atomicfu.AtomicInt) r2
        L11:
            int r3 = r2.value
            if (r3 != 0) goto L17
            r4 = 0
            goto L19
        L17:
            int r4 = r3 + 1
        L19:
            java.util.concurrent.atomic.AtomicIntegerFieldUpdater r5 = kotlinx.atomicfu.AtomicInt.FU
            boolean r3 = r5.compareAndSet(r2, r3, r4)
            if (r3 == 0) goto L11
            if (r4 == 0) goto L28
            java.lang.Object r0 = r0.mOnInvalidateMenuCallback
            androidx.camera.camera2.pipe.media.OutputImage r0 = (androidx.camera.camera2.pipe.media.OutputImage) r0
            goto L29
        L28:
            r0 = r1
        L29:
            if (r0 == 0) goto L9
            androidx.camera.camera2.pipe.media.SharedOutputImage$Companion$SharedOutputImageImpl r0 = new androidx.camera.camera2.pipe.media.SharedOutputImage$Companion$SharedOutputImageImpl
            androidx.camera.camera2.pipe.media.OutputImage r2 = r6.outputImage
            androidx.core.view.MenuHostHelper r6 = r6.sharedReference
            r0.<init>(r2, r6)
        L34:
            if (r0 == 0) goto L37
            return r0
        L37:
            java.lang.String r6 = "Required value was null."
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$2(r6)
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.camera.camera2.pipe.media.SharedOutputImage$Companion$SharedOutputImageImpl.acquire():androidx.camera.camera2.pipe.media.SharedOutputImage$Companion$SharedOutputImageImpl");
    }

    @Override // java.lang.AutoCloseable
    public final void close() {
        if (this.closed.compareAndSet()) {
            MenuHostHelper menuHostHelper = this.sharedReference;
            AtomicInt atomicInt = (AtomicInt) menuHostHelper.mMenuProviders;
            atomicInt.getClass();
            if (AtomicInt.FU.decrementAndGet(atomicInt) == 0) {
                AtomicRef atomicRef = (AtomicRef) menuHostHelper.mProviderToLifecycleContainers;
                atomicRef.getClass();
                ((ClosingFinalizer) AtomicRef.FU.getAndSet(atomicRef, null)).getClass();
                AutoCloseable autoCloseable = (OutputImage) menuHostHelper.mOnInvalidateMenuCallback;
                if (autoCloseable instanceof AutoCloseable) {
                    autoCloseable.close();
                    return;
                }
                if (autoCloseable instanceof ExecutorService) {
                    OnBackPressedCallback$$ExternalSyntheticAutoCloseableForwarder0.m((ExecutorService) autoCloseable);
                    return;
                }
                if (autoCloseable instanceof TypedArray) {
                    ((TypedArray) autoCloseable).recycle();
                    return;
                }
                if (autoCloseable instanceof MediaMetadataRetriever) {
                    ((MediaMetadataRetriever) autoCloseable).release();
                    return;
                }
                if (autoCloseable instanceof MediaDrm) {
                    ((MediaDrm) autoCloseable).release();
                    return;
                }
                if (autoCloseable instanceof DrmManagerClient) {
                    ((DrmManagerClient) autoCloseable).release();
                } else if (autoCloseable instanceof ContentProviderClient) {
                    ((ContentProviderClient) autoCloseable).release();
                } else {
                    _UtilJvmKt$$ExternalSyntheticLambda0.m$1();
                }
            }
        }
    }

    public final String toString() {
        return this.outputImage.toString();
    }

    @Override // androidx.camera.camera2.pipe.UnsafeWrapper
    public final Object unwrapAs(ClassReference classReference) {
        if (this.closed.getValue()) {
            return null;
        }
        if (classReference.equals(Reflection.getOrCreateKotlinClass(SharedOutputImage$Companion$SharedOutputImageImpl.class)) || classReference.equals(Reflection.getOrCreateKotlinClass(OutputImage.class)) || classReference.equals(Reflection.getOrCreateKotlinClass(ImageWrapper.class))) {
            return this;
        }
        if (!classReference.equals(Reflection.getOrCreateKotlinClass(Image.class))) {
            return this.outputImage.unwrapAs(classReference);
        }
        throw new UnsupportedOperationException("Cannot unwrap " + this + " as android.media.Image. Use setFinalizerinstead and close all outstanding references.");
    }
}
