package androidx.compose.ui.window;

import android.content.Intent;
import android.content.pm.ShortcutInfo;
import android.hardware.camera2.CameraCharacteristics;
import android.hardware.camera2.params.DynamicRangeProfiles;
import android.media.EncoderProfiles;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcelable;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.inputmethod.CursorAnchorInfo;
import android.view.inputmethod.EditorBoundsInfo;
import android.window.OnBackInvokedDispatcher;
import androidx.biometric.BiometricPrompt;
import androidx.camera.camera2.compat.DynamicRangeProfilesCompatApi33Impl;
import androidx.camera.camera2.compat.DynamicRangeProfilesCompatBaseImpl;
import androidx.camera.camera2.internal.DynamicRangeConversions;
import androidx.camera.camera2.pipe.CameraDevices$CC;
import androidx.camera.camera2.pipe.CameraMetadata;
import androidx.camera.camera2.pipe.compat.Camera2CameraMetadata;
import androidx.camera.core.DynamicRange;
import androidx.camera.core.ImageAnalysis$$ExternalSyntheticLambda3;
import androidx.camera.core.impl.AutoValue_EncoderProfilesProxy_AudioProfileProxy;
import androidx.camera.core.impl.AutoValue_EncoderProfilesProxy_ImmutableEncoderProfilesProxy;
import androidx.camera.core.impl.AutoValue_EncoderProfilesProxy_VideoProfileProxy;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.graphics.ColorKt;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class Api33Impl {
    public static AutoValue_EncoderProfilesProxy_ImmutableEncoderProfilesProxy from(EncoderProfiles encoderProfiles) {
        int defaultDurationSeconds = encoderProfiles.getDefaultDurationSeconds();
        int recommendedFileFormat = encoderProfiles.getRecommendedFileFormat();
        List<EncoderProfiles.AudioProfile> audioProfiles = encoderProfiles.getAudioProfiles();
        ArrayList arrayList = new ArrayList();
        for (EncoderProfiles.AudioProfile audioProfile : audioProfiles) {
            arrayList.add(new AutoValue_EncoderProfilesProxy_AudioProfileProxy(audioProfile.getCodec(), audioProfile.getMediaType(), audioProfile.getBitrate(), audioProfile.getSampleRate(), audioProfile.getChannels(), audioProfile.getProfile()));
        }
        List<EncoderProfiles.VideoProfile> videoProfiles = encoderProfiles.getVideoProfiles();
        ArrayList arrayList2 = new ArrayList();
        for (EncoderProfiles.VideoProfile videoProfile : videoProfiles) {
            arrayList2.add(new AutoValue_EncoderProfilesProxy_VideoProfileProxy(videoProfile.getCodec(), videoProfile.getMediaType(), videoProfile.getBitrate(), videoProfile.getFrameRate(), videoProfile.getWidth(), videoProfile.getHeight(), videoProfile.getProfile(), videoProfile.getBitDepth(), videoProfile.getChromaSubsampling(), videoProfile.getHdrFormat()));
        }
        return AutoValue_EncoderProfilesProxy_ImmutableEncoderProfilesProxy.create(defaultDurationSeconds, recommendedFileFormat, arrayList, arrayList2);
    }

    public static BiometricPrompt fromCameraMetaData(CameraMetadata cameraMetadata) {
        cameraMetadata.getClass();
        int i = Build.VERSION.SDK_INT;
        BiometricPrompt biometricPrompt = null;
        if (i >= 33) {
            CameraCharacteristics.Key key = CameraCharacteristics.REQUEST_AVAILABLE_DYNAMIC_RANGE_PROFILES;
            key.getClass();
            DynamicRangeProfiles dynamicRangeProfiles = (DynamicRangeProfiles) ((Camera2CameraMetadata) cameraMetadata).get(key);
            if (dynamicRangeProfiles != null) {
                if (i < 33) {
                    _UtilJvmKt$$ExternalSyntheticLambda0.m((Object) CameraDevices$CC.m(i, "DynamicRangeProfiles can only be converted to DynamicRangesCompat on API 33 or higher. is not supported on API ", " (requires API 33)"));
                    return null;
                }
                biometricPrompt = new BiometricPrompt(11, new DynamicRangeProfilesCompatApi33Impl(dynamicRangeProfiles));
            }
        }
        return biometricPrompt == null ? DynamicRangeProfilesCompatBaseImpl.COMPAT_INSTANCE : biometricPrompt;
    }

    public static Object getParcelable(Bundle bundle, String str, Class cls) {
        return bundle.getParcelable(str, cls);
    }

    public static ArrayList getParcelableArrayList(Bundle bundle, String str, Class cls) {
        return bundle.getParcelableArrayList(str, cls);
    }

    public static ArrayList getParcelableArrayListExtra(Intent intent) {
        return intent.getParcelableArrayListExtra("android.intent.extra.STREAM", Parcelable.class);
    }

    public static Object getParcelableExtra(Intent intent, String str, Class cls) {
        return intent.getParcelableExtra(str, cls);
    }

    public static DynamicRange getRecommended10BitDynamicRange(CameraMetadata cameraMetadata) {
        cameraMetadata.getClass();
        CameraCharacteristics.Key key = CameraCharacteristics.REQUEST_RECOMMENDED_TEN_BIT_DYNAMIC_RANGE_PROFILE;
        key.getClass();
        Long l = (Long) ((Camera2CameraMetadata) cameraMetadata).get(key);
        if (l != null) {
            return (DynamicRange) DynamicRangeConversions.PROFILE_TO_DR_MAP.get(l);
        }
        return null;
    }

    public static final Serializable getSerializable(Bundle bundle, String str, Class cls) {
        bundle.getClass();
        if (Build.VERSION.SDK_INT >= 34) {
            return bundle.getSerializable(str, cls);
        }
        Serializable serializable = bundle.getSerializable(str);
        if (!cls.isInstance(serializable)) {
            return null;
        }
        serializable.getClass();
        return serializable;
    }

    public static String getUniqueId(AccessibilityNodeInfo accessibilityNodeInfo) {
        return accessibilityNodeInfo.getUniqueId();
    }

    public static boolean isTextSelectable(AccessibilityNodeInfo accessibilityNodeInfo) {
        return accessibilityNodeInfo.isTextSelectable();
    }

    public static final void maybeRegisterBackCallback(PopupLayout popupLayout, Api33Impl$$ExternalSyntheticLambda0 api33Impl$$ExternalSyntheticLambda0) {
        OnBackInvokedDispatcher findOnBackInvokedDispatcher;
        if (!ImageAnalysis$$ExternalSyntheticLambda3.m(api33Impl$$ExternalSyntheticLambda0) || (findOnBackInvokedDispatcher = popupLayout.findOnBackInvokedDispatcher()) == null) {
            return;
        }
        findOnBackInvokedDispatcher.registerOnBackInvokedCallback(1000000, api33Impl$$ExternalSyntheticLambda0);
    }

    public static final void maybeUnregisterBackCallback(PopupLayout popupLayout, Api33Impl$$ExternalSyntheticLambda0 api33Impl$$ExternalSyntheticLambda0) {
        OnBackInvokedDispatcher findOnBackInvokedDispatcher;
        if (!ImageAnalysis$$ExternalSyntheticLambda3.m(api33Impl$$ExternalSyntheticLambda0) || (findOnBackInvokedDispatcher = popupLayout.findOnBackInvokedDispatcher()) == null) {
            return;
        }
        findOnBackInvokedDispatcher.unregisterOnBackInvokedCallback(api33Impl$$ExternalSyntheticLambda0);
    }

    public static final void setEditorBoundsInfo(CursorAnchorInfo.Builder builder, Rect rect) {
        builder.setEditorBoundsInfo(new EditorBoundsInfo.Builder().setEditorBounds(ColorKt.toAndroidRectF(rect)).setHandwritingBounds(ColorKt.toAndroidRectF(rect)).build());
    }

    public static void setExcludedFromSurfaces(ShortcutInfo.Builder builder) {
        builder.setExcludedFromSurfaces(0);
    }
}
