package org.fdroid.fdroid.work;

import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import org.bouncycastle.asn1.eac.EACTags;

/* compiled from: UnarchiveWorker.kt */
@Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
@DebugMetadata(c = "org.fdroid.fdroid.work.UnarchiveWorker", f = "UnarchiveWorker.kt", l = {EACTags.MESSAGE_REFERENCE, 87}, m = "doWork")
/* loaded from: classes2.dex */
final class UnarchiveWorker$doWork$1 extends ContinuationImpl {
    Object L$0;
    Object L$1;
    Object L$2;
    Object L$3;
    Object L$4;
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ UnarchiveWorker this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    UnarchiveWorker$doWork$1(UnarchiveWorker unarchiveWorker, Continuation continuation) {
        super(continuation);
        this.this$0 = unarchiveWorker;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.doWork(this);
    }
}
