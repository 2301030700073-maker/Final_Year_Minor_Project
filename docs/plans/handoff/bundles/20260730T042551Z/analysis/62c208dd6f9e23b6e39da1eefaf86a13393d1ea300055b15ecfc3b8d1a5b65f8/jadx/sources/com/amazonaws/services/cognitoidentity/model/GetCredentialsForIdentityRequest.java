package com.amazonaws.services.cognitoidentity.model;

import com.amazonaws.AmazonWebServiceRequest;
import defpackage.Cif;
import java.io.Serializable;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes.dex */
public class GetCredentialsForIdentityRequest extends AmazonWebServiceRequest implements Serializable {

    /* renamed from: break, reason: not valid java name */
    public String f8986break;

    /* renamed from: do, reason: not valid java name */
    public Map<String, String> f8987do;

    /* renamed from: do, reason: not valid java name */
    public final Map<String, String> m5139do() {
        if (this.f8987do == null) {
            this.f8987do = new HashMap();
        }
        return this.f8987do;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof GetCredentialsForIdentityRequest)) {
            return false;
        }
        GetCredentialsForIdentityRequest getCredentialsForIdentityRequest = (GetCredentialsForIdentityRequest) obj;
        String str = getCredentialsForIdentityRequest.f8986break;
        boolean z = str == null;
        String str2 = this.f8986break;
        if (z ^ (str2 == null)) {
            return false;
        }
        if (str != null && !str.equals(str2)) {
            return false;
        }
        if ((getCredentialsForIdentityRequest.m5139do() == null) ^ (m5139do() == null)) {
            return false;
        }
        return getCredentialsForIdentityRequest.m5139do() == null || getCredentialsForIdentityRequest.m5139do().equals(m5139do());
    }

    public final int hashCode() {
        String str = this.f8986break;
        return (((str == null ? 0 : str.hashCode()) + 31) * 31) + (m5139do() != null ? m5139do().hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("{");
        if (this.f8986break != null) {
            Cif.m6909catch(new StringBuilder("IdentityId: "), this.f8986break, ",", sb);
        }
        if (m5139do() != null) {
            sb.append("Logins: " + m5139do());
        }
        sb.append("}");
        return sb.toString();
    }
}
