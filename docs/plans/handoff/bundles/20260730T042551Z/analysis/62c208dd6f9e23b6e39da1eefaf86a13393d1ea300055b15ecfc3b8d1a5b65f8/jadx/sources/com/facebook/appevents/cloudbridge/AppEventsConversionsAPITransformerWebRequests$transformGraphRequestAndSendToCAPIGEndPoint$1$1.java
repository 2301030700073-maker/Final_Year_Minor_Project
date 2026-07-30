package com.facebook.appevents.cloudbridge;

import com.facebook.internal.Utility;
import defpackage.AbstractC0459Qp;
import defpackage.C0173Do;
import defpackage.C3206kJ;
import defpackage.E8;
import defpackage.InterfaceC3641rk;
import java.util.HashSet;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public final class AppEventsConversionsAPITransformerWebRequests$transformGraphRequestAndSendToCAPIGEndPoint$1$1 extends AbstractC0459Qp implements InterfaceC3641rk<String, Integer, C3206kJ> {
    final /* synthetic */ List<Map<String, Object>> $processedEvents;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public AppEventsConversionsAPITransformerWebRequests$transformGraphRequestAndSendToCAPIGEndPoint$1$1(List<? extends Map<String, ? extends Object>> list) {
        super(2);
        this.$processedEvents = list;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: invoke$lambda-0, reason: not valid java name */
    public static final void m5344invoke$lambda0(Integer num, List list) {
        HashSet hashSet;
        C0173Do.m401try(list, "$processedEvents");
        hashSet = AppEventsConversionsAPITransformerWebRequests.ACCEPTABLE_HTTP_RESPONSE;
        if (E8.d(hashSet, num)) {
            return;
        }
        AppEventsConversionsAPITransformerWebRequests.INSTANCE.handleError$facebook_core_release(num, list, 5);
    }

    @Override // defpackage.InterfaceC3641rk
    public /* bridge */ /* synthetic */ C3206kJ invoke(String str, Integer num) {
        invoke2(str, num);
        return C3206kJ.f13965do;
    }

    /* renamed from: invoke, reason: avoid collision after fix types in other method */
    public final void invoke2(String str, final Integer num) {
        Utility utility = Utility.INSTANCE;
        final List<Map<String, Object>> list = this.$processedEvents;
        Utility.runOnNonUiThread(new Runnable() { // from class: com.facebook.appevents.cloudbridge.do
            @Override // java.lang.Runnable
            public final void run() {
                AppEventsConversionsAPITransformerWebRequests$transformGraphRequestAndSendToCAPIGEndPoint$1$1.m5344invoke$lambda0(num, list);
            }
        });
    }
}
