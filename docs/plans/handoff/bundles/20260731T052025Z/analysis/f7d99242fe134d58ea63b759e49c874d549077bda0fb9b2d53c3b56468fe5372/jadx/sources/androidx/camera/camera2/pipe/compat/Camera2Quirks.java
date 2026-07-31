package androidx.camera.camera2.pipe.compat;

import android.os.Build;
import androidx.camera.camera2.pipe.CameraMetadata;
import androidx.camera.camera2.pipe.StrictMode;
import coil3.disk.DiskLruCache;
import java.util.Collections;
import java.util.Map;
import kotlin.Pair;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.collections.MapsKt__MapsKt;
import org.jsoup.helper.Validate;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class Camera2Quirks {
    public static final Map SHOULD_WAIT_FOR_REPEATING_DEVICE_MAP;
    public static final Map SM8150_DEVICES;
    public final Camera2MetadataProvider metadataProvider;
    public final StrictMode strictMode;

    static {
        Map singletonMap = Collections.singletonMap("Google", ArraysKt___ArraysKt.toSet(new String[]{"oriole", "raven", "bluejay", "panther", "cheetah", "lynx"}));
        singletonMap.getClass();
        SHOULD_WAIT_FOR_REPEATING_DEVICE_MAP = singletonMap;
        SM8150_DEVICES = MapsKt__MapsKt.mapOf(new Pair("google", ArraysKt___ArraysKt.toSet(new String[]{"pixel 4", "pixel 4 xl"})), new Pair("samsung", Validate.setOf("sm-g770f")));
    }

    public Camera2Quirks(Camera2MetadataProvider camera2MetadataProvider, StrictMode strictMode) {
        camera2MetadataProvider.getClass();
        strictMode.getClass();
        this.metadataProvider = camera2MetadataProvider;
        this.strictMode = strictMode;
    }

    /* renamed from: shouldCloseCameraBeforeCreatingCaptureSession-EfqyGwQ$camera_camera2_pipe, reason: not valid java name */
    public final boolean m65x552c1673(String str) {
        boolean z;
        str.getClass();
        this.strictMode.getClass();
        if (Build.VERSION.SDK_INT <= 32) {
            CameraMetadata.Companion companion = CameraMetadata.Companion;
            CameraMetadata m63awaitCameraMetadataEfqyGwQ = ((Camera2MetadataCache) this.metadataProvider).m63awaitCameraMetadataEfqyGwQ(str);
            companion.getClass();
            if (CameraMetadata.Companion.isHardwareLevelLegacy(m63awaitCameraMetadataEfqyGwQ)) {
                z = true;
                return !z || (!"motorola".equalsIgnoreCase(Build.BRAND) && "moto e20".equalsIgnoreCase(Build.MODEL) && str.equals(DiskLruCache.VERSION));
            }
        }
        z = false;
        if (z) {
        }
    }
}
