package coil3.memory;

import androidx.camera.camera2.pipe.CameraDevices$CC;
import coil3.memory.MemoryCache;
import kotlin.jvm.functions.Function0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class MemoryCache$Builder$$ExternalSyntheticLambda1 implements Function0 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ long f$0;

    public /* synthetic */ MemoryCache$Builder$$ExternalSyntheticLambda1(int i, long j) {
        this.$r8$classId = i;
        this.f$0 = j;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        long maxSizeBytes$lambda$0$0;
        int i = this.$r8$classId;
        long j = this.f$0;
        switch (i) {
            case 0:
                maxSizeBytes$lambda$0$0 = MemoryCache.Builder.maxSizeBytes$lambda$0$0(j);
                return Long.valueOf(maxSizeBytes$lambda$0$0);
            case 1:
                return "  sync interval: " + j + " minutes\"";
            case 2:
                return CameraDevices$CC.m(j, "last sync time: ");
            case 3:
                return "  initial delay: " + j + " ms";
            default:
                return "Created Outbox folder with id = " + j + ".";
        }
    }
}
