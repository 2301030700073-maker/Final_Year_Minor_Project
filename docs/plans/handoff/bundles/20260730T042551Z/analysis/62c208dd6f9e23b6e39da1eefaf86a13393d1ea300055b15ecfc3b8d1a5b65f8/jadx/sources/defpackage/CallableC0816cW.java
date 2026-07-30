package defpackage;

import android.os.Bundle;
import android.os.DeadObjectException;
import com.android.billingclient.api.Cif;
import com.google.android.gms.ads.RequestConfiguration;
import com.google.android.gms.internal.play_billing.zzan;
import com.google.android.gms.internal.play_billing.zze;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Callable;
import org.json.JSONException;

/* renamed from: cW, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final /* synthetic */ class CallableC0816cW implements Callable {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ int f8553do = 1;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ Object f8554do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ String f8555do;

    /* renamed from: for, reason: not valid java name */
    public final /* synthetic */ Object f8556for;

    /* renamed from: if, reason: not valid java name */
    public final /* synthetic */ Object f8557if;

    public /* synthetic */ CallableC0816cW(C3428o5 c3428o5, String str, List list, InterfaceC4085zE interfaceC4085zE) {
        this.f8554do = c3428o5;
        this.f8555do = str;
        this.f8557if = list;
        this.f8556for = interfaceC4085zE;
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        C3921wR c3921wR;
        zzan zzanVar;
        Bundle zzk;
        switch (this.f8553do) {
            case 0:
                C3428o5 c3428o5 = (C3428o5) this.f8554do;
                String str = this.f8555do;
                List list = (List) this.f8557if;
                c3428o5.getClass();
                ArrayList arrayList = new ArrayList();
                int size = list.size();
                int i = 0;
                while (true) {
                    if (i < size) {
                        int i2 = i + 20;
                        ArrayList<String> arrayList2 = new ArrayList<>(list.subList(i, i2 > size ? size : i2));
                        Bundle bundle = new Bundle();
                        bundle.putStringArrayList("ITEM_ID_LIST", arrayList2);
                        bundle.putString("playBillingLibraryVersion", c3428o5.f14673do);
                        try {
                            synchronized (c3428o5.f14672do) {
                                zzanVar = c3428o5.f14668do;
                            }
                            if (zzanVar == null) {
                                c3921wR = c3428o5.m7669native(Cif.f9114const, 119, "Service has been reset to null.", null);
                            } else {
                                if (c3428o5.f14682new) {
                                    String packageName = c3428o5.f14666do.getPackageName();
                                    int i3 = c3428o5.f14680if;
                                    c3428o5.f14665do.getClass();
                                    if (c3428o5.f14683this) {
                                        c3428o5.f14665do.getClass();
                                    }
                                    String str2 = c3428o5.f14673do;
                                    long longValue = c3428o5.f14671do.longValue();
                                    Bundle bundle2 = new Bundle();
                                    if (i3 >= 9) {
                                        zze.zzc(bundle2, str2, longValue);
                                    }
                                    if (i3 >= 9) {
                                        bundle2.putBoolean("enablePendingPurchases", true);
                                    }
                                    zzk = zzanVar.zzl(10, packageName, str, bundle, bundle2);
                                } else {
                                    zzk = zzanVar.zzk(3, c3428o5.f14666do.getPackageName(), str, bundle);
                                }
                                if (zzk == null) {
                                    c3921wR = c3428o5.m7669native(Cif.f9122native, 44, "querySkuDetailsAsync got null sku details list", null);
                                } else if (zzk.containsKey("DETAILS_LIST")) {
                                    ArrayList<String> stringArrayList = zzk.getStringArrayList("DETAILS_LIST");
                                    if (stringArrayList != null) {
                                        for (int i4 = 0; i4 < stringArrayList.size(); i4++) {
                                            try {
                                                C3967xE c3967xE = new C3967xE(stringArrayList.get(i4));
                                                zze.zzk("BillingClient", "Got sku details: ".concat(c3967xE.toString()));
                                                arrayList.add(c3967xE);
                                            } catch (JSONException e) {
                                                c3921wR = c3428o5.m7669native(Cif.m5221do(6, "Error trying to decode SkuDetails."), 47, "Got a JSON exception trying to decode SkuDetails.", e);
                                            }
                                        }
                                        i = i2;
                                    } else {
                                        c3921wR = c3428o5.m7669native(Cif.f9122native, 46, "querySkuDetailsAsync got null response list", null);
                                    }
                                } else {
                                    int zzb = zze.zzb(zzk, "BillingClient");
                                    String zzh = zze.zzh(zzk, "BillingClient");
                                    c3921wR = zzb != 0 ? c3428o5.m7669native(Cif.m5221do(zzb, zzh), 23, V1.m2494case("getSkuDetails() failed. Response code: ", zzb), null) : c3428o5.m7669native(Cif.m5221do(6, zzh), 45, "getSkuDetails() returned a bundle with neither an error nor a detail list.", null);
                                }
                            }
                        } catch (DeadObjectException e2) {
                            c3921wR = c3428o5.m7669native(Cif.f9114const, 43, "querySkuDetailsAsync got a remote exception (try to reconnect).", e2);
                        } catch (Exception e3) {
                            c3921wR = c3428o5.m7669native(Cif.f9112catch, 43, "querySkuDetailsAsync got a remote exception (try to reconnect).", e3);
                        }
                    } else {
                        c3921wR = new C3921wR(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, 0, arrayList);
                    }
                }
                ((InterfaceC4085zE) this.f8556for).mo5225new(Cif.m5221do(c3921wR.f16343do, c3921wR.f16344do), c3921wR.f16345do);
                return null;
            default:
                YS ys = (YS) this.f8556for;
                ys.f4740do.p();
                C2868hP c2868hP = ys.f4740do.f4838do;
                ZU.m3016extends(c2868hP);
                return c2868hP.o(this.f8555do, (String) this.f8554do, (String) this.f8557if);
        }
    }

    public CallableC0816cW(YS ys, String str, String str2, String str3) {
        this.f8555do = str;
        this.f8554do = str2;
        this.f8557if = str3;
        this.f8556for = ys;
    }
}
