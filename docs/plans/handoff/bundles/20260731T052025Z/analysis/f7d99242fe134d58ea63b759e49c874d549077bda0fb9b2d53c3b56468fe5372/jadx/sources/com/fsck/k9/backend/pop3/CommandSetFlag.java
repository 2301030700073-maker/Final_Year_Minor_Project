package com.fsck.k9.backend.pop3;

import com.fsck.k9.mail.store.pop3.Pop3Folder;
import com.fsck.k9.mail.store.pop3.Pop3Message;
import com.fsck.k9.mail.store.pop3.Pop3Store;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.collections.CollectionsKt__IteratorsJVMKt;
import net.thunderbird.core.common.mail.Flag;
import org.jsoup.helper.Validate;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class CommandSetFlag {
    public final Pop3Store pop3Store;

    public /* synthetic */ CommandSetFlag(Pop3Store pop3Store) {
        this.pop3Store = pop3Store;
    }

    public void setFlag(String str, List list, Flag flag, boolean z) {
        str.getClass();
        list.getClass();
        flag.getClass();
        Pop3Folder folder = this.pop3Store.getFolder(str);
        if (flag == Flag.DELETED) {
            try {
                folder.open();
                ArrayList arrayList = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(list, 10));
                Iterator it = list.iterator();
                while (it.hasNext()) {
                    String str2 = (String) it.next();
                    Pop3Message pop3Message = (Pop3Message) folder.uidToMsgMap.get(str2);
                    if (pop3Message == null) {
                        pop3Message = new Pop3Message(str2);
                    }
                    arrayList.add(pop3Message);
                }
                if (arrayList.isEmpty()) {
                    folder.close();
                } else {
                    folder.setFlags(arrayList, Validate.setOf(flag), z);
                    folder.close();
                }
            } catch (Throwable th) {
                folder.close();
                throw th;
            }
        }
    }
}
