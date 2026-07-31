package org.wikipedia.activitytab;

import kotlin.coroutines.AbstractCoroutineContextElement;
import kotlin.coroutines.CoroutineContext;
import kotlinx.coroutines.CoroutineExceptionHandler;
import kotlinx.coroutines.flow.StateFlowImpl;
import org.wikipedia.util.UiState;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class ActivityTabViewModel$loadImpact$$inlined$CoroutineExceptionHandler$1 extends AbstractCoroutineContextElement implements CoroutineExceptionHandler {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ ActivityTabViewModel this$0;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public ActivityTabViewModel$loadImpact$$inlined$CoroutineExceptionHandler$1(org.wikipedia.activitytab.ActivityTabViewModel r1, int r2) {
        /*
            r0 = this;
            r0.$r8$classId = r2
            switch(r2) {
                case 1: goto L15;
                case 2: goto Ld;
                default: goto L5;
            }
        L5:
            kotlinx.coroutines.Job$Key r2 = kotlinx.coroutines.Job.Key.$$INSTANCE$1
            r0.this$0 = r1
            r0.<init>(r2)
            return
        Ld:
            kotlinx.coroutines.Job$Key r2 = kotlinx.coroutines.Job.Key.$$INSTANCE$1
            r0.this$0 = r1
            r0.<init>(r2)
            return
        L15:
            kotlinx.coroutines.Job$Key r2 = kotlinx.coroutines.Job.Key.$$INSTANCE$1
            r0.this$0 = r1
            r0.<init>(r2)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: org.wikipedia.activitytab.ActivityTabViewModel$loadImpact$$inlined$CoroutineExceptionHandler$1.<init>(org.wikipedia.activitytab.ActivityTabViewModel, int):void");
    }

    @Override // kotlinx.coroutines.CoroutineExceptionHandler
    public final void handleException(Throwable th, CoroutineContext coroutineContext) {
        int i = this.$r8$classId;
        ActivityTabViewModel activityTabViewModel = this.this$0;
        switch (i) {
            case 0:
                StateFlowImpl stateFlowImpl = activityTabViewModel._impactUiState;
                UiState.Error error = new UiState.Error(th);
                stateFlowImpl.getClass();
                stateFlowImpl.updateState(null, error);
                break;
            case 1:
                StateFlowImpl stateFlowImpl2 = activityTabViewModel._readingHistoryState;
                UiState.Error error2 = new UiState.Error(th);
                stateFlowImpl2.getClass();
                stateFlowImpl2.updateState(null, error2);
                break;
            default:
                StateFlowImpl stateFlowImpl3 = activityTabViewModel._wikiGamesUiState;
                UiState.Error error3 = new UiState.Error(th);
                stateFlowImpl3.getClass();
                stateFlowImpl3.updateState(null, error3);
                break;
        }
    }
}
