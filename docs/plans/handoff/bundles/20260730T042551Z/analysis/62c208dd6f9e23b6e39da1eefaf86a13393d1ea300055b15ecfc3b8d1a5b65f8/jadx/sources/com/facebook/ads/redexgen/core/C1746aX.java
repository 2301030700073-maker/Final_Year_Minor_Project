package com.facebook.ads.redexgen.core;

import android.net.ConnectivityManager;
import android.net.Network;
import android.net.NetworkCapabilities;

/* renamed from: com.facebook.ads.redexgen.X.aX, reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C1746aX extends ConnectivityManager.NetworkCallback {
    public boolean A00;
    public boolean A01;
    public final /* synthetic */ C1747aY A02;

    public C1746aX(C1747aY c1747aY) {
        this.A02 = c1747aY;
    }

    private void A00() {
        this.A02.A04.post(new Runnable() { // from class: com.facebook.ads.redexgen.X.aV
            @Override // java.lang.Runnable
            public final void run() {
                C1746aX.this.A02();
            }
        });
    }

    private void A01() {
        this.A02.A04.post(new Runnable() { // from class: com.facebook.ads.redexgen.X.aW
            @Override // java.lang.Runnable
            public final void run() {
                C1746aX.this.A03();
            }
        });
    }

    public final /* synthetic */ void A02() {
        if (this.A02.A02 == null) {
            return;
        }
        this.A02.A03();
    }

    public final /* synthetic */ void A03() {
        if (this.A02.A02 == null) {
            return;
        }
        this.A02.A04();
    }

    @Override // android.net.ConnectivityManager.NetworkCallback
    public final void onAvailable(Network network) {
        A00();
    }

    @Override // android.net.ConnectivityManager.NetworkCallback
    public final void onBlockedStatusChanged(Network network, boolean z) {
        if (!z) {
            A01();
        }
    }

    @Override // android.net.ConnectivityManager.NetworkCallback
    public final void onCapabilitiesChanged(Network network, NetworkCapabilities networkCapabilities) {
        boolean hasCapability = networkCapabilities.hasCapability(16);
        boolean networkValidated = this.A01;
        if (networkValidated) {
            boolean networkValidated2 = this.A00;
            if (networkValidated2 == hasCapability) {
                if (!hasCapability) {
                    return;
                }
                A01();
                return;
            }
        }
        this.A01 = true;
        this.A00 = hasCapability;
        A00();
    }

    @Override // android.net.ConnectivityManager.NetworkCallback
    public final void onLost(Network network) {
        A00();
    }
}
