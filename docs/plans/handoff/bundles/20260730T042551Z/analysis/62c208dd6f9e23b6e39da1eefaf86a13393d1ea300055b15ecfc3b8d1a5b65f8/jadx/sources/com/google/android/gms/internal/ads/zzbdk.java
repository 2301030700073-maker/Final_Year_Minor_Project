package com.google.android.gms.internal.ads;

import android.content.ComponentName;
import android.content.Context;
import android.os.RemoteException;
import com.facebook.internal.NativeProtocol;
import defpackage.AbstractServiceConnectionC4046yc;
import defpackage.C3869vc;
import defpackage.C4105zc;
import java.util.concurrent.atomic.AtomicBoolean;

/* loaded from: classes.dex */
public final class zzbdk extends AbstractServiceConnectionC4046yc {
    public static final /* synthetic */ int zza = 0;
    private final AtomicBoolean zzb = new AtomicBoolean(false);
    private Context zzc;
    private zzdrw zzd;
    private C4105zc zze;
    private C3869vc zzf;

    private final void zzf(Context context) {
        String m8477if;
        if (this.zzf != null || context == null || (m8477if = C3869vc.m8477if(context)) == null) {
            return;
        }
        C3869vc.m8476do(context, m8477if, this);
    }

    @Override // defpackage.AbstractServiceConnectionC4046yc
    public final void onCustomTabsServiceConnected(ComponentName componentName, C3869vc c3869vc) {
        this.zzf = c3869vc;
        c3869vc.getClass();
        try {
            c3869vc.f16096do.mo1209synchronized(0L);
        } catch (RemoteException unused) {
        }
        this.zze = c3869vc.m8478for(new zzbdj(this));
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
        this.zzf = null;
        this.zze = null;
    }

    public final C4105zc zza() {
        if (this.zze == null) {
            zzbzw.zza.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzbdi
                @Override // java.lang.Runnable
                public final void run() {
                    zzbdk.this.zzc();
                }
            });
        }
        return this.zze;
    }

    public final void zzb(Context context, zzdrw zzdrwVar) {
        if (this.zzb.getAndSet(true)) {
            return;
        }
        this.zzc = context;
        this.zzd = zzdrwVar;
        zzf(context);
    }

    public final /* synthetic */ void zzc() {
        zzf(this.zzc);
    }

    public final /* synthetic */ void zzd(int i) {
        zzdrw zzdrwVar = this.zzd;
        if (zzdrwVar != null) {
            zzdrv zza2 = zzdrwVar.zza();
            zza2.zzb(NativeProtocol.WEB_DIALOG_ACTION, "cct_nav");
            zza2.zzb("cct_navs", String.valueOf(i));
            zza2.zzg();
        }
    }

    public final void zze(final int i) {
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzeF)).booleanValue() || this.zzd == null) {
            return;
        }
        zzbzw.zza.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzbdh
            @Override // java.lang.Runnable
            public final void run() {
                zzbdk.this.zzd(i);
            }
        });
    }
}
