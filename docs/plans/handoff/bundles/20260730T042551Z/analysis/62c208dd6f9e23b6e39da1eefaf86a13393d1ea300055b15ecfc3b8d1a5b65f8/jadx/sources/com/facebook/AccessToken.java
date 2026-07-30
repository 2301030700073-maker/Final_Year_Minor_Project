package com.facebook;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import com.facebook.internal.NativeProtocol;
import com.facebook.internal.ServerProtocol;
import com.facebook.internal.Utility;
import com.facebook.internal.Validate;
import defpackage.C0173Do;
import defpackage.C3344mh;
import defpackage.C3756th;
import defpackage.Cinterface;
import defpackage.Cprotected;
import defpackage.EnumC0658Zq;
import j$.util.DesugarCollections;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Date;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class AccessToken implements Parcelable {

    /* renamed from: break, reason: not valid java name */
    public final String f9200break;

    /* renamed from: catch, reason: not valid java name */
    public final String f9201catch;

    /* renamed from: class, reason: not valid java name */
    public final String f9202class;

    /* renamed from: const, reason: not valid java name */
    public final String f9203const;

    /* renamed from: do, reason: not valid java name */
    public final Date f9204do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Set<String> f9205do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Cprotected f9206do;

    /* renamed from: for, reason: not valid java name */
    public final Date f9207for;

    /* renamed from: for, reason: not valid java name and collision with other field name */
    public final Set<String> f9208for;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public final Date f9209if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public final Set<String> f9210if;

    /* renamed from: new, reason: not valid java name */
    public static final Date f9198new = new Date(Long.MAX_VALUE);

    /* renamed from: try, reason: not valid java name */
    public static final Date f9199try = new Date();

    /* renamed from: if, reason: not valid java name */
    public static final Cprotected f9197if = Cprotected.FACEBOOK_APPLICATION_WEB;
    public static final Parcelable.Creator<AccessToken> CREATOR = new Cdo();

    /* renamed from: com.facebook.AccessToken$do, reason: invalid class name */
    public static final class Cdo implements Parcelable.Creator<AccessToken> {
        @Override // android.os.Parcelable.Creator
        public final AccessToken createFromParcel(Parcel parcel) {
            C0173Do.m401try(parcel, "source");
            return new AccessToken(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public final AccessToken[] newArray(int i) {
            return new AccessToken[i];
        }
    }

    /* renamed from: com.facebook.AccessToken$if, reason: invalid class name */
    public static final class Cif {
        /* renamed from: do, reason: not valid java name */
        public static AccessToken m5256do(JSONObject jSONObject) {
            if (jSONObject.getInt(ServerProtocol.FALLBACK_DIALOG_PARAM_VERSION) > 1) {
                throw new C3344mh("Unknown AccessToken serialization format.");
            }
            String string = jSONObject.getString("token");
            Date date = new Date(jSONObject.getLong("expires_at"));
            JSONArray jSONArray = jSONObject.getJSONArray(NativeProtocol.RESULT_ARGS_PERMISSIONS);
            JSONArray jSONArray2 = jSONObject.getJSONArray("declined_permissions");
            JSONArray optJSONArray = jSONObject.optJSONArray("expired_permissions");
            Date date2 = new Date(jSONObject.getLong("last_refresh"));
            String string2 = jSONObject.getString("source");
            C0173Do.m399new(string2, "jsonObject.getString(SOURCE_KEY)");
            Cprotected valueOf = Cprotected.valueOf(string2);
            String string3 = jSONObject.getString("application_id");
            String string4 = jSONObject.getString("user_id");
            Date date3 = new Date(jSONObject.optLong("data_access_expiration_time", 0L));
            String optString = jSONObject.optString(NativeProtocol.RESULT_ARGS_GRAPH_DOMAIN, null);
            C0173Do.m399new(string, "token");
            C0173Do.m399new(string3, "applicationId");
            C0173Do.m399new(string4, "userId");
            Utility utility = Utility.INSTANCE;
            C0173Do.m399new(jSONArray, "permissionsArray");
            List<String> jsonArrayToStringList = Utility.jsonArrayToStringList(jSONArray);
            C0173Do.m399new(jSONArray2, "declinedPermissionsArray");
            return new AccessToken(string, string3, string4, jsonArrayToStringList, Utility.jsonArrayToStringList(jSONArray2), optJSONArray == null ? new ArrayList() : Utility.jsonArrayToStringList(optJSONArray), valueOf, date, date2, date3, optString);
        }

        /* renamed from: for, reason: not valid java name */
        public static boolean m5257for() {
            AccessToken accessToken = Cinterface.f13565do.m6940do().f13567do;
            return (accessToken == null || new Date().after(accessToken.f9204do)) ? false : true;
        }

        /* renamed from: if, reason: not valid java name */
        public static AccessToken m5258if() {
            return Cinterface.f13565do.m6940do().f13567do;
        }
    }

    public /* synthetic */ AccessToken(String str, String str2, String str3, Collection collection, Collection collection2, Collection collection3, Cprotected cprotected, Date date, Date date2, Date date3) {
        this(str, str2, str3, collection, collection2, collection3, cprotected, date, date2, date3, "facebook");
    }

    /* renamed from: do, reason: not valid java name */
    public static String m5254do() {
        throw null;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AccessToken)) {
            return false;
        }
        AccessToken accessToken = (AccessToken) obj;
        if (C0173Do.m394do(this.f9204do, accessToken.f9204do) && C0173Do.m394do(this.f9205do, accessToken.f9205do) && C0173Do.m394do(this.f9210if, accessToken.f9210if) && C0173Do.m394do(this.f9208for, accessToken.f9208for) && C0173Do.m394do(this.f9200break, accessToken.f9200break) && this.f9206do == accessToken.f9206do && C0173Do.m394do(this.f9209if, accessToken.f9209if) && C0173Do.m394do(this.f9201catch, accessToken.f9201catch) && C0173Do.m394do(this.f9202class, accessToken.f9202class) && C0173Do.m394do(this.f9207for, accessToken.f9207for)) {
            String str = this.f9203const;
            String str2 = accessToken.f9203const;
            if (str == null ? str2 == null : C0173Do.m394do(str, str2)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int hashCode = (this.f9207for.hashCode() + defpackage.Cif.m6915for(this.f9202class, defpackage.Cif.m6915for(this.f9201catch, (this.f9209if.hashCode() + ((this.f9206do.hashCode() + defpackage.Cif.m6915for(this.f9200break, (this.f9208for.hashCode() + ((this.f9210if.hashCode() + ((this.f9205do.hashCode() + ((this.f9204do.hashCode() + 527) * 31)) * 31)) * 31)) * 31, 31)) * 31)) * 31, 31), 31)) * 31;
        String str = this.f9203const;
        return hashCode + (str == null ? 0 : str.hashCode());
    }

    /* renamed from: if, reason: not valid java name */
    public final JSONObject m5255if() {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put(ServerProtocol.FALLBACK_DIALOG_PARAM_VERSION, 1);
        jSONObject.put("token", this.f9200break);
        jSONObject.put("expires_at", this.f9204do.getTime());
        jSONObject.put(NativeProtocol.RESULT_ARGS_PERMISSIONS, new JSONArray((Collection) this.f9205do));
        jSONObject.put("declined_permissions", new JSONArray((Collection) this.f9210if));
        jSONObject.put("expired_permissions", new JSONArray((Collection) this.f9208for));
        jSONObject.put("last_refresh", this.f9209if.getTime());
        jSONObject.put("source", this.f9206do.name());
        jSONObject.put("application_id", this.f9201catch);
        jSONObject.put("user_id", this.f9202class);
        jSONObject.put("data_access_expiration_time", this.f9207for.getTime());
        String str = this.f9203const;
        if (str != null) {
            jSONObject.put(NativeProtocol.RESULT_ARGS_GRAPH_DOMAIN, str);
        }
        return jSONObject;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("{AccessToken token:ACCESS_TOKEN_REMOVED permissions:[");
        C3756th c3756th = C3756th.f15751do;
        C3756th.m8295break(EnumC0658Zq.INCLUDE_ACCESS_TOKENS);
        sb.append(TextUtils.join(", ", this.f9205do));
        sb.append("]}");
        String sb2 = sb.toString();
        C0173Do.m399new(sb2, "builder.toString()");
        return sb2;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        C0173Do.m401try(parcel, "dest");
        parcel.writeLong(this.f9204do.getTime());
        parcel.writeStringList(new ArrayList(this.f9205do));
        parcel.writeStringList(new ArrayList(this.f9210if));
        parcel.writeStringList(new ArrayList(this.f9208for));
        parcel.writeString(this.f9200break);
        parcel.writeString(this.f9206do.name());
        parcel.writeLong(this.f9209if.getTime());
        parcel.writeString(this.f9201catch);
        parcel.writeString(this.f9202class);
        parcel.writeLong(this.f9207for.getTime());
        parcel.writeString(this.f9203const);
    }

    public AccessToken(String str, String str2, String str3, Collection<String> collection, Collection<String> collection2, Collection<String> collection3, Cprotected cprotected, Date date, Date date2, Date date3, String str4) {
        C0173Do.m401try(str, "accessToken");
        C0173Do.m401try(str2, "applicationId");
        C0173Do.m401try(str3, "userId");
        Validate.notEmpty(str, "accessToken");
        Validate.notEmpty(str2, "applicationId");
        Validate.notEmpty(str3, "userId");
        Date date4 = f9198new;
        this.f9204do = date == null ? date4 : date;
        Set<String> unmodifiableSet = DesugarCollections.unmodifiableSet(collection != null ? new HashSet(collection) : new HashSet());
        C0173Do.m399new(unmodifiableSet, "unmodifiableSet(if (permissions != null) HashSet(permissions) else HashSet())");
        this.f9205do = unmodifiableSet;
        Set<String> unmodifiableSet2 = DesugarCollections.unmodifiableSet(collection2 != null ? new HashSet(collection2) : new HashSet());
        C0173Do.m399new(unmodifiableSet2, "unmodifiableSet(\n            if (declinedPermissions != null) HashSet(declinedPermissions) else HashSet())");
        this.f9210if = unmodifiableSet2;
        Set<String> unmodifiableSet3 = DesugarCollections.unmodifiableSet(collection3 != null ? new HashSet(collection3) : new HashSet());
        C0173Do.m399new(unmodifiableSet3, "unmodifiableSet(\n            if (expiredPermissions != null) HashSet(expiredPermissions) else HashSet())");
        this.f9208for = unmodifiableSet3;
        this.f9200break = str;
        cprotected = cprotected == null ? f9197if : cprotected;
        if (str4 != null && str4.equals("instagram")) {
            int ordinal = cprotected.ordinal();
            if (ordinal == 1) {
                cprotected = Cprotected.INSTAGRAM_APPLICATION_WEB;
            } else if (ordinal == 4) {
                cprotected = Cprotected.INSTAGRAM_WEB_VIEW;
            } else if (ordinal == 5) {
                cprotected = Cprotected.INSTAGRAM_CUSTOM_CHROME_TAB;
            }
        }
        this.f9206do = cprotected;
        this.f9209if = date2 == null ? f9199try : date2;
        this.f9201catch = str2;
        this.f9202class = str3;
        this.f9207for = (date3 == null || date3.getTime() == 0) ? date4 : date3;
        this.f9203const = str4 == null ? "facebook" : str4;
    }

    public AccessToken(Parcel parcel) {
        Cprotected cprotected;
        C0173Do.m401try(parcel, "parcel");
        this.f9204do = new Date(parcel.readLong());
        ArrayList arrayList = new ArrayList();
        parcel.readStringList(arrayList);
        Set<String> unmodifiableSet = DesugarCollections.unmodifiableSet(new HashSet(arrayList));
        C0173Do.m399new(unmodifiableSet, "unmodifiableSet(HashSet(permissionsList))");
        this.f9205do = unmodifiableSet;
        arrayList.clear();
        parcel.readStringList(arrayList);
        Set<String> unmodifiableSet2 = DesugarCollections.unmodifiableSet(new HashSet(arrayList));
        C0173Do.m399new(unmodifiableSet2, "unmodifiableSet(HashSet(permissionsList))");
        this.f9210if = unmodifiableSet2;
        arrayList.clear();
        parcel.readStringList(arrayList);
        Set<String> unmodifiableSet3 = DesugarCollections.unmodifiableSet(new HashSet(arrayList));
        C0173Do.m399new(unmodifiableSet3, "unmodifiableSet(HashSet(permissionsList))");
        this.f9208for = unmodifiableSet3;
        this.f9200break = Validate.notNullOrEmpty(parcel.readString(), "token");
        String readString = parcel.readString();
        if (readString != null) {
            cprotected = Cprotected.valueOf(readString);
        } else {
            cprotected = f9197if;
        }
        this.f9206do = cprotected;
        this.f9209if = new Date(parcel.readLong());
        this.f9201catch = Validate.notNullOrEmpty(parcel.readString(), "applicationId");
        this.f9202class = Validate.notNullOrEmpty(parcel.readString(), "userId");
        this.f9207for = new Date(parcel.readLong());
        this.f9203const = parcel.readString();
    }
}
