package androidx.work.impl;

import androidx.work.impl.model.WorkGenerationalId;
import java.util.Iterator;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final /* synthetic */ class Processor$$ExternalSyntheticLambda2 implements Runnable {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;
    public final /* synthetic */ Object f$1;

    public /* synthetic */ Processor$$ExternalSyntheticLambda2(Object obj, Object obj2, int i) {
        this.$r8$classId = i;
        this.f$0 = obj;
        this.f$1 = obj2;
    }

    private final void run$androidx$work$impl$Processor$$ExternalSyntheticLambda2() {
        Processor processor = (Processor) this.f$0;
        WorkGenerationalId workGenerationalId = (WorkGenerationalId) this.f$1;
        synchronized (processor.mLock) {
            try {
                Iterator it = processor.mOuterListeners.iterator();
                while (it.hasNext()) {
                    ((ExecutionListener) it.next()).onExecuted(workGenerationalId, false);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:43:0x0115  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x0123 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:50:0x0116 A[Catch: all -> 0x00fd, TryCatch #5 {all -> 0x00fd, blocks: (B:17:0x00a7, B:18:0x00b5, B:20:0x00ca, B:23:0x00d2, B:26:0x00db, B:28:0x00eb, B:30:0x00f3, B:31:0x00ff, B:35:0x0101, B:37:0x0105, B:41:0x0111, B:47:0x0125, B:48:0x0128, B:50:0x0116, B:58:0x012a, B:59:0x0131, B:62:0x0133, B:63:0x0138, B:65:0x0139), top: B:16:0x00a7, inners: #2 }] */
    @Override // java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void run() {
        /*
            Method dump skipped, instructions count: 926
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.work.impl.Processor$$ExternalSyntheticLambda2.run():void");
    }
}
