package androidx.camera.view;

import android.animation.ValueAnimator;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import androidx.camera.core.ImageCapture;
import androidx.datastore.preferences.protobuf.Utf8;
import org.jsoup.helper.Validate;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class ScreenFlashView extends View {
    public AnonymousClass1 mScreenFlash;
    public Window mScreenFlashWindow;

    private float getBrightness() {
        Window window = this.mScreenFlashWindow;
        if (window != null) {
            return window.getAttributes().screenBrightness;
        }
        Utf8.SafeProcessor.e("ScreenFlashView", "setBrightness: mScreenFlashWindow is null!");
        return Float.NaN;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setBrightness(float f) {
        if (this.mScreenFlashWindow == null) {
            Utf8.SafeProcessor.e("ScreenFlashView", "setBrightness: mScreenFlashWindow is null!");
            return;
        }
        if (Float.isNaN(f)) {
            Utf8.SafeProcessor.e("ScreenFlashView", "setBrightness: value is NaN!");
            return;
        }
        WindowManager.LayoutParams attributes = this.mScreenFlashWindow.getAttributes();
        attributes.screenBrightness = f;
        this.mScreenFlashWindow.setAttributes(attributes);
        Utf8.SafeProcessor.d("ScreenFlashView", "Brightness set to " + attributes.screenBrightness);
    }

    private void setScreenFlashUiInfo(ImageCapture.ScreenFlash screenFlash) {
        Utf8.SafeProcessor.d("ScreenFlashView", "setScreenFlashUiInfo: mCameraController is null!");
    }

    public ImageCapture.ScreenFlash getScreenFlash() {
        return this.mScreenFlash;
    }

    public long getVisibilityRampUpAnimationDurationMillis() {
        return 1000L;
    }

    public void setController(CameraController cameraController) {
        Validate.checkMainThread();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void setScreenFlashWindow(Window window) {
        Validate.checkMainThread();
        StringBuilder sb = new StringBuilder("updateScreenFlash: is new window null = ");
        sb.append(window == null);
        sb.append(",  is new window same as previous = ");
        sb.append(window == this.mScreenFlashWindow);
        Utf8.SafeProcessor.d("ScreenFlashView", sb.toString());
        if (this.mScreenFlashWindow != window) {
            this.mScreenFlash = window == null ? 0 : new ImageCapture.ScreenFlash() { // from class: androidx.camera.view.ScreenFlashView.1
                public ValueAnimator mAnimator;

                @Override // androidx.camera.core.ImageCapture.ScreenFlash
                public final void clear() {
                    Utf8.SafeProcessor.d("ScreenFlashView", "ScreenFlash#clear");
                    ValueAnimator valueAnimator = this.mAnimator;
                    if (valueAnimator != null) {
                        valueAnimator.cancel();
                        this.mAnimator = null;
                    }
                    ScreenFlashView screenFlashView = ScreenFlashView.this;
                    screenFlashView.setAlpha(0.0f);
                    screenFlashView.setBrightness(0.0f);
                }
            };
        }
        this.mScreenFlashWindow = window;
        setScreenFlashUiInfo(getScreenFlash());
    }
}
