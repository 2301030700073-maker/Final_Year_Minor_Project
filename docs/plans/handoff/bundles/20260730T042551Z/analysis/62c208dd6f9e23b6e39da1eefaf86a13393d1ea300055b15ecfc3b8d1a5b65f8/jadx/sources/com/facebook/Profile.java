package com.facebook;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import com.facebook.internal.FacebookRequestErrorClassification;
import com.facebook.internal.Validate;
import defpackage.C0173Do;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class Profile implements Parcelable {
    public static final Parcelable.Creator<Profile> CREATOR = new Cdo();

    /* renamed from: break, reason: not valid java name */
    public final String f9290break;

    /* renamed from: catch, reason: not valid java name */
    public final String f9291catch;

    /* renamed from: class, reason: not valid java name */
    public final String f9292class;

    /* renamed from: const, reason: not valid java name */
    public final String f9293const;

    /* renamed from: do, reason: not valid java name */
    public final Uri f9294do;

    /* renamed from: final, reason: not valid java name */
    public final String f9295final;

    /* renamed from: if, reason: not valid java name */
    public final Uri f9296if;

    /* renamed from: com.facebook.Profile$do, reason: invalid class name */
    public static final class Cdo implements Parcelable.Creator<Profile> {
        @Override // android.os.Parcelable.Creator
        public final Profile createFromParcel(Parcel parcel) {
            C0173Do.m401try(parcel, "source");
            return new Profile(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public final Profile[] newArray(int i) {
            return new Profile[i];
        }
    }

    public Profile(String str, String str2, String str3, String str4, String str5, Uri uri, Uri uri2) {
        Validate.notNullOrEmpty(str, "id");
        this.f9290break = str;
        this.f9291catch = str2;
        this.f9292class = str3;
        this.f9293const = str4;
        this.f9295final = str5;
        this.f9294do = uri;
        this.f9296if = uri2;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        String str;
        String str2;
        String str3;
        String str4;
        Uri uri;
        Uri uri2;
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Profile)) {
            return false;
        }
        String str5 = this.f9290break;
        return ((str5 == null && ((Profile) obj).f9290break == null) || C0173Do.m394do(str5, ((Profile) obj).f9290break)) && (((str = this.f9291catch) == null && ((Profile) obj).f9291catch == null) || C0173Do.m394do(str, ((Profile) obj).f9291catch)) && ((((str2 = this.f9292class) == null && ((Profile) obj).f9292class == null) || C0173Do.m394do(str2, ((Profile) obj).f9292class)) && ((((str3 = this.f9293const) == null && ((Profile) obj).f9293const == null) || C0173Do.m394do(str3, ((Profile) obj).f9293const)) && ((((str4 = this.f9295final) == null && ((Profile) obj).f9295final == null) || C0173Do.m394do(str4, ((Profile) obj).f9295final)) && ((((uri = this.f9294do) == null && ((Profile) obj).f9294do == null) || C0173Do.m394do(uri, ((Profile) obj).f9294do)) && (((uri2 = this.f9296if) == null && ((Profile) obj).f9296if == null) || C0173Do.m394do(uri2, ((Profile) obj).f9296if))))));
    }

    public final int hashCode() {
        String str = this.f9290break;
        int hashCode = 527 + (str != null ? str.hashCode() : 0);
        String str2 = this.f9291catch;
        if (str2 != null) {
            hashCode = (hashCode * 31) + str2.hashCode();
        }
        String str3 = this.f9292class;
        if (str3 != null) {
            hashCode = (hashCode * 31) + str3.hashCode();
        }
        String str4 = this.f9293const;
        if (str4 != null) {
            hashCode = (hashCode * 31) + str4.hashCode();
        }
        String str5 = this.f9295final;
        if (str5 != null) {
            hashCode = (hashCode * 31) + str5.hashCode();
        }
        Uri uri = this.f9294do;
        if (uri != null) {
            hashCode = (hashCode * 31) + uri.hashCode();
        }
        Uri uri2 = this.f9296if;
        return uri2 != null ? (hashCode * 31) + uri2.hashCode() : hashCode;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        C0173Do.m401try(parcel, "dest");
        parcel.writeString(this.f9290break);
        parcel.writeString(this.f9291catch);
        parcel.writeString(this.f9292class);
        parcel.writeString(this.f9293const);
        parcel.writeString(this.f9295final);
        Uri uri = this.f9294do;
        parcel.writeString(uri == null ? null : uri.toString());
        Uri uri2 = this.f9296if;
        parcel.writeString(uri2 != null ? uri2.toString() : null);
    }

    public Profile(JSONObject jSONObject) {
        this.f9290break = jSONObject.optString("id", null);
        this.f9291catch = jSONObject.optString("first_name", null);
        this.f9292class = jSONObject.optString("middle_name", null);
        this.f9293const = jSONObject.optString("last_name", null);
        this.f9295final = jSONObject.optString(FacebookRequestErrorClassification.KEY_NAME, null);
        String optString = jSONObject.optString("link_uri", null);
        this.f9294do = optString == null ? null : Uri.parse(optString);
        String optString2 = jSONObject.optString("picture_uri", null);
        this.f9296if = optString2 != null ? Uri.parse(optString2) : null;
    }

    public Profile(Parcel parcel) {
        this.f9290break = parcel.readString();
        this.f9291catch = parcel.readString();
        this.f9292class = parcel.readString();
        this.f9293const = parcel.readString();
        this.f9295final = parcel.readString();
        String readString = parcel.readString();
        this.f9294do = readString == null ? null : Uri.parse(readString);
        String readString2 = parcel.readString();
        this.f9296if = readString2 != null ? Uri.parse(readString2) : null;
    }
}
