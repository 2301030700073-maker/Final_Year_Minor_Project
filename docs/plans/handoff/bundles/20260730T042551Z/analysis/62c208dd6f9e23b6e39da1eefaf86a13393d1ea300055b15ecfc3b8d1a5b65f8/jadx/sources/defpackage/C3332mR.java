package defpackage;

import android.content.Context;
import com.google.android.gms.internal.play_billing.zze;
import com.google.android.gms.internal.play_billing.zzjz;
import com.google.android.gms.internal.play_billing.zzkd;
import com.google.android.gms.internal.play_billing.zzku;
import com.google.android.gms.internal.play_billing.zzli;
import com.google.android.gms.internal.play_billing.zzlk;
import com.google.android.gms.internal.play_billing.zzlq;

/* renamed from: mR, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C3332mR implements InterfaceC3273lR {

    /* renamed from: do, reason: not valid java name */
    public zzku f14343do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final C3391nR f14344do;

    public C3332mR(Context context, zzku zzkuVar) {
        this.f14344do = new C3391nR(context);
        this.f14343do = zzkuVar;
    }

    /* renamed from: do, reason: not valid java name */
    public final void m7450do(zzjz zzjzVar) {
        if (zzjzVar == null) {
            return;
        }
        try {
            zzli zzc = zzlk.zzc();
            zzc.zzo(this.f14343do);
            zzc.zza(zzjzVar);
            this.f14344do.m7568do((zzlk) zzc.zzf());
        } catch (Throwable th) {
            zze.zzm("BillingLogger", "Unable to log.", th);
        }
    }

    /* renamed from: for, reason: not valid java name */
    public final void m7451for(zzlq zzlqVar) {
        try {
            C3391nR c3391nR = this.f14344do;
            zzli zzc = zzlk.zzc();
            zzc.zzo(this.f14343do);
            zzc.zzp(zzlqVar);
            c3391nR.m7568do((zzlk) zzc.zzf());
        } catch (Throwable th) {
            zze.zzm("BillingLogger", "Unable to log.", th);
        }
    }

    /* renamed from: if, reason: not valid java name */
    public final void m7452if(zzkd zzkdVar) {
        if (zzkdVar == null) {
            return;
        }
        try {
            zzli zzc = zzlk.zzc();
            zzc.zzo(this.f14343do);
            zzc.zzm(zzkdVar);
            this.f14344do.m7568do((zzlk) zzc.zzf());
        } catch (Throwable th) {
            zze.zzm("BillingLogger", "Unable to log.", th);
        }
    }
}
