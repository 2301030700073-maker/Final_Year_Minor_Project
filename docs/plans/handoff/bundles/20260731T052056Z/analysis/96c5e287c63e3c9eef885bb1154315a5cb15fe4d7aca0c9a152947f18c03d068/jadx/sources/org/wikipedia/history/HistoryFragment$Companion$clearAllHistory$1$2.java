package org.wikipedia.history;

import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class HistoryFragment$Companion$clearAllHistory$1$2 extends SuspendLambda implements Function2 {
    public final /* synthetic */ Function0 $action;
    public final /* synthetic */ int $r8$classId;
    public int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ HistoryFragment$Companion$clearAllHistory$1$2(Function0 function0, Continuation continuation, int i) {
        super(2, continuation);
        this.$r8$classId = i;
        this.$action = function0;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        int i = this.$r8$classId;
        Function0 function0 = this.$action;
        switch (i) {
            case 0:
                return new HistoryFragment$Companion$clearAllHistory$1$2(function0, continuation, 0);
            default:
                return new HistoryFragment$Companion$clearAllHistory$1$2(function0, continuation, 1);
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
        return ((HistoryFragment$Companion$clearAllHistory$1$2) create(coroutineScope, continuation)).invokeSuspend(unit);
    }

    /* JADX WARN: Code restructure failed: missing block: B:30:0x00af, code lost:
    
        if (r10 == r0) goto L40;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x0091, code lost:
    
        if (r11 == r0) goto L40;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x0073, code lost:
    
        if (r11 == r0) goto L40;
     */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r11) {
        /*
            r10 = this;
            int r0 = r10.$r8$classId
            kotlin.Unit r1 = kotlin.Unit.INSTANCE
            kotlin.jvm.functions.Function0 r2 = r10.$action
            r3 = 0
            java.lang.String r4 = "call to 'resume' before 'invoke' with coroutine"
            r5 = 1
            switch(r0) {
                case 0: goto L31;
                default: goto Ld;
            }
        Ld:
            kotlin.coroutines.intrinsics.CoroutineSingletons r0 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r6 = r10.label
            if (r6 == 0) goto L1e
            if (r6 != r5) goto L19
            kotlin.ResultKt.throwOnFailure(r11)
            goto L2d
        L19:
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$1(r4)
            r1 = r3
            goto L30
        L1e:
            kotlin.ResultKt.throwOnFailure(r11)
            r10.label = r5
            r3 = 2000(0x7d0, double:9.88E-321)
            java.lang.Object r10 = kotlinx.coroutines.AwaitKt.delay(r3, r10)
            if (r10 != r0) goto L2d
            r1 = r0
            goto L30
        L2d:
            r2.invoke()
        L30:
            return r1
        L31:
            kotlin.coroutines.intrinsics.CoroutineSingletons r0 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r6 = r10.label
            r7 = 2
            r8 = 3
            r9 = 0
            if (r6 == 0) goto L53
            if (r6 == r5) goto L4f
            if (r6 == r7) goto L4b
            if (r6 != r8) goto L45
            kotlin.ResultKt.throwOnFailure(r11)
            goto Lb3
        L45:
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$1(r4)
            r1 = r3
            goto Lb6
        L4b:
            kotlin.ResultKt.throwOnFailure(r11)
            goto L94
        L4f:
            kotlin.ResultKt.throwOnFailure(r11)
            goto L76
        L53:
            kotlin.ResultKt.throwOnFailure(r11)
            org.wikipedia.database.AppDatabase$Companion$MIGRATION_19_20$1 r11 = org.wikipedia.database.AppDatabase.MIGRATION_19_20
            org.wikipedia.database.AppDatabase r11 = okhttp3.Cookie.Companion.getInstance()
            org.wikipedia.history.db.HistoryEntryDao_Impl r11 = r11.historyEntryDao()
            r10.label = r5
            androidx.room.RoomDatabase r11 = r11.__db
            org.wikipedia.feed.ForYouCardKt$$ExternalSyntheticLambda1 r3 = new org.wikipedia.feed.ForYouCardKt$$ExternalSyntheticLambda1
            r4 = 21
            r3.<init>(r4)
            java.lang.Object r11 = kotlin.ExceptionsKt.performSuspending(r11, r9, r5, r3, r10)
            if (r11 != r0) goto L72
            goto L73
        L72:
            r11 = r1
        L73:
            if (r11 != r0) goto L76
            goto Lb1
        L76:
            org.wikipedia.database.AppDatabase$Companion$MIGRATION_19_20$1 r11 = org.wikipedia.database.AppDatabase.MIGRATION_19_20
            org.wikipedia.database.AppDatabase r11 = okhttp3.Cookie.Companion.getInstance()
            org.wikipedia.pageimages.db.PageImageDao_Impl r11 = r11.pageImagesDao()
            r10.label = r7
            androidx.room.RoomDatabase r11 = r11.__db
            org.wikipedia.talk.TalkTopicsViewModel$$ExternalSyntheticLambda0 r3 = new org.wikipedia.talk.TalkTopicsViewModel$$ExternalSyntheticLambda0
            r3.<init>(r5)
            java.lang.Object r11 = kotlin.ExceptionsKt.performSuspending(r11, r9, r5, r3, r10)
            if (r11 != r0) goto L90
            goto L91
        L90:
            r11 = r1
        L91:
            if (r11 != r0) goto L94
            goto Lb1
        L94:
            org.wikipedia.database.AppDatabase$Companion$MIGRATION_19_20$1 r11 = org.wikipedia.database.AppDatabase.MIGRATION_19_20
            org.wikipedia.database.AppDatabase r11 = okhttp3.Cookie.Companion.getInstance()
            org.wikipedia.categories.db.CategoryDao_Impl r11 = r11.categoryDao()
            r10.label = r8
            androidx.room.RoomDatabase r11 = r11.__db
            org.wikipedia.feed.ForYouCardKt$$ExternalSyntheticLambda1 r3 = new org.wikipedia.feed.ForYouCardKt$$ExternalSyntheticLambda1
            r3.<init>(r7)
            java.lang.Object r10 = kotlin.ExceptionsKt.performSuspending(r11, r9, r5, r3, r10)
            if (r10 != r0) goto Lae
            goto Laf
        Lae:
            r10 = r1
        Laf:
            if (r10 != r0) goto Lb3
        Lb1:
            r1 = r0
            goto Lb6
        Lb3:
            r2.invoke()
        Lb6:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: org.wikipedia.history.HistoryFragment$Companion$clearAllHistory$1$2.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
