package com.fsck.k9.backend.imap;

import com.fsck.k9.mail.store.imap.ImapMessage;
import com.fsck.k9.mail.store.imap.OpenMode;
import com.fsck.k9.mail.store.imap.RealImapFolder;
import com.fsck.k9.mail.store.imap.RealImapStore;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import kotlin.collections.CollectionsKt__IteratorsJVMKt;
import net.thunderbird.core.logging.legacy.Log;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class CommandDelete {
    public final RealImapStore imapStore;

    public /* synthetic */ CommandDelete(RealImapStore realImapStore) {
        this.imapStore = realImapStore;
    }

    public Map moveOrCopyMessages(String str, String str2, List list, boolean z) {
        RealImapFolder realImapFolder;
        RealImapStore realImapStore = this.imapStore;
        RealImapFolder realImapFolder2 = null;
        try {
            RealImapFolder folder = realImapStore.getFolder(str);
            try {
                if (list.isEmpty()) {
                    Log.i("moveOrCopyMessages: no remote messages to move, skipping", new Object[0]);
                    folder.close();
                    return null;
                }
                folder.open(OpenMode.READ_WRITE);
                ArrayList arrayList = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(list, 10));
                Iterator it = list.iterator();
                while (it.hasNext()) {
                    String str3 = (String) it.next();
                    str3.getClass();
                    arrayList.add(new ImapMessage(str3));
                }
                Log.d("moveOrCopyMessages: source folder = %s, %d messages, destination folder = %s, isCopy = %s", str, Integer.valueOf(arrayList.size()), str2, Boolean.valueOf(z));
                RealImapFolder folder2 = realImapStore.getFolder(str2);
                Map copyMessages = z ? folder.copyMessages(arrayList, folder2) : folder.moveMessages(arrayList, folder2);
                folder.close();
                folder2.close();
                return copyMessages;
            } catch (Throwable th) {
                th = th;
                realImapFolder = null;
                realImapFolder2 = folder;
                if (realImapFolder2 != null) {
                    realImapFolder2.close();
                }
                if (realImapFolder != null) {
                    realImapFolder.close();
                }
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
            realImapFolder = null;
        }
    }
}
