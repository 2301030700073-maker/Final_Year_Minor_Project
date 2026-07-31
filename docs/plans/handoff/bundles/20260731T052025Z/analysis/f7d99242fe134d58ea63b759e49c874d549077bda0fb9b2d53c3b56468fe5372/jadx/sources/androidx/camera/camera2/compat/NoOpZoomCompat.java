package androidx.camera.camera2.compat;

import android.hardware.camera2.CameraCharacteristics;
import androidx.camera.camera2.impl.UseCaseCameraRequestControl;
import androidx.compose.ui.unit.IntOffsetKt;
import java.util.List;
import kotlin.Unit;
import kotlinx.coroutines.Deferred;
import kotlinx.coroutines.JobKt;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class NoOpZoomCompat implements ZoomCompat {
    public static final List requiredCharacteristics = IntOffsetKt.listOf(CameraCharacteristics.SENSOR_INFO_ACTIVE_ARRAY_SIZE);

    @Override // androidx.camera.camera2.compat.ZoomCompat
    public final Deferred applyAsync(UseCaseCameraRequestControl useCaseCameraRequestControl) {
        useCaseCameraRequestControl.getClass();
        return JobKt.CompletableDeferred(Unit.INSTANCE);
    }

    @Override // androidx.camera.camera2.compat.ZoomCompat
    public final float getMaxZoomRatio() {
        return 1.0f;
    }

    @Override // androidx.camera.camera2.compat.ZoomCompat
    public final float getMinZoomRatio() {
        return 1.0f;
    }

    @Override // androidx.camera.camera2.compat.ZoomCompat
    public final Deferred resetAsync(UseCaseCameraRequestControl useCaseCameraRequestControl) {
        useCaseCameraRequestControl.getClass();
        return JobKt.CompletableDeferred(Unit.INSTANCE);
    }
}
