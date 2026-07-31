package androidx.camera.camera2.pipe.compat;

import android.graphics.SurfaceTexture;
import android.hardware.camera2.params.OutputConfiguration;
import android.media.MediaCodec;
import android.media.MediaRecorder;
import android.os.Build;
import android.util.Log;
import android.util.Size;
import android.view.Surface;
import android.view.SurfaceHolder;
import androidx.activity.OnBackPressedCallback$$ExternalSyntheticAutoCloseableForwarder0;
import androidx.camera.camera2.pipe.CameraDevices$CC;
import androidx.camera.camera2.pipe.MetadataTransform;
import androidx.camera.camera2.pipe.OutputStream$DynamicRangeProfile;
import androidx.camera.camera2.pipe.OutputStream$MirrorMode;
import androidx.camera.camera2.pipe.OutputStream$StreamUseCase;
import androidx.camera.core.impl.Config;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import kotlin.text.Regex$$ExternalSyntheticBUOutline0;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public interface CaptureSessionFactory {

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public interface Result {

        /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
        public final class Failed implements Result {
            public static final Failed INSTANCE = new Failed();

            /* JADX WARN: Multi-variable type inference failed */
            /* JADX WARN: Type inference failed for: r1v18, types: [android.hardware.camera2.params.OutputConfiguration] */
            /* JADX WARN: Type inference failed for: r1v19 */
            /* JADX WARN: Type inference failed for: r1v20 */
            /* JADX WARN: Type inference failed for: r1v4 */
            /* JADX WARN: Type inference failed for: r1v9, types: [android.hardware.camera2.params.OutputConfiguration] */
            /* renamed from: create-gWWoySg$default, reason: not valid java name */
            public static AndroidOutputConfiguration m66creategWWoySg$default(Surface surface, Integer num, MetadataTransform.AnonymousClass1 anonymousClass1, OutputStream$MirrorMode outputStream$MirrorMode, OutputStream$DynamicRangeProfile outputStream$DynamicRangeProfile, OutputStream$StreamUseCase outputStream$StreamUseCase, List list, Size size, boolean z, int i, String str, int i2) {
                Class cls;
                OutputConfiguration outputConfiguration = surface;
                Integer num2 = (i2 & 2) != 0 ? null : num;
                int i3 = i2 & 4;
                MetadataTransform.AnonymousClass1 anonymousClass12 = MetadataTransform.AnonymousClass1.SURFACE;
                MetadataTransform.AnonymousClass1 anonymousClass13 = i3 != 0 ? anonymousClass12 : anonymousClass1;
                boolean z2 = (i2 & 512) != 0 ? false : z;
                int i4 = (i2 & 1024) != 0 ? -1 : i;
                anonymousClass13.getClass();
                if (anonymousClass13 == MetadataTransform.AnonymousClass1.SURFACE_DEFERRED_FOR_QUERY_ONLY && Build.VERSION.SDK_INT >= 35) {
                    if (num2 == null) {
                        _UtilJvmKt$$ExternalSyntheticLambda0.m$2("Required value was null.");
                        return null;
                    }
                    if (size == null) {
                        _UtilJvmKt$$ExternalSyntheticLambda0.m$2("Required value was null.");
                        return null;
                    }
                    outputConfiguration = Api35Compat$$ExternalSyntheticApiModelOutline0.m(num2.intValue(), size);
                } else if (anonymousClass13 != anonymousClass12) {
                    int i5 = Build.VERSION.SDK_INT;
                    if (i5 < 26) {
                        _UtilJvmKt$$ExternalSyntheticLambda0.m$2(CameraDevices$CC.m(i5, "Deferred OutputConfigurations are not supported on API ", " (requires API 26)"));
                        return null;
                    }
                    if (size == null) {
                        _UtilJvmKt$$ExternalSyntheticLambda0.m$2("Size must defined when creating a deferred OutputConfiguration.");
                        return null;
                    }
                    if (anonymousClass13 == MetadataTransform.AnonymousClass1.SURFACE_TEXTURE) {
                        cls = SurfaceTexture.class;
                    } else if (anonymousClass13 == MetadataTransform.AnonymousClass1.SURFACE_VIEW) {
                        cls = SurfaceHolder.class;
                    } else if (anonymousClass13 != MetadataTransform.AnonymousClass1.MEDIA_CODEC) {
                        if (anonymousClass13 != MetadataTransform.AnonymousClass1.MEDIA_RECORDER) {
                            Regex$$ExternalSyntheticBUOutline0.m$1(anonymousClass13, "Unsupported OutputType: ");
                            return null;
                        }
                        if (i5 < 35) {
                            _UtilJvmKt$$ExternalSyntheticLambda0.m$2("OutputType.MEDIA_RECORDER requires API 35 or higher.");
                            return null;
                        }
                        cls = MediaRecorder.class;
                    } else {
                        if (i5 < 35) {
                            _UtilJvmKt$$ExternalSyntheticLambda0.m$2("OutputType.MEDIA_CODEC requires API 35 or higher.");
                            return null;
                        }
                        cls = MediaCodec.class;
                    }
                    outputConfiguration = Api26Compat$$ExternalSyntheticApiModelOutline0.m(size, cls);
                } else {
                    if (outputConfiguration == 0) {
                        _UtilJvmKt$$ExternalSyntheticLambda0.m$2("non-null surface!");
                        return null;
                    }
                    try {
                        if (i4 != -1) {
                            OnBackPressedCallback$$ExternalSyntheticAutoCloseableForwarder0.m();
                            outputConfiguration = OnBackPressedCallback$$ExternalSyntheticAutoCloseableForwarder0.m(i4, outputConfiguration);
                        } else {
                            OnBackPressedCallback$$ExternalSyntheticAutoCloseableForwarder0.m();
                            outputConfiguration = OnBackPressedCallback$$ExternalSyntheticAutoCloseableForwarder0.m(outputConfiguration);
                        }
                    } catch (Throwable th) {
                        Log.w("CXCP", "Failed to create an OutputConfiguration for " + outputConfiguration + '!', th);
                        return null;
                    }
                }
                if (z2) {
                    int i6 = Build.VERSION.SDK_INT;
                    if (i6 < 24) {
                        _UtilJvmKt$$ExternalSyntheticLambda0.m((Object) CameraDevices$CC.m(i6, "surfaceSharing is not supported on API ", " (requires API 24)"));
                        return null;
                    }
                    if (i6 >= 26) {
                        Api26Compat.enableSurfaceSharing(outputConfiguration);
                    }
                }
                if (str != null) {
                    int i7 = Build.VERSION.SDK_INT;
                    if (i7 < 28) {
                        _UtilJvmKt$$ExternalSyntheticLambda0.m((Object) CameraDevices$CC.m(i7, "physicalCameraId is not supported on API ", " (requires API 28)"));
                        return null;
                    }
                    if (i7 >= 28) {
                        Api28Compat.setPhysicalCameraId(outputConfiguration, str);
                    }
                }
                if (outputStream$MirrorMode != null) {
                    int i8 = outputStream$MirrorMode.value;
                    int i9 = Build.VERSION.SDK_INT;
                    if (i9 >= 33) {
                        Api33Compat.setMirrorMode(outputConfiguration, i8);
                    } else if (i8 != 0) {
                        StringBuilder m30m = CameraDevices$CC.m30m(i9, "Cannot set mirrorMode to a non-default value on API ", ". This may result in unexpected behavior. Requested ");
                        m30m.append((Object) OutputStream$MirrorMode.m39toStringimpl(i8));
                        Log.w("CXCP", m30m.toString());
                    }
                }
                if (outputStream$DynamicRangeProfile != null) {
                    long j = outputStream$DynamicRangeProfile.value;
                    int i10 = Build.VERSION.SDK_INT;
                    if (i10 >= 33) {
                        Api33Compat.setDynamicRangeProfile(outputConfiguration, j);
                    } else if (j != 1) {
                        StringBuilder m30m2 = CameraDevices$CC.m30m(i10, "Cannot set dynamicRangeProfile to a non-default value on API ", ". This may result in unexpected behavior. Requested ");
                        m30m2.append((Object) OutputStream$DynamicRangeProfile.m38toStringimpl(j));
                        Log.w("CXCP", m30m2.toString());
                    }
                }
                if (outputStream$StreamUseCase != null && Build.VERSION.SDK_INT >= 33) {
                    Api33Compat.setStreamUseCase(outputConfiguration, outputStream$StreamUseCase.value);
                }
                if (!list.isEmpty()) {
                    int i11 = Build.VERSION.SDK_INT;
                    if (i11 >= 31) {
                        Iterator it = list.iterator();
                        if (it.hasNext()) {
                            throw Config.CC.m(it);
                        }
                    } else {
                        Log.w("CXCP", "Cannot add sensorPixelModeUsed value on API " + i11 + ". This may result in unexpected behavior. Requested " + list);
                    }
                }
                if (Build.VERSION.SDK_INT >= 28) {
                    Api28Compat.getMaxSharedSurfaceCount(outputConfiguration);
                }
                return new AndroidOutputConfiguration(outputConfiguration);
            }

            /* renamed from: shouldActivateActiveResume-8PWMtlg$camera_camera2_pipe, reason: not valid java name */
            public static boolean m67shouldActivateActiveResume8PWMtlg$camera_camera2_pipe(int i, boolean z) {
                int i2;
                if (!z || 29 > (i2 = Build.VERSION.SDK_INT) || i2 >= 33) {
                    return false;
                }
                return i == 1 || i == 2 || i == 6;
            }

            /* JADX WARN: Code restructure failed: missing block: B:10:0x0021, code lost:
            
                r2 = r10;
             */
            /* JADX WARN: Code restructure failed: missing block: B:50:0x0031, code lost:
            
                if (androidx.camera.camera2.pipe.core.DurationNs.m75compareTozYRVrok(1800000000000L, r10) == (-1)) goto L19;
             */
            /* JADX WARN: Code restructure failed: missing block: B:9:0x001e, code lost:
            
                if (androidx.camera.camera2.pipe.core.DurationNs.m75compareTozYRVrok(10000000000L, r10) == (-1)) goto L19;
             */
            /* JADX WARN: Removed duplicated region for block: B:16:0x007a A[RETURN] */
            /* renamed from: shouldRetry-rbpwgO0$camera_camera2_pipe, reason: not valid java name */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public static boolean m68shouldRetryrbpwgO0$camera_camera2_pipe(int r5, int r6, long r7, boolean r9, boolean r10, androidx.camera.camera2.pipe.core.DurationNs r11) {
                /*
                    boolean r10 = m67shouldActivateActiveResume8PWMtlg$camera_camera2_pipe(r5, r10)
                    java.lang.String r0 = "CXCP"
                    if (r10 == 0) goto Ld
                    java.lang.String r1 = "shouldRetry: Active resume mode is activated"
                    android.util.Log.d(r0, r1)
                Ld:
                    r1 = -1
                    if (r10 != 0) goto L23
                    r2 = 10000000000(0x2540be400, double:4.9406564584E-314)
                    if (r11 != 0) goto L18
                    goto L33
                L18:
                    long r10 = r11.value
                    int r4 = androidx.camera.camera2.pipe.core.DurationNs.m75compareTozYRVrok(r2, r10)
                    if (r4 != r1) goto L21
                    goto L33
                L21:
                    r2 = r10
                    goto L33
                L23:
                    r2 = 1800000000000(0x1a3185c5000, double:8.89318162514E-312)
                    if (r11 != 0) goto L2b
                    goto L33
                L2b:
                    long r10 = r11.value
                    int r4 = androidx.camera.camera2.pipe.core.DurationNs.m75compareTozYRVrok(r2, r10)
                    if (r4 != r1) goto L21
                L33:
                    int r7 = androidx.camera.camera2.pipe.core.DurationNs.m75compareTozYRVrok(r7, r2)
                    r8 = 0
                    if (r7 <= 0) goto L3b
                    goto L7b
                L3b:
                    r7 = 1
                    if (r5 != 0) goto L41
                    if (r6 > r7) goto L7b
                    goto L7a
                L41:
                    if (r5 != r7) goto L4c
                    int r5 = android.os.Build.VERSION.SDK_INT
                    r9 = 29
                    if (r5 >= r9) goto L7a
                    if (r6 > r7) goto L7b
                    goto L7a
                L4c:
                    r10 = 2
                    if (r5 != r10) goto L50
                    goto L7a
                L50:
                    r10 = 3
                    if (r5 != r10) goto L58
                    if (r9 == 0) goto L7a
                    if (r6 > r7) goto L7b
                    goto L7a
                L58:
                    r9 = 4
                    if (r5 != r9) goto L5c
                    goto L7a
                L5c:
                    r9 = 5
                    if (r5 != r9) goto L60
                    goto L7a
                L60:
                    r9 = 6
                    if (r5 != r9) goto L64
                    goto L7a
                L64:
                    r9 = 7
                    if (r5 != r9) goto L68
                    goto L7a
                L68:
                    r9 = 8
                    if (r5 != r9) goto L6f
                    if (r6 > r7) goto L7b
                    goto L7a
                L6f:
                    r9 = 10
                    if (r5 != r9) goto L74
                    goto L7b
                L74:
                    r9 = 11
                    if (r5 != r9) goto L7c
                    if (r6 > r7) goto L7b
                L7a:
                    return r7
                L7b:
                    return r8
                L7c:
                    java.lang.StringBuilder r5 = new java.lang.StringBuilder
                    java.lang.String r6 = "Unexpected CameraError: "
                    r5.<init>(r6)
                    androidx.camera.camera2.pipe.compat.CaptureSessionFactory$Result$Failed r6 = androidx.camera.camera2.pipe.compat.RetryingCameraStateOpenerImpl.Companion
                    r5.append(r6)
                    java.lang.String r5 = r5.toString()
                    android.util.Log.e(r0, r5)
                    return r8
                */
                throw new UnsupportedOperationException("Method not decompiled: androidx.camera.camera2.pipe.compat.CaptureSessionFactory.Result.Failed.m68shouldRetryrbpwgO0$camera_camera2_pipe(int, int, long, boolean, boolean, androidx.camera.camera2.pipe.core.DurationNs):boolean");
            }
        }

        /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
        public final class Success implements Result {
            public final Map deferred;
            public final Map outputSurfaceMap;

            public Success(Map map, Map map2) {
                this.deferred = map;
                this.outputSurfaceMap = map2;
            }

            public final boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                if (!(obj instanceof Success)) {
                    return false;
                }
                Success success = (Success) obj;
                return this.deferred.equals(success.deferred) && this.outputSurfaceMap.equals(success.outputSurfaceMap);
            }

            public final int hashCode() {
                return this.outputSurfaceMap.hashCode() + (this.deferred.hashCode() * 31);
            }

            public final String toString() {
                return "Success(deferred=" + this.deferred + ", outputSurfaceMap=" + this.outputSurfaceMap + ')';
            }
        }
    }

    Result create(CameraDeviceWrapper cameraDeviceWrapper, Map map, CaptureSessionState captureSessionState);
}
