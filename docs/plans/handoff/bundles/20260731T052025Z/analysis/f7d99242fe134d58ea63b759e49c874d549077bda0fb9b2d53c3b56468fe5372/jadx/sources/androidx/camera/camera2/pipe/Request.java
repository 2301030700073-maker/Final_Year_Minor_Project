package androidx.camera.camera2.pipe;

import androidx.camera.camera2.pipe.compat.AndroidFrameInfo;
import androidx.camera.camera2.pipe.compat.AndroidFrameMetadata;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.collections.EmptyList;
import kotlin.collections.EmptyMap;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class Request {
    public final Map extras;
    public final List listeners;
    public final Map parameters;
    public final List streams;
    public final RequestTemplate template;

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public interface Listener {
        void onAborted(Request request);

        /* renamed from: onBufferLost-DlC0U5Y */
        void mo3onBufferLostDlC0U5Y(RequestMetadata requestMetadata);

        /* renamed from: onBufferLost-iiEMlm4 */
        void mo4onBufferLostiiEMlm4(RequestMetadata requestMetadata, long j, int i, int i2);

        void onCaptureProgress(RequestMetadata requestMetadata, int i);

        /* renamed from: onComplete-CcXjc1I */
        void mo5onCompleteCcXjc1I(RequestMetadata requestMetadata, long j, AndroidFrameInfo androidFrameInfo);

        /* renamed from: onFailed-CcXjc1I */
        void mo6onFailedCcXjc1I(RequestMetadata requestMetadata, long j, RequestFailure requestFailure);

        /* renamed from: onPartialCaptureResult-CcXjc1I */
        void mo7onPartialCaptureResultCcXjc1I(RequestMetadata requestMetadata, long j, AndroidFrameMetadata androidFrameMetadata);

        /* renamed from: onReadoutStarted-mP9r-9w */
        void mo8onReadoutStartedmP9r9w(RequestMetadata requestMetadata, long j, long j2);

        void onRequestSequenceAborted(RequestMetadata requestMetadata);

        /* renamed from: onRequestSequenceCompleted-RuT0dZU */
        void mo9onRequestSequenceCompletedRuT0dZU(RequestMetadata requestMetadata, long j);

        void onRequestSequenceCreated(RequestMetadata requestMetadata);

        void onRequestSequenceSubmitted(RequestMetadata requestMetadata);

        /* renamed from: onStarted-uGKBvU4 */
        void mo10onStarteduGKBvU4(RequestMetadata requestMetadata, long j, long j2);

        /* renamed from: onTotalCaptureResult-CcXjc1I */
        void mo11onTotalCaptureResultCcXjc1I(RequestMetadata requestMetadata, long j, AndroidFrameInfo androidFrameInfo);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v0, types: [kotlin.collections.EmptyMap] */
    public Request(List list, LinkedHashMap linkedHashMap, LinkedHashMap linkedHashMap2, ArrayList arrayList, RequestTemplate requestTemplate, int i) {
        int i2 = i & 2;
        ?? r1 = EmptyMap.INSTANCE;
        linkedHashMap = i2 != 0 ? r1 : linkedHashMap;
        linkedHashMap2 = (i & 4) != 0 ? r1 : linkedHashMap2;
        List list2 = (i & 8) != 0 ? EmptyList.INSTANCE : arrayList;
        requestTemplate = (i & 16) != 0 ? null : requestTemplate;
        linkedHashMap.getClass();
        linkedHashMap2.getClass();
        list2.getClass();
        this.streams = list;
        this.parameters = linkedHashMap;
        this.extras = linkedHashMap2;
        this.listeners = list2;
        this.template = requestTemplate;
    }

    public final String toString() {
        String str;
        RequestTemplate requestTemplate = this.template;
        if (requestTemplate == null) {
            str = "";
        } else {
            str = ", template=" + ((Object) RequestTemplate.m43toStringimpl(requestTemplate.value));
        }
        return "Request(streams=" + this.streams + str + ")@" + Integer.toHexString(hashCode());
    }
}
