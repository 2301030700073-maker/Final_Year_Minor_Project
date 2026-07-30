package defpackage;

import android.os.Bundle;
import com.android.billingclient.api.Cdo;
import com.google.android.gms.ads.AdError;
import com.google.android.gms.ads.internal.util.client.zzo;
import com.google.android.gms.ads.mediation.MediationNativeListener;
import com.google.android.gms.ads.mediation.UnifiedNativeAdMapper;
import com.google.android.gms.ads.mediation.customevent.CustomEventAdapter;
import com.google.android.gms.ads.mediation.customevent.CustomEventNativeListener;
import java.util.ArrayList;

/* renamed from: oR, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C3450oR implements CustomEventNativeListener, InterfaceC0598Xa {

    /* renamed from: do, reason: not valid java name */
    public final Object f14787do;

    /* renamed from: if, reason: not valid java name */
    public final Object f14788if;

    public /* synthetic */ C3450oR(Cdo cdo, ArrayList arrayList) {
        this.f14787do = arrayList;
        this.f14788if = cdo;
    }

    public /* synthetic */ C3450oR(Object obj, Object obj2) {
        this.f14787do = obj;
        this.f14788if = obj2;
    }

    @Override // com.google.android.gms.ads.mediation.customevent.CustomEventListener
    public final void onAdClicked() {
        zzo.zze("Custom event adapter called onAdClicked.");
        ((MediationNativeListener) this.f14788if).onAdClicked((CustomEventAdapter) this.f14787do);
    }

    @Override // com.google.android.gms.ads.mediation.customevent.CustomEventListener
    public final void onAdClosed() {
        zzo.zze("Custom event adapter called onAdClosed.");
        ((MediationNativeListener) this.f14788if).onAdClosed((CustomEventAdapter) this.f14787do);
    }

    @Override // com.google.android.gms.ads.mediation.customevent.CustomEventListener
    public final void onAdFailedToLoad(int i) {
        zzo.zze("Custom event adapter called onAdFailedToLoad.");
        ((MediationNativeListener) this.f14788if).onAdFailedToLoad((CustomEventAdapter) this.f14787do, i);
    }

    @Override // com.google.android.gms.ads.mediation.customevent.CustomEventNativeListener
    public final void onAdImpression() {
        zzo.zze("Custom event adapter called onAdImpression.");
        ((MediationNativeListener) this.f14788if).onAdImpression((CustomEventAdapter) this.f14787do);
    }

    @Override // com.google.android.gms.ads.mediation.customevent.CustomEventListener
    public final void onAdLeftApplication() {
        zzo.zze("Custom event adapter called onAdLeftApplication.");
        ((MediationNativeListener) this.f14788if).onAdLeftApplication((CustomEventAdapter) this.f14787do);
    }

    @Override // com.google.android.gms.ads.mediation.customevent.CustomEventNativeListener
    public final void onAdLoaded(UnifiedNativeAdMapper unifiedNativeAdMapper) {
        zzo.zze("Custom event adapter called onAdLoaded.");
        ((MediationNativeListener) this.f14788if).onAdLoaded((CustomEventAdapter) this.f14787do, unifiedNativeAdMapper);
    }

    @Override // com.google.android.gms.ads.mediation.customevent.CustomEventListener
    public final void onAdOpened() {
        zzo.zze("Custom event adapter called onAdOpened.");
        ((MediationNativeListener) this.f14788if).onAdOpened((CustomEventAdapter) this.f14787do);
    }

    @Override // defpackage.InterfaceC0598Xa
    public final Object then(FG fg) {
        TA ta = (TA) this.f14787do;
        Bundle bundle = (Bundle) this.f14788if;
        ta.getClass();
        if (!fg.mo604throw()) {
            return fg;
        }
        Bundle bundle2 = (Bundle) fg.mo592class();
        return bundle2 != null && bundle2.containsKey("google.messenger") ? ta.m2225do(bundle).mo600import(ExecutorC0697aW.f4962do, C0315Kc.f1839new) : fg;
    }

    @Override // com.google.android.gms.ads.mediation.customevent.CustomEventListener
    public final void onAdFailedToLoad(AdError adError) {
        zzo.zze("Custom event adapter called onAdFailedToLoad.");
        ((MediationNativeListener) this.f14788if).onAdFailedToLoad((CustomEventAdapter) this.f14787do, adError);
    }
}
