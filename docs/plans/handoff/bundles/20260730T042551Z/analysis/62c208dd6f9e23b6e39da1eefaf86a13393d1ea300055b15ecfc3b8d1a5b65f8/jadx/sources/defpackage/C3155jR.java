package defpackage;

import com.android.billingclient.api.Cdo;
import com.facebook.internal.security.CertificateUtil;
import com.google.android.gms.internal.play_billing.zzbf;
import com.google.android.gms.internal.play_billing.zze;
import com.google.android.gms.internal.play_billing.zzjx;
import com.google.android.gms.internal.play_billing.zzjz;
import com.google.android.gms.internal.play_billing.zzkb;
import com.google.android.gms.internal.play_billing.zzkd;
import com.google.android.gms.internal.play_billing.zzke;
import com.google.android.gms.internal.play_billing.zzki;

/* renamed from: jR, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final /* synthetic */ class C3155jR {
    static {
        int i = InterfaceC3273lR.f14155do;
    }

    /* renamed from: do, reason: not valid java name */
    public static String m7099do(Exception exc) {
        if (exc == null) {
            return null;
        }
        try {
            String str = exc.getClass().getSimpleName() + CertificateUtil.DELIMITER + zzbf.zzb(exc.getMessage());
            int i = zze.zza;
            return str.length() > 40 ? str.substring(0, 40) : str;
        } catch (Throwable th) {
            zze.zzm("BillingLogger", "Unable to get truncated exception info", th);
            return null;
        }
    }

    /* renamed from: for, reason: not valid java name */
    public static zzjz m7100for(int i, int i2, Cdo cdo, String str) {
        try {
            zzke zzc = zzki.zzc();
            zzc.zzn(cdo.f9106do);
            zzc.zzm(cdo.f9107do);
            zzc.zzo(i);
            if (str != null) {
                zzc.zza(str);
            }
            zzjx zzc2 = zzjz.zzc();
            zzc2.zza(zzc);
            zzc2.zzn(i2);
            return (zzjz) zzc2.zzf();
        } catch (Throwable th) {
            zze.zzm("BillingLogger", "Unable to create logging payload", th);
            return null;
        }
    }

    /* renamed from: if, reason: not valid java name */
    public static zzjz m7101if(int i, int i2, Cdo cdo) {
        try {
            zzjx zzc = zzjz.zzc();
            zzke zzc2 = zzki.zzc();
            zzc2.zzn(cdo.f9106do);
            zzc2.zzm(cdo.f9107do);
            zzc2.zzo(i);
            zzc.zza(zzc2);
            zzc.zzn(i2);
            return (zzjz) zzc.zzf();
        } catch (Exception e) {
            zze.zzm("BillingLogger", "Unable to create logging payload", e);
            return null;
        }
    }

    /* renamed from: new, reason: not valid java name */
    public static zzkd m7102new(int i) {
        try {
            zzkb zzc = zzkd.zzc();
            zzc.zzn(i);
            return (zzkd) zzc.zzf();
        } catch (Exception e) {
            zze.zzm("BillingLogger", "Unable to create logging payload", e);
            return null;
        }
    }
}
