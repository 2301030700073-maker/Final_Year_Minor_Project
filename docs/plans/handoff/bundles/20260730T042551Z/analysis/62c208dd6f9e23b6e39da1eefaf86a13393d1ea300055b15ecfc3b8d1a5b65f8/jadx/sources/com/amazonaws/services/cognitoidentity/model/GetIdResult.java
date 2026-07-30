package com.amazonaws.services.cognitoidentity.model;

import java.io.Serializable;

/* loaded from: classes.dex */
public class GetIdResult implements Serializable {

    /* renamed from: break, reason: not valid java name */
    public String f8993break;

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof GetIdResult)) {
            return false;
        }
        String str = ((GetIdResult) obj).f8993break;
        boolean z = str == null;
        String str2 = this.f8993break;
        if (z ^ (str2 == null)) {
            return false;
        }
        return str == null || str.equals(str2);
    }

    public final int hashCode() {
        String str = this.f8993break;
        return 31 + (str == null ? 0 : str.hashCode());
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("{");
        if (this.f8993break != null) {
            sb.append("IdentityId: " + this.f8993break);
        }
        sb.append("}");
        return sb.toString();
    }
}
