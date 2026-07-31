package org.wikipedia.feed;

import java.util.Set;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function4;
import org.wikipedia.feed.ForYouModule;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class HomeViewModel$communityState$1 extends SuspendLambda implements Function4 {
    public final /* synthetic */ int $r8$classId;
    public /* synthetic */ Object L$0;
    public /* synthetic */ Object L$1;
    public /* synthetic */ Object L$2;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ HomeViewModel$communityState$1(int i, int i2, Continuation continuation) {
        super(i, continuation);
        this.$r8$classId = i2;
    }

    @Override // kotlin.jvm.functions.Function4
    public final Object invoke(Object obj, Object obj2, Object obj3, Object obj4) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        int i2 = 4;
        switch (i) {
            case 0:
                HomeViewModel$communityState$1 homeViewModel$communityState$1 = new HomeViewModel$communityState$1(i2, 0, (Continuation) obj4);
                homeViewModel$communityState$1.L$0 = (CommunityContentState) obj;
                homeViewModel$communityState$1.L$1 = (Set) obj2;
                homeViewModel$communityState$1.L$2 = (Set) obj3;
                return homeViewModel$communityState$1.invokeSuspend(unit);
            default:
                HomeViewModel$communityState$1 homeViewModel$communityState$12 = new HomeViewModel$communityState$1(i2, 1, (Continuation) obj4);
                homeViewModel$communityState$12.L$0 = (ForYouModule.PlacesOfInterest) obj;
                homeViewModel$communityState$12.L$1 = (ForYouModule.Discover) obj2;
                homeViewModel$communityState$12.L$2 = (ForYouModule.Games) obj3;
                return homeViewModel$communityState$12.invokeSuspend(unit);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:42:0x00b6  */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r12) {
        /*
            r11 = this;
            int r0 = r11.$r8$classId
            r1 = 1
            r2 = 0
            switch(r0) {
                case 0: goto L25;
                default: goto L7;
            }
        L7:
            java.lang.Object r0 = r11.L$0
            org.wikipedia.feed.ForYouModule$PlacesOfInterest r0 = (org.wikipedia.feed.ForYouModule.PlacesOfInterest) r0
            java.lang.Object r3 = r11.L$1
            org.wikipedia.feed.ForYouModule$Discover r3 = (org.wikipedia.feed.ForYouModule.Discover) r3
            java.lang.Object r11 = r11.L$2
            org.wikipedia.feed.ForYouModule$Games r11 = (org.wikipedia.feed.ForYouModule.Games) r11
            kotlin.ResultKt.throwOnFailure(r12)
            r12 = 3
            org.wikipedia.feed.ForYouModule[] r12 = new org.wikipedia.feed.ForYouModule[r12]
            r12[r2] = r0
            r12[r1] = r3
            r0 = 2
            r12[r0] = r11
            java.util.ArrayList r11 = kotlin.collections.ArraysKt___ArraysKt.filterNotNull(r12)
            return r11
        L25:
            java.lang.Object r0 = r11.L$0
            r3 = r0
            org.wikipedia.feed.CommunityContentState r3 = (org.wikipedia.feed.CommunityContentState) r3
            java.lang.Object r0 = r11.L$1
            java.util.Set r0 = (java.util.Set) r0
            java.util.Set r0 = (java.util.Set) r0
            java.lang.Object r11 = r11.L$2
            java.util.Set r11 = (java.util.Set) r11
            java.util.Set r11 = (java.util.Set) r11
            kotlin.ResultKt.throwOnFailure(r12)
            java.util.List r12 = r3.cards
            java.util.ArrayList r4 = new java.util.ArrayList
            r4.<init>()
            java.util.Iterator r12 = r12.iterator()
        L44:
            boolean r5 = r12.hasNext()
            if (r5 == 0) goto L5f
            java.lang.Object r5 = r12.next()
            r6 = r5
            org.wikipedia.feed.model.Card r6 = (org.wikipedia.feed.model.Card) r6
            java.lang.String r6 = r6.moduleKey()
            boolean r6 = r0.contains(r6)
            if (r6 != 0) goto L44
            r4.add(r5)
            goto L44
        L5f:
            java.util.ArrayList r12 = new java.util.ArrayList
            r12.<init>()
            java.util.Iterator r4 = r4.iterator()
        L68:
            boolean r5 = r4.hasNext()
            if (r5 == 0) goto L83
            java.lang.Object r5 = r4.next()
            r6 = r5
            org.wikipedia.feed.model.Card r6 = (org.wikipedia.feed.model.Card) r6
            java.lang.String r6 = r6.getHideKey()
            boolean r6 = r11.contains(r6)
            if (r6 != 0) goto L68
            r12.add(r5)
            goto L68
        L83:
            boolean r11 = r12.isEmpty()
            if (r11 == 0) goto L8b
        L89:
            r1 = r2
            goto L9f
        L8b:
            java.util.Iterator r11 = r12.iterator()
        L8f:
            boolean r4 = r11.hasNext()
            if (r4 == 0) goto L89
            java.lang.Object r4 = r11.next()
            org.wikipedia.feed.model.Card r4 = (org.wikipedia.feed.model.Card) r4
            boolean r4 = r4 instanceof org.wikipedia.feed.dayheader.DayHeaderCard
            if (r4 != 0) goto L8f
        L9f:
            kotlin.enums.EnumEntries r11 = org.wikipedia.settings.homefeed.CommunityModuleType.getEntries()
            if (r11 == 0) goto Lac
            boolean r2 = r11.isEmpty()
            if (r2 == 0) goto Lac
            goto Ld6
        Lac:
            java.util.Iterator r11 = r11.iterator()
        Lb0:
            boolean r2 = r11.hasNext()
            if (r2 == 0) goto Ld6
            java.lang.Object r2 = r11.next()
            org.wikipedia.settings.homefeed.CommunityModuleType r2 = (org.wikipedia.settings.homefeed.CommunityModuleType) r2
            java.lang.String r2 = r2.name()
            boolean r2 = r0.contains(r2)
            if (r2 != 0) goto Lb0
            boolean r11 = r3.isInitialLoading
            if (r11 != 0) goto Ld4
            java.lang.Throwable r11 = r3.error
            if (r11 != 0) goto Ld4
            if (r1 != 0) goto Ld4
            org.wikipedia.feed.FeedEmptyState r11 = org.wikipedia.feed.FeedEmptyState.NO_DATA
        Ld2:
            r9 = r11
            goto Ld9
        Ld4:
            r11 = 0
            goto Ld2
        Ld6:
            org.wikipedia.feed.FeedEmptyState r11 = org.wikipedia.feed.FeedEmptyState.ALL_MODULES_HIDDEN
            goto Ld2
        Ld9:
            r8 = 0
            r10 = 62
            r5 = 0
            r6 = 0
            r7 = 0
            r4 = r12
            org.wikipedia.feed.CommunityContentState r11 = org.wikipedia.feed.CommunityContentState.copy$default(r3, r4, r5, r6, r7, r8, r9, r10)
            return r11
        */
        throw new UnsupportedOperationException("Method not decompiled: org.wikipedia.feed.HomeViewModel$communityState$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
