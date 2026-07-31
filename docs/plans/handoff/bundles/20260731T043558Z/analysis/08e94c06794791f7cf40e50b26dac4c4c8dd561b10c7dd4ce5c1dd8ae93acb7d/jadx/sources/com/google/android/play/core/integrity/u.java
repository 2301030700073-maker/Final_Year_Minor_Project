package com.google.android.play.core.integrity;

import android.content.Context;

/* compiled from: com.google.android.play:integrity@@1.3.0 */
/* loaded from: classes4.dex */
final class u implements av {

    /* renamed from: a, reason: collision with root package name */
    private Context f344a;

    private u() {
    }

    /* synthetic */ u(t tVar) {
    }

    public final u a(Context context) {
        context.getClass();
        this.f344a = context;
        return this;
    }

    @Override // com.google.android.play.core.integrity.av
    public final aw b() {
        com.google.android.play.integrity.internal.am.a(this.f344a, Context.class);
        return new w(this.f344a, null);
    }
}
