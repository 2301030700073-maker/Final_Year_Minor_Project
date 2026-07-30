package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.facebook.appevents.AppEventsConstants;
import com.facebook.internal.NativeProtocol;
import com.google.android.gms.common.util.CollectionUtils;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes.dex */
public final class zzcfz extends com.google.android.gms.ads.internal.client.zzea {
    private final zzcbs zza;
    private final boolean zzc;
    private final boolean zzd;
    private int zze;
    private com.google.android.gms.ads.internal.client.zzee zzf;
    private boolean zzg;
    private float zzi;
    private float zzj;
    private float zzk;
    private boolean zzl;
    private boolean zzm;
    private zzbhe zzn;
    private final Object zzb = new Object();
    private boolean zzh = true;

    public zzcfz(zzcbs zzcbsVar, float f, boolean z, boolean z2) {
        this.zza = zzcbsVar;
        this.zzi = f;
        this.zzc = z;
        this.zzd = z2;
    }

    private final void zzw(final int i, final int i2, final boolean z, final boolean z2) {
        zzbzw.zzf.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzcfy
            @Override // java.lang.Runnable
            public final void run() {
                zzcfz.this.zzd(i, i2, z, z2);
            }
        });
    }

    private final void zzx(String str, Map map) {
        final HashMap hashMap = map == null ? new HashMap() : new HashMap(map);
        hashMap.put(NativeProtocol.WEB_DIALOG_ACTION, str);
        zzbzw.zzf.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzcfx
            @Override // java.lang.Runnable
            public final void run() {
                zzcfz.this.zzr(hashMap);
            }
        });
    }

    public final void zzc(float f, float f2, int i, boolean z, float f3) {
        boolean z2;
        boolean z3;
        int i2;
        synchronized (this.zzb) {
            z2 = true;
            if (f2 == this.zzi && f3 == this.zzk) {
                z2 = false;
            }
            this.zzi = f2;
            if (!((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzmF)).booleanValue()) {
                this.zzj = f;
            }
            z3 = this.zzh;
            this.zzh = z;
            i2 = this.zze;
            this.zze = i;
            float f4 = this.zzk;
            this.zzk = f3;
            if (Math.abs(f3 - f4) > 1.0E-4f) {
                this.zza.zzF().invalidate();
            }
        }
        if (z2) {
            try {
                zzbhe zzbheVar = this.zzn;
                if (zzbheVar != null) {
                    zzbheVar.zze();
                }
            } catch (RemoteException e) {
                com.google.android.gms.ads.internal.util.client.zzo.zzl("#007 Could not call remote method.", e);
            }
        }
        zzw(i2, i, z3, z);
    }

    public final /* synthetic */ void zzd(int i, int i2, boolean z, boolean z2) {
        int i3;
        boolean z3;
        boolean z4;
        com.google.android.gms.ads.internal.client.zzee zzeeVar;
        com.google.android.gms.ads.internal.client.zzee zzeeVar2;
        com.google.android.gms.ads.internal.client.zzee zzeeVar3;
        synchronized (this.zzb) {
            boolean z5 = this.zzg;
            if (z5 || i2 != 1) {
                i3 = i2;
                z3 = false;
            } else {
                i2 = 1;
                i3 = 1;
                z3 = true;
            }
            boolean z6 = i != i2;
            if (z6 && i3 == 1) {
                z4 = true;
                i3 = 1;
            } else {
                z4 = false;
            }
            boolean z7 = z6 && i3 == 2;
            boolean z8 = z6 && i3 == 3;
            this.zzg = z5 || z3;
            if (z3) {
                try {
                    com.google.android.gms.ads.internal.client.zzee zzeeVar4 = this.zzf;
                    if (zzeeVar4 != null) {
                        zzeeVar4.zzi();
                    }
                } catch (RemoteException e) {
                    com.google.android.gms.ads.internal.util.client.zzo.zzl("#007 Could not call remote method.", e);
                }
            }
            if (z4 && (zzeeVar3 = this.zzf) != null) {
                zzeeVar3.zzh();
            }
            if (z7 && (zzeeVar2 = this.zzf) != null) {
                zzeeVar2.zzg();
            }
            if (z8) {
                com.google.android.gms.ads.internal.client.zzee zzeeVar5 = this.zzf;
                if (zzeeVar5 != null) {
                    zzeeVar5.zze();
                }
                this.zza.zzw();
            }
            if (z != z2 && (zzeeVar = this.zzf) != null) {
                zzeeVar.zzf(z2);
            }
        }
    }

    @Override // com.google.android.gms.ads.internal.client.zzeb
    public final float zze() {
        float f;
        synchronized (this.zzb) {
            f = this.zzk;
        }
        return f;
    }

    @Override // com.google.android.gms.ads.internal.client.zzeb
    public final float zzf() {
        float f;
        synchronized (this.zzb) {
            f = this.zzj;
        }
        return f;
    }

    @Override // com.google.android.gms.ads.internal.client.zzeb
    public final float zzg() {
        float f;
        synchronized (this.zzb) {
            f = this.zzi;
        }
        return f;
    }

    @Override // com.google.android.gms.ads.internal.client.zzeb
    public final int zzh() {
        int i;
        synchronized (this.zzb) {
            i = this.zze;
        }
        return i;
    }

    @Override // com.google.android.gms.ads.internal.client.zzeb
    public final com.google.android.gms.ads.internal.client.zzee zzi() {
        com.google.android.gms.ads.internal.client.zzee zzeeVar;
        synchronized (this.zzb) {
            zzeeVar = this.zzf;
        }
        return zzeeVar;
    }

    @Override // com.google.android.gms.ads.internal.client.zzeb
    public final void zzj(boolean z) {
        zzx(true != z ? "unmute" : "mute", null);
    }

    @Override // com.google.android.gms.ads.internal.client.zzeb
    public final void zzk() {
        zzx("pause", null);
    }

    @Override // com.google.android.gms.ads.internal.client.zzeb
    public final void zzl() {
        zzx("play", null);
    }

    @Override // com.google.android.gms.ads.internal.client.zzeb
    public final void zzm(com.google.android.gms.ads.internal.client.zzee zzeeVar) {
        synchronized (this.zzb) {
            this.zzf = zzeeVar;
        }
    }

    @Override // com.google.android.gms.ads.internal.client.zzeb
    public final void zzn() {
        zzx("stop", null);
    }

    @Override // com.google.android.gms.ads.internal.client.zzeb
    public final boolean zzo() {
        boolean z;
        Object obj = this.zzb;
        boolean zzp = zzp();
        synchronized (obj) {
            z = false;
            if (!zzp) {
                try {
                    if (this.zzm && this.zzd) {
                        z = true;
                    }
                } finally {
                }
            }
        }
        return z;
    }

    @Override // com.google.android.gms.ads.internal.client.zzeb
    public final boolean zzp() {
        boolean z;
        synchronized (this.zzb) {
            z = false;
            if (this.zzc && this.zzl) {
                z = true;
            }
        }
        return z;
    }

    @Override // com.google.android.gms.ads.internal.client.zzeb
    public final boolean zzq() {
        boolean z;
        synchronized (this.zzb) {
            z = this.zzh;
        }
        return z;
    }

    public final /* synthetic */ void zzr(Map map) {
        this.zza.zzd("pubVideoCmd", map);
    }

    public final void zzs(com.google.android.gms.ads.internal.client.zzga zzgaVar) {
        Object obj = this.zzb;
        boolean z = zzgaVar.zza;
        boolean z2 = zzgaVar.zzb;
        boolean z3 = zzgaVar.zzc;
        synchronized (obj) {
            this.zzl = z2;
            this.zzm = z3;
        }
        zzx("initialState", CollectionUtils.mapOf("muteStart", true != z ? AppEventsConstants.EVENT_PARAM_VALUE_NO : AppEventsConstants.EVENT_PARAM_VALUE_YES, "customControlsRequested", true != z2 ? AppEventsConstants.EVENT_PARAM_VALUE_NO : AppEventsConstants.EVENT_PARAM_VALUE_YES, "clickToExpandRequested", true != z3 ? AppEventsConstants.EVENT_PARAM_VALUE_NO : AppEventsConstants.EVENT_PARAM_VALUE_YES));
    }

    public final void zzt(float f) {
        synchronized (this.zzb) {
            this.zzj = f;
        }
    }

    public final void zzu() {
        boolean z;
        int i;
        synchronized (this.zzb) {
            z = this.zzh;
            i = this.zze;
            this.zze = 3;
        }
        zzw(i, 3, z, z);
    }

    public final void zzv(zzbhe zzbheVar) {
        synchronized (this.zzb) {
            this.zzn = zzbheVar;
        }
    }
}
