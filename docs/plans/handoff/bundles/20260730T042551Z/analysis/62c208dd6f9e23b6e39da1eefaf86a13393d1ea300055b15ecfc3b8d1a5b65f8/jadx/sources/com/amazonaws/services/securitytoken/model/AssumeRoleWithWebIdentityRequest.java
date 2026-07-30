package com.amazonaws.services.securitytoken.model;

import com.amazonaws.AmazonWebServiceRequest;
import defpackage.Cif;
import java.io.Serializable;

/* loaded from: classes.dex */
public class AssumeRoleWithWebIdentityRequest extends AmazonWebServiceRequest implements Serializable {

    /* renamed from: break, reason: not valid java name */
    public String f9009break;

    /* renamed from: catch, reason: not valid java name */
    public String f9010catch;

    /* renamed from: class, reason: not valid java name */
    public String f9011class;

    /* renamed from: do, reason: not valid java name */
    public Integer f9012do;

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof AssumeRoleWithWebIdentityRequest)) {
            return false;
        }
        AssumeRoleWithWebIdentityRequest assumeRoleWithWebIdentityRequest = (AssumeRoleWithWebIdentityRequest) obj;
        String str = assumeRoleWithWebIdentityRequest.f9009break;
        boolean z = str == null;
        String str2 = this.f9009break;
        if (z ^ (str2 == null)) {
            return false;
        }
        if (str != null && !str.equals(str2)) {
            return false;
        }
        String str3 = assumeRoleWithWebIdentityRequest.f9010catch;
        boolean z2 = str3 == null;
        String str4 = this.f9010catch;
        if (z2 ^ (str4 == null)) {
            return false;
        }
        if (str3 != null && !str3.equals(str4)) {
            return false;
        }
        String str5 = assumeRoleWithWebIdentityRequest.f9011class;
        boolean z3 = str5 == null;
        String str6 = this.f9011class;
        if (z3 ^ (str6 == null)) {
            return false;
        }
        if (str5 != null && !str5.equals(str6)) {
            return false;
        }
        Integer num = assumeRoleWithWebIdentityRequest.f9012do;
        boolean z4 = num == null;
        Integer num2 = this.f9012do;
        if (z4 ^ (num2 == null)) {
            return false;
        }
        return num == null || num.equals(num2);
    }

    public final int hashCode() {
        String str = this.f9009break;
        int hashCode = ((str == null ? 0 : str.hashCode()) + 31) * 31;
        String str2 = this.f9010catch;
        int hashCode2 = (hashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.f9011class;
        int hashCode3 = (((((hashCode2 + (str3 == null ? 0 : str3.hashCode())) * 31) + 0) * 31) + 0) * 31;
        Integer num = this.f9012do;
        return hashCode3 + (num != null ? num.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("{");
        if (this.f9009break != null) {
            Cif.m6909catch(new StringBuilder("RoleArn: "), this.f9009break, ",", sb);
        }
        if (this.f9010catch != null) {
            Cif.m6909catch(new StringBuilder("RoleSessionName: "), this.f9010catch, ",", sb);
        }
        if (this.f9011class != null) {
            Cif.m6909catch(new StringBuilder("WebIdentityToken: "), this.f9011class, ",", sb);
        }
        if (this.f9012do != null) {
            sb.append("DurationSeconds: " + this.f9012do);
        }
        sb.append("}");
        return sb.toString();
    }
}
