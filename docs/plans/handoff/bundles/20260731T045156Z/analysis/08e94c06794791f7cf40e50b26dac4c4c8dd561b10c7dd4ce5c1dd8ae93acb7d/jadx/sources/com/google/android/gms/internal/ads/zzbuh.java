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
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.facebook.hermes.intl.Constants;
import com.google.android.gms.common.util.CollectionUtils;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzbuh extends zzbun {
    private String zza;
    private boolean zzb;
    private int zzc;
    private int zzd;
    private int zze;
    private int zzf;
    private int zzg;
    private int zzh;
    private final Object zzi;
    private final zzcgy zzj;
    private final Activity zzk;
    private zzcji zzl;
    private ImageView zzm;
    private LinearLayout zzn;
    private final zzbuo zzo;
    private PopupWindow zzp;
    private RelativeLayout zzq;
    private ViewGroup zzr;

    static {
        CollectionUtils.setOf("top-left", "top-right", "top-center", TtmlNode.CENTER, "bottom-left", "bottom-right", "bottom-center");
    }

    public zzbuh(zzcgy zzcgyVar, zzbuo zzbuoVar) {
        super(zzcgyVar, "resize");
        this.zza = "top-right";
        this.zzb = true;
        this.zzc = 0;
        this.zzd = 0;
        this.zze = -1;
        this.zzf = 0;
        this.zzg = 0;
        this.zzh = -1;
        this.zzi = new Object();
        this.zzj = zzcgyVar;
        this.zzk = zzcgyVar.zzj();
        this.zzo = zzbuoVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: zzm, reason: merged with bridge method [inline-methods] */
    public final void zzf(boolean z) {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbeu.zzlQ)).booleanValue()) {
            this.zzq.removeView((View) this.zzj);
            this.zzp.dismiss();
        } else {
            this.zzp.dismiss();
            this.zzq.removeView((View) this.zzj);
        }
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbeu.zzlR)).booleanValue()) {
            View view = (View) this.zzj;
            ViewParent parent = view.getParent();
            if (parent instanceof ViewGroup) {
                ((ViewGroup) parent).removeView(view);
            }
        }
        ViewGroup viewGroup = this.zzr;
        if (viewGroup != null) {
            viewGroup.removeView(this.zzm);
            if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbeu.zzlS)).booleanValue()) {
                try {
                    ViewGroup viewGroup2 = this.zzr;
                    zzcgy zzcgyVar = this.zzj;
                    viewGroup2.addView((View) zzcgyVar);
                    zzcgyVar.zzaf(this.zzl);
                } catch (IllegalStateException e) {
                    int i = com.google.android.gms.ads.internal.util.zze.zza;
                    com.google.android.gms.ads.internal.util.client.zzo.zzg("Unable to add webview back to view hierarchy.", e);
                }
            } else {
                ViewGroup viewGroup3 = this.zzr;
                zzcgy zzcgyVar2 = this.zzj;
                viewGroup3.addView((View) zzcgyVar2);
                zzcgyVar2.zzaf(this.zzl);
            }
        }
        if (z) {
            zzk(Constants.COLLATION_DEFAULT);
            zzbuo zzbuoVar = this.zzo;
            if (zzbuoVar != null) {
                zzbuoVar.zzb();
            }
        }
        this.zzp = null;
        this.zzq = null;
        this.zzr = null;
        this.zzn = null;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x025c, code lost:
    
        zzg("Resize location out of screen or close button is not visible.");
     */
    /* JADX WARN: Code restructure failed: missing block: B:66:0x0262, code lost:
    
        return;
     */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:126:0x0453 A[Catch: all -> 0x0468, TryCatch #0 {, blocks: (B:4:0x0009, B:6:0x000d, B:7:0x0012, B:10:0x0014, B:12:0x001c, B:13:0x0021, B:15:0x0023, B:17:0x002d, B:18:0x0032, B:20:0x0034, B:22:0x003a, B:23:0x003f, B:25:0x0041, B:27:0x004f, B:28:0x0060, B:30:0x006e, B:31:0x007f, B:33:0x008d, B:34:0x009e, B:36:0x00ac, B:37:0x00bd, B:39:0x00cb, B:40:0x00d9, B:42:0x00e7, B:43:0x00e9, B:45:0x00ed, B:47:0x00f1, B:49:0x00f7, B:52:0x00ff, B:56:0x0122, B:62:0x012e, B:64:0x025c, B:65:0x0261, B:67:0x0263, B:69:0x0280, B:71:0x028c, B:72:0x02c4, B:102:0x0376, B:103:0x03a5, B:105:0x03bd, B:106:0x03d9, B:108:0x03e1, B:109:0x03e8, B:110:0x040e, B:114:0x0411, B:116:0x043f, B:117:0x0451, B:119:0x037d, B:120:0x0384, B:121:0x038b, B:122:0x0392, B:123:0x0398, B:124:0x039f, B:125:0x02c1, B:126:0x0453, B:127:0x0458, B:129:0x0137, B:131:0x013b, B:143:0x018f, B:144:0x01df, B:145:0x01ea, B:147:0x01ed, B:149:0x01f2, B:151:0x01f7, B:154:0x01fd, B:155:0x019a, B:156:0x01b0, B:157:0x01bb, B:158:0x01a5, B:159:0x01b3, B:160:0x01c0, B:161:0x01d4, B:162:0x01e2, B:179:0x020c, B:183:0x0236, B:186:0x0246, B:187:0x023c, B:189:0x0244, B:190:0x022c, B:192:0x0232, B:194:0x024b, B:195:0x0253, B:196:0x045a, B:197:0x045f, B:199:0x0461, B:200:0x0466), top: B:3:0x0009, inners: #1 }] */
    /* JADX WARN: Removed duplicated region for block: B:69:0x0280 A[Catch: all -> 0x0468, TryCatch #0 {, blocks: (B:4:0x0009, B:6:0x000d, B:7:0x0012, B:10:0x0014, B:12:0x001c, B:13:0x0021, B:15:0x0023, B:17:0x002d, B:18:0x0032, B:20:0x0034, B:22:0x003a, B:23:0x003f, B:25:0x0041, B:27:0x004f, B:28:0x0060, B:30:0x006e, B:31:0x007f, B:33:0x008d, B:34:0x009e, B:36:0x00ac, B:37:0x00bd, B:39:0x00cb, B:40:0x00d9, B:42:0x00e7, B:43:0x00e9, B:45:0x00ed, B:47:0x00f1, B:49:0x00f7, B:52:0x00ff, B:56:0x0122, B:62:0x012e, B:64:0x025c, B:65:0x0261, B:67:0x0263, B:69:0x0280, B:71:0x028c, B:72:0x02c4, B:102:0x0376, B:103:0x03a5, B:105:0x03bd, B:106:0x03d9, B:108:0x03e1, B:109:0x03e8, B:110:0x040e, B:114:0x0411, B:116:0x043f, B:117:0x0451, B:119:0x037d, B:120:0x0384, B:121:0x038b, B:122:0x0392, B:123:0x0398, B:124:0x039f, B:125:0x02c1, B:126:0x0453, B:127:0x0458, B:129:0x0137, B:131:0x013b, B:143:0x018f, B:144:0x01df, B:145:0x01ea, B:147:0x01ed, B:149:0x01f2, B:151:0x01f7, B:154:0x01fd, B:155:0x019a, B:156:0x01b0, B:157:0x01bb, B:158:0x01a5, B:159:0x01b3, B:160:0x01c0, B:161:0x01d4, B:162:0x01e2, B:179:0x020c, B:183:0x0236, B:186:0x0246, B:187:0x023c, B:189:0x0244, B:190:0x022c, B:192:0x0232, B:194:0x024b, B:195:0x0253, B:196:0x045a, B:197:0x045f, B:199:0x0461, B:200:0x0466), top: B:3:0x0009, inners: #1 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void zza(java.util.Map r19) {
        /*
            Method dump skipped, instructions count: 1184
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzbuh.zza(java.util.Map):void");
    }

    public final void zzb(final boolean z) {
        synchronized (this.zzi) {
            if (this.zzp != null) {
                if (!((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbeu.zzlP)).booleanValue() || Looper.getMainLooper().getThread() == Thread.currentThread()) {
                    zzf(z);
                } else {
                    zzcbv.zzf.submit(new Runnable() { // from class: com.google.android.gms.internal.ads.zzbug
                        @Override // java.lang.Runnable
                        public final /* synthetic */ void run() {
                            zzbuh.this.zzf(z);
                        }
                    });
                }
            }
        }
    }

    public final void zzc(int i, int i2, boolean z) {
        synchronized (this.zzi) {
            this.zzc = i;
            this.zzd = i2;
        }
    }

    public final boolean zzd() {
        boolean z;
        synchronized (this.zzi) {
            z = this.zzp != null;
        }
        return z;
    }

    public final void zze(int i, int i2) {
        this.zzc = i;
        this.zzd = i2;
    }
}
