package org.apache.james.mime4j.dom.address;

import java.io.Serializable;
import java.util.AbstractList;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class DomainList extends AbstractList implements Serializable {
    public final /* synthetic */ int $r8$classId = 1;
    public final List domains;

    public DomainList(List list, boolean z) {
        if (list != null) {
            this.domains = z ? list : new ArrayList(list);
        } else {
            this.domains = Collections.EMPTY_LIST;
        }
    }

    public DomainList flatten() {
        List list = this.domains;
        Iterator it = list.iterator();
        while (it.hasNext()) {
            if (!(((Address) it.next()) instanceof Mailbox)) {
                ArrayList arrayList = new ArrayList();
                Iterator it2 = list.iterator();
                while (it2.hasNext()) {
                    ((Address) it2.next()).doAddMailboxesTo(arrayList);
                }
                return new DomainList(arrayList, false);
            }
        }
        return new DomainList(list, true);
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object get(int i) {
        switch (this.$r8$classId) {
            case 0:
                return (String) this.domains.get(i);
            case 1:
                return (Address) this.domains.get(i);
            default:
                return (Mailbox) this.domains.get(i);
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        switch (this.$r8$classId) {
        }
        return this.domains.size();
    }

    @Override // java.util.AbstractCollection
    public String toString() {
        switch (this.$r8$classId) {
            case 0:
                StringBuilder sb = new StringBuilder();
                for (String str : this.domains) {
                    if (sb.length() > 0) {
                        sb.append(',');
                    }
                    sb.append("@");
                    sb.append(str);
                }
                return sb.toString();
            default:
                return super.toString();
        }
    }

    public DomainList(ArrayList arrayList) {
        this.domains = arrayList;
    }

    public DomainList(List list) {
        if (list != null) {
            this.domains = new ArrayList(list);
        } else {
            this.domains = Collections.EMPTY_LIST;
        }
    }
}
