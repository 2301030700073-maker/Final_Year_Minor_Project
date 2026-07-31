package org.apache.james.mime4j.dom.address;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Locale;
import okhttp3.Handshake;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class Mailbox extends Address {
    public static final DomainList EMPTY_ROUTE_LIST = new DomainList(Collections.EMPTY_LIST);
    public final String domain;
    public final String localPart;
    public final String name;
    public final DomainList route;

    public Mailbox(String str, DomainList domainList, String str2, String str3) {
        this.name = (str == null || str.length() == 0) ? null : str;
        this.route = domainList == null ? EMPTY_ROUTE_LIST : domainList;
        this.localPart = str2;
        this.domain = (str3 == null || str3.length() == 0) ? null : str3;
    }

    @Override // org.apache.james.mime4j.dom.address.Address
    public final void doAddMailboxesTo(ArrayList arrayList) {
        arrayList.add(this);
    }

    public final boolean equals(Object obj) {
        if (obj != this) {
            if (obj instanceof Mailbox) {
                Mailbox mailbox = (Mailbox) obj;
                if (this.localPart.equals(mailbox.localPart)) {
                    String str = mailbox.domain;
                    String str2 = this.domain;
                    if (str2 == null ? str == null : str2.equalsIgnoreCase(str)) {
                    }
                }
            }
            return false;
        }
        return true;
    }

    public final int hashCode() {
        int hashCode = Handshake.Companion.hashCode(17, this.localPart);
        String str = this.domain;
        return Handshake.Companion.hashCode(hashCode, str != null ? str.toLowerCase(Locale.US) : null);
    }

    public final String toString() {
        String str = this.domain;
        String str2 = this.localPart;
        if (str == null) {
            return str2;
        }
        return str2 + '@' + str;
    }
}
