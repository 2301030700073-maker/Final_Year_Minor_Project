package com.google.android.gms.common.api.internal;

import android.app.Fragment;
import android.os.Bundle;
import c.b.a.c.d.g.u.v;

/* loaded from: classes.dex */
public final class zzci extends Fragment {

    /* renamed from: a, reason: collision with root package name */
    public v f3384a = new v();

    @Override // android.app.Fragment
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setRetainInstance(true);
    }

    @Override // android.app.Fragment
    public final void onDestroy() {
        super.onDestroy();
        this.f3384a.b(getActivity());
    }

    @Override // android.app.Fragment
    public final void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        this.f3384a.a();
    }
}
