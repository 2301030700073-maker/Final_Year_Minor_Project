package com.fsck.k9.mail.store.imap;

import androidx.compose.material.ripple.StateLayer;
import j$.util.DesugarCollections;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class ListResponse {
    public final List attributes;
    public final String hierarchyDelimiter;
    public final String name;

    public ListResponse(ArrayList arrayList, String str, String str2) {
        this.attributes = DesugarCollections.unmodifiableList(arrayList);
        this.hierarchyDelimiter = str;
        this.name = str2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static List parse(String str, ArrayList arrayList) {
        String str2;
        ArrayList arrayList2 = new ArrayList();
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            ImapResponse imapResponse = (ImapResponse) it.next();
            ListResponse listResponse = null;
            if (imapResponse.size() >= 4 && StateLayer.equalsIgnoreCase(imapResponse.get(0), str)) {
                ImapList imapList = (ImapList) imapResponse.get(1);
                ArrayList arrayList3 = new ArrayList(imapList.size());
                Iterator<E> it2 = imapList.iterator();
                while (true) {
                    if (!it2.hasNext()) {
                        break;
                    }
                    Object next = it2.next();
                    if (!(next instanceof String)) {
                        arrayList3 = null;
                        break;
                    }
                    arrayList3.add((String) next);
                }
                if (arrayList3 != null && ((str2 = (String) imapResponse.get(2)) == null || str2.length() == 1)) {
                    listResponse = new ListResponse(arrayList3, str2, (String) imapResponse.get(3));
                }
            }
            if (listResponse != null) {
                arrayList2.add(listResponse);
            }
        }
        return DesugarCollections.unmodifiableList(arrayList2);
    }

    public final boolean hasAttribute(String str) {
        Iterator it = this.attributes.iterator();
        while (it.hasNext()) {
            if (((String) it.next()).equalsIgnoreCase(str)) {
                return true;
            }
        }
        return false;
    }
}
