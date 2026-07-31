package com.fsck.k9.controller.push;

import kotlin.jvm.functions.Function0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class AccountPushController$$ExternalSyntheticLambda0 implements Function0 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ AccountPushController f$0;

    public /* synthetic */ AccountPushController$$ExternalSyntheticLambda0(AccountPushController accountPushController, int i) {
        this.$r8$classId = i;
        this.f$0 = accountPushController;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        int i = this.$r8$classId;
        AccountPushController accountPushController = this.f$0;
        switch (i) {
            case 0:
                return "Stopping push controller for account " + accountPushController.accountId;
            case 1:
                return "Starting push controller for account " + accountPushController.accountId;
            default:
                return "Reconnecting push controller for account " + accountPushController.accountId;
        }
    }
}
