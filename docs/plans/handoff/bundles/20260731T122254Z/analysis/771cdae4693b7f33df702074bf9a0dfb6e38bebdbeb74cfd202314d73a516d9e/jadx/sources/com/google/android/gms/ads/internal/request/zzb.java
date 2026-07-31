package com.google.android.gms.ads.internal.request;

import android.content.Context;
import android.text.TextUtils;
import com.google.android.gms.ads.internal.client.AdSizeParcel;
import com.google.android.gms.ads.internal.request.AdRequestInfoParcel;
import com.google.android.gms.ads.internal.request.zza;
import com.google.android.gms.ads.internal.request.zzc;
import com.google.android.gms.ads.internal.zzo;
import com.google.android.gms.internal.zzan;
import com.google.android.gms.internal.zzbk;
import com.google.android.gms.internal.zzdy;
import com.google.android.gms.internal.zzgd;
import com.google.android.gms.internal.zzhh;
import org.json.JSONException;

@zzgd
/* loaded from: classes.dex */
public class zzb extends zzhh implements zzc.zza {
    private final Context mContext;
    AdResponseParcel zzBt;
    private final zza.InterfaceC0014zza zzCd;
    private final AdRequestInfoParcel.zza zzCe;
    zzhh zzCf;
    private final zzan zzvA;
    zzdy zzxn;
    private final Object zzBr = new Object();
    Object zzqt = new Object();

    @zzgd
    static final class zza extends Exception {
        private final int zzBv;

        public zza(String str, int i) {
            super(str);
            this.zzBv = i;
        }

        public int getErrorCode() {
            return this.zzBv;
        }
    }

    public zzb(Context context, AdRequestInfoParcel.zza zzaVar, zzan zzanVar, zza.InterfaceC0014zza interfaceC0014zza) {
        this.zzCd = interfaceC0014zza;
        this.mContext = context;
        this.zzCe = zzaVar;
        this.zzvA = zzanVar;
    }

    @Override // com.google.android.gms.internal.zzhh
    public void onStop() {
        synchronized (this.zzBr) {
            if (this.zzCf != null) {
                this.zzCf.cancel();
            }
        }
    }

    zzhh zzb(AdRequestInfoParcel adRequestInfoParcel) {
        return zzc.zza(this.mContext, adRequestInfoParcel, this);
    }

    @Override // com.google.android.gms.ads.internal.request.zzc.zza
    public void zzb(AdResponseParcel adResponseParcel) {
        synchronized (this.zzqt) {
            com.google.android.gms.ads.internal.util.client.zzb.zzay("Received ad response.");
            this.zzBt = adResponseParcel;
            this.zzqt.notify();
        }
    }

    protected AdSizeParcel zzc(AdRequestInfoParcel adRequestInfoParcel) throws zza {
        if (this.zzBt.zzCN == null) {
            throw new zza("The ad response must specify one of the supported ad sizes.", 0);
        }
        String[] split = this.zzBt.zzCN.split("x");
        if (split.length != 2) {
            throw new zza("Invalid ad size format from the ad response: " + this.zzBt.zzCN, 0);
        }
        try {
            int parseInt = Integer.parseInt(split[0]);
            int parseInt2 = Integer.parseInt(split[1]);
            for (AdSizeParcel adSizeParcel : adRequestInfoParcel.zzpN.zzso) {
                float f = this.mContext.getResources().getDisplayMetrics().density;
                int i = adSizeParcel.width == -1 ? (int) (adSizeParcel.widthPixels / f) : adSizeParcel.width;
                int i2 = adSizeParcel.height == -2 ? (int) (adSizeParcel.heightPixels / f) : adSizeParcel.height;
                if (parseInt == i && parseInt2 == i2) {
                    return new AdSizeParcel(adSizeParcel, adRequestInfoParcel.zzpN.zzso);
                }
            }
            throw new zza("The ad size from the ad response was not one of the requested sizes: " + this.zzBt.zzCN, 0);
        } catch (NumberFormatException e) {
            throw new zza("Invalid ad size number from the ad response: " + this.zzBt.zzCN, 0);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:31:0x00bd A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:47:0x0094 A[Catch: all -> 0x00e9, TryCatch #4 {, blocks: (B:4:0x0003, B:7:0x0029, B:8:0x0037, B:16:0x0048, B:18:0x0053, B:20:0x005c, B:23:0x0062, B:25:0x00b2, B:32:0x00bd, B:28:0x00cf, B:29:0x00e7, B:36:0x00c9, B:39:0x0076, B:44:0x0081, B:45:0x0090, B:47:0x0094, B:48:0x0099, B:49:0x00a6, B:50:0x009c, B:51:0x0089, B:57:0x0072), top: B:3:0x0003, inners: #2 }] */
    /* JADX WARN: Removed duplicated region for block: B:50:0x009c A[Catch: all -> 0x00e9, TryCatch #4 {, blocks: (B:4:0x0003, B:7:0x0029, B:8:0x0037, B:16:0x0048, B:18:0x0053, B:20:0x005c, B:23:0x0062, B:25:0x00b2, B:32:0x00bd, B:28:0x00cf, B:29:0x00e7, B:36:0x00c9, B:39:0x0076, B:44:0x0081, B:45:0x0090, B:47:0x0094, B:48:0x0099, B:49:0x00a6, B:50:0x009c, B:51:0x0089, B:57:0x0072), top: B:3:0x0003, inners: #2 }] */
    @Override // com.google.android.gms.internal.zzhh
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void zzdP() {
        /*
            Method dump skipped, instructions count: 236
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.ads.internal.request.zzb.zzdP():void");
    }

    protected boolean zze(long j) throws zza {
        long elapsedRealtime = 60000 - (zzo.zzbz().elapsedRealtime() - j);
        if (elapsedRealtime <= 0) {
            return false;
        }
        try {
            this.zzqt.wait(elapsedRealtime);
            return true;
        } catch (InterruptedException e) {
            throw new zza("Ad request cancelled.", -1);
        }
    }

    protected void zzfu() throws zza {
        if (this.zzBt.errorCode == -3) {
            return;
        }
        if (TextUtils.isEmpty(this.zzBt.zzCI)) {
            throw new zza("No fill from ad server.", 3);
        }
        zzo.zzby().zza(this.mContext, this.zzBt.zzCu);
        if (this.zzBt.zzCK) {
            try {
                this.zzxn = new zzdy(this.zzBt.zzCI);
            } catch (JSONException e) {
                throw new zza("Could not parse mediation config: " + this.zzBt.zzCI, 0);
            }
        }
    }

    protected void zzi(long j) throws zza {
        while (zze(j)) {
            if (this.zzBt != null) {
                synchronized (this.zzBr) {
                    this.zzCf = null;
                }
                if (this.zzBt.errorCode == -2 || this.zzBt.errorCode == -3) {
                    return;
                }
                throw new zza("There was a problem getting an ad response. ErrorCode: " + this.zzBt.errorCode, this.zzBt.errorCode);
            }
        }
        throw new zza("Timed out waiting for ad response.", 2);
    }

    protected void zzw(boolean z) {
        zzo.zzby().zzA(z);
        zzbk zzD = zzo.zzby().zzD(this.mContext);
        if (zzD == null || zzD.isAlive()) {
            return;
        }
        com.google.android.gms.ads.internal.util.client.zzb.zzay("start fetching content...");
        zzD.zzcp();
    }
}
