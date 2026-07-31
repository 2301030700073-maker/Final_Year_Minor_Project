package org.wikipedia.suggestededits;

import kotlin.coroutines.AbstractCoroutineContextElement;
import kotlin.coroutines.CoroutineContext;
import kotlinx.coroutines.CoroutineExceptionHandler;
import org.wikipedia.dataclient.Service;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class SuggestedEditsImageTagsViewModel$publishImageTags$$inlined$CoroutineExceptionHandler$1 extends AbstractCoroutineContextElement implements CoroutineExceptionHandler {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ SuggestedEditsImageTagsViewModel this$0;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public SuggestedEditsImageTagsViewModel$publishImageTags$$inlined$CoroutineExceptionHandler$1(org.wikipedia.suggestededits.SuggestedEditsImageTagsViewModel r1, int r2) {
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
        throw new UnsupportedOperationException("Method not decompiled: org.wikipedia.suggestededits.SuggestedEditsImageTagsViewModel$publishImageTags$$inlined$CoroutineExceptionHandler$1.<init>(org.wikipedia.suggestededits.SuggestedEditsImageTagsViewModel, int):void");
    }

    @Override // kotlinx.coroutines.CoroutineExceptionHandler
    public final void handleException(Throwable th, CoroutineContext coroutineContext) {
        int i = this.$r8$classId;
        SuggestedEditsImageTagsViewModel suggestedEditsImageTagsViewModel = this.this$0;
        switch (i) {
            case 0:
                Service.CC.m(th, suggestedEditsImageTagsViewModel._actionState, null);
                break;
            default:
                Service.CC.m(th, suggestedEditsImageTagsViewModel._uiState, null);
                break;
        }
    }
}
