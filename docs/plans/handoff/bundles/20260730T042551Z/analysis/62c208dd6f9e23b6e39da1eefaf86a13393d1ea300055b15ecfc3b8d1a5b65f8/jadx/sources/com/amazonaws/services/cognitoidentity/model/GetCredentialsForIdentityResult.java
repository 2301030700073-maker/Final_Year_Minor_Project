package com.amazonaws.services.cognitoidentity.model;

import defpackage.Cif;
import java.io.Serializable;

/* loaded from: classes.dex */
public class GetCredentialsForIdentityResult implements Serializable {

    /* renamed from: break, reason: not valid java name */
    public String f8988break;

    /* renamed from: do, reason: not valid java name */
    public Credentials f8989do;

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof GetCredentialsForIdentityResult)) {
            return false;
        }
        GetCredentialsForIdentityResult getCredentialsForIdentityResult = (GetCredentialsForIdentityResult) obj;
        String str = getCredentialsForIdentityResult.f8988break;
        boolean z = str == null;
        String str2 = this.f8988break;
        if (z ^ (str2 == null)) {
            return false;
        }
        if (str != null && !str.equals(str2)) {
            return false;
        }
        Credentials credentials = getCredentialsForIdentityResult.f8989do;
        boolean z2 = credentials == null;
        Credentials credentials2 = this.f8989do;
        if (z2 ^ (credentials2 == null)) {
            return false;
        }
        return credentials == null || credentials.equals(credentials2);
    }

    public final int hashCode() {
        String str = this.f8988break;
        int hashCode = ((str == null ? 0 : str.hashCode()) + 31) * 31;
        Credentials credentials = this.f8989do;
        return hashCode + (credentials != null ? credentials.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("{");
        if (this.f8988break != null) {
            Cif.m6909catch(new StringBuilder("IdentityId: "), this.f8988break, ",", sb);
        }
        if (this.f8989do != null) {
            sb.append("Credentials: " + this.f8989do);
        }
        sb.append("}");
        return sb.toString();
    }
}
