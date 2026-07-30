package defpackage;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import com.google.android.gms.internal.play_billing.zzau;
import com.google.android.gms.internal.play_billing.zze;
import com.google.android.gms.internal.play_billing.zzkd;
import j$.util.Objects;

/* renamed from: fR, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class ServiceConnectionC2752fR implements ServiceConnection {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ C2811gR f12937do;

    public /* synthetic */ ServiceConnectionC2752fR(C2811gR c2811gR) {
        this.f12937do = c2811gR;
    }

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        zze.zzk("BillingClientTesting", "Billing Override Service connected.");
        this.f12937do.f13171do = zzau.zzc(iBinder);
        this.f12937do.f13174for = 2;
        C2811gR c2811gR = this.f12937do;
        c2811gR.getClass();
        zzkd m7102new = C3155jR.m7102new(26);
        Objects.requireNonNull(m7102new, "ApiSuccess should not be null");
        ((C3332mR) ((C3428o5) c2811gR).f14675do).m7452if(m7102new);
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
        zze.zzl("BillingClientTesting", "Billing Override Service disconnected.");
        this.f12937do.f13171do = null;
        this.f12937do.f13174for = 0;
    }
}
