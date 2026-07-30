package defpackage;

import android.os.Bundle;
import android.os.Handler;
import android.text.TextUtils;
import com.facebook.internal.NativeProtocol;
import com.facebook.internal.PlatformServiceClient;
import com.facebook.internal.Utility;
import com.facebook.login.GetTokenLoginMethodHandler;
import com.facebook.login.LoginClient;
import com.google.android.gms.ads.nativead.NativeAd;
import com.google.android.gms.common.Scopes;
import defpackage.C3128j0;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.function.Supplier;

/* renamed from: hb, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final /* synthetic */ class C2876hb implements InterfaceC0598Xa, PlatformServiceClient.CompletedListener, C3128j0.Ctry {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ Object f13334do;

    /* renamed from: if, reason: not valid java name */
    public final /* synthetic */ Object f13335if;

    public /* synthetic */ C2876hb(Object obj, Object obj2) {
        this.f13334do = obj;
        this.f13335if = obj2;
    }

    @Override // com.facebook.internal.PlatformServiceClient.CompletedListener
    public void completed(Bundle bundle) {
        GetTokenLoginMethodHandler getTokenLoginMethodHandler = (GetTokenLoginMethodHandler) this.f13334do;
        LoginClient.Request request = (LoginClient.Request) this.f13335if;
        C0173Do.m401try(getTokenLoginMethodHandler, "this$0");
        C0173Do.m401try(request, "$request");
        C0586Wk c0586Wk = getTokenLoginMethodHandler.f9337do;
        if (c0586Wk != null) {
            c0586Wk.setCompletedListener(null);
        }
        getTokenLoginMethodHandler.f9337do = null;
        LoginClient.Cdo cdo = getTokenLoginMethodHandler.m5520new().f9343do;
        if (cdo != null) {
            cdo.mo5515if();
        }
        if (bundle != null) {
            List stringArrayList = bundle.getStringArrayList(NativeProtocol.EXTRA_PERMISSIONS);
            if (stringArrayList == null) {
                stringArrayList = C0471Rf.f3217do;
            }
            Set<String> set = request.f9360do;
            if (set == null) {
                set = C0515Tf.f3720do;
            }
            String string = bundle.getString(NativeProtocol.EXTRA_AUTHENTICATION_TOKEN);
            if (set.contains(Scopes.OPEN_ID)) {
                if (string == null || string.length() == 0) {
                    getTokenLoginMethodHandler.m5520new().m5511super();
                    return;
                }
            }
            if (stringArrayList.containsAll(set)) {
                String string2 = bundle.getString(NativeProtocol.EXTRA_USER_ID);
                if (!(string2 == null || string2.length() == 0)) {
                    getTokenLoginMethodHandler.m5501while(bundle, request);
                    return;
                }
                LoginClient.Cdo cdo2 = getTokenLoginMethodHandler.m5520new().f9343do;
                if (cdo2 != null) {
                    cdo2.mo5514do();
                }
                String string3 = bundle.getString(NativeProtocol.EXTRA_ACCESS_TOKEN);
                if (string3 == null) {
                    throw new IllegalStateException("Required value was null.".toString());
                }
                Utility.getGraphMeRequestWithCacheAsync(string3, new C0608Xk(bundle, getTokenLoginMethodHandler, request));
                return;
            }
            HashSet hashSet = new HashSet();
            for (String str : set) {
                if (!stringArrayList.contains(str)) {
                    hashSet.add(str);
                }
            }
            if (!hashSet.isEmpty()) {
                getTokenLoginMethodHandler.m5517do(TextUtils.join(",", hashSet), "new_permissions");
            }
            request.f9360do = hashSet;
        }
        getTokenLoginMethodHandler.m5520new().m5511super();
    }

    /* renamed from: do, reason: not valid java name */
    public void m6820do(List list) {
        C3128j0.Cdo cdo = (C3128j0.Cdo) this.f13334do;
        Supplier supplier = (Supplier) this.f13335if;
        Handler handler = C3128j0.f13617do;
        if (list.isEmpty()) {
            return;
        }
        if (cdo == supplier.get()) {
            cdo.mo1025if(list);
            return;
        }
        Iterator it = list.iterator();
        while (it.hasNext()) {
            NativeAd nativeAd = (NativeAd) it.next();
            if (nativeAd != null) {
                try {
                    nativeAd.destroy();
                } catch (Exception unused) {
                }
            }
        }
    }

    @Override // defpackage.InterfaceC0598Xa
    public Object then(FG fg) {
        Dz dz = (Dz) this.f13334do;
        String str = (String) this.f13335if;
        synchronized (dz) {
            dz.f711do.remove(str);
        }
        return fg;
    }
}
