package com.amazonaws.services.mobileanalytics.model;

import defpackage.Cif;
import java.io.Serializable;

/* loaded from: classes.dex */
public class Session implements Serializable {

    /* renamed from: break, reason: not valid java name */
    public String f9005break;

    /* renamed from: catch, reason: not valid java name */
    public String f9006catch;

    /* renamed from: class, reason: not valid java name */
    public String f9007class;

    /* renamed from: do, reason: not valid java name */
    public Long f9008do;

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof Session)) {
            return false;
        }
        Session session = (Session) obj;
        String str = session.f9005break;
        boolean z = str == null;
        String str2 = this.f9005break;
        if (z ^ (str2 == null)) {
            return false;
        }
        if (str != null && !str.equals(str2)) {
            return false;
        }
        Long l = session.f9008do;
        boolean z2 = l == null;
        Long l2 = this.f9008do;
        if (z2 ^ (l2 == null)) {
            return false;
        }
        if (l != null && !l.equals(l2)) {
            return false;
        }
        String str3 = session.f9006catch;
        boolean z3 = str3 == null;
        String str4 = this.f9006catch;
        if (z3 ^ (str4 == null)) {
            return false;
        }
        if (str3 != null && !str3.equals(str4)) {
            return false;
        }
        String str5 = session.f9007class;
        boolean z4 = str5 == null;
        String str6 = this.f9007class;
        if (z4 ^ (str6 == null)) {
            return false;
        }
        return str5 == null || str5.equals(str6);
    }

    public final int hashCode() {
        String str = this.f9005break;
        int hashCode = ((str == null ? 0 : str.hashCode()) + 31) * 31;
        Long l = this.f9008do;
        int hashCode2 = (hashCode + (l == null ? 0 : l.hashCode())) * 31;
        String str2 = this.f9006catch;
        int hashCode3 = (hashCode2 + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.f9007class;
        return hashCode3 + (str3 != null ? str3.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("{");
        if (this.f9005break != null) {
            Cif.m6909catch(new StringBuilder("Id: "), this.f9005break, ",", sb);
        }
        if (this.f9008do != null) {
            sb.append("Duration: " + this.f9008do + ",");
        }
        if (this.f9006catch != null) {
            Cif.m6909catch(new StringBuilder("StartTimestamp: "), this.f9006catch, ",", sb);
        }
        if (this.f9007class != null) {
            sb.append("StopTimestamp: " + this.f9007class);
        }
        sb.append("}");
        return sb.toString();
    }
}
