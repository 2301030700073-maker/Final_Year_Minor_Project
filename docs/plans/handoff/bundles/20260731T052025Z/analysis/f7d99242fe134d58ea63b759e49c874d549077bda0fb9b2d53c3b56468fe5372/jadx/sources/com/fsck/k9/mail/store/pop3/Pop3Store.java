package com.fsck.k9.mail.store.pop3;

import androidx.room.RoomConnectionManager;
import coil3.UriKt$$ExternalSyntheticBUOutline0;
import com.fsck.k9.backend.api.SyncConfig;
import com.fsck.k9.backend.imap.ImapSync;
import com.fsck.k9.helper.DefaultTrustedSocketFactory;
import com.fsck.k9.mail.MessageRetrievalListener;
import com.fsck.k9.mail.ServerSettings;
import com.fsck.k9.mail.internet.MimeMessage;
import java.io.IOException;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Date;
import java.util.EnumSet;
import java.util.HashMap;
import java.util.concurrent.atomic.AtomicInteger;
import net.thunderbird.core.common.mail.Flag;
import net.thunderbird.core.logging.legacy.Log;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class Pop3Store implements MessageRetrievalListener {
    public final Object authType;
    public final Object clientCertificateAlias;
    public final Serializable connectionSecurity;
    public final String host;
    public final Object mFolders;
    public final Serializable password;
    public final int port;
    public final Object trustedSocketFactory;
    public final Object username;

    public Pop3Store(ServerSettings serverSettings, DefaultTrustedSocketFactory defaultTrustedSocketFactory) {
        this.mFolders = new HashMap();
        if (!serverSettings.type.equals("pop3")) {
            UriKt$$ExternalSyntheticBUOutline0.m("Expected POP3 ServerSettings");
            throw null;
        }
        this.trustedSocketFactory = defaultTrustedSocketFactory;
        this.host = serverSettings.host;
        this.port = serverSettings.port;
        this.connectionSecurity = serverSettings.connectionSecurity;
        this.username = serverSettings.username;
        this.password = serverSettings.password;
        this.clientCertificateAlias = serverSettings.clientCertificateAlias;
        this.authType = serverSettings.authenticationType;
    }

    public void checkSettings() {
        Pop3Folder pop3Folder = new Pop3Folder(this, "INBOX");
        try {
            try {
                pop3Folder.open();
                try {
                    Pop3Connection pop3Connection = pop3Folder.connection;
                    if (!pop3Connection.capabilities.uidl) {
                        pop3Connection.executeSimpleCommand("UIDL", false);
                    }
                } catch (IOException e) {
                    pop3Folder.handleIOException(e);
                    throw null;
                }
            } catch (Exception e2) {
                Log.e(e2, "Error while checking server settings", new Object[0]);
                throw e2;
            }
        } finally {
            pop3Folder.close();
        }
    }

    public Pop3Folder getFolder(String str) {
        HashMap hashMap = (HashMap) this.mFolders;
        Pop3Folder pop3Folder = (Pop3Folder) hashMap.get(str);
        if (pop3Folder != null) {
            return pop3Folder;
        }
        Pop3Folder pop3Folder2 = new Pop3Folder(this, str);
        hashMap.put(pop3Folder2.name, pop3Folder2);
        return pop3Folder2;
    }

    @Override // com.fsck.k9.mail.MessageRetrievalListener
    public void messageFinished(MimeMessage mimeMessage) {
        Pop3Message pop3Message = (Pop3Message) mimeMessage;
        AtomicInteger atomicInteger = (AtomicInteger) this.password;
        Date date = (Date) this.trustedSocketFactory;
        pop3Message.getClass();
        EnumSet enumSet = pop3Message.mFlags;
        try {
            Flag flag = Flag.DELETED;
            if (!enumSet.contains(flag) && !pop3Message.olderThan(date)) {
                int i = ((SyncConfig) this.authType).maximumAutoDownloadMessageSize;
                if (i <= 0 || pop3Message.mSize <= i) {
                    ((ArrayList) this.mFolders).add(pop3Message);
                    return;
                } else {
                    ((ArrayList) this.connectionSecurity).add(pop3Message);
                    return;
                }
            }
            boolean contains = enumSet.contains(flag);
            String str = this.host;
            if (contains) {
                Log.v("Newly downloaded message %s:%s:%s was marked deleted on server, skipping", (String) ((ImapSync) this.username).accountName, str, pop3Message.mUid);
            } else {
                Log.d("Newly downloaded message %s is older than %s, skipping", pop3Message.mUid, date);
            }
            atomicInteger.incrementAndGet();
            RoomConnectionManager roomConnectionManager = (RoomConnectionManager) this.clientCertificateAlias;
            str.getClass();
            roomConnectionManager.syncProgress(atomicInteger.get(), str, this.port);
        } catch (Exception e) {
            Log.e(e, "Error while storing downloaded message.", new Object[0]);
        }
    }

    public Pop3Store(Date date, ImapSync imapSync, String str, AtomicInteger atomicInteger, RoomConnectionManager roomConnectionManager, int i, SyncConfig syncConfig, ArrayList arrayList, ArrayList arrayList2) {
        this.trustedSocketFactory = date;
        this.username = imapSync;
        this.host = str;
        this.password = atomicInteger;
        this.clientCertificateAlias = roomConnectionManager;
        this.port = i;
        this.authType = syncConfig;
        this.connectionSecurity = arrayList;
        this.mFolders = arrayList2;
    }
}
