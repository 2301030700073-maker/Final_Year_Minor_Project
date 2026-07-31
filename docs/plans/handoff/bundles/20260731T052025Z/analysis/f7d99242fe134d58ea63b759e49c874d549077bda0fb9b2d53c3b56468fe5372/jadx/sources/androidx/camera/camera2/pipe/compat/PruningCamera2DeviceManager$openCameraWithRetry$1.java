package androidx.camera.camera2.pipe.compat;

import java.util.List;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlinx.coroutines.CoroutineScope;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class PruningCamera2DeviceManager$openCameraWithRetry$1 extends ContinuationImpl {
    public String L$0;
    public List L$1;
    public CoroutineScope L$2;
    public int label;
    public /* synthetic */ Object result;
    public final /* synthetic */ PruningCamera2DeviceManager this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PruningCamera2DeviceManager$openCameraWithRetry$1(PruningCamera2DeviceManager pruningCamera2DeviceManager, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.this$0 = pruningCamera2DeviceManager;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.m70openCameraWithRetryzDSwpeU(null, null, null, null, this);
    }
}
