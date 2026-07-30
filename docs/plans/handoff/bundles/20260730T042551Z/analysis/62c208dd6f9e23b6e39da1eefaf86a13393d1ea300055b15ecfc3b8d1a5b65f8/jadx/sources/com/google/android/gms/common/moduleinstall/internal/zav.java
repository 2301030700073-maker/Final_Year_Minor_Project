package com.google.android.gms.common.moduleinstall.internal;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.IStatusCallback;
import com.google.android.gms.common.api.internal.TaskUtil;
import defpackage.GG;

/* loaded from: classes.dex */
final class zav extends IStatusCallback.Stub {
    final /* synthetic */ GG zaa;

    public zav(zay zayVar, GG gg) {
        this.zaa = gg;
    }

    @Override // com.google.android.gms.common.api.internal.IStatusCallback
    public final void onResult(Status status) {
        TaskUtil.trySetResultOrApiException(status, Boolean.TRUE, this.zaa);
    }
}
