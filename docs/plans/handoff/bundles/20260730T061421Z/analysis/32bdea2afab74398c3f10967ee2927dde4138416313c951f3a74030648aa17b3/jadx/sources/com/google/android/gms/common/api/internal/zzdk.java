package com.google.android.gms.common.api.internal;

import android.os.Bundle;
import b.i.b.r;
import c.b.a.c.d.g.u.v;

/* loaded from: classes.dex */
public final class zzdk extends r {

    /* renamed from: a, reason: collision with root package name */
    public v f3387a = new v();

    @Override // b.i.b.r
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setRetainInstance(true);
    }

    @Override // b.i.b.r
    public final void onDestroy() {
        super.onDestroy();
        this.f3387a.b(getActivity());
    }

    @Override // b.i.b.r
    public final void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        this.f3387a.a();
    }
}
