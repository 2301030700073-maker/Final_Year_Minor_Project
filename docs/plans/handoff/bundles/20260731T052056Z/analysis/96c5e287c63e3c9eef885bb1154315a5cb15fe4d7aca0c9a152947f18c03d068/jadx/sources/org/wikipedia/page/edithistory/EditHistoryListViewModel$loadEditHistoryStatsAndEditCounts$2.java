package org.wikipedia.page.edithistory;

import androidx.lifecycle.MutableLiveData;
import java.util.List;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Deferred;
import kotlinx.coroutines.DeferredCoroutine;
import org.wikipedia.dataclient.mwapi.MwQueryPage;
import org.wikipedia.dataclient.restbase.EditCount;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class EditHistoryListViewModel$loadEditHistoryStatsAndEditCounts$2 extends SuspendLambda implements Function2 {
    public /* synthetic */ Object L$0;
    public MutableLiveData L$11;
    public MwQueryPage.Revision L$12;
    public List L$13;
    public EditCount L$14;
    public EditCount L$15;
    public EditCount L$16;
    public Deferred L$5;
    public Deferred L$6;
    public Deferred L$7;
    public Deferred L$8;
    public DeferredCoroutine L$9;
    public int label;
    public final /* synthetic */ EditHistoryListViewModel this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public EditHistoryListViewModel$loadEditHistoryStatsAndEditCounts$2(EditHistoryListViewModel editHistoryListViewModel, Continuation continuation) {
        super(2, continuation);
        this.this$0 = editHistoryListViewModel;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        EditHistoryListViewModel$loadEditHistoryStatsAndEditCounts$2 editHistoryListViewModel$loadEditHistoryStatsAndEditCounts$2 = new EditHistoryListViewModel$loadEditHistoryStatsAndEditCounts$2(this.this$0, continuation);
        editHistoryListViewModel$loadEditHistoryStatsAndEditCounts$2.L$0 = obj;
        return editHistoryListViewModel$loadEditHistoryStatsAndEditCounts$2;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((EditHistoryListViewModel$loadEditHistoryStatsAndEditCounts$2) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0202  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x01d6  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x01af  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0189  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x0128  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x015e  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x012b  */
    /* JADX WARN: Type inference failed for: r9v3, types: [kotlinx.coroutines.Deferred] */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r20) {
        /*
            Method dump skipped, instructions count: 556
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.wikipedia.page.edithistory.EditHistoryListViewModel$loadEditHistoryStatsAndEditCounts$2.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
