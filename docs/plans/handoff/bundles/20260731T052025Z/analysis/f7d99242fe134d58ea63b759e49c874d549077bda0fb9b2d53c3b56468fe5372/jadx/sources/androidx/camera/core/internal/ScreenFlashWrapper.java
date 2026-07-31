package androidx.camera.core.internal;

import androidx.camera.core.ImageCapture;
import androidx.datastore.preferences.protobuf.Utf8;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class ScreenFlashWrapper implements ImageCapture.ScreenFlash {
    public boolean isClearScreenFlashPending;
    public final Object lock = new Object();
    public final ImageCapture.ScreenFlash screenFlash;

    public ScreenFlashWrapper(ImageCapture.ScreenFlash screenFlash) {
        this.screenFlash = screenFlash;
    }

    @Override // androidx.camera.core.ImageCapture.ScreenFlash
    public final void clear() {
        completePendingScreenFlashClear();
    }

    public final void completePendingScreenFlashClear() {
        synchronized (this.lock) {
            try {
                if (this.isClearScreenFlashPending) {
                    ImageCapture.ScreenFlash screenFlash = this.screenFlash;
                    if (screenFlash != null) {
                        screenFlash.clear();
                    } else {
                        Utf8.SafeProcessor.e("ScreenFlashWrapper", "completePendingScreenFlashClear: screenFlash is null!");
                    }
                } else {
                    Utf8.SafeProcessor.w("ScreenFlashWrapper", "completePendingScreenFlashClear: none pending!");
                }
                this.isClearScreenFlashPending = false;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void completePendingScreenFlashListener() {
        synchronized (this.lock) {
        }
    }
}
