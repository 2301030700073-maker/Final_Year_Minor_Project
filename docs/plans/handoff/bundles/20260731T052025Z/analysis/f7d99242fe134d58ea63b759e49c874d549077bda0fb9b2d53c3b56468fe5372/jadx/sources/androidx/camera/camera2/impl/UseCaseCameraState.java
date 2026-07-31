package androidx.camera.camera2.impl;

import android.hardware.camera2.CaptureRequest;
import android.util.Log;
import androidx.camera.camera2.compat.EvCompImpl$applyAsync$3;
import androidx.camera.camera2.compat.workaround.TemplateParamsOverride;
import androidx.camera.camera2.config.UseCaseGraphContext;
import androidx.camera.camera2.pipe.AeMode;
import androidx.camera.camera2.pipe.AfMode;
import androidx.camera.camera2.pipe.AwbMode;
import androidx.camera.camera2.pipe.CameraDevices$CC;
import androidx.camera.camera2.pipe.RequestTemplate;
import androidx.camera.camera2.pipe.graph.CameraGraphSessionImpl;
import androidx.compose.ui.unit.IntOffsetKt;
import androidx.datastore.preferences.protobuf.Utf8;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import kotlin.collections.ArrayDeque;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.atomicfu.AtomicFU;
import kotlinx.atomicfu.AtomicInt;
import kotlinx.coroutines.CompletableDeferredImpl;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class UseCaseCameraState {
    public final LinkedHashMap currentInternalParameters;
    public final LinkedHashSet currentListeners;
    public final LinkedHashMap currentParameters;
    public final LinkedHashSet currentStreams;
    public RequestTemplate currentTemplate;
    public AeMode lastAeMode;
    public AfMode lastAfMode;
    public AwbMode lastAwbMode;
    public final Object lock;
    public final AtomicInt pendingSignalCount;
    public final EvCompImpl$applyAsync$3 requestListener;
    public final AtomicInt submittedRequestCounter;
    public final TemplateParamsOverride templateParamsOverride;
    public CompletableDeferredImpl updateSignal;
    public final ArrayDeque updateSignals;
    public boolean updating;
    public final UseCaseGraphContext useCaseGraphContext;

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class RequestSignal {
        public final int requestNo;
        public final CompletableDeferredImpl signal;

        public RequestSignal(int i, CompletableDeferredImpl completableDeferredImpl) {
            completableDeferredImpl.getClass();
            this.requestNo = i;
            this.signal = completableDeferredImpl;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof RequestSignal)) {
                return false;
            }
            RequestSignal requestSignal = (RequestSignal) obj;
            return this.requestNo == requestSignal.requestNo && Intrinsics.areEqual(this.signal, requestSignal.signal);
        }

        public final int hashCode() {
            return this.signal.hashCode() + (this.requestNo * 31);
        }

        public final String toString() {
            return "RequestSignal(requestNo=" + this.requestNo + ", signal=" + this.signal + ')';
        }
    }

    public UseCaseCameraState(UseCaseGraphContext useCaseGraphContext, TemplateParamsOverride templateParamsOverride) {
        useCaseGraphContext.getClass();
        this.useCaseGraphContext = useCaseGraphContext;
        this.templateParamsOverride = templateParamsOverride;
        this.lock = new Object();
        this.submittedRequestCounter = AtomicFU.atomic(0);
        this.updateSignals = new ArrayDeque();
        this.currentParameters = new LinkedHashMap();
        this.currentInternalParameters = new LinkedHashMap();
        this.currentStreams = new LinkedHashSet();
        this.currentListeners = new LinkedHashSet();
        this.requestListener = new EvCompImpl$applyAsync$3(1, this);
        this.pendingSignalCount = AtomicFU.atomic(0);
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x005d A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0176  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x014a  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x0160 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:83:0x003a  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0029  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object submitLatest(kotlin.coroutines.jvm.internal.ContinuationImpl r17) {
        /*
            Method dump skipped, instructions count: 384
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.camera.camera2.impl.UseCaseCameraState.submitLatest(kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void update3A(CameraGraphSessionImpl cameraGraphSessionImpl, Map map) {
        AeMode aeMode;
        AfMode afMode;
        Object obj;
        CaptureRequest.Key key = CaptureRequest.CONTROL_AE_MODE;
        key.getClass();
        AwbMode awbMode = null;
        Object obj2 = map != null ? map.get(key) : null;
        Integer num = obj2 instanceof Integer ? (Integer) obj2 : null;
        if (num != null) {
            int intValue = num.intValue();
            List list = AeMode.values;
            aeMode = IntOffsetKt.m758fromIntOrNullkQd0u18(intValue);
        } else {
            aeMode = null;
        }
        CaptureRequest.Key key2 = CaptureRequest.CONTROL_AF_MODE;
        key2.getClass();
        Object obj3 = map != null ? map.get(key2) : null;
        Integer num2 = obj3 instanceof Integer ? (Integer) obj3 : null;
        if (num2 != null) {
            int intValue2 = num2.intValue();
            Iterator it = AfMode.values.iterator();
            while (true) {
                if (!it.hasNext()) {
                    obj = null;
                    break;
                } else {
                    obj = it.next();
                    if (((AfMode) obj).value == intValue2) {
                        break;
                    }
                }
            }
            afMode = (AfMode) obj;
        } else {
            afMode = null;
        }
        CaptureRequest.Key key3 = CaptureRequest.CONTROL_AWB_MODE;
        key3.getClass();
        Object obj4 = map != null ? map.get(key3) : null;
        Integer num3 = obj4 instanceof Integer ? (Integer) obj4 : null;
        if (num3 != null) {
            int intValue3 = num3.intValue();
            Iterator it2 = AwbMode.values.iterator();
            while (true) {
                if (!it2.hasNext()) {
                    break;
                }
                Object next = it2.next();
                if (((AwbMode) next).value == intValue3) {
                    awbMode = next;
                    break;
                }
            }
            awbMode = awbMode;
        }
        AwbMode awbMode2 = awbMode;
        boolean z = false;
        boolean z2 = (aeMode == null || aeMode.equals(this.lastAeMode)) ? false : true;
        boolean z3 = (afMode == null || afMode.equals(this.lastAfMode)) ? false : true;
        if (awbMode2 != null && !awbMode2.equals(this.lastAwbMode)) {
            z = true;
        }
        if (z2 || z3 || z) {
            if (Utf8.SafeProcessor.isDebugEnabled("CXCP")) {
                Log.d("CXCP", "UseCaseCameraState: Updating 3A modes: AE(" + aeMode + ", changed=" + z2 + "), AF(" + afMode + ", changed=" + z3 + "), AWB(" + awbMode2 + ", changed=" + z + ')');
            }
            CameraDevices$CC.m29update3AydBZfZg$default(cameraGraphSessionImpl, aeMode, afMode, awbMode2, null, null, null, 56);
            if (aeMode != null) {
                this.lastAeMode = aeMode;
            }
            if (afMode != null) {
                this.lastAfMode = afMode;
            }
            if (awbMode2 != null) {
                this.lastAwbMode = awbMode2;
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0033  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0023  */
    /* renamed from: updateAsync-Tp9XwKQ, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m24updateAsyncTp9XwKQ(java.util.LinkedHashMap r8, java.util.Map r9, java.util.Set r10, androidx.camera.camera2.pipe.RequestTemplate r11, java.util.Set r12, kotlin.coroutines.jvm.internal.ContinuationImpl r13) {
        /*
            Method dump skipped, instructions count: 219
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.camera.camera2.impl.UseCaseCameraState.m24updateAsyncTp9XwKQ(java.util.LinkedHashMap, java.util.Map, java.util.Set, androidx.camera.camera2.pipe.RequestTemplate, java.util.Set, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }
}
