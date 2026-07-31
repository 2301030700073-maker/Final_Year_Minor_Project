package androidx.camera.core.impl;

import androidx.camera.core.ImageCapture;
import androidx.camera.core.impl.SessionConfig;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public interface CameraControlInternal {
    public static final AnonymousClass2 DEFAULT_EMPTY_INSTANCE = new AnonymousClass2();

    void addInteropConfig(Config config);

    void addZslConfig(SessionConfig.Builder builder);

    void clearInteropConfig();

    void clearZslConfig();

    Config getInteropConfig();

    void setFlashMode(int i);

    void setScreenFlash(ImageCapture.ScreenFlash screenFlash);

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    /* renamed from: androidx.camera.core.impl.CameraControlInternal$2, reason: invalid class name */
    public final class AnonymousClass2 implements CameraControlInternal {
        @Override // androidx.camera.core.impl.CameraControlInternal
        public final Config getInteropConfig() {
            return null;
        }

        @Override // androidx.camera.core.impl.CameraControlInternal
        public final void clearInteropConfig() {
        }

        @Override // androidx.camera.core.impl.CameraControlInternal
        public final void clearZslConfig() {
        }

        @Override // androidx.camera.core.impl.CameraControlInternal
        public final void addInteropConfig(Config config) {
        }

        @Override // androidx.camera.core.impl.CameraControlInternal
        public final void addZslConfig(SessionConfig.Builder builder) {
        }

        @Override // androidx.camera.core.impl.CameraControlInternal
        public final void setFlashMode(int i) {
        }

        @Override // androidx.camera.core.impl.CameraControlInternal
        public final /* synthetic */ void setScreenFlash(ImageCapture.ScreenFlash screenFlash) {
        }
    }
}
