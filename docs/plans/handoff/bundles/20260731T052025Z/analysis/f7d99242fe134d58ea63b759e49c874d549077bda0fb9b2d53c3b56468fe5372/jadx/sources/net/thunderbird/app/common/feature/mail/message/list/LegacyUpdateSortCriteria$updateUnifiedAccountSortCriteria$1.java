package net.thunderbird.app.common.feature.mail.message.list;

import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class LegacyUpdateSortCriteria$updateUnifiedAccountSortCriteria$1 extends ContinuationImpl {
    public int label;
    public /* synthetic */ Object result;
    public final /* synthetic */ LegacyUpdateSortCriteria this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LegacyUpdateSortCriteria$updateUnifiedAccountSortCriteria$1(LegacyUpdateSortCriteria legacyUpdateSortCriteria, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.this$0 = legacyUpdateSortCriteria;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.updateUnifiedAccountSortCriteria(null, this);
    }
}
