package com.android.billingclient.api;

import defpackage.Ay;
import defpackage.C3967xE;
import defpackage.C4009xy;
import defpackage.C4068yy;
import defpackage.D;
import defpackage.InterfaceC0269Ia;
import defpackage.InterfaceC3487p5;
import defpackage.InterfaceC4085zE;
import defpackage.InterfaceC4127zy;
import java.util.Collections;
import java.util.List;

/* loaded from: classes.dex */
final class zzbm implements D, InterfaceC3487p5, InterfaceC0269Ia, InterfaceC4127zy, Ay, InterfaceC4085zE {
    public static native void nativeOnAcknowledgePurchaseResponse(int i, String str, long j);

    public static native void nativeOnBillingServiceDisconnected();

    public static native void nativeOnBillingSetupFinished(int i, String str, long j);

    public static native void nativeOnConsumePurchaseResponse(int i, String str, String str2, long j);

    public static native void nativeOnPriceChangeConfirmationResult(int i, String str, long j);

    public static native void nativeOnPurchaseHistoryResponse(int i, String str, C4068yy[] c4068yyArr, long j);

    public static native void nativeOnPurchasesUpdated(int i, String str, C4009xy[] c4009xyArr);

    public static native void nativeOnQueryPurchasesResponse(int i, String str, C4009xy[] c4009xyArr, long j);

    public static native void nativeOnSkuDetailsResponse(int i, String str, C3967xE[] c3967xEArr, long j);

    @Override // defpackage.InterfaceC0269Ia
    /* renamed from: case */
    public final void mo957case(Cdo cdo, String str) {
        nativeOnConsumePurchaseResponse(cdo.f9106do, cdo.f9107do, str, 0L);
    }

    @Override // defpackage.InterfaceC4127zy
    /* renamed from: do, reason: not valid java name */
    public final void mo5222do(Cdo cdo, List<C4009xy> list) {
        nativeOnQueryPurchasesResponse(cdo.f9106do, cdo.f9107do, (C4009xy[]) list.toArray(new C4009xy[list.size()]), 0L);
    }

    @Override // defpackage.InterfaceC3487p5
    /* renamed from: for, reason: not valid java name */
    public final void mo5223for() {
        nativeOnBillingServiceDisconnected();
    }

    @Override // defpackage.InterfaceC3487p5
    /* renamed from: goto, reason: not valid java name */
    public final void mo5224goto(Cdo cdo) {
        nativeOnBillingSetupFinished(cdo.f9106do, cdo.f9107do, 0L);
    }

    @Override // defpackage.D
    /* renamed from: if */
    public final void mo324if(Cdo cdo) {
        nativeOnAcknowledgePurchaseResponse(cdo.f9106do, cdo.f9107do, 0L);
    }

    @Override // defpackage.InterfaceC4085zE
    /* renamed from: new, reason: not valid java name */
    public final void mo5225new(Cdo cdo, List<C3967xE> list) {
        if (list == null) {
            list = Collections.emptyList();
        }
        nativeOnSkuDetailsResponse(cdo.f9106do, cdo.f9107do, (C3967xE[]) list.toArray(new C3967xE[list.size()]), 0L);
    }

    @Override // defpackage.Ay
    /* renamed from: try */
    public final void mo133try(Cdo cdo, List<C4009xy> list) {
        if (list == null) {
            list = Collections.emptyList();
        }
        nativeOnPurchasesUpdated(cdo.f9106do, cdo.f9107do, (C4009xy[]) list.toArray(new C4009xy[list.size()]));
    }
}
