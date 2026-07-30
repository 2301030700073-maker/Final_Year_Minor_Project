package com.facebook.login;

import android.content.Context;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import com.facebook.AccessToken;
import com.facebook.AuthenticationToken;
import com.facebook.internal.NativeProtocol;
import com.facebook.login.LoginClient;
import com.facebook.login.LoginMethodHandler;
import defpackage.C0173Do;
import defpackage.C0586Wk;
import defpackage.C2876hb;
import defpackage.C3344mh;
import defpackage.C3756th;
import java.util.ArrayList;

/* loaded from: classes.dex */
public final class GetTokenLoginMethodHandler extends LoginMethodHandler {
    public static final Parcelable.Creator<GetTokenLoginMethodHandler> CREATOR = new Cdo();

    /* renamed from: break, reason: not valid java name */
    public final String f9336break;

    /* renamed from: do, reason: not valid java name */
    public C0586Wk f9337do;

    /* renamed from: com.facebook.login.GetTokenLoginMethodHandler$do, reason: invalid class name */
    public static final class Cdo implements Parcelable.Creator<GetTokenLoginMethodHandler> {
        @Override // android.os.Parcelable.Creator
        public final GetTokenLoginMethodHandler createFromParcel(Parcel parcel) {
            C0173Do.m401try(parcel, "source");
            return new GetTokenLoginMethodHandler(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public final GetTokenLoginMethodHandler[] newArray(int i) {
            return new GetTokenLoginMethodHandler[i];
        }
    }

    public GetTokenLoginMethodHandler(LoginClient loginClient) {
        super(loginClient);
        this.f9336break = "get_token";
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // com.facebook.login.LoginMethodHandler
    /* renamed from: if, reason: not valid java name */
    public final void mo5500if() {
        C0586Wk c0586Wk = this.f9337do;
        if (c0586Wk == null) {
            return;
        }
        c0586Wk.cancel();
        c0586Wk.setCompletedListener(null);
        this.f9337do = null;
    }

    @Override // com.facebook.login.LoginMethodHandler
    /* renamed from: throw */
    public final int mo5486throw(LoginClient.Request request) {
        Context m5512try = m5520new().m5512try();
        if (m5512try == null) {
            m5512try = C3756th.m8299do();
        }
        C0586Wk c0586Wk = new C0586Wk(m5512try, request);
        this.f9337do = c0586Wk;
        if (C0173Do.m394do(Boolean.valueOf(c0586Wk.start()), Boolean.FALSE)) {
            return 0;
        }
        LoginClient.Cdo cdo = m5520new().f9343do;
        if (cdo != null) {
            cdo.mo5514do();
        }
        C2876hb c2876hb = new C2876hb(this, request);
        C0586Wk c0586Wk2 = this.f9337do;
        if (c0586Wk2 == null) {
            return 1;
        }
        c0586Wk2.setCompletedListener(c2876hb);
        return 1;
    }

    @Override // com.facebook.login.LoginMethodHandler
    /* renamed from: try */
    public final String mo5487try() {
        return this.f9336break;
    }

    /* renamed from: while, reason: not valid java name */
    public final void m5501while(Bundle bundle, LoginClient.Request request) {
        LoginClient.Result result;
        AccessToken m5521do;
        String str;
        String string;
        AuthenticationToken authenticationToken;
        C0173Do.m401try(request, "request");
        C0173Do.m401try(bundle, "result");
        try {
            m5521do = LoginMethodHandler.Cdo.m5521do(bundle, request.f9353break);
            str = request.f9369throw;
            string = bundle.getString(NativeProtocol.EXTRA_AUTHENTICATION_TOKEN);
        } catch (C3344mh e) {
            LoginClient.Request request2 = m5520new().f9342do;
            String message = e.getMessage();
            ArrayList arrayList = new ArrayList();
            if (message != null) {
                arrayList.add(message);
            }
            result = new LoginClient.Result(request2, LoginClient.Result.Cdo.ERROR, null, TextUtils.join(": ", arrayList), null);
        }
        if (string != null) {
            if (!(string.length() == 0) && str != null) {
                if (!(str.length() == 0)) {
                    try {
                        authenticationToken = new AuthenticationToken(string, str);
                        result = new LoginClient.Result(request, LoginClient.Result.Cdo.SUCCESS, m5521do, authenticationToken, null, null);
                        m5520new().m5510new(result);
                    } catch (Exception e2) {
                        throw new C3344mh(e2.getMessage());
                    }
                }
            }
        }
        authenticationToken = null;
        result = new LoginClient.Result(request, LoginClient.Result.Cdo.SUCCESS, m5521do, authenticationToken, null, null);
        m5520new().m5510new(result);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public GetTokenLoginMethodHandler(Parcel parcel) {
        super(parcel);
        C0173Do.m401try(parcel, "source");
        this.f9336break = "get_token";
    }
}
