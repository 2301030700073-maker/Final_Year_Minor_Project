package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.os.Looper;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.PopupWindow;
import android.widget.RelativeLayout;
import com.google.android.gms.common.util.CollectionUtils;

/* loaded from: classes.dex */
public final class zzbsc extends zzbsi {
    private String zza;
    private boolean zzb;
    private int zzc;
    private int zzd;
    private int zze;
    private int zzf;
    private int zzg;
    private int zzh;
    private final Object zzi;
    private final zzcex zzj;
    private final Activity zzk;
    private zzcgr zzl;
    private ImageView zzm;
    private LinearLayout zzn;
    private final zzbsj zzo;
    private PopupWindow zzp;
    private RelativeLayout zzq;
    private ViewGroup zzr;

    static {
        CollectionUtils.setOf("top-left", "top-right", "top-center", "center", "bottom-left", "bottom-right", "bottom-center");
    }

    public zzbsc(zzcex zzcexVar, zzbsj zzbsjVar) {
        super(zzcexVar, "resize");
        this.zza = "top-right";
        this.zzb = true;
        this.zzc = 0;
        this.zzd = 0;
        this.zze = -1;
        this.zzf = 0;
        this.zzg = 0;
        this.zzh = -1;
        this.zzi = new Object();
        this.zzj = zzcexVar;
        this.zzk = zzcexVar.zzi();
        this.zzo = zzbsjVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: zzm, reason: merged with bridge method [inline-methods] */
    public final void zzc(boolean z) {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzkI)).booleanValue()) {
            this.zzq.removeView((View) this.zzj);
            this.zzp.dismiss();
        } else {
            this.zzp.dismiss();
            this.zzq.removeView((View) this.zzj);
        }
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzkJ)).booleanValue()) {
            ViewParent parent = ((View) this.zzj).getParent();
            if (parent instanceof ViewGroup) {
                ((ViewGroup) parent).removeView((View) this.zzj);
            }
        }
        ViewGroup viewGroup = this.zzr;
        if (viewGroup != null) {
            viewGroup.removeView(this.zzm);
            if (((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzkK)).booleanValue()) {
                try {
                    this.zzr.addView((View) this.zzj);
                    this.zzj.zzaj(this.zzl);
                } catch (IllegalStateException e) {
                    com.google.android.gms.ads.internal.util.client.zzo.zzh("Unable to add webview back to view hierarchy.", e);
                }
            } else {
                this.zzr.addView((View) this.zzj);
                this.zzj.zzaj(this.zzl);
            }
        }
        if (z) {
            zzl("default");
            zzbsj zzbsjVar = this.zzo;
            if (zzbsjVar != null) {
                zzbsjVar.zzb();
            }
        }
        this.zzp = null;
        this.zzq = null;
        this.zzr = null;
        this.zzn = null;
    }

    public final void zza(final boolean z) {
        synchronized (this.zzi) {
            if (this.zzp != null) {
                if (!((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzkH)).booleanValue() || Looper.getMainLooper().getThread() == Thread.currentThread()) {
                    zzc(z);
                } else {
                    zzbzw.zzf.zza(new Runnable() { // from class: com.google.android.gms.internal.ads.zzbsa
                        @Override // java.lang.Runnable
                        public final void run() {
                            zzbsc.this.zzc(z);
                        }
                    });
                }
            }
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:65:0x026b A[Catch: all -> 0x0489, TryCatch #0 {, blocks: (B:4:0x0009, B:6:0x000d, B:7:0x0012, B:10:0x0014, B:12:0x001c, B:13:0x0021, B:15:0x0023, B:17:0x002f, B:18:0x0034, B:20:0x0036, B:22:0x003e, B:23:0x0043, B:25:0x0045, B:27:0x0053, B:28:0x0064, B:30:0x0072, B:31:0x0083, B:33:0x0091, B:34:0x00a2, B:36:0x00b0, B:37:0x00c1, B:39:0x00cf, B:40:0x00dd, B:42:0x00eb, B:43:0x00ed, B:45:0x00f1, B:47:0x00f5, B:49:0x00fd, B:52:0x0105, B:56:0x012b, B:62:0x0137, B:65:0x026b, B:66:0x0270, B:68:0x0272, B:70:0x0292, B:72:0x0296, B:74:0x02a3, B:75:0x02e0, B:90:0x039c, B:91:0x03cb, B:93:0x03e3, B:94:0x0404, B:96:0x040c, B:97:0x0413, B:98:0x043a, B:102:0x043d, B:104:0x045d, B:105:0x0472, B:107:0x03a3, B:108:0x03aa, B:109:0x03b1, B:110:0x03b8, B:111:0x03be, B:112:0x03c5, B:129:0x02dd, B:130:0x0474, B:131:0x0479, B:133:0x013e, B:135:0x0142, B:146:0x0195, B:148:0x01f4, B:150:0x01f9, B:152:0x01fc, B:154:0x0201, B:157:0x0207, B:158:0x01a2, B:160:0x01c2, B:162:0x01af, B:163:0x01bb, B:164:0x01cb, B:166:0x01d8, B:167:0x01e1, B:168:0x01ed, B:185:0x0219, B:188:0x0244, B:191:0x0255, B:192:0x024b, B:194:0x0253, B:195:0x023c, B:197:0x0242, B:198:0x025d, B:199:0x0263, B:200:0x047b, B:201:0x0480, B:203:0x0482, B:204:0x0487), top: B:3:0x0009, inners: #1 }] */
    /* JADX WARN: Removed duplicated region for block: B:68:0x0272 A[Catch: all -> 0x0489, TryCatch #0 {, blocks: (B:4:0x0009, B:6:0x000d, B:7:0x0012, B:10:0x0014, B:12:0x001c, B:13:0x0021, B:15:0x0023, B:17:0x002f, B:18:0x0034, B:20:0x0036, B:22:0x003e, B:23:0x0043, B:25:0x0045, B:27:0x0053, B:28:0x0064, B:30:0x0072, B:31:0x0083, B:33:0x0091, B:34:0x00a2, B:36:0x00b0, B:37:0x00c1, B:39:0x00cf, B:40:0x00dd, B:42:0x00eb, B:43:0x00ed, B:45:0x00f1, B:47:0x00f5, B:49:0x00fd, B:52:0x0105, B:56:0x012b, B:62:0x0137, B:65:0x026b, B:66:0x0270, B:68:0x0272, B:70:0x0292, B:72:0x0296, B:74:0x02a3, B:75:0x02e0, B:90:0x039c, B:91:0x03cb, B:93:0x03e3, B:94:0x0404, B:96:0x040c, B:97:0x0413, B:98:0x043a, B:102:0x043d, B:104:0x045d, B:105:0x0472, B:107:0x03a3, B:108:0x03aa, B:109:0x03b1, B:110:0x03b8, B:111:0x03be, B:112:0x03c5, B:129:0x02dd, B:130:0x0474, B:131:0x0479, B:133:0x013e, B:135:0x0142, B:146:0x0195, B:148:0x01f4, B:150:0x01f9, B:152:0x01fc, B:154:0x0201, B:157:0x0207, B:158:0x01a2, B:160:0x01c2, B:162:0x01af, B:163:0x01bb, B:164:0x01cb, B:166:0x01d8, B:167:0x01e1, B:168:0x01ed, B:185:0x0219, B:188:0x0244, B:191:0x0255, B:192:0x024b, B:194:0x0253, B:195:0x023c, B:197:0x0242, B:198:0x025d, B:199:0x0263, B:200:0x047b, B:201:0x0480, B:203:0x0482, B:204:0x0487), top: B:3:0x0009, inners: #1 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void zzb(java.util.Map r18) {
        /*
            Method dump skipped, instructions count: 1216
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzbsc.zzb(java.util.Map):void");
    }

    public final void zzd(int i, int i2, boolean z) {
        synchronized (this.zzi) {
            this.zzc = i;
            this.zzd = i2;
        }
    }

    public final void zze(int i, int i2) {
        this.zzc = i;
        this.zzd = i2;
    }

    public final boolean zzf() {
        boolean z;
        synchronized (this.zzi) {
            z = this.zzp != null;
        }
        return z;
    }
}
