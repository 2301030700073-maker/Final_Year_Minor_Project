package androidx.camera.camera2.impl;

import android.hardware.camera2.CameraCharacteristics;
import android.hardware.camera2.CaptureResult;
import android.os.Build;
import android.util.Log;
import androidx.camera.camera2.pipe.CameraDevices$CC;
import androidx.camera.camera2.pipe.CameraMetadata;
import androidx.camera.camera2.pipe.Request;
import androidx.camera.camera2.pipe.RequestFailure;
import androidx.camera.camera2.pipe.RequestMetadata;
import androidx.camera.camera2.pipe.compat.AndroidFrameInfo;
import androidx.camera.camera2.pipe.compat.AndroidFrameMetadata;
import androidx.camera.camera2.pipe.compat.Camera2CameraMetadata;
import androidx.datastore.core.DataStoreImpl$data$1$3;
import androidx.datastore.preferences.protobuf.Utf8;
import androidx.lifecycle.MutableLiveData;
import androidx.room.util.DBUtil__DBUtil_androidKt$performBlocking$1;
import java.util.List;
import java.util.concurrent.atomic.AtomicInteger;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.coroutines.Continuation;
import kotlinx.coroutines.CompletableDeferredImpl;
import kotlinx.coroutines.Deferred;
import kotlinx.coroutines.JobKt;
import org.jsoup.helper.Validate;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class LowLightBoostControl implements UseCaseCameraControl {
    public final MutableLiveData _lowLightBoostState;
    public UseCaseCameraRequestControl _requestControl;
    public CompletableDeferredImpl _updateSignal;
    public Deferred checkFrameRateJob;
    public boolean isLowLightBoostOn;
    public final boolean isLowLightBoostSupported;
    public final AtomicInteger lowLightBoostStateAtomic;
    public final State3AControl state3AControl;
    public final UseCaseThreads threads;

    public LowLightBoostControl(CameraMetadata cameraMetadata, State3AControl state3AControl, UseCaseThreads useCaseThreads, ComboRequestListener comboRequestListener) {
        state3AControl.getClass();
        useCaseThreads.getClass();
        comboRequestListener.getClass();
        this.state3AControl = state3AControl;
        this.threads = useCaseThreads;
        boolean z = false;
        if (cameraMetadata != null) {
            CameraMetadata.Companion.getClass();
            CameraCharacteristics.Key key = CameraCharacteristics.CONTROL_AE_AVAILABLE_MODES;
            key.getClass();
            int[] iArr = (int[]) ((Camera2CameraMetadata) cameraMetadata).get(key);
            if (iArr == null ? false : ArraysKt___ArraysKt.contains(iArr, 6)) {
                z = true;
            }
        }
        this.isLowLightBoostSupported = z;
        this._lowLightBoostState = new MutableLiveData(-1);
        this.lowLightBoostStateAtomic = new AtomicInteger(-1);
        if (z) {
            comboRequestListener.addListener(new Request.Listener() { // from class: androidx.camera.camera2.impl.LowLightBoostControl.1
                @Override // androidx.camera.camera2.pipe.Request.Listener
                public final void onAborted(Request request) {
                    request.getClass();
                }

                @Override // androidx.camera.camera2.pipe.Request.Listener
                /* renamed from: onBufferLost-DlC0U5Y */
                public final void mo3onBufferLostDlC0U5Y(RequestMetadata requestMetadata) {
                    requestMetadata.getClass();
                }

                @Override // androidx.camera.camera2.pipe.Request.Listener
                public final void onCaptureProgress(RequestMetadata requestMetadata, int i) {
                    requestMetadata.getClass();
                }

                @Override // androidx.camera.camera2.pipe.Request.Listener
                /* renamed from: onPartialCaptureResult-CcXjc1I */
                public final void mo7onPartialCaptureResultCcXjc1I(RequestMetadata requestMetadata, long j, AndroidFrameMetadata androidFrameMetadata) {
                    requestMetadata.getClass();
                }

                @Override // androidx.camera.camera2.pipe.Request.Listener
                /* renamed from: onReadoutStarted-mP9r-9w */
                public final void mo8onReadoutStartedmP9r9w(RequestMetadata requestMetadata, long j, long j2) {
                    requestMetadata.getClass();
                }

                @Override // androidx.camera.camera2.pipe.Request.Listener
                public final void onRequestSequenceAborted(RequestMetadata requestMetadata) {
                    requestMetadata.getClass();
                }

                @Override // androidx.camera.camera2.pipe.Request.Listener
                /* renamed from: onRequestSequenceCompleted-RuT0dZU */
                public final void mo9onRequestSequenceCompletedRuT0dZU(RequestMetadata requestMetadata, long j) {
                    requestMetadata.getClass();
                }

                @Override // androidx.camera.camera2.pipe.Request.Listener
                public final void onRequestSequenceCreated(RequestMetadata requestMetadata) {
                    requestMetadata.getClass();
                }

                @Override // androidx.camera.camera2.pipe.Request.Listener
                public final void onRequestSequenceSubmitted(RequestMetadata requestMetadata) {
                    requestMetadata.getClass();
                }

                @Override // androidx.camera.camera2.pipe.Request.Listener
                /* renamed from: onStarted-uGKBvU4 */
                public final void mo10onStarteduGKBvU4(RequestMetadata requestMetadata, long j, long j2) {
                    requestMetadata.getClass();
                }

                @Override // androidx.camera.camera2.pipe.Request.Listener
                /* renamed from: onTotalCaptureResult-CcXjc1I */
                public final void mo11onTotalCaptureResultCcXjc1I(RequestMetadata requestMetadata, long j, AndroidFrameInfo androidFrameInfo) {
                    if (Build.VERSION.SDK_INT >= 35) {
                        LowLightBoostControl lowLightBoostControl = LowLightBoostControl.this;
                        if (lowLightBoostControl._requestControl == null || !lowLightBoostControl.isLowLightBoostOn) {
                            return;
                        }
                        AndroidFrameMetadata androidFrameMetadata = (AndroidFrameMetadata) androidFrameInfo.result;
                        CaptureResult.Key key2 = CaptureResult.CONTROL_LOW_LIGHT_BOOST_STATE;
                        key2.getClass();
                        androidFrameMetadata.getClass();
                        Integer num = (Integer) androidFrameMetadata.captureResult.get(key2);
                        if (num != null) {
                            lowLightBoostControl.setLiveDataValue(lowLightBoostControl._lowLightBoostState, num.intValue() != 1 ? 0 : 1);
                        }
                    }
                }

                @Override // androidx.camera.camera2.pipe.Request.Listener
                /* renamed from: onComplete-CcXjc1I */
                public final /* synthetic */ void mo5onCompleteCcXjc1I(RequestMetadata requestMetadata, long j, AndroidFrameInfo androidFrameInfo) {
                }

                @Override // androidx.camera.camera2.pipe.Request.Listener
                /* renamed from: onFailed-CcXjc1I */
                public final /* synthetic */ void mo6onFailedCcXjc1I(RequestMetadata requestMetadata, long j, RequestFailure requestFailure) {
                }

                @Override // androidx.camera.camera2.pipe.Request.Listener
                /* renamed from: onBufferLost-iiEMlm4 */
                public final void mo4onBufferLostiiEMlm4(RequestMetadata requestMetadata, long j, int i, int i2) {
                }
            }, useCaseThreads.sequentialExecutor);
        }
    }

    public final void onSessionConfigChanged(List list) {
        if (this.isLowLightBoostSupported) {
            if (list.isEmpty()) {
                this.checkFrameRateJob = JobKt.CompletableDeferred(Boolean.FALSE);
            } else {
                this.checkFrameRateJob = JobKt.async$default(this.threads.sequentialScope, null, null, new DataStoreImpl$data$1$3(this, list, (Continuation) null, 2), 3);
            }
        }
    }

    @Override // androidx.camera.camera2.impl.UseCaseCameraControl
    public final void reset() {
        CompletableDeferredImpl completableDeferredImpl = this._updateSignal;
        if (completableDeferredImpl != null) {
            CameraDevices$CC.m("There is a new enableLowLightBoost being set", completableDeferredImpl);
        }
        this._updateSignal = null;
        setLowLightBoostAsync(false, true);
    }

    public final void setLiveDataValue(MutableLiveData mutableLiveData, int i) {
        if (this.lowLightBoostStateAtomic.getAndSet(i) != i) {
            if (Validate.isMainThread()) {
                mutableLiveData.setValue(Integer.valueOf(i));
            } else {
                mutableLiveData.postValue(Integer.valueOf(i));
            }
        }
    }

    public final CompletableDeferredImpl setLowLightBoostAsync(boolean z, boolean z2) {
        if (Utf8.SafeProcessor.isDebugEnabled("CXCP")) {
            Log.d("CXCP", "LowLightBoostControl#setLowLightBoostAsync: lowLightBoost = " + z);
        }
        CompletableDeferredImpl completableDeferredImpl = new CompletableDeferredImpl();
        if (this.isLowLightBoostSupported) {
            JobKt.launch$default(this.threads.sequentialScope, null, null, new DBUtil__DBUtil_androidKt$performBlocking$1((Continuation) null, this, completableDeferredImpl, z, z2), 3);
            return completableDeferredImpl;
        }
        completableDeferredImpl.completeExceptionally(new IllegalStateException("Low Light Boost is not supported!"));
        return completableDeferredImpl;
    }

    @Override // androidx.camera.camera2.impl.UseCaseCameraControl
    public final void setRequestControl(UseCaseCameraRequestControl useCaseCameraRequestControl) {
        this._requestControl = useCaseCameraRequestControl;
        if (this.isLowLightBoostOn) {
            if (useCaseCameraRequestControl != null) {
                setLowLightBoostAsync(true, false);
            } else {
                setLiveDataValue(this._lowLightBoostState, 0);
            }
        }
    }
}
