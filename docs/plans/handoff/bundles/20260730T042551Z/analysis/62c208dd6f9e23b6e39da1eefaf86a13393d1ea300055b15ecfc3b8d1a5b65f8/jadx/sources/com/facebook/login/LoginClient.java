package com.facebook.login;

import android.content.Intent;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import com.facebook.AccessToken;
import com.facebook.AuthenticationToken;
import com.facebook.CustomTabMainActivity;
import com.facebook.appevents.AppEventsConstants;
import com.facebook.internal.ServerProtocol;
import com.facebook.internal.Utility;
import com.facebook.internal.Validate;
import com.facebook.internal.instrument.crashshield.CrashShieldHandler;
import com.google.android.gms.ads.RequestConfiguration;
import com.joeykrim.rootcheck.R;
import defpackage.BF;
import defpackage.C0173Do;
import defpackage.C0775br;
import defpackage.C2715er;
import defpackage.C2774fr;
import defpackage.C2833gr;
import defpackage.C3344mh;
import defpackage.C4120zr;
import defpackage.EnumC0715ar;
import defpackage.EnumC2760fd;
import defpackage.EnumC2892hr;
import defpackage.EnumC3607r8;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ScheduledExecutorService;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class LoginClient implements Parcelable {
    public static final Parcelable.Creator<LoginClient> CREATOR = new Cif();

    /* renamed from: do, reason: not valid java name */
    public Fragment f9341do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public Request f9342do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public Cdo f9343do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public Cfor f9344do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public C2774fr f9345do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final LinkedHashMap f9346do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public Map<String, String> f9347do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public boolean f9348do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public LoginMethodHandler[] f9349do;

    /* renamed from: for, reason: not valid java name */
    public int f9350for;

    /* renamed from: new, reason: not valid java name */
    public int f9351new;

    /* renamed from: try, reason: not valid java name */
    public int f9352try;

    public static final class Request implements Parcelable {
        public static final Parcelable.Creator<Request> CREATOR = new Cdo();

        /* renamed from: break, reason: not valid java name */
        public final String f9353break;

        /* renamed from: catch, reason: not valid java name */
        public final String f9354catch;

        /* renamed from: class, reason: not valid java name */
        public final String f9355class;

        /* renamed from: const, reason: not valid java name */
        public final String f9356const;

        /* renamed from: do, reason: not valid java name */
        public final EnumC0715ar f9357do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final EnumC2760fd f9358do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final EnumC2892hr f9359do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public Set<String> f9360do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final EnumC3607r8 f9361do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final boolean f9362do;

        /* renamed from: final, reason: not valid java name */
        public final String f9363final;

        /* renamed from: for, reason: not valid java name */
        public final boolean f9364for;

        /* renamed from: if, reason: not valid java name */
        public final boolean f9365if;

        /* renamed from: import, reason: not valid java name */
        public final String f9366import;

        /* renamed from: new, reason: not valid java name */
        public final boolean f9367new;

        /* renamed from: super, reason: not valid java name */
        public final String f9368super;

        /* renamed from: throw, reason: not valid java name */
        public final String f9369throw;

        /* renamed from: while, reason: not valid java name */
        public final String f9370while;

        /* renamed from: com.facebook.login.LoginClient$Request$do, reason: invalid class name */
        public static final class Cdo implements Parcelable.Creator<Request> {
            @Override // android.os.Parcelable.Creator
            public final Request createFromParcel(Parcel parcel) {
                C0173Do.m401try(parcel, "source");
                return new Request(parcel);
            }

            @Override // android.os.Parcelable.Creator
            public final Request[] newArray(int i) {
                return new Request[i];
            }
        }

        public Request(Parcel parcel) {
            Validate validate = Validate.INSTANCE;
            this.f9357do = EnumC0715ar.valueOf(Validate.notNullOrEmpty(parcel.readString(), "loginBehavior"));
            ArrayList arrayList = new ArrayList();
            parcel.readStringList(arrayList);
            this.f9360do = new HashSet(arrayList);
            String readString = parcel.readString();
            this.f9358do = readString != null ? EnumC2760fd.valueOf(readString) : EnumC2760fd.NONE;
            this.f9353break = Validate.notNullOrEmpty(parcel.readString(), "applicationId");
            this.f9354catch = Validate.notNullOrEmpty(parcel.readString(), "authId");
            this.f9362do = parcel.readByte() != 0;
            this.f9355class = parcel.readString();
            this.f9356const = Validate.notNullOrEmpty(parcel.readString(), "authType");
            this.f9363final = parcel.readString();
            this.f9368super = parcel.readString();
            this.f9365if = parcel.readByte() != 0;
            String readString2 = parcel.readString();
            this.f9359do = readString2 != null ? EnumC2892hr.valueOf(readString2) : EnumC2892hr.FACEBOOK;
            this.f9364for = parcel.readByte() != 0;
            this.f9367new = parcel.readByte() != 0;
            this.f9369throw = Validate.notNullOrEmpty(parcel.readString(), ServerProtocol.DIALOG_PARAM_NONCE);
            this.f9370while = parcel.readString();
            this.f9366import = parcel.readString();
            String readString3 = parcel.readString();
            this.f9361do = readString3 == null ? null : EnumC3607r8.valueOf(readString3);
        }

        @Override // android.os.Parcelable
        public final int describeContents() {
            return 0;
        }

        /* renamed from: do, reason: not valid java name */
        public final boolean m5513do() {
            boolean z;
            Iterator<String> it = this.f9360do.iterator();
            do {
                z = false;
                if (!it.hasNext()) {
                    return false;
                }
                String next = it.next();
                Set<String> set = C2833gr.f13220do;
                if (next != null && (BF.j(next, "publish") || BF.j(next, "manage") || C2833gr.f13220do.contains(next))) {
                    z = true;
                }
            } while (!z);
            return true;
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i) {
            C0173Do.m401try(parcel, "dest");
            parcel.writeString(this.f9357do.name());
            parcel.writeStringList(new ArrayList(this.f9360do));
            parcel.writeString(this.f9358do.name());
            parcel.writeString(this.f9353break);
            parcel.writeString(this.f9354catch);
            parcel.writeByte(this.f9362do ? (byte) 1 : (byte) 0);
            parcel.writeString(this.f9355class);
            parcel.writeString(this.f9356const);
            parcel.writeString(this.f9363final);
            parcel.writeString(this.f9368super);
            parcel.writeByte(this.f9365if ? (byte) 1 : (byte) 0);
            parcel.writeString(this.f9359do.name());
            parcel.writeByte(this.f9364for ? (byte) 1 : (byte) 0);
            parcel.writeByte(this.f9367new ? (byte) 1 : (byte) 0);
            parcel.writeString(this.f9369throw);
            parcel.writeString(this.f9370while);
            parcel.writeString(this.f9366import);
            EnumC3607r8 enumC3607r8 = this.f9361do;
            parcel.writeString(enumC3607r8 == null ? null : enumC3607r8.name());
        }
    }

    public static final class Result implements Parcelable {
        public static final Parcelable.Creator<Result> CREATOR = new Cif();

        /* renamed from: break, reason: not valid java name */
        public final String f9371break;

        /* renamed from: catch, reason: not valid java name */
        public final String f9372catch;

        /* renamed from: do, reason: not valid java name */
        public final AccessToken f9373do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final AuthenticationToken f9374do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final Request f9375do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final Cdo f9376do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public Map<String, String> f9377do;

        /* renamed from: if, reason: not valid java name */
        public Map<String, String> f9378if;

        /* renamed from: com.facebook.login.LoginClient$Result$do, reason: invalid class name */
        public enum Cdo {
            SUCCESS("success"),
            CANCEL("cancel"),
            ERROR("error");


            /* renamed from: break, reason: not valid java name */
            public final String f9383break;

            Cdo(String str) {
                this.f9383break = str;
            }

            /* renamed from: values, reason: to resolve conflict with enum method */
            public static Cdo[] valuesCustom() {
                return (Cdo[]) Arrays.copyOf(values(), 3);
            }
        }

        /* renamed from: com.facebook.login.LoginClient$Result$if, reason: invalid class name */
        public static final class Cif implements Parcelable.Creator<Result> {
            @Override // android.os.Parcelable.Creator
            public final Result createFromParcel(Parcel parcel) {
                C0173Do.m401try(parcel, "source");
                return new Result(parcel);
            }

            @Override // android.os.Parcelable.Creator
            public final Result[] newArray(int i) {
                return new Result[i];
            }
        }

        public Result(Request request, Cdo cdo, AccessToken accessToken, String str, String str2) {
            this(request, cdo, accessToken, null, str, str2);
        }

        @Override // android.os.Parcelable
        public final int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i) {
            C0173Do.m401try(parcel, "dest");
            parcel.writeString(this.f9376do.name());
            parcel.writeParcelable(this.f9373do, i);
            parcel.writeParcelable(this.f9374do, i);
            parcel.writeString(this.f9371break);
            parcel.writeString(this.f9372catch);
            parcel.writeParcelable(this.f9375do, i);
            Utility utility = Utility.INSTANCE;
            Utility.writeNonnullStringMapToParcel(parcel, this.f9377do);
            Utility.writeNonnullStringMapToParcel(parcel, this.f9378if);
        }

        public Result(Request request, Cdo cdo, AccessToken accessToken, AuthenticationToken authenticationToken, String str, String str2) {
            this.f9375do = request;
            this.f9373do = accessToken;
            this.f9374do = authenticationToken;
            this.f9371break = str;
            this.f9376do = cdo;
            this.f9372catch = str2;
        }

        public Result(Parcel parcel) {
            String readString = parcel.readString();
            this.f9376do = Cdo.valueOf(readString == null ? "error" : readString);
            this.f9373do = (AccessToken) parcel.readParcelable(AccessToken.class.getClassLoader());
            this.f9374do = (AuthenticationToken) parcel.readParcelable(AuthenticationToken.class.getClassLoader());
            this.f9371break = parcel.readString();
            this.f9372catch = parcel.readString();
            this.f9375do = (Request) parcel.readParcelable(Request.class.getClassLoader());
            this.f9377do = Utility.readNonnullStringMapFromParcel(parcel);
            this.f9378if = Utility.readNonnullStringMapFromParcel(parcel);
        }
    }

    /* renamed from: com.facebook.login.LoginClient$do, reason: invalid class name */
    public interface Cdo {
        /* renamed from: do, reason: not valid java name */
        void mo5514do();

        /* renamed from: if, reason: not valid java name */
        void mo5515if();
    }

    /* renamed from: com.facebook.login.LoginClient$for, reason: invalid class name */
    public interface Cfor {
    }

    /* renamed from: com.facebook.login.LoginClient$if, reason: invalid class name */
    public static final class Cif implements Parcelable.Creator<LoginClient> {
        @Override // android.os.Parcelable.Creator
        public final LoginClient createFromParcel(Parcel parcel) {
            C0173Do.m401try(parcel, "source");
            return new LoginClient(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public final LoginClient[] newArray(int i) {
            return new LoginClient[i];
        }
    }

    public LoginClient(Fragment fragment) {
        C0173Do.m401try(fragment, "fragment");
        this.f9350for = -1;
        if (this.f9341do != null) {
            throw new C3344mh("Can't set fragment once it is already set.");
        }
        this.f9341do = fragment;
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0020, code lost:
    
        if (defpackage.C0173Do.m394do(r1, r3 != null ? r3.f9353break : null) != false) goto L25;
     */
    /* JADX WARN: Removed duplicated region for block: B:8:0x001a  */
    /* renamed from: catch, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final defpackage.C2774fr m5503catch() {
        /*
            r4 = this;
            fr r0 = r4.f9345do
            if (r0 == 0) goto L22
            boolean r1 = com.facebook.internal.instrument.crashshield.CrashShieldHandler.isObjectCrashing(r0)
            r2 = 0
            if (r1 == 0) goto Ld
        Lb:
            r1 = r2
            goto L15
        Ld:
            java.lang.String r1 = r0.f12992do     // Catch: java.lang.Throwable -> L10
            goto L15
        L10:
            r1 = move-exception
            com.facebook.internal.instrument.crashshield.CrashShieldHandler.handleThrowable(r1, r0)
            goto Lb
        L15:
            com.facebook.login.LoginClient$Request r3 = r4.f9342do
            if (r3 != 0) goto L1a
            goto L1c
        L1a:
            java.lang.String r2 = r3.f9353break
        L1c:
            boolean r1 = defpackage.C0173Do.m394do(r1, r2)
            if (r1 != 0) goto L3e
        L22:
            fr r0 = new fr
            androidx.fragment.app.FragmentActivity r1 = r4.m5512try()
            if (r1 != 0) goto L2e
            android.content.Context r1 = defpackage.C3756th.m8299do()
        L2e:
            com.facebook.login.LoginClient$Request r2 = r4.f9342do
            if (r2 != 0) goto L37
            java.lang.String r2 = defpackage.C3756th.m8303if()
            goto L39
        L37:
            java.lang.String r2 = r2.f9353break
        L39:
            r0.<init>(r1, r2)
            r4.f9345do = r0
        L3e:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.login.LoginClient.m5503catch():fr");
    }

    /* renamed from: class, reason: not valid java name */
    public final void m5504class(String str, String str2, String str3, String str4, HashMap hashMap) {
        Request request = this.f9342do;
        if (request == null) {
            C2774fr m5503catch = m5503catch();
            if (CrashShieldHandler.isObjectCrashing(m5503catch)) {
                return;
            }
            try {
                ScheduledExecutorService scheduledExecutorService = C2774fr.f12990do;
                Bundle m6682do = C2774fr.Cdo.m6682do(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);
                m6682do.putString("2_result", "error");
                m6682do.putString("5_error_message", "Unexpected call to logCompleteLogin with null pendingAuthorizationRequest.");
                m6682do.putString("3_method", str);
                m5503catch.f12991do.logEventImplicitly("fb_mobile_login_method_complete", m6682do);
                return;
            } catch (Throwable th) {
                CrashShieldHandler.handleThrowable(th, m5503catch);
                return;
            }
        }
        C2774fr m5503catch2 = m5503catch();
        String str5 = request.f9354catch;
        String str6 = request.f9364for ? "foa_mobile_login_method_complete" : "fb_mobile_login_method_complete";
        if (CrashShieldHandler.isObjectCrashing(m5503catch2)) {
            return;
        }
        try {
            ScheduledExecutorService scheduledExecutorService2 = C2774fr.f12990do;
            Bundle m6682do2 = C2774fr.Cdo.m6682do(str5);
            if (str2 != null) {
                m6682do2.putString("2_result", str2);
            }
            if (str3 != null) {
                m6682do2.putString("5_error_message", str3);
            }
            if (str4 != null) {
                m6682do2.putString("4_error_code", str4);
            }
            if (hashMap != null && (!hashMap.isEmpty())) {
                LinkedHashMap linkedHashMap = new LinkedHashMap();
                for (Map.Entry entry : hashMap.entrySet()) {
                    if (((String) entry.getKey()) != null) {
                        linkedHashMap.put(entry.getKey(), entry.getValue());
                    }
                }
                m6682do2.putString("6_extras", new JSONObject(linkedHashMap).toString());
            }
            m6682do2.putString("3_method", str);
            m5503catch2.f12991do.logEventImplicitly(str6, m6682do2);
        } catch (Throwable th2) {
            CrashShieldHandler.handleThrowable(th2, m5503catch2);
        }
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    /* renamed from: do, reason: not valid java name */
    public final void m5505do(String str, String str2, boolean z) {
        Map<String, String> map = this.f9347do;
        if (map == null) {
            map = new HashMap<>();
        }
        if (this.f9347do == null) {
            this.f9347do = map;
        }
        if (map.containsKey(str) && z) {
            str2 = ((Object) map.get(str)) + ',' + str2;
        }
        map.put(str, str2);
    }

    /* renamed from: else, reason: not valid java name */
    public final LoginMethodHandler m5506else() {
        LoginMethodHandler[] loginMethodHandlerArr;
        int i = this.f9350for;
        if (i < 0 || (loginMethodHandlerArr = this.f9349do) == null) {
            return null;
        }
        return loginMethodHandlerArr[i];
    }

    /* renamed from: final, reason: not valid java name */
    public final void m5507final(int i, int i2, Intent intent) {
        this.f9351new++;
        if (this.f9342do != null) {
            if (intent != null && intent.getBooleanExtra(CustomTabMainActivity.f9249throw, false)) {
                m5511super();
                return;
            }
            LoginMethodHandler m5506else = m5506else();
            if (m5506else != null) {
                if ((m5506else instanceof KatanaProxyLoginMethodHandler) && intent == null && this.f9351new < this.f9352try) {
                    return;
                }
                m5506else.mo5482class(i, i2, intent);
            }
        }
    }

    /* renamed from: for, reason: not valid java name */
    public final void m5508for(Result result) {
        C0173Do.m401try(result, "outcome");
        LoginMethodHandler m5506else = m5506else();
        Result.Cdo cdo = result.f9376do;
        if (m5506else != null) {
            m5504class(m5506else.mo5487try(), cdo.f9383break, result.f9371break, result.f9372catch, m5506else.f9385do);
        }
        Map<String, String> map = this.f9347do;
        if (map != null) {
            result.f9377do = map;
        }
        LinkedHashMap linkedHashMap = this.f9346do;
        if (linkedHashMap != null) {
            result.f9378if = linkedHashMap;
        }
        this.f9349do = null;
        this.f9350for = -1;
        this.f9342do = null;
        this.f9347do = null;
        this.f9351new = 0;
        this.f9352try = 0;
        Cfor cfor = this.f9344do;
        if (cfor == null) {
            return;
        }
        C2715er c2715er = (C2715er) ((C0775br) cfor).f8457do;
        int i = C2715er.f12726for;
        C0173Do.m401try(c2715er, "this$0");
        c2715er.f12730do = null;
        int i2 = cdo == Result.Cdo.CANCEL ? 0 : -1;
        Bundle bundle = new Bundle();
        bundle.putParcelable("com.facebook.LoginFragment:Result", result);
        Intent intent = new Intent();
        intent.putExtras(bundle);
        FragmentActivity activity = c2715er.getActivity();
        if (!c2715er.isAdded() || activity == null) {
            return;
        }
        activity.setResult(i2, intent);
        activity.finish();
    }

    /* renamed from: if, reason: not valid java name */
    public final boolean m5509if() {
        if (this.f9348do) {
            return true;
        }
        FragmentActivity m5512try = m5512try();
        if ((m5512try == null ? -1 : m5512try.checkCallingOrSelfPermission("android.permission.INTERNET")) == 0) {
            this.f9348do = true;
            return true;
        }
        FragmentActivity m5512try2 = m5512try();
        String string = m5512try2 == null ? null : m5512try2.getString(R.string.com_facebook_internet_permission_error_title);
        String string2 = m5512try2 != null ? m5512try2.getString(R.string.com_facebook_internet_permission_error_message) : null;
        Request request = this.f9342do;
        ArrayList arrayList = new ArrayList();
        if (string != null) {
            arrayList.add(string);
        }
        if (string2 != null) {
            arrayList.add(string2);
        }
        m5508for(new Result(request, Result.Cdo.ERROR, null, TextUtils.join(": ", arrayList), null));
        return false;
    }

    /* renamed from: new, reason: not valid java name */
    public final void m5510new(Result result) {
        Result result2;
        C0173Do.m401try(result, "outcome");
        AccessToken accessToken = result.f9373do;
        if (accessToken != null) {
            Date date = AccessToken.f9198new;
            if (AccessToken.Cif.m5257for()) {
                AccessToken m5258if = AccessToken.Cif.m5258if();
                Result.Cdo cdo = Result.Cdo.ERROR;
                if (m5258if != null) {
                    try {
                        if (C0173Do.m394do(m5258if.f9202class, accessToken.f9202class)) {
                            result2 = new Result(this.f9342do, Result.Cdo.SUCCESS, result.f9373do, result.f9374do, null, null);
                            m5508for(result2);
                            return;
                        }
                    } catch (Exception e) {
                        Request request = this.f9342do;
                        String message = e.getMessage();
                        ArrayList arrayList = new ArrayList();
                        arrayList.add("Caught exception");
                        if (message != null) {
                            arrayList.add(message);
                        }
                        m5508for(new Result(request, cdo, null, TextUtils.join(": ", arrayList), null));
                        return;
                    }
                }
                Request request2 = this.f9342do;
                ArrayList arrayList2 = new ArrayList();
                arrayList2.add("User logged in as different Facebook user.");
                result2 = new Result(request2, cdo, null, TextUtils.join(": ", arrayList2), null);
                m5508for(result2);
                return;
            }
        }
        m5508for(result);
    }

    /* renamed from: super, reason: not valid java name */
    public final void m5511super() {
        LoginMethodHandler m5506else = m5506else();
        if (m5506else != null) {
            m5504class(m5506else.mo5487try(), "skipped", null, null, m5506else.f9385do);
        }
        LoginMethodHandler[] loginMethodHandlerArr = this.f9349do;
        while (loginMethodHandlerArr != null) {
            int i = this.f9350for;
            if (i >= loginMethodHandlerArr.length - 1) {
                break;
            }
            this.f9350for = i + 1;
            LoginMethodHandler m5506else2 = m5506else();
            boolean z = false;
            if (m5506else2 != null) {
                if (!(m5506else2 instanceof WebViewLoginMethodHandler) || m5509if()) {
                    Request request = this.f9342do;
                    if (request != null) {
                        int mo5486throw = m5506else2.mo5486throw(request);
                        this.f9351new = 0;
                        boolean z2 = request.f9364for;
                        String str = request.f9354catch;
                        if (mo5486throw > 0) {
                            C2774fr m5503catch = m5503catch();
                            String mo5487try = m5506else2.mo5487try();
                            String str2 = z2 ? "foa_mobile_login_method_start" : "fb_mobile_login_method_start";
                            if (!CrashShieldHandler.isObjectCrashing(m5503catch)) {
                                try {
                                    ScheduledExecutorService scheduledExecutorService = C2774fr.f12990do;
                                    Bundle m6682do = C2774fr.Cdo.m6682do(str);
                                    m6682do.putString("3_method", mo5487try);
                                    m5503catch.f12991do.logEventImplicitly(str2, m6682do);
                                } catch (Throwable th) {
                                    CrashShieldHandler.handleThrowable(th, m5503catch);
                                }
                            }
                            this.f9352try = mo5486throw;
                        } else {
                            C2774fr m5503catch2 = m5503catch();
                            String mo5487try2 = m5506else2.mo5487try();
                            String str3 = z2 ? "foa_mobile_login_method_not_tried" : "fb_mobile_login_method_not_tried";
                            if (!CrashShieldHandler.isObjectCrashing(m5503catch2)) {
                                try {
                                    ScheduledExecutorService scheduledExecutorService2 = C2774fr.f12990do;
                                    Bundle m6682do2 = C2774fr.Cdo.m6682do(str);
                                    m6682do2.putString("3_method", mo5487try2);
                                    m5503catch2.f12991do.logEventImplicitly(str3, m6682do2);
                                } catch (Throwable th2) {
                                    CrashShieldHandler.handleThrowable(th2, m5503catch2);
                                }
                            }
                            m5505do("not_tried", m5506else2.mo5487try(), true);
                        }
                        z = mo5486throw > 0;
                    }
                } else {
                    m5505do("no_internet_permission", AppEventsConstants.EVENT_PARAM_VALUE_YES, false);
                }
            }
            if (z) {
                return;
            }
        }
        Request request2 = this.f9342do;
        if (request2 != null) {
            ArrayList arrayList = new ArrayList();
            arrayList.add("Login attempt failed.");
            m5508for(new Result(request2, Result.Cdo.ERROR, null, TextUtils.join(": ", arrayList), null));
        }
    }

    /* renamed from: try, reason: not valid java name */
    public final FragmentActivity m5512try() {
        Fragment fragment = this.f9341do;
        if (fragment == null) {
            return null;
        }
        return fragment.getActivity();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        C0173Do.m401try(parcel, "dest");
        parcel.writeParcelableArray(this.f9349do, i);
        parcel.writeInt(this.f9350for);
        parcel.writeParcelable(this.f9342do, i);
        Utility utility = Utility.INSTANCE;
        Utility.writeNonnullStringMapToParcel(parcel, this.f9347do);
        Utility.writeNonnullStringMapToParcel(parcel, this.f9346do);
    }

    public LoginClient(Parcel parcel) {
        C0173Do.m401try(parcel, "source");
        this.f9350for = -1;
        Parcelable[] readParcelableArray = parcel.readParcelableArray(LoginMethodHandler.class.getClassLoader());
        readParcelableArray = readParcelableArray == null ? new Parcelable[0] : readParcelableArray;
        ArrayList arrayList = new ArrayList();
        int length = readParcelableArray.length;
        int i = 0;
        while (true) {
            if (i >= length) {
                break;
            }
            Parcelable parcelable = readParcelableArray[i];
            LoginMethodHandler loginMethodHandler = parcelable instanceof LoginMethodHandler ? (LoginMethodHandler) parcelable : null;
            if (loginMethodHandler != null) {
                loginMethodHandler.f9384do = this;
            }
            if (loginMethodHandler != null) {
                arrayList.add(loginMethodHandler);
            }
            i++;
        }
        Object[] array = arrayList.toArray(new LoginMethodHandler[0]);
        if (array != null) {
            this.f9349do = (LoginMethodHandler[]) array;
            this.f9350for = parcel.readInt();
            this.f9342do = (Request) parcel.readParcelable(Request.class.getClassLoader());
            Map<String, String> readNonnullStringMapFromParcel = Utility.readNonnullStringMapFromParcel(parcel);
            this.f9347do = readNonnullStringMapFromParcel == null ? null : C4120zr.b(readNonnullStringMapFromParcel);
            Map<String, String> readNonnullStringMapFromParcel2 = Utility.readNonnullStringMapFromParcel(parcel);
            this.f9346do = readNonnullStringMapFromParcel2 != null ? C4120zr.b(readNonnullStringMapFromParcel2) : null;
            return;
        }
        throw new NullPointerException("null cannot be cast to non-null type kotlin.Array<T>");
    }
}
