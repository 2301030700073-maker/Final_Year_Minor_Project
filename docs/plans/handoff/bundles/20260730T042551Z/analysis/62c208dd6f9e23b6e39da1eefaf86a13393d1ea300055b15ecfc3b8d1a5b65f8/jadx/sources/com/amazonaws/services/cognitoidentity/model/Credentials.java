package com.amazonaws.services.cognitoidentity.model;

import defpackage.Cif;
import java.io.Serializable;
import java.util.Date;

/* loaded from: classes.dex */
public class Credentials implements Serializable {

    /* renamed from: break, reason: not valid java name */
    public String f8982break;

    /* renamed from: catch, reason: not valid java name */
    public String f8983catch;

    /* renamed from: class, reason: not valid java name */
    public String f8984class;

    /* renamed from: do, reason: not valid java name */
    public Date f8985do;

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof Credentials)) {
            return false;
        }
        Credentials credentials = (Credentials) obj;
        String str = credentials.f8982break;
        boolean z = str == null;
        String str2 = this.f8982break;
        if (z ^ (str2 == null)) {
            return false;
        }
        if (str != null && !str.equals(str2)) {
            return false;
        }
        String str3 = credentials.f8983catch;
        boolean z2 = str3 == null;
        String str4 = this.f8983catch;
        if (z2 ^ (str4 == null)) {
            return false;
        }
        if (str3 != null && !str3.equals(str4)) {
            return false;
        }
        String str5 = credentials.f8984class;
        boolean z3 = str5 == null;
        String str6 = this.f8984class;
        if (z3 ^ (str6 == null)) {
            return false;
        }
        if (str5 != null && !str5.equals(str6)) {
            return false;
        }
        Date date = credentials.f8985do;
        boolean z4 = date == null;
        Date date2 = this.f8985do;
        if (z4 ^ (date2 == null)) {
            return false;
        }
        return date == null || date.equals(date2);
    }

    public final int hashCode() {
        String str = this.f8982break;
        int hashCode = ((str == null ? 0 : str.hashCode()) + 31) * 31;
        String str2 = this.f8983catch;
        int hashCode2 = (hashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.f8984class;
        int hashCode3 = (hashCode2 + (str3 == null ? 0 : str3.hashCode())) * 31;
        Date date = this.f8985do;
        return hashCode3 + (date != null ? date.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("{");
        if (this.f8982break != null) {
            Cif.m6909catch(new StringBuilder("AccessKeyId: "), this.f8982break, ",", sb);
        }
        if (this.f8983catch != null) {
            Cif.m6909catch(new StringBuilder("SecretKey: "), this.f8983catch, ",", sb);
        }
        if (this.f8984class != null) {
            Cif.m6909catch(new StringBuilder("SessionToken: "), this.f8984class, ",", sb);
        }
        if (this.f8985do != null) {
            sb.append("Expiration: " + this.f8985do);
        }
        sb.append("}");
        return sb.toString();
    }
}
