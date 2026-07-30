package com.amazonaws.services.securitytoken.model;

import defpackage.Cif;
import java.io.Serializable;

/* loaded from: classes.dex */
public class AssumedRoleUser implements Serializable {

    /* renamed from: break, reason: not valid java name */
    public String f9019break;

    /* renamed from: catch, reason: not valid java name */
    public String f9020catch;

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof AssumedRoleUser)) {
            return false;
        }
        AssumedRoleUser assumedRoleUser = (AssumedRoleUser) obj;
        String str = assumedRoleUser.f9019break;
        boolean z = str == null;
        String str2 = this.f9019break;
        if (z ^ (str2 == null)) {
            return false;
        }
        if (str != null && !str.equals(str2)) {
            return false;
        }
        String str3 = assumedRoleUser.f9020catch;
        boolean z2 = str3 == null;
        String str4 = this.f9020catch;
        if (z2 ^ (str4 == null)) {
            return false;
        }
        return str3 == null || str3.equals(str4);
    }

    public final int hashCode() {
        String str = this.f9019break;
        int hashCode = ((str == null ? 0 : str.hashCode()) + 31) * 31;
        String str2 = this.f9020catch;
        return hashCode + (str2 != null ? str2.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("{");
        if (this.f9019break != null) {
            Cif.m6909catch(new StringBuilder("AssumedRoleId: "), this.f9019break, ",", sb);
        }
        if (this.f9020catch != null) {
            sb.append("Arn: " + this.f9020catch);
        }
        sb.append("}");
        return sb.toString();
    }
}
