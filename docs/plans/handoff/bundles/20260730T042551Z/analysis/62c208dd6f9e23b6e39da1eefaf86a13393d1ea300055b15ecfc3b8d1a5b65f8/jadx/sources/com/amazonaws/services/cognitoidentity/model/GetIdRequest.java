package com.amazonaws.services.cognitoidentity.model;

import com.amazonaws.AmazonWebServiceRequest;
import defpackage.Cif;
import java.io.Serializable;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes.dex */
public class GetIdRequest extends AmazonWebServiceRequest implements Serializable {

    /* renamed from: break, reason: not valid java name */
    public String f8990break;

    /* renamed from: catch, reason: not valid java name */
    public String f8991catch;

    /* renamed from: do, reason: not valid java name */
    public Map<String, String> f8992do;

    /* renamed from: do, reason: not valid java name */
    public final Map<String, String> m5140do() {
        if (this.f8992do == null) {
            this.f8992do = new HashMap();
        }
        return this.f8992do;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof GetIdRequest)) {
            return false;
        }
        GetIdRequest getIdRequest = (GetIdRequest) obj;
        String str = getIdRequest.f8990break;
        boolean z = str == null;
        String str2 = this.f8990break;
        if (z ^ (str2 == null)) {
            return false;
        }
        if (str != null && !str.equals(str2)) {
            return false;
        }
        String str3 = getIdRequest.f8991catch;
        boolean z2 = str3 == null;
        String str4 = this.f8991catch;
        if (z2 ^ (str4 == null)) {
            return false;
        }
        if (str3 != null && !str3.equals(str4)) {
            return false;
        }
        if ((getIdRequest.m5140do() == null) ^ (m5140do() == null)) {
            return false;
        }
        return getIdRequest.m5140do() == null || getIdRequest.m5140do().equals(m5140do());
    }

    public final int hashCode() {
        String str = this.f8990break;
        int hashCode = ((str == null ? 0 : str.hashCode()) + 31) * 31;
        String str2 = this.f8991catch;
        return ((hashCode + (str2 == null ? 0 : str2.hashCode())) * 31) + (m5140do() != null ? m5140do().hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("{");
        if (this.f8990break != null) {
            Cif.m6909catch(new StringBuilder("AccountId: "), this.f8990break, ",", sb);
        }
        if (this.f8991catch != null) {
            Cif.m6909catch(new StringBuilder("IdentityPoolId: "), this.f8991catch, ",", sb);
        }
        if (m5140do() != null) {
            sb.append("Logins: " + m5140do());
        }
        sb.append("}");
        return sb.toString();
    }
}
