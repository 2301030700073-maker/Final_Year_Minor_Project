package org.wikipedia.dataclient.discussiontools;

import java.util.Iterator;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.RestrictedSuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.sequences.SequenceBuilderIterator;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class ThreadItem$allReplies$1 extends RestrictedSuspendLambda implements Function2 {
    public int I$0;
    public int I$1;
    public /* synthetic */ Object L$0;
    public Iterator L$2;
    public ThreadItem L$4;
    public int label;
    public final /* synthetic */ ThreadItem this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ThreadItem$allReplies$1(ThreadItem threadItem, Continuation continuation) {
        super(2, continuation);
        this.this$0 = threadItem;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        ThreadItem$allReplies$1 threadItem$allReplies$1 = new ThreadItem$allReplies$1(this.this$0, continuation);
        threadItem$allReplies$1.L$0 = obj;
        return threadItem$allReplies$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((ThreadItem$allReplies$1) create((SequenceBuilderIterator) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x008d, code lost:
    
        if (r3 != r1) goto L7;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x001b, code lost:
    
        if (r12 != r1) goto L7;
     */
    /* JADX WARN: Removed duplicated region for block: B:14:0x007d  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x008c  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x007f  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0090 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0044  */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r12) {
        /*
            r11 = this;
            java.lang.Object r0 = r11.L$0
            kotlin.sequences.SequenceBuilderIterator r0 = (kotlin.sequences.SequenceBuilderIterator) r0
            kotlin.coroutines.intrinsics.CoroutineSingletons r1 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r2 = r11.label
            kotlin.Unit r3 = kotlin.Unit.INSTANCE
            r4 = 0
            r5 = 2
            r6 = 1
            r7 = 0
            if (r2 == 0) goto L32
            if (r2 == r6) goto L23
            if (r2 != r5) goto L1d
            int r2 = r11.I$0
            java.util.Iterator r8 = r11.L$2
            kotlin.ResultKt.throwOnFailure(r12)
        L1b:
            r12 = r8
            goto L3e
        L1d:
            java.lang.String r11 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$1(r11)
            return r7
        L23:
            int r2 = r11.I$1
            int r8 = r11.I$0
            org.wikipedia.dataclient.discussiontools.ThreadItem r9 = r11.L$4
            java.util.Iterator r10 = r11.L$2
            kotlin.ResultKt.throwOnFailure(r12)
            r12 = r2
            r2 = r8
            r8 = r10
            goto L60
        L32:
            kotlin.ResultKt.throwOnFailure(r12)
            org.wikipedia.dataclient.discussiontools.ThreadItem r12 = r11.this$0
            java.util.List r12 = r12.replies
            java.util.Iterator r12 = r12.iterator()
            r2 = r4
        L3e:
            boolean r8 = r12.hasNext()
            if (r8 == 0) goto L90
            java.lang.Object r8 = r12.next()
            r9 = r8
            org.wikipedia.dataclient.discussiontools.ThreadItem r9 = (org.wikipedia.dataclient.discussiontools.ThreadItem) r9
            r11.L$0 = r0
            r11.L$2 = r12
            r11.L$4 = r9
            r11.I$0 = r2
            r11.I$1 = r4
            r11.label = r6
            kotlin.coroutines.intrinsics.CoroutineSingletons r8 = r0.yield(r9, r11)
            if (r8 != r1) goto L5e
            goto L8f
        L5e:
            r8 = r12
            r12 = r4
        L60:
            kotlin.io.LinesSequence r9 = r9.getAllReplies()
            r11.L$0 = r0
            r11.L$2 = r8
            r11.L$4 = r7
            r11.I$0 = r2
            r11.I$1 = r12
            r11.label = r5
            r0.getClass()
            java.util.Iterator r12 = r9.iterator()
            boolean r9 = r12.hasNext()
            if (r9 != 0) goto L7f
            r12 = r3
            goto L87
        L7f:
            r0.nextIterator = r12
            r0.state = r5
            r0.nextStep = r11
            kotlin.coroutines.intrinsics.CoroutineSingletons r12 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
        L87:
            kotlin.coroutines.intrinsics.CoroutineSingletons r9 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            if (r12 != r9) goto L8c
            goto L8d
        L8c:
            r12 = r3
        L8d:
            if (r12 != r1) goto L1b
        L8f:
            return r1
        L90:
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: org.wikipedia.dataclient.discussiontools.ThreadItem$allReplies$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
