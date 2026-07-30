package com.amazonaws.services.securitytoken.model;

import defpackage.Cif;
import java.io.Serializable;

/* loaded from: classes.dex */
public class AssumeRoleWithWebIdentityResult implements Serializable {

    /* renamed from: break, reason: not valid java name */
    public String f9013break;

    /* renamed from: catch, reason: not valid java name */
    public String f9014catch;

    /* renamed from: class, reason: not valid java name */
    public String f9015class;

    /* renamed from: do, reason: not valid java name */
    public AssumedRoleUser f9016do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public Credentials f9017do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public Integer f9018do;

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof AssumeRoleWithWebIdentityResult)) {
            return false;
        }
        AssumeRoleWithWebIdentityResult assumeRoleWithWebIdentityResult = (AssumeRoleWithWebIdentityResult) obj;
        Credentials credentials = assumeRoleWithWebIdentityResult.f9017do;
        boolean z = credentials == null;
        Credentials credentials2 = this.f9017do;
        if (z ^ (credentials2 == null)) {
            return false;
        }
        if (credentials != null && !credentials.equals(credentials2)) {
            return false;
        }
        String str = assumeRoleWithWebIdentityResult.f9013break;
        boolean z2 = str == null;
        String str2 = this.f9013break;
        if (z2 ^ (str2 == null)) {
            return false;
        }
        if (str != null && !str.equals(str2)) {
            return false;
        }
        AssumedRoleUser assumedRoleUser = assumeRoleWithWebIdentityResult.f9016do;
        boolean z3 = assumedRoleUser == null;
        AssumedRoleUser assumedRoleUser2 = this.f9016do;
        if (z3 ^ (assumedRoleUser2 == null)) {
            return false;
        }
        if (assumedRoleUser != null && !assumedRoleUser.equals(assumedRoleUser2)) {
            return false;
        }
        Integer num = assumeRoleWithWebIdentityResult.f9018do;
        boolean z4 = num == null;
        Integer num2 = this.f9018do;
        if (z4 ^ (num2 == null)) {
            return false;
        }
        if (num != null && !num.equals(num2)) {
            return false;
        }
        String str3 = assumeRoleWithWebIdentityResult.f9014catch;
        boolean z5 = str3 == null;
        String str4 = this.f9014catch;
        if (z5 ^ (str4 == null)) {
            return false;
        }
        if (str3 != null && !str3.equals(str4)) {
            return false;
        }
        String str5 = assumeRoleWithWebIdentityResult.f9015class;
        boolean z6 = str5 == null;
        String str6 = this.f9015class;
        if (z6 ^ (str6 == null)) {
            return false;
        }
        return str5 == null || str5.equals(str6);
    }

    public final int hashCode() {
        Credentials credentials = this.f9017do;
        int hashCode = ((credentials == null ? 0 : credentials.hashCode()) + 31) * 31;
        String str = this.f9013break;
        int hashCode2 = (hashCode + (str == null ? 0 : str.hashCode())) * 31;
        AssumedRoleUser assumedRoleUser = this.f9016do;
        int hashCode3 = (hashCode2 + (assumedRoleUser == null ? 0 : assumedRoleUser.hashCode())) * 31;
        Integer num = this.f9018do;
        int hashCode4 = (hashCode3 + (num == null ? 0 : num.hashCode())) * 31;
        String str2 = this.f9014catch;
        int hashCode5 = (hashCode4 + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.f9015class;
        return hashCode5 + (str3 != null ? str3.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("{");
        if (this.f9017do != null) {
            sb.append("Credentials: " + this.f9017do + ",");
        }
        if (this.f9013break != null) {
            Cif.m6909catch(new StringBuilder("SubjectFromWebIdentityToken: "), this.f9013break, ",", sb);
        }
        if (this.f9016do != null) {
            sb.append("AssumedRoleUser: " + this.f9016do + ",");
        }
        if (this.f9018do != null) {
            sb.append("PackedPolicySize: " + this.f9018do + ",");
        }
        if (this.f9014catch != null) {
            Cif.m6909catch(new StringBuilder("Provider: "), this.f9014catch, ",", sb);
        }
        if (this.f9015class != null) {
            sb.append("Audience: " + this.f9015class);
        }
        sb.append("}");
        return sb.toString();
    }
}
