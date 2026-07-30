package com.facebook.login;

import android.content.Context;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.fragment.app.FragmentActivity;
import com.facebook.internal.FacebookDialogFragment;
import com.facebook.internal.ServerProtocol;
import com.facebook.internal.Utility;
import com.facebook.internal.WebDialog;
import com.facebook.login.LoginClient;
import defpackage.C0173Do;
import defpackage.C3344mh;
import defpackage.Cprotected;
import defpackage.EnumC0715ar;
import defpackage.EnumC2892hr;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class WebViewLoginMethodHandler extends WebLoginMethodHandler {
    public static final Parcelable.Creator<WebViewLoginMethodHandler> CREATOR = new Cif();

    /* renamed from: catch, reason: not valid java name */
    public String f9388catch;

    /* renamed from: class, reason: not valid java name */
    public final String f9389class;

    /* renamed from: do, reason: not valid java name */
    public WebDialog f9390do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Cprotected f9391do;

    /* renamed from: com.facebook.login.WebViewLoginMethodHandler$do, reason: invalid class name */
    public final class Cdo extends WebDialog.Builder {

        /* renamed from: do, reason: not valid java name */
        public EnumC0715ar f9392do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public EnumC2892hr f9393do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public String f9394do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public boolean f9395do;

        /* renamed from: for, reason: not valid java name */
        public String f9396for;

        /* renamed from: if, reason: not valid java name */
        public String f9397if;

        /* renamed from: if, reason: not valid java name and collision with other field name */
        public boolean f9398if;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Cdo(WebViewLoginMethodHandler webViewLoginMethodHandler, FragmentActivity fragmentActivity, String str, Bundle bundle) {
            super(fragmentActivity, str, "oauth", bundle);
            C0173Do.m401try(webViewLoginMethodHandler, "this$0");
            C0173Do.m401try(str, "applicationId");
            this.f9394do = ServerProtocol.DIALOG_REDIRECT_URI;
            this.f9392do = EnumC0715ar.NATIVE_WITH_FALLBACK;
            this.f9393do = EnumC2892hr.FACEBOOK;
        }

        @Override // com.facebook.internal.WebDialog.Builder
        public final WebDialog build() {
            Bundle parameters = getParameters();
            if (parameters == null) {
                throw new NullPointerException("null cannot be cast to non-null type android.os.Bundle");
            }
            parameters.putString(ServerProtocol.DIALOG_PARAM_REDIRECT_URI, this.f9394do);
            parameters.putString("client_id", getApplicationId());
            String str = this.f9397if;
            if (str == null) {
                C0173Do.m400this("e2e");
                throw null;
            }
            parameters.putString("e2e", str);
            parameters.putString(ServerProtocol.DIALOG_PARAM_RESPONSE_TYPE, this.f9393do == EnumC2892hr.INSTAGRAM ? ServerProtocol.DIALOG_RESPONSE_TYPE_TOKEN_AND_SCOPES : ServerProtocol.DIALOG_RESPONSE_TYPE_TOKEN_AND_SIGNED_REQUEST);
            parameters.putString(ServerProtocol.DIALOG_PARAM_RETURN_SCOPES, ServerProtocol.DIALOG_RETURN_SCOPES_TRUE);
            String str2 = this.f9396for;
            if (str2 == null) {
                C0173Do.m400this("authType");
                throw null;
            }
            parameters.putString(ServerProtocol.DIALOG_PARAM_AUTH_TYPE, str2);
            parameters.putString(ServerProtocol.DIALOG_PARAM_LOGIN_BEHAVIOR, this.f9392do.name());
            if (this.f9395do) {
                parameters.putString(ServerProtocol.DIALOG_PARAM_FX_APP, this.f9393do.f13368break);
            }
            if (this.f9398if) {
                parameters.putString(ServerProtocol.DIALOG_PARAM_SKIP_DEDUPE, ServerProtocol.DIALOG_RETURN_SCOPES_TRUE);
            }
            WebDialog.Companion companion = WebDialog.Companion;
            Context context = getContext();
            if (context != null) {
                return companion.newInstance(context, "oauth", parameters, getTheme(), this.f9393do, getListener());
            }
            throw new NullPointerException("null cannot be cast to non-null type android.content.Context");
        }
    }

    /* renamed from: com.facebook.login.WebViewLoginMethodHandler$for, reason: invalid class name */
    public static final class Cfor implements WebDialog.OnCompleteListener {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ LoginClient.Request f9399do;

        public Cfor(LoginClient.Request request) {
            this.f9399do = request;
        }

        @Override // com.facebook.internal.WebDialog.OnCompleteListener
        public final void onComplete(Bundle bundle, C3344mh c3344mh) {
            WebViewLoginMethodHandler webViewLoginMethodHandler = WebViewLoginMethodHandler.this;
            webViewLoginMethodHandler.getClass();
            LoginClient.Request request = this.f9399do;
            C0173Do.m401try(request, "request");
            webViewLoginMethodHandler.m5528native(request, bundle, c3344mh);
        }
    }

    /* renamed from: com.facebook.login.WebViewLoginMethodHandler$if, reason: invalid class name */
    public static final class Cif implements Parcelable.Creator<WebViewLoginMethodHandler> {
        @Override // android.os.Parcelable.Creator
        public final WebViewLoginMethodHandler createFromParcel(Parcel parcel) {
            C0173Do.m401try(parcel, "source");
            return new WebViewLoginMethodHandler(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public final WebViewLoginMethodHandler[] newArray(int i) {
            return new WebViewLoginMethodHandler[i];
        }
    }

    public WebViewLoginMethodHandler(LoginClient loginClient) {
        super(loginClient);
        this.f9389class = "web_view";
        this.f9391do = Cprotected.WEB_VIEW;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // com.facebook.login.LoginMethodHandler
    /* renamed from: if */
    public final void mo5500if() {
        WebDialog webDialog = this.f9390do;
        if (webDialog != null) {
            if (webDialog != null) {
                webDialog.cancel();
            }
            this.f9390do = null;
        }
    }

    @Override // com.facebook.login.WebLoginMethodHandler
    /* renamed from: import */
    public final Cprotected mo5484import() {
        return this.f9391do;
    }

    @Override // com.facebook.login.LoginMethodHandler
    /* renamed from: throw */
    public final int mo5486throw(LoginClient.Request request) {
        Bundle m5529while = m5529while(request);
        Cfor cfor = new Cfor(request);
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("init", System.currentTimeMillis());
        } catch (JSONException unused) {
        }
        String jSONObject2 = jSONObject.toString();
        C0173Do.m399new(jSONObject2, "e2e.toString()");
        this.f9388catch = jSONObject2;
        m5517do(jSONObject2, "e2e");
        FragmentActivity m5512try = m5520new().m5512try();
        if (m5512try == null) {
            return 0;
        }
        boolean isChromeOS = Utility.isChromeOS(m5512try);
        Cdo cdo = new Cdo(this, m5512try, request.f9353break, m5529while);
        String str = this.f9388catch;
        if (str == null) {
            throw new NullPointerException("null cannot be cast to non-null type kotlin.String");
        }
        cdo.f9397if = str;
        cdo.f9394do = isChromeOS ? ServerProtocol.DIALOG_REDIRECT_CHROME_OS_URI : ServerProtocol.DIALOG_REDIRECT_URI;
        String str2 = request.f9356const;
        C0173Do.m401try(str2, "authType");
        cdo.f9396for = str2;
        EnumC0715ar enumC0715ar = request.f9357do;
        C0173Do.m401try(enumC0715ar, "loginBehavior");
        cdo.f9392do = enumC0715ar;
        EnumC2892hr enumC2892hr = request.f9359do;
        C0173Do.m401try(enumC2892hr, "targetApp");
        cdo.f9393do = enumC2892hr;
        cdo.f9395do = request.f9364for;
        cdo.f9398if = request.f9367new;
        this.f9390do = cdo.setOnCompleteListener(cfor).build();
        FacebookDialogFragment facebookDialogFragment = new FacebookDialogFragment();
        facebookDialogFragment.setRetainInstance(true);
        facebookDialogFragment.setInnerDialog(this.f9390do);
        facebookDialogFragment.show(m5512try.m4113class(), FacebookDialogFragment.TAG);
        return 1;
    }

    @Override // com.facebook.login.LoginMethodHandler
    /* renamed from: try */
    public final String mo5487try() {
        return this.f9389class;
    }

    @Override // com.facebook.login.LoginMethodHandler, android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        C0173Do.m401try(parcel, "dest");
        super.writeToParcel(parcel, i);
        parcel.writeString(this.f9388catch);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WebViewLoginMethodHandler(Parcel parcel) {
        super(parcel);
        C0173Do.m401try(parcel, "source");
        this.f9389class = "web_view";
        this.f9391do = Cprotected.WEB_VIEW;
        this.f9388catch = parcel.readString();
    }
}
