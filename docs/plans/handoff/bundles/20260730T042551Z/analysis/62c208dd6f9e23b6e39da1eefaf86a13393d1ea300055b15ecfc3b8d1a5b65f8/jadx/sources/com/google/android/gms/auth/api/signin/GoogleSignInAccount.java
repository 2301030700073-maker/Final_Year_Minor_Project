package com.google.android.gms.auth.api.signin;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import com.google.android.gms.common.Scopes;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.util.Clock;
import com.google.android.gms.common.util.DefaultClock;
import defpackage.C3565qO;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;

@SafeParcelable.Class(creator = "GoogleSignInAccountCreator")
@Deprecated
/* loaded from: classes.dex */
public class GoogleSignInAccount extends AbstractSafeParcelable implements ReflectedParcelable {
    public static final Parcelable.Creator<GoogleSignInAccount> CREATOR = new C3565qO();

    /* renamed from: do, reason: not valid java name */
    public static final Clock f10145do = DefaultClock.getInstance();

    /* renamed from: break, reason: not valid java name */
    @SafeParcelable.Field(getter = "getId", id = 2)
    public final String f10146break;

    /* renamed from: catch, reason: not valid java name */
    @SafeParcelable.Field(getter = "getIdToken", id = 3)
    public final String f10147catch;

    /* renamed from: class, reason: not valid java name */
    @SafeParcelable.Field(getter = "getEmail", id = 4)
    public final String f10148class;

    /* renamed from: const, reason: not valid java name */
    @SafeParcelable.Field(getter = "getDisplayName", id = 5)
    public final String f10149const;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    @SafeParcelable.Field(getter = "getExpirationTimeSecs", id = 8)
    public final long f10150do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    @SafeParcelable.Field(getter = "getPhotoUrl", id = 6)
    public final Uri f10151do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final HashSet f10152do = new HashSet();

    /* renamed from: do, reason: not valid java name and collision with other field name */
    @SafeParcelable.Field(id = 10)
    public final List f10153do;

    /* renamed from: final, reason: not valid java name */
    @SafeParcelable.Field(getter = "getServerAuthCode", id = 7)
    public String f10154final;

    /* renamed from: for, reason: not valid java name */
    @SafeParcelable.VersionField(id = 1)
    public final int f10155for;

    /* renamed from: super, reason: not valid java name */
    @SafeParcelable.Field(getter = "getObfuscatedIdentifier", id = 9)
    public final String f10156super;

    /* renamed from: throw, reason: not valid java name */
    @SafeParcelable.Field(getter = "getGivenName", id = 11)
    public final String f10157throw;

    /* renamed from: while, reason: not valid java name */
    @SafeParcelable.Field(getter = "getFamilyName", id = 12)
    public final String f10158while;

    @SafeParcelable.Constructor
    public GoogleSignInAccount(@SafeParcelable.Param(id = 1) int i, @SafeParcelable.Param(id = 2) String str, @SafeParcelable.Param(id = 3) String str2, @SafeParcelable.Param(id = 4) String str3, @SafeParcelable.Param(id = 5) String str4, @SafeParcelable.Param(id = 6) Uri uri, @SafeParcelable.Param(id = 7) String str5, @SafeParcelable.Param(id = 8) long j, @SafeParcelable.Param(id = 9) String str6, @SafeParcelable.Param(id = 10) ArrayList arrayList, @SafeParcelable.Param(id = 11) String str7, @SafeParcelable.Param(id = 12) String str8) {
        this.f10155for = i;
        this.f10146break = str;
        this.f10147catch = str2;
        this.f10148class = str3;
        this.f10149const = str4;
        this.f10151do = uri;
        this.f10154final = str5;
        this.f10150do = j;
        this.f10156super = str6;
        this.f10153do = arrayList;
        this.f10157throw = str7;
        this.f10158while = str8;
    }

    public static GoogleSignInAccount j(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        JSONObject jSONObject = new JSONObject(str);
        String optString = jSONObject.optString("photoUrl");
        Uri parse = !TextUtils.isEmpty(optString) ? Uri.parse(optString) : null;
        long parseLong = Long.parseLong(jSONObject.getString("expirationTime"));
        HashSet hashSet = new HashSet();
        JSONArray jSONArray = jSONObject.getJSONArray("grantedScopes");
        int length = jSONArray.length();
        for (int i = 0; i < length; i++) {
            hashSet.add(new Scope(jSONArray.getString(i)));
        }
        GoogleSignInAccount googleSignInAccount = new GoogleSignInAccount(3, jSONObject.optString("id"), jSONObject.has("tokenId") ? jSONObject.optString("tokenId") : null, jSONObject.has(Scopes.EMAIL) ? jSONObject.optString(Scopes.EMAIL) : null, jSONObject.has("displayName") ? jSONObject.optString("displayName") : null, parse, null, Long.valueOf(parseLong).longValue(), Preconditions.checkNotEmpty(jSONObject.getString("obfuscatedIdentifier")), new ArrayList((Collection) Preconditions.checkNotNull(hashSet)), jSONObject.has("givenName") ? jSONObject.optString("givenName") : null, jSONObject.has("familyName") ? jSONObject.optString("familyName") : null);
        googleSignInAccount.f10154final = jSONObject.has("serverAuthCode") ? jSONObject.optString("serverAuthCode") : null;
        return googleSignInAccount;
    }

    public final boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof GoogleSignInAccount)) {
            return false;
        }
        GoogleSignInAccount googleSignInAccount = (GoogleSignInAccount) obj;
        return googleSignInAccount.f10156super.equals(this.f10156super) && googleSignInAccount.f().equals(f());
    }

    @KeepForSdk
    public final HashSet f() {
        HashSet hashSet = new HashSet(this.f10153do);
        hashSet.addAll(this.f10152do);
        return hashSet;
    }

    public final int hashCode() {
        return ((this.f10156super.hashCode() + 527) * 31) + f().hashCode();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeInt(parcel, 1, this.f10155for);
        SafeParcelWriter.writeString(parcel, 2, this.f10146break, false);
        SafeParcelWriter.writeString(parcel, 3, this.f10147catch, false);
        SafeParcelWriter.writeString(parcel, 4, this.f10148class, false);
        SafeParcelWriter.writeString(parcel, 5, this.f10149const, false);
        SafeParcelWriter.writeParcelable(parcel, 6, this.f10151do, i, false);
        SafeParcelWriter.writeString(parcel, 7, this.f10154final, false);
        SafeParcelWriter.writeLong(parcel, 8, this.f10150do);
        SafeParcelWriter.writeString(parcel, 9, this.f10156super, false);
        SafeParcelWriter.writeTypedList(parcel, 10, this.f10153do, false);
        SafeParcelWriter.writeString(parcel, 11, this.f10157throw, false);
        SafeParcelWriter.writeString(parcel, 12, this.f10158while, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
