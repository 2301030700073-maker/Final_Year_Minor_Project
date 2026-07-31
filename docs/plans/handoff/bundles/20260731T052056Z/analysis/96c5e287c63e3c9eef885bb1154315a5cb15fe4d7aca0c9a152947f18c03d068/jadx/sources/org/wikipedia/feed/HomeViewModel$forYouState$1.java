package org.wikipedia.feed;

import java.util.List;
import java.util.Set;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function5;
import org.wikipedia.util.UiState;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class HomeViewModel$forYouState$1 extends SuspendLambda implements Function5 {
    public final /* synthetic */ int $r8$classId;
    public /* synthetic */ Object L$0;
    public /* synthetic */ Object L$1;
    public /* synthetic */ Object L$2;
    public /* synthetic */ Object L$3;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ HomeViewModel$forYouState$1(int i, int i2, Continuation continuation) {
        super(i, continuation);
        this.$r8$classId = i2;
    }

    @Override // kotlin.jvm.functions.Function5
    public final Object invoke(Object obj, Object obj2, Object obj3, Object obj4, Object obj5) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        int i2 = 5;
        switch (i) {
            case 0:
                HomeViewModel$forYouState$1 homeViewModel$forYouState$1 = new HomeViewModel$forYouState$1(i2, 0, (Continuation) obj5);
                homeViewModel$forYouState$1.L$0 = (ForYouContentState) obj;
                homeViewModel$forYouState$1.L$1 = (Set) obj2;
                homeViewModel$forYouState$1.L$2 = (Set) obj3;
                homeViewModel$forYouState$1.L$3 = (List) obj4;
                return homeViewModel$forYouState$1.invokeSuspend(unit);
            default:
                HomeViewModel$forYouState$1 homeViewModel$forYouState$12 = new HomeViewModel$forYouState$1(i2, 1, (Continuation) obj5);
                homeViewModel$forYouState$12.L$0 = (UiState) obj;
                homeViewModel$forYouState$12.L$1 = (UiState) obj2;
                homeViewModel$forYouState$12.L$2 = (UiState) obj3;
                homeViewModel$forYouState$12.L$3 = (UiState) obj4;
                return homeViewModel$forYouState$12.invokeSuspend(unit);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:59:0x0106  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x010a  */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r13) {
        /*
            Method dump skipped, instructions count: 302
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.wikipedia.feed.HomeViewModel$forYouState$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
