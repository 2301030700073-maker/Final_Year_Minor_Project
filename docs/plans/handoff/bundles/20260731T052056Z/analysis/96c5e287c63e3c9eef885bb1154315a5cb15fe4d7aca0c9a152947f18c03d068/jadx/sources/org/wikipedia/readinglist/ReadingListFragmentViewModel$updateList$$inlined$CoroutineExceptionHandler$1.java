package org.wikipedia.readinglist;

import androidx.lifecycle.ViewModelKt;
import kotlin.coroutines.AbstractCoroutineContextElement;
import kotlin.coroutines.CoroutineContext;
import kotlinx.coroutines.AwaitKt;
import kotlinx.coroutines.CoroutineExceptionHandler;
import org.wikipedia.donate.DonateDialog$onCreateView$3;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class ReadingListFragmentViewModel$updateList$$inlined$CoroutineExceptionHandler$1 extends AbstractCoroutineContextElement implements CoroutineExceptionHandler {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ ReadingListFragmentViewModel this$0;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public ReadingListFragmentViewModel$updateList$$inlined$CoroutineExceptionHandler$1(org.wikipedia.readinglist.ReadingListFragmentViewModel r1, int r2) {
        /*
            r0 = this;
            r0.$r8$classId = r2
            switch(r2) {
                case 1: goto L25;
                case 2: goto L1d;
                case 3: goto L15;
                case 4: goto Ld;
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
        */
        throw new UnsupportedOperationException("Method not decompiled: org.wikipedia.readinglist.ReadingListFragmentViewModel$updateList$$inlined$CoroutineExceptionHandler$1.<init>(org.wikipedia.readinglist.ReadingListFragmentViewModel, int):void");
    }

    @Override // kotlinx.coroutines.CoroutineExceptionHandler
    public final void handleException(Throwable th, CoroutineContext coroutineContext) {
        int i = this.$r8$classId;
        ReadingListFragmentViewModel readingListFragmentViewModel = this.this$0;
        switch (i) {
            case 0:
                AwaitKt.launch$default(ViewModelKt.getViewModelScope(readingListFragmentViewModel), null, null, new ReadingListFragmentViewModel$updateList$1$1(readingListFragmentViewModel, th, null, 0), 3);
                break;
            case 1:
                AwaitKt.launch$default(ViewModelKt.getViewModelScope(readingListFragmentViewModel), null, null, new ReadingListFragmentViewModel$updateList$1$1(readingListFragmentViewModel, th, null, 1), 3);
                break;
            case 2:
                AwaitKt.launch$default(ViewModelKt.getViewModelScope(readingListFragmentViewModel), null, null, new DonateDialog$onCreateView$3.AnonymousClass1(readingListFragmentViewModel, th, null, 22), 3);
                break;
            case 3:
                AwaitKt.launch$default(ViewModelKt.getViewModelScope(readingListFragmentViewModel), null, null, new ReadingListFragmentViewModel$updateList$1$1(readingListFragmentViewModel, th, null, 2), 3);
                break;
            default:
                AwaitKt.launch$default(ViewModelKt.getViewModelScope(readingListFragmentViewModel), null, null, new ReadingListFragmentViewModel$updateList$1$1(readingListFragmentViewModel, th, null, 3), 3);
                break;
        }
    }
}
