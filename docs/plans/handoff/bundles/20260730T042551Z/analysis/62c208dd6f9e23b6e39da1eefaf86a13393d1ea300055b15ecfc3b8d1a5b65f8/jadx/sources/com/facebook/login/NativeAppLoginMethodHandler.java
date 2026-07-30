package com.facebook.login;

import android.content.Intent;
import android.os.Bundle;
import android.os.Parcel;
import android.text.TextUtils;
import androidx.fragment.app.Fragment;
import com.facebook.internal.AnalyticsEvents;
import com.facebook.internal.NativeProtocol;
import com.facebook.internal.ServerProtocol;
import com.facebook.internal.Utility;
import com.facebook.login.LoginClient;
import com.facebook.login.LoginMethodHandler;
import defpackage.AbstractC0665a0;
import defpackage.C0173Do;
import defpackage.C2715er;
import defpackage.C3206kJ;
import defpackage.C3344mh;
import defpackage.C3756th;
import defpackage.Cprotected;
import defpackage.E8;
import defpackage.RunnableC0718au;
import java.util.ArrayList;

/* loaded from: classes.dex */
public abstract class NativeAppLoginMethodHandler extends LoginMethodHandler {

    /* renamed from: do, reason: not valid java name */
    public final Cprotected f9386do;

    public NativeAppLoginMethodHandler(LoginClient loginClient) {
        super(loginClient);
        this.f9386do = Cprotected.FACEBOOK_APPLICATION_WEB;
    }

    @Override // com.facebook.login.LoginMethodHandler
    /* renamed from: class */
    public final boolean mo5482class(int i, int i2, Intent intent) {
        Object obj;
        LoginClient.Request request = m5520new().f9342do;
        LoginClient.Result.Cdo cdo = LoginClient.Result.Cdo.CANCEL;
        if (intent == null) {
            m5527while(new LoginClient.Result(request, cdo, null, "Operation canceled", null));
        } else {
            LoginClient.Result.Cdo cdo2 = LoginClient.Result.Cdo.ERROR;
            if (i2 == 0) {
                Bundle extras = intent.getExtras();
                String string = extras == null ? null : extras.getString("error");
                if (string == null) {
                    string = extras == null ? null : extras.getString(NativeProtocol.BRIDGE_ARG_ERROR_TYPE);
                }
                String obj2 = (extras == null || (obj = extras.get(NativeProtocol.BRIDGE_ARG_ERROR_CODE)) == null) ? null : obj.toString();
                if (C0173Do.m394do(ServerProtocol.getErrorConnectionFailure(), obj2)) {
                    String string2 = extras == null ? null : extras.getString(AnalyticsEvents.PARAMETER_SHARE_ERROR_MESSAGE);
                    if (string2 != null) {
                        r7 = string2;
                    } else if (extras != null) {
                        r7 = extras.getString(NativeProtocol.BRIDGE_ARG_ERROR_DESCRIPTION);
                    }
                    ArrayList arrayList = new ArrayList();
                    if (string != null) {
                        arrayList.add(string);
                    }
                    if (r7 != null) {
                        arrayList.add(r7);
                    }
                    m5527while(new LoginClient.Result(request, cdo2, null, TextUtils.join(": ", arrayList), obj2));
                } else {
                    m5527while(new LoginClient.Result(request, cdo, null, string, null));
                }
            } else if (i2 != -1) {
                ArrayList arrayList2 = new ArrayList();
                arrayList2.add("Unexpected resultCode from authorization.");
                m5527while(new LoginClient.Result(request, cdo2, null, TextUtils.join(": ", arrayList2), null));
            } else {
                Bundle extras2 = intent.getExtras();
                if (extras2 == null) {
                    ArrayList arrayList3 = new ArrayList();
                    arrayList3.add("Unexpected null from returned authorization data.");
                    m5527while(new LoginClient.Result(request, cdo2, null, TextUtils.join(": ", arrayList3), null));
                    return true;
                }
                String string3 = extras2.getString("error");
                if (string3 == null) {
                    string3 = extras2.getString(NativeProtocol.BRIDGE_ARG_ERROR_TYPE);
                }
                Object obj3 = extras2.get(NativeProtocol.BRIDGE_ARG_ERROR_CODE);
                r7 = obj3 != null ? obj3.toString() : null;
                String string4 = extras2.getString(AnalyticsEvents.PARAMETER_SHARE_ERROR_MESSAGE);
                if (string4 == null) {
                    string4 = extras2.getString(NativeProtocol.BRIDGE_ARG_ERROR_DESCRIPTION);
                }
                String string5 = extras2.getString("e2e");
                if (!Utility.isNullOrEmpty(string5)) {
                    m5516catch(string5);
                }
                if (string3 != null || r7 != null || string4 != null || request == null) {
                    m5524native(request, string3, string4, r7);
                } else if (!extras2.containsKey("code") || Utility.isNullOrEmpty(extras2.getString("code"))) {
                    m5525public(extras2, request);
                } else {
                    C3756th.m8304new().execute(new RunnableC0718au(this, request, extras2, 0));
                }
            }
        }
        return true;
    }

    /* renamed from: import */
    public Cprotected mo5502import() {
        return this.f9386do;
    }

    /* renamed from: native, reason: not valid java name */
    public final void m5524native(LoginClient.Request request, String str, String str2, String str3) {
        if (str != null && C0173Do.m394do(str, "logged_out")) {
            CustomTabLoginMethodHandler.f9306do = true;
            m5527while(null);
            return;
        }
        if (E8.d(ServerProtocol.getErrorsProxyAuthDisabled(), str)) {
            m5527while(null);
            return;
        }
        if (E8.d(ServerProtocol.getErrorsUserCanceled(), str)) {
            m5527while(new LoginClient.Result(request, LoginClient.Result.Cdo.CANCEL, null, null, null));
            return;
        }
        ArrayList arrayList = new ArrayList();
        if (str != null) {
            arrayList.add(str);
        }
        if (str2 != null) {
            arrayList.add(str2);
        }
        m5527while(new LoginClient.Result(request, LoginClient.Result.Cdo.ERROR, null, TextUtils.join(": ", arrayList), str3));
    }

    /* renamed from: public, reason: not valid java name */
    public final void m5525public(Bundle bundle, LoginClient.Request request) {
        try {
            m5527while(new LoginClient.Result(request, LoginClient.Result.Cdo.SUCCESS, LoginMethodHandler.Cdo.m5523if(request.f9360do, bundle, mo5502import(), request.f9353break), LoginMethodHandler.Cdo.m5522for(bundle, request.f9369throw), null, null));
        } catch (C3344mh e) {
            String message = e.getMessage();
            ArrayList arrayList = new ArrayList();
            if (message != null) {
                arrayList.add(message);
            }
            m5527while(new LoginClient.Result(request, LoginClient.Result.Cdo.ERROR, null, TextUtils.join(": ", arrayList), null));
        }
    }

    /* renamed from: static, reason: not valid java name */
    public final boolean m5526static(Intent intent) {
        if (intent != null) {
            C0173Do.m399new(C3756th.m8299do().getPackageManager().queryIntentActivities(intent, NativeProtocol.MESSAGE_GET_ACCESS_TOKEN_REQUEST), "FacebookSdk.getApplicationContext()\n            .packageManager\n            .queryIntentActivities(intent, PackageManager.MATCH_DEFAULT_ONLY)");
            if (!r1.isEmpty()) {
                Fragment fragment = m5520new().f9341do;
                C3206kJ c3206kJ = null;
                C2715er c2715er = fragment instanceof C2715er ? (C2715er) fragment : null;
                if (c2715er != null) {
                    AbstractC0665a0<Intent> abstractC0665a0 = c2715er.f12728do;
                    if (abstractC0665a0 == null) {
                        C0173Do.m400this("launcher");
                        throw null;
                    }
                    abstractC0665a0.mo3104do(intent);
                    c3206kJ = C3206kJ.f13965do;
                }
                return c3206kJ != null;
            }
        }
        return false;
    }

    /* renamed from: while, reason: not valid java name */
    public final void m5527while(LoginClient.Result result) {
        if (result != null) {
            m5520new().m5510new(result);
        } else {
            m5520new().m5511super();
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NativeAppLoginMethodHandler(Parcel parcel) {
        super(parcel);
        C0173Do.m401try(parcel, "source");
        this.f9386do = Cprotected.FACEBOOK_APPLICATION_WEB;
    }
}
