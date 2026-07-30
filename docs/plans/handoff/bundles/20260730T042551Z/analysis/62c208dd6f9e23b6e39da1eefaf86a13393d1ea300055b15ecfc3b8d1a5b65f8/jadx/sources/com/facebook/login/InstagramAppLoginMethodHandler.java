package com.facebook.login;

import android.content.Context;
import android.content.Intent;
import android.os.Parcel;
import android.os.Parcelable;
import com.facebook.internal.CallbackManagerImpl;
import com.facebook.internal.NativeProtocol;
import com.facebook.login.LoginClient;
import defpackage.C0173Do;
import defpackage.C3756th;
import defpackage.Cprotected;
import defpackage.EnumC2760fd;
import java.util.Set;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class InstagramAppLoginMethodHandler extends NativeAppLoginMethodHandler {
    public static final Parcelable.Creator<InstagramAppLoginMethodHandler> CREATOR = new Cdo();

    /* renamed from: break, reason: not valid java name */
    public final String f9338break;

    /* renamed from: if, reason: not valid java name */
    public final Cprotected f9339if;

    /* renamed from: com.facebook.login.InstagramAppLoginMethodHandler$do, reason: invalid class name */
    public static final class Cdo implements Parcelable.Creator<InstagramAppLoginMethodHandler> {
        @Override // android.os.Parcelable.Creator
        public final InstagramAppLoginMethodHandler createFromParcel(Parcel parcel) {
            C0173Do.m401try(parcel, "source");
            return new InstagramAppLoginMethodHandler(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public final InstagramAppLoginMethodHandler[] newArray(int i) {
            return new InstagramAppLoginMethodHandler[i];
        }
    }

    public InstagramAppLoginMethodHandler(LoginClient loginClient) {
        super(loginClient);
        this.f9338break = "instagram_login";
        this.f9339if = Cprotected.INSTAGRAM_APPLICATION_WEB;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // com.facebook.login.NativeAppLoginMethodHandler
    /* renamed from: import, reason: not valid java name */
    public final Cprotected mo5502import() {
        return this.f9339if;
    }

    @Override // com.facebook.login.LoginMethodHandler
    /* renamed from: throw */
    public final int mo5486throw(LoginClient.Request request) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("init", System.currentTimeMillis());
        } catch (JSONException unused) {
        }
        String jSONObject2 = jSONObject.toString();
        C0173Do.m399new(jSONObject2, "e2e.toString()");
        NativeProtocol nativeProtocol = NativeProtocol.INSTANCE;
        Context m5512try = m5520new().m5512try();
        if (m5512try == null) {
            m5512try = C3756th.m8299do();
        }
        Context context = m5512try;
        String str = request.f9353break;
        Set<String> set = request.f9360do;
        boolean z = request.f9362do;
        boolean m5513do = request.m5513do();
        EnumC2760fd enumC2760fd = request.f9358do;
        if (enumC2760fd == null) {
            enumC2760fd = EnumC2760fd.NONE;
        }
        Intent createInstagramIntent = NativeProtocol.createInstagramIntent(context, str, set, jSONObject2, z, m5513do, enumC2760fd, m5519for(request.f9354catch), request.f9356const, request.f9368super, request.f9365if, request.f9364for, request.f9367new);
        m5517do(jSONObject2, "e2e");
        CallbackManagerImpl.RequestCodeOffset.Login.toRequestCode();
        return m5526static(createInstagramIntent) ? 1 : 0;
    }

    @Override // com.facebook.login.LoginMethodHandler
    /* renamed from: try */
    public final String mo5487try() {
        return this.f9338break;
    }

    @Override // com.facebook.login.LoginMethodHandler, android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        C0173Do.m401try(parcel, "dest");
        super.writeToParcel(parcel, i);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public InstagramAppLoginMethodHandler(Parcel parcel) {
        super(parcel);
        C0173Do.m401try(parcel, "source");
        this.f9338break = "instagram_login";
        this.f9339if = Cprotected.INSTAGRAM_APPLICATION_WEB;
    }
}
