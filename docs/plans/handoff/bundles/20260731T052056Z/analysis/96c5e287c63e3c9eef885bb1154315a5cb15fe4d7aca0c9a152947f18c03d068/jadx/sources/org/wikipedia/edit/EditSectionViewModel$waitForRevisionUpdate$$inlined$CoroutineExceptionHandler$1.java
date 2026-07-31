package org.wikipedia.edit;

import kotlin.coroutines.AbstractCoroutineContextElement;
import kotlin.coroutines.CoroutineContext;
import kotlinx.coroutines.CoroutineExceptionHandler;
import kotlinx.coroutines.flow.StateFlowImpl;
import org.wikipedia.util.Resource;
import org.wikipedia.util.log.L;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class EditSectionViewModel$waitForRevisionUpdate$$inlined$CoroutineExceptionHandler$1 extends AbstractCoroutineContextElement implements CoroutineExceptionHandler {
    public final /* synthetic */ long $newRevision$inlined;
    public final /* synthetic */ EditSectionViewModel this$0;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public EditSectionViewModel$waitForRevisionUpdate$$inlined$CoroutineExceptionHandler$1(org.wikipedia.edit.EditSectionViewModel r2, long r3) {
        /*
            r1 = this;
            kotlinx.coroutines.Job$Key r0 = kotlinx.coroutines.Job.Key.$$INSTANCE$1
            r1.this$0 = r2
            r1.$newRevision$inlined = r3
            r1.<init>(r0)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: org.wikipedia.edit.EditSectionViewModel$waitForRevisionUpdate$$inlined$CoroutineExceptionHandler$1.<init>(org.wikipedia.edit.EditSectionViewModel, long):void");
    }

    @Override // kotlinx.coroutines.CoroutineExceptionHandler
    public final void handleException(Throwable th, CoroutineContext coroutineContext) {
        L.e(th);
        StateFlowImpl stateFlowImpl = this.this$0._waitForRevisionState;
        Resource.Success success = new Resource.Success(Long.valueOf(this.$newRevision$inlined));
        stateFlowImpl.getClass();
        stateFlowImpl.updateState(null, success);
    }
}
