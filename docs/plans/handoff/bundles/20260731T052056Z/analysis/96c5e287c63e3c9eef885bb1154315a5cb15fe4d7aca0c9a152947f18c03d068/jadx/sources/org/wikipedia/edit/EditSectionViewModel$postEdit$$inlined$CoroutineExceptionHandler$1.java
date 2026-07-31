package org.wikipedia.edit;

import kotlin.coroutines.AbstractCoroutineContextElement;
import kotlin.coroutines.CoroutineContext;
import kotlinx.coroutines.CoroutineExceptionHandler;
import org.wikipedia.dataclient.Service;
import org.wikipedia.util.log.L;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class EditSectionViewModel$postEdit$$inlined$CoroutineExceptionHandler$1 extends AbstractCoroutineContextElement implements CoroutineExceptionHandler {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ EditSectionViewModel this$0;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public EditSectionViewModel$postEdit$$inlined$CoroutineExceptionHandler$1(org.wikipedia.edit.EditSectionViewModel r1, int r2) {
        /*
            r0 = this;
            r0.$r8$classId = r2
            switch(r2) {
                case 1: goto Ld;
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
        */
        throw new UnsupportedOperationException("Method not decompiled: org.wikipedia.edit.EditSectionViewModel$postEdit$$inlined$CoroutineExceptionHandler$1.<init>(org.wikipedia.edit.EditSectionViewModel, int):void");
    }

    @Override // kotlinx.coroutines.CoroutineExceptionHandler
    public final void handleException(Throwable th, CoroutineContext coroutineContext) {
        int i = this.$r8$classId;
        EditSectionViewModel editSectionViewModel = this.this$0;
        switch (i) {
            case 0:
                L.e(th);
                Service.CC.m(th, editSectionViewModel._postEditState, null);
                break;
            default:
                Service.CC.m(th, editSectionViewModel._fetchSectionTextState, null);
                break;
        }
    }
}
