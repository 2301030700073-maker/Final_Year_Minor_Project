package androidx.camera.camera2.pipe.compat;

import android.content.Context;
import android.hardware.camera2.CameraCharacteristics;
import android.hardware.camera2.CameraExtensionCharacteristics;
import android.hardware.camera2.CameraManager;
import android.os.Build;
import android.os.SystemClock;
import android.os.Trace;
import android.util.ArrayMap;
import android.util.Log;
import androidx.camera.camera2.pipe.CameraDevices$CC;
import androidx.camera.camera2.pipe.CameraExtensionMetadata;
import androidx.camera.camera2.pipe.CameraId;
import androidx.camera.camera2.pipe.CameraMetadata;
import androidx.camera.camera2.pipe.DoNotDisturbException;
import androidx.camera.camera2.pipe.core.Permissions;
import androidx.camera.camera2.pipe.core.SystemTimeSource;
import androidx.camera.camera2.pipe.core.Threads;
import androidx.cardview.widget.CardView;
import java.util.Arrays;
import java.util.Map;
import java.util.Set;
import kotlin.collections.EmptySet;
import kotlin.jvm.internal.Intrinsics;
import org.jsoup.SerializationException;
import org.jsoup.helper.Validate;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class Camera2MetadataCache implements Camera2MetadataProvider {
    public final ArrayMap cache;
    public final CardView.AnonymousClass1 cameraMetadataConfig;
    public final Context cameraPipeContext;
    public final ArrayMap extensionCache;
    public final ArrayMap extensionCharacteristicsCache;
    public final Permissions permissions;
    public final Threads threads;
    public final SystemTimeSource timeSource;

    public Camera2MetadataCache(Context context, Threads threads, Permissions permissions, CardView.AnonymousClass1 anonymousClass1, SystemTimeSource systemTimeSource) {
        threads.getClass();
        permissions.getClass();
        anonymousClass1.getClass();
        systemTimeSource.getClass();
        this.cameraPipeContext = context;
        this.threads = threads;
        this.permissions = permissions;
        this.cameraMetadataConfig = anonymousClass1;
        this.timeSource = systemTimeSource;
        this.cache = new ArrayMap();
        this.extensionCache = new ArrayMap();
        this.extensionCharacteristicsCache = new ArrayMap();
    }

    /* renamed from: access$createCameraExtensionMetadata-RzXb1QE, reason: not valid java name */
    public static final Camera2CameraExtensionMetadata m60access$createCameraExtensionMetadataRzXb1QE(Camera2MetadataCache camera2MetadataCache, String str, boolean z, int i) {
        String str2;
        camera2MetadataCache.timeSource.getClass();
        long elapsedRealtimeNanos = SystemClock.elapsedRealtimeNanos();
        try {
            Trace.beginSection(((Object) CameraId.m35toStringimpl(str)) + "#readCameraExtensionMetadata");
            try {
                Log.d("CXCP", "Loading extension metadata for " + ((Object) CameraId.m35toStringimpl(str)));
                Camera2CameraExtensionMetadata camera2CameraExtensionMetadata = new Camera2CameraExtensionMetadata(str, i, camera2MetadataCache.m64getCameraExtensionCharacteristicsEfqyGwQ(str));
                long elapsedRealtimeNanos2 = SystemClock.elapsedRealtimeNanos() - elapsedRealtimeNanos;
                if (!z) {
                    str2 = "";
                } else {
                    if (!z) {
                        throw new SerializationException();
                    }
                    str2 = " (redacted)";
                }
                Log.i("CXCP", "Loaded extension metadata for " + ((Object) CameraId.m35toStringimpl(str)) + " in " + String.format(null, "%.3f ms", Arrays.copyOf(new Object[]{Double.valueOf(elapsedRealtimeNanos2 / 1000000.0d)}, 1)) + str2);
                return camera2CameraExtensionMetadata;
            } catch (Throwable th) {
                throw new IllegalStateException("Failed to load extension metadata for " + ((Object) CameraId.m35toStringimpl(str)) + '!', th);
            }
        } finally {
            Trace.endSection();
        }
    }

    /* renamed from: access$createCameraMetadata-0r8Bogc, reason: not valid java name */
    public static final Camera2CameraMetadata m61access$createCameraMetadata0r8Bogc(Camera2MetadataCache camera2MetadataCache, String str, boolean z) {
        Iterable iterable;
        String str2;
        CardView.AnonymousClass1 anonymousClass1 = camera2MetadataCache.cameraMetadataConfig;
        camera2MetadataCache.timeSource.getClass();
        long elapsedRealtimeNanos = SystemClock.elapsedRealtimeNanos();
        try {
            Trace.beginSection(((Object) CameraId.m35toStringimpl(str)) + "#readCameraMetadata");
            String str3 = null;
            boolean z2 = false;
            try {
                Log.d("CXCP", "Loading metadata for " + ((Object) CameraId.m35toStringimpl(str)));
                Object systemService = camera2MetadataCache.cameraPipeContext.getSystemService("camera");
                systemService.getClass();
                CameraCharacteristics cameraCharacteristics = ((CameraManager) systemService).getCameraCharacteristics(str);
                cameraCharacteristics.getClass();
                if (Build.VERSION.SDK_INT < 32 || cameraCharacteristics.get(CameraCharacteristics.INFO_DEVICE_STATE_SENSOR_ORIENTATION_MAP) == null) {
                    iterable = (Set) ((Map) anonymousClass1.this$0).get(new CameraId(str));
                } else {
                    Set set = (Set) ((Map) anonymousClass1.this$0).get(new CameraId(str));
                    if (set == null) {
                        set = EmptySet.INSTANCE;
                    }
                    iterable = Validate.plus(set, CameraCharacteristics.SENSOR_ORIENTATION);
                }
                Camera2CameraMetadata camera2CameraMetadata = new Camera2CameraMetadata(str, cameraCharacteristics, camera2MetadataCache, iterable == null ? (Set) anonymousClass1.mCardBackground : Validate.plus((Set) anonymousClass1.mCardBackground, iterable));
                long elapsedRealtimeNanos2 = SystemClock.elapsedRealtimeNanos() - elapsedRealtimeNanos;
                if (!z) {
                    str2 = "";
                } else {
                    if (!z) {
                        throw new SerializationException();
                    }
                    str2 = " (redacted)";
                }
                Log.i("CXCP", "Loaded metadata for " + ((Object) CameraId.m35toStringimpl(str)) + " in " + String.format(null, "%.3f ms", Arrays.copyOf(new Object[]{Double.valueOf(elapsedRealtimeNanos2 / 1000000.0d)}, 1)) + str2);
                return camera2CameraMetadata;
            } catch (Throwable th) {
                if (Build.VERSION.SDK_INT == 28) {
                    if (th instanceof RuntimeException) {
                        StackTraceElement[] stackTrace = th.getStackTrace();
                        stackTrace.getClass();
                        if (stackTrace.length != 0) {
                            str3 = stackTrace[0].getMethodName();
                        }
                        z2 = Intrinsics.areEqual(str3, "_enableShutterSound");
                    }
                    if (z2) {
                        throw new DoNotDisturbException("Failed to load metadata: Do Not Disturb mode is on!");
                    }
                }
                throw new IllegalStateException("Failed to load metadata for " + ((Object) CameraId.m35toStringimpl(str)) + '!', th);
            }
        } finally {
            Trace.endSection();
        }
    }

    public static final boolean access$isMetadataRedacted(Camera2MetadataCache camera2MetadataCache) {
        boolean z;
        Permissions permissions = camera2MetadataCache.permissions;
        permissions.getClass();
        if (Intrinsics.areEqual(Build.FINGERPRINT, "robolectric")) {
            z = true;
        } else {
            if (!permissions._hasCameraPermission) {
                Trace.beginSection("CXCP#checkCameraPermission");
                if (permissions.cameraPipeContext.checkSelfPermission("android.permission.CAMERA") == 0) {
                    permissions._hasCameraPermission = true;
                }
                Trace.endSection();
            }
            z = permissions._hasCameraPermission;
        }
        return !z;
    }

    /* renamed from: awaitCameraExtensionMetadata-0r8Bogc, reason: not valid java name */
    public final CameraExtensionMetadata m62awaitCameraExtensionMetadata0r8Bogc(String str, int i) {
        CameraExtensionMetadata cameraExtensionMetadata;
        str.getClass();
        int i2 = Build.VERSION.SDK_INT;
        if (i2 < 31) {
            throw new Exception(CameraDevices$CC.m("Extension sessions are only supported on Android S or higher. Device SDK is ", i2));
        }
        try {
            Trace.beginSection(((Object) CameraId.m35toStringimpl(str)) + "#awaitExtensionMetadata");
            synchronized (this.extensionCache) {
                cameraExtensionMetadata = (CameraExtensionMetadata) this.extensionCache.get(str);
                if (cameraExtensionMetadata == null) {
                    if (access$isMetadataRedacted(this)) {
                        cameraExtensionMetadata = m60access$createCameraExtensionMetadataRzXb1QE(this, str, true, i);
                    } else {
                        cameraExtensionMetadata = m60access$createCameraExtensionMetadataRzXb1QE(this, str, false, i);
                        this.extensionCache.put(str, cameraExtensionMetadata);
                    }
                }
            }
            return cameraExtensionMetadata;
        } finally {
            Trace.endSection();
        }
    }

    /* renamed from: awaitCameraMetadata-EfqyGwQ, reason: not valid java name */
    public final CameraMetadata m63awaitCameraMetadataEfqyGwQ(String str) {
        CameraMetadata cameraMetadata;
        str.getClass();
        try {
            Trace.beginSection(((Object) CameraId.m35toStringimpl(str)) + "#awaitMetadata");
            synchronized (this.cache) {
                cameraMetadata = (CameraMetadata) this.cache.get(str);
                if (cameraMetadata == null) {
                    if (access$isMetadataRedacted(this)) {
                        cameraMetadata = m61access$createCameraMetadata0r8Bogc(this, str, true);
                    } else {
                        cameraMetadata = m61access$createCameraMetadata0r8Bogc(this, str, false);
                        this.cache.put(str, cameraMetadata);
                    }
                }
            }
            return cameraMetadata;
        } finally {
            Trace.endSection();
        }
    }

    /* renamed from: getCameraExtensionCharacteristics-EfqyGwQ, reason: not valid java name */
    public final CameraExtensionCharacteristics m64getCameraExtensionCharacteristicsEfqyGwQ(String str) {
        synchronized (this.extensionCharacteristicsCache) {
            CameraExtensionCharacteristics cameraExtensionCharacteristics = (CameraExtensionCharacteristics) this.extensionCharacteristicsCache.get(str);
            if (cameraExtensionCharacteristics != null) {
                return cameraExtensionCharacteristics;
            }
            Log.d("CXCP", "Retrieving CameraExtensionCharacteristics for " + ((Object) CameraId.m35toStringimpl(str)));
            Object systemService = this.cameraPipeContext.getSystemService("camera");
            systemService.getClass();
            str.getClass();
            CameraExtensionCharacteristics cameraExtensionCharacteristics2 = ((CameraManager) systemService).getCameraExtensionCharacteristics(str);
            cameraExtensionCharacteristics2.getClass();
            return cameraExtensionCharacteristics2;
        }
    }
}
