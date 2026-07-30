package com.facebook.login;

import android.content.Intent;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import com.facebook.CustomTabMainActivity;
import com.facebook.appevents.AppEventsConstants;
import com.facebook.internal.CustomTab;
import com.facebook.internal.CustomTabUtils;
import com.facebook.internal.InstagramCustomTab;
import com.facebook.internal.ServerProtocol;
import com.facebook.internal.Utility;
import com.facebook.login.LoginClient;
import com.google.android.gms.common.Scopes;
import defpackage.C0173Do;
import defpackage.C3633rc;
import defpackage.C3756th;
import defpackage.C3869vc;
import defpackage.Cprotected;
import defpackage.EnumC2892hr;
import defpackage.EnumC3607r8;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class CustomTabLoginMethodHandler extends WebLoginMethodHandler {
    public static final Parcelable.Creator<CustomTabLoginMethodHandler> CREATOR = new Cdo();

    /* renamed from: do, reason: not valid java name */
    public static boolean f9306do;

    /* renamed from: catch, reason: not valid java name */
    public String f9307catch;

    /* renamed from: class, reason: not valid java name */
    public final String f9308class;

    /* renamed from: const, reason: not valid java name */
    public final String f9309const;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Cprotected f9310do;

    /* renamed from: final, reason: not valid java name */
    public final String f9311final;

    /* renamed from: com.facebook.login.CustomTabLoginMethodHandler$do, reason: invalid class name */
    public static final class Cdo implements Parcelable.Creator<CustomTabLoginMethodHandler> {
        @Override // android.os.Parcelable.Creator
        public final CustomTabLoginMethodHandler createFromParcel(Parcel parcel) {
            C0173Do.m401try(parcel, "source");
            return new CustomTabLoginMethodHandler(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public final CustomTabLoginMethodHandler[] newArray(int i) {
            return new CustomTabLoginMethodHandler[i];
        }
    }

    public CustomTabLoginMethodHandler(LoginClient loginClient) {
        super(loginClient);
        this.f9311final = "custom_tab";
        this.f9310do = Cprotected.CHROME_CUSTOM_TAB;
        this.f9308class = Utility.generateRandomString(20);
        f9306do = false;
        CustomTabUtils customTabUtils = CustomTabUtils.INSTANCE;
        this.f9309const = CustomTabUtils.getValidRedirectURI(super.mo5483else());
    }

    /* JADX WARN: Removed duplicated region for block: B:57:0x00f8  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x0101  */
    @Override // com.facebook.login.LoginMethodHandler
    /* renamed from: class, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean mo5482class(int r7, int r8, android.content.Intent r9) {
        /*
            Method dump skipped, instructions count: 280
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.login.CustomTabLoginMethodHandler.mo5482class(int, int, android.content.Intent):boolean");
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // com.facebook.login.LoginMethodHandler
    /* renamed from: else, reason: not valid java name */
    public final String mo5483else() {
        return this.f9309const;
    }

    @Override // com.facebook.login.WebLoginMethodHandler
    /* renamed from: import, reason: not valid java name */
    public final Cprotected mo5484import() {
        return this.f9310do;
    }

    @Override // com.facebook.login.LoginMethodHandler
    /* renamed from: super, reason: not valid java name */
    public final void mo5485super(JSONObject jSONObject) {
        jSONObject.put("7_challenge", this.f9308class);
    }

    @Override // com.facebook.login.LoginMethodHandler
    /* renamed from: throw, reason: not valid java name */
    public final int mo5486throw(LoginClient.Request request) {
        LoginClient m5520new = m5520new();
        String str = this.f9309const;
        if (str.length() == 0) {
            return 0;
        }
        Bundle m5529while = m5529while(request);
        m5529while.putString(ServerProtocol.DIALOG_PARAM_REDIRECT_URI, str);
        EnumC2892hr enumC2892hr = EnumC2892hr.INSTAGRAM;
        EnumC2892hr enumC2892hr2 = request.f9359do;
        boolean z = enumC2892hr2 == enumC2892hr;
        String str2 = request.f9353break;
        if (z) {
            m5529while.putString("app_id", str2);
        } else {
            m5529while.putString("client_id", str2);
        }
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("init", System.currentTimeMillis());
        } catch (JSONException unused) {
        }
        String jSONObject2 = jSONObject.toString();
        C0173Do.m399new(jSONObject2, "e2e.toString()");
        m5529while.putString("e2e", jSONObject2);
        if (enumC2892hr2 == enumC2892hr) {
            m5529while.putString(ServerProtocol.DIALOG_PARAM_RESPONSE_TYPE, ServerProtocol.DIALOG_RESPONSE_TYPE_TOKEN_AND_SCOPES);
        } else {
            if (request.f9360do.contains(Scopes.OPEN_ID)) {
                m5529while.putString(ServerProtocol.DIALOG_PARAM_NONCE, request.f9369throw);
            }
            m5529while.putString(ServerProtocol.DIALOG_PARAM_RESPONSE_TYPE, ServerProtocol.DIALOG_RESPONSE_TYPE_ID_TOKEN_AND_SIGNED_REQUEST);
        }
        m5529while.putString(ServerProtocol.DIALOG_PARAM_CODE_CHALLENGE, request.f9366import);
        EnumC3607r8 enumC3607r8 = request.f9361do;
        m5529while.putString(ServerProtocol.DIALOG_PARAM_CODE_CHALLENGE_METHOD, enumC3607r8 == null ? null : enumC3607r8.name());
        m5529while.putString(ServerProtocol.DIALOG_PARAM_RETURN_SCOPES, ServerProtocol.DIALOG_RETURN_SCOPES_TRUE);
        m5529while.putString(ServerProtocol.DIALOG_PARAM_AUTH_TYPE, request.f9356const);
        m5529while.putString(ServerProtocol.DIALOG_PARAM_LOGIN_BEHAVIOR, request.f9357do.name());
        C3756th c3756th = C3756th.f15751do;
        m5529while.putString(ServerProtocol.DIALOG_PARAM_SDK_VERSION, C0173Do.m397goto("16.0.0", "android-"));
        m5529while.putString(ServerProtocol.DIALOG_PARAM_SSO_DEVICE, "chrome_custom_tab");
        boolean z2 = C3756th.f15752do;
        String str3 = AppEventsConstants.EVENT_PARAM_VALUE_NO;
        m5529while.putString(ServerProtocol.DIALOG_PARAM_CUSTOM_TABS_PREFETCHING, z2 ? AppEventsConstants.EVENT_PARAM_VALUE_YES : AppEventsConstants.EVENT_PARAM_VALUE_NO);
        if (request.f9364for) {
            m5529while.putString(ServerProtocol.DIALOG_PARAM_FX_APP, enumC2892hr2.f13368break);
        }
        if (request.f9367new) {
            m5529while.putString(ServerProtocol.DIALOG_PARAM_SKIP_DEDUPE, ServerProtocol.DIALOG_RETURN_SCOPES_TRUE);
        }
        String str4 = request.f9368super;
        if (str4 != null) {
            m5529while.putString(ServerProtocol.DIALOG_PARAM_MESSENGER_PAGE_ID, str4);
            if (request.f9365if) {
                str3 = AppEventsConstants.EVENT_PARAM_VALUE_YES;
            }
            m5529while.putString(ServerProtocol.DIALOG_PARAM_RESET_MESSENGER_STATE, str3);
        }
        if (f9306do) {
            m5529while.putString(ServerProtocol.DIALOG_PARAM_CCT_OVER_LOGGED_OUT_APP_SWITCH, AppEventsConstants.EVENT_PARAM_VALUE_YES);
        }
        if (C3756th.f15752do) {
            if (enumC2892hr2 == enumC2892hr) {
                C3869vc c3869vc = C3633rc.f15298do;
                C3633rc.Cdo.m7973do(InstagramCustomTab.Companion.getURIForAction("oauth", m5529while));
            } else {
                C3869vc c3869vc2 = C3633rc.f15298do;
                C3633rc.Cdo.m7973do(CustomTab.Companion.getURIForAction("oauth", m5529while));
            }
        }
        FragmentActivity m5512try = m5520new.m5512try();
        if (m5512try == null) {
            return 0;
        }
        Intent intent = new Intent(m5512try, (Class<?>) CustomTabMainActivity.class);
        intent.putExtra(CustomTabMainActivity.f9243break, "oauth");
        intent.putExtra(CustomTabMainActivity.f9244catch, m5529while);
        String str5 = CustomTabMainActivity.f9245class;
        String str6 = this.f9307catch;
        if (str6 == null) {
            str6 = CustomTabUtils.getChromePackage();
            this.f9307catch = str6;
        }
        intent.putExtra(str5, str6);
        intent.putExtra(CustomTabMainActivity.f9247final, enumC2892hr2.f13368break);
        Fragment fragment = m5520new.f9341do;
        if (fragment != null) {
            fragment.startActivityForResult(intent, 1);
        }
        return 1;
    }

    @Override // com.facebook.login.LoginMethodHandler
    /* renamed from: try, reason: not valid java name */
    public final String mo5487try() {
        return this.f9311final;
    }

    @Override // com.facebook.login.LoginMethodHandler, android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        C0173Do.m401try(parcel, "dest");
        super.writeToParcel(parcel, i);
        parcel.writeString(this.f9308class);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CustomTabLoginMethodHandler(Parcel parcel) {
        super(parcel);
        C0173Do.m401try(parcel, "source");
        this.f9311final = "custom_tab";
        this.f9310do = Cprotected.CHROME_CUSTOM_TAB;
        this.f9308class = parcel.readString();
        CustomTabUtils customTabUtils = CustomTabUtils.INSTANCE;
        this.f9309const = CustomTabUtils.getValidRedirectURI(super.mo5483else());
    }
}
