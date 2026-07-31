package androidx.camera.camera2.pipe.compat;

import android.hardware.camera2.params.OutputConfiguration;
import android.os.Build;
import android.view.Surface;
import androidx.camera.camera2.pipe.CameraDevices$CC;
import kotlin.jvm.internal.ClassReference;
import kotlin.jvm.internal.Reflection;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class AndroidOutputConfiguration implements OutputConfigurationWrapper {
    public final OutputConfiguration output;

    public AndroidOutputConfiguration(OutputConfiguration outputConfiguration) {
        this.output = outputConfiguration;
        outputConfiguration.getSurface();
    }

    public final void addSurface(Surface surface) {
        surface.getClass();
        int i = Build.VERSION.SDK_INT;
        if (i < 26) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m((Object) CameraDevices$CC.m(i, "addSurface is not supported on API ", " (requires API 26)"));
        } else if (i >= 26) {
            Api26Compat.addSurfaces(this.output, surface);
        }
    }

    public final String toString() {
        return this.output.toString();
    }

    @Override // androidx.camera.camera2.pipe.UnsafeWrapper
    public final Object unwrapAs(ClassReference classReference) {
        if (classReference.equals(Reflection.getOrCreateKotlinClass(OutputConfiguration.class))) {
            return this.output;
        }
        return null;
    }
}
