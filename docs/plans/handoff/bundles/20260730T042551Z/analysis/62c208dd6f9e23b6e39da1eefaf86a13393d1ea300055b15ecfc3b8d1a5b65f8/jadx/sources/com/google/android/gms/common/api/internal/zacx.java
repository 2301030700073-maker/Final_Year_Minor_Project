package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.api.ApiException;
import com.google.android.gms.common.api.Status;
import defpackage.FG;
import defpackage.InterfaceC0598Xa;

/* loaded from: classes.dex */
final class zacx implements InterfaceC0598Xa {
    @Override // defpackage.InterfaceC0598Xa
    public final /* bridge */ /* synthetic */ Object then(FG fg) {
        if (((Boolean) fg.mo592class()).booleanValue()) {
            return null;
        }
        throw new ApiException(new Status(13, "listener already unregistered"));
    }
}
