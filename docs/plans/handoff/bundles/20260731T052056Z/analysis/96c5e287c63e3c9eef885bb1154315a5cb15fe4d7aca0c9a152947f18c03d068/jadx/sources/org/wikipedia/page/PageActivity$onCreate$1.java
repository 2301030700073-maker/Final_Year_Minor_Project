package org.wikipedia.page;

import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class PageActivity$onCreate$1 extends SuspendLambda implements Function2 {
    public final /* synthetic */ int $r8$classId;
    public int label;
    public final /* synthetic */ PageActivity this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ PageActivity$onCreate$1(PageActivity pageActivity, Continuation continuation, int i) {
        super(2, continuation);
        this.$r8$classId = i;
        this.this$0 = pageActivity;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        int i = this.$r8$classId;
        PageActivity pageActivity = this.this$0;
        switch (i) {
            case 0:
                return new PageActivity$onCreate$1(pageActivity, continuation, 0);
            case 1:
                return new PageActivity$onCreate$1(pageActivity, continuation, 1);
            default:
                return new PageActivity$onCreate$1(pageActivity, continuation, 2);
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
        return ((PageActivity$onCreate$1) create(coroutineScope, continuation)).invokeSuspend(unit);
    }

    /* JADX WARN: Code restructure failed: missing block: B:28:0x0098, code lost:
    
        if (r8 == r0) goto L30;
     */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r9) {
        /*
            r8 = this;
            int r0 = r8.$r8$classId
            r1 = 0
            org.wikipedia.page.PageActivity r2 = r8.this$0
            java.lang.String r3 = "call to 'resume' before 'invoke' with coroutine"
            kotlin.Unit r4 = kotlin.Unit.INSTANCE
            r5 = 1
            r6 = 0
            switch(r0) {
                case 0: goto Lc3;
                case 1: goto L9e;
                default: goto Le;
            }
        Le:
            kotlin.coroutines.intrinsics.CoroutineSingletons r0 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r7 = r8.label
            if (r7 == 0) goto L21
            if (r7 != r5) goto L1b
            kotlin.ResultKt.throwOnFailure(r9)
            goto L9d
        L1b:
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$1(r3)
            r4 = r6
            goto L9d
        L21:
            kotlin.ResultKt.throwOnFailure(r9)
            org.wikipedia.widgets.readingchallenge.ReadingChallengeWidgetRepository r9 = new org.wikipedia.widgets.readingchallenge.ReadingChallengeWidgetRepository
            r9.<init>(r2)
            j$.time.LocalDate r2 = j$.time.LocalDate.now()
            r2.getClass()
            r8.label = r5
            j$.time.LocalDate r3 = org.wikipedia.widgets.readingchallenge.StreakProgressBarKt.getSTART_DATE()
            boolean r3 = r2.isBefore(r3)
            if (r3 != 0) goto L4f
            j$.time.LocalDate r3 = org.wikipedia.widgets.readingchallenge.ReadingChallengeWidgetRepository.REMOVE_DATE
            boolean r3 = r2.isAfter(r3)
            if (r3 == 0) goto L45
            goto L4f
        L45:
            org.wikipedia.settings.Prefs r3 = org.wikipedia.settings.Prefs.INSTANCE
            int r3 = org.wikipedia.settings.Prefs.getReadingChallengeStreak()
            r6 = 25
            if (r3 < r6) goto L51
        L4f:
            r8 = r4
            goto L9a
        L51:
            j$.time.LocalDate r3 = org.wikipedia.widgets.readingchallenge.StreakProgressBarKt.getEND_DATE()
            boolean r3 = r2.isAfter(r3)
            if (r3 == 0) goto L62
            boolean r3 = org.wikipedia.widgets.readingchallenge.ReadingChallengeWidgetRepository.hasActiveStreak(r2)
            if (r3 != 0) goto L62
            goto L4f
        L62:
            boolean r3 = org.wikipedia.settings.Prefs.getReadingChallengeEnrolled()
            if (r3 == 0) goto L4f
            java.lang.String r3 = org.wikipedia.settings.Prefs.getReadingChallengeLastReadDate()
            int r6 = r3.length()
            if (r6 <= 0) goto L7a
            j$.time.LocalDate r1 = j$.time.LocalDate.parse(r3)
            boolean r1 = kotlin.jvm.internal.Intrinsics.areEqual(r1, r2)
        L7a:
            if (r1 != 0) goto L4f
            java.lang.String r1 = r2.toString()
            r1.getClass()
            r2 = 2131887694(0x7f12064e, float:1.9410002E38)
            org.wikipedia.settings.PrefsIoUtil.setString(r2, r1)
            int r1 = org.wikipedia.settings.Prefs.getReadingChallengeStreak()
            int r1 = r1 + r5
            r2 = 2131887697(0x7f120651, float:1.9410008E38)
            org.wikipedia.settings.PrefsIoUtil.setInt(r2, r1)
            java.lang.Object r8 = r9.updateWidgetsAndSendAnalytics(r8)
            if (r8 != r0) goto L4f
        L9a:
            if (r8 != r0) goto L9d
            r4 = r0
        L9d:
            return r4
        L9e:
            kotlin.coroutines.intrinsics.CoroutineSingletons r0 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r7 = r8.label
            if (r7 == 0) goto Laf
            if (r7 != r5) goto Laa
            kotlin.ResultKt.throwOnFailure(r9)
            goto Lc2
        Laa:
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$1(r3)
            r4 = r6
            goto Lc2
        Laf:
            kotlin.ResultKt.throwOnFailure(r9)
            kotlinx.coroutines.flow.ReadonlySharedFlow r9 = org.wikipedia.concurrency.FlowEventBus.events
            org.wikipedia.page.PageActivity$onCreate$1$1$1 r3 = new org.wikipedia.page.PageActivity$onCreate$1$1$1
            r3.<init>(r1, r2, r6)
            r8.label = r5
            java.lang.Object r8 = kotlinx.coroutines.flow.StateFlowKt.collectLatest(r9, r3, r8)
            if (r8 != r0) goto Lc2
            r4 = r0
        Lc2:
            return r4
        Lc3:
            kotlin.coroutines.intrinsics.CoroutineSingletons r0 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r1 = r8.label
            if (r1 == 0) goto Ld4
            if (r1 != r5) goto Lcf
            kotlin.ResultKt.throwOnFailure(r9)
            goto Le7
        Lcf:
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$1(r3)
            r4 = r6
            goto Le7
        Ld4:
            kotlin.ResultKt.throwOnFailure(r9)
            androidx.lifecycle.Lifecycle$State r9 = androidx.lifecycle.Lifecycle$State.CREATED
            org.wikipedia.page.PageActivity$onCreate$1 r1 = new org.wikipedia.page.PageActivity$onCreate$1
            r1.<init>(r2, r6, r5)
            r8.label = r5
            java.lang.Object r8 = androidx.lifecycle.ViewModelKt.repeatOnLifecycle(r2, r9, r1, r8)
            if (r8 != r0) goto Le7
            r4 = r0
        Le7:
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: org.wikipedia.page.PageActivity$onCreate$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
