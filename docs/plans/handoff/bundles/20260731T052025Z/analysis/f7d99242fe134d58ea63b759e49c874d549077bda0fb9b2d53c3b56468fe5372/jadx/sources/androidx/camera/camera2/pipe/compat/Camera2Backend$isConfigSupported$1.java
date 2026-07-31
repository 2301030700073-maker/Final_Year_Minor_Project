package androidx.camera.camera2.pipe.compat;

import androidx.camera.camera2.pipe.CameraGraph$Config;
import androidx.camera.featurecombinationquery.CameraDeviceSetupCompat;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class Camera2Backend$isConfigSupported$1 extends ContinuationImpl {
    public CameraGraph$Config L$0;
    public CameraDeviceSetupCompat L$1;
    public Object L$2;
    public int label;
    public /* synthetic */ Object result;
    public final /* synthetic */ Camera2Backend this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Camera2Backend$isConfigSupported$1(Camera2Backend camera2Backend, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.this$0 = camera2Backend;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.m53isConfigSupportedNpXggIU(null, this);
    }
}
