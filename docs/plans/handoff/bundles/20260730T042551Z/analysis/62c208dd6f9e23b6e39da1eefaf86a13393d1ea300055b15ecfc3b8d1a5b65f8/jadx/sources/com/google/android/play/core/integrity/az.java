package com.google.android.play.core.integrity;

import com.google.android.play.core.integrity.StandardIntegrityManager;
import defpackage.FG;
import defpackage.LG;
import defpackage.NF;

/* loaded from: classes3.dex */
final class az implements StandardIntegrityManager {
    private final bn a;
    private final bt b;

    public az(bn bnVar, bt btVar) {
        this.a = bnVar;
        this.b = btVar;
    }

    public final /* synthetic */ FG a(StandardIntegrityManager.PrepareIntegrityTokenRequest prepareIntegrityTokenRequest, Long l) {
        final long b = prepareIntegrityTokenRequest.b();
        final long longValue = l.longValue();
        prepareIntegrityTokenRequest.a();
        final bt btVar = this.b;
        final int i = 0;
        return LG.m1320try(new StandardIntegrityManager.StandardIntegrityTokenProvider(b, longValue, i) { // from class: com.google.android.play.core.integrity.bs
            public final /* synthetic */ long b;
            public final /* synthetic */ long c;

            @Override // com.google.android.play.core.integrity.StandardIntegrityManager.StandardIntegrityTokenProvider
            public final FG request(StandardIntegrityManager.StandardIntegrityTokenRequest standardIntegrityTokenRequest) {
                return bt.this.a(this.b, this.c, 0, standardIntegrityTokenRequest);
            }
        });
    }

    @Override // com.google.android.play.core.integrity.StandardIntegrityManager
    public final FG<StandardIntegrityManager.StandardIntegrityTokenProvider> prepareIntegrityToken(final StandardIntegrityManager.PrepareIntegrityTokenRequest prepareIntegrityTokenRequest) {
        long b = prepareIntegrityTokenRequest.b();
        prepareIntegrityTokenRequest.a();
        return this.a.e(b, 0).mo606while(new NF() { // from class: com.google.android.play.core.integrity.ay
            @Override // defpackage.NF
            public final FG then(Object obj) {
                return az.this.a(prepareIntegrityTokenRequest, (Long) obj);
            }
        });
    }
}
