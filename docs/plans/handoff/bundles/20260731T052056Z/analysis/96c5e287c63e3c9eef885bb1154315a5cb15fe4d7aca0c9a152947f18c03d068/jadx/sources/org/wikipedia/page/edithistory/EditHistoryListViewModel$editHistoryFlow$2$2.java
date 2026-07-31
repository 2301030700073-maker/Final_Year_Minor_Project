package org.wikipedia.page.edithistory;

import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import org.wikipedia.dataclient.mwapi.MwQueryPage;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class EditHistoryListViewModel$editHistoryFlow$2$2 extends SuspendLambda implements Function2 {
    public final /* synthetic */ boolean $anonEditsOnly;
    public final /* synthetic */ boolean $userEditsOnly;
    public /* synthetic */ Object L$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public EditHistoryListViewModel$editHistoryFlow$2$2(boolean z, boolean z2, Continuation continuation) {
        super(2, continuation);
        this.$anonEditsOnly = z;
        this.$userEditsOnly = z2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        EditHistoryListViewModel$editHistoryFlow$2$2 editHistoryListViewModel$editHistoryFlow$2$2 = new EditHistoryListViewModel$editHistoryFlow$2$2(this.$anonEditsOnly, this.$userEditsOnly, continuation);
        editHistoryListViewModel$editHistoryFlow$2$2.L$0 = obj;
        return editHistoryListViewModel$editHistoryFlow$2$2;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((EditHistoryListViewModel$editHistoryFlow$2$2) create((MwQueryPage.Revision) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        MwQueryPage.Revision revision = (MwQueryPage.Revision) this.L$0;
        ResultKt.throwOnFailure(obj);
        boolean z = false;
        if (!this.$anonEditsOnly ? !this.$userEditsOnly || (!revision.isAnon && !revision.isTemp) : revision.isAnon || revision.isTemp) {
            z = true;
        }
        return Boolean.valueOf(z);
    }
}
