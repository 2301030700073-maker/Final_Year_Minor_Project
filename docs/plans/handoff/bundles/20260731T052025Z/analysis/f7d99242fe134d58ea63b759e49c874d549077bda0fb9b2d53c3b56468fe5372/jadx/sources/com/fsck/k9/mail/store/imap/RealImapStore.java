package com.fsck.k9.mail.store.imap;

import androidx.compose.ui.unit.IntOffsetKt;
import androidx.core.util.DebugUtils;
import androidx.room.util.RelationUtil;
import coil3.UriKt$$ExternalSyntheticBUOutline0;
import com.fsck.k9.helper.DefaultTrustedSocketFactory;
import com.fsck.k9.mail.AuthType;
import com.fsck.k9.mail.AuthenticationFailedException;
import com.fsck.k9.mail.ConnectionSecurity;
import com.fsck.k9.mail.FolderType;
import com.fsck.k9.mail.ServerSettings;
import com.fsck.k9.mailstore.LocalFolder;
import java.io.IOException;
import java.nio.charset.CharacterCodingException;
import java.util.AbstractList;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.LinkedList;
import java.util.List;
import java.util.ListIterator;
import java.util.Set;
import kotlin.collections.CollectionsKt;
import kotlin.collections.CollectionsKt__IteratorsJVMKt;
import kotlin.collections.builders.ListBuilder;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsJVMKt;
import net.thunderbird.core.common.exception.MessagingException;
import net.thunderbird.core.logging.legacy.Log;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.jsoup.parser.ParseError;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class RealImapStore {
    public String _combinedPrefix;
    public final ImapStoreConfig config;
    public volatile int connectionGeneration;
    public final LinkedList connections;
    public final LocalFolder.AnonymousClass12 folderNameCodec;
    public final String host;
    public final LocalFolder.AnonymousClass12 oauthTokenProvider;
    public String pathDelimiter;
    public String pathPrefix;
    public final LinkedHashSet permanentFlagsIndex;
    public final ServerSettings serverSettings;
    public final DefaultTrustedSocketFactory trustedSocketFactory;

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class StoreImapSettings {
        public final AuthType authType;
        public final String clientCertificateAlias;
        public final ImapClientInfo clientInfo;
        public final ConnectionSecurity connectionSecurity;
        public final String host;
        public final String password;
        public final int port;
        public final boolean useCompression;
        public final String username;

        public StoreImapSettings() {
            this.host = RealImapStore.this.host;
            ServerSettings serverSettings = RealImapStore.this.serverSettings;
            this.port = serverSettings.port;
            this.connectionSecurity = serverSettings.connectionSecurity;
            this.authType = serverSettings.authenticationType;
            this.username = serverSettings.username;
            this.password = serverSettings.password;
            this.clientCertificateAlias = serverSettings.clientCertificateAlias;
            this.useCompression = DebugUtils.isUseCompression(serverSettings);
            this.clientInfo = DebugUtils.isSendClientInfo(serverSettings) ? RealImapStore.this.config.clientInfo() : null;
        }
    }

    public RealImapStore(ServerSettings serverSettings, ImapStoreConfig imapStoreConfig, DefaultTrustedSocketFactory defaultTrustedSocketFactory, LocalFolder.AnonymousClass12 anonymousClass12) {
        serverSettings.getClass();
        defaultTrustedSocketFactory.getClass();
        this.serverSettings = serverSettings;
        this.config = imapStoreConfig;
        this.trustedSocketFactory = defaultTrustedSocketFactory;
        this.oauthTokenProvider = anonymousClass12;
        this.folderNameCodec = new LocalFolder.AnonymousClass12(9);
        String str = serverSettings.host;
        if (str == null) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$2("Required value was null.");
            throw null;
        }
        this.host = str;
        this.permanentFlagsIndex = new LinkedHashSet();
        this.connections = new LinkedList();
        this.connectionGeneration = 1;
        if (Intrinsics.areEqual(serverSettings.type, "imap")) {
            this.pathPrefix = DebugUtils.getAutoDetectNamespace(serverSettings) ? null : DebugUtils.getPathPrefix(serverSettings);
        } else {
            UriKt$$ExternalSyntheticBUOutline0.m("Expected IMAP ServerSettings");
            throw null;
        }
    }

    public static ArrayList limitToSubscribedFolders(ListBuilder listBuilder, ListBuilder listBuilder2) {
        ArrayList arrayList = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(listBuilder2, 10));
        ListIterator listIterator = listBuilder2.listIterator(0);
        while (true) {
            ListBuilder.Itr itr = (ListBuilder.Itr) listIterator;
            if (!itr.hasNext()) {
                break;
            }
            arrayList.add(((FolderListItem) itr.next()).serverId);
        }
        Set set = CollectionsKt.toSet(arrayList);
        ArrayList arrayList2 = new ArrayList();
        ListIterator listIterator2 = listBuilder.listIterator(0);
        while (true) {
            ListBuilder.Itr itr2 = (ListBuilder.Itr) listIterator2;
            if (!itr2.hasNext()) {
                return arrayList2;
            }
            Object next = itr2.next();
            if (set.contains(((FolderListItem) next).serverId)) {
                arrayList2.add(next);
            }
        }
    }

    public final void checkSettings() {
        try {
            RealImapConnection createImapConnection = createImapConnection();
            createImapConnection.open();
            createImapConnection.close();
        } catch (Exception e) {
            Log.e(e, "Error while checking server settings", new Object[0]);
            throw e;
        }
    }

    public final void closeAllConnections() {
        List list;
        Log.v("ImapStore.closeAllConnections()", new Object[0]);
        synchronized (this.connections) {
            list = CollectionsKt.toList(this.connections);
            this.connectionGeneration++;
            this.connections.clear();
        }
        Iterator it = list.iterator();
        while (it.hasNext()) {
            ((RealImapConnection) it.next()).close();
        }
    }

    public final RealImapConnection createImapConnection() {
        return new RealImapConnection(new StoreImapSettings(), this.trustedSocketFactory, this.oauthTokenProvider, this.folderNameCodec, this.connectionGeneration);
    }

    public final void fetchImapPrefix() {
        ParseError parse;
        if (getCombinedPrefix() != null) {
            return;
        }
        RealImapConnection createImapConnection = createImapConnection();
        createImapConnection.open();
        if (!createImapConnection.hasCapability("NAMESPACE") || (parse = ParseError.parse(createImapConnection.executeSimpleCommand("NAMESPACE"))) == null) {
            return;
        }
        this.pathPrefix = parse.cursorPos;
        this.pathDelimiter = parse.errorMsg;
    }

    public final String getCombinedPrefix() {
        String str;
        String str2 = this._combinedPrefix;
        if (str2 != null) {
            return str2;
        }
        String str3 = this.pathPrefix;
        String str4 = null;
        if (str3 != null) {
            int length = str3.length() - 1;
            int i = 0;
            boolean z = false;
            while (i <= length) {
                boolean z2 = str3.charAt(!z ? i : length) <= ' ';
                if (z) {
                    if (!z2) {
                        break;
                    }
                    length--;
                } else if (z2) {
                    i++;
                } else {
                    z = true;
                }
            }
            String obj = str3.subSequence(i, length + 1).toString();
            String str5 = this.pathDelimiter;
            if (str5 != null) {
                int length2 = str5.length() - 1;
                int i2 = 0;
                boolean z3 = false;
                while (i2 <= length2) {
                    boolean z4 = str5.charAt(!z3 ? i2 : length2) <= ' ';
                    if (z3) {
                        if (!z4) {
                            break;
                        }
                        length2--;
                    } else if (z4) {
                        i2++;
                    } else {
                        z3 = true;
                    }
                }
                str = str5.subSequence(i2, length2 + 1).toString();
            } else {
                str = null;
            }
            if (str == null) {
                str = "";
            }
            if (StringsKt__StringsJVMKt.endsWith(obj, str, false)) {
                str4 = obj;
            } else if (obj.length() > 0) {
                str4 = obj.concat(str);
            }
        }
        this._combinedPrefix = str4;
        return str4;
    }

    public final RealImapConnection getConnection() {
        RealImapConnection realImapConnection;
        while (true) {
            synchronized (this.connections) {
                realImapConnection = (RealImapConnection) this.connections.poll();
            }
            if (realImapConnection == null) {
                return createImapConnection();
            }
            try {
                realImapConnection.executeSimpleCommand("NOOP");
                return realImapConnection;
            } catch (IOException unused) {
                realImapConnection.close();
            }
        }
    }

    public final RealImapFolder getFolder(String str) {
        str.getClass();
        return new RealImapFolder(this, this, str, this.folderNameCodec);
    }

    public final AbstractList getFolders() {
        RealImapConnection connection = getConnection();
        try {
            try {
                ListBuilder listFolders = listFolders(connection, false);
                return !this.config.isSubscribedFoldersOnly() ? listFolders : limitToSubscribedFolders(listFolders, listFolders(connection, true));
            } catch (AuthenticationFailedException e) {
                connection.close();
                throw e;
            } catch (IOException e2) {
                connection.close();
                throw new MessagingException("Unable to get folder list.", false, e2);
            } catch (MessagingException e3) {
                connection.close();
                throw new MessagingException("Unable to get folder list.", false, e3);
            }
        } finally {
            releaseConnection(connection);
        }
    }

    public final ListBuilder listFolders(RealImapConnection realImapConnection, boolean z) {
        String str;
        String str2 = z ? "LSUB \"\" %s" : (realImapConnection.hasCapability("SPECIAL-USE") && realImapConnection.hasCapability("LIST-EXTENDED")) ? "LIST \"\" %s RETURN (SPECIAL-USE)" : "LIST \"\" %s";
        String combinedPrefix = getCombinedPrefix();
        if (combinedPrefix == null) {
            combinedPrefix = "";
        }
        ArrayList executeSimpleCommand = realImapConnection.executeSimpleCommand(String.format(str2, Arrays.copyOf(new Object[]{RelationUtil.encodeString(combinedPrefix.concat("*"))}, 1)));
        List<ListResponse> parse = z ? ListResponse.parse("LSUB", executeSimpleCommand) : ListResponse.parse("LIST", executeSimpleCommand);
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (ListResponse listResponse : parse) {
            String str3 = listResponse.name;
            String str4 = null;
            if (this.pathDelimiter == null) {
                this.pathDelimiter = listResponse.hierarchyDelimiter;
                this._combinedPrefix = null;
            }
            if (!"INBOX".equalsIgnoreCase(str3) && !listResponse.hasAttribute("\\NoSelect") && !listResponse.hasAttribute("\\NonExistent")) {
                str3.getClass();
                for (int i = 0; i < str3.length(); i++) {
                    try {
                    } catch (CharacterCodingException e) {
                        Log.w(e, "Folder name not correctly encoded with the UTF-7 variant as defined by RFC 3501: %s", str3);
                    }
                    if (str3.charAt(i) > 127) {
                        str = str3;
                        break;
                    }
                }
                str = this.folderNameCodec.decode(str3);
                String combinedPrefix2 = getCombinedPrefix();
                if (combinedPrefix2 == null) {
                    combinedPrefix2 = "";
                }
                int length = combinedPrefix2.length();
                if (length == 0) {
                    str4 = str;
                } else if (StringsKt__StringsJVMKt.startsWith(str, combinedPrefix2, false)) {
                    str4 = str.substring(length);
                }
                if (str4 != null) {
                    str = str4;
                }
                boolean hasAttribute = listResponse.hasAttribute("\\Archive");
                FolderType folderType = FolderType.REGULAR;
                FolderType folderType2 = FolderType.ARCHIVE;
                if (!hasAttribute && !listResponse.hasAttribute("\\All")) {
                    folderType2 = listResponse.hasAttribute("\\Drafts") ? FolderType.DRAFTS : listResponse.hasAttribute("\\Sent") ? FolderType.SENT : listResponse.hasAttribute("\\Junk") ? FolderType.SPAM : listResponse.hasAttribute("\\Trash") ? FolderType.TRASH : folderType;
                }
                FolderListItem folderListItem = (FolderListItem) linkedHashMap.get(str3);
                if (folderListItem == null || folderListItem.type == folderType) {
                    linkedHashMap.put(str3, new FolderListItem(str3, str, folderType2, this.pathDelimiter));
                }
            }
        }
        ListBuilder createListBuilder = IntOffsetKt.createListBuilder();
        createListBuilder.add(new FolderListItem("INBOX", "INBOX", FolderType.INBOX, this.pathDelimiter));
        createListBuilder.addAll(linkedHashMap.values());
        return IntOffsetKt.build(createListBuilder);
    }

    public final void releaseConnection(RealImapConnection realImapConnection) {
        if (realImapConnection == null || !realImapConnection.isConnected()) {
            return;
        }
        if (realImapConnection.connectionGeneration != this.connectionGeneration) {
            realImapConnection.close();
            return;
        }
        synchronized (this.connections) {
            this.connections.offer(realImapConnection);
        }
    }
}
