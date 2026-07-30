package com.google.android.play.core.integrity;

import defpackage.FG;

/* loaded from: classes3.dex */
final class aa implements IntegrityManager {
    private final aj a;

    public aa(aj ajVar) {
        this.a = ajVar;
    }

    @Override // com.google.android.play.core.integrity.IntegrityManager
    public final FG<IntegrityTokenResponse> requestIntegrityToken(IntegrityTokenRequest integrityTokenRequest) {
        return this.a.c(integrityTokenRequest);
    }
}
