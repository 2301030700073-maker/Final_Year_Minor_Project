package net.thunderbird.feature.mail.message.list.internal.domain.usecase;

import java.util.List;
import kotlin.collections.builders.MapBuilder;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class GetSortCriteriaPerAccount$invoke$1 extends ContinuationImpl {
    public List L$1;
    public MapBuilder L$2;
    public MapBuilder L$3;
    public MapBuilder L$4;
    public int label;
    public /* synthetic */ Object result;
    public final /* synthetic */ GetSortCriteriaPerAccount this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public GetSortCriteriaPerAccount$invoke$1(GetSortCriteriaPerAccount getSortCriteriaPerAccount, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.this$0 = getSortCriteriaPerAccount;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.invoke(this);
    }
}
