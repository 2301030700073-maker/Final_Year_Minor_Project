package com.google.android.gms.ads.internal.overlay;

import android.app.Activity;
import android.content.Intent;
import android.content.res.Configuration;
import android.graphics.Color;
import android.os.Build;
import android.os.Bundle;
import android.os.RemoteException;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebChromeClient;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import android.widget.Toolbar;
import androidx.core.view.ViewCompat;
import com.google.android.gms.ads.internal.client.zzbd;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.internal.ads.zzbel;
import com.google.android.gms.internal.ads.zzbeu;
import com.google.android.gms.internal.ads.zzbun;
import com.google.android.gms.internal.ads.zzbvb;
import com.google.android.gms.internal.ads.zzbvh;
import com.google.android.gms.internal.ads.zzcgy;
import com.google.android.gms.internal.ads.zzdvh;
import com.google.android.gms.internal.ads.zzdvi;
import com.google.android.gms.internal.ads.zzegk;
import com.google.android.gms.internal.ads.zzegl;
import com.google.android.gms.internal.ads.zzehd;
import com.google.android.gms.internal.ads.zzehf;
import com.google.android.gms.internal.ads.zzfuz;
import com.google.android.gms.internal.ads.zzgmu;
import java.util.Collections;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public class zzm extends zzbvh implements zzah {
    static final int zza = Color.argb(0, 0, 0, 0);
    public static final /* synthetic */ int zzo = 0;
    protected final Activity zzb;
    AdOverlayInfoParcel zzc;
    zzcgy zzd;
    zzj zze;
    zzu zzf;
    FrameLayout zzh;
    WebChromeClient.CustomViewCallback zzi;
    zzi zzl;
    private Runnable zzr;
    private boolean zzs;
    private boolean zzt;
    private Toolbar zzx;
    boolean zzg = false;
    boolean zzj = false;
    boolean zzk = false;
    boolean zzm = false;
    int zzn = 1;
    private final Object zzp = new Object();
    private final View.OnClickListener zzq = new zzd(this);
    private boolean zzu = false;
    private boolean zzv = false;
    private boolean zzw = true;

    public zzm(Activity activity) {
        this.zzb = activity;
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x0031, code lost:
    
        if (((java.lang.Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(com.google.android.gms.internal.ads.zzbeu.zzaX)).booleanValue() != false) goto L15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x0048, code lost:
    
        r7 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x0045, code lost:
    
        if (((java.lang.Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(com.google.android.gms.internal.ads.zzbeu.zzaW)).booleanValue() != false) goto L21;
     */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0071  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x0087  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final void zzJ(android.content.res.Configuration r7) {
        /*
            r6 = this;
            com.google.android.gms.ads.internal.overlay.AdOverlayInfoParcel r0 = r6.zzc
            r1 = 1
            r2 = 0
            if (r0 == 0) goto L10
            com.google.android.gms.ads.internal.zzl r0 = r0.zzo
            if (r0 == 0) goto L10
            boolean r0 = r0.zzb
            if (r0 == 0) goto L10
            r0 = r1
            goto L11
        L10:
            r0 = r2
        L11:
            android.app.Activity r3 = r6.zzb
            com.google.android.gms.ads.internal.util.zzz r4 = com.google.android.gms.ads.internal.zzt.zzf()
            boolean r7 = r4.zzd(r3, r7)
            boolean r4 = r6.zzk
            if (r4 == 0) goto L33
            if (r0 != 0) goto L33
            com.google.android.gms.internal.ads.zzbel r0 = com.google.android.gms.internal.ads.zzbeu.zzaX
            com.google.android.gms.internal.ads.zzbes r4 = com.google.android.gms.ads.internal.client.zzbd.zzc()
            java.lang.Object r0 = r4.zzd(r0)
            java.lang.Boolean r0 = (java.lang.Boolean) r0
            boolean r0 = r0.booleanValue()
            if (r0 == 0) goto L48
        L33:
            if (r7 == 0) goto L4b
            com.google.android.gms.internal.ads.zzbel r7 = com.google.android.gms.internal.ads.zzbeu.zzaW
            com.google.android.gms.internal.ads.zzbes r0 = com.google.android.gms.ads.internal.client.zzbd.zzc()
            java.lang.Object r7 = r0.zzd(r7)
            java.lang.Boolean r7 = (java.lang.Boolean) r7
            boolean r7 = r7.booleanValue()
            if (r7 == 0) goto L48
            goto L4b
        L48:
            r7 = r2
        L49:
            r0 = r7
            goto L5b
        L4b:
            com.google.android.gms.ads.internal.overlay.AdOverlayInfoParcel r7 = r6.zzc
            if (r7 == 0) goto L59
            com.google.android.gms.ads.internal.zzl r7 = r7.zzo
            if (r7 == 0) goto L59
            boolean r7 = r7.zzg
            if (r7 == 0) goto L59
            r7 = r1
            goto L49
        L59:
            r7 = r1
            r0 = r2
        L5b:
            android.view.Window r3 = r3.getWindow()
            com.google.android.gms.internal.ads.zzbel r4 = com.google.android.gms.internal.ads.zzbeu.zzbw
            com.google.android.gms.internal.ads.zzbes r5 = com.google.android.gms.ads.internal.client.zzbd.zzc()
            java.lang.Object r4 = r5.zzd(r4)
            java.lang.Boolean r4 = (java.lang.Boolean) r4
            boolean r4 = r4.booleanValue()
            if (r4 == 0) goto L87
            android.view.View r4 = r3.getDecorView()
            if (r7 == 0) goto L80
            if (r0 == 0) goto L7c
            r7 = 5894(0x1706, float:8.259E-42)
            goto L7e
        L7c:
            r7 = 5380(0x1504, float:7.539E-42)
        L7e:
            r0 = r1
            goto L83
        L80:
            r7 = 256(0x100, float:3.59E-43)
            r0 = r2
        L83:
            r4.setSystemUiVisibility(r7)
            goto La7
        L87:
            r4 = 1024(0x400, float:1.435E-42)
            r5 = 2048(0x800, float:2.87E-42)
            if (r7 == 0) goto La0
            r3.addFlags(r4)
            r3.clearFlags(r5)
            if (r0 == 0) goto L9e
            android.view.View r7 = r3.getDecorView()
            r0 = 4098(0x1002, float:5.743E-42)
            r7.setSystemUiVisibility(r0)
        L9e:
            r0 = r1
            goto La7
        La0:
            r3.addFlags(r5)
            r3.clearFlags(r4)
            r0 = r2
        La7:
            com.google.android.gms.internal.ads.zzbel r7 = com.google.android.gms.internal.ads.zzbeu.zzoq
            com.google.android.gms.internal.ads.zzbes r4 = com.google.android.gms.ads.internal.client.zzbd.zzc()
            java.lang.Object r7 = r4.zzd(r7)
            java.lang.Boolean r7 = (java.lang.Boolean) r7
            boolean r7 = r7.booleanValue()
            if (r7 == 0) goto Ld0
            int r7 = android.os.Build.VERSION.SDK_INT
            r4 = 34
            if (r7 > r4) goto Ld0
            int r7 = android.os.Build.VERSION.SDK_INT
            r4 = 28
            if (r7 < r4) goto Ld0
            if (r0 == 0) goto Ld0
            android.view.WindowManager$LayoutParams r7 = r3.getAttributes()
            r7.layoutInDisplayCutoutMode = r1
            androidx.core.view.WindowCompat.setDecorFitsSystemWindows(r3, r2)
        Ld0:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.ads.internal.overlay.zzm.zzJ(android.content.res.Configuration):void");
    }

    private final void zzK(View view) {
        zzehf zzU;
        zzehd zzV;
        zzcgy zzcgyVar = this.zzd;
        if (zzcgyVar == null) {
            return;
        }
        if (((Boolean) zzbd.zzc().zzd(zzbeu.zzfS)).booleanValue() && (zzV = zzcgyVar.zzV()) != null) {
            zzV.zzf(view);
        } else if (((Boolean) zzbd.zzc().zzd(zzbeu.zzfR)).booleanValue() && (zzU = zzcgyVar.zzU()) != null && zzU.zzb()) {
            com.google.android.gms.ads.internal.zzt.zzu().zzg(zzU.zza(), view);
        }
    }

    private static final void zzL(zzehf zzehfVar, View view) {
        if (zzehfVar == null || view == null) {
            return;
        }
        if (((Boolean) zzbd.zzc().zzd(zzbeu.zzfR)).booleanValue() && zzehfVar.zzb()) {
            return;
        }
        com.google.android.gms.ads.internal.zzt.zzu().zzh(zzehfVar.zza(), view);
    }

    protected final void zzA() {
        AdOverlayInfoParcel adOverlayInfoParcel;
        zzr zzrVar;
        if (!this.zzb.isFinishing() || this.zzu) {
            return;
        }
        this.zzu = true;
        zzcgy zzcgyVar = this.zzd;
        if (zzcgyVar != null) {
            zzcgyVar.zzH(this.zzn - 1);
            synchronized (this.zzp) {
                if (!this.zzs && this.zzd.zzaa()) {
                    if (((Boolean) zzbd.zzc().zzd(zzbeu.zzfD)).booleanValue() && !this.zzv && (adOverlayInfoParcel = this.zzc) != null && (zzrVar = adOverlayInfoParcel.zzc) != null) {
                        zzrVar.zzdX();
                    }
                    this.zzr = new Runnable() { // from class: com.google.android.gms.ads.internal.overlay.zzf
                        @Override // java.lang.Runnable
                        public final /* synthetic */ void run() {
                            zzm.this.zzB();
                        }
                    };
                    com.google.android.gms.ads.internal.util.zzs.zza.postDelayed(this.zzr, ((Long) zzbd.zzc().zzd(zzbeu.zzbp)).longValue());
                    return;
                }
            }
        }
        zzB();
    }

    final void zzB() {
        zzcgy zzcgyVar;
        zzr zzrVar;
        if (this.zzv) {
            return;
        }
        this.zzv = true;
        zzcgy zzcgyVar2 = this.zzd;
        if (zzcgyVar2 != null) {
            this.zzl.removeView(zzcgyVar2.zzE());
            zzj zzjVar = this.zze;
            if (zzjVar != null) {
                this.zzd.zzai(zzjVar.zzd);
                this.zzd.zzag(false);
                if (((Boolean) zzbd.zzc().zzd(zzbeu.zznI)).booleanValue() && this.zzd.getParent() != null) {
                    ((ViewGroup) this.zzd.getParent()).removeView(this.zzd.zzE());
                }
                ViewGroup viewGroup = this.zze.zzc;
                View zzE = this.zzd.zzE();
                zzj zzjVar2 = this.zze;
                viewGroup.addView(zzE, zzjVar2.zza, zzjVar2.zzb);
                this.zze = null;
            } else {
                Activity activity = this.zzb;
                if (activity.getApplicationContext() != null) {
                    this.zzd.zzai(activity.getApplicationContext());
                }
            }
            this.zzd = null;
        }
        AdOverlayInfoParcel adOverlayInfoParcel = this.zzc;
        if (adOverlayInfoParcel != null && (zzrVar = adOverlayInfoParcel.zzc) != null) {
            zzrVar.zzdY(this.zzn);
        }
        AdOverlayInfoParcel adOverlayInfoParcel2 = this.zzc;
        if (adOverlayInfoParcel2 == null || (zzcgyVar = adOverlayInfoParcel2.zzd) == null) {
            return;
        }
        zzL(zzcgyVar.zzU(), this.zzc.zzd.zzE());
    }

    public final void zzC() {
        if (this.zzm) {
            this.zzm = false;
            zzD();
        }
    }

    protected final void zzD() {
        this.zzd.zzI();
    }

    public final void zzE() {
        this.zzl.zzb = true;
    }

    public final void zzF() {
        synchronized (this.zzp) {
            this.zzs = true;
            if (this.zzr != null) {
                zzfuz zzfuzVar = com.google.android.gms.ads.internal.util.zzs.zza;
                zzfuzVar.removeCallbacks(this.zzr);
                zzfuzVar.post(this.zzr);
            }
        }
    }

    public final void zzG(zzegl zzeglVar) throws zzh, RemoteException {
        zzbvb zzbvbVar;
        AdOverlayInfoParcel adOverlayInfoParcel = this.zzc;
        if (adOverlayInfoParcel == null || (zzbvbVar = adOverlayInfoParcel.zzv) == null) {
            throw new zzh("noioou");
        }
        zzbvbVar.zzh(ObjectWrapper.wrap(zzeglVar));
    }

    @Override // com.google.android.gms.internal.ads.zzbvi
    public final void zzH(int i, String[] strArr, int[] iArr) {
        if (i == 12345) {
            Activity activity = this.zzb;
            zzegk zze = zzegl.zze();
            zze.zza(activity);
            zze.zzb(this.zzc.zzk == 5 ? this : null);
            try {
                this.zzc.zzv.zzi(strArr, iArr, ObjectWrapper.wrap(zze.zze()));
            } catch (RemoteException unused) {
            }
        }
    }

    public final void zzb() {
        this.zzn = 3;
        Activity activity = this.zzb;
        activity.finish();
        AdOverlayInfoParcel adOverlayInfoParcel = this.zzc;
        if (adOverlayInfoParcel == null || adOverlayInfoParcel.zzk != 5) {
            return;
        }
        activity.overridePendingTransition(0, 0);
        zzcgy zzcgyVar = this.zzd;
        if (zzcgyVar != null) {
            zzcgyVar.zzae(null);
        }
    }

    public final void zzc() {
        AdOverlayInfoParcel adOverlayInfoParcel = this.zzc;
        if (adOverlayInfoParcel != null && this.zzg) {
            zzw(adOverlayInfoParcel.zzj);
        }
        if (this.zzh != null) {
            this.zzb.setContentView(this.zzl);
            this.zzt = true;
            this.zzh.removeAllViews();
            this.zzh = null;
        }
        WebChromeClient.CustomViewCallback customViewCallback = this.zzi;
        if (customViewCallback != null) {
            customViewCallback.onCustomViewHidden();
            this.zzi = null;
        }
        this.zzg = false;
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzah
    public final void zzd() {
        this.zzn = 2;
        this.zzb.finish();
    }

    @Override // com.google.android.gms.internal.ads.zzbvi
    public final void zze() {
        this.zzn = 1;
    }

    @Override // com.google.android.gms.internal.ads.zzbvi
    public final void zzf() {
        zzr zzrVar;
        AdOverlayInfoParcel adOverlayInfoParcel = this.zzc;
        if (adOverlayInfoParcel == null || (zzrVar = adOverlayInfoParcel.zzc) == null) {
            return;
        }
        zzrVar.zzdA();
    }

    @Override // com.google.android.gms.internal.ads.zzbvi
    public final boolean zzg() {
        this.zzn = 1;
        if (this.zzd == null) {
            return true;
        }
        if (((Boolean) zzbd.zzc().zzd(zzbeu.zzjT)).booleanValue() && this.zzd.canGoBack()) {
            this.zzd.goBack();
            return false;
        }
        boolean zzZ = this.zzd.zzZ();
        if (!zzZ) {
            this.zzd.zze("onbackblocked", Collections.emptyMap());
        }
        return zzZ;
    }

    /* JADX WARN: Removed duplicated region for block: B:36:0x008a A[Catch: zzh -> 0x0115, TryCatch #0 {zzh -> 0x0115, blocks: (B:11:0x001b, B:13:0x0029, B:15:0x002d, B:17:0x0033, B:18:0x0037, B:19:0x0040, B:21:0x004b, B:22:0x004d, B:24:0x0053, B:25:0x005f, B:27:0x0066, B:30:0x0073, B:32:0x0077, B:34:0x007c, B:36:0x008a, B:38:0x008e, B:40:0x0094, B:41:0x0097, B:43:0x009d, B:44:0x00a0, B:46:0x00a6, B:48:0x00aa, B:49:0x00ad, B:51:0x00b3, B:52:0x00b6, B:54:0x00ba, B:56:0x00be, B:57:0x00c1, B:64:0x00ec, B:67:0x00f0, B:68:0x00f7, B:69:0x00f8, B:71:0x00fc, B:73:0x0109, B:75:0x006d, B:77:0x0071, B:78:0x0086, B:79:0x010d, B:80:0x0114), top: B:10:0x001b }] */
    /* JADX WARN: Removed duplicated region for block: B:54:0x00ba A[Catch: zzh -> 0x0115, TryCatch #0 {zzh -> 0x0115, blocks: (B:11:0x001b, B:13:0x0029, B:15:0x002d, B:17:0x0033, B:18:0x0037, B:19:0x0040, B:21:0x004b, B:22:0x004d, B:24:0x0053, B:25:0x005f, B:27:0x0066, B:30:0x0073, B:32:0x0077, B:34:0x007c, B:36:0x008a, B:38:0x008e, B:40:0x0094, B:41:0x0097, B:43:0x009d, B:44:0x00a0, B:46:0x00a6, B:48:0x00aa, B:49:0x00ad, B:51:0x00b3, B:52:0x00b6, B:54:0x00ba, B:56:0x00be, B:57:0x00c1, B:64:0x00ec, B:67:0x00f0, B:68:0x00f7, B:69:0x00f8, B:71:0x00fc, B:73:0x0109, B:75:0x006d, B:77:0x0071, B:78:0x0086, B:79:0x010d, B:80:0x0114), top: B:10:0x001b }] */
    /* JADX WARN: Removed duplicated region for block: B:59:0x00e4  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x0109 A[Catch: zzh -> 0x0115, TryCatch #0 {zzh -> 0x0115, blocks: (B:11:0x001b, B:13:0x0029, B:15:0x002d, B:17:0x0033, B:18:0x0037, B:19:0x0040, B:21:0x004b, B:22:0x004d, B:24:0x0053, B:25:0x005f, B:27:0x0066, B:30:0x0073, B:32:0x0077, B:34:0x007c, B:36:0x008a, B:38:0x008e, B:40:0x0094, B:41:0x0097, B:43:0x009d, B:44:0x00a0, B:46:0x00a6, B:48:0x00aa, B:49:0x00ad, B:51:0x00b3, B:52:0x00b6, B:54:0x00ba, B:56:0x00be, B:57:0x00c1, B:64:0x00ec, B:67:0x00f0, B:68:0x00f7, B:69:0x00f8, B:71:0x00fc, B:73:0x0109, B:75:0x006d, B:77:0x0071, B:78:0x0086, B:79:0x010d, B:80:0x0114), top: B:10:0x001b }] */
    @Override // com.google.android.gms.internal.ads.zzbvi
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void zzh(android.os.Bundle r9) {
        /*
            Method dump skipped, instructions count: 295
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.ads.internal.overlay.zzm.zzh(android.os.Bundle):void");
    }

    @Override // com.google.android.gms.internal.ads.zzbvi
    public final void zzi() {
        zzr zzrVar;
        AdOverlayInfoParcel adOverlayInfoParcel = this.zzc;
        if (adOverlayInfoParcel == null || (zzrVar = adOverlayInfoParcel.zzc) == null) {
            return;
        }
        zzrVar.zzdv();
    }

    @Override // com.google.android.gms.internal.ads.zzbvi
    public final void zzj() {
        zzr zzrVar;
        if (((Boolean) zzbd.zzc().zzd(zzbeu.zzfF)).booleanValue()) {
            zzcgy zzcgyVar = this.zzd;
            if (zzcgyVar == null || zzcgyVar.zzX()) {
                int i = com.google.android.gms.ads.internal.util.zze.zza;
                com.google.android.gms.ads.internal.util.client.zzo.zzi("The webview does not exist. Ignoring action.");
            } else {
                this.zzd.onResume();
            }
        }
        AdOverlayInfoParcel adOverlayInfoParcel = this.zzc;
        if (adOverlayInfoParcel == null || (zzrVar = adOverlayInfoParcel.zzc) == null) {
            return;
        }
        zzrVar.zzdu();
    }

    @Override // com.google.android.gms.internal.ads.zzbvi
    public final void zzk() {
        zzr zzrVar;
        AdOverlayInfoParcel adOverlayInfoParcel = this.zzc;
        if (adOverlayInfoParcel != null && (zzrVar = adOverlayInfoParcel.zzc) != null) {
            zzrVar.zzdC();
        }
        zzJ(this.zzb.getResources().getConfiguration());
        if (((Boolean) zzbd.zzc().zzd(zzbeu.zzfF)).booleanValue()) {
            return;
        }
        zzcgy zzcgyVar = this.zzd;
        if (zzcgyVar != null && !zzcgyVar.zzX()) {
            this.zzd.onResume();
        } else {
            int i = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzi("The webview does not exist. Ignoring action.");
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbvi
    public final void zzl() {
        zzr zzrVar;
        zzc();
        AdOverlayInfoParcel adOverlayInfoParcel = this.zzc;
        if (adOverlayInfoParcel != null && (zzrVar = adOverlayInfoParcel.zzc) != null) {
            zzrVar.zzdB();
        }
        if (!((Boolean) zzbd.zzc().zzd(zzbeu.zzfF)).booleanValue() && this.zzd != null && (!this.zzb.isFinishing() || this.zze == null)) {
            this.zzd.onPause();
        }
        zzA();
    }

    @Override // com.google.android.gms.internal.ads.zzbvi
    public final void zzm(int i, int i2, Intent intent) {
        zzdvi zzI;
        AdOverlayInfoParcel adOverlayInfoParcel;
        if (i == 236) {
            zzbel zzbelVar = zzbeu.zzog;
            if (((Boolean) zzbd.zzc().zzd(zzbelVar)).booleanValue()) {
                StringBuilder sb = new StringBuilder(String.valueOf(i2).length() + 66);
                sb.append("Callback from intent launch with requestCode: 236 and resultCode: ");
                sb.append(i2);
                com.google.android.gms.ads.internal.util.zze.zza(sb.toString());
                zzcgy zzcgyVar = this.zzd;
                if (zzcgyVar == null || zzcgyVar.zzP() == null || (zzI = zzcgyVar.zzP().zzI()) == null || (adOverlayInfoParcel = this.zzc) == null || !((Boolean) zzbd.zzc().zzd(zzbelVar)).booleanValue()) {
                    return;
                }
                zzdvh zza2 = zzI.zza();
                zza2.zzc("action", "hilca");
                zza2.zzc("gqi", zzgmu.zza(adOverlayInfoParcel.zzq));
                StringBuilder sb2 = new StringBuilder(String.valueOf(i2).length());
                sb2.append(i2);
                zza2.zzc("hilr", sb2.toString());
                if (i2 == -1 && intent != null) {
                    String stringExtra = intent.getStringExtra("callerPackage");
                    String stringExtra2 = intent.getStringExtra("loadingStage");
                    if (stringExtra != null) {
                        zza2.zzc("hilcp", stringExtra);
                    }
                    if (stringExtra2 != null) {
                        zza2.zzc("hills", stringExtra2);
                    }
                }
                zza2.zzf();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbvi
    public final void zzn(IObjectWrapper iObjectWrapper) {
        zzJ((Configuration) ObjectWrapper.unwrap(iObjectWrapper));
    }

    @Override // com.google.android.gms.internal.ads.zzbvi
    public final void zzo(Bundle bundle) {
        bundle.putBoolean("com.google.android.gms.ads.internal.overlay.hasResumed", this.zzj);
    }

    @Override // com.google.android.gms.internal.ads.zzbvi
    public final void zzp() {
        zzr zzrVar;
        AdOverlayInfoParcel adOverlayInfoParcel = this.zzc;
        if (adOverlayInfoParcel != null && (zzrVar = adOverlayInfoParcel.zzc) != null) {
            zzrVar.zzdD();
        }
        if (((Boolean) zzbd.zzc().zzd(zzbeu.zzfF)).booleanValue() && this.zzd != null && (!this.zzb.isFinishing() || this.zze == null)) {
            this.zzd.onPause();
        }
        zzA();
    }

    @Override // com.google.android.gms.internal.ads.zzbvi
    public final void zzq() {
        zzr zzrVar;
        AdOverlayInfoParcel adOverlayInfoParcel = this.zzc;
        if (adOverlayInfoParcel != null && (zzrVar = adOverlayInfoParcel.zzc) != null) {
            zzrVar.zzdE();
        }
        zzcgy zzcgyVar = this.zzd;
        if (zzcgyVar != null) {
            try {
                this.zzl.removeView(zzcgyVar.zzE());
            } catch (NullPointerException unused) {
            }
        }
        zzA();
    }

    public final void zzr(boolean z) {
        if (this.zzc.zzw) {
            return;
        }
        int intValue = ((Integer) zzbd.zzc().zzd(zzbeu.zzfI)).intValue();
        boolean z2 = ((Boolean) zzbd.zzc().zzd(zzbeu.zzbs)).booleanValue() || z;
        zzt zztVar = new zzt();
        zztVar.zzd = 50;
        zztVar.zza = true != z2 ? 0 : intValue;
        zztVar.zzb = true != z2 ? intValue : 0;
        zztVar.zzc = intValue;
        this.zzf = new zzu(this.zzb, zztVar, this);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams.addRule(10);
        layoutParams.addRule(true != z2 ? 9 : 11);
        zzt(z, this.zzc.zzg);
        this.zzl.addView(this.zzf, layoutParams);
        zzK(this.zzf);
    }

    @Override // com.google.android.gms.internal.ads.zzbvi
    public final void zzs() {
        this.zzt = true;
    }

    public final void zzt(boolean z, boolean z2) {
        AdOverlayInfoParcel adOverlayInfoParcel;
        com.google.android.gms.ads.internal.zzl zzlVar;
        AdOverlayInfoParcel adOverlayInfoParcel2;
        com.google.android.gms.ads.internal.zzl zzlVar2;
        boolean z3 = true;
        boolean z4 = ((Boolean) zzbd.zzc().zzd(zzbeu.zzbq)).booleanValue() && (adOverlayInfoParcel2 = this.zzc) != null && (zzlVar2 = adOverlayInfoParcel2.zzo) != null && zzlVar2.zzh;
        boolean z5 = ((Boolean) zzbd.zzc().zzd(zzbeu.zzbr)).booleanValue() && (adOverlayInfoParcel = this.zzc) != null && (zzlVar = adOverlayInfoParcel.zzo) != null && zzlVar.zzi;
        if (z && z2 && z4 && !z5) {
            new zzbun(this.zzd, "useCustomClose").zzg("Custom close has been disabled for interstitial ads in this ad slot.");
        }
        zzu zzuVar = this.zzf;
        if (zzuVar != null) {
            if (!z5 && (!z2 || z4)) {
                z3 = false;
            }
            zzuVar.zza(z3);
        }
    }

    public final void zzu(boolean z) {
        if (z) {
            this.zzl.setBackgroundColor(0);
        } else {
            this.zzl.setBackgroundColor(ViewCompat.MEASURED_STATE_MASK);
        }
    }

    public final void zzv() {
        this.zzl.removeView(this.zzf);
        zzr(true);
    }

    public final void zzw(int i) {
        Activity activity = this.zzb;
        if (activity.getApplicationInfo().targetSdkVersion >= ((Integer) zzbd.zzc().zzd(zzbeu.zzgA)).intValue()) {
            if (activity.getApplicationInfo().targetSdkVersion <= ((Integer) zzbd.zzc().zzd(zzbeu.zzgB)).intValue()) {
                if (Build.VERSION.SDK_INT >= ((Integer) zzbd.zzc().zzd(zzbeu.zzgC)).intValue()) {
                    if (Build.VERSION.SDK_INT <= ((Integer) zzbd.zzc().zzd(zzbeu.zzgD)).intValue()) {
                        return;
                    }
                }
            }
        }
        try {
            activity.setRequestedOrientation(i);
        } catch (Throwable th) {
            com.google.android.gms.ads.internal.zzt.zzh().zzh(th, "AdOverlay.setRequestedOrientation");
        }
    }

    public final void zzx(View view, WebChromeClient.CustomViewCallback customViewCallback) {
        Activity activity = this.zzb;
        FrameLayout frameLayout = new FrameLayout(activity);
        this.zzh = frameLayout;
        frameLayout.setBackgroundColor(ViewCompat.MEASURED_STATE_MASK);
        this.zzh.addView(view, -1, -1);
        activity.setContentView(this.zzh);
        this.zzt = true;
        this.zzi = customViewCallback;
        this.zzg = true;
    }

    /* JADX WARN: Removed duplicated region for block: B:113:0x009e  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0096  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x018d  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x01a0  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x01fb  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x020b  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x02d3  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x02e3  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x01ef  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x00ae A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected final void zzy(boolean r45) throws com.google.android.gms.ads.internal.overlay.zzh {
        /*
            Method dump skipped, instructions count: 794
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.ads.internal.overlay.zzm.zzy(boolean):void");
    }

    public final void zzz(String str) {
        Toolbar toolbar = this.zzx;
        if (toolbar != null) {
            toolbar.setSubtitle(str);
        }
    }
}
