package com.google.android.gms.common.api.internal;

import defpackage.FG;
import defpackage.GG;
import defpackage.InterfaceC0399Nv;
import java.util.Map;

/* loaded from: classes.dex */
final class zaac implements InterfaceC0399Nv {
    final /* synthetic */ GG zaa;
    final /* synthetic */ zaad zab;

    public zaac(zaad zaadVar, GG gg) {
        this.zab = zaadVar;
        this.zaa = gg;
    }

    @Override // defpackage.InterfaceC0399Nv
    public final void onComplete(FG fg) {
        Map map;
        map = this.zab.zab;
        map.remove(this.zaa);
    }
}
