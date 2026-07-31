package org.wikipedia.talk;

import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import org.wikipedia.dataclient.discussiontools.ThreadItem;
import org.wikipedia.games.WikiGames$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class TalkTopicsViewModel$markAsSeen$1$1 extends SuspendLambda implements Function2 {
    public final /* synthetic */ WikiGames$$ExternalSyntheticLambda0 $action;
    public final /* synthetic */ boolean $force;
    public final /* synthetic */ String $it;
    public final /* synthetic */ ThreadItem $threadItem;
    public int label;
    public final /* synthetic */ TalkTopicsViewModel this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TalkTopicsViewModel$markAsSeen$1$1(TalkTopicsViewModel talkTopicsViewModel, ThreadItem threadItem, boolean z, String str, WikiGames$$ExternalSyntheticLambda0 wikiGames$$ExternalSyntheticLambda0, Continuation continuation) {
        super(2, continuation);
        this.this$0 = talkTopicsViewModel;
        this.$threadItem = threadItem;
        this.$force = z;
        this.$it = str;
        this.$action = wikiGames$$ExternalSyntheticLambda0;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new TalkTopicsViewModel$markAsSeen$1$1(this.this$0, this.$threadItem, this.$force, this.$it, this.$action, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((TalkTopicsViewModel$markAsSeen$1$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x0044, code lost:
    
        if (r11 == r0) goto L26;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x0065, code lost:
    
        if (r11 == r0) goto L26;
     */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r11) {
        /*
            r10 = this;
            kotlin.coroutines.intrinsics.CoroutineSingletons r0 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r1 = r10.label
            kotlin.Unit r2 = kotlin.Unit.INSTANCE
            r3 = 2
            r4 = 1
            java.lang.String r5 = r10.$it
            org.wikipedia.talk.TalkTopicsViewModel r6 = r10.this$0
            if (r1 == 0) goto L21
            if (r1 == r4) goto L1d
            if (r1 != r3) goto L16
            kotlin.ResultKt.throwOnFailure(r11)
            goto L68
        L16:
            java.lang.String r10 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$1(r10)
            r10 = 0
            return r10
        L1d:
            kotlin.ResultKt.throwOnFailure(r11)
            goto L47
        L21:
            kotlin.ResultKt.throwOnFailure(r11)
            org.wikipedia.dataclient.discussiontools.ThreadItem r11 = r10.$threadItem
            boolean r11 = r6.topicSeen(r11)
            org.wikipedia.talk.db.TalkPageSeenDao_Impl r1 = r6.talkPageDao
            r7 = 0
            if (r11 == 0) goto L4d
            boolean r11 = r10.$force
            if (r11 != 0) goto L4d
            r10.label = r4
            androidx.room.RoomDatabase r11 = r1.__db
            org.wikipedia.talk.db.TalkPageSeenDao_Impl$$ExternalSyntheticLambda3 r1 = new org.wikipedia.talk.db.TalkPageSeenDao_Impl$$ExternalSyntheticLambda3
            r1.<init>(r5)
            java.lang.Object r11 = kotlin.ExceptionsKt.performSuspending(r11, r7, r4, r1, r10)
            if (r11 != r0) goto L43
            goto L44
        L43:
            r11 = r2
        L44:
            if (r11 != r0) goto L47
            goto L67
        L47:
            java.util.LinkedHashSet r11 = r6.seenThreadItemsSha
            r11.remove(r5)
            goto L6d
        L4d:
            org.wikipedia.talk.db.TalkPageSeen r11 = new org.wikipedia.talk.db.TalkPageSeen
            r11.<init>(r5)
            r10.label = r3
            androidx.room.RoomDatabase r3 = r1.__db
            org.wikipedia.util.SingleLiveData$$ExternalSyntheticLambda0 r8 = new org.wikipedia.util.SingleLiveData$$ExternalSyntheticLambda0
            r9 = 10
            r8.<init>(r9, r1, r11)
            java.lang.Object r11 = kotlin.ExceptionsKt.performSuspending(r3, r7, r4, r8, r10)
            if (r11 != r0) goto L64
            goto L65
        L64:
            r11 = r2
        L65:
            if (r11 != r0) goto L68
        L67:
            return r0
        L68:
            java.util.LinkedHashSet r11 = r6.seenThreadItemsSha
            r11.add(r5)
        L6d:
            org.wikipedia.games.WikiGames$$ExternalSyntheticLambda0 r10 = r10.$action
            r10.invoke()
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: org.wikipedia.talk.TalkTopicsViewModel$markAsSeen$1$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
