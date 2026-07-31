package kotlin.sequences;

import androidx.camera.camera2.pipe.CameraDevices$CC;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Reflection;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class SequencesKt__SequencesKt$$ExternalSyntheticLambda0 implements Function0 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;

    public /* synthetic */ SequencesKt__SequencesKt$$ExternalSyntheticLambda0(int i, Object obj) {
        this.$r8$classId = i;
        this.f$0 = obj;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        int i = this.$r8$classId;
        Object obj = this.f$0;
        switch (i) {
            case 0:
                return obj;
            case 1:
                return "Processing event: " + obj;
            case 2:
                return "StateMachine initialized with initial state: " + obj;
            default:
                return CameraDevices$CC.m("event(", Reflection.getOrCreateKotlinClass(obj.getClass()).getSimpleName(), "): state update.");
        }
    }
}
