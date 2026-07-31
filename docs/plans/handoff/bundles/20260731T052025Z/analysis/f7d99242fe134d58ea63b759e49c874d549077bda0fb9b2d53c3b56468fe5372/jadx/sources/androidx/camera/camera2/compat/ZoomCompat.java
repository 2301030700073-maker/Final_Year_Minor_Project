package androidx.camera.camera2.compat;

import androidx.camera.camera2.impl.UseCaseCameraRequestControl;
import kotlinx.coroutines.Deferred;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public interface ZoomCompat {
    Deferred applyAsync(UseCaseCameraRequestControl useCaseCameraRequestControl);

    float getMaxZoomRatio();

    float getMinZoomRatio();

    Deferred resetAsync(UseCaseCameraRequestControl useCaseCameraRequestControl);
}
