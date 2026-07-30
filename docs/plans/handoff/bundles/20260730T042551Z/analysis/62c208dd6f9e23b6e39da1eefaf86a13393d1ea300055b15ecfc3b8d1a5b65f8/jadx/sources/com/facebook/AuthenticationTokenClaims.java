package com.facebook;

import android.os.Parcel;
import android.os.Parcelable;
import com.facebook.internal.FacebookRequestErrorClassification;
import com.facebook.internal.ServerProtocol;
import com.facebook.internal.Validate;
import com.google.android.gms.common.Scopes;
import defpackage.C0173Do;
import defpackage.C3645ro;
import defpackage.C3850vF;
import j$.util.DesugarCollections;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class AuthenticationTokenClaims implements Parcelable {
    public static final Parcelable.Creator<AuthenticationTokenClaims> CREATOR = new Cdo();

    /* renamed from: break, reason: not valid java name */
    public final String f9216break;

    /* renamed from: catch, reason: not valid java name */
    public final String f9217catch;

    /* renamed from: class, reason: not valid java name */
    public final String f9218class;

    /* renamed from: const, reason: not valid java name */
    public final String f9219const;

    /* renamed from: do, reason: not valid java name */
    public final long f9220do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Map<String, Integer> f9221do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Set<String> f9222do;

    /* renamed from: final, reason: not valid java name */
    public final String f9223final;

    /* renamed from: for, reason: not valid java name */
    public final Map<String, String> f9224for;

    /* renamed from: if, reason: not valid java name */
    public final long f9225if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public final Map<String, String> f9226if;

    /* renamed from: import, reason: not valid java name */
    public final String f9227import;

    /* renamed from: native, reason: not valid java name */
    public final String f9228native;

    /* renamed from: public, reason: not valid java name */
    public final String f9229public;

    /* renamed from: return, reason: not valid java name */
    public final String f9230return;

    /* renamed from: static, reason: not valid java name */
    public final String f9231static;

    /* renamed from: super, reason: not valid java name */
    public final String f9232super;

    /* renamed from: switch, reason: not valid java name */
    public final String f9233switch;

    /* renamed from: throw, reason: not valid java name */
    public final String f9234throw;

    /* renamed from: while, reason: not valid java name */
    public final String f9235while;

    /* renamed from: com.facebook.AuthenticationTokenClaims$do, reason: invalid class name */
    public static final class Cdo implements Parcelable.Creator<AuthenticationTokenClaims> {
        @Override // android.os.Parcelable.Creator
        public final AuthenticationTokenClaims createFromParcel(Parcel parcel) {
            C0173Do.m401try(parcel, "source");
            return new AuthenticationTokenClaims(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public final AuthenticationTokenClaims[] newArray(int i) {
            return new AuthenticationTokenClaims[i];
        }
    }

    /* renamed from: com.facebook.AuthenticationTokenClaims$if, reason: invalid class name */
    public static final class Cif {
        /* renamed from: do, reason: not valid java name */
        public static String m5259do(JSONObject jSONObject, String str) {
            if (jSONObject.has(str)) {
                return jSONObject.getString(str);
            }
            return null;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:36:0x0081, code lost:
    
        if (defpackage.C0173Do.m394do(new java.net.URL(r4).getHost(), "www.facebook.com") == false) goto L49;
     */
    /* JADX WARN: Removed duplicated region for block: B:26:0x01e5  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0109  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public AuthenticationTokenClaims(java.lang.String r17, java.lang.String r18) {
        /*
            Method dump skipped, instructions count: 497
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.AuthenticationTokenClaims.<init>(java.lang.String, java.lang.String):void");
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AuthenticationTokenClaims)) {
            return false;
        }
        AuthenticationTokenClaims authenticationTokenClaims = (AuthenticationTokenClaims) obj;
        return C0173Do.m394do(this.f9216break, authenticationTokenClaims.f9216break) && C0173Do.m394do(this.f9217catch, authenticationTokenClaims.f9217catch) && C0173Do.m394do(this.f9218class, authenticationTokenClaims.f9218class) && C0173Do.m394do(this.f9219const, authenticationTokenClaims.f9219const) && this.f9220do == authenticationTokenClaims.f9220do && this.f9225if == authenticationTokenClaims.f9225if && C0173Do.m394do(this.f9223final, authenticationTokenClaims.f9223final) && C0173Do.m394do(this.f9232super, authenticationTokenClaims.f9232super) && C0173Do.m394do(this.f9234throw, authenticationTokenClaims.f9234throw) && C0173Do.m394do(this.f9235while, authenticationTokenClaims.f9235while) && C0173Do.m394do(this.f9227import, authenticationTokenClaims.f9227import) && C0173Do.m394do(this.f9228native, authenticationTokenClaims.f9228native) && C0173Do.m394do(this.f9229public, authenticationTokenClaims.f9229public) && C0173Do.m394do(this.f9222do, authenticationTokenClaims.f9222do) && C0173Do.m394do(this.f9230return, authenticationTokenClaims.f9230return) && C0173Do.m394do(this.f9221do, authenticationTokenClaims.f9221do) && C0173Do.m394do(this.f9226if, authenticationTokenClaims.f9226if) && C0173Do.m394do(this.f9224for, authenticationTokenClaims.f9224for) && C0173Do.m394do(this.f9231static, authenticationTokenClaims.f9231static) && C0173Do.m394do(this.f9233switch, authenticationTokenClaims.f9233switch);
    }

    public final int hashCode() {
        int m6915for = defpackage.Cif.m6915for(this.f9219const, defpackage.Cif.m6915for(this.f9218class, defpackage.Cif.m6915for(this.f9217catch, defpackage.Cif.m6915for(this.f9216break, 527, 31), 31), 31), 31);
        long j = this.f9220do;
        int i = (m6915for + ((int) (j ^ (j >>> 32)))) * 31;
        long j2 = this.f9225if;
        int m6915for2 = defpackage.Cif.m6915for(this.f9223final, (i + ((int) (j2 ^ (j2 >>> 32)))) * 31, 31);
        String str = this.f9232super;
        int hashCode = (m6915for2 + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.f9234throw;
        int hashCode2 = (hashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.f9235while;
        int hashCode3 = (hashCode2 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.f9227import;
        int hashCode4 = (hashCode3 + (str4 == null ? 0 : str4.hashCode())) * 31;
        String str5 = this.f9228native;
        int hashCode5 = (hashCode4 + (str5 == null ? 0 : str5.hashCode())) * 31;
        String str6 = this.f9229public;
        int hashCode6 = (hashCode5 + (str6 == null ? 0 : str6.hashCode())) * 31;
        Set<String> set = this.f9222do;
        int hashCode7 = (hashCode6 + (set == null ? 0 : set.hashCode())) * 31;
        String str7 = this.f9230return;
        int hashCode8 = (hashCode7 + (str7 == null ? 0 : str7.hashCode())) * 31;
        Map<String, Integer> map = this.f9221do;
        int hashCode9 = (hashCode8 + (map == null ? 0 : map.hashCode())) * 31;
        Map<String, String> map2 = this.f9226if;
        int hashCode10 = (hashCode9 + (map2 == null ? 0 : map2.hashCode())) * 31;
        Map<String, String> map3 = this.f9224for;
        int hashCode11 = (hashCode10 + (map3 == null ? 0 : map3.hashCode())) * 31;
        String str8 = this.f9231static;
        int hashCode12 = (hashCode11 + (str8 == null ? 0 : str8.hashCode())) * 31;
        String str9 = this.f9233switch;
        return hashCode12 + (str9 != null ? str9.hashCode() : 0);
    }

    public final String toString() {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("jti", this.f9216break);
        jSONObject.put("iss", this.f9217catch);
        jSONObject.put("aud", this.f9218class);
        jSONObject.put(ServerProtocol.DIALOG_PARAM_NONCE, this.f9219const);
        jSONObject.put("exp", this.f9220do);
        jSONObject.put("iat", this.f9225if);
        String str = this.f9223final;
        if (str != null) {
            jSONObject.put("sub", str);
        }
        String str2 = this.f9232super;
        if (str2 != null) {
            jSONObject.put(FacebookRequestErrorClassification.KEY_NAME, str2);
        }
        String str3 = this.f9234throw;
        if (str3 != null) {
            jSONObject.put("given_name", str3);
        }
        String str4 = this.f9235while;
        if (str4 != null) {
            jSONObject.put("middle_name", str4);
        }
        String str5 = this.f9227import;
        if (str5 != null) {
            jSONObject.put("family_name", str5);
        }
        String str6 = this.f9228native;
        if (str6 != null) {
            jSONObject.put(Scopes.EMAIL, str6);
        }
        String str7 = this.f9229public;
        if (str7 != null) {
            jSONObject.put("picture", str7);
        }
        Set<String> set = this.f9222do;
        if (set != null) {
            jSONObject.put("user_friends", new JSONArray((Collection) set));
        }
        String str8 = this.f9230return;
        if (str8 != null) {
            jSONObject.put("user_birthday", str8);
        }
        Map<String, Integer> map = this.f9221do;
        if (map != null) {
            jSONObject.put("user_age_range", new JSONObject(map));
        }
        Map<String, String> map2 = this.f9226if;
        if (map2 != null) {
            jSONObject.put("user_hometown", new JSONObject(map2));
        }
        Map<String, String> map3 = this.f9224for;
        if (map3 != null) {
            jSONObject.put("user_location", new JSONObject(map3));
        }
        String str9 = this.f9231static;
        if (str9 != null) {
            jSONObject.put("user_gender", str9);
        }
        String str10 = this.f9233switch;
        if (str10 != null) {
            jSONObject.put("user_link", str10);
        }
        String jSONObject2 = jSONObject.toString();
        C0173Do.m399new(jSONObject2, "claimsJsonObject.toString()");
        return jSONObject2;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        C0173Do.m401try(parcel, "dest");
        parcel.writeString(this.f9216break);
        parcel.writeString(this.f9217catch);
        parcel.writeString(this.f9218class);
        parcel.writeString(this.f9219const);
        parcel.writeLong(this.f9220do);
        parcel.writeLong(this.f9225if);
        parcel.writeString(this.f9223final);
        parcel.writeString(this.f9232super);
        parcel.writeString(this.f9234throw);
        parcel.writeString(this.f9235while);
        parcel.writeString(this.f9227import);
        parcel.writeString(this.f9228native);
        parcel.writeString(this.f9229public);
        Set<String> set = this.f9222do;
        if (set == null) {
            parcel.writeStringList(null);
        } else {
            parcel.writeStringList(new ArrayList(set));
        }
        parcel.writeString(this.f9230return);
        parcel.writeMap(this.f9221do);
        parcel.writeMap(this.f9226if);
        parcel.writeMap(this.f9224for);
        parcel.writeString(this.f9231static);
        parcel.writeString(this.f9233switch);
    }

    public AuthenticationTokenClaims(Parcel parcel) {
        C0173Do.m401try(parcel, "parcel");
        this.f9216break = Validate.notNullOrEmpty(parcel.readString(), "jti");
        this.f9217catch = Validate.notNullOrEmpty(parcel.readString(), "iss");
        this.f9218class = Validate.notNullOrEmpty(parcel.readString(), "aud");
        this.f9219const = Validate.notNullOrEmpty(parcel.readString(), ServerProtocol.DIALOG_PARAM_NONCE);
        this.f9220do = parcel.readLong();
        this.f9225if = parcel.readLong();
        this.f9223final = Validate.notNullOrEmpty(parcel.readString(), "sub");
        this.f9232super = parcel.readString();
        this.f9234throw = parcel.readString();
        this.f9235while = parcel.readString();
        this.f9227import = parcel.readString();
        this.f9228native = parcel.readString();
        this.f9229public = parcel.readString();
        ArrayList<String> createStringArrayList = parcel.createStringArrayList();
        this.f9222do = createStringArrayList != null ? DesugarCollections.unmodifiableSet(new HashSet(createStringArrayList)) : null;
        this.f9230return = parcel.readString();
        HashMap readHashMap = parcel.readHashMap(C3645ro.class.getClassLoader());
        readHashMap = readHashMap instanceof HashMap ? readHashMap : null;
        this.f9221do = readHashMap != null ? DesugarCollections.unmodifiableMap(readHashMap) : null;
        HashMap readHashMap2 = parcel.readHashMap(C3850vF.class.getClassLoader());
        readHashMap2 = readHashMap2 instanceof HashMap ? readHashMap2 : null;
        this.f9226if = readHashMap2 != null ? DesugarCollections.unmodifiableMap(readHashMap2) : null;
        HashMap readHashMap3 = parcel.readHashMap(C3850vF.class.getClassLoader());
        readHashMap3 = readHashMap3 instanceof HashMap ? readHashMap3 : null;
        this.f9224for = readHashMap3 != null ? DesugarCollections.unmodifiableMap(readHashMap3) : null;
        this.f9231static = parcel.readString();
        this.f9233switch = parcel.readString();
    }
}
