package com.facebook;

import android.os.Parcel;
import android.os.Parcelable;
import com.facebook.internal.Validate;
import defpackage.C0173Do;
import defpackage.Cif;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class AuthenticationTokenHeader implements Parcelable {
    public static final Parcelable.Creator<AuthenticationTokenHeader> CREATOR = new Cdo();

    /* renamed from: break, reason: not valid java name */
    public final String f9236break;

    /* renamed from: catch, reason: not valid java name */
    public final String f9237catch;

    /* renamed from: class, reason: not valid java name */
    public final String f9238class;

    /* renamed from: com.facebook.AuthenticationTokenHeader$do, reason: invalid class name */
    public static final class Cdo implements Parcelable.Creator<AuthenticationTokenHeader> {
        @Override // android.os.Parcelable.Creator
        public final AuthenticationTokenHeader createFromParcel(Parcel parcel) {
            C0173Do.m401try(parcel, "source");
            return new AuthenticationTokenHeader(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public final AuthenticationTokenHeader[] newArray(int i) {
            return new AuthenticationTokenHeader[i];
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x006d, code lost:
    
        if (r4 != false) goto L25;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public AuthenticationTokenHeader(java.lang.String r11) {
        /*
            r10 = this;
            java.lang.String r0 = "typ"
            java.lang.String r1 = "kid"
            java.lang.String r2 = "alg"
            java.lang.String r3 = "encodedHeaderString"
            defpackage.C0173Do.m401try(r11, r3)
            r10.<init>()
            com.facebook.internal.Validate.notEmpty(r11, r3)
            r3 = 0
            byte[] r4 = android.util.Base64.decode(r11, r3)
            java.lang.String r5 = "decodedBytes"
            defpackage.C0173Do.m399new(r4, r5)
            java.lang.String r6 = new java.lang.String
            java.nio.charset.Charset r7 = defpackage.C3548q7.f15043do
            r6.<init>(r4, r7)
            org.json.JSONObject r4 = new org.json.JSONObject     // Catch: org.json.JSONException -> L70
            r4.<init>(r6)     // Catch: org.json.JSONException -> L70
            java.lang.String r6 = r4.optString(r2)     // Catch: org.json.JSONException -> L70
            defpackage.C0173Do.m399new(r6, r2)     // Catch: org.json.JSONException -> L70
            int r7 = r6.length()     // Catch: org.json.JSONException -> L70
            r8 = 1
            if (r7 <= 0) goto L37
            r7 = 1
            goto L38
        L37:
            r7 = 0
        L38:
            if (r7 == 0) goto L44
            java.lang.String r7 = "RS256"
            boolean r6 = defpackage.C0173Do.m394do(r6, r7)     // Catch: org.json.JSONException -> L70
            if (r6 == 0) goto L44
            r6 = 1
            goto L45
        L44:
            r6 = 0
        L45:
            java.lang.String r7 = r4.optString(r1)     // Catch: org.json.JSONException -> L70
            java.lang.String r9 = "jsonObj.optString(\"kid\")"
            defpackage.C0173Do.m399new(r7, r9)     // Catch: org.json.JSONException -> L70
            int r7 = r7.length()     // Catch: org.json.JSONException -> L70
            if (r7 <= 0) goto L56
            r7 = 1
            goto L57
        L56:
            r7 = 0
        L57:
            java.lang.String r4 = r4.optString(r0)     // Catch: org.json.JSONException -> L70
            java.lang.String r9 = "jsonObj.optString(\"typ\")"
            defpackage.C0173Do.m399new(r4, r9)     // Catch: org.json.JSONException -> L70
            int r4 = r4.length()     // Catch: org.json.JSONException -> L70
            if (r4 <= 0) goto L68
            r4 = 1
            goto L69
        L68:
            r4 = 0
        L69:
            if (r6 == 0) goto L70
            if (r7 == 0) goto L70
            if (r4 == 0) goto L70
            goto L71
        L70:
            r8 = 0
        L71:
            if (r8 == 0) goto La8
            byte[] r11 = android.util.Base64.decode(r11, r3)
            defpackage.C0173Do.m399new(r11, r5)
            java.lang.String r3 = new java.lang.String
            java.nio.charset.Charset r4 = defpackage.C3548q7.f15043do
            r3.<init>(r11, r4)
            org.json.JSONObject r11 = new org.json.JSONObject
            r11.<init>(r3)
            java.lang.String r2 = r11.getString(r2)
            java.lang.String r3 = "jsonObj.getString(\"alg\")"
            defpackage.C0173Do.m399new(r2, r3)
            r10.f9236break = r2
            java.lang.String r0 = r11.getString(r0)
            java.lang.String r2 = "jsonObj.getString(\"typ\")"
            defpackage.C0173Do.m399new(r0, r2)
            r10.f9237catch = r0
            java.lang.String r11 = r11.getString(r1)
            java.lang.String r0 = "jsonObj.getString(\"kid\")"
            defpackage.C0173Do.m399new(r11, r0)
            r10.f9238class = r11
            return
        La8:
            java.lang.IllegalArgumentException r11 = new java.lang.IllegalArgumentException
            java.lang.String r0 = "Invalid Header"
            java.lang.String r0 = r0.toString()
            r11.<init>(r0)
            throw r11
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.AuthenticationTokenHeader.<init>(java.lang.String):void");
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AuthenticationTokenHeader)) {
            return false;
        }
        AuthenticationTokenHeader authenticationTokenHeader = (AuthenticationTokenHeader) obj;
        return C0173Do.m394do(this.f9236break, authenticationTokenHeader.f9236break) && C0173Do.m394do(this.f9237catch, authenticationTokenHeader.f9237catch) && C0173Do.m394do(this.f9238class, authenticationTokenHeader.f9238class);
    }

    public final int hashCode() {
        return this.f9238class.hashCode() + Cif.m6915for(this.f9237catch, Cif.m6915for(this.f9236break, 527, 31), 31);
    }

    public final String toString() {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("alg", this.f9236break);
        jSONObject.put("typ", this.f9237catch);
        jSONObject.put("kid", this.f9238class);
        String jSONObject2 = jSONObject.toString();
        C0173Do.m399new(jSONObject2, "headerJsonObject.toString()");
        return jSONObject2;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        C0173Do.m401try(parcel, "dest");
        parcel.writeString(this.f9236break);
        parcel.writeString(this.f9237catch);
        parcel.writeString(this.f9238class);
    }

    public AuthenticationTokenHeader(Parcel parcel) {
        C0173Do.m401try(parcel, "parcel");
        this.f9236break = Validate.notNullOrEmpty(parcel.readString(), "alg");
        this.f9237catch = Validate.notNullOrEmpty(parcel.readString(), "typ");
        this.f9238class = Validate.notNullOrEmpty(parcel.readString(), "kid");
    }
}
