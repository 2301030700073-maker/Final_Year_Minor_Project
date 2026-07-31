package com.google.android.play.core.integrity;

/* compiled from: com.google.android.play:integrity@@1.3.0 */
/* loaded from: classes4.dex */
final class a extends ap {

    /* renamed from: a, reason: collision with root package name */
    private String f295a;
    private y b;

    a() {
    }

    @Override // com.google.android.play.core.integrity.ap
    final ap a(y yVar) {
        this.b = yVar;
        return this;
    }

    @Override // com.google.android.play.core.integrity.ap
    final ap b(String str) {
        this.f295a = str;
        return this;
    }

    @Override // com.google.android.play.core.integrity.ap
    final aq c() {
        y yVar;
        String str = this.f295a;
        if (str != null && (yVar = this.b) != null) {
            return new aq(str, yVar);
        }
        StringBuilder sb = new StringBuilder();
        if (this.f295a == null) {
            sb.append(" token");
        }
        if (this.b == null) {
            sb.append(" integrityDialogWrapper");
        }
        throw new IllegalStateException("Missing required properties:".concat(sb.toString()));
    }
}
