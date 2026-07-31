package org.apache.james.mime4j.dom.address;

import java.util.ArrayList;
import java.util.Iterator;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class Group extends Address {
    public final DomainList mailboxList;
    public final String name;

    public Group(String str, DomainList domainList) {
        this.name = str;
        this.mailboxList = domainList;
    }

    @Override // org.apache.james.mime4j.dom.address.Address
    public final void doAddMailboxesTo(ArrayList arrayList) {
        arrayList.addAll(this.mailboxList);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.name);
        sb.append(':');
        Iterator<E> it = this.mailboxList.iterator();
        boolean z = true;
        while (it.hasNext()) {
            Mailbox mailbox = (Mailbox) it.next();
            if (z) {
                z = false;
            } else {
                sb.append(',');
            }
            sb.append(' ');
            sb.append(mailbox);
        }
        sb.append(";");
        return sb.toString();
    }
}
