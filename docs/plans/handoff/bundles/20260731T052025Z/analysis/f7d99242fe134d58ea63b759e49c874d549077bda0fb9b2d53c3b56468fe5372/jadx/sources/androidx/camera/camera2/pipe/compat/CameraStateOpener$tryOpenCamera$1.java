package androidx.camera.camera2.pipe.compat;

import com.fsck.k9.mailstore.LockableDatabase;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class CameraStateOpener$tryOpenCamera$1 extends ContinuationImpl {
    public int I$0;
    public long J$0;
    public String L$0;
    public Camera2DeviceCloserImpl L$1;
    public AudioRestrictionControllerImpl L$2;
    public int label;
    public /* synthetic */ Object result;
    public final /* synthetic */ LockableDatabase this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CameraStateOpener$tryOpenCamera$1(LockableDatabase lockableDatabase, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.this$0 = lockableDatabase;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.m938tryOpenCamera7pD7j80$camera_camera2_pipe(null, 0, 0L, null, null, this);
    }
}
