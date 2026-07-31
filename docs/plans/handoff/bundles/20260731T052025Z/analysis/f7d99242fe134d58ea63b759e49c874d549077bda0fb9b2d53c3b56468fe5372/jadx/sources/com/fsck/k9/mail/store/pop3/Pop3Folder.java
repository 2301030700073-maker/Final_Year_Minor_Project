package com.fsck.k9.mail.store.pop3;

import androidx.camera.camera2.pipe.CameraDevices$CC;
import androidx.compose.ui.Modifier;
import com.fsck.k9.backend.pop3.CommandSetFlag;
import com.fsck.k9.helper.DefaultTrustedSocketFactory;
import com.fsck.k9.mail.FetchProfile;
import com.fsck.k9.mail.K9MailLib;
import com.fsck.k9.mail.MessageRetrievalListener;
import java.io.BufferedInputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Set;
import net.thunderbird.core.common.exception.MessagingException;
import net.thunderbird.core.common.mail.Flag;
import net.thunderbird.core.logging.legacy.Log;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class Pop3Folder {
    public Pop3Connection connection;
    public int messageCount;
    public final String name;
    public final Pop3Store pop3Store;
    public final HashMap uidToMsgMap = new HashMap();
    public final HashMap msgNumToMsgMap = new HashMap();
    public final HashMap uidToMsgNumMap = new HashMap();

    public Pop3Folder(Pop3Store pop3Store, String str) {
        this.pop3Store = pop3Store;
        this.name = str;
    }

    public final void close() {
        try {
            Pop3Connection pop3Connection = this.connection;
            if (pop3Connection != null && pop3Connection.isOpen()) {
                this.connection.executeSimpleCommand("QUIT", false);
            }
        } catch (Exception unused) {
        }
        Pop3Connection pop3Connection2 = this.connection;
        if (pop3Connection2 != null) {
            pop3Connection2.close();
            this.connection = null;
        }
    }

    public final boolean equals(Object obj) {
        return obj instanceof Pop3Folder ? ((Pop3Folder) obj).name.equals(this.name) : this == obj;
    }

    public final void fetch(List list, FetchProfile fetchProfile, MessageRetrievalListener messageRetrievalListener, int i) {
        FetchProfile.Item item = FetchProfile.Item.ENVELOPE;
        if (list.isEmpty()) {
            return;
        }
        ArrayList arrayList = new ArrayList();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(((Pop3Message) it.next()).mUid);
        }
        try {
            indexUids(arrayList);
            try {
                if (fetchProfile.contains(item)) {
                    fetchEnvelope(list, fetchProfile.size() == 1 ? messageRetrievalListener : null);
                }
                Iterator it2 = list.iterator();
                while (it2.hasNext()) {
                    Pop3Message pop3Message = (Pop3Message) it2.next();
                    try {
                        if (fetchProfile.contains(FetchProfile.Item.BODY)) {
                            fetchBody(-1, pop3Message);
                        } else if (fetchProfile.contains(FetchProfile.Item.BODY_SANE)) {
                            if (i > 0) {
                                fetchBody(i / 76, pop3Message);
                            } else {
                                fetchBody(-1, pop3Message);
                            }
                        } else if (fetchProfile.contains(FetchProfile.Item.STRUCTURE)) {
                            pop3Message.mBody = null;
                        }
                        if (messageRetrievalListener != null && (!fetchProfile.contains(item) || fetchProfile.size() != 1)) {
                            messageRetrievalListener.messageFinished(pop3Message);
                        }
                    } catch (IOException e) {
                        handleIOException(e);
                        throw null;
                    }
                }
            } catch (IOException e2) {
                handleIOException(e2);
                throw null;
            }
        } catch (IOException e3) {
            handleIOException(e3);
            throw null;
        }
    }

    public final void fetchBody(int i, Pop3Message pop3Message) {
        HashMap hashMap = this.uidToMsgNumMap;
        String str = null;
        if (i != -1) {
            Pop3Connection pop3Connection = this.connection;
            if (!pop3Connection.topNotAdvertised || pop3Connection.capabilities.top) {
                try {
                    if (K9MailLib.debugStatus.enabled() && !this.connection.capabilities.top) {
                        Log.d("This server doesn't support the CAPA command. Checking to see if the TOP command is supported nevertheless.", new Object[0]);
                    }
                    str = this.connection.executeSimpleCommand(String.format(Locale.US, "TOP %d %d", hashMap.get(pop3Message.mUid), Integer.valueOf(i)), false);
                    this.connection.capabilities.top = true;
                } catch (Pop3ErrorResponse e) {
                    if (this.connection.capabilities.top) {
                        throw e;
                    }
                    if (K9MailLib.debugStatus.enabled()) {
                        Log.d("The server really doesn't support the TOP command. Using RETR instead.", new Object[0]);
                    }
                    this.connection.topNotAdvertised = false;
                }
            }
        }
        if (str == null) {
            this.connection.executeSimpleCommand(String.format(Locale.US, "RETR %d", hashMap.get(pop3Message.mUid)), false);
        }
        try {
            BufferedInputStream bufferedInputStream = this.connection.in;
            Pop3ResponseInputStream pop3ResponseInputStream = new Pop3ResponseInputStream();
            pop3ResponseInputStream.mStartOfLine = true;
            pop3ResponseInputStream.mIn = bufferedInputStream;
            pop3Message.parse(pop3ResponseInputStream);
            if (i != -1 && this.connection.capabilities.top) {
                return;
            }
            pop3Message.setFlag(Flag.X_DOWNLOADED_FULL, true);
        } catch (MessagingException e2) {
            if (i == -1) {
                throw e2;
            }
        }
    }

    public final void fetchEnvelope(List list, MessageRetrievalListener messageRetrievalListener) {
        Iterator it = list.iterator();
        int i = 0;
        while (it.hasNext()) {
            if (((Pop3Message) it.next()).mSize == -1) {
                i++;
            }
        }
        if (i == 0) {
            return;
        }
        if (i < 50 && this.messageCount > 5000) {
            Iterator it2 = list.iterator();
            while (it2.hasNext()) {
                Pop3Message pop3Message = (Pop3Message) it2.next();
                pop3Message.mSize = Integer.parseInt(this.connection.executeSimpleCommand(String.format(Locale.US, "LIST %d", this.uidToMsgNumMap.get(pop3Message.mUid)), false).split(" ")[2]);
                if (messageRetrievalListener != null) {
                    messageRetrievalListener.messageFinished(pop3Message);
                }
            }
            return;
        }
        HashSet hashSet = new HashSet();
        Iterator it3 = list.iterator();
        while (it3.hasNext()) {
            hashSet.add(((Pop3Message) it3.next()).mUid);
        }
        list.size();
        this.connection.executeSimpleCommand("LIST", false);
        while (true) {
            String readLine = this.connection.readLine();
            if (readLine.equals(".")) {
                return;
            }
            String[] split = readLine.split(" ");
            int parseInt = Integer.parseInt(split[0]);
            int parseInt2 = Integer.parseInt(split[1]);
            Pop3Message pop3Message2 = (Pop3Message) this.msgNumToMsgMap.get(Integer.valueOf(parseInt));
            if (pop3Message2 != null && hashSet.contains(pop3Message2.mUid)) {
                pop3Message2.mSize = parseInt2;
                if (messageRetrievalListener != null) {
                    messageRetrievalListener.messageFinished(pop3Message2);
                }
            }
        }
    }

    public final ArrayList getMessages(int i, int i2) {
        if (i < 1 || i2 < 1 || i2 < i) {
            Locale locale = Locale.US;
            throw new MessagingException(Modifier.CC.m(i, i2, "Invalid message set ", " "));
        }
        try {
            indexMsgNums(i, i2);
            ArrayList arrayList = new ArrayList();
            while (i <= i2) {
                Pop3Message pop3Message = (Pop3Message) this.msgNumToMsgMap.get(Integer.valueOf(i));
                if (pop3Message != null) {
                    arrayList.add(pop3Message);
                }
                i++;
            }
            return arrayList;
        } catch (IOException e) {
            handleIOException(e);
            throw null;
        }
    }

    public final void handleIOException(IOException iOException) {
        Pop3Connection pop3Connection = this.connection;
        if (pop3Connection != null) {
            pop3Connection.close();
        }
        throw new MessagingException("I/O error", false, iOException);
    }

    public final int hashCode() {
        return this.name.hashCode();
    }

    public final void indexMessage(int i, Pop3Message pop3Message) {
        if (K9MailLib.debugStatus.enabled()) {
            Log.d("Adding index for UID %s to msgNum %d", pop3Message.mUid, Integer.valueOf(i));
        }
        this.msgNumToMsgMap.put(Integer.valueOf(i), pop3Message);
        this.uidToMsgMap.put(pop3Message.mUid, pop3Message);
        this.uidToMsgNumMap.put(pop3Message.mUid, Integer.valueOf(i));
    }

    public final void indexMsgNums(int i, int i2) {
        HashMap hashMap;
        int i3 = i;
        int i4 = 0;
        while (true) {
            hashMap = this.msgNumToMsgMap;
            if (i3 > i2) {
                break;
            }
            if (hashMap.get(Integer.valueOf(i3)) == null) {
                i4++;
            }
            i3++;
        }
        if (i4 == 0) {
            return;
        }
        if (i4 < 50 && this.messageCount > 5000) {
            while (i <= i2) {
                if (((Pop3Message) hashMap.get(Integer.valueOf(i))) == null) {
                    String executeSimpleCommand = this.connection.executeSimpleCommand("UIDL " + i, false);
                    String[] split = executeSimpleCommand.split(" +");
                    if (split.length < 3 || !"+OK".equals(split[0])) {
                        Log.e("ERR response: %s", executeSimpleCommand);
                        return;
                    }
                    indexMessage(i, new Pop3Message(split[2]));
                }
                i++;
            }
            return;
        }
        this.connection.executeSimpleCommand("UIDL", false);
        while (true) {
            String readLine = this.connection.readLine();
            if (readLine.equals(".")) {
                return;
            }
            String[] split2 = readLine.split(" +");
            if (split2.length >= 3 && "+OK".equals(split2[0])) {
                split2[0] = split2[1];
                split2[1] = split2[2];
            }
            if (split2.length >= 2) {
                Integer valueOf = Integer.valueOf(split2[0]);
                String str = split2[1];
                if (valueOf.intValue() >= i && valueOf.intValue() <= i2 && ((Pop3Message) hashMap.get(valueOf)) == null) {
                    indexMessage(valueOf.intValue(), new Pop3Message(str));
                }
            }
        }
    }

    public final void indexUids(ArrayList arrayList) {
        HashMap hashMap;
        HashSet hashSet = new HashSet();
        Iterator it = arrayList.iterator();
        while (true) {
            boolean hasNext = it.hasNext();
            hashMap = this.uidToMsgMap;
            if (!hasNext) {
                break;
            }
            String str = (String) it.next();
            if (hashMap.get(str) == null) {
                if (K9MailLib.debugStatus.enabled()) {
                    Log.d("Need to index UID %s", str);
                }
                hashSet.add(str);
            }
        }
        if (hashSet.isEmpty()) {
            return;
        }
        this.connection.executeSimpleCommand("UIDL", false);
        while (true) {
            String readLine = this.connection.readLine();
            if (readLine.equals(".")) {
                return;
            }
            String[] split = readLine.split(" +");
            if (split.length >= 2) {
                Integer valueOf = Integer.valueOf(split[0]);
                String str2 = split[1];
                if (hashSet.contains(str2)) {
                    if (K9MailLib.debugStatus.enabled()) {
                        Log.d("Got msgNum %d for UID %s", valueOf, str2);
                    }
                    Pop3Message pop3Message = (Pop3Message) hashMap.get(str2);
                    if (pop3Message == null) {
                        pop3Message = new Pop3Message(str2);
                    }
                    indexMessage(valueOf.intValue(), pop3Message);
                }
            }
        }
    }

    public final synchronized void open() {
        Pop3Connection pop3Connection = this.connection;
        if (pop3Connection != null && pop3Connection.isOpen()) {
            return;
        }
        if (!"INBOX".equals(this.name)) {
            throw new MessagingException("Folder does not exist");
        }
        Pop3Store pop3Store = this.pop3Store;
        pop3Store.getClass();
        Pop3Connection pop3Connection2 = new Pop3Connection(new CommandSetFlag(pop3Store), (DefaultTrustedSocketFactory) pop3Store.trustedSocketFactory);
        this.connection = pop3Connection2;
        try {
            pop3Connection2.open();
            this.messageCount = Integer.parseInt(this.connection.executeSimpleCommand("STAT", false).split(" ")[1]);
            this.uidToMsgMap.clear();
            this.msgNumToMsgMap.clear();
            this.uidToMsgNumMap.clear();
        } catch (IOException e) {
            handleIOException(e);
            throw null;
        }
    }

    public final void setFlags(ArrayList arrayList, Set set, boolean z) {
        if (z && set.contains(Flag.DELETED)) {
            ArrayList arrayList2 = new ArrayList();
            try {
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    arrayList2.add(((Pop3Message) it.next()).mUid);
                }
                indexUids(arrayList2);
                Iterator it2 = arrayList.iterator();
                while (it2.hasNext()) {
                    Pop3Message pop3Message = (Pop3Message) it2.next();
                    Integer num = (Integer) this.uidToMsgNumMap.get(pop3Message.mUid);
                    if (num == null) {
                        throw new MessagingException(CameraDevices$CC.m("Could not delete message ", pop3Message.mUid, " because no msgNum found; permanent error"), true, null);
                    }
                    open();
                    try {
                        this.connection.executeSimpleCommand("DELE " + num, false);
                    } catch (IOException e) {
                        handleIOException(e);
                        throw null;
                    }
                }
            } catch (IOException e2) {
                handleIOException(e2);
                throw null;
            }
        }
    }
}
