package org.wikipedia.search;

import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class RecentSearchesFragment$onCreateView$1$1$1 extends SuspendLambda implements Function2 {
    public final /* synthetic */ int $r8$classId;
    public int label;
    public final /* synthetic */ RecentSearchesFragment this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ RecentSearchesFragment$onCreateView$1$1$1(RecentSearchesFragment recentSearchesFragment, Continuation continuation, int i) {
        super(2, continuation);
        this.$r8$classId = i;
        this.this$0 = recentSearchesFragment;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        int i = this.$r8$classId;
        RecentSearchesFragment recentSearchesFragment = this.this$0;
        switch (i) {
            case 0:
                return new RecentSearchesFragment$onCreateView$1$1$1(recentSearchesFragment, continuation, 0);
            default:
                return new RecentSearchesFragment$onCreateView$1$1$1(recentSearchesFragment, continuation, 1);
        }
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        CoroutineScope coroutineScope = (CoroutineScope) obj;
        Continuation continuation = (Continuation) obj2;
        switch (i) {
        }
        return ((RecentSearchesFragment$onCreateView$1$1$1) create(coroutineScope, continuation)).invokeSuspend(unit);
    }

    /* JADX WARN: Code restructure failed: missing block: B:33:0x0064, code lost:
    
        if (r9 == r0) goto L28;
     */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r9) {
        /*
            r8 = this;
            int r0 = r8.$r8$classId
            kotlin.Unit r1 = kotlin.Unit.INSTANCE
            org.wikipedia.search.RecentSearchesFragment r2 = r8.this$0
            r3 = 0
            java.lang.String r4 = "call to 'resume' before 'invoke' with coroutine"
            r5 = 1
            switch(r0) {
                case 0: goto L2b;
                default: goto Ld;
            }
        Ld:
            kotlin.coroutines.intrinsics.CoroutineSingletons r0 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r6 = r8.label
            if (r6 == 0) goto L1e
            if (r6 != r5) goto L19
            kotlin.ResultKt.throwOnFailure(r9)
            goto L2a
        L19:
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$1(r4)
            r1 = r3
            goto L2a
        L1e:
            kotlin.ResultKt.throwOnFailure(r9)
            r8.label = r5
            java.lang.Object r8 = r2.updateList(r8)
            if (r8 != r0) goto L2a
            r1 = r0
        L2a:
            return r1
        L2b:
            kotlin.coroutines.intrinsics.CoroutineSingletons r0 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r6 = r8.label
            r7 = 2
            if (r6 == 0) goto L43
            if (r6 == r5) goto L3f
            if (r6 != r7) goto L3a
            kotlin.ResultKt.throwOnFailure(r9)
            goto L70
        L3a:
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$1(r4)
            r1 = r3
            goto L70
        L3f:
            kotlin.ResultKt.throwOnFailure(r9)
            goto L67
        L43:
            kotlin.ResultKt.throwOnFailure(r9)
            org.wikipedia.database.AppDatabase$Companion$MIGRATION_19_20$1 r9 = org.wikipedia.database.AppDatabase.MIGRATION_19_20
            org.wikipedia.database.AppDatabase r9 = okhttp3.Cookie.Companion.getInstance()
            org.wikipedia.search.db.RecentSearchDao_Impl r9 = r9.recentSearchDao()
            r8.label = r5
            androidx.room.RoomDatabase r9 = r9.__db
            org.wikipedia.talk.TalkTopicsViewModel$$ExternalSyntheticLambda0 r3 = new org.wikipedia.talk.TalkTopicsViewModel$$ExternalSyntheticLambda0
            r4 = 21
            r3.<init>(r4)
            r4 = 0
            java.lang.Object r9 = kotlin.ExceptionsKt.performSuspending(r9, r4, r5, r3, r8)
            if (r9 != r0) goto L63
            goto L64
        L63:
            r9 = r1
        L64:
            if (r9 != r0) goto L67
            goto L6f
        L67:
            r8.label = r7
            java.lang.Object r8 = r2.updateList(r8)
            if (r8 != r0) goto L70
        L6f:
            r1 = r0
        L70:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: org.wikipedia.search.RecentSearchesFragment$onCreateView$1$1$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
