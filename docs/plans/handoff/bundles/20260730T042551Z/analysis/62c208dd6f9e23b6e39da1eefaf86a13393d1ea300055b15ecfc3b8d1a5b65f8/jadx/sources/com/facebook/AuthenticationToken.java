package com.facebook;

import android.os.Parcel;
import android.os.Parcelable;
import com.facebook.internal.Validate;
import com.facebook.internal.security.OidcSecurityUtil;
import defpackage.C0173Do;
import defpackage.Cif;
import defpackage.EF;
import java.io.IOException;
import java.security.spec.InvalidKeySpecException;
import java.util.List;

/* loaded from: classes.dex */
public final class AuthenticationToken implements Parcelable {
    public static final Parcelable.Creator<AuthenticationToken> CREATOR = new Cdo();

    /* renamed from: break, reason: not valid java name */
    public final String f9211break;

    /* renamed from: catch, reason: not valid java name */
    public final String f9212catch;

    /* renamed from: class, reason: not valid java name */
    public final String f9213class;

    /* renamed from: do, reason: not valid java name */
    public final AuthenticationTokenClaims f9214do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final AuthenticationTokenHeader f9215do;

    /* renamed from: com.facebook.AuthenticationToken$do, reason: invalid class name */
    public static final class Cdo implements Parcelable.Creator<AuthenticationToken> {
        @Override // android.os.Parcelable.Creator
        public final AuthenticationToken createFromParcel(Parcel parcel) {
            C0173Do.m401try(parcel, "source");
            return new AuthenticationToken(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public final AuthenticationToken[] newArray(int i) {
            return new AuthenticationToken[i];
        }
    }

    public AuthenticationToken(String str, String str2) {
        C0173Do.m401try(str2, "expectedNonce");
        Validate.notEmpty(str, "token");
        Validate.notEmpty(str2, "expectedNonce");
        boolean z = false;
        List t = EF.t(str, new String[]{"."}, 0, 6);
        if (!(t.size() == 3)) {
            throw new IllegalArgumentException("Invalid IdToken string".toString());
        }
        String str3 = (String) t.get(0);
        String str4 = (String) t.get(1);
        String str5 = (String) t.get(2);
        this.f9211break = str;
        this.f9212catch = str2;
        AuthenticationTokenHeader authenticationTokenHeader = new AuthenticationTokenHeader(str3);
        this.f9215do = authenticationTokenHeader;
        this.f9214do = new AuthenticationTokenClaims(str4, str2);
        try {
            String rawKeyFromEndPoint = OidcSecurityUtil.getRawKeyFromEndPoint(authenticationTokenHeader.f9238class);
            if (rawKeyFromEndPoint != null) {
                z = OidcSecurityUtil.verify(OidcSecurityUtil.getPublicKeyFromString(rawKeyFromEndPoint), str3 + '.' + str4, str5);
            }
        } catch (IOException | InvalidKeySpecException unused) {
        }
        if (!z) {
            throw new IllegalArgumentException("Invalid Signature".toString());
        }
        this.f9213class = str5;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AuthenticationToken)) {
            return false;
        }
        AuthenticationToken authenticationToken = (AuthenticationToken) obj;
        return C0173Do.m394do(this.f9211break, authenticationToken.f9211break) && C0173Do.m394do(this.f9212catch, authenticationToken.f9212catch) && C0173Do.m394do(this.f9215do, authenticationToken.f9215do) && C0173Do.m394do(this.f9214do, authenticationToken.f9214do) && C0173Do.m394do(this.f9213class, authenticationToken.f9213class);
    }

    public final int hashCode() {
        return this.f9213class.hashCode() + ((this.f9214do.hashCode() + ((this.f9215do.hashCode() + Cif.m6915for(this.f9212catch, Cif.m6915for(this.f9211break, 527, 31), 31)) * 31)) * 31);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        C0173Do.m401try(parcel, "dest");
        parcel.writeString(this.f9211break);
        parcel.writeString(this.f9212catch);
        parcel.writeParcelable(this.f9215do, i);
        parcel.writeParcelable(this.f9214do, i);
        parcel.writeString(this.f9213class);
    }

    public AuthenticationToken(Parcel parcel) {
        C0173Do.m401try(parcel, "parcel");
        this.f9211break = Validate.notNullOrEmpty(parcel.readString(), "token");
        this.f9212catch = Validate.notNullOrEmpty(parcel.readString(), "expectedNonce");
        Parcelable readParcelable = parcel.readParcelable(AuthenticationTokenHeader.class.getClassLoader());
        if (readParcelable != null) {
            this.f9215do = (AuthenticationTokenHeader) readParcelable;
            Parcelable readParcelable2 = parcel.readParcelable(AuthenticationTokenClaims.class.getClassLoader());
            if (readParcelable2 != null) {
                this.f9214do = (AuthenticationTokenClaims) readParcelable2;
                this.f9213class = Validate.notNullOrEmpty(parcel.readString(), "signature");
                return;
            }
            throw new IllegalStateException("Required value was null.".toString());
        }
        throw new IllegalStateException("Required value was null.".toString());
    }
}
