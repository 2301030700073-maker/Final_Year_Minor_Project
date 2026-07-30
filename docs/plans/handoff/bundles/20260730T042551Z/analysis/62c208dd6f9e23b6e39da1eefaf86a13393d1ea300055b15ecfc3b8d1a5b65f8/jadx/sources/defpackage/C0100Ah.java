package defpackage;

import androidx.recyclerview.widget.RecyclerView;
import androidx.viewpager2.widget.Cfor;
import androidx.viewpager2.widget.ViewPager2;
import com.google.android.gms.ads.AdError;
import com.google.android.gms.ads.internal.util.client.zzo;
import com.google.android.gms.ads.mediation.MediationInterstitialListener;
import com.google.android.gms.ads.mediation.customevent.CustomEventAdapter;
import com.google.android.gms.ads.mediation.customevent.CustomEventInterstitialListener;
import java.util.Map;

/* renamed from: Ah, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0100Ah implements CustomEventInterstitialListener, InterfaceC3510pS {

    /* renamed from: do, reason: not valid java name */
    public final Object f121do;

    /* renamed from: for, reason: not valid java name */
    public final Object f122for;

    /* renamed from: if, reason: not valid java name */
    public final Object f123if;

    public /* synthetic */ C0100Ah(Object obj, Object obj2, Object obj3) {
        this.f122for = obj;
        this.f121do = obj2;
        this.f123if = obj3;
    }

    @Override // defpackage.InterfaceC3510pS
    /* renamed from: if, reason: not valid java name */
    public final void mo88if(String str, int i, Throwable th, byte[] bArr, Map map) {
        ((ZU) this.f122for).m3039return((String) this.f121do, i, th, bArr, (C2874hV) this.f123if);
    }

    @Override // com.google.android.gms.ads.mediation.customevent.CustomEventListener
    public final void onAdClicked() {
        zzo.zze("Custom event adapter called onAdClicked.");
        ((MediationInterstitialListener) this.f123if).onAdClicked((CustomEventAdapter) this.f121do);
    }

    @Override // com.google.android.gms.ads.mediation.customevent.CustomEventListener
    public final void onAdClosed() {
        zzo.zze("Custom event adapter called onAdClosed.");
        ((MediationInterstitialListener) this.f123if).onAdClosed((CustomEventAdapter) this.f121do);
    }

    @Override // com.google.android.gms.ads.mediation.customevent.CustomEventListener
    public final void onAdFailedToLoad(int i) {
        zzo.zze("Custom event adapter called onFailedToReceiveAd.");
        ((MediationInterstitialListener) this.f123if).onAdFailedToLoad((CustomEventAdapter) this.f121do, i);
    }

    @Override // com.google.android.gms.ads.mediation.customevent.CustomEventListener
    public final void onAdLeftApplication() {
        zzo.zze("Custom event adapter called onAdLeftApplication.");
        ((MediationInterstitialListener) this.f123if).onAdLeftApplication((CustomEventAdapter) this.f121do);
    }

    @Override // com.google.android.gms.ads.mediation.customevent.CustomEventInterstitialListener
    public final void onAdLoaded() {
        zzo.zze("Custom event adapter called onReceivedAd.");
        ((MediationInterstitialListener) this.f123if).onAdLoaded((CustomEventAdapter) this.f122for);
    }

    @Override // com.google.android.gms.ads.mediation.customevent.CustomEventListener
    public final void onAdOpened() {
        zzo.zze("Custom event adapter called onAdOpened.");
        ((MediationInterstitialListener) this.f123if).onAdOpened((CustomEventAdapter) this.f121do);
    }

    public /* synthetic */ C0100Ah(ViewPager2 viewPager2, Cfor cfor, RecyclerView recyclerView) {
        this.f121do = viewPager2;
        this.f123if = cfor;
        this.f122for = recyclerView;
    }

    @Override // com.google.android.gms.ads.mediation.customevent.CustomEventListener
    public final void onAdFailedToLoad(AdError adError) {
        zzo.zze("Custom event adapter called onFailedToReceiveAd.");
        ((MediationInterstitialListener) this.f123if).onAdFailedToLoad((CustomEventAdapter) this.f121do, adError);
    }
}
