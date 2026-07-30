package defpackage;

import android.os.Bundle;
import android.os.DeadObjectException;
import android.text.TextUtils;
import com.android.billingclient.api.Cdo;
import com.android.billingclient.api.Cif;
import com.google.android.gms.internal.play_billing.zzan;
import com.google.android.gms.internal.play_billing.zzco;
import com.google.android.gms.internal.play_billing.zze;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Callable;
import org.json.JSONException;

/* loaded from: classes.dex */
public final class AP implements Callable {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ String f81do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ C3428o5 f82do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ InterfaceC4127zy f83do;

    public AP(C3428o5 c3428o5, String str, InterfaceC4127zy interfaceC4127zy) {
        this.f81do = str;
        this.f83do = interfaceC4127zy;
        this.f82do = c3428o5;
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        C3450oR m7668import;
        zzan zzanVar;
        C0781bx c0781bx;
        C3428o5 c3428o5 = this.f82do;
        String str = this.f81do;
        c3428o5.getClass();
        zze.zzk("BillingClient", "Querying owned items, item type: ".concat(String.valueOf(str)));
        ArrayList arrayList = new ArrayList();
        boolean z = c3428o5.f14678for;
        boolean z2 = c3428o5.f14683this;
        c3428o5.f14665do.getClass();
        c3428o5.f14665do.getClass();
        Bundle zzd = zze.zzd(z, z2, true, false, c3428o5.f14673do, c3428o5.f14671do.longValue());
        Exception exc = null;
        String str2 = null;
        while (true) {
            try {
                synchronized (c3428o5.f14672do) {
                    zzanVar = c3428o5.f14668do;
                }
                if (zzanVar == null) {
                    m7668import = c3428o5.m7668import(Cif.f9114const, 119, "Service has been reset to null", exc);
                    break;
                }
                Bundle zzj = c3428o5.f14678for ? zzanVar.zzj(true != c3428o5.f14683this ? 9 : 19, c3428o5.f14666do.getPackageName(), str, str2, zzd) : zzanVar.zzi(3, c3428o5.f14666do.getPackageName(), str, str2);
                Cdo cdo = Cif.f9112catch;
                if (zzj == null) {
                    zze.zzl("BillingClient", String.format("%s got null owned items list", "getPurchase()"));
                    c0781bx = new C0781bx(cdo, 54);
                } else {
                    int zzb = zze.zzb(zzj, "BillingClient");
                    String zzh = zze.zzh(zzj, "BillingClient");
                    Cdo cdo2 = new Cdo();
                    cdo2.f9106do = zzb;
                    cdo2.f9107do = zzh;
                    if (zzb != 0) {
                        zze.zzl("BillingClient", String.format("%s failed. Response code: %s", "getPurchase()", Integer.valueOf(zzb)));
                        c0781bx = new C0781bx(cdo2, 23);
                    } else if (zzj.containsKey("INAPP_PURCHASE_ITEM_LIST") && zzj.containsKey("INAPP_PURCHASE_DATA_LIST") && zzj.containsKey("INAPP_DATA_SIGNATURE_LIST")) {
                        ArrayList<String> stringArrayList = zzj.getStringArrayList("INAPP_PURCHASE_ITEM_LIST");
                        ArrayList<String> stringArrayList2 = zzj.getStringArrayList("INAPP_PURCHASE_DATA_LIST");
                        ArrayList<String> stringArrayList3 = zzj.getStringArrayList("INAPP_DATA_SIGNATURE_LIST");
                        if (stringArrayList == null) {
                            zze.zzl("BillingClient", String.format("Bundle returned from %s contains null SKUs list.", "getPurchase()"));
                            c0781bx = new C0781bx(cdo, 56);
                        } else if (stringArrayList2 == null) {
                            zze.zzl("BillingClient", String.format("Bundle returned from %s contains null purchases list.", "getPurchase()"));
                            c0781bx = new C0781bx(cdo, 57);
                        } else if (stringArrayList3 == null) {
                            zze.zzl("BillingClient", String.format("Bundle returned from %s contains null signatures list.", "getPurchase()"));
                            c0781bx = new C0781bx(cdo, 58);
                        } else {
                            c0781bx = new C0781bx(Cif.f9113class, 1);
                        }
                    } else {
                        zze.zzl("BillingClient", String.format("Bundle returned from %s doesn't contain required fields.", "getPurchase()"));
                        c0781bx = new C0781bx(cdo, 55);
                    }
                }
                Cdo cdo3 = (Cdo) c0781bx.f8462do;
                if (cdo3 != Cif.f9113class) {
                    m7668import = c3428o5.m7668import(cdo3, c0781bx.f8461do, "Purchase bundle invalid", exc);
                    break;
                }
                ArrayList<String> stringArrayList4 = zzj.getStringArrayList("INAPP_PURCHASE_ITEM_LIST");
                ArrayList<String> stringArrayList5 = zzj.getStringArrayList("INAPP_PURCHASE_DATA_LIST");
                ArrayList<String> stringArrayList6 = zzj.getStringArrayList("INAPP_DATA_SIGNATURE_LIST");
                boolean z3 = false;
                for (int i = 0; i < stringArrayList5.size(); i++) {
                    String str3 = stringArrayList5.get(i);
                    String str4 = stringArrayList6.get(i);
                    zze.zzk("BillingClient", "Sku is owned: ".concat(String.valueOf(stringArrayList4.get(i))));
                    try {
                        C4009xy c4009xy = new C4009xy(str3, str4);
                        if (TextUtils.isEmpty(c4009xy.m8687if())) {
                            zze.zzl("BillingClient", "BUG: empty/null token!");
                            z3 = true;
                        }
                        arrayList.add(c4009xy);
                    } catch (JSONException e) {
                        m7668import = c3428o5.m7668import(Cif.f9112catch, 51, "Got an exception trying to decode the purchase!", e);
                    }
                }
                if (z3) {
                    c3428o5.m7663default(26, 9, Cif.f9112catch);
                }
                str2 = zzj.getString("INAPP_CONTINUATION_TOKEN");
                zze.zzk("BillingClient", "Continuation token: ".concat(String.valueOf(str2)));
                if (TextUtils.isEmpty(str2)) {
                    m7668import = new C3450oR(Cif.f9113class, arrayList);
                    break;
                }
                exc = null;
            } catch (DeadObjectException e2) {
                m7668import = c3428o5.m7668import(Cif.f9114const, 52, "Got exception trying to get purchases try to reconnect", e2);
            } catch (Exception e3) {
                m7668import = c3428o5.m7668import(Cif.f9112catch, 52, "Got exception trying to get purchases try to reconnect", e3);
            }
        }
        List<C4009xy> list = (List) m7668import.f14787do;
        if (list != null) {
            this.f83do.mo5222do((Cdo) m7668import.f14788if, list);
            return null;
        }
        this.f83do.mo5222do((Cdo) m7668import.f14788if, zzco.zzl());
        return null;
    }
}
