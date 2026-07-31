package com.google.android.play.core.integrity;

import com.google.android.gms.tasks.Task;
import com.google.android.play.core.integrity.StandardIntegrityManager;

/* compiled from: com.google.android.play:integrity@@1.3.0 */
/* loaded from: classes4.dex */
final class bt {

    /* renamed from: a, reason: collision with root package name */
    private final bn f332a;

    bt(bn bnVar) {
        this.f332a = bnVar;
    }

    final /* synthetic */ Task a(long j, long j2, int i, StandardIntegrityManager.StandardIntegrityTokenRequest standardIntegrityTokenRequest) {
        return this.f332a.d(standardIntegrityTokenRequest.a(), j, j2, 0);
    }
}
