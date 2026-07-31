package org.wikipedia.dataclient.donate;

import java.util.ArrayList;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class DonationConfigHelper$getConfig$2 extends SuspendLambda implements Function2 {
    public final /* synthetic */ ArrayList $campaignList;
    public final /* synthetic */ int $r8$classId;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ DonationConfigHelper$getConfig$2(ArrayList arrayList, Continuation continuation, int i) {
        super(2, continuation);
        this.$r8$classId = i;
        this.$campaignList = arrayList;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        int i = this.$r8$classId;
        ArrayList arrayList = this.$campaignList;
        switch (i) {
            case 0:
                return new DonationConfigHelper$getConfig$2(arrayList, continuation, 0);
            default:
                return new DonationConfigHelper$getConfig$2(arrayList, continuation, 1);
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
        return ((DonationConfigHelper$getConfig$2) create(coroutineScope, continuation)).invokeSuspend(unit);
    }

    /* JADX WARN: Removed duplicated region for block: B:102:0x0087  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0085  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x009c  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x00c9  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x00e0  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0116 A[LOOP:1: B:33:0x0110->B:35:0x0116, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:40:0x0142  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x017a A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:82:0x013c A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:91:0x00d0  */
    /* JADX WARN: Removed duplicated region for block: B:92:0x009e  */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r11) {
        /*
            Method dump skipped, instructions count: 632
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.wikipedia.dataclient.donate.DonationConfigHelper$getConfig$2.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
