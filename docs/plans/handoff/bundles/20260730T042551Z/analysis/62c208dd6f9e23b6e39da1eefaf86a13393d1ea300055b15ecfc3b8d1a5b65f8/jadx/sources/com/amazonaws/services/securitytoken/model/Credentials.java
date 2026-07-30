package com.amazonaws.services.securitytoken.model;

import defpackage.Cif;
import java.io.Serializable;
import java.util.Date;

/* loaded from: classes.dex */
public class Credentials implements Serializable {

    /* renamed from: break, reason: not valid java name */
    public String f9021break;

    /* renamed from: catch, reason: not valid java name */
    public String f9022catch;

    /* renamed from: class, reason: not valid java name */
    public String f9023class;

    /* renamed from: do, reason: not valid java name */
    public Date f9024do;

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof Credentials)) {
            return false;
        }
        Credentials credentials = (Credentials) obj;
        String str = credentials.f9021break;
        boolean z = str == null;
        String str2 = this.f9021break;
        if (z ^ (str2 == null)) {
            return false;
        }
        if (str != null && !str.equals(str2)) {
            return false;
        }
        String str3 = credentials.f9022catch;
        boolean z2 = str3 == null;
        String str4 = this.f9022catch;
        if (z2 ^ (str4 == null)) {
            return false;
        }
        if (str3 != null && !str3.equals(str4)) {
            return false;
        }
        String str5 = credentials.f9023class;
        boolean z3 = str5 == null;
        String str6 = this.f9023class;
        if (z3 ^ (str6 == null)) {
            return false;
        }
        if (str5 != null && !str5.equals(str6)) {
            return false;
        }
        Date date = credentials.f9024do;
        boolean z4 = date == null;
        Date date2 = this.f9024do;
        if (z4 ^ (date2 == null)) {
            return false;
        }
        return date == null || date.equals(date2);
    }

    public final int hashCode() {
        String str = this.f9021break;
        int hashCode = ((str == null ? 0 : str.hashCode()) + 31) * 31;
        String str2 = this.f9022catch;
        int hashCode2 = (hashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.f9023class;
        int hashCode3 = (hashCode2 + (str3 == null ? 0 : str3.hashCode())) * 31;
        Date date = this.f9024do;
        return hashCode3 + (date != null ? date.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("{");
        if (this.f9021break != null) {
            Cif.m6909catch(new StringBuilder("AccessKeyId: "), this.f9021break, ",", sb);
        }
        if (this.f9022catch != null) {
            Cif.m6909catch(new StringBuilder("SecretAccessKey: "), this.f9022catch, ",", sb);
        }
        if (this.f9023class != null) {
            Cif.m6909catch(new StringBuilder("SessionToken: "), this.f9023class, ",", sb);
        }
        if (this.f9024do != null) {
            sb.append("Expiration: " + this.f9024do);
        }
        sb.append("}");
        return sb.toString();
    }
}
