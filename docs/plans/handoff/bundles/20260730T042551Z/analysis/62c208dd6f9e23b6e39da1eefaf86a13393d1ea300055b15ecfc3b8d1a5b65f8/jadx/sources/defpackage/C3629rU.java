package defpackage;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Build;
import android.os.Bundle;
import com.android.billingclient.api.Cdo;
import com.android.billingclient.api.Cif;
import com.google.android.gms.internal.play_billing.zzco;
import com.google.android.gms.internal.play_billing.zze;
import com.google.android.gms.internal.play_billing.zzgw;
import com.google.android.gms.internal.play_billing.zzjz;
import j$.util.Objects;
import java.util.List;

/* renamed from: rU, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C3629rU extends BroadcastReceiver {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ JU f15285do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public boolean f15286do;

    /* renamed from: if, reason: not valid java name */
    public final boolean f15287if;

    public C3629rU(JU ju, boolean z) {
        this.f15285do = ju;
        this.f15287if = z;
    }

    /* renamed from: do, reason: not valid java name */
    public final synchronized void m7966do(Context context, IntentFilter intentFilter) {
        if (this.f15286do) {
            return;
        }
        if (Build.VERSION.SDK_INT >= 33) {
            context.registerReceiver(this, intentFilter, true != this.f15287if ? 4 : 2);
        } else {
            context.registerReceiver(this, intentFilter);
        }
        this.f15286do = true;
    }

    /* renamed from: if, reason: not valid java name */
    public final void m7967if(Bundle bundle, Cdo cdo, int i) {
        try {
            byte[] byteArray = bundle.getByteArray("FAILURE_LOGGING_PAYLOAD");
            JU ju = this.f15285do;
            if (byteArray != null) {
                ((C3332mR) ju.f1643do).m7450do(zzjz.zzC(bundle.getByteArray("FAILURE_LOGGING_PAYLOAD"), zzgw.zza()));
            } else {
                ((C3332mR) ju.f1643do).m7450do(C3155jR.m7101if(23, i, cdo));
            }
        } catch (Throwable unused) {
            zze.zzl("BillingBroadcastManager", "Failed parsing Api failure.");
        }
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        Bundle extras = intent.getExtras();
        JU ju = this.f15285do;
        if (extras == null) {
            zze.zzl("BillingBroadcastManager", "Bundle is null.");
            InterfaceC3273lR interfaceC3273lR = ju.f1643do;
            Cdo cdo = Cif.f9112catch;
            ((C3332mR) interfaceC3273lR).m7450do(C3155jR.m7101if(11, 1, cdo));
            Ay ay = ju.f1641do;
            if (ay != null) {
                ay.mo133try(cdo, null);
                return;
            }
            return;
        }
        Cdo zzf = zze.zzf(intent, "BillingBroadcastManager");
        String action = intent.getAction();
        int i = true == Objects.equals(extras.getString("INTENT_SOURCE"), "LAUNCH_BILLING_FLOW") ? 2 : 1;
        if (action.equals("com.android.vending.billing.PURCHASES_UPDATED") || action.equals("com.android.vending.billing.LOCAL_BROADCAST_PURCHASES_UPDATED")) {
            List<C4009xy> zzj = zze.zzj(extras);
            if (zzf.f9106do == 0) {
                ((C3332mR) ju.f1643do).m7452if(C3155jR.m7102new(i));
            } else {
                m7967if(extras, zzf, i);
            }
            ju.f1641do.mo133try(zzf, zzj);
            return;
        }
        if (action.equals("com.android.vending.billing.ALTERNATIVE_BILLING")) {
            if (zzf.f9106do != 0) {
                m7967if(extras, zzf, i);
                ju.f1641do.mo133try(zzf, zzco.zzl());
                return;
            }
            ju.getClass();
            zze.zzl("BillingBroadcastManager", "AlternativeBillingListener and UserChoiceBillingListener is null.");
            InterfaceC3273lR interfaceC3273lR2 = ju.f1643do;
            Cdo cdo2 = Cif.f9112catch;
            ((C3332mR) interfaceC3273lR2).m7450do(C3155jR.m7101if(77, i, cdo2));
            ju.f1641do.mo133try(cdo2, zzco.zzl());
        }
    }
}
