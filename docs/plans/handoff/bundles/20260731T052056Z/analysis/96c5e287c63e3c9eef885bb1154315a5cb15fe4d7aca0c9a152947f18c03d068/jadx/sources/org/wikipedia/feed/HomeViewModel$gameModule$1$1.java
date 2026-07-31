package org.wikipedia.feed;

import java.util.ArrayList;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function3;
import kotlinx.coroutines.flow.FlowCollector;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class HomeViewModel$gameModule$1$1 extends SuspendLambda implements Function3 {
    public final /* synthetic */ ArrayList $supportedGames;
    public /* synthetic */ FlowCollector L$0;
    public FlowCollector L$1;
    public int label;
    public final /* synthetic */ HomeViewModel this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public HomeViewModel$gameModule$1$1(HomeViewModel homeViewModel, ArrayList arrayList, Continuation continuation) {
        super(3, continuation);
        this.this$0 = homeViewModel;
        this.$supportedGames = arrayList;
    }

    @Override // kotlin.jvm.functions.Function3
    public final Object invoke(Object obj, Object obj2, Object obj3) {
        HomeViewModel$gameModule$1$1 homeViewModel$gameModule$1$1 = new HomeViewModel$gameModule$1$1(this.this$0, this.$supportedGames, (Continuation) obj3);
        homeViewModel$gameModule$1$1.L$0 = (FlowCollector) obj;
        return homeViewModel$gameModule$1$1.invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x0057, code lost:
    
        if (r0.emit(r9, r8) == r1) goto L20;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x0059, code lost:
    
        return r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x004a, code lost:
    
        if (r9 == r1) goto L20;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0039, code lost:
    
        if (r0.emit(r9, r8) == r1) goto L20;
     */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r9) {
        /*
            r8 = this;
            kotlinx.coroutines.flow.FlowCollector r0 = r8.L$0
            kotlin.coroutines.intrinsics.CoroutineSingletons r1 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r2 = r8.label
            r3 = 3
            r4 = 2
            r5 = 0
            r6 = 1
            if (r2 == 0) goto L26
            if (r2 == r6) goto L22
            if (r2 == r4) goto L1c
            if (r2 != r3) goto L16
            kotlin.ResultKt.throwOnFailure(r9)
            goto L5a
        L16:
            java.lang.String r8 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$1(r8)
            return r5
        L1c:
            kotlinx.coroutines.flow.FlowCollector r0 = r8.L$1
            kotlin.ResultKt.throwOnFailure(r9)
            goto L4d
        L22:
            kotlin.ResultKt.throwOnFailure(r9)
            goto L3c
        L26:
            kotlin.ResultKt.throwOnFailure(r9)
            org.wikipedia.feed.ForYouModule$Games r9 = new org.wikipedia.feed.ForYouModule$Games
            kotlin.collections.EmptyList r2 = kotlin.collections.EmptyList.INSTANCE
            r7 = 0
            r9.<init>(r7, r7, r2, r6)
            r8.L$0 = r0
            r8.label = r6
            java.lang.Object r9 = r0.emit(r9, r8)
            if (r9 != r1) goto L3c
            goto L59
        L3c:
            r8.L$0 = r5
            r8.L$1 = r0
            r8.label = r4
            org.wikipedia.feed.HomeViewModel r9 = r8.this$0
            java.util.ArrayList r2 = r8.$supportedGames
            java.lang.Object r9 = r9.buildGameModule(r2, r8)
            if (r9 != r1) goto L4d
            goto L59
        L4d:
            r8.L$0 = r5
            r8.L$1 = r5
            r8.label = r3
            java.lang.Object r8 = r0.emit(r9, r8)
            if (r8 != r1) goto L5a
        L59:
            return r1
        L5a:
            kotlin.Unit r8 = kotlin.Unit.INSTANCE
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: org.wikipedia.feed.HomeViewModel$gameModule$1$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
