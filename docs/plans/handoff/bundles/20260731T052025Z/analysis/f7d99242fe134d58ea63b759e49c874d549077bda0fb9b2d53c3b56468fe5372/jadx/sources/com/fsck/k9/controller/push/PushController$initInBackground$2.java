package com.fsck.k9.controller.push;

import kotlin.Function;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.FunctionReferenceImpl;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class PushController$initInBackground$2 implements FunctionAdapter {
    public final /* synthetic */ PushController $tmp0;

    public PushController$initInBackground$2(PushController pushController) {
        this.$tmp0 = pushController;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof PushController$initInBackground$2) {
            return getFunctionDelegate().equals(((FunctionAdapter) obj).getFunctionDelegate());
        }
        return false;
    }

    @Override // kotlin.jvm.internal.FunctionAdapter
    public final Function getFunctionDelegate() {
        return new FunctionReferenceImpl(1, 0, PushController.class, this.$tmp0, "onBackendChanged", "onBackendChanged(Lnet/thunderbird/feature/account/AccountId;)V");
    }

    public final int hashCode() {
        return getFunctionDelegate().hashCode();
    }
}
