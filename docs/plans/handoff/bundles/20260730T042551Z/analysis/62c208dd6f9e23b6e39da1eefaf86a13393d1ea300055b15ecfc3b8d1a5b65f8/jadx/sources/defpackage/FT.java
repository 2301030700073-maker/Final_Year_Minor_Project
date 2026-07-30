package defpackage;

import android.app.Activity;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.renderscript.Allocation;
import android.renderscript.Element;
import android.renderscript.RenderScript;
import android.renderscript.ScriptIntrinsicBlur;
import com.google.android.gms.ads.internal.overlay.zzm;
import com.google.android.gms.ads.internal.util.zzb;
import com.google.android.gms.ads.internal.util.zzbu;
import com.google.android.gms.ads.internal.util.zzs;
import com.google.android.gms.ads.internal.zzl;
import com.google.android.gms.ads.internal.zzv;
import defpackage.FT;

/* loaded from: classes.dex */
public final class FT extends zzb {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ zzm f1054do;

    public /* synthetic */ FT(zzm zzmVar) {
        this.f1054do = zzmVar;
    }

    @Override // com.google.android.gms.ads.internal.util.zzb
    public final void zza() {
        final BitmapDrawable bitmapDrawable;
        zzbu zzv = zzv.zzv();
        zzm zzmVar = this.f1054do;
        Bitmap zza = zzv.zza(Integer.valueOf(zzmVar.f9706do.zzo.zzf));
        if (zza != null) {
            zzv.zzq();
            zzl zzlVar = zzmVar.f9706do.zzo;
            boolean z = zzlVar.zzd;
            float f = zzlVar.zze;
            Activity activity = zzmVar.f9702do;
            if (!z || f <= 0.0f || f > 25.0f) {
                bitmapDrawable = new BitmapDrawable(activity.getResources(), zza);
            } else {
                try {
                    Bitmap createScaledBitmap = Bitmap.createScaledBitmap(zza, zza.getWidth(), zza.getHeight(), false);
                    Bitmap createBitmap = Bitmap.createBitmap(createScaledBitmap);
                    RenderScript create = RenderScript.create(activity);
                    ScriptIntrinsicBlur create2 = ScriptIntrinsicBlur.create(create, Element.U8_4(create));
                    Allocation createFromBitmap = Allocation.createFromBitmap(create, createScaledBitmap);
                    Allocation createFromBitmap2 = Allocation.createFromBitmap(create, createBitmap);
                    create2.setRadius(f);
                    create2.setInput(createFromBitmap);
                    create2.forEach(createFromBitmap2);
                    createFromBitmap2.copyTo(createBitmap);
                    bitmapDrawable = new BitmapDrawable(activity.getResources(), createBitmap);
                } catch (RuntimeException unused) {
                    bitmapDrawable = new BitmapDrawable(activity.getResources(), zza);
                }
            }
            zzs.zza.post(new Runnable() { // from class: com.google.android.gms.ads.internal.overlay.zzj
                @Override // java.lang.Runnable
                public final void run() {
                    FT.this.f1054do.f9702do.getWindow().setBackgroundDrawable(bitmapDrawable);
                }
            });
        }
    }
}
