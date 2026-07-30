package defpackage;

import android.content.Intent;
import android.os.ResultReceiver;
import android.text.TextUtils;
import android.webkit.WebView;
import androidx.activity.result.ActivityResult;
import com.android.billingclient.api.ProxyBillingActivityV2;
import com.google.android.gms.ads.internal.client.zzbe;
import com.google.android.gms.ads.internal.overlay.zzx;
import com.google.android.gms.ads.internal.overlay.zzz;
import com.google.android.gms.internal.ads.zzbcl;
import com.google.android.gms.internal.ads.zzbzw;
import com.google.android.gms.internal.ads.zzfta;
import com.google.android.gms.internal.ads.zzftb;
import com.google.android.gms.internal.measurement.zzs;
import com.google.android.gms.internal.measurement.zzv;
import com.google.android.gms.internal.play_billing.zze;
import java.net.URL;
import java.util.HashMap;
import java.util.List;
import java.util.concurrent.CountDownLatch;
import org.chromium.support_lib_boundary.DropDataContentProviderBoundaryInterface;
import org.chromium.support_lib_boundary.StaticsBoundaryInterface;
import org.chromium.support_lib_boundary.WebViewProviderBoundaryInterface;
import org.chromium.support_lib_boundary.WebViewProviderFactoryBoundaryInterface;

/* renamed from: cM, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0806cM implements InterfaceC0747bM, V, zzftb, zzv, InterfaceC0619Xv, InterfaceC0487Rv, InterfaceC0377Mv {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ int f8525do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public Object f8526do;

    public C0806cM() {
        this.f8525do = 5;
    }

    @Override // defpackage.InterfaceC0747bM
    /* renamed from: case */
    public final StaticsBoundaryInterface mo4831case() {
        return (StaticsBoundaryInterface) P5.m1747do(StaticsBoundaryInterface.class, ((WebViewProviderFactoryBoundaryInterface) this.f8526do).getStatics());
    }

    @Override // defpackage.V
    /* renamed from: do */
    public final void mo2492do(Object obj) {
        ProxyBillingActivityV2 proxyBillingActivityV2 = (ProxyBillingActivityV2) this.f8526do;
        ActivityResult activityResult = (ActivityResult) obj;
        proxyBillingActivityV2.getClass();
        Intent intent = activityResult.f5147do;
        int i = zze.zzf(intent, "ProxyBillingActivityV2").f9106do;
        ResultReceiver resultReceiver = proxyBillingActivityV2.f9104if;
        if (resultReceiver != null) {
            resultReceiver.send(i, intent == null ? null : intent.getExtras());
        }
        int i2 = activityResult.f5148for;
        if (i2 != -1 || i != 0) {
            zze.zzl("ProxyBillingActivityV2", String.format("External offer dialog finished with resultCode: %s and billing's responseCode: %s", Integer.valueOf(i2), Integer.valueOf(i)));
        }
        proxyBillingActivityV2.finish();
    }

    @Override // defpackage.InterfaceC0747bM
    /* renamed from: else */
    public final DropDataContentProviderBoundaryInterface mo4832else() {
        return (DropDataContentProviderBoundaryInterface) P5.m1747do(DropDataContentProviderBoundaryInterface.class, ((WebViewProviderFactoryBoundaryInterface) this.f8526do).getDropDataProvider());
    }

    @Override // defpackage.InterfaceC0377Mv
    /* renamed from: for */
    public final void mo355for() {
        ((CountDownLatch) this.f8526do).countDown();
    }

    @Override // defpackage.InterfaceC0619Xv
    /* renamed from: if */
    public final void mo356if(Object obj) {
        ((CountDownLatch) this.f8526do).countDown();
    }

    @Override // defpackage.InterfaceC0747bM
    /* renamed from: new */
    public final WebViewProviderBoundaryInterface mo4833new(WebView webView) {
        return (WebViewProviderBoundaryInterface) P5.m1747do(WebViewProviderBoundaryInterface.class, ((WebViewProviderFactoryBoundaryInterface) this.f8526do).createWebView(webView));
    }

    @Override // defpackage.InterfaceC0487Rv
    public final void onFailure(Exception exc) {
        ((CountDownLatch) this.f8526do).countDown();
    }

    public final String toString() {
        switch (this.f8525do) {
            case 6:
                return ((URL) this.f8526do).toString();
            default:
                return super.toString();
        }
    }

    @Override // defpackage.InterfaceC0747bM
    /* renamed from: try */
    public final String[] mo4834try() {
        return ((WebViewProviderFactoryBoundaryInterface) this.f8526do).getSupportedFeatures();
    }

    @Override // com.google.android.gms.internal.ads.zzftb
    public final void zza(zzfta zzftaVar) {
        zzz zzzVar = (zzz) this.f8526do;
        zzzVar.getClass();
        if (!TextUtils.isEmpty(zzftaVar.zzb())) {
            if (!((Boolean) zzbe.zzc().zza(zzbcl.zzlq)).booleanValue()) {
                zzzVar.f9727do = zzftaVar.zzb();
            }
        }
        switch (zzftaVar.zza()) {
            case 8152:
                zzbzw.zzf.execute(new zzx(zzzVar, "onLMDOverlayOpened", new HashMap()));
                break;
            case 8153:
                zzbzw.zzf.execute(new zzx(zzzVar, "onLMDOverlayClicked", new HashMap()));
                break;
            case 8155:
                zzbzw.zzf.execute(new zzx(zzzVar, "onLMDOverlayClose", new HashMap()));
                break;
            case 8157:
                zzzVar.f9727do = null;
                zzzVar.f9729if = null;
                zzzVar.f9728do = false;
                break;
            case 8160:
            case 8161:
            case 8162:
                HashMap hashMap = new HashMap();
                hashMap.put("error", String.valueOf(zzftaVar.zza()));
                zzbzw.zzf.execute(new zzx(zzzVar, "onLMDOverlayFailedToOpen", hashMap));
                break;
        }
    }

    public /* synthetic */ C0806cM(Object obj, int i) {
        this.f8525do = i;
        this.f8526do = obj;
    }

    public /* synthetic */ C0806cM(int i) {
        this.f8525do = 4;
        this.f8526do = new CountDownLatch(1);
    }

    @Override // com.google.android.gms.internal.measurement.zzv
    public final void zza(zzs zzsVar, String str, List list, boolean z, boolean z2) {
        C3274lS c3274lS;
        int i = PS.f2786do[zzsVar.ordinal()];
        if (i == 1) {
            c3274lS = ((IS) this.f8526do).mo2249case().f13720goto;
        } else if (i != 2) {
            if (i != 3) {
                if (i != 4) {
                    c3274lS = ((IS) this.f8526do).mo2249case().f13718else;
                } else {
                    c3274lS = ((IS) this.f8526do).mo2249case().f13723this;
                }
            } else if (z) {
                c3274lS = ((IS) this.f8526do).mo2249case().f13724try;
            } else if (!z2) {
                c3274lS = ((IS) this.f8526do).mo2249case().f13713case;
            } else {
                c3274lS = ((IS) this.f8526do).mo2249case().f13722new;
            }
        } else if (z) {
            c3274lS = ((IS) this.f8526do).mo2249case().f13721if;
        } else if (!z2) {
            c3274lS = ((IS) this.f8526do).mo2249case().f13719for;
        } else {
            c3274lS = ((IS) this.f8526do).mo2249case().f13717do;
        }
        int size = list.size();
        if (size == 1) {
            c3274lS.m7368for(str, list.get(0));
            return;
        }
        if (size == 2) {
            c3274lS.m7367do(list.get(0), str, list.get(1));
        } else if (size != 3) {
            c3274lS.m7369if(str);
        } else {
            c3274lS.m7370new(str, list.get(0), list.get(1), list.get(2));
        }
    }
}
