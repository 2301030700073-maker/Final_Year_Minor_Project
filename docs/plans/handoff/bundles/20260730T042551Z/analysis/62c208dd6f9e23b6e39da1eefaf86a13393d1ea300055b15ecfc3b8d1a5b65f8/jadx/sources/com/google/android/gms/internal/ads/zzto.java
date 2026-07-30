package com.google.android.gms.internal.ads;

import android.os.Handler;
import java.util.HashMap;
import java.util.Iterator;

/* loaded from: classes.dex */
public abstract class zzto extends zztf {
    private final HashMap zza = new HashMap();
    private Handler zzb;
    private zzgy zzc;

    public abstract void zzA(Object obj, zzui zzuiVar, zzbq zzbqVar);

    public final void zzB(final Object obj, zzui zzuiVar) {
        zzcw.zzd(!this.zza.containsKey(obj));
        zzuh zzuhVar = new zzuh() { // from class: com.google.android.gms.internal.ads.zztl
            @Override // com.google.android.gms.internal.ads.zzuh
            public final void zza(zzui zzuiVar2, zzbq zzbqVar) {
                zzto.this.zzA(obj, zzuiVar2, zzbqVar);
            }
        };
        zztm zztmVar = new zztm(this, obj);
        this.zza.put(obj, new zztn(zzuiVar, zzuhVar, zztmVar));
        Handler handler = this.zzb;
        handler.getClass();
        zzuiVar.zzh(handler, zztmVar);
        Handler handler2 = this.zzb;
        handler2.getClass();
        zzuiVar.zzg(handler2, zztmVar);
        zzuiVar.zzm(zzuhVar, this.zzc, zzb());
        if (zzu()) {
            return;
        }
        zzuiVar.zzi(zzuhVar);
    }

    @Override // com.google.android.gms.internal.ads.zztf
    public final void zzj() {
        for (zztn zztnVar : this.zza.values()) {
            zztnVar.zza.zzi(zztnVar.zzb);
        }
    }

    @Override // com.google.android.gms.internal.ads.zztf
    public final void zzl() {
        for (zztn zztnVar : this.zza.values()) {
            zztnVar.zza.zzk(zztnVar.zzb);
        }
    }

    @Override // com.google.android.gms.internal.ads.zztf
    public void zzn(zzgy zzgyVar) {
        this.zzc = zzgyVar;
        this.zzb = zzei.zzy(null);
    }

    @Override // com.google.android.gms.internal.ads.zztf
    public void zzq() {
        for (zztn zztnVar : this.zza.values()) {
            zztnVar.zza.zzp(zztnVar.zzb);
            zztnVar.zza.zzs(zztnVar.zzc);
            zztnVar.zza.zzr(zztnVar.zzc);
        }
        this.zza.clear();
    }

    public int zzw(Object obj, int i) {
        return 0;
    }

    public long zzx(Object obj, long j, zzug zzugVar) {
        return j;
    }

    public zzug zzy(Object obj, zzug zzugVar) {
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.zzui
    public void zzz() {
        Iterator it = this.zza.values().iterator();
        while (it.hasNext()) {
            ((zztn) it.next()).zza.zzz();
        }
    }
}
