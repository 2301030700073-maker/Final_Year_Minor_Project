package androidx.camera.camera2.pipe.compat;

import android.hardware.camera2.CaptureResult;
import android.hardware.camera2.TotalCaptureResult;
import android.os.Build;
import android.os.Trace;
import android.util.ArrayMap;
import android.util.Log;
import androidx.camera.camera2.impl.TagsKt;
import androidx.camera.camera2.pipe.CameraId;
import androidx.camera.camera2.pipe.FrameNumber;
import androidx.camera.camera2.pipe.RequestMetadata;
import androidx.camera.camera2.pipe.UnsafeWrapper;
import androidx.camera.core.impl.CameraCaptureMetaData$AeState;
import androidx.camera.core.impl.CameraCaptureMetaData$AfState;
import androidx.camera.core.impl.CameraCaptureMetaData$AwbState;
import androidx.camera.core.impl.CameraCaptureResult;
import androidx.camera.core.impl.TagBundle;
import androidx.datastore.preferences.protobuf.Utf8;
import java.util.Map;
import kotlin.collections.EmptyMap;
import kotlin.jvm.internal.ClassReference;
import kotlin.jvm.internal.Reflection;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class AndroidFrameInfo implements UnsafeWrapper, CameraCaptureResult {
    public final /* synthetic */ int $r8$classId = 0;
    public final UnsafeWrapper result;
    public final Object totalCaptureResult;

    public AndroidFrameInfo(TotalCaptureResult totalCaptureResult, String str, RequestMetadata requestMetadata) {
        Map physicalCaptureResults;
        str.getClass();
        requestMetadata.getClass();
        this.totalCaptureResult = totalCaptureResult;
        this.result = new AndroidFrameMetadata(totalCaptureResult, str);
        try {
            Trace.beginSection("physicalCaptureResults");
            int i = Build.VERSION.SDK_INT;
            if (i >= 31) {
                physicalCaptureResults = Api31Compat.getPhysicalCameraTotalResults(totalCaptureResult);
                physicalCaptureResults.getClass();
            } else {
                physicalCaptureResults = i >= 28 ? Api28Compat.getPhysicalCaptureResults(totalCaptureResult) : EmptyMap.INSTANCE;
            }
            if (physicalCaptureResults != null && !physicalCaptureResults.isEmpty()) {
                ArrayMap arrayMap = new ArrayMap(physicalCaptureResults.size());
                for (Map.Entry entry : physicalCaptureResults.entrySet()) {
                    String str2 = (String) entry.getKey();
                    CameraId.m34constructorimpl(str2);
                    arrayMap.put(new CameraId(str2), new AndroidFrameMetadata((CaptureResult) entry.getValue(), str2));
                }
            }
        } finally {
            Trace.endSection();
        }
    }

    @Override // androidx.camera.core.impl.CameraCaptureResult
    public CameraCaptureMetaData$AeState getAeState() {
        AndroidFrameMetadata metadata = ((AndroidFrameInfo) this.result).getMetadata();
        CaptureResult.Key key = CaptureResult.CONTROL_AE_STATE;
        key.getClass();
        metadata.getClass();
        CaptureResult captureResult = metadata.captureResult;
        Integer num = (Integer) captureResult.get(key);
        if (num != null && num.intValue() == 0) {
            return CameraCaptureMetaData$AeState.INACTIVE;
        }
        if ((num != null && num.intValue() == 1) || (num != null && num.intValue() == 5)) {
            return CameraCaptureMetaData$AeState.SEARCHING;
        }
        if (num != null && num.intValue() == 4) {
            return CameraCaptureMetaData$AeState.FLASH_REQUIRED;
        }
        if (num != null && num.intValue() == 2) {
            return CameraCaptureMetaData$AeState.CONVERGED;
        }
        if (num != null && num.intValue() == 3) {
            return CameraCaptureMetaData$AeState.LOCKED;
        }
        CameraCaptureMetaData$AeState cameraCaptureMetaData$AeState = CameraCaptureMetaData$AeState.UNKNOWN;
        if (num != null && Utf8.SafeProcessor.isDebugEnabled("CXCP")) {
            Log.d("CXCP", "Unknown AE state (" + num.intValue() + ") for " + ((Object) FrameNumber.m36toStringimpl(captureResult.getFrameNumber())) + '!');
        }
        return cameraCaptureMetaData$AeState;
    }

    @Override // androidx.camera.core.impl.CameraCaptureResult
    public CameraCaptureMetaData$AfState getAfState() {
        AndroidFrameMetadata metadata = ((AndroidFrameInfo) this.result).getMetadata();
        CaptureResult.Key key = CaptureResult.CONTROL_AF_STATE;
        key.getClass();
        metadata.getClass();
        CaptureResult captureResult = metadata.captureResult;
        Integer num = (Integer) captureResult.get(key);
        if (num != null && num.intValue() == 0) {
            return CameraCaptureMetaData$AfState.INACTIVE;
        }
        if ((num != null && num.intValue() == 3) || (num != null && num.intValue() == 1)) {
            return CameraCaptureMetaData$AfState.SCANNING;
        }
        if (num != null && num.intValue() == 4) {
            return CameraCaptureMetaData$AfState.LOCKED_FOCUSED;
        }
        if (num != null && num.intValue() == 5) {
            return CameraCaptureMetaData$AfState.LOCKED_NOT_FOCUSED;
        }
        if (num != null && num.intValue() == 2) {
            return CameraCaptureMetaData$AfState.PASSIVE_FOCUSED;
        }
        if (num != null && num.intValue() == 6) {
            return CameraCaptureMetaData$AfState.PASSIVE_NOT_FOCUSED;
        }
        CameraCaptureMetaData$AfState cameraCaptureMetaData$AfState = CameraCaptureMetaData$AfState.UNKNOWN;
        if (num != null && Utf8.SafeProcessor.isDebugEnabled("CXCP")) {
            Log.d("CXCP", "Unknown AF state (" + num.intValue() + ") for " + ((Object) FrameNumber.m36toStringimpl(captureResult.getFrameNumber())) + '!');
        }
        return cameraCaptureMetaData$AfState;
    }

    @Override // androidx.camera.core.impl.CameraCaptureResult
    public CameraCaptureMetaData$AwbState getAwbState() {
        AndroidFrameMetadata metadata = ((AndroidFrameInfo) this.result).getMetadata();
        CaptureResult.Key key = CaptureResult.CONTROL_AWB_STATE;
        key.getClass();
        metadata.getClass();
        CaptureResult captureResult = metadata.captureResult;
        Integer num = (Integer) captureResult.get(key);
        if (num != null && num.intValue() == 0) {
            return CameraCaptureMetaData$AwbState.INACTIVE;
        }
        if (num != null && num.intValue() == 1) {
            return CameraCaptureMetaData$AwbState.METERING;
        }
        if (num != null && num.intValue() == 2) {
            return CameraCaptureMetaData$AwbState.CONVERGED;
        }
        if (num != null && num.intValue() == 3) {
            return CameraCaptureMetaData$AwbState.LOCKED;
        }
        CameraCaptureMetaData$AwbState cameraCaptureMetaData$AwbState = CameraCaptureMetaData$AwbState.UNKNOWN;
        if (num != null && Utf8.SafeProcessor.isDebugEnabled("CXCP")) {
            Log.d("CXCP", "Unknown AWB state (" + num.intValue() + ") for " + ((Object) FrameNumber.m36toStringimpl(captureResult.getFrameNumber())) + '!');
        }
        return cameraCaptureMetaData$AwbState;
    }

    @Override // androidx.camera.core.impl.CameraCaptureResult
    public int getFlashState() {
        AndroidFrameMetadata metadata = ((AndroidFrameInfo) this.result).getMetadata();
        CaptureResult.Key key = CaptureResult.FLASH_STATE;
        key.getClass();
        metadata.getClass();
        CaptureResult captureResult = metadata.captureResult;
        Integer num = (Integer) captureResult.get(key);
        int i = 2;
        if ((num == null || num.intValue() != 0) && (num == null || num.intValue() != 1)) {
            if (num != null && num.intValue() == 2) {
                return 3;
            }
            i = 4;
            if ((num == null || num.intValue() != 3) && (num == null || num.intValue() != 4)) {
                if (num != null && Utf8.SafeProcessor.isDebugEnabled("CXCP")) {
                    Log.d("CXCP", "Unknown flash state (" + num.intValue() + ") for " + ((Object) FrameNumber.m36toStringimpl(captureResult.getFrameNumber())) + '!');
                }
                return 1;
            }
        }
        return i;
    }

    public AndroidFrameMetadata getMetadata() {
        return (AndroidFrameMetadata) this.result;
    }

    @Override // androidx.camera.core.impl.CameraCaptureResult
    public TagBundle getTagBundle() {
        return (TagBundle) ((RequestMetadata) this.totalCaptureResult).getOrDefault(TagsKt.CAMERAX_TAG_BUNDLE, TagBundle.EMPTY_TAGBUNDLE);
    }

    @Override // androidx.camera.core.impl.CameraCaptureResult
    public long getTimestamp() {
        AndroidFrameMetadata metadata = ((AndroidFrameInfo) this.result).getMetadata();
        CaptureResult.Key key = CaptureResult.SENSOR_TIMESTAMP;
        key.getClass();
        metadata.getClass();
        Object obj = metadata.captureResult.get(key);
        return ((Number) (obj != null ? obj : -1L)).longValue();
    }

    public String toString() {
        switch (this.$r8$classId) {
            case 0:
                StringBuilder sb = new StringBuilder("FrameInfo(camera: ");
                AndroidFrameMetadata androidFrameMetadata = (AndroidFrameMetadata) this.result;
                sb.append((Object) CameraId.m35toStringimpl(androidFrameMetadata.camera));
                sb.append(", frameNumber: ");
                sb.append(androidFrameMetadata.captureResult.getFrameNumber());
                sb.append(')');
                return sb.toString();
            default:
                return super.toString();
        }
    }

    @Override // androidx.camera.camera2.pipe.UnsafeWrapper
    public final Object unwrapAs(ClassReference classReference) {
        switch (this.$r8$classId) {
            case 0:
                TotalCaptureResult totalCaptureResult = (TotalCaptureResult) this.totalCaptureResult;
                if (classReference.equals(Reflection.getOrCreateKotlinClass(CaptureResult.class)) || classReference.equals(Reflection.getOrCreateKotlinClass(TotalCaptureResult.class))) {
                    return totalCaptureResult;
                }
                return null;
            default:
                boolean equals = classReference.equals(Reflection.getOrCreateKotlinClass(AndroidFrameInfo.class));
                AndroidFrameInfo androidFrameInfo = (AndroidFrameInfo) this.result;
                return equals ? androidFrameInfo : androidFrameInfo.unwrapAs(classReference);
        }
    }

    public AndroidFrameInfo(RequestMetadata requestMetadata, AndroidFrameInfo androidFrameInfo) {
        requestMetadata.getClass();
        this.totalCaptureResult = requestMetadata;
        this.result = androidFrameInfo;
    }
}
