package org.fdroid.fdroid.work;

import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* compiled from: RepoUpdateWorker.kt */
@Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
@DebugMetadata(c = "org.fdroid.fdroid.work.RepoUpdateWorker", f = "RepoUpdateWorker.kt", l = {134, 134}, m = "doWork")
/* loaded from: classes2.dex */
final class RepoUpdateWorker$doWork$1 extends ContinuationImpl {
    Object L$0;
    Object L$1;
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ RepoUpdateWorker this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    RepoUpdateWorker$doWork$1(RepoUpdateWorker repoUpdateWorker, Continuation continuation) {
        super(continuation);
        this.this$0 = repoUpdateWorker;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.doWork(this);
    }
}
