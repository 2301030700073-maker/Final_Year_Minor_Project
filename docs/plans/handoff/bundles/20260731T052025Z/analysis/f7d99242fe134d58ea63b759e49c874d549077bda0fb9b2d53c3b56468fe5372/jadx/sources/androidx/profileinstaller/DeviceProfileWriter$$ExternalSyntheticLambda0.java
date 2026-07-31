package androidx.profileinstaller;

import android.content.Intent;
import android.content.IntentSender;
import androidx.activity.ComponentActivity$activityResultRegistry$1;
import androidx.activity.result.ActivityResultCallback;
import androidx.activity.result.ActivityResultRegistry$CallbackAndContract;
import androidx.biometric.BiometricPrompt;
import androidx.camera.camera2.impl.CameraCallbackMap;
import androidx.camera.camera2.pipe.RequestMetadata;
import androidx.camera.core.LegacySessionConfig;
import androidx.camera.core.impl.CameraCaptureCallback;
import java.io.Serializable;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class DeviceProfileWriter$$ExternalSyntheticLambda0 implements Runnable {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;
    public final /* synthetic */ int f$1;
    public final /* synthetic */ Object f$2;

    public /* synthetic */ DeviceProfileWriter$$ExternalSyntheticLambda0(CameraCaptureCallback cameraCaptureCallback, CameraCallbackMap cameraCallbackMap, RequestMetadata requestMetadata, int i) {
        this.$r8$classId = 3;
        this.f$0 = cameraCaptureCallback;
        this.f$2 = requestMetadata;
        this.f$1 = i;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = this.$r8$classId;
        int i2 = this.f$1;
        Object obj = this.f$2;
        Object obj2 = this.f$0;
        switch (i) {
            case 0:
                ((ProfileInstaller$DiagnosticsCallback) ((LegacySessionConfig) obj2).preferredFeatureGroup).onResultReceived(i2, obj);
                break;
            case 1:
                ComponentActivity$activityResultRegistry$1 componentActivity$activityResultRegistry$1 = (ComponentActivity$activityResultRegistry$1) obj2;
                Serializable serializable = (Serializable) ((BiometricPrompt) obj).mClientFragmentManager;
                String str = (String) componentActivity$activityResultRegistry$1.rcToKey.get(Integer.valueOf(i2));
                if (str != null) {
                    ActivityResultRegistry$CallbackAndContract activityResultRegistry$CallbackAndContract = (ActivityResultRegistry$CallbackAndContract) componentActivity$activityResultRegistry$1.keyToCallback.get(str);
                    if ((activityResultRegistry$CallbackAndContract != null ? activityResultRegistry$CallbackAndContract.callback : null) != null) {
                        ActivityResultCallback activityResultCallback = activityResultRegistry$CallbackAndContract.callback;
                        if (componentActivity$activityResultRegistry$1.launchedKeys.remove(str)) {
                            activityResultCallback.onActivityResult(serializable);
                            break;
                        }
                    } else {
                        componentActivity$activityResultRegistry$1.pendingResults.remove(str);
                        componentActivity$activityResultRegistry$1.parsedPendingResults.put(str, serializable);
                        break;
                    }
                }
                break;
            case 2:
                ((ComponentActivity$activityResultRegistry$1) obj2).dispatchResult(i2, 0, new Intent().setAction("androidx.activity.result.contract.action.INTENT_SENDER_REQUEST").putExtra("androidx.activity.result.contract.extra.SEND_INTENT_EXCEPTION", (IntentSender.SendIntentException) obj));
                break;
            default:
                ((CameraCaptureCallback) obj2).onCaptureProcessProgressed(CameraCallbackMap.getCaptureConfigId((RequestMetadata) obj), i2);
                break;
        }
    }

    public /* synthetic */ DeviceProfileWriter$$ExternalSyntheticLambda0(int i, int i2, Object obj, Object obj2) {
        this.$r8$classId = i2;
        this.f$0 = obj;
        this.f$1 = i;
        this.f$2 = obj2;
    }
}
