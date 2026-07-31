package org.wikipedia.activitytab;

import androidx.compose.foundation.lazy.LazyListState;
import androidx.compose.runtime.ParcelableSnapshotMutableIntState;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class ActivityTabFragment$ActivityTabScreen$2$1 extends SuspendLambda implements Function2 {
    public final /* synthetic */ boolean $areGamesAvailable;
    public final /* synthetic */ ParcelableSnapshotMutableIntState $gamesModuleOffsetInItem$delegate;
    public final /* synthetic */ LazyListState $listState;
    public final /* synthetic */ ActivityTabModules $modules;
    public final /* synthetic */ Function0 $onScrollToGamesConsumed;
    public final /* synthetic */ boolean $scrollToGames;
    public int I$0;
    public int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ActivityTabFragment$ActivityTabScreen$2$1(boolean z, ActivityTabModules activityTabModules, boolean z2, LazyListState lazyListState, Function0 function0, ParcelableSnapshotMutableIntState parcelableSnapshotMutableIntState, Continuation continuation) {
        super(2, continuation);
        this.$scrollToGames = z;
        this.$modules = activityTabModules;
        this.$areGamesAvailable = z2;
        this.$listState = lazyListState;
        this.$onScrollToGamesConsumed = function0;
        this.$gamesModuleOffsetInItem$delegate = parcelableSnapshotMutableIntState;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new ActivityTabFragment$ActivityTabScreen$2$1(this.$scrollToGames, this.$modules, this.$areGamesAvailable, this.$listState, this.$onScrollToGamesConsumed, this.$gamesModuleOffsetInItem$delegate, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((ActivityTabFragment$ActivityTabScreen$2$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x008b, code lost:
    
        if (r3.animateScrollToItem(r1, r11, r10) == r0) goto L32;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x007c, code lost:
    
        if (kotlinx.coroutines.flow.StateFlowKt.first(r11, r7, r10) == r0) goto L32;
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
            r2 = 0
            androidx.compose.foundation.lazy.LazyListState r3 = r10.$listState
            r4 = 3
            androidx.compose.runtime.ParcelableSnapshotMutableIntState r5 = r10.$gamesModuleOffsetInItem$delegate
            r6 = 2
            r7 = 1
            if (r1 == 0) goto L2b
            if (r1 == r7) goto L25
            if (r1 == r6) goto L1f
            if (r1 != r4) goto L19
            kotlin.ResultKt.throwOnFailure(r11)
            goto L8e
        L19:
            java.lang.String r10 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$1(r10)
            return r2
        L1f:
            int r1 = r10.I$0
            kotlin.ResultKt.throwOnFailure(r11)
            goto L7f
        L25:
            int r1 = r10.I$0
            kotlin.ResultKt.throwOnFailure(r11)
            goto L63
        L2b:
            kotlin.ResultKt.throwOnFailure(r11)
            boolean r11 = r10.$scrollToGames
            if (r11 == 0) goto L93
            org.wikipedia.activitytab.ModuleType r11 = org.wikipedia.activitytab.ModuleType.GAMES
            boolean r1 = r10.$areGamesAvailable
            org.wikipedia.activitytab.ActivityTabModules r8 = r10.$modules
            r9 = 0
            boolean r11 = org.wikipedia.activitytab.ActivityTabModules.isModuleVisible$default(r8, r11, r9, r1, r6)
            if (r11 == 0) goto L93
            org.wikipedia.activitytab.ModuleType r11 = org.wikipedia.activitytab.ModuleType.TIME_SPENT
            r1 = 6
            boolean r11 = org.wikipedia.activitytab.ActivityTabModules.isModuleVisible$default(r8, r11, r9, r9, r1)
            if (r11 != 0) goto L53
            org.wikipedia.activitytab.ModuleType r11 = org.wikipedia.activitytab.ModuleType.READING_INSIGHTS
            boolean r11 = org.wikipedia.activitytab.ActivityTabModules.isModuleVisible$default(r8, r11, r9, r9, r1)
            if (r11 == 0) goto L51
            goto L53
        L51:
            r11 = r9
            goto L54
        L53:
            r11 = r7
        L54:
            r5.setIntValue(r9)
            r10.I$0 = r11
            r10.label = r7
            java.lang.Object r1 = androidx.compose.foundation.lazy.LazyListState.scrollToItem$default(r3, r11, r10)
            if (r1 != r0) goto L62
            goto L8d
        L62:
            r1 = r11
        L63:
            androidx.work.Worker$$ExternalSyntheticLambda0 r11 = new androidx.work.Worker$$ExternalSyntheticLambda0
            r7 = 29
            r11.<init>(r7, r5)
            kotlinx.coroutines.flow.SafeFlow r11 = androidx.compose.runtime.Updater.snapshotFlow(r11)
            org.wikipedia.feed.HomeViewModel$1 r7 = new org.wikipedia.feed.HomeViewModel$1
            r8 = 4
            r7.<init>(r6, r8, r2)
            r10.I$0 = r1
            r10.label = r6
            java.lang.Object r11 = kotlinx.coroutines.flow.StateFlowKt.first(r11, r7, r10)
            if (r11 != r0) goto L7f
            goto L8d
        L7f:
            int r11 = r5.getIntValue()
            r10.I$0 = r1
            r10.label = r4
            java.lang.Object r11 = r3.animateScrollToItem(r1, r11, r10)
            if (r11 != r0) goto L8e
        L8d:
            return r0
        L8e:
            kotlin.jvm.functions.Function0 r10 = r10.$onScrollToGamesConsumed
            r10.invoke()
        L93:
            kotlin.Unit r10 = kotlin.Unit.INSTANCE
            return r10
        */
        throw new UnsupportedOperationException("Method not decompiled: org.wikipedia.activitytab.ActivityTabFragment$ActivityTabScreen$2$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
