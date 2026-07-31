package com.google.android.gms.internal.ads;

import android.os.Handler;
import android.os.Looper;
import android.view.View;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.TimeUnit;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzfrc implements zzfqd {
    private static final zzfrc zza = new zzfrc();
    private static final Handler zzb = new Handler(Looper.getMainLooper());
    private static Handler zzc = null;
    private static final Runnable zzk = new zzfqy();
    private static final Runnable zzl = new zzfqz();
    private int zze;
    private long zzj;
    private final List zzd = new ArrayList();
    private final List zzf = new ArrayList();
    private final zzfqv zzh = new zzfqv();
    private final zzfqf zzg = new zzfqf();
    private final zzfqw zzi = new zzfqw(new zzfrf());

    zzfrc() {
    }

    public static zzfrc zzb() {
        return zza;
    }

    private final void zzk(View view, zzfqe zzfqeVar, JSONObject jSONObject, int i, boolean z) {
        zzfqeVar.zzb(view, jSONObject, this, i == 1, z);
    }

    private static final void zzl() {
        Handler handler = zzc;
        if (handler != null) {
            handler.removeCallbacks(zzl);
            zzc = null;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzfqd
    public final void zza(View view, zzfqe zzfqeVar, JSONObject jSONObject, boolean z) {
        zzfqv zzfqvVar;
        int zzl2;
        boolean z2;
        if (zzfqt.zza(view) != null || (zzl2 = (zzfqvVar = this.zzh).zzl(view)) == 3) {
            return;
        }
        JSONObject zza2 = zzfqeVar.zza(view);
        zzfqo.zze(jSONObject, zza2);
        String zzg = zzfqvVar.zzg(view);
        if (zzg != null) {
            zzfqo.zzd(zza2, zzg);
            try {
                zza2.put("hasWindowFocus", Boolean.valueOf(this.zzh.zzj(view)));
            } catch (JSONException e) {
                zzfqp.zza("Error with setting has window focus", e);
            }
            Boolean valueOf = Boolean.valueOf(this.zzh.zzk(zzg));
            if (valueOf.booleanValue()) {
                try {
                    zza2.put("isPipActive", valueOf);
                } catch (JSONException e2) {
                    zzfqp.zza("Error with setting is picture-in-picture active", e2);
                }
            }
            this.zzh.zzf();
        } else {
            zzfqu zzi = zzfqvVar.zzi(view);
            if (zzi != null) {
                zzfpv zzb2 = zzi.zzb();
                JSONArray jSONArray = new JSONArray();
                ArrayList zzc2 = zzi.zzc();
                int size = zzc2.size();
                for (int i = 0; i < size; i++) {
                    jSONArray.put((String) zzc2.get(i));
                }
                try {
                    zza2.put("isFriendlyObstructionFor", jSONArray);
                    zza2.put("friendlyObstructionClass", zzb2.zzb());
                    zza2.put("friendlyObstructionPurpose", zzb2.zzc());
                    zza2.put("friendlyObstructionReason", zzb2.zzd());
                } catch (JSONException e3) {
                    zzfqp.zza("Error with setting friendly obstruction", e3);
                }
                z2 = true;
            } else {
                z2 = false;
            }
            zzk(view, zzfqeVar, zza2, zzl2, z || z2);
        }
        this.zze++;
    }

    public final void zzc() {
        if (zzc == null) {
            Handler handler = new Handler(Looper.getMainLooper());
            zzc = handler;
            handler.post(zzk);
            zzc.postDelayed(zzl, 200L);
        }
    }

    public final void zzd() {
        zzl();
        this.zzd.clear();
        zzb.post(new zzfqx(this));
    }

    public final void zze() {
        zzl();
    }

    final /* synthetic */ void zzf() {
        this.zze = 0;
        this.zzf.clear();
        for (zzfoy zzfoyVar : zzfps.zza().zzf()) {
        }
        this.zzj = System.nanoTime();
        zzfqv zzfqvVar = this.zzh;
        zzfqvVar.zzd();
        zzfqf zzfqfVar = this.zzg;
        long nanoTime = System.nanoTime();
        zzfqe zza2 = zzfqfVar.zza();
        if (zzfqvVar.zzb().size() > 0) {
            Iterator it = zzfqvVar.zzb().iterator();
            while (it.hasNext()) {
                String str = (String) it.next();
                JSONObject zza3 = zza2.zza(null);
                View zzh = zzfqvVar.zzh(str);
                zzfqe zzb2 = zzfqfVar.zzb();
                String zzc2 = zzfqvVar.zzc(str);
                if (zzc2 != null) {
                    JSONObject zza4 = zzb2.zza(zzh);
                    zzfqo.zzd(zza4, str);
                    try {
                        zza4.put("notVisibleReason", zzc2);
                    } catch (JSONException e) {
                        zzfqp.zza("Error with setting not visible reason", e);
                    }
                    zzfqo.zze(zza3, zza4);
                }
                zzfqo.zzf(zza3);
                HashSet hashSet = new HashSet();
                hashSet.add(str);
                this.zzi.zzb(zza3, hashSet, nanoTime);
            }
        }
        zzfqv zzfqvVar2 = this.zzh;
        if (zzfqvVar2.zza().size() > 0) {
            JSONObject zza5 = zza2.zza(null);
            zzk(null, zza2, zza5, 1, false);
            zzfqo.zzf(zza5);
            this.zzi.zza(zza5, zzfqvVar2.zza(), nanoTime);
        } else {
            this.zzi.zzc();
        }
        zzfqvVar2.zze();
        long nanoTime2 = System.nanoTime() - this.zzj;
        List<zzfrb> list = this.zzd;
        if (list.size() > 0) {
            for (zzfrb zzfrbVar : list) {
                TimeUnit.NANOSECONDS.toMillis(nanoTime2);
                zzfrbVar.zzb();
                if (zzfrbVar instanceof zzfra) {
                    ((zzfra) zzfrbVar).zza();
                }
            }
        }
        zzfqc.zza().zzc();
    }

    final /* synthetic */ zzfqw zzh() {
        return this.zzi;
    }
}
