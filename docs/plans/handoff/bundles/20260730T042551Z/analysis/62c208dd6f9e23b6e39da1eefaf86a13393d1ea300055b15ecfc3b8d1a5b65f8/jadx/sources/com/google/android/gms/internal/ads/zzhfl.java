package com.google.android.gms.internal.ads;

import android.content.ComponentName;
import defpackage.AbstractServiceConnectionC4046yc;
import defpackage.C3869vc;
import java.lang.ref.WeakReference;

/* loaded from: classes.dex */
public final class zzhfl extends AbstractServiceConnectionC4046yc {
    private final WeakReference zza;

    public zzhfl(zzbdm zzbdmVar) {
        this.zza = new WeakReference(zzbdmVar);
    }

    @Override // defpackage.AbstractServiceConnectionC4046yc
    public final void onCustomTabsServiceConnected(ComponentName componentName, C3869vc c3869vc) {
        zzbdm zzbdmVar = (zzbdm) this.zza.get();
        if (zzbdmVar != null) {
            zzbdmVar.zzc(c3869vc);
        }
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
        zzbdm zzbdmVar = (zzbdm) this.zza.get();
        if (zzbdmVar != null) {
            zzbdmVar.zzd();
        }
    }
}
