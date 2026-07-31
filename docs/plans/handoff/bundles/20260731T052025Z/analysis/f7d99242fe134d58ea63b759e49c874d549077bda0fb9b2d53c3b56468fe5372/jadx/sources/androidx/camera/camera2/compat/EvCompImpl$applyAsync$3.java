package androidx.camera.camera2.compat;

import android.hardware.camera2.CaptureResult;
import androidx.camera.camera2.impl.TagsKt;
import androidx.camera.camera2.impl.UseCaseCameraState;
import androidx.camera.camera2.pipe.Request;
import androidx.camera.camera2.pipe.RequestFailure;
import androidx.camera.camera2.pipe.RequestMetadata;
import androidx.camera.camera2.pipe.compat.AndroidFrameInfo;
import androidx.camera.camera2.pipe.compat.AndroidFrameMetadata;
import kotlin.Unit;
import kotlin.collections.ArrayDeque;
import kotlin.collections.CollectionsKt;
import kotlinx.coroutines.CompletableDeferredImpl;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class EvCompImpl$applyAsync$3 implements Request.Listener {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object $signal;

    public /* synthetic */ EvCompImpl$applyAsync$3(int i, Object obj) {
        this.$r8$classId = i;
        this.$signal = obj;
    }

    @Override // androidx.camera.camera2.pipe.Request.Listener
    public final void onAborted(Request request) {
        switch (this.$r8$classId) {
            case 0:
                request.getClass();
                break;
            default:
                request.getClass();
                break;
        }
    }

    @Override // androidx.camera.camera2.pipe.Request.Listener
    /* renamed from: onBufferLost-DlC0U5Y */
    public final void mo3onBufferLostDlC0U5Y(RequestMetadata requestMetadata) {
        switch (this.$r8$classId) {
            case 0:
                requestMetadata.getClass();
                break;
            default:
                requestMetadata.getClass();
                break;
        }
    }

    @Override // androidx.camera.camera2.pipe.Request.Listener
    /* renamed from: onBufferLost-iiEMlm4 */
    public final void mo4onBufferLostiiEMlm4(RequestMetadata requestMetadata, long j, int i, int i2) {
        int i3 = this.$r8$classId;
    }

    @Override // androidx.camera.camera2.pipe.Request.Listener
    public final void onCaptureProgress(RequestMetadata requestMetadata, int i) {
        switch (this.$r8$classId) {
            case 0:
                requestMetadata.getClass();
                break;
            default:
                requestMetadata.getClass();
                break;
        }
    }

    @Override // androidx.camera.camera2.pipe.Request.Listener
    /* renamed from: onComplete-CcXjc1I */
    public final void mo5onCompleteCcXjc1I(RequestMetadata requestMetadata, long j, AndroidFrameInfo androidFrameInfo) {
        switch (this.$r8$classId) {
            case 0:
                CompletableDeferredImpl completableDeferredImpl = (CompletableDeferredImpl) this.$signal;
                AndroidFrameMetadata androidFrameMetadata = (AndroidFrameMetadata) androidFrameInfo.result;
                CaptureResult.Key key = CaptureResult.CONTROL_AE_STATE;
                key.getClass();
                androidFrameMetadata.getClass();
                Integer num = (Integer) androidFrameMetadata.captureResult.get(key);
                CaptureResult.Key key2 = CaptureResult.CONTROL_AE_EXPOSURE_COMPENSATION;
                key2.getClass();
                androidFrameMetadata.getClass();
                Integer num2 = (Integer) androidFrameMetadata.captureResult.get(key2);
                if (num != null && num2 != null) {
                    int intValue = num.intValue();
                    if ((intValue == 2 || intValue == 3 || intValue == 4) && num2.intValue() == 0) {
                        completableDeferredImpl.makeCompleting$kotlinx_coroutines_core(0);
                        break;
                    }
                } else if (num2 != null && num2.intValue() == 0) {
                    completableDeferredImpl.makeCompleting$kotlinx_coroutines_core(0);
                    break;
                }
                break;
        }
    }

    @Override // androidx.camera.camera2.pipe.Request.Listener
    /* renamed from: onFailed-CcXjc1I */
    public final void mo6onFailedCcXjc1I(RequestMetadata requestMetadata, long j, RequestFailure requestFailure) {
        Integer num;
        switch (this.$r8$classId) {
            case 0:
                return;
            default:
                if (((UseCaseCameraState) this.$signal).pendingSignalCount.value == 0 || (num = (Integer) requestMetadata.get(TagsKt.USE_CASE_CAMERA_STATE_CUSTOM_TAG)) == null) {
                    return;
                }
                UseCaseCameraState useCaseCameraState = (UseCaseCameraState) this.$signal;
                int intValue = num.intValue();
                synchronized (useCaseCameraState.lock) {
                    ArrayDeque arrayDeque = useCaseCameraState.updateSignals;
                    Throwable th = new Throwable("Failed in framework level".concat(" with CaptureFailure.reason = " + requestFailure.getReason()));
                    while (!arrayDeque.isEmpty() && ((UseCaseCameraState.RequestSignal) arrayDeque.first()).requestNo <= intValue) {
                        ((UseCaseCameraState.RequestSignal) arrayDeque.first()).signal.completeExceptionally(th);
                        CollectionsKt.removeFirst(arrayDeque);
                        ((UseCaseCameraState) this.$signal).pendingSignalCount.decrementAndGet();
                    }
                }
                return;
        }
    }

    @Override // androidx.camera.camera2.pipe.Request.Listener
    /* renamed from: onPartialCaptureResult-CcXjc1I */
    public final void mo7onPartialCaptureResultCcXjc1I(RequestMetadata requestMetadata, long j, AndroidFrameMetadata androidFrameMetadata) {
        switch (this.$r8$classId) {
            case 0:
                requestMetadata.getClass();
                break;
            default:
                requestMetadata.getClass();
                break;
        }
    }

    @Override // androidx.camera.camera2.pipe.Request.Listener
    /* renamed from: onReadoutStarted-mP9r-9w */
    public final void mo8onReadoutStartedmP9r9w(RequestMetadata requestMetadata, long j, long j2) {
        switch (this.$r8$classId) {
            case 0:
                requestMetadata.getClass();
                break;
            default:
                requestMetadata.getClass();
                break;
        }
    }

    @Override // androidx.camera.camera2.pipe.Request.Listener
    public final void onRequestSequenceAborted(RequestMetadata requestMetadata) {
        switch (this.$r8$classId) {
            case 0:
                requestMetadata.getClass();
                break;
            default:
                requestMetadata.getClass();
                break;
        }
    }

    @Override // androidx.camera.camera2.pipe.Request.Listener
    /* renamed from: onRequestSequenceCompleted-RuT0dZU */
    public final void mo9onRequestSequenceCompletedRuT0dZU(RequestMetadata requestMetadata, long j) {
        switch (this.$r8$classId) {
            case 0:
                requestMetadata.getClass();
                break;
            default:
                requestMetadata.getClass();
                break;
        }
    }

    @Override // androidx.camera.camera2.pipe.Request.Listener
    public final void onRequestSequenceCreated(RequestMetadata requestMetadata) {
        switch (this.$r8$classId) {
            case 0:
                requestMetadata.getClass();
                break;
            default:
                requestMetadata.getClass();
                break;
        }
    }

    @Override // androidx.camera.camera2.pipe.Request.Listener
    public final void onRequestSequenceSubmitted(RequestMetadata requestMetadata) {
        switch (this.$r8$classId) {
            case 0:
                requestMetadata.getClass();
                break;
            default:
                requestMetadata.getClass();
                break;
        }
    }

    @Override // androidx.camera.camera2.pipe.Request.Listener
    /* renamed from: onStarted-uGKBvU4 */
    public final void mo10onStarteduGKBvU4(RequestMetadata requestMetadata, long j, long j2) {
        switch (this.$r8$classId) {
            case 0:
                requestMetadata.getClass();
                break;
            default:
                requestMetadata.getClass();
                break;
        }
    }

    @Override // androidx.camera.camera2.pipe.Request.Listener
    /* renamed from: onTotalCaptureResult-CcXjc1I */
    public final void mo11onTotalCaptureResultCcXjc1I(RequestMetadata requestMetadata, long j, AndroidFrameInfo androidFrameInfo) {
        Integer num;
        switch (this.$r8$classId) {
            case 0:
                return;
            default:
                if (((UseCaseCameraState) this.$signal).pendingSignalCount.value == 0 || (num = (Integer) requestMetadata.get(TagsKt.USE_CASE_CAMERA_STATE_CUSTOM_TAG)) == null) {
                    return;
                }
                UseCaseCameraState useCaseCameraState = (UseCaseCameraState) this.$signal;
                int intValue = num.intValue();
                synchronized (useCaseCameraState.lock) {
                    ArrayDeque arrayDeque = useCaseCameraState.updateSignals;
                    while (!arrayDeque.isEmpty() && ((UseCaseCameraState.RequestSignal) arrayDeque.first()).requestNo <= intValue) {
                        ((UseCaseCameraState.RequestSignal) arrayDeque.first()).signal.makeCompleting$kotlinx_coroutines_core(Unit.INSTANCE);
                        CollectionsKt.removeFirst(arrayDeque);
                        ((UseCaseCameraState) this.$signal).pendingSignalCount.decrementAndGet();
                    }
                }
                return;
        }
    }

    /* renamed from: onComplete-CcXjc1I$androidx$camera$camera2$impl$UseCaseCameraState$RequestListener, reason: not valid java name */
    private final /* synthetic */ void m14x8969b8cd(RequestMetadata requestMetadata, long j, AndroidFrameInfo androidFrameInfo) {
    }

    /* renamed from: onFailed-CcXjc1I$androidx$camera$camera2$compat$EvCompImpl$applyAsync$3, reason: not valid java name */
    private final /* synthetic */ void m15x66c6c7a6(RequestMetadata requestMetadata, long j, RequestFailure requestFailure) {
    }

    /* renamed from: onTotalCaptureResult-CcXjc1I$androidx$camera$camera2$compat$EvCompImpl$applyAsync$3, reason: not valid java name */
    private final /* synthetic */ void m16xfbe9ec04(RequestMetadata requestMetadata, long j, AndroidFrameInfo androidFrameInfo) {
    }

    /* renamed from: onBufferLost-iiEMlm4$androidx$camera$camera2$compat$EvCompImpl$applyAsync$3, reason: not valid java name */
    private final void m12x1493f1bd(RequestMetadata requestMetadata, long j, int i, int i2) {
    }

    /* renamed from: onBufferLost-iiEMlm4$androidx$camera$camera2$impl$UseCaseCameraState$RequestListener, reason: not valid java name */
    private final void m13xf187eb5a(RequestMetadata requestMetadata, long j, int i, int i2) {
    }
}
