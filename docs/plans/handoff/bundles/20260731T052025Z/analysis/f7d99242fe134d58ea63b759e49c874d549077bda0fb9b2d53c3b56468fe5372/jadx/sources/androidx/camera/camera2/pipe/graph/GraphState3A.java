package androidx.camera.camera2.pipe.graph;

import android.hardware.camera2.CaptureRequest;
import android.hardware.camera2.params.MeteringRectangle;
import androidx.camera.camera2.pipe.AeMode;
import androidx.camera.camera2.pipe.AfMode;
import androidx.camera.camera2.pipe.AwbMode;
import androidx.camera.camera2.pipe.FlashMode;
import java.util.LinkedHashMap;
import java.util.List;
import kotlinx.atomicfu.AtomicFU;
import kotlinx.atomicfu.AtomicRef;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class GraphState3A {
    public final AtomicRef _state = AtomicFU.atomic(new State3A(null, null, null, null, null, null, null, null, null, null));

    /* JADX WARN: Code restructure failed: missing block: B:53:0x009a, code lost:
    
        if (r0 == null) goto L73;
     */
    /* JADX WARN: Removed duplicated region for block: B:50:0x0091  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x00a0  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x00b9  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x00c1  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x00c9  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x00ed A[LOOP:0: B:33:0x0057->B:70:0x00ed, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:71:0x00ec A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:74:0x00cc  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x00c4  */
    /* JADX WARN: Removed duplicated region for block: B:76:0x00bc  */
    /* renamed from: update-7jOEVJU$default, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void m80update7jOEVJU$default(androidx.camera.camera2.pipe.graph.GraphState3A r18, androidx.camera.camera2.pipe.AeMode r19, androidx.camera.camera2.pipe.AfMode r20, androidx.camera.camera2.pipe.AwbMode r21, androidx.camera.camera2.pipe.FlashMode r22, java.util.List r23, java.util.List r24, java.util.List r25, java.lang.Boolean r26, java.lang.Boolean r27, java.lang.Boolean r28, int r29) {
        /*
            Method dump skipped, instructions count: 241
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.camera.camera2.pipe.graph.GraphState3A.m80update7jOEVJU$default(androidx.camera.camera2.pipe.graph.GraphState3A, androidx.camera.camera2.pipe.AeMode, androidx.camera.camera2.pipe.AfMode, androidx.camera.camera2.pipe.AwbMode, androidx.camera.camera2.pipe.FlashMode, java.util.List, java.util.List, java.util.List, java.lang.Boolean, java.lang.Boolean, java.lang.Boolean, int):void");
    }

    public final LinkedHashMap toCaptureRequestParametersMap() {
        State3A state3A = (State3A) this._state.value;
        state3A.getClass();
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        AeMode aeMode = state3A.aeMode;
        if (aeMode != null) {
            int i = aeMode.value;
            CaptureRequest.Key key = CaptureRequest.CONTROL_AE_MODE;
            key.getClass();
            linkedHashMap.put(key, Integer.valueOf(i));
        }
        AfMode afMode = state3A.afMode;
        if (afMode != null) {
            int i2 = afMode.value;
            CaptureRequest.Key key2 = CaptureRequest.CONTROL_AF_MODE;
            key2.getClass();
            linkedHashMap.put(key2, Integer.valueOf(i2));
        }
        AwbMode awbMode = state3A.awbMode;
        if (awbMode != null) {
            int i3 = awbMode.value;
            CaptureRequest.Key key3 = CaptureRequest.CONTROL_AWB_MODE;
            key3.getClass();
            linkedHashMap.put(key3, Integer.valueOf(i3));
        }
        FlashMode flashMode = state3A.flashMode;
        if (flashMode != null) {
            int i4 = flashMode.value;
            CaptureRequest.Key key4 = CaptureRequest.FLASH_MODE;
            key4.getClass();
            linkedHashMap.put(key4, Integer.valueOf(i4));
        }
        List list = state3A.aeRegions;
        if (list != null) {
            CaptureRequest.Key key5 = CaptureRequest.CONTROL_AE_REGIONS;
            key5.getClass();
            linkedHashMap.put(key5, list.toArray(new MeteringRectangle[0]));
        }
        List list2 = state3A.afRegions;
        if (list2 != null) {
            CaptureRequest.Key key6 = CaptureRequest.CONTROL_AF_REGIONS;
            key6.getClass();
            linkedHashMap.put(key6, list2.toArray(new MeteringRectangle[0]));
        }
        List list3 = state3A.awbRegions;
        if (list3 != null) {
            CaptureRequest.Key key7 = CaptureRequest.CONTROL_AWB_REGIONS;
            key7.getClass();
            linkedHashMap.put(key7, list3.toArray(new MeteringRectangle[0]));
        }
        Boolean bool = state3A.aeLock;
        if (bool != null) {
            CaptureRequest.Key key8 = CaptureRequest.CONTROL_AE_LOCK;
            key8.getClass();
            linkedHashMap.put(key8, bool);
        }
        Boolean bool2 = state3A.awbLock;
        if (bool2 != null) {
            CaptureRequest.Key key9 = CaptureRequest.CONTROL_AWB_LOCK;
            key9.getClass();
            linkedHashMap.put(key9, bool2);
        }
        return linkedHashMap;
    }
}
