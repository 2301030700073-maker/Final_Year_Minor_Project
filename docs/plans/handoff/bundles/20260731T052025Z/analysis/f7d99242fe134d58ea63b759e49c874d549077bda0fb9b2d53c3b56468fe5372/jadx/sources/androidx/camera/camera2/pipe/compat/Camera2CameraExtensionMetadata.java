package androidx.camera.camera2.pipe.compat;

import android.hardware.camera2.CameraExtensionCharacteristics;
import android.os.Build;
import android.os.Trace;
import android.util.Log;
import androidx.camera.camera2.pipe.CameraExtensionMetadata;
import androidx.camera.camera2.pipe.CameraId;
import java.util.LinkedHashMap;
import java.util.Set;
import kotlin.Lazy;
import kotlin.LazyThreadSafetyMode;
import kotlin.ResultKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptySet;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.ClassReference;
import kotlin.jvm.internal.Reflection;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class Camera2CameraExtensionMetadata implements CameraExtensionMetadata {
    public final Lazy _isPostviewSupported;
    public final String camera;
    public final int cameraExtension;
    public final CameraExtensionCharacteristics extensionCharacteristics;

    public Camera2CameraExtensionMetadata(String str, int i, CameraExtensionCharacteristics cameraExtensionCharacteristics) {
        str.getClass();
        this.camera = str;
        this.cameraExtension = i;
        this.extensionCharacteristics = cameraExtensionCharacteristics;
        new LinkedHashMap();
        new LinkedHashMap();
        new LinkedHashMap();
        final int i2 = 1;
        Function0 function0 = new Function0(this) { // from class: androidx.camera.camera2.pipe.compat.Camera2CameraExtensionMetadata$special$$inlined$lazyOrFalse$1
            public final /* synthetic */ Camera2CameraExtensionMetadata this$0;

            {
                this.this$0 = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i3 = i2;
                EmptySet emptySet = EmptySet.INSTANCE;
                boolean z = false;
                Camera2CameraExtensionMetadata camera2CameraExtensionMetadata = this.this$0;
                switch (i3) {
                    case 0:
                        String str2 = ((Object) CameraId.m35toStringimpl(camera2CameraExtensionMetadata.camera)) + "#isPostviewSupported";
                        try {
                            try {
                                Trace.beginSection(str2);
                                boolean isPostviewAvailable = Build.VERSION.SDK_INT >= 34 ? Api34Compat.isPostviewAvailable(camera2CameraExtensionMetadata.extensionCharacteristics, camera2CameraExtensionMetadata.cameraExtension) : false;
                                Trace.endSection();
                                z = isPostviewAvailable;
                            } finally {
                            }
                        } catch (Throwable th) {
                            Log.w("CXCP", "Failed to get " + str2 + "! Caching false and ignoring exception.", th);
                        }
                        return Boolean.valueOf(z);
                    case 1:
                        String str3 = ((Object) CameraId.m35toStringimpl(camera2CameraExtensionMetadata.camera)) + "#availableCaptureRequestKeys";
                        try {
                            try {
                                Trace.beginSection(str3);
                                Set set = Build.VERSION.SDK_INT >= 33 ? CollectionsKt.toSet(Api33Compat.getAvailableCaptureRequestKeys(camera2CameraExtensionMetadata.extensionCharacteristics, camera2CameraExtensionMetadata.cameraExtension)) : emptySet;
                                Trace.endSection();
                                return set;
                            } catch (Throwable th2) {
                                Log.w("CXCP", "Failed to get " + str3 + "! Caching {} and ignoring exception.", th2);
                                return emptySet;
                            }
                        } finally {
                        }
                    case 2:
                        String str4 = ((Object) CameraId.m35toStringimpl(camera2CameraExtensionMetadata.camera)) + "#availableCaptureResultKeys";
                        try {
                            try {
                                Trace.beginSection(str4);
                                Set set2 = Build.VERSION.SDK_INT >= 33 ? CollectionsKt.toSet(Api33Compat.getAvailableCaptureResultKeys(camera2CameraExtensionMetadata.extensionCharacteristics, camera2CameraExtensionMetadata.cameraExtension)) : emptySet;
                                Trace.endSection();
                                return set2;
                            } catch (Throwable th3) {
                                Log.w("CXCP", "Failed to get " + str4 + "! Caching {} and ignoring exception.", th3);
                                return emptySet;
                            }
                        } finally {
                        }
                    default:
                        String str5 = ((Object) CameraId.m35toStringimpl(camera2CameraExtensionMetadata.camera)) + "#isCaptureProgressSupported";
                        try {
                            try {
                                Trace.beginSection(str5);
                                boolean isCaptureProcessProgressAvailable = Build.VERSION.SDK_INT >= 34 ? Api34Compat.isCaptureProcessProgressAvailable(camera2CameraExtensionMetadata.extensionCharacteristics, camera2CameraExtensionMetadata.cameraExtension) : false;
                                Trace.endSection();
                                z = isCaptureProcessProgressAvailable;
                            } catch (Throwable th4) {
                                Log.w("CXCP", "Failed to get " + str5 + "! Caching false and ignoring exception.", th4);
                            }
                            return Boolean.valueOf(z);
                        } finally {
                        }
                }
            }
        };
        LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.PUBLICATION;
        ResultKt.lazy(lazyThreadSafetyMode, function0);
        final int i3 = 2;
        ResultKt.lazy(lazyThreadSafetyMode, new Function0(this) { // from class: androidx.camera.camera2.pipe.compat.Camera2CameraExtensionMetadata$special$$inlined$lazyOrFalse$1
            public final /* synthetic */ Camera2CameraExtensionMetadata this$0;

            {
                this.this$0 = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i32 = i3;
                EmptySet emptySet = EmptySet.INSTANCE;
                boolean z = false;
                Camera2CameraExtensionMetadata camera2CameraExtensionMetadata = this.this$0;
                switch (i32) {
                    case 0:
                        String str2 = ((Object) CameraId.m35toStringimpl(camera2CameraExtensionMetadata.camera)) + "#isPostviewSupported";
                        try {
                            try {
                                Trace.beginSection(str2);
                                boolean isPostviewAvailable = Build.VERSION.SDK_INT >= 34 ? Api34Compat.isPostviewAvailable(camera2CameraExtensionMetadata.extensionCharacteristics, camera2CameraExtensionMetadata.cameraExtension) : false;
                                Trace.endSection();
                                z = isPostviewAvailable;
                            } finally {
                            }
                        } catch (Throwable th) {
                            Log.w("CXCP", "Failed to get " + str2 + "! Caching false and ignoring exception.", th);
                        }
                        return Boolean.valueOf(z);
                    case 1:
                        String str3 = ((Object) CameraId.m35toStringimpl(camera2CameraExtensionMetadata.camera)) + "#availableCaptureRequestKeys";
                        try {
                            try {
                                Trace.beginSection(str3);
                                Set set = Build.VERSION.SDK_INT >= 33 ? CollectionsKt.toSet(Api33Compat.getAvailableCaptureRequestKeys(camera2CameraExtensionMetadata.extensionCharacteristics, camera2CameraExtensionMetadata.cameraExtension)) : emptySet;
                                Trace.endSection();
                                return set;
                            } catch (Throwable th2) {
                                Log.w("CXCP", "Failed to get " + str3 + "! Caching {} and ignoring exception.", th2);
                                return emptySet;
                            }
                        } finally {
                        }
                    case 2:
                        String str4 = ((Object) CameraId.m35toStringimpl(camera2CameraExtensionMetadata.camera)) + "#availableCaptureResultKeys";
                        try {
                            try {
                                Trace.beginSection(str4);
                                Set set2 = Build.VERSION.SDK_INT >= 33 ? CollectionsKt.toSet(Api33Compat.getAvailableCaptureResultKeys(camera2CameraExtensionMetadata.extensionCharacteristics, camera2CameraExtensionMetadata.cameraExtension)) : emptySet;
                                Trace.endSection();
                                return set2;
                            } catch (Throwable th3) {
                                Log.w("CXCP", "Failed to get " + str4 + "! Caching {} and ignoring exception.", th3);
                                return emptySet;
                            }
                        } finally {
                        }
                    default:
                        String str5 = ((Object) CameraId.m35toStringimpl(camera2CameraExtensionMetadata.camera)) + "#isCaptureProgressSupported";
                        try {
                            try {
                                Trace.beginSection(str5);
                                boolean isCaptureProcessProgressAvailable = Build.VERSION.SDK_INT >= 34 ? Api34Compat.isCaptureProcessProgressAvailable(camera2CameraExtensionMetadata.extensionCharacteristics, camera2CameraExtensionMetadata.cameraExtension) : false;
                                Trace.endSection();
                                z = isCaptureProcessProgressAvailable;
                            } catch (Throwable th4) {
                                Log.w("CXCP", "Failed to get " + str5 + "! Caching false and ignoring exception.", th4);
                            }
                            return Boolean.valueOf(z);
                        } finally {
                        }
                }
            }
        });
        final int i4 = 0;
        this._isPostviewSupported = ResultKt.lazy(lazyThreadSafetyMode, new Function0(this) { // from class: androidx.camera.camera2.pipe.compat.Camera2CameraExtensionMetadata$special$$inlined$lazyOrFalse$1
            public final /* synthetic */ Camera2CameraExtensionMetadata this$0;

            {
                this.this$0 = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i32 = i4;
                EmptySet emptySet = EmptySet.INSTANCE;
                boolean z = false;
                Camera2CameraExtensionMetadata camera2CameraExtensionMetadata = this.this$0;
                switch (i32) {
                    case 0:
                        String str2 = ((Object) CameraId.m35toStringimpl(camera2CameraExtensionMetadata.camera)) + "#isPostviewSupported";
                        try {
                            try {
                                Trace.beginSection(str2);
                                boolean isPostviewAvailable = Build.VERSION.SDK_INT >= 34 ? Api34Compat.isPostviewAvailable(camera2CameraExtensionMetadata.extensionCharacteristics, camera2CameraExtensionMetadata.cameraExtension) : false;
                                Trace.endSection();
                                z = isPostviewAvailable;
                            } finally {
                            }
                        } catch (Throwable th) {
                            Log.w("CXCP", "Failed to get " + str2 + "! Caching false and ignoring exception.", th);
                        }
                        return Boolean.valueOf(z);
                    case 1:
                        String str3 = ((Object) CameraId.m35toStringimpl(camera2CameraExtensionMetadata.camera)) + "#availableCaptureRequestKeys";
                        try {
                            try {
                                Trace.beginSection(str3);
                                Set set = Build.VERSION.SDK_INT >= 33 ? CollectionsKt.toSet(Api33Compat.getAvailableCaptureRequestKeys(camera2CameraExtensionMetadata.extensionCharacteristics, camera2CameraExtensionMetadata.cameraExtension)) : emptySet;
                                Trace.endSection();
                                return set;
                            } catch (Throwable th2) {
                                Log.w("CXCP", "Failed to get " + str3 + "! Caching {} and ignoring exception.", th2);
                                return emptySet;
                            }
                        } finally {
                        }
                    case 2:
                        String str4 = ((Object) CameraId.m35toStringimpl(camera2CameraExtensionMetadata.camera)) + "#availableCaptureResultKeys";
                        try {
                            try {
                                Trace.beginSection(str4);
                                Set set2 = Build.VERSION.SDK_INT >= 33 ? CollectionsKt.toSet(Api33Compat.getAvailableCaptureResultKeys(camera2CameraExtensionMetadata.extensionCharacteristics, camera2CameraExtensionMetadata.cameraExtension)) : emptySet;
                                Trace.endSection();
                                return set2;
                            } catch (Throwable th3) {
                                Log.w("CXCP", "Failed to get " + str4 + "! Caching {} and ignoring exception.", th3);
                                return emptySet;
                            }
                        } finally {
                        }
                    default:
                        String str5 = ((Object) CameraId.m35toStringimpl(camera2CameraExtensionMetadata.camera)) + "#isCaptureProgressSupported";
                        try {
                            try {
                                Trace.beginSection(str5);
                                boolean isCaptureProcessProgressAvailable = Build.VERSION.SDK_INT >= 34 ? Api34Compat.isCaptureProcessProgressAvailable(camera2CameraExtensionMetadata.extensionCharacteristics, camera2CameraExtensionMetadata.cameraExtension) : false;
                                Trace.endSection();
                                z = isCaptureProcessProgressAvailable;
                            } catch (Throwable th4) {
                                Log.w("CXCP", "Failed to get " + str5 + "! Caching false and ignoring exception.", th4);
                            }
                            return Boolean.valueOf(z);
                        } finally {
                        }
                }
            }
        });
        final int i5 = 3;
        ResultKt.lazy(lazyThreadSafetyMode, new Function0(this) { // from class: androidx.camera.camera2.pipe.compat.Camera2CameraExtensionMetadata$special$$inlined$lazyOrFalse$1
            public final /* synthetic */ Camera2CameraExtensionMetadata this$0;

            {
                this.this$0 = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i32 = i5;
                EmptySet emptySet = EmptySet.INSTANCE;
                boolean z = false;
                Camera2CameraExtensionMetadata camera2CameraExtensionMetadata = this.this$0;
                switch (i32) {
                    case 0:
                        String str2 = ((Object) CameraId.m35toStringimpl(camera2CameraExtensionMetadata.camera)) + "#isPostviewSupported";
                        try {
                            try {
                                Trace.beginSection(str2);
                                boolean isPostviewAvailable = Build.VERSION.SDK_INT >= 34 ? Api34Compat.isPostviewAvailable(camera2CameraExtensionMetadata.extensionCharacteristics, camera2CameraExtensionMetadata.cameraExtension) : false;
                                Trace.endSection();
                                z = isPostviewAvailable;
                            } finally {
                            }
                        } catch (Throwable th) {
                            Log.w("CXCP", "Failed to get " + str2 + "! Caching false and ignoring exception.", th);
                        }
                        return Boolean.valueOf(z);
                    case 1:
                        String str3 = ((Object) CameraId.m35toStringimpl(camera2CameraExtensionMetadata.camera)) + "#availableCaptureRequestKeys";
                        try {
                            try {
                                Trace.beginSection(str3);
                                Set set = Build.VERSION.SDK_INT >= 33 ? CollectionsKt.toSet(Api33Compat.getAvailableCaptureRequestKeys(camera2CameraExtensionMetadata.extensionCharacteristics, camera2CameraExtensionMetadata.cameraExtension)) : emptySet;
                                Trace.endSection();
                                return set;
                            } catch (Throwable th2) {
                                Log.w("CXCP", "Failed to get " + str3 + "! Caching {} and ignoring exception.", th2);
                                return emptySet;
                            }
                        } finally {
                        }
                    case 2:
                        String str4 = ((Object) CameraId.m35toStringimpl(camera2CameraExtensionMetadata.camera)) + "#availableCaptureResultKeys";
                        try {
                            try {
                                Trace.beginSection(str4);
                                Set set2 = Build.VERSION.SDK_INT >= 33 ? CollectionsKt.toSet(Api33Compat.getAvailableCaptureResultKeys(camera2CameraExtensionMetadata.extensionCharacteristics, camera2CameraExtensionMetadata.cameraExtension)) : emptySet;
                                Trace.endSection();
                                return set2;
                            } catch (Throwable th3) {
                                Log.w("CXCP", "Failed to get " + str4 + "! Caching {} and ignoring exception.", th3);
                                return emptySet;
                            }
                        } finally {
                        }
                    default:
                        String str5 = ((Object) CameraId.m35toStringimpl(camera2CameraExtensionMetadata.camera)) + "#isCaptureProgressSupported";
                        try {
                            try {
                                Trace.beginSection(str5);
                                boolean isCaptureProcessProgressAvailable = Build.VERSION.SDK_INT >= 34 ? Api34Compat.isCaptureProcessProgressAvailable(camera2CameraExtensionMetadata.extensionCharacteristics, camera2CameraExtensionMetadata.cameraExtension) : false;
                                Trace.endSection();
                                z = isCaptureProcessProgressAvailable;
                            } catch (Throwable th4) {
                                Log.w("CXCP", "Failed to get " + str5 + "! Caching false and ignoring exception.", th4);
                            }
                            return Boolean.valueOf(z);
                        } finally {
                        }
                }
            }
        });
    }

    @Override // androidx.camera.camera2.pipe.UnsafeWrapper
    public final Object unwrapAs(ClassReference classReference) {
        if (classReference.equals(Reflection.getOrCreateKotlinClass(CameraExtensionCharacteristics.class))) {
            return this.extensionCharacteristics;
        }
        return null;
    }
}
