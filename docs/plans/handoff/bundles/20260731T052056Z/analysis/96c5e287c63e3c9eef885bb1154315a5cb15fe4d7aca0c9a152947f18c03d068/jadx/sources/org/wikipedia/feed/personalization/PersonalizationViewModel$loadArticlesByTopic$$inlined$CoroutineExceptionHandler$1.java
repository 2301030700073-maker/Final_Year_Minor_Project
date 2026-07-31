package org.wikipedia.feed.personalization;

import kotlin.coroutines.AbstractCoroutineContextElement;
import kotlin.coroutines.CoroutineContext;
import kotlinx.coroutines.CoroutineExceptionHandler;
import kotlinx.coroutines.flow.StateFlowImpl;
import org.wikipedia.util.log.L;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class PersonalizationViewModel$loadArticlesByTopic$$inlined$CoroutineExceptionHandler$1 extends AbstractCoroutineContextElement implements CoroutineExceptionHandler {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ PersonalizationViewModel this$0;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public PersonalizationViewModel$loadArticlesByTopic$$inlined$CoroutineExceptionHandler$1(org.wikipedia.feed.personalization.PersonalizationViewModel r1, int r2) {
        /*
            r0 = this;
            r0.$r8$classId = r2
            switch(r2) {
                case 1: goto L35;
                case 2: goto L2d;
                case 3: goto L25;
                case 4: goto L1d;
                case 5: goto L15;
                case 6: goto Ld;
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
        L1d:
            kotlinx.coroutines.Job$Key r2 = kotlinx.coroutines.Job.Key.$$INSTANCE$1
            r0.this$0 = r1
            r0.<init>(r2)
            return
        L25:
            kotlinx.coroutines.Job$Key r2 = kotlinx.coroutines.Job.Key.$$INSTANCE$1
            r0.this$0 = r1
            r0.<init>(r2)
            return
        L2d:
            kotlinx.coroutines.Job$Key r2 = kotlinx.coroutines.Job.Key.$$INSTANCE$1
            r0.this$0 = r1
            r0.<init>(r2)
            return
        L35:
            kotlinx.coroutines.Job$Key r2 = kotlinx.coroutines.Job.Key.$$INSTANCE$1
            r0.this$0 = r1
            r0.<init>(r2)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: org.wikipedia.feed.personalization.PersonalizationViewModel$loadArticlesByTopic$$inlined$CoroutineExceptionHandler$1.<init>(org.wikipedia.feed.personalization.PersonalizationViewModel, int):void");
    }

    @Override // kotlinx.coroutines.CoroutineExceptionHandler
    public final void handleException(Throwable th, CoroutineContext coroutineContext) {
        Object value;
        Object value2;
        Object value3;
        Object value4;
        Object value5;
        Object value6;
        Object value7;
        int i = this.$r8$classId;
        PersonalizationViewModel personalizationViewModel = this.this$0;
        switch (i) {
            case 0:
                StateFlowImpl stateFlowImpl = personalizationViewModel.state;
                do {
                    value = stateFlowImpl.getValue();
                } while (!stateFlowImpl.compareAndSet(value, PersonalizedViewModelState.copy$default((PersonalizedViewModelState) value, null, false, th, null, null, null, null, null, false, null, null, false, null, 32755)));
            case 1:
                StateFlowImpl stateFlowImpl2 = personalizationViewModel.state;
                do {
                    value2 = stateFlowImpl2.getValue();
                } while (!stateFlowImpl2.compareAndSet(value2, PersonalizedViewModelState.copy$default((PersonalizedViewModelState) value2, null, false, th, null, null, null, null, null, false, null, null, false, null, 32759)));
            case 2:
                StateFlowImpl stateFlowImpl3 = personalizationViewModel.state;
                do {
                    value3 = stateFlowImpl3.getValue();
                } while (!stateFlowImpl3.compareAndSet(value3, PersonalizedViewModelState.copy$default((PersonalizedViewModelState) value3, null, false, th, null, null, null, null, null, false, null, null, false, null, 32759)));
            case 3:
                StateFlowImpl stateFlowImpl4 = personalizationViewModel.state;
                do {
                    value4 = stateFlowImpl4.getValue();
                } while (!stateFlowImpl4.compareAndSet(value4, PersonalizedViewModelState.copy$default((PersonalizedViewModelState) value4, null, false, null, null, null, null, null, null, false, th, null, false, null, 29695)));
                L.e(th);
                break;
            case 4:
                StateFlowImpl stateFlowImpl5 = personalizationViewModel.state;
                do {
                    value5 = stateFlowImpl5.getValue();
                } while (!stateFlowImpl5.compareAndSet(value5, PersonalizedViewModelState.copy$default((PersonalizedViewModelState) value5, null, false, th, null, null, null, null, null, false, null, null, false, null, 32755)));
            case 5:
                StateFlowImpl stateFlowImpl6 = personalizationViewModel.state;
                do {
                    value6 = stateFlowImpl6.getValue();
                } while (!stateFlowImpl6.compareAndSet(value6, PersonalizedViewModelState.copy$default((PersonalizedViewModelState) value6, null, false, null, null, null, null, null, null, false, null, null, false, th, 8191)));
                L.e(th);
                break;
            default:
                StateFlowImpl stateFlowImpl7 = personalizationViewModel.state;
                do {
                    value7 = stateFlowImpl7.getValue();
                } while (!stateFlowImpl7.compareAndSet(value7, PersonalizedViewModelState.copy$default((PersonalizedViewModelState) value7, null, false, th, null, null, null, null, null, false, null, null, false, null, 32759)));
        }
    }
}
