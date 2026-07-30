package defpackage;

import android.adservices.topics.GetTopicsRequest;
import android.annotation.SuppressLint;

@SuppressLint({"NewApi", "ClassVerificationFailure"})
/* loaded from: classes.dex */
public final class SH extends UH {
    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public SH(android.content.Context r2) {
        /*
            r1 = this;
            java.lang.Class<android.adservices.topics.TopicsManager> r0 = android.adservices.topics.TopicsManager.class
            java.lang.Object r2 = defpackage.C3245l.m7309final(r2, r0)
            java.lang.String r0 = "context.getSystemService…opicsManager::class.java)"
            defpackage.C0173Do.m399new(r2, r0)
            android.adservices.topics.TopicsManager r2 = (android.adservices.topics.TopicsManager) r2
            r1.<init>(r2)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.SH.<init>(android.content.Context):void");
    }

    @Override // defpackage.UH
    /* renamed from: throw, reason: not valid java name */
    public final GetTopicsRequest mo2127throw(C0630Yk c0630Yk) {
        C0173Do.m401try(c0630Yk, "request");
        GetTopicsRequest build = new GetTopicsRequest.Builder().setAdsSdkName(c0630Yk.m2946do()).setShouldRecordObservation(c0630Yk.m2947if()).build();
        C0173Do.m399new(build, "Builder()\n            .s…ion)\n            .build()");
        return build;
    }
}
