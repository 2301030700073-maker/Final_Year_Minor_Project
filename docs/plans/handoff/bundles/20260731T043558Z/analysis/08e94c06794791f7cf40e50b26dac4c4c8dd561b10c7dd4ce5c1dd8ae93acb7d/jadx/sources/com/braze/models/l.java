package com.braze.models;

import kotlin.jvm.internal.Intrinsics;

/* loaded from: classes2.dex */
public final class l extends n {
    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public l() {
        /*
            r6 = this;
            com.braze.models.o r1 = new com.braze.models.o
            java.util.UUID r0 = java.util.UUID.randomUUID()
            java.lang.String r2 = "randomUUID(...)"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r0, r2)
            r1.<init>(r0)
            double r2 = com.braze.support.DateTimeUtils.nowInSecondsPrecise()
            java.lang.String r0 = "sessionId"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r1, r0)
            r5 = 0
            r4 = 0
            r0 = r6
            r0.<init>(r1, r2, r4, r5)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.braze.models.l.<init>():void");
    }

    @Override // com.braze.models.n
    public final Double d() {
        return this.c;
    }

    @Override // com.braze.models.n
    public final String toString() {
        return "\nMutableSession(sessionId=" + this.f160a + ", startTime=" + this.b + ", endTime=" + this.c + ", isSealed=" + this.d + ", duration=" + c() + ')';
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public l(o sessionId, double d, Double d2, boolean z) {
        super(sessionId, d, d2, z);
        Intrinsics.checkNotNullParameter(sessionId, "sessionId");
    }
}
