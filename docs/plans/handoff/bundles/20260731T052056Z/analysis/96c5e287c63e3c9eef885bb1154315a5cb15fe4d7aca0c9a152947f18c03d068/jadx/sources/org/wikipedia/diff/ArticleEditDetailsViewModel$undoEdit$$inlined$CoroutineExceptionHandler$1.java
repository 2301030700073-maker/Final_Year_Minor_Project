package org.wikipedia.diff;

import kotlin.coroutines.AbstractCoroutineContextElement;
import kotlin.coroutines.CoroutineContext;
import kotlinx.coroutines.CoroutineExceptionHandler;
import org.wikipedia.util.Resource;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class ArticleEditDetailsViewModel$undoEdit$$inlined$CoroutineExceptionHandler$1 extends AbstractCoroutineContextElement implements CoroutineExceptionHandler {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ ArticleEditDetailsViewModel this$0;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public ArticleEditDetailsViewModel$undoEdit$$inlined$CoroutineExceptionHandler$1(org.wikipedia.diff.ArticleEditDetailsViewModel r1, int r2) {
        /*
            r0 = this;
            r0.$r8$classId = r2
            switch(r2) {
                case 1: goto L3d;
                case 2: goto L35;
                case 3: goto L2d;
                case 4: goto L25;
                case 5: goto L1d;
                case 6: goto L15;
                case 7: goto Ld;
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
        L3d:
            kotlinx.coroutines.Job$Key r2 = kotlinx.coroutines.Job.Key.$$INSTANCE$1
            r0.this$0 = r1
            r0.<init>(r2)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: org.wikipedia.diff.ArticleEditDetailsViewModel$undoEdit$$inlined$CoroutineExceptionHandler$1.<init>(org.wikipedia.diff.ArticleEditDetailsViewModel, int):void");
    }

    @Override // kotlinx.coroutines.CoroutineExceptionHandler
    public final void handleException(Throwable th, CoroutineContext coroutineContext) {
        int i = this.$r8$classId;
        ArticleEditDetailsViewModel articleEditDetailsViewModel = this.this$0;
        switch (i) {
            case 0:
                articleEditDetailsViewModel.undoEditResponse.postValue(new Resource.Error(th));
                break;
            case 1:
                articleEditDetailsViewModel.diffText.postValue(new Resource.Error(th));
                break;
            case 2:
                articleEditDetailsViewModel.revisionDetails.postValue(new Resource.Error(th));
                break;
            case 3:
                articleEditDetailsViewModel.revisionDetails.postValue(new Resource.Error(th));
                break;
            case 4:
                articleEditDetailsViewModel.revisionDetails.postValue(new Resource.Error(th));
                break;
            case 5:
                articleEditDetailsViewModel.rollbackResponse.postValue(new Resource.Error(th));
                break;
            case 6:
                articleEditDetailsViewModel.thankStatus.postValue(new Resource.Error(th));
                break;
            default:
                articleEditDetailsViewModel.watchResponse.postValue(new Resource.Error(th));
                break;
        }
    }
}
