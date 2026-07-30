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
import com.facebook.internal.NativeProtocol;
import com.google.android.gms.ads.internal.client.zzbe;
import com.google.android.gms.ads.internal.util.zzs;
import com.google.android.gms.internal.ads.zzbcc;
import com.google.android.gms.internal.ads.zzbcl;
import com.google.android.gms.internal.ads.zzbsi;
import com.google.android.gms.internal.ads.zzbsx;
import com.google.android.gms.internal.ads.zzbtd;
import com.google.android.gms.internal.ads.zzcex;
import com.google.android.gms.internal.ads.zzdrv;
import com.google.android.gms.internal.ads.zzdrw;
import com.google.android.gms.internal.ads.zzebw;
import com.google.android.gms.internal.ads.zzebx;
import com.google.android.gms.internal.ads.zzecp;
import com.google.android.gms.internal.ads.zzecr;
import com.google.android.gms.internal.ads.zzfqw;
import com.google.android.gms.internal.ads.zzfve;
import defpackage.BinderC3652rv;
import defpackage.C3981xS;
import defpackage.InterfaceC0456Qm;
import defpackage.MR;
import defpackage.XR;
import java.util.Collections;

/* loaded from: classes.dex */
public class zzm extends zzbtd implements zzag {

    /* renamed from: new, reason: not valid java name */
    public static final int f9699new = Color.argb(0, 0, 0, 0);

    /* renamed from: case, reason: not valid java name */
    public boolean f9700case;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Activity f9702do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public WebChromeClient.CustomViewCallback f9703do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public FrameLayout f9704do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public Toolbar f9705do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public AdOverlayInfoParcel f9706do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public zzd f9707do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public zzi f9708do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public zzu f9709do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public zzcex f9710do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public C3981xS f9712do;

    /* renamed from: try, reason: not valid java name */
    public boolean f9721try;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public boolean f9713do = false;

    /* renamed from: if, reason: not valid java name */
    public boolean f9718if = false;

    /* renamed from: for, reason: not valid java name and collision with other field name */
    public boolean f9716for = false;

    /* renamed from: new, reason: not valid java name and collision with other field name */
    public boolean f9719new = false;

    /* renamed from: for, reason: not valid java name */
    public int f9715for = 1;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Object f9711do = new Object();

    /* renamed from: do, reason: not valid java name */
    public final MR f9701do = new MR(this);

    /* renamed from: else, reason: not valid java name */
    public boolean f9714else = false;

    /* renamed from: goto, reason: not valid java name */
    public boolean f9717goto = false;

    /* renamed from: this, reason: not valid java name */
    public boolean f9720this = true;

    public zzm(Activity activity) {
        this.f9702do = activity;
    }

    public static final void q(View view, zzecr zzecrVar) {
        if (zzecrVar == null || view == null) {
            return;
        }
        if (((Boolean) zzbe.zzc().zza(zzbcl.zzfe)).booleanValue() && zzecrVar.zzb()) {
            return;
        }
        com.google.android.gms.ads.internal.zzv.zzB().zzj(zzecrVar.zza(), view);
    }

    /* JADX WARN: Removed duplicated region for block: B:109:0x008d  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0085  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0168  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0177  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x018f  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x019f  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x026f  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x027e  */
    /* JADX WARN: Removed duplicated region for block: B:76:0x009d A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void n(boolean r28) {
        /*
            Method dump skipped, instructions count: 691
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.ads.internal.overlay.zzm.n(boolean):void");
    }

    public final void o(ViewGroup viewGroup) {
        zzecr zzQ;
        zzecp zzP;
        zzcex zzcexVar = this.f9710do;
        if (zzcexVar == null) {
            return;
        }
        if (((Boolean) zzbe.zzc().zza(zzbcl.zzff)).booleanValue() && (zzP = zzcexVar.zzP()) != null) {
            zzP.zza(viewGroup);
        } else if (((Boolean) zzbe.zzc().zza(zzbcl.zzfe)).booleanValue() && (zzQ = zzcexVar.zzQ()) != null && zzQ.zzb()) {
            com.google.android.gms.ads.internal.zzv.zzB().zzg(zzQ.zza(), viewGroup);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x0031, code lost:
    
        if (((java.lang.Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(com.google.android.gms.internal.ads.zzbcl.zzaQ)).booleanValue() != false) goto L15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x0048, code lost:
    
        r1 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x0045, code lost:
    
        if (((java.lang.Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(com.google.android.gms.internal.ads.zzbcl.zzaP)).booleanValue() != false) goto L20;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void p(android.content.res.Configuration r6) {
        /*
            r5 = this;
            com.google.android.gms.ads.internal.overlay.AdOverlayInfoParcel r0 = r5.f9706do
            r1 = 1
            r2 = 0
            if (r0 == 0) goto L10
            com.google.android.gms.ads.internal.zzl r0 = r0.zzo
            if (r0 == 0) goto L10
            boolean r0 = r0.zzb
            if (r0 == 0) goto L10
            r0 = 1
            goto L11
        L10:
            r0 = 0
        L11:
            com.google.android.gms.ads.internal.util.zzaa r3 = com.google.android.gms.ads.internal.zzv.zzr()
            android.app.Activity r4 = r5.f9702do
            boolean r6 = r3.zzd(r4, r6)
            boolean r3 = r5.f9716for
            if (r3 == 0) goto L33
            if (r0 != 0) goto L33
            com.google.android.gms.internal.ads.zzbcc r0 = com.google.android.gms.internal.ads.zzbcl.zzaQ
            com.google.android.gms.internal.ads.zzbcj r3 = com.google.android.gms.ads.internal.client.zzbe.zzc()
            java.lang.Object r0 = r3.zza(r0)
            java.lang.Boolean r0 = (java.lang.Boolean) r0
            boolean r0 = r0.booleanValue()
            if (r0 == 0) goto L48
        L33:
            if (r6 == 0) goto L4a
            com.google.android.gms.internal.ads.zzbcc r6 = com.google.android.gms.internal.ads.zzbcl.zzaP
            com.google.android.gms.internal.ads.zzbcj r0 = com.google.android.gms.ads.internal.client.zzbe.zzc()
            java.lang.Object r6 = r0.zza(r6)
            java.lang.Boolean r6 = (java.lang.Boolean) r6
            boolean r6 = r6.booleanValue()
            if (r6 == 0) goto L48
            goto L4a
        L48:
            r1 = 0
            goto L57
        L4a:
            com.google.android.gms.ads.internal.overlay.AdOverlayInfoParcel r6 = r5.f9706do
            if (r6 == 0) goto L57
            com.google.android.gms.ads.internal.zzl r6 = r6.zzo
            if (r6 == 0) goto L57
            boolean r6 = r6.zzg
            if (r6 == 0) goto L57
            r2 = 1
        L57:
            android.view.Window r6 = r4.getWindow()
            com.google.android.gms.internal.ads.zzbcc r0 = com.google.android.gms.internal.ads.zzbcl.zzbn
            com.google.android.gms.internal.ads.zzbcj r3 = com.google.android.gms.ads.internal.client.zzbe.zzc()
            java.lang.Object r0 = r3.zza(r0)
            java.lang.Boolean r0 = (java.lang.Boolean) r0
            boolean r0 = r0.booleanValue()
            if (r0 == 0) goto L81
            android.view.View r6 = r6.getDecorView()
            if (r1 == 0) goto L7b
            if (r2 == 0) goto L78
            r0 = 5894(0x1706, float:8.259E-42)
            goto L7d
        L78:
            r0 = 5380(0x1504, float:7.539E-42)
            goto L7d
        L7b:
            r0 = 256(0x100, float:3.59E-43)
        L7d:
            r6.setSystemUiVisibility(r0)
            return
        L81:
            r0 = 1024(0x400, float:1.435E-42)
            r3 = 2048(0x800, float:2.87E-42)
            if (r1 == 0) goto L99
            r6.addFlags(r0)
            r6.clearFlags(r3)
            if (r2 == 0) goto L98
            android.view.View r6 = r6.getDecorView()
            r0 = 4098(0x1002, float:5.743E-42)
            r6.setSystemUiVisibility(r0)
        L98:
            return
        L99:
            r6.addFlags(r3)
            r6.clearFlags(r0)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.ads.internal.overlay.zzm.p(android.content.res.Configuration):void");
    }

    public final void zzA(int i) {
        Activity activity = this.f9702do;
        if (activity.getApplicationInfo().targetSdkVersion >= ((Integer) zzbe.zzc().zza(zzbcl.zzfQ)).intValue()) {
            if (activity.getApplicationInfo().targetSdkVersion <= ((Integer) zzbe.zzc().zza(zzbcl.zzfR)).intValue()) {
                int i2 = Build.VERSION.SDK_INT;
                if (i2 >= ((Integer) zzbe.zzc().zza(zzbcl.zzfS)).intValue()) {
                    if (i2 <= ((Integer) zzbe.zzc().zza(zzbcl.zzfT)).intValue()) {
                        return;
                    }
                }
            }
        }
        try {
            activity.setRequestedOrientation(i);
        } catch (Throwable th) {
            com.google.android.gms.ads.internal.zzv.zzp().zzv(th, "AdOverlay.setRequestedOrientation");
        }
    }

    public final void zzB(boolean z) {
        if (z) {
            this.f9712do.setBackgroundColor(0);
        } else {
            this.f9712do.setBackgroundColor(-16777216);
        }
    }

    public final void zzC(View view, WebChromeClient.CustomViewCallback customViewCallback) {
        Activity activity = this.f9702do;
        FrameLayout frameLayout = new FrameLayout(activity);
        this.f9704do = frameLayout;
        frameLayout.setBackgroundColor(-16777216);
        this.f9704do.addView(view, -1, -1);
        activity.setContentView(this.f9704do);
        this.f9700case = true;
        this.f9703do = customViewCallback;
        this.f9713do = true;
    }

    public final void zzE() {
        synchronized (this.f9711do) {
            this.f9721try = true;
            zzd zzdVar = this.f9707do;
            if (zzdVar != null) {
                zzfqw zzfqwVar = zzs.zza;
                zzfqwVar.removeCallbacks(zzdVar);
                zzfqwVar.post(this.f9707do);
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v10, types: [com.google.android.gms.ads.internal.overlay.zzd, java.lang.Runnable] */
    public final void zzF() {
        AdOverlayInfoParcel adOverlayInfoParcel;
        zzr zzrVar;
        if (!this.f9702do.isFinishing() || this.f9714else) {
            return;
        }
        this.f9714else = true;
        zzcex zzcexVar = this.f9710do;
        if (zzcexVar != null) {
            zzcexVar.zzZ(this.f9715for - 1);
            synchronized (this.f9711do) {
                if (!this.f9721try && this.f9710do.zzaC()) {
                    if (((Boolean) zzbe.zzc().zza(zzbcl.zzeQ)).booleanValue() && !this.f9717goto && (adOverlayInfoParcel = this.f9706do) != null && (zzrVar = adOverlayInfoParcel.zzc) != null) {
                        zzrVar.zzdo();
                    }
                    ?? r1 = new Runnable() { // from class: com.google.android.gms.ads.internal.overlay.zzd
                        @Override // java.lang.Runnable
                        public final void run() {
                            zzm.this.zzc();
                        }
                    };
                    this.f9707do = r1;
                    zzs.zza.postDelayed(r1, ((Long) zzbe.zzc().zza(zzbcl.zzbg)).longValue());
                    return;
                }
            }
        }
        zzc();
    }

    public final void zzG(String str) {
        Toolbar toolbar = this.f9705do;
        if (toolbar != null) {
            toolbar.setSubtitle(str);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbte
    public final boolean zzH() {
        this.f9715for = 1;
        if (this.f9710do == null) {
            return true;
        }
        if (((Boolean) zzbe.zzc().zza(zzbcl.zziN)).booleanValue() && this.f9710do.canGoBack()) {
            this.f9710do.goBack();
            return false;
        }
        boolean zzaH = this.f9710do.zzaH();
        if (!zzaH) {
            this.f9710do.zzd("onbackblocked", Collections.emptyMap());
        }
        return zzaH;
    }

    public final void zzb() {
        this.f9715for = 3;
        Activity activity = this.f9702do;
        activity.finish();
        AdOverlayInfoParcel adOverlayInfoParcel = this.f9706do;
        if (adOverlayInfoParcel == null || adOverlayInfoParcel.zzk != 5) {
            return;
        }
        activity.overridePendingTransition(0, 0);
        zzcex zzcexVar = this.f9710do;
        if (zzcexVar != null) {
            zzcexVar.zzai(null);
        }
    }

    public final void zzc() {
        zzcex zzcexVar;
        zzr zzrVar;
        if (this.f9717goto) {
            return;
        }
        this.f9717goto = true;
        zzcex zzcexVar2 = this.f9710do;
        if (zzcexVar2 != null) {
            this.f9712do.removeView(zzcexVar2.zzF());
            zzi zziVar = this.f9708do;
            if (zziVar != null) {
                this.f9710do.zzan(zziVar.zzd);
                this.f9710do.zzaq(false);
                if (((Boolean) zzbe.zzc().zza(zzbcl.zzmz)).booleanValue() && this.f9710do.getParent() != null) {
                    ((ViewGroup) this.f9710do.getParent()).removeView(this.f9710do.zzF());
                }
                ViewGroup viewGroup = this.f9708do.zzc;
                View zzF = this.f9710do.zzF();
                zzi zziVar2 = this.f9708do;
                viewGroup.addView(zzF, zziVar2.zza, zziVar2.zzb);
                this.f9708do = null;
            } else {
                Activity activity = this.f9702do;
                if (activity.getApplicationContext() != null) {
                    this.f9710do.zzan(activity.getApplicationContext());
                }
            }
            this.f9710do = null;
        }
        AdOverlayInfoParcel adOverlayInfoParcel = this.f9706do;
        if (adOverlayInfoParcel != null && (zzrVar = adOverlayInfoParcel.zzc) != null) {
            zzrVar.zzds(this.f9715for);
        }
        AdOverlayInfoParcel adOverlayInfoParcel2 = this.f9706do;
        if (adOverlayInfoParcel2 == null || (zzcexVar = adOverlayInfoParcel2.zzd) == null) {
            return;
        }
        q(this.f9706do.zzd.zzF(), zzcexVar.zzQ());
    }

    public final void zzd() {
        this.f9712do.f16558do = true;
    }

    public final void zzf(zzebx zzebxVar) {
        zzbsx zzbsxVar;
        AdOverlayInfoParcel adOverlayInfoParcel = this.f9706do;
        if (adOverlayInfoParcel == null || (zzbsxVar = adOverlayInfoParcel.zzv) == null) {
            throw new XR("noioou");
        }
        zzbsxVar.zzg(new BinderC3652rv(zzebxVar));
    }

    public final void zzg() {
        AdOverlayInfoParcel adOverlayInfoParcel = this.f9706do;
        if (adOverlayInfoParcel != null && this.f9713do) {
            zzA(adOverlayInfoParcel.zzj);
        }
        if (this.f9704do != null) {
            this.f9702do.setContentView(this.f9712do);
            this.f9700case = true;
            this.f9704do.removeAllViews();
            this.f9704do = null;
        }
        WebChromeClient.CustomViewCallback customViewCallback = this.f9703do;
        if (customViewCallback != null) {
            customViewCallback.onCustomViewHidden();
            this.f9703do = null;
        }
        this.f9713do = false;
    }

    @Override // com.google.android.gms.internal.ads.zzbte
    public final void zzh(int i, int i2, Intent intent) {
        zzdrw zze;
        AdOverlayInfoParcel adOverlayInfoParcel;
        if (i == 236) {
            zzbcc zzbccVar = zzbcl.zzmV;
            if (((Boolean) zzbe.zzc().zza(zzbccVar)).booleanValue()) {
                com.google.android.gms.ads.internal.util.zze.zza("Callback from intent launch with requestCode: 236 and resultCode: " + i2);
                zzcex zzcexVar = this.f9710do;
                if (zzcexVar == null || zzcexVar.zzN() == null || (zze = zzcexVar.zzN().zze()) == null || (adOverlayInfoParcel = this.f9706do) == null || !((Boolean) zzbe.zzc().zza(zzbccVar)).booleanValue()) {
                    return;
                }
                zzdrv zza = zze.zza();
                zza.zzb(NativeProtocol.WEB_DIALOG_ACTION, "hilca");
                zza.zzb("gqi", zzfve.zzc(adOverlayInfoParcel.zzq));
                StringBuilder sb = new StringBuilder();
                sb.append(i2);
                zza.zzb("hilr", sb.toString());
                if (i2 == -1 && intent != null) {
                    String stringExtra = intent.getStringExtra("callerPackage");
                    String stringExtra2 = intent.getStringExtra("loadingStage");
                    if (stringExtra != null) {
                        zza.zzb("hilcp", stringExtra);
                    }
                    if (stringExtra2 != null) {
                        zza.zzb("hills", stringExtra2);
                    }
                }
                zza.zzf();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbte
    public final void zzi() {
        this.f9715for = 1;
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzag
    public final void zzj() {
        this.f9715for = 2;
        this.f9702do.finish();
    }

    @Override // com.google.android.gms.internal.ads.zzbte
    public final void zzk(InterfaceC0456Qm interfaceC0456Qm) {
        p((Configuration) BinderC3652rv.o(interfaceC0456Qm));
    }

    /* JADX WARN: Removed duplicated region for block: B:36:0x0087 A[Catch: XR -> 0x0107, TryCatch #0 {XR -> 0x0107, blocks: (B:11:0x001b, B:13:0x0027, B:15:0x002b, B:17:0x0031, B:18:0x0035, B:19:0x003e, B:21:0x0049, B:22:0x004b, B:24:0x0051, B:25:0x005d, B:27:0x0064, B:30:0x0071, B:32:0x0075, B:34:0x007a, B:36:0x0087, B:38:0x008b, B:40:0x0091, B:41:0x0094, B:43:0x009a, B:44:0x009d, B:46:0x00a3, B:48:0x00a7, B:49:0x00aa, B:51:0x00b0, B:52:0x00b3, B:59:0x00de, B:62:0x00e2, B:63:0x00e9, B:64:0x00ea, B:66:0x00ee, B:68:0x00fb, B:70:0x006b, B:72:0x006f, B:73:0x0083, B:74:0x00ff, B:75:0x0106), top: B:10:0x001b }] */
    /* JADX WARN: Removed duplicated region for block: B:54:0x00d6  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x00fb A[Catch: XR -> 0x0107, TryCatch #0 {XR -> 0x0107, blocks: (B:11:0x001b, B:13:0x0027, B:15:0x002b, B:17:0x0031, B:18:0x0035, B:19:0x003e, B:21:0x0049, B:22:0x004b, B:24:0x0051, B:25:0x005d, B:27:0x0064, B:30:0x0071, B:32:0x0075, B:34:0x007a, B:36:0x0087, B:38:0x008b, B:40:0x0091, B:41:0x0094, B:43:0x009a, B:44:0x009d, B:46:0x00a3, B:48:0x00a7, B:49:0x00aa, B:51:0x00b0, B:52:0x00b3, B:59:0x00de, B:62:0x00e2, B:63:0x00e9, B:64:0x00ea, B:66:0x00ee, B:68:0x00fb, B:70:0x006b, B:72:0x006f, B:73:0x0083, B:74:0x00ff, B:75:0x0106), top: B:10:0x001b }] */
    @Override // com.google.android.gms.internal.ads.zzbte
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void zzl(android.os.Bundle r9) {
        /*
            Method dump skipped, instructions count: 277
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.ads.internal.overlay.zzm.zzl(android.os.Bundle):void");
    }

    @Override // com.google.android.gms.internal.ads.zzbte
    public final void zzm() {
        zzcex zzcexVar = this.f9710do;
        if (zzcexVar != null) {
            try {
                this.f9712do.removeView(zzcexVar.zzF());
            } catch (NullPointerException unused) {
            }
        }
        zzF();
    }

    public final void zzn() {
        if (this.f9719new) {
            this.f9719new = false;
            this.f9710do.zzaa();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbte
    public final void zzo() {
        zzr zzrVar;
        zzg();
        AdOverlayInfoParcel adOverlayInfoParcel = this.f9706do;
        if (adOverlayInfoParcel != null && (zzrVar = adOverlayInfoParcel.zzc) != null) {
            zzrVar.zzdi();
        }
        if (!((Boolean) zzbe.zzc().zza(zzbcl.zzeS)).booleanValue() && this.f9710do != null && (!this.f9702do.isFinishing() || this.f9708do == null)) {
            this.f9710do.onPause();
        }
        zzF();
    }

    @Override // com.google.android.gms.internal.ads.zzbte
    public final void zzp(int i, String[] strArr, int[] iArr) {
        if (i == 12345) {
            zzebw zze = zzebx.zze();
            zze.zza(this.f9702do);
            zze.zzb(this.f9706do.zzk == 5 ? this : null);
            try {
                this.f9706do.zzv.zzf(strArr, iArr, new BinderC3652rv(zze.zze()));
            } catch (RemoteException unused) {
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbte
    public final void zzq() {
    }

    @Override // com.google.android.gms.internal.ads.zzbte
    public final void zzr() {
        zzr zzrVar;
        AdOverlayInfoParcel adOverlayInfoParcel = this.f9706do;
        if (adOverlayInfoParcel != null && (zzrVar = adOverlayInfoParcel.zzc) != null) {
            zzrVar.zzdE();
        }
        p(this.f9702do.getResources().getConfiguration());
        if (((Boolean) zzbe.zzc().zza(zzbcl.zzeS)).booleanValue()) {
            return;
        }
        zzcex zzcexVar = this.f9710do;
        if (zzcexVar == null || zzcexVar.zzaE()) {
            com.google.android.gms.ads.internal.util.client.zzo.zzj("The webview does not exist. Ignoring action.");
        } else {
            this.f9710do.onResume();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbte
    public final void zzs(Bundle bundle) {
        bundle.putBoolean("com.google.android.gms.ads.internal.overlay.hasResumed", this.f9718if);
    }

    @Override // com.google.android.gms.internal.ads.zzbte
    public final void zzt() {
        if (((Boolean) zzbe.zzc().zza(zzbcl.zzeS)).booleanValue()) {
            zzcex zzcexVar = this.f9710do;
            if (zzcexVar == null || zzcexVar.zzaE()) {
                com.google.android.gms.ads.internal.util.client.zzo.zzj("The webview does not exist. Ignoring action.");
            } else {
                this.f9710do.onResume();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbte
    public final void zzu() {
        if (((Boolean) zzbe.zzc().zza(zzbcl.zzeS)).booleanValue() && this.f9710do != null && (!this.f9702do.isFinishing() || this.f9708do == null)) {
            this.f9710do.onPause();
        }
        zzF();
    }

    @Override // com.google.android.gms.internal.ads.zzbte
    public final void zzv() {
        zzr zzrVar;
        AdOverlayInfoParcel adOverlayInfoParcel = this.f9706do;
        if (adOverlayInfoParcel == null || (zzrVar = adOverlayInfoParcel.zzc) == null) {
            return;
        }
        zzrVar.zzdr();
    }

    public final void zzw(boolean z) {
        if (this.f9706do.zzw) {
            return;
        }
        int intValue = ((Integer) zzbe.zzc().zza(zzbcl.zzeV)).intValue();
        boolean z2 = ((Boolean) zzbe.zzc().zza(zzbcl.zzbj)).booleanValue() || z;
        zzt zztVar = new zzt();
        zztVar.zzd = 50;
        zztVar.zza = true != z2 ? 0 : intValue;
        zztVar.zzb = true != z2 ? intValue : 0;
        zztVar.zzc = intValue;
        this.f9709do = new zzu(this.f9702do, zztVar, this);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams.addRule(10);
        layoutParams.addRule(true != z2 ? 9 : 11);
        zzy(z, this.f9706do.zzg);
        this.f9712do.addView(this.f9709do, layoutParams);
        o(this.f9709do);
    }

    @Override // com.google.android.gms.internal.ads.zzbte
    public final void zzx() {
        this.f9700case = true;
    }

    public final void zzy(boolean z, boolean z2) {
        AdOverlayInfoParcel adOverlayInfoParcel;
        com.google.android.gms.ads.internal.zzl zzlVar;
        AdOverlayInfoParcel adOverlayInfoParcel2;
        com.google.android.gms.ads.internal.zzl zzlVar2;
        boolean z3 = true;
        boolean z4 = ((Boolean) zzbe.zzc().zza(zzbcl.zzbh)).booleanValue() && (adOverlayInfoParcel2 = this.f9706do) != null && (zzlVar2 = adOverlayInfoParcel2.zzo) != null && zzlVar2.zzh;
        boolean z5 = ((Boolean) zzbe.zzc().zza(zzbcl.zzbi)).booleanValue() && (adOverlayInfoParcel = this.f9706do) != null && (zzlVar = adOverlayInfoParcel.zzo) != null && zzlVar.zzi;
        if (z && z2 && z4 && !z5) {
            new zzbsi(this.f9710do, "useCustomClose").zzh("Custom close has been disabled for interstitial ads in this ad slot.");
        }
        zzu zzuVar = this.f9709do;
        if (zzuVar != null) {
            if (!z5 && (!z2 || z4)) {
                z3 = false;
            }
            zzuVar.zzb(z3);
        }
    }

    public final void zzz() {
        this.f9712do.removeView(this.f9709do);
        zzw(true);
    }
}
