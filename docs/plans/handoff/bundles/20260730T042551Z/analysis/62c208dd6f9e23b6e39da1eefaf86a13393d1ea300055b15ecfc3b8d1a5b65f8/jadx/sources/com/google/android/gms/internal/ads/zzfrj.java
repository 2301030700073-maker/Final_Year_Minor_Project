package com.google.android.gms.internal.ads;

import defpackage.FG;
import defpackage.InterfaceC0399Nv;
import defpackage.InterfaceFutureC3942wq;
import defpackage.W6;

/* loaded from: classes.dex */
public final class zzfrj {
    public static InterfaceFutureC3942wq zza(FG fg, W6 w6) {
        final zzfri zzfriVar = new zzfri(fg, null);
        fg.mo597for(zzgcz.zzc(), new InterfaceC0399Nv() { // from class: com.google.android.gms.internal.ads.zzfrh
            @Override // defpackage.InterfaceC0399Nv
            public final void onComplete(FG fg2) {
                zzfri zzfriVar2 = zzfri.this;
                if (fg2.mo596final()) {
                    zzfriVar2.cancel(false);
                    return;
                }
                if (fg2.mo604throw()) {
                    zzfriVar2.zzc(fg2.mo592class());
                    return;
                }
                Exception mo591catch = fg2.mo591catch();
                if (mo591catch == null) {
                    throw new IllegalStateException();
                }
                zzfriVar2.zzd(mo591catch);
            }
        });
        return zzfriVar;
    }
}
