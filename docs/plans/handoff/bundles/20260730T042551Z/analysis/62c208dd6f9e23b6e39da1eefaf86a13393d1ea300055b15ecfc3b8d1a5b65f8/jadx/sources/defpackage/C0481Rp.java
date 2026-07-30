package defpackage;

import android.os.Bundle;
import com.facebook.internal.FacebookRequestErrorClassification;
import com.google.firebase.perf.config.RemoteConfigManager;
import org.json.JSONException;
import org.json.JSONObject;

/* renamed from: Rp, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0481Rp implements F0, R5, InterfaceC3597qy {

    /* renamed from: do, reason: not valid java name */
    public Object f3237do;

    public C0481Rp() {
    }

    /* renamed from: new, reason: not valid java name */
    public static String m2071new(Bundle bundle, String str) {
        JSONObject jSONObject = new JSONObject();
        JSONObject jSONObject2 = new JSONObject();
        for (String str2 : bundle.keySet()) {
            jSONObject2.put(str2, bundle.get(str2));
        }
        jSONObject.put(FacebookRequestErrorClassification.KEY_NAME, str);
        jSONObject.put("parameters", jSONObject2);
        return jSONObject.toString();
    }

    @Override // defpackage.F0
    /* renamed from: do */
    public final void mo542do(Bundle bundle, String str) {
        Q5 q5 = (Q5) this.f3237do;
        if (q5 != null) {
            try {
                q5.mo1773do("$A$:" + m2071new(bundle, str));
            } catch (JSONException unused) {
            }
        }
    }

    /* renamed from: for, reason: not valid java name */
    public final C2621dD m2072for(JSONObject jSONObject) {
        return (jSONObject.getInt("settings_version") != 3 ? new C3929wd() : new C3377nD()).mo6886do((QJ) this.f3237do, jSONObject);
    }

    @Override // defpackage.InterfaceC3597qy
    public final Object get() {
        ((C3993xi) this.f3237do).getClass();
        RemoteConfigManager remoteConfigManager = RemoteConfigManager.getInstance();
        C3645ro.m8018this(remoteConfigManager);
        return remoteConfigManager;
    }

    @Override // defpackage.R5
    /* renamed from: if */
    public final void mo2014if(C0423Pb c0423Pb) {
        this.f3237do = c0423Pb;
    }

    public /* synthetic */ C0481Rp(Object obj) {
        this.f3237do = obj;
    }
}
