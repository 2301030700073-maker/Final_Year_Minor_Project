package com.facebook.login;

import android.content.Intent;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.fragment.app.FragmentActivity;
import com.facebook.internal.CallbackManagerImpl;
import com.facebook.internal.CustomTabUtils;
import com.facebook.internal.NativeProtocol;
import com.facebook.login.LoginClient;
import defpackage.C0173Do;
import defpackage.C3756th;
import defpackage.EnumC2760fd;
import defpackage.EnumC3607r8;
import java.util.List;
import java.util.Set;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class KatanaProxyLoginMethodHandler extends NativeAppLoginMethodHandler {
    public static final Parcelable.Creator<KatanaProxyLoginMethodHandler> CREATOR = new Cdo();

    /* renamed from: break, reason: not valid java name */
    public final String f9340break;

    /* renamed from: com.facebook.login.KatanaProxyLoginMethodHandler$do, reason: invalid class name */
    public static final class Cdo implements Parcelable.Creator<KatanaProxyLoginMethodHandler> {
        @Override // android.os.Parcelable.Creator
        public final KatanaProxyLoginMethodHandler createFromParcel(Parcel parcel) {
            C0173Do.m401try(parcel, "source");
            return new KatanaProxyLoginMethodHandler(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public final KatanaProxyLoginMethodHandler[] newArray(int i) {
            return new KatanaProxyLoginMethodHandler[i];
        }
    }

    public KatanaProxyLoginMethodHandler(LoginClient loginClient) {
        super(loginClient);
        this.f9340break = "katana_proxy_auth";
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // com.facebook.login.LoginMethodHandler
    /* renamed from: throw */
    public final int mo5486throw(LoginClient.Request request) {
        boolean z = C3756th.f15757if && CustomTabUtils.getChromePackage() != null && request.f9357do.f8244try;
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("init", System.currentTimeMillis());
        } catch (JSONException unused) {
        }
        String jSONObject2 = jSONObject.toString();
        C0173Do.m399new(jSONObject2, "e2e.toString()");
        NativeProtocol nativeProtocol = NativeProtocol.INSTANCE;
        FragmentActivity m5512try = m5520new().m5512try();
        String str = request.f9353break;
        Set<String> set = request.f9360do;
        boolean z2 = request.f9362do;
        boolean m5513do = request.m5513do();
        EnumC2760fd enumC2760fd = request.f9358do;
        if (enumC2760fd == null) {
            enumC2760fd = EnumC2760fd.NONE;
        }
        EnumC2760fd enumC2760fd2 = enumC2760fd;
        String m5519for = m5519for(request.f9354catch);
        String str2 = request.f9356const;
        String str3 = request.f9368super;
        boolean z3 = request.f9365if;
        boolean z4 = request.f9364for;
        boolean z5 = request.f9367new;
        String str4 = request.f9369throw;
        String str5 = request.f9366import;
        EnumC3607r8 enumC3607r8 = request.f9361do;
        List<Intent> createProxyAuthIntents = NativeProtocol.createProxyAuthIntents(m5512try, str, set, jSONObject2, z2, m5513do, enumC2760fd2, m5519for, str2, z, str3, z3, z4, z5, str4, str5, enumC3607r8 == null ? null : enumC3607r8.name());
        m5517do(jSONObject2, "e2e");
        int i = 0;
        for (Intent intent : createProxyAuthIntents) {
            i++;
            CallbackManagerImpl.RequestCodeOffset.Login.toRequestCode();
            if (m5526static(intent)) {
                return i;
            }
        }
        return 0;
    }

    @Override // com.facebook.login.LoginMethodHandler
    /* renamed from: try */
    public final String mo5487try() {
        return this.f9340break;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public KatanaProxyLoginMethodHandler(Parcel parcel) {
        super(parcel);
        C0173Do.m401try(parcel, "source");
        this.f9340break = "katana_proxy_auth";
    }
}
