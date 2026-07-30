package defpackage;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.ConnectivityManager;
import android.net.Network;
import android.net.NetworkCapabilities;
import android.net.NetworkInfo;
import android.os.Build;

/* renamed from: Du, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0179Du extends AbstractC0137Ca<C0157Cu> {

    /* renamed from: if, reason: not valid java name */
    public static final /* synthetic */ int f700if = 0;

    /* renamed from: do, reason: not valid java name */
    public final Cdo f701do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Cif f702do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final ConnectivityManager f703do;

    /* renamed from: Du$do, reason: invalid class name */
    public class Cdo extends BroadcastReceiver {
        public Cdo() {
        }

        @Override // android.content.BroadcastReceiver
        public final void onReceive(Context context, Intent intent) {
            if (intent == null || intent.getAction() == null || !intent.getAction().equals("android.net.conn.CONNECTIVITY_CHANGE")) {
                return;
            }
            AbstractC0614Xq m2869for = AbstractC0614Xq.m2869for();
            int i = C0179Du.f700if;
            m2869for.mo2872do(new Throwable[0]);
            C0179Du c0179Du = C0179Du.this;
            c0179Du.m273for(c0179Du.m415case());
        }
    }

    /* renamed from: Du$if, reason: invalid class name */
    public class Cif extends ConnectivityManager.NetworkCallback {
        public Cif() {
        }

        @Override // android.net.ConnectivityManager.NetworkCallback
        public final void onCapabilitiesChanged(Network network, NetworkCapabilities networkCapabilities) {
            AbstractC0614Xq m2869for = AbstractC0614Xq.m2869for();
            int i = C0179Du.f700if;
            String.format("Network capabilities changed: %s", networkCapabilities);
            m2869for.mo2872do(new Throwable[0]);
            C0179Du c0179Du = C0179Du.this;
            c0179Du.m273for(c0179Du.m415case());
        }

        @Override // android.net.ConnectivityManager.NetworkCallback
        public final void onLost(Network network) {
            AbstractC0614Xq m2869for = AbstractC0614Xq.m2869for();
            int i = C0179Du.f700if;
            m2869for.mo2872do(new Throwable[0]);
            C0179Du c0179Du = C0179Du.this;
            c0179Du.m273for(c0179Du.m415case());
        }
    }

    static {
        AbstractC0614Xq.m2870try("NetworkStateTracker");
    }

    public C0179Du(Context context, IG ig) {
        super(context, ig);
        this.f703do = (ConnectivityManager) ((AbstractC0137Ca) this).f390do.getSystemService("connectivity");
        if (Build.VERSION.SDK_INT >= 24) {
            this.f702do = new Cif();
        } else {
            this.f701do = new Cdo();
        }
    }

    /* renamed from: case, reason: not valid java name */
    public final C0157Cu m415case() {
        Network activeNetwork;
        NetworkCapabilities networkCapabilities;
        boolean z;
        ConnectivityManager connectivityManager = this.f703do;
        NetworkInfo activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
        boolean z2 = false;
        boolean z3 = activeNetworkInfo != null && activeNetworkInfo.isConnected();
        if (Build.VERSION.SDK_INT >= 23) {
            try {
                activeNetwork = connectivityManager.getActiveNetwork();
                networkCapabilities = connectivityManager.getNetworkCapabilities(activeNetwork);
            } catch (SecurityException e) {
                AbstractC0614Xq.m2869for().mo2873if(e);
            }
            if (networkCapabilities != null) {
                if (networkCapabilities.hasCapability(16)) {
                    z = true;
                    boolean isActiveNetworkMetered = connectivityManager.isActiveNetworkMetered();
                    if (activeNetworkInfo != null && !activeNetworkInfo.isRoaming()) {
                        z2 = true;
                    }
                    return new C0157Cu(z3, z, isActiveNetworkMetered, z2);
                }
            }
        }
        z = false;
        boolean isActiveNetworkMetered2 = connectivityManager.isActiveNetworkMetered();
        if (activeNetworkInfo != null) {
            z2 = true;
        }
        return new C0157Cu(z3, z, isActiveNetworkMetered2, z2);
    }

    @Override // defpackage.AbstractC0137Ca
    /* renamed from: do */
    public final C0157Cu mo272do() {
        return m415case();
    }

    @Override // defpackage.AbstractC0137Ca
    /* renamed from: new */
    public final void mo275new() {
        if (!(Build.VERSION.SDK_INT >= 24)) {
            AbstractC0614Xq.m2869for().mo2872do(new Throwable[0]);
            ((AbstractC0137Ca) this).f390do.registerReceiver(this.f701do, new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE"));
            return;
        }
        try {
            AbstractC0614Xq.m2869for().mo2872do(new Throwable[0]);
            this.f703do.registerDefaultNetworkCallback(this.f702do);
        } catch (IllegalArgumentException | SecurityException e) {
            AbstractC0614Xq.m2869for().mo2873if(e);
        }
    }

    @Override // defpackage.AbstractC0137Ca
    /* renamed from: try */
    public final void mo276try() {
        if (!(Build.VERSION.SDK_INT >= 24)) {
            AbstractC0614Xq.m2869for().mo2872do(new Throwable[0]);
            ((AbstractC0137Ca) this).f390do.unregisterReceiver(this.f701do);
            return;
        }
        try {
            AbstractC0614Xq.m2869for().mo2872do(new Throwable[0]);
            this.f703do.unregisterNetworkCallback(this.f702do);
        } catch (IllegalArgumentException | SecurityException e) {
            AbstractC0614Xq.m2869for().mo2873if(e);
        }
    }
}
