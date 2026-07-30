package com.google.android.gms.auth.api.signin;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import c.b.a.c.a.a.a.b;
import c.b.a.c.d.m.a;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.internal.zzbkv;
import java.util.AbstractSet;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class GoogleSignInAccount extends zzbkv implements ReflectedParcelable {
    public static final Parcelable.Creator CREATOR = new b();
    public static a n = c.b.a.c.d.m.b.f2991a;

    /* renamed from: a, reason: collision with root package name */
    public final int f3338a;

    /* renamed from: b, reason: collision with root package name */
    public String f3339b;

    /* renamed from: c, reason: collision with root package name */
    public String f3340c;

    /* renamed from: d, reason: collision with root package name */
    public String f3341d;
    public String e;
    public Uri f;
    public String g;
    public long h;
    public String i;
    public List j;
    public String k;
    public String l;
    public Set m = new HashSet();

    public GoogleSignInAccount(int i, String str, String str2, String str3, String str4, Uri uri, String str5, long j, String str6, List list, String str7, String str8) {
        this.f3338a = i;
        this.f3339b = str;
        this.f3340c = str2;
        this.f3341d = str3;
        this.e = str4;
        this.f = uri;
        this.g = str5;
        this.h = j;
        this.i = str6;
        this.j = list;
        this.k = str7;
        this.l = str8;
    }

    public static GoogleSignInAccount h(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        JSONObject jSONObject = new JSONObject(str);
        String optString = jSONObject.optString("photoUrl", null);
        Uri parse = !TextUtils.isEmpty(optString) ? Uri.parse(optString) : null;
        long parseLong = Long.parseLong(jSONObject.getString("expirationTime"));
        HashSet hashSet = new HashSet();
        JSONArray jSONArray = jSONObject.getJSONArray("grantedScopes");
        int length = jSONArray.length();
        for (int i = 0; i < length; i++) {
            hashSet.add(new Scope(1, jSONArray.getString(i)));
        }
        String optString2 = jSONObject.optString("id");
        String optString3 = jSONObject.optString("tokenId", null);
        String optString4 = jSONObject.optString("email", null);
        String optString5 = jSONObject.optString("displayName", null);
        String optString6 = jSONObject.optString("givenName", null);
        String optString7 = jSONObject.optString("familyName", null);
        Long valueOf = Long.valueOf(parseLong);
        String string = jSONObject.getString("obfuscatedIdentifier");
        if (valueOf == null) {
            valueOf = Long.valueOf(System.currentTimeMillis() / 1000);
        }
        long longValue = valueOf.longValue();
        c.b.a.c.b.a.U(string);
        c.b.a.c.b.a.R(hashSet);
        GoogleSignInAccount googleSignInAccount = new GoogleSignInAccount(3, optString2, optString3, optString4, optString5, parse, null, longValue, string, new ArrayList(hashSet), optString6, optString7);
        googleSignInAccount.g = jSONObject.optString("serverAuthCode", null);
        return googleSignInAccount;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof GoogleSignInAccount)) {
            return false;
        }
        GoogleSignInAccount googleSignInAccount = (GoogleSignInAccount) obj;
        if (googleSignInAccount.i.equals(this.i)) {
            if (((AbstractSet) googleSignInAccount.i()).equals(i())) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        return ((AbstractSet) i()).hashCode() + ((this.i.hashCode() + 527) * 31);
    }

    public final Set i() {
        HashSet hashSet = new HashSet(this.j);
        hashSet.addAll(this.m);
        return hashSet;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int q0 = c.b.a.c.b.a.q0(parcel);
        c.b.a.c.b.a.s0(parcel, 1, this.f3338a);
        c.b.a.c.b.a.c0(parcel, 2, this.f3339b, false);
        c.b.a.c.b.a.c0(parcel, 3, this.f3340c, false);
        c.b.a.c.b.a.c0(parcel, 4, this.f3341d, false);
        c.b.a.c.b.a.c0(parcel, 5, this.e, false);
        c.b.a.c.b.a.b0(parcel, 6, this.f, i, false);
        c.b.a.c.b.a.c0(parcel, 7, this.g, false);
        c.b.a.c.b.a.Y(parcel, 8, this.h);
        c.b.a.c.b.a.c0(parcel, 9, this.i, false);
        c.b.a.c.b.a.I0(parcel, 10, this.j, false);
        c.b.a.c.b.a.c0(parcel, 11, this.k, false);
        c.b.a.c.b.a.c0(parcel, 12, this.l, false);
        c.b.a.c.b.a.H0(parcel, q0);
    }
}
