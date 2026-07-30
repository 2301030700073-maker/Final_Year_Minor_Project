package com.facebook.login;

import android.content.Intent;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.facebook.AccessToken;
import com.facebook.AuthenticationToken;
import com.facebook.FacebookRequestError;
import com.facebook.GraphRequest;
import com.facebook.appevents.InternalAppEventsLogger;
import com.facebook.internal.AnalyticsEvents;
import com.facebook.internal.NativeProtocol;
import com.facebook.internal.ServerProtocol;
import com.facebook.internal.Utility;
import com.facebook.login.LoginClient;
import com.google.android.gms.ads.RequestConfiguration;
import defpackage.C0173Do;
import defpackage.C0346Ll;
import defpackage.C3344mh;
import defpackage.C3756th;
import defpackage.C3874vh;
import defpackage.C4120zr;
import defpackage.Cprotected;
import defpackage.EnumC0171Dm;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public abstract class LoginMethodHandler implements Parcelable {

    /* renamed from: do, reason: not valid java name */
    public LoginClient f9384do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public HashMap f9385do;

    /* renamed from: com.facebook.login.LoginMethodHandler$do, reason: invalid class name */
    public static final class Cdo {
        /* renamed from: do, reason: not valid java name */
        public static AccessToken m5521do(Bundle bundle, String str) {
            String string;
            Cprotected cprotected = Cprotected.FACEBOOK_APPLICATION_SERVICE;
            C0173Do.m401try(bundle, "bundle");
            C0173Do.m401try(str, "applicationId");
            Utility utility = Utility.INSTANCE;
            Date bundleLongAsDate = Utility.getBundleLongAsDate(bundle, NativeProtocol.EXTRA_EXPIRES_SECONDS_SINCE_EPOCH, new Date(0L));
            ArrayList<String> stringArrayList = bundle.getStringArrayList(NativeProtocol.EXTRA_PERMISSIONS);
            String string2 = bundle.getString(NativeProtocol.EXTRA_ACCESS_TOKEN);
            Date bundleLongAsDate2 = Utility.getBundleLongAsDate(bundle, NativeProtocol.EXTRA_DATA_ACCESS_EXPIRATION_TIME, new Date(0L));
            if (string2 == null) {
                return null;
            }
            if ((string2.length() == 0) || (string = bundle.getString(NativeProtocol.EXTRA_USER_ID)) == null) {
                return null;
            }
            if (string.length() == 0) {
                return null;
            }
            return new AccessToken(string2, str, string, stringArrayList, null, null, cprotected, bundleLongAsDate, new Date(), bundleLongAsDate2, bundle.getString(NativeProtocol.RESULT_ARGS_GRAPH_DOMAIN));
        }

        /* renamed from: for, reason: not valid java name */
        public static AuthenticationToken m5522for(Bundle bundle, String str) {
            C0173Do.m401try(bundle, "bundle");
            String string = bundle.getString(ServerProtocol.DIALOG_PARAM_AUTHENTICATION_TOKEN);
            if (string != null) {
                if (!(string.length() == 0) && str != null) {
                    if (!(str.length() == 0)) {
                        try {
                            return new AuthenticationToken(string, str);
                        } catch (Exception e) {
                            throw new C3344mh(e.getMessage(), e);
                        }
                    }
                }
            }
            return null;
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x007a  */
        /* JADX WARN: Removed duplicated region for block: B:25:0x00b3  */
        /* JADX WARN: Removed duplicated region for block: B:34:0x00ea A[RETURN] */
        /* JADX WARN: Removed duplicated region for block: B:35:0x00eb  */
        /* renamed from: if, reason: not valid java name */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public static com.facebook.AccessToken m5523if(java.util.Set r15, android.os.Bundle r16, defpackage.Cprotected r17, java.lang.String r18) {
            /*
                Method dump skipped, instructions count: 362
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.facebook.login.LoginMethodHandler.Cdo.m5523if(java.util.Set, android.os.Bundle, protected, java.lang.String):com.facebook.AccessToken");
        }
    }

    public LoginMethodHandler(LoginClient loginClient) {
        this.f9384do = loginClient;
    }

    /* renamed from: catch, reason: not valid java name */
    public final void m5516catch(String str) {
        LoginClient.Request request = m5520new().f9342do;
        String str2 = request == null ? null : request.f9353break;
        if (str2 == null) {
            str2 = C3756th.m8303if();
        }
        InternalAppEventsLogger internalAppEventsLogger = new InternalAppEventsLogger(m5520new().m5512try(), str2);
        Bundle bundle = new Bundle();
        bundle.putString(AnalyticsEvents.PARAMETER_WEB_LOGIN_E2E, str);
        bundle.putLong(AnalyticsEvents.PARAMETER_WEB_LOGIN_SWITCHBACK_TIME, System.currentTimeMillis());
        bundle.putString("app_id", str2);
        internalAppEventsLogger.logEventImplicitly(AnalyticsEvents.EVENT_WEB_LOGIN_COMPLETE, null, bundle);
    }

    /* renamed from: class */
    public boolean mo5482class(int i, int i2, Intent intent) {
        return false;
    }

    /* renamed from: do, reason: not valid java name */
    public final void m5517do(String str, String str2) {
        if (this.f9385do == null) {
            this.f9385do = new HashMap();
        }
        HashMap hashMap = this.f9385do;
        if (hashMap == null) {
            return;
        }
    }

    /* renamed from: else */
    public String mo5483else() {
        return "fb" + C3756th.m8303if() + "://authorize/";
    }

    /* renamed from: final, reason: not valid java name */
    public final void m5518final(Bundle bundle, LoginClient.Request request) {
        GraphRequest m5286else;
        String string = bundle.getString("code");
        if (Utility.isNullOrEmpty(string)) {
            throw new C3344mh("No code param found from the request");
        }
        if (string == null) {
            m5286else = null;
        } else {
            String mo5483else = mo5483else();
            String str = request.f9370while;
            if (str == null) {
                str = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
            }
            C0173Do.m401try(mo5483else, "redirectUri");
            Bundle bundle2 = new Bundle();
            bundle2.putString("code", string);
            bundle2.putString("client_id", C3756th.m8303if());
            bundle2.putString(ServerProtocol.DIALOG_PARAM_REDIRECT_URI, mo5483else);
            bundle2.putString("code_verifier", str);
            String str2 = GraphRequest.f9271for;
            m5286else = GraphRequest.Cfor.m5286else(null, "oauth/access_token", null);
            m5286else.m5264break(EnumC0171Dm.GET);
            m5286else.f9274do = bundle2;
        }
        if (m5286else == null) {
            throw new C3344mh("Failed to create code exchange request");
        }
        C0346Ll m5267for = m5286else.m5267for();
        FacebookRequestError facebookRequestError = m5267for.f1995do;
        if (facebookRequestError != null) {
            throw new C3874vh(facebookRequestError, facebookRequestError.m5261do());
        }
        try {
            JSONObject jSONObject = m5267for.f1997do;
            String string2 = jSONObject != null ? jSONObject.getString("access_token") : null;
            if (jSONObject == null || Utility.isNullOrEmpty(string2)) {
                throw new C3344mh("No access token found from result");
            }
            bundle.putString("access_token", string2);
            if (jSONObject.has(ServerProtocol.DIALOG_PARAM_AUTHENTICATION_TOKEN)) {
                bundle.putString(ServerProtocol.DIALOG_PARAM_AUTHENTICATION_TOKEN, jSONObject.getString(ServerProtocol.DIALOG_PARAM_AUTHENTICATION_TOKEN));
            }
        } catch (JSONException e) {
            throw new C3344mh(C0173Do.m397goto(e.getMessage(), "Fail to process code exchange response: "));
        }
    }

    /* renamed from: for, reason: not valid java name */
    public final String m5519for(String str) {
        C0173Do.m401try(str, "authId");
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("0_auth_logger_id", str);
            jSONObject.put("3_method", mo5487try());
            mo5485super(jSONObject);
        } catch (JSONException e) {
            C0173Do.m397goto(e.getMessage(), "Error creating client state json: ");
        }
        String jSONObject2 = jSONObject.toString();
        C0173Do.m399new(jSONObject2, "param.toString()");
        return jSONObject2;
    }

    /* renamed from: if */
    public void mo5500if() {
    }

    /* renamed from: new, reason: not valid java name */
    public final LoginClient m5520new() {
        LoginClient loginClient = this.f9384do;
        if (loginClient != null) {
            return loginClient;
        }
        C0173Do.m400this("loginClient");
        throw null;
    }

    /* renamed from: super */
    public void mo5485super(JSONObject jSONObject) {
    }

    /* renamed from: throw */
    public abstract int mo5486throw(LoginClient.Request request);

    /* renamed from: try */
    public abstract String mo5487try();

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        C0173Do.m401try(parcel, "dest");
        Utility utility = Utility.INSTANCE;
        Utility.writeStringMapToParcel(parcel, this.f9385do);
    }

    public LoginMethodHandler(Parcel parcel) {
        C0173Do.m401try(parcel, "source");
        Map<String, String> readStringMapFromParcel = Utility.readStringMapFromParcel(parcel);
        this.f9385do = readStringMapFromParcel == null ? null : C4120zr.b(readStringMapFromParcel);
    }
}
