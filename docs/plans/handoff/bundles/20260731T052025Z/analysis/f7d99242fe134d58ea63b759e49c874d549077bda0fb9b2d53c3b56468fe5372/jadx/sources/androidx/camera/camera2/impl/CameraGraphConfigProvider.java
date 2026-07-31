package androidx.camera.camera2.impl;

import android.hardware.camera2.params.DynamicRangeProfiles;
import android.os.Build;
import androidx.biometric.BiometricPrompt;
import androidx.camera.camera2.adapter.ZslControl;
import androidx.camera.camera2.compat.DynamicRangeProfilesCompat$DynamicRangeProfilesCompatImpl;
import androidx.camera.camera2.compat.quirk.CameraQuirks;
import androidx.camera.camera2.compat.workaround.TemplateParamsOverride;
import androidx.camera.camera2.pipe.CameraDevices$CC;
import androidx.camera.camera2.pipe.CameraGraph$Config;
import androidx.camera.camera2.pipe.CameraId;
import androidx.camera.camera2.pipe.CameraMetadata;
import androidx.camera.core.CameraXConfig;
import androidx.cardview.widget.CardView;
import androidx.compose.ui.window.Api33Impl;
import com.fsck.k9.mailstore.LocalStore;
import java.util.Map;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class CameraGraphConfigProvider {
    public final CameraCallbackMap callbackMap;
    public final LocalStore.AnonymousClass8 cameraConfig;
    public final CardView.AnonymousClass1 cameraInteropStateCallbackRepository;
    public final CameraMetadata cameraMetadata;
    public final CameraQuirks cameraQuirks;
    public final CameraXConfig cameraXConfig;
    public final BiometricPrompt closeCameraOnCameraGraphClose;
    public final ComboRequestListener requestListener;
    public final DynamicRangeProfiles supportedDynamicRangeProfiles;
    public final TemplateParamsOverride templateParamsOverride;
    public final ZslControl zslControl;

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class CameraGraphCreationResult {
        public final CameraGraph$Config config;
        public final Map streamConfigMap;

        public CameraGraphCreationResult(CameraGraph$Config cameraGraph$Config, Map map) {
            this.config = cameraGraph$Config;
            this.streamConfigMap = map;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof CameraGraphCreationResult)) {
                return false;
            }
            CameraGraphCreationResult cameraGraphCreationResult = (CameraGraphCreationResult) obj;
            return this.config.equals(cameraGraphCreationResult.config) && this.streamConfigMap.equals(cameraGraphCreationResult.streamConfigMap);
        }

        public final int hashCode() {
            return this.streamConfigMap.hashCode() + (this.config.hashCode() * 31);
        }

        public final String toString() {
            return "CameraGraphCreationResult(config=" + this.config + ", streamConfigMap=" + this.streamConfigMap + ')';
        }
    }

    public CameraGraphConfigProvider(CameraCallbackMap cameraCallbackMap, ComboRequestListener comboRequestListener, LocalStore.AnonymousClass8 anonymousClass8, CameraQuirks cameraQuirks, ZslControl zslControl, TemplateParamsOverride templateParamsOverride, CameraMetadata cameraMetadata, CameraXConfig cameraXConfig, CardView.AnonymousClass1 anonymousClass1) {
        BiometricPrompt fromCameraMetaData;
        cameraCallbackMap.getClass();
        comboRequestListener.getClass();
        anonymousClass8.getClass();
        cameraQuirks.getClass();
        zslControl.getClass();
        this.callbackMap = cameraCallbackMap;
        this.requestListener = comboRequestListener;
        this.cameraConfig = anonymousClass8;
        this.cameraQuirks = cameraQuirks;
        this.zslControl = zslControl;
        this.templateParamsOverride = templateParamsOverride;
        this.cameraMetadata = cameraMetadata;
        this.cameraXConfig = cameraXConfig;
        this.cameraInteropStateCallbackRepository = anonymousClass1;
        this.closeCameraOnCameraGraphClose = new BiometricPrompt(13);
        int i = Build.VERSION.SDK_INT;
        DynamicRangeProfiles dynamicRangeProfiles = null;
        if (i >= 33 && cameraMetadata != null && (fromCameraMetaData = Api33Impl.fromCameraMetaData(cameraMetadata)) != null) {
            if (i < 33) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m((Object) CameraDevices$CC.m(i, "DynamicRangesCompat can only be converted to DynamicRangeProfiles on API 33 or higher. is not supported on API ", " (requires API 33)"));
                throw null;
            }
            dynamicRangeProfiles = ((DynamicRangeProfilesCompat$DynamicRangeProfilesCompatImpl) fromCameraMetaData.mClientFragmentManager).unwrap();
        }
        this.supportedDynamicRangeProfiles = dynamicRangeProfiles;
    }

    /* JADX WARN: Code restructure failed: missing block: B:51:0x01ad, code lost:
    
        if (kotlin.collections.ArraysKt___ArraysKt.contains(r8, r14.value) == true) goto L78;
     */
    /* JADX WARN: Removed duplicated region for block: B:141:0x038b  */
    /* JADX WARN: Removed duplicated region for block: B:144:0x039c  */
    /* JADX WARN: Removed duplicated region for block: B:147:0x03a4  */
    /* JADX WARN: Removed duplicated region for block: B:149:0x03ad  */
    /* JADX WARN: Removed duplicated region for block: B:152:0x03c3  */
    /* JADX WARN: Removed duplicated region for block: B:155:0x03ce  */
    /* JADX WARN: Removed duplicated region for block: B:157:0x03d5  */
    /* JADX WARN: Removed duplicated region for block: B:159:0x03dc  */
    /* JADX WARN: Removed duplicated region for block: B:175:0x044d  */
    /* JADX WARN: Removed duplicated region for block: B:182:0x047e  */
    /* JADX WARN: Removed duplicated region for block: B:185:0x0496  */
    /* JADX WARN: Removed duplicated region for block: B:189:0x049f  */
    /* JADX WARN: Removed duplicated region for block: B:190:0x0480  */
    /* JADX WARN: Removed duplicated region for block: B:191:0x045f  */
    /* JADX WARN: Removed duplicated region for block: B:197:0x0448  */
    /* JADX WARN: Removed duplicated region for block: B:198:0x0392  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0146  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x0171  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x01de  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x0215  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x01f6  */
    /* JADX WARN: Removed duplicated region for block: B:86:0x01d8  */
    /* renamed from: create-79VDu0o, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final androidx.camera.camera2.impl.CameraGraphConfigProvider.CameraGraphCreationResult m19create79VDu0o(int r36, androidx.camera.core.impl.SessionConfig r37, boolean r38, androidx.camera.camera2.adapter.GraphStateToCameraStateAdapter r39, java.lang.Integer r40, java.util.Map r41, java.util.Map r42) {
        /*
            Method dump skipped, instructions count: 1205
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.camera.camera2.impl.CameraGraphConfigProvider.m19create79VDu0o(int, androidx.camera.core.impl.SessionConfig, boolean, androidx.camera.camera2.adapter.GraphStateToCameraStateAdapter, java.lang.Integer, java.util.Map, java.util.Map):androidx.camera.camera2.impl.CameraGraphConfigProvider$CameraGraphCreationResult");
    }

    public final String toString() {
        return "CameraGraphConfigProvider<" + ((Object) CameraId.m35toStringimpl(this.cameraConfig.val$attachmentId)) + '>';
    }
}
