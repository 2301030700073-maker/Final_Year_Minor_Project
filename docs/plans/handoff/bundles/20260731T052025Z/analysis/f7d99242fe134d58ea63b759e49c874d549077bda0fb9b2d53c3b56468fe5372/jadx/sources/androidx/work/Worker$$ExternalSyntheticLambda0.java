package androidx.work;

import kotlin.jvm.functions.Function0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class Worker$$ExternalSyntheticLambda0 implements Function0 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Worker f$0;

    public /* synthetic */ Worker$$ExternalSyntheticLambda0(Worker worker, int i) {
        this.$r8$classId = i;
        this.f$0 = worker;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        int i = this.$r8$classId;
        Worker worker = this.f$0;
        switch (i) {
            case 0:
                return worker.doWork();
            default:
                return worker.getForegroundInfo();
        }
    }
}
