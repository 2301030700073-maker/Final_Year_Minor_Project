package androidx.camera.camera2.pipe.compat;

import android.hardware.camera2.CaptureRequest;
import android.hardware.camera2.TotalCaptureResult;
import android.hardware.camera2.params.InputConfiguration;
import android.util.Log;
import androidx.camera.camera2.pipe.compat.CameraCaptureSessionWrapper;
import java.util.ArrayList;
import java.util.List;
import kotlin.jvm.internal.ClassReference;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class VirtualAndroidCameraDevice implements CameraDeviceWrapper {
    public final AndroidCameraDevice androidCameraDevice;
    public boolean disconnected;
    public final Object lock = new Object();

    public VirtualAndroidCameraDevice(AndroidCameraDevice androidCameraDevice) {
        this.androidCameraDevice = androidCameraDevice;
    }

    @Override // androidx.camera.camera2.pipe.compat.CameraDeviceWrapper
    /* renamed from: createCaptureRequest-2PPcXtw */
    public final CaptureRequest.Builder mo47createCaptureRequest2PPcXtw(int i) {
        CaptureRequest.Builder mo47createCaptureRequest2PPcXtw;
        synchronized (this.lock) {
            try {
                if (this.disconnected) {
                    Log.w("CXCP", "createCaptureRequest failed: Virtual device disconnected");
                    mo47createCaptureRequest2PPcXtw = null;
                } else {
                    mo47createCaptureRequest2PPcXtw = this.androidCameraDevice.mo47createCaptureRequest2PPcXtw(i);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return mo47createCaptureRequest2PPcXtw;
    }

    @Override // androidx.camera.camera2.pipe.compat.CameraDeviceWrapper
    public final boolean createCaptureSession(List list, CameraCaptureSessionWrapper.StateCallback stateCallback) {
        boolean createCaptureSession;
        stateCallback.getClass();
        synchronized (this.lock) {
            try {
                if (this.disconnected) {
                    Log.w("CXCP", "createCaptureSession failed: Virtual device disconnected");
                    stateCallback.onSessionFinalized();
                    createCaptureSession = false;
                } else {
                    createCaptureSession = this.androidCameraDevice.createCaptureSession(list, stateCallback);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return createCaptureSession;
    }

    @Override // androidx.camera.camera2.pipe.compat.CameraDeviceWrapper
    public final boolean createCaptureSessionByOutputConfigurations(ArrayList arrayList, CameraCaptureSessionWrapper.StateCallback stateCallback) {
        boolean createCaptureSessionByOutputConfigurations;
        stateCallback.getClass();
        synchronized (this.lock) {
            try {
                if (this.disconnected) {
                    Log.w("CXCP", "createCaptureSessionByOutputConfigurations failed: Virtual device disconnected");
                    ((CaptureSessionState) stateCallback).onSessionFinalized();
                    createCaptureSessionByOutputConfigurations = false;
                } else {
                    createCaptureSessionByOutputConfigurations = this.androidCameraDevice.createCaptureSessionByOutputConfigurations(arrayList, stateCallback);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return createCaptureSessionByOutputConfigurations;
    }

    @Override // androidx.camera.camera2.pipe.compat.CameraDeviceWrapper
    public final boolean createConstrainedHighSpeedCaptureSession(ArrayList arrayList, CameraCaptureSessionWrapper.StateCallback stateCallback) {
        boolean createConstrainedHighSpeedCaptureSession;
        stateCallback.getClass();
        synchronized (this.lock) {
            try {
                if (this.disconnected) {
                    Log.w("CXCP", "createConstrainedHighSpeedCaptureSession failed: Virtual device disconnected");
                    ((CaptureSessionState) stateCallback).onSessionFinalized();
                    createConstrainedHighSpeedCaptureSession = false;
                } else {
                    createConstrainedHighSpeedCaptureSession = this.androidCameraDevice.createConstrainedHighSpeedCaptureSession(arrayList, stateCallback);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return createConstrainedHighSpeedCaptureSession;
    }

    @Override // androidx.camera.camera2.pipe.compat.CameraDeviceWrapper
    public final boolean createExtensionSession(ExtensionSessionConfigData extensionSessionConfigData) {
        boolean createExtensionSession;
        synchronized (this.lock) {
            try {
                if (this.disconnected) {
                    Log.w("CXCP", "createExtensionSession failed: Virtual device disconnected");
                    extensionSessionConfigData.extensionStateCallback.onSessionFinalized();
                    createExtensionSession = false;
                } else {
                    createExtensionSession = this.androidCameraDevice.createExtensionSession(extensionSessionConfigData);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return createExtensionSession;
    }

    @Override // androidx.camera.camera2.pipe.compat.CameraDeviceWrapper
    public final CaptureRequest.Builder createReprocessCaptureRequest(TotalCaptureResult totalCaptureResult) {
        CaptureRequest.Builder createReprocessCaptureRequest;
        synchronized (this.lock) {
            try {
                if (this.disconnected) {
                    Log.w("CXCP", "createReprocessCaptureRequest failed: Virtual device disconnected");
                    createReprocessCaptureRequest = null;
                } else {
                    createReprocessCaptureRequest = this.androidCameraDevice.createReprocessCaptureRequest(totalCaptureResult);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return createReprocessCaptureRequest;
    }

    @Override // androidx.camera.camera2.pipe.compat.CameraDeviceWrapper
    public final boolean createReprocessableCaptureSession(InputConfiguration inputConfiguration, ArrayList arrayList, CameraCaptureSessionWrapper.StateCallback stateCallback) {
        boolean createReprocessableCaptureSession;
        stateCallback.getClass();
        synchronized (this.lock) {
            try {
                if (this.disconnected) {
                    Log.w("CXCP", "createReprocessableCaptureSession failed: Virtual device disconnected");
                    ((CaptureSessionState) stateCallback).onSessionFinalized();
                    createReprocessableCaptureSession = false;
                } else {
                    createReprocessableCaptureSession = this.androidCameraDevice.createReprocessableCaptureSession(inputConfiguration, arrayList, stateCallback);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return createReprocessableCaptureSession;
    }

    @Override // androidx.camera.camera2.pipe.compat.CameraDeviceWrapper
    public final boolean createReprocessableCaptureSessionByConfigurations(InputConfigData inputConfigData, ArrayList arrayList, CameraCaptureSessionWrapper.StateCallback stateCallback) {
        boolean createReprocessableCaptureSessionByConfigurations;
        stateCallback.getClass();
        synchronized (this.lock) {
            try {
                if (this.disconnected) {
                    Log.w("CXCP", "createReprocessableCaptureSessionByConfigurations failed: Virtual device disconnected");
                    ((CaptureSessionState) stateCallback).onSessionFinalized();
                    createReprocessableCaptureSessionByConfigurations = false;
                } else {
                    createReprocessableCaptureSessionByConfigurations = this.androidCameraDevice.createReprocessableCaptureSessionByConfigurations(inputConfigData, arrayList, stateCallback);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return createReprocessableCaptureSessionByConfigurations;
    }

    public final void disconnect$camera_camera2_pipe() {
        synchronized (this.lock) {
            this.disconnected = true;
        }
    }

    @Override // androidx.camera.camera2.pipe.compat.CameraDeviceWrapper
    /* renamed from: getCameraId-Dz_R5H8 */
    public final String mo48getCameraIdDz_R5H8() {
        return this.androidCameraDevice.cameraId;
    }

    @Override // androidx.camera.camera2.pipe.compat.CameraDeviceWrapper
    /* renamed from: onCameraAudioRestrictionUpdated-LwUUkyU */
    public final void mo49onCameraAudioRestrictionUpdatedLwUUkyU(int i) {
        this.androidCameraDevice.mo49onCameraAudioRestrictionUpdatedLwUUkyU(i);
    }

    @Override // androidx.camera.camera2.pipe.compat.CameraDeviceWrapper
    public final void onDeviceClosed() {
        this.androidCameraDevice.onDeviceClosed();
    }

    @Override // androidx.camera.camera2.pipe.compat.CameraDeviceWrapper
    public final void onDeviceClosing() {
        this.androidCameraDevice.onDeviceClosing();
    }

    @Override // androidx.camera.camera2.pipe.UnsafeWrapper
    public final Object unwrapAs(ClassReference classReference) {
        return this.androidCameraDevice.unwrapAs(classReference);
    }

    @Override // androidx.camera.camera2.pipe.compat.CameraDeviceWrapper
    public final boolean createCaptureSession(SessionConfigData sessionConfigData) {
        boolean createCaptureSession;
        synchronized (this.lock) {
            try {
                if (this.disconnected) {
                    Log.w("CXCP", "createCaptureSession failed: Virtual device disconnected");
                    sessionConfigData.stateCallback.onSessionFinalized();
                    createCaptureSession = false;
                } else {
                    createCaptureSession = this.androidCameraDevice.createCaptureSession(sessionConfigData);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return createCaptureSession;
    }
}
