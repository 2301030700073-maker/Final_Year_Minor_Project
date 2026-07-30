package com.google.android.gms.common.moduleinstall.internal;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.TaskUtil;
import defpackage.GG;

/* loaded from: classes.dex */
final class zas extends zaa {
    final /* synthetic */ GG zaa;

    public zas(zay zayVar, GG gg) {
        this.zaa = gg;
    }

    @Override // com.google.android.gms.common.moduleinstall.internal.zaa, com.google.android.gms.common.moduleinstall.internal.zae
    public final void zab(Status status) {
        TaskUtil.trySetResultOrApiException(status, null, this.zaa);
    }
}
