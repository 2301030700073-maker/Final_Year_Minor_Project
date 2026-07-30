package com.facebook.login;

import android.content.Context;
import android.os.Bundle;
import android.os.Parcel;
import android.text.TextUtils;
import android.webkit.CookieSyncManager;
import com.facebook.AccessToken;
import com.facebook.FacebookRequestError;
import com.facebook.internal.Utility;
import com.facebook.login.LoginClient;
import com.facebook.login.LoginMethodHandler;
import defpackage.C0173Do;
import defpackage.C3344mh;
import defpackage.C3462oh;
import defpackage.C3756th;
import defpackage.C3874vh;
import defpackage.Cprotected;
import java.util.ArrayList;

/* loaded from: classes.dex */
public abstract class WebLoginMethodHandler extends LoginMethodHandler {

    /* renamed from: break, reason: not valid java name */
    public String f9387break;

    public WebLoginMethodHandler(LoginClient loginClient) {
        super(loginClient);
    }

    /* renamed from: import */
    public abstract Cprotected mo5484import();

    /* renamed from: native, reason: not valid java name */
    public final void m5528native(LoginClient.Request request, Bundle bundle, C3344mh c3344mh) {
        LoginClient.Result result;
        LoginClient m5520new = m5520new();
        String str = null;
        this.f9387break = null;
        LoginClient.Result.Cdo cdo = LoginClient.Result.Cdo.ERROR;
        if (bundle != null) {
            if (bundle.containsKey("e2e")) {
                this.f9387break = bundle.getString("e2e");
            }
            try {
                AccessToken m5523if = LoginMethodHandler.Cdo.m5523if(request.f9360do, bundle, mo5484import(), request.f9353break);
                result = new LoginClient.Result(m5520new.f9342do, LoginClient.Result.Cdo.SUCCESS, m5523if, LoginMethodHandler.Cdo.m5522for(bundle, request.f9369throw), null, null);
                if (m5520new.m5512try() != null) {
                    try {
                        CookieSyncManager.createInstance(m5520new.m5512try()).sync();
                    } catch (Exception unused) {
                    }
                    if (m5523if != null) {
                        String str2 = m5523if.f9200break;
                        Context m5512try = m5520new().m5512try();
                        if (m5512try == null) {
                            m5512try = C3756th.m8299do();
                        }
                        m5512try.getSharedPreferences("com.facebook.login.AuthorizationClient.WebViewAuthHandler.TOKEN_STORE_KEY", 0).edit().putString("TOKEN", str2).apply();
                    }
                }
            } catch (C3344mh e) {
                LoginClient.Request request2 = m5520new.f9342do;
                String message = e.getMessage();
                ArrayList arrayList = new ArrayList();
                if (message != null) {
                    arrayList.add(message);
                }
                result = new LoginClient.Result(request2, cdo, null, TextUtils.join(": ", arrayList), null);
            }
        } else if (c3344mh instanceof C3462oh) {
            result = new LoginClient.Result(m5520new.f9342do, LoginClient.Result.Cdo.CANCEL, null, "User canceled log in.", null);
        } else {
            this.f9387break = null;
            String message2 = c3344mh == null ? null : c3344mh.getMessage();
            if (c3344mh instanceof C3874vh) {
                FacebookRequestError facebookRequestError = ((C3874vh) c3344mh).f16109do;
                str = String.valueOf(facebookRequestError.f9264new);
                message2 = facebookRequestError.toString();
            }
            String str3 = str;
            LoginClient.Request request3 = m5520new.f9342do;
            ArrayList arrayList2 = new ArrayList();
            if (message2 != null) {
                arrayList2.add(message2);
            }
            result = new LoginClient.Result(request3, cdo, null, TextUtils.join(": ", arrayList2), str3);
        }
        Utility utility = Utility.INSTANCE;
        if (!Utility.isNullOrEmpty(this.f9387break)) {
            m5516catch(this.f9387break);
        }
        m5520new.m5510new(result);
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x009b  */
    /* renamed from: while, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final android.os.Bundle m5529while(com.facebook.login.LoginClient.Request r8) {
        /*
            r7 = this;
            android.os.Bundle r0 = new android.os.Bundle
            r0.<init>()
            com.facebook.internal.Utility r1 = com.facebook.internal.Utility.INSTANCE
            java.util.Set<java.lang.String> r1 = r8.f9360do
            boolean r1 = com.facebook.internal.Utility.isNullOrEmpty(r1)
            if (r1 != 0) goto L1f
            java.util.Set<java.lang.String> r1 = r8.f9360do
            java.lang.String r2 = ","
            java.lang.String r1 = android.text.TextUtils.join(r2, r1)
            java.lang.String r2 = "scope"
            r0.putString(r2, r1)
            r7.m5517do(r1, r2)
        L1f:
            fd r1 = r8.f9358do
            if (r1 != 0) goto L25
            fd r1 = defpackage.EnumC2760fd.NONE
        L25:
            java.lang.String r2 = "default_audience"
            java.lang.String r1 = r1.f12954break
            r0.putString(r2, r1)
            java.lang.String r8 = r8.f9354catch
            java.lang.String r8 = r7.m5519for(r8)
            java.lang.String r1 = "state"
            r0.putString(r1, r8)
            java.util.Date r8 = com.facebook.AccessToken.f9198new
            com.facebook.AccessToken r8 = com.facebook.AccessToken.Cif.m5258if()
            if (r8 != 0) goto L41
            r8 = 0
            goto L43
        L41:
            java.lang.String r8 = r8.f9200break
        L43:
            java.lang.String r1 = "0"
            java.lang.String r2 = "1"
            java.lang.String r3 = "access_token"
            if (r8 == 0) goto L75
            com.facebook.login.LoginClient r4 = r7.m5520new()
            androidx.fragment.app.FragmentActivity r4 = r4.m5512try()
            if (r4 != 0) goto L59
            android.content.Context r4 = defpackage.C3756th.m8299do()
        L59:
            java.lang.String r5 = "com.facebook.login.AuthorizationClient.WebViewAuthHandler.TOKEN_STORE_KEY"
            r6 = 0
            android.content.SharedPreferences r4 = r4.getSharedPreferences(r5, r6)
            java.lang.String r5 = "TOKEN"
            java.lang.String r6 = ""
            java.lang.String r4 = r4.getString(r5, r6)
            boolean r4 = defpackage.C0173Do.m394do(r8, r4)
            if (r4 == 0) goto L75
            r0.putString(r3, r8)
            r7.m5517do(r2, r3)
            goto L86
        L75:
            com.facebook.login.LoginClient r8 = r7.m5520new()
            androidx.fragment.app.FragmentActivity r8 = r8.m5512try()
            if (r8 != 0) goto L80
            goto L83
        L80:
            com.facebook.internal.Utility.clearFacebookCookies(r8)
        L83:
            r7.m5517do(r1, r3)
        L86:
            long r3 = java.lang.System.currentTimeMillis()
            java.lang.String r8 = java.lang.String.valueOf(r3)
            java.lang.String r3 = "cbt"
            r0.putString(r3, r8)
            th r8 = defpackage.C3756th.f15751do
            boolean r8 = defpackage.MJ.m1411if()
            if (r8 == 0) goto L9c
            r1 = r2
        L9c:
            java.lang.String r8 = "ies"
            r0.putString(r8, r1)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.login.WebLoginMethodHandler.m5529while(com.facebook.login.LoginClient$Request):android.os.Bundle");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WebLoginMethodHandler(Parcel parcel) {
        super(parcel);
        C0173Do.m401try(parcel, "source");
    }
}
