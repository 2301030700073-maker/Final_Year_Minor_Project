package com.fsck.k9.mail.store.imap;

import androidx.appcompat.app.ActionBar;
import androidx.camera.camera2.pipe.CameraDevices$CC;
import androidx.camera.core.impl.Config;
import androidx.compose.material.ripple.StateLayer;
import androidx.compose.ui.Modifier;
import androidx.room.util.RelationUtil;
import androidx.work.Configuration;
import androidx.work.Data;
import coil3.UriKt$$ExternalSyntheticBUOutline0;
import coil3.network.internal.UtilsKt;
import com.fsck.k9.mail.Body;
import com.fsck.k9.mail.BoundaryGenerator;
import com.fsck.k9.mail.FolderType;
import com.fsck.k9.mail.K9MailLib;
import com.fsck.k9.mail.Part;
import com.fsck.k9.mail.internet.JisSupport;
import com.fsck.k9.mail.internet.MimeBodyPart;
import com.fsck.k9.mail.internet.MimeMultipart;
import com.fsck.k9.mailstore.LocalFolder;
import com.fsck.k9.sasl.OAuthBearer;
import com.google.zxing.BinaryBitmap;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import kotlin.collections.CollectionsKt;
import kotlin.collections.CollectionsKt__IteratorsJVMKt;
import kotlin.comparisons.NaturalOrderComparator;
import kotlin.jvm.internal.Intrinsics;
import kotlin.random.FallbackThreadLocalRandom$implStorage$1;
import kotlin.text.Charsets;
import kotlin.text.StringsKt;
import kotlin.text.StringsKt__StringsJVMKt;
import net.thunderbird.core.common.exception.MessagingException;
import net.thunderbird.core.common.mail.Flag;
import net.thunderbird.core.logging.legacy.Log;
import okhttp3.Headers;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import okio.AsyncTimeout;
import okio.Options;
import org.jsoup.helper.Validate;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class RealImapFolder {
    public static final FallbackThreadLocalRandom$implStorage$1 RFC3501_DATE = new FallbackThreadLocalRandom$implStorage$1(3);
    public boolean canCreateKeywords;
    public RealImapConnection connection;
    public final RealImapStore connectionManager;
    public boolean exists;
    public final LocalFolder.AnonymousClass12 folderNameCodec;
    public boolean inSearch;
    public final RealImapStore internalImapStore;
    public int messageCount;
    public OpenMode mode;
    public final String serverId;
    public long uidNext;
    public Long uidValidity;

    public RealImapFolder(RealImapStore realImapStore, RealImapStore realImapStore2, String str, LocalFolder.AnonymousClass12 anonymousClass12) {
        str.getClass();
        anonymousClass12.getClass();
        this.internalImapStore = realImapStore;
        this.connectionManager = realImapStore2;
        this.serverId = str;
        this.folderNameCodec = anonymousClass12;
        this.uidNext = -1L;
        this.messageCount = -1;
    }

    public static String getDateSearchString(Date date) {
        if (date == null) {
            return "";
        }
        Object obj = RFC3501_DATE.get();
        obj.getClass();
        return CameraDevices$CC.m(" SINCE ", ((SimpleDateFormat) obj).format(date));
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static void handleSelectOrExamineOkResponse(ImapResponse imapResponse) {
        Boolean bool;
        Configuration.Builder builder;
        Configuration.Builder builder2 = null;
        if (imapResponse.isTagged() && StateLayer.equalsIgnoreCase(imapResponse.get(0), "OK")) {
            if (imapResponse.isList(1)) {
                ImapList imapList = (ImapList) imapResponse.get(1);
                if (imapList.isString(0)) {
                    String str = (String) imapList.get(0);
                    if ("READ-ONLY".equalsIgnoreCase(str)) {
                        builder2 = new Configuration.Builder(28, Boolean.FALSE);
                    } else if ("READ-WRITE".equalsIgnoreCase(str)) {
                        builder2 = new Configuration.Builder(28, Boolean.TRUE);
                    } else {
                        builder = new Configuration.Builder(28, null);
                    }
                } else {
                    builder = new Configuration.Builder(28, null);
                }
            } else {
                builder = new Configuration.Builder(28, null);
            }
            builder2 = builder;
        }
        if (builder2 == null || (bool = (Boolean) builder2.workerFactory) == null) {
            return;
        }
        if (bool != null) {
            bool.booleanValue();
        } else {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$2("Called getOpenMode() despite hasOpenMode() returning false");
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static void parseBodyStructure(ImapList imapList, Part part, String str) {
        int i;
        int progressionLastElement;
        int i2 = 1;
        if (imapList.get(0) instanceof ImapList) {
            MimeMultipart mimeMultipart = new MimeMultipart(BoundaryGenerator.INSTANCE.generateBoundary());
            int size = imapList.size();
            int i3 = 0;
            while (true) {
                if (i3 < size) {
                    if (!(imapList.get(i3) instanceof ImapList)) {
                        String str2 = (String) imapList.get(i3);
                        str2.getClass();
                        String lowerCase = str2.toLowerCase(Locale.ROOT);
                        lowerCase.getClass();
                        mimeMultipart.setSubType(lowerCase);
                        break;
                    }
                    MimeBodyPart mimeBodyPart = new MimeBodyPart(0);
                    int i4 = i3 + 1;
                    String valueOf = String.valueOf(i4);
                    if (StringsKt__StringsJVMKt.equals(str, "TEXT", true)) {
                        ImapList imapList2 = (ImapList) imapList.get(i3);
                        imapList2.getClass();
                        parseBodyStructure(imapList2, mimeBodyPart, valueOf);
                    } else {
                        ImapList imapList3 = (ImapList) imapList.get(i3);
                        imapList3.getClass();
                        parseBodyStructure(imapList3, mimeBodyPart, str + "." + valueOf);
                    }
                    mimeMultipart.addBodyPart(mimeBodyPart);
                    i3 = i4;
                } else {
                    break;
                }
            }
            JisSupport.setBody(part, mimeMultipart);
            return;
        }
        String str3 = (String) imapList.get(0);
        String lowerCase2 = Config.CC.m(str3, "/", (String) imapList.get(1)).toLowerCase(Locale.ROOT);
        lowerCase2.getClass();
        ImapList imapList4 = imapList.get(2) instanceof ImapList ? (ImapList) imapList.get(2) : null;
        String str4 = (String) imapList.get(5);
        int parseInt = Integer.parseInt((String) imapList.get(6));
        if (JisSupport.isSameMimeType(lowerCase2, "message/rfc822")) {
            throw new MessagingException("BODYSTRUCTURE message/rfc822 not yet supported.");
        }
        StringBuilder m = Modifier.CC.m(lowerCase2);
        if (imapList4 != null && (progressionLastElement = Options.Companion.getProgressionLastElement(0, imapList4.size() - 1, 2)) >= 0) {
            int i5 = 0;
            while (true) {
                String str5 = (String) imapList4.get(i5);
                String str6 = (String) imapList4.get(i5 + 1);
                str6.getClass();
                if (!JisSupport.isToken(str6)) {
                    str6 = JisSupport.quotedUtf8(str6);
                }
                i = i2;
                Object[] objArr = new Object[2];
                objArr[0] = str5;
                objArr[i] = str6;
                m.append(String.format(";\r\n %s=%s", Arrays.copyOf(objArr, 2)));
                if (i5 == progressionLastElement) {
                    break;
                }
                i5 += 2;
                i2 = i;
            }
        } else {
            i = 1;
        }
        part.setHeader(UtilsKt.CONTENT_TYPE, m.toString());
        ImapList imapList5 = ("text".equalsIgnoreCase(str3) && imapList.size() > 9 && (imapList.get(9) instanceof ImapList)) ? (ImapList) imapList.get(9) : ("text".equalsIgnoreCase(str3) || imapList.size() <= 8 || !(imapList.get(8) instanceof ImapList)) ? null : (ImapList) imapList.get(8);
        StringBuilder sb = new StringBuilder();
        if (imapList5 != null && !imapList5.isEmpty()) {
            if (!"NIL".equalsIgnoreCase((String) imapList5.get(0))) {
                String str7 = (String) imapList5.get(0);
                str7.getClass();
                String lowerCase3 = str7.toLowerCase(Locale.ROOT);
                lowerCase3.getClass();
                sb.append(lowerCase3);
            }
            int i6 = i;
            if (imapList5.size() > i6 && (imapList5.get(i6) instanceof ImapList)) {
                ImapList imapList6 = (ImapList) imapList5.get(i6);
                int progressionLastElement2 = Options.Companion.getProgressionLastElement(0, imapList6.size() - 1, 2);
                if (progressionLastElement2 >= 0) {
                    int i7 = 0;
                    while (true) {
                        String str8 = (String) imapList6.get(i7);
                        str8.getClass();
                        String lowerCase4 = str8.toLowerCase(Locale.ROOT);
                        lowerCase4.getClass();
                        String str9 = (String) imapList6.get(i7 + 1);
                        str9.getClass();
                        if (!JisSupport.isToken(str9)) {
                            str9 = JisSupport.quotedUtf8(str9);
                        }
                        sb.append(String.format(";\r\n %s=%s", Arrays.copyOf(new Object[]{lowerCase4, str9}, 2)));
                        if (i7 == progressionLastElement2) {
                            break;
                        } else {
                            i7 += 2;
                        }
                    }
                }
            }
        }
        if (JisSupport.getHeaderParameter(sb.toString(), "size") == null) {
            sb.append(String.format(Locale.US, ";\r\n size=%d", Arrays.copyOf(new Object[]{Integer.valueOf(parseInt)}, 1)));
        }
        part.setHeader("Content-Disposition", sb.toString());
        part.setHeader("Content-Transfer-Encoding", str4);
        if (part instanceof ImapMessage) {
            ((ImapMessage) part).mSize = parseInt;
        }
        part.setServerExtra(str);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0085 A[Catch: IOException -> 0x0040, TryCatch #0 {IOException -> 0x0040, blocks: (B:3:0x0003, B:4:0x000c, B:6:0x0013, B:8:0x0031, B:12:0x0044, B:13:0x0075, B:15:0x0085, B:16:0x008c, B:20:0x0091, B:21:0x0092, B:29:0x00b0, B:30:0x00b1, B:33:0x00b5, B:35:0x00bb, B:37:0x00c7, B:39:0x00cd, B:41:0x00d5, B:43:0x00de, B:45:0x00ef, B:61:0x0100, B:48:0x010a, B:50:0x011d, B:51:0x0121, B:53:0x0129, B:56:0x013a, B:68:0x0144, B:69:0x014f, B:74:0x0150, B:18:0x008d, B:23:0x00a6, B:24:0x00ad), top: B:2:0x0003, inners: #1 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.util.HashMap appendMessages(java.util.List r13) {
        /*
            Method dump skipped, instructions count: 351
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fsck.k9.mail.store.imap.RealImapFolder.appendMessages(java.util.List):java.util.HashMap");
    }

    public final void checkOpen() {
        if (this.connection != null) {
            return;
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m((Object) CameraDevices$CC.m("Folder '", this.serverId, "' is not open."));
    }

    public final void checkOpenWithWriteAccess() {
        checkOpen();
        if (this.mode == OpenMode.READ_WRITE) {
            return;
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m((Object) CameraDevices$CC.m("Folder '", this.serverId, "' needs to be opened for read-write access."));
    }

    public final void close() {
        this.messageCount = -1;
        if (this.connection != null) {
            synchronized (this) {
                try {
                    if (!this.inSearch || this.connection == null) {
                        this.connectionManager.releaseConnection(this.connection);
                    } else {
                        Log.i("IMAP search was aborted, shutting down connection.", new Object[0]);
                        RealImapConnection realImapConnection = this.connection;
                        realImapConnection.getClass();
                        realImapConnection.close();
                    }
                    this.connection = null;
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    public final Map copyMessages(ArrayList arrayList, RealImapFolder realImapFolder) {
        if (arrayList.isEmpty()) {
            return null;
        }
        checkOpen();
        ArrayList arrayList2 = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(arrayList, 10));
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            String str = ((ImapMessage) it.next()).mUid;
            str.getClass();
            arrayList2.add(Long.valueOf(Long.parseLong(str)));
        }
        Set set = CollectionsKt.toSet(arrayList2);
        String encodeString = RelationUtil.encodeString(this.folderNameCodec.encode(realImapFolder.getPrefixedName()));
        try {
            RealImapConnection realImapConnection = this.connection;
            realImapConnection.getClass();
            Data.Builder parse = ActionBar.parse(realImapConnection.executeCommandWithIdSet("UID COPY", encodeString, set), false);
            if (parse != null) {
                return parse.values;
            }
            return null;
        } catch (IOException e) {
            throw this.ioExceptionHandler(this.connection, e);
        }
    }

    public final boolean create() {
        RealImapConnection realImapConnection;
        FolderType folderType = FolderType.ARCHIVE;
        synchronized (this) {
            realImapConnection = this.connection;
            if (realImapConnection == null) {
                realImapConnection = this.connectionManager.getConnection();
            }
        }
        boolean hasCapability = realImapConnection.hasCapability("CREATE-SPECIAL-USE");
        boolean z = true;
        try {
            try {
                String encodeString = RelationUtil.encodeString(this.folderNameCodec.encode(getPrefixedName()));
                if (!hasCapability) {
                    folderType = null;
                }
                String str = folderType != null ? "(USE (\\Archive))" : null;
                if (str == null) {
                    str = "";
                }
                ArrayList executeSimpleCommand = realImapConnection.executeSimpleCommand(StringsKt.trim("CREATE " + encodeString + " " + str).toString());
                if (!executeSimpleCommand.isEmpty()) {
                    Iterator it = executeSimpleCommand.iterator();
                    while (it.hasNext()) {
                        if (StateLayer.equalsIgnoreCase(((ImapResponse) it.next()).get(0), "OK")) {
                            break;
                        }
                    }
                }
                z = false;
                if (this.connection == null) {
                    this.connectionManager.releaseConnection(realImapConnection);
                }
                return z;
            } catch (NegativeImapResponseException e) {
                Log.e(e, "Unable to create folder %s for %s", this.serverId, getLogId());
                if (this.connection == null) {
                    this.connectionManager.releaseConnection(realImapConnection);
                }
                return false;
            } catch (IOException e2) {
                throw ioExceptionHandler(this.connection, e2);
            }
        } catch (Throwable th) {
            if (this.connection == null) {
                this.connectionManager.releaseConnection(realImapConnection);
            }
            throw th;
        }
    }

    public final void deleteMessages(ArrayList arrayList) {
        checkOpenWithWriteAccess();
        setFlags(arrayList, Validate.setOf(Flag.DELETED), true);
        if (this.internalImapStore.config.isExpungeImmediately()) {
            ArrayList arrayList2 = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(arrayList, 10));
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                arrayList2.add(((ImapMessage) it.next()).mUid);
            }
            checkOpenWithWriteAccess();
            expungeUids(arrayList2, true);
        }
    }

    public final boolean equals(Object obj) {
        return obj instanceof RealImapFolder ? Intrinsics.areEqual(((RealImapFolder) obj).serverId, this.serverId) : this == obj;
    }

    public final ArrayList executeSimpleCommand(String str) {
        RealImapConnection realImapConnection = this.connection;
        realImapConnection.getClass();
        ArrayList executeSimpleCommand = realImapConnection.executeSimpleCommand(str);
        Iterator it = executeSimpleCommand.iterator();
        while (it.hasNext()) {
            handleUntaggedResponse((ImapResponse) it.next());
        }
        return executeSimpleCommand;
    }

    public final boolean exists() {
        RealImapConnection realImapConnection;
        if (!this.exists) {
            synchronized (this) {
                realImapConnection = this.connection;
                if (realImapConnection == null) {
                    realImapConnection = this.connectionManager.getConnection();
                }
            }
            try {
                try {
                    realImapConnection.executeSimpleCommand(String.format("STATUS %s (UIDVALIDITY)", Arrays.copyOf(new Object[]{RelationUtil.encodeString(this.folderNameCodec.encode(getPrefixedName()))}, 1)));
                    this.exists = true;
                    if (this.connection == null) {
                        this.connectionManager.releaseConnection(realImapConnection);
                    }
                } catch (NegativeImapResponseException unused) {
                    if (this.connection == null) {
                        this.connectionManager.releaseConnection(realImapConnection);
                    }
                    return false;
                } catch (IOException e) {
                    throw ioExceptionHandler(realImapConnection, e);
                }
            } catch (Throwable th) {
                if (this.connection == null) {
                    this.connectionManager.releaseConnection(realImapConnection);
                }
                throw th;
            }
        }
        return true;
    }

    public final void expunge() {
        checkOpenWithWriteAccess();
        try {
            executeSimpleCommand("EXPUNGE");
        } catch (IOException e) {
            throw ioExceptionHandler(this.connection, e);
        }
    }

    public final void expungeUids(ArrayList arrayList, boolean z) {
        if (arrayList.isEmpty()) {
            UriKt$$ExternalSyntheticBUOutline0.m("expungeUids() must be called with a non-empty set of UIDs");
            return;
        }
        try {
            RealImapConnection realImapConnection = this.connection;
            realImapConnection.getClass();
            if (!realImapConnection.capabilities.contains("UIDPLUS")) {
                if (z) {
                    executeSimpleCommand("EXPUNGE");
                    return;
                } else {
                    Log.v("Server doesn't support expunging individual messages: %s", arrayList);
                    return;
                }
            }
            ArrayList arrayList2 = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(arrayList, 10));
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                arrayList2.add(Long.valueOf(Long.parseLong((String) it.next())));
            }
            Set set = CollectionsKt.toSet(arrayList2);
            RealImapConnection realImapConnection2 = this.connection;
            realImapConnection2.getClass();
            realImapConnection2.executeCommandWithIdSet("UID EXPUNGE", "", set);
        } catch (IOException e) {
            throw ioExceptionHandler(this.connection, e);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void extractUidValidity(ImapResponse imapResponse) {
        imapResponse.getClass();
        LocalFolder.AnonymousClass15 anonymousClass15 = null;
        if (!imapResponse.isTagged() && StateLayer.equalsIgnoreCase(imapResponse.get(0), "OK") && imapResponse.isList(1)) {
            ImapList imapList = (ImapList) imapResponse.get(1);
            if (imapList.size() >= 2 && StateLayer.equalsIgnoreCase(imapList.get(0), "UIDVALIDITY") && 1 < imapList.size()) {
                E e = imapList.get(1);
                if (e instanceof String) {
                    try {
                        Long.parseLong((String) e);
                        long parseLong = Long.parseLong((String) imapList.get(1));
                        if (0 <= parseLong && parseLong < 4294967296L) {
                            anonymousClass15 = new LocalFolder.AnonymousClass15(parseLong);
                        }
                    } catch (NumberFormatException unused) {
                    }
                }
            }
        }
        if (anonymousClass15 != null) {
            this.uidValidity = Long.valueOf(anonymousClass15.val$rootMessagePartId);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:59:0x01f9, code lost:
    
        r15 = r17;
        r5 = r18;
        r4 = r19;
        r18 = r11;
        r11 = r12;
        r16 = r16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:71:0x01d2, code lost:
    
        throw new net.thunderbird.core.common.exception.MessagingException("Got FETCH response with bogus parameters");
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:47:0x0150 A[Catch: IOException -> 0x013b, TryCatch #0 {IOException -> 0x013b, blocks: (B:38:0x00ff, B:40:0x0132, B:45:0x0143, B:47:0x0150, B:49:0x015c, B:51:0x0177, B:53:0x017f, B:54:0x019d, B:61:0x01a3, B:63:0x01ae, B:65:0x01b2, B:66:0x01c6, B:70:0x01cb, B:71:0x01d2, B:73:0x01d3, B:75:0x01e3, B:77:0x01e9, B:78:0x013e), top: B:37:0x00ff }] */
    /* JADX WARN: Removed duplicated region for block: B:57:0x0204 A[LOOP:3: B:45:0x0143->B:57:0x0204, LOOP_END] */
    /* JADX WARN: Type inference failed for: r16v1 */
    /* JADX WARN: Type inference failed for: r16v10 */
    /* JADX WARN: Type inference failed for: r16v2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void fetch(java.util.List r26, com.fsck.k9.mail.FetchProfile r27, okhttp3.HttpUrl.Builder r28, int r29) {
        /*
            Method dump skipped, instructions count: 531
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fsck.k9.mail.store.imap.RealImapFolder.fetch(java.util.List, com.fsck.k9.mail.FetchProfile, okhttp3.HttpUrl$Builder, int):void");
    }

    public final void fetchPart(ImapMessage imapMessage, Part part, AsyncTimeout.Companion companion, int i) {
        String str;
        part.getClass();
        checkOpen();
        String serverExtra = part.getServerExtra();
        try {
            String format = String.format("UID FETCH %s (UID %s)", Arrays.copyOf(new Object[]{imapMessage.mUid, "TEXT".equalsIgnoreCase(serverExtra) ? String.format(Locale.US, "BODY.PEEK[TEXT]<0.%d>", Arrays.copyOf(new Object[]{Integer.valueOf(i)}, 1)) : String.format("BODY.PEEK[%s]", Arrays.copyOf(new Object[]{serverExtra}, 1))}, 2));
            RealImapConnection realImapConnection = this.connection;
            realImapConnection.getClass();
            realImapConnection.sendCommand(format, false);
            BinaryBitmap binaryBitmap = new BinaryBitmap(part, companion);
            do {
                RealImapConnection realImapConnection2 = this.connection;
                realImapConnection2.getClass();
                ImapResponse readResponse = realImapConnection2.readResponse(binaryBitmap);
                str = readResponse.tag;
                if (str == null && StateLayer.equalsIgnoreCase(readResponse.get(1), "FETCH")) {
                    Object keyedValue = readResponse.getKeyedValue("FETCH");
                    keyedValue.getClass();
                    ImapList imapList = (ImapList) keyedValue;
                    String str2 = (String) imapList.getKeyedValue("UID");
                    if (Intrinsics.areEqual(imapMessage.mUid, str2)) {
                        Object handleFetchResponse = handleFetchResponse(imapMessage, imapList);
                        if (handleFetchResponse != null) {
                            if (handleFetchResponse instanceof Body) {
                                JisSupport.setBody(part, (Body) handleFetchResponse);
                            } else {
                                if (!(handleFetchResponse instanceof String)) {
                                    throw new MessagingException("Got FETCH response with bogus parameters");
                                }
                                byte[] bytes = ((String) handleFetchResponse).getBytes(Charsets.UTF_8);
                                bytes.getClass();
                                ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(bytes);
                                String str3 = part.getHeader("Content-Transfer-Encoding")[0];
                                str3.getClass();
                                String str4 = part.getHeader(UtilsKt.CONTENT_TYPE)[0];
                                str4.getClass();
                                JisSupport.setBody(part, companion.createBody(str3, str4, byteArrayInputStream));
                            }
                        }
                    } else {
                        if (K9MailLib.debugStatus.enabled()) {
                            Log.d("Did not ask for UID %s for %s", str2, getLogId());
                        }
                        handleUntaggedResponse(readResponse);
                    }
                } else {
                    handleUntaggedResponse(readResponse);
                }
            } while (str == null);
        } catch (IOException e) {
            throw ioExceptionHandler(this.connection, e);
        }
    }

    public final String getLogId() {
        String str = this.internalImapStore.config.getLogLabel() + ":" + this.serverId + "/" + Thread.currentThread().getName();
        RealImapConnection realImapConnection = this.connection;
        return realImapConnection != null ? Config.CC.m(str, "/", realImapConnection.getLogId()) : str;
    }

    public final ArrayList getMessages(int i, int i2, Date date) {
        if (i < 1 || i2 < 1 || i2 < i) {
            throw new MessagingException(String.format(Locale.US, "Invalid message set %d %d", Arrays.copyOf(new Object[]{Integer.valueOf(i), Integer.valueOf(i2)}, 2)));
        }
        checkOpen();
        String format = String.format(Locale.US, "UID SEARCH %d:%d%s%s", Arrays.copyOf(new Object[]{Integer.valueOf(i), Integer.valueOf(i2), getDateSearchString(date), " NOT DELETED"}, 4));
        try {
            RealImapConnection realImapConnection = this.connection;
            realImapConnection.getClass();
            return getMessages(OAuthBearer.parse(realImapConnection.executeSimpleCommand(format)));
        } catch (IOException e) {
            throw this.ioExceptionHandler(this.connection, e);
        }
    }

    public final String getPrefixedName() {
        String str;
        RealImapConnection realImapConnection;
        if ("INBOX".equalsIgnoreCase(this.serverId)) {
            str = "";
        } else {
            synchronized (this) {
                realImapConnection = this.connection;
                if (realImapConnection == null) {
                    realImapConnection = this.connectionManager.getConnection();
                }
            }
            try {
                try {
                    realImapConnection.open();
                    str = this.internalImapStore.getCombinedPrefix();
                    if (str == null) {
                        str = "";
                    }
                } catch (IOException e) {
                    throw new MessagingException("Unable to get IMAP prefix", false, e);
                }
            } finally {
                if (this.connection == null) {
                    this.connectionManager.releaseConnection(realImapConnection);
                }
            }
        }
        return str.concat(StringsKt.removePrefix(this.serverId, str));
    }

    public final String getUidFromMessageId(String str) {
        str.getClass();
        if (K9MailLib.debugStatus.enabled()) {
            Log.d("Looking for UID for message with message-id %s for %s", str, getLogId());
        }
        try {
            Long l = (Long) CollectionsKt.firstOrNull((List) OAuthBearer.parse(executeSimpleCommand(String.format("UID SEARCH HEADER MESSAGE-ID %s", Arrays.copyOf(new Object[]{RelationUtil.encodeString(str)}, 1)))).namesAndValues);
            if (l != null) {
                return String.valueOf(l.longValue());
            }
            return null;
        } catch (IOException e) {
            throw this.ioExceptionHandler(this.connection, e);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final Object handleFetchResponse(ImapMessage imapMessage, ImapList imapList) {
        int i;
        ImapList imapList2;
        Date parseDate;
        ImapList imapList3;
        if (imapList.containsKey("FLAGS") && (imapList3 = (ImapList) imapList.getKeyedValue("FLAGS")) != null) {
            int size = imapList3.size();
            for (int i2 = 0; i2 < size; i2++) {
                String str = (String) imapList3.get(i2);
                if (StringsKt__StringsJVMKt.equals(str, "\\Deleted", true)) {
                    imapMessage.setFlag(Flag.DELETED, true);
                } else if (StringsKt__StringsJVMKt.equals(str, "\\Answered", true)) {
                    imapMessage.setFlag(Flag.ANSWERED, true);
                } else if (StringsKt__StringsJVMKt.equals(str, "\\Seen", true)) {
                    imapMessage.setFlag(Flag.SEEN, true);
                } else if (StringsKt__StringsJVMKt.equals(str, "\\Flagged", true)) {
                    imapMessage.setFlag(Flag.FLAGGED, true);
                } else if (StringsKt__StringsJVMKt.equals(str, "$Forwarded", true)) {
                    Flag flag = Flag.FORWARDED;
                    imapMessage.setFlag(flag, true);
                    this.internalImapStore.permanentFlagsIndex.add(flag);
                } else if (StringsKt__StringsJVMKt.equals(str, "\\Draft", true)) {
                    imapMessage.setFlag(Flag.DRAFT, true);
                }
            }
        }
        if (imapList.containsKey("INTERNALDATE")) {
            String str2 = (String) imapList.getKeyedValue("INTERNALDATE");
            if (str2 != null) {
                try {
                    if (!"NIL".equals(str2)) {
                        parseDate = ImapList.parseDate(str2);
                        imapMessage.mInternalDate = parseDate;
                    }
                } catch (ParseException e) {
                    throw new MessagingException(CameraDevices$CC.m("Unable to parse IMAP datetime '", str2, "' "), false, e);
                }
            }
            parseDate = null;
            imapMessage.mInternalDate = parseDate;
        }
        if (imapList.containsKey("RFC822.SIZE")) {
            imapMessage.mSize = Integer.parseInt((String) imapList.getKeyedValue("RFC822.SIZE"));
        }
        if (imapList.containsKey("BODYSTRUCTURE") && (imapList2 = (ImapList) imapList.getKeyedValue("BODYSTRUCTURE")) != null) {
            try {
                parseBodyStructure(imapList2, imapMessage, "TEXT");
            } catch (MessagingException e2) {
                if (K9MailLib.debugStatus.enabled()) {
                    Log.d(e2, "Error handling message for %s", getLogId());
                }
                imapMessage.mBody = null;
            }
        }
        if (!imapList.containsKey("BODY")) {
            return null;
        }
        int size2 = imapList.size() - 1;
        for (int i3 = 0; i3 < size2; i3++) {
            if (StateLayer.equalsIgnoreCase(imapList.get(i3), "BODY")) {
                int i4 = i3 + 2;
                int size3 = imapList.size();
                if (i4 >= size3) {
                    return null;
                }
                E e3 = imapList.get(i4);
                return ((e3 instanceof String) && StringsKt__StringsJVMKt.startsWith((String) e3, "<", false) && (i = i3 + 3) < size3) ? imapList.get(i) : e3;
            }
        }
        UriKt$$ExternalSyntheticBUOutline0.m("getKeyIndex() only works for keys that are in the collection.");
        return null;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:38:0x00b6  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x00bc  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x00c2  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x00c8  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x00ca  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x00d0  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x00d5 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void handlePermanentFlags(com.fsck.k9.mail.store.imap.ImapResponse r12) {
        /*
            Method dump skipped, instructions count: 288
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fsck.k9.mail.store.imap.RealImapFolder.handlePermanentFlags(com.fsck.k9.mail.store.imap.ImapResponse):void");
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void handleUntaggedResponse(ImapResponse imapResponse) {
        int i;
        if (imapResponse.tag != null || imapResponse.size() <= 1) {
            return;
        }
        if (StateLayer.equalsIgnoreCase(imapResponse.get(1), "EXISTS")) {
            this.messageCount = Integer.parseInt((String) imapResponse.get(0));
            if (K9MailLib.debugStatus.enabled()) {
                Log.d("Got untagged EXISTS with value %d for %s", Integer.valueOf(this.messageCount), getLogId());
            }
        }
        if (StateLayer.equalsIgnoreCase(imapResponse.get(0), "OK") && imapResponse.size() > 1) {
            E e = imapResponse.get(1);
            ImapList imapList = e instanceof ImapList ? (ImapList) e : null;
            if (imapList != null) {
                Object firstOrNull = CollectionsKt.firstOrNull((List) imapList);
                String str = firstOrNull instanceof String ? (String) firstOrNull : null;
                if (str != null && "UIDNEXT".equalsIgnoreCase(str)) {
                    this.uidNext = Long.parseLong((String) imapList.get(1));
                    if (K9MailLib.debugStatus.enabled()) {
                        Log.d("Got UidNext = %s for %s", Long.valueOf(this.uidNext), getLogId());
                    }
                }
            }
        }
        if (!StateLayer.equalsIgnoreCase(imapResponse.get(1), "EXPUNGE") || (i = this.messageCount) <= 0) {
            return;
        }
        this.messageCount = i - 1;
        if (K9MailLib.debugStatus.enabled()) {
            Log.d("Got untagged EXPUNGE with messageCount %d for %s", Integer.valueOf(this.messageCount), getLogId());
        }
    }

    public final int hashCode() {
        return this.serverId.hashCode();
    }

    public final MessagingException ioExceptionHandler(RealImapConnection realImapConnection, IOException iOException) {
        Log.e(iOException, "IOException for %s", getLogId());
        if (realImapConnection != null) {
            realImapConnection.close();
        }
        close();
        return new MessagingException("IO Error", false, iOException);
    }

    public final Map moveMessages(ArrayList arrayList, RealImapFolder realImapFolder) {
        if (arrayList.isEmpty()) {
            return null;
        }
        checkOpenWithWriteAccess();
        RealImapConnection realImapConnection = this.connection;
        if (realImapConnection == null || !realImapConnection.hasCapability("MOVE")) {
            ArrayList arrayList2 = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(arrayList, 10));
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                arrayList2.add(((ImapMessage) it.next()).mUid);
            }
            Map copyMessages = copyMessages(arrayList, realImapFolder);
            setFlags(arrayList, Validate.setOf(Flag.DELETED), true);
            expungeUids(arrayList2, this.internalImapStore.config.isExpungeImmediately());
            return copyMessages;
        }
        ArrayList arrayList3 = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(arrayList, 10));
        Iterator it2 = arrayList.iterator();
        while (it2.hasNext()) {
            String str = ((ImapMessage) it2.next()).mUid;
            str.getClass();
            arrayList3.add(Long.valueOf(Long.parseLong(str)));
        }
        Set set = CollectionsKt.toSet(arrayList3);
        String encodeString = RelationUtil.encodeString(this.folderNameCodec.encode(realImapFolder.getPrefixedName()));
        try {
            RealImapConnection realImapConnection2 = this.connection;
            realImapConnection2.getClass();
            Data.Builder parse = ActionBar.parse(realImapConnection2.executeCommandWithIdSet("UID MOVE", encodeString, set), true);
            if (parse != null) {
                return parse.values;
            }
            return null;
        } catch (IOException e) {
            throw this.ioExceptionHandler(this.connection, e);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0081  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0080 A[RETURN] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void open(com.fsck.k9.mail.store.imap.OpenMode r8) {
        /*
            r7 = this;
            com.fsck.k9.mail.store.imap.RealImapConnection r0 = r7.connection
            if (r0 == 0) goto L14
            com.fsck.k9.mail.store.imap.OpenMode r0 = r7.mode
            if (r0 != r8) goto L14
            java.lang.String r0 = "NOOP"
            r7.executeSimpleCommand(r0)     // Catch: java.io.IOException -> Le
            goto L7b
        Le:
            r0 = move-exception
            com.fsck.k9.mail.store.imap.RealImapConnection r1 = r7.connection
            r7.ioExceptionHandler(r1, r0)
        L14:
            com.fsck.k9.mail.store.imap.RealImapStore r0 = r7.connectionManager
            com.fsck.k9.mail.store.imap.RealImapConnection r1 = r7.connection
            r0.releaseConnection(r1)
            monitor-enter(r7)
            com.fsck.k9.mail.store.imap.RealImapStore r0 = r7.connectionManager     // Catch: java.lang.Throwable -> L9e
            com.fsck.k9.mail.store.imap.RealImapConnection r0 = r0.getConnection()     // Catch: java.lang.Throwable -> L9e
            r7.connection = r0     // Catch: java.lang.Throwable -> L9e
            monitor-exit(r7)
            r0 = 0
            r1 = 1
            com.fsck.k9.mail.store.imap.OpenMode r2 = com.fsck.k9.mail.store.imap.OpenMode.READ_WRITE     // Catch: net.thunderbird.core.common.exception.MessagingException -> L2e java.io.IOException -> L30
            if (r8 != r2) goto L32
            java.lang.String r2 = "SELECT"
            goto L34
        L2e:
            r8 = move-exception
            goto L89
        L30:
            r8 = move-exception
            goto L97
        L32:
            java.lang.String r2 = "EXAMINE"
        L34:
            com.fsck.k9.mailstore.LocalFolder$12 r3 = r7.folderNameCodec     // Catch: net.thunderbird.core.common.exception.MessagingException -> L2e java.io.IOException -> L30
            java.lang.String r4 = r7.getPrefixedName()     // Catch: net.thunderbird.core.common.exception.MessagingException -> L2e java.io.IOException -> L30
            java.lang.String r3 = r3.encode(r4)     // Catch: net.thunderbird.core.common.exception.MessagingException -> L2e java.io.IOException -> L30
            java.lang.String r3 = androidx.room.util.RelationUtil.encodeString(r3)     // Catch: net.thunderbird.core.common.exception.MessagingException -> L2e java.io.IOException -> L30
            java.lang.String r4 = "%s %s"
            r5 = 2
            java.lang.Object[] r6 = new java.lang.Object[r5]     // Catch: net.thunderbird.core.common.exception.MessagingException -> L2e java.io.IOException -> L30
            r6[r0] = r2     // Catch: net.thunderbird.core.common.exception.MessagingException -> L2e java.io.IOException -> L30
            r6[r1] = r3     // Catch: net.thunderbird.core.common.exception.MessagingException -> L2e java.io.IOException -> L30
            java.lang.Object[] r2 = java.util.Arrays.copyOf(r6, r5)     // Catch: net.thunderbird.core.common.exception.MessagingException -> L2e java.io.IOException -> L30
            java.lang.String r2 = java.lang.String.format(r4, r2)     // Catch: net.thunderbird.core.common.exception.MessagingException -> L2e java.io.IOException -> L30
            java.util.ArrayList r2 = r7.executeSimpleCommand(r2)     // Catch: net.thunderbird.core.common.exception.MessagingException -> L2e java.io.IOException -> L30
            r7.mode = r8     // Catch: net.thunderbird.core.common.exception.MessagingException -> L2e java.io.IOException -> L30
            java.util.Iterator r8 = r2.iterator()     // Catch: net.thunderbird.core.common.exception.MessagingException -> L2e java.io.IOException -> L30
        L5d:
            boolean r3 = r8.hasNext()     // Catch: net.thunderbird.core.common.exception.MessagingException -> L2e java.io.IOException -> L30
            if (r3 == 0) goto L70
            java.lang.Object r3 = r8.next()     // Catch: net.thunderbird.core.common.exception.MessagingException -> L2e java.io.IOException -> L30
            com.fsck.k9.mail.store.imap.ImapResponse r3 = (com.fsck.k9.mail.store.imap.ImapResponse) r3     // Catch: net.thunderbird.core.common.exception.MessagingException -> L2e java.io.IOException -> L30
            r7.extractUidValidity(r3)     // Catch: net.thunderbird.core.common.exception.MessagingException -> L2e java.io.IOException -> L30
            r7.handlePermanentFlags(r3)     // Catch: net.thunderbird.core.common.exception.MessagingException -> L2e java.io.IOException -> L30
            goto L5d
        L70:
            java.lang.Object r8 = kotlin.collections.CollectionsKt.last(r2)     // Catch: net.thunderbird.core.common.exception.MessagingException -> L2e java.io.IOException -> L30
            com.fsck.k9.mail.store.imap.ImapResponse r8 = (com.fsck.k9.mail.store.imap.ImapResponse) r8     // Catch: net.thunderbird.core.common.exception.MessagingException -> L2e java.io.IOException -> L30
            handleSelectOrExamineOkResponse(r8)     // Catch: net.thunderbird.core.common.exception.MessagingException -> L2e java.io.IOException -> L30
            r7.exists = r1     // Catch: net.thunderbird.core.common.exception.MessagingException -> L2e java.io.IOException -> L30
        L7b:
            int r7 = r7.messageCount
            r8 = -1
            if (r7 == r8) goto L81
            return
        L81:
            net.thunderbird.core.common.exception.MessagingException r7 = new net.thunderbird.core.common.exception.MessagingException
            java.lang.String r8 = "Did not find message count during open"
            r7.<init>(r8)
            throw r7
        L89:
            java.lang.String r2 = "Unable to open connection for %s"
            java.lang.String r7 = r7.getLogId()
            java.lang.Object[] r1 = new java.lang.Object[r1]
            r1[r0] = r7
            net.thunderbird.core.logging.legacy.Log.e(r8, r2, r1)
            throw r8
        L97:
            com.fsck.k9.mail.store.imap.RealImapConnection r0 = r7.connection
            net.thunderbird.core.common.exception.MessagingException r7 = r7.ioExceptionHandler(r0, r8)
            throw r7
        L9e:
            r8 = move-exception
            monitor-exit(r7)
            throw r8
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fsck.k9.mail.store.imap.RealImapFolder.open(com.fsck.k9.mail.store.imap.OpenMode):void");
    }

    public final ArrayList search(String str) {
        try {
            checkOpen();
            this.inSearch = true;
            StringBuilder sb = new StringBuilder("UID SEARCH");
            if (str != null) {
                String encodeString = RelationUtil.encodeString(str);
                sb.append(" OR OR OR OR SUBJECT ");
                sb.append(encodeString);
                sb.append(" FROM ");
                sb.append(encodeString);
                sb.append(" TO ");
                sb.append(encodeString);
                sb.append(" CC ");
                sb.append(encodeString);
                sb.append(" BCC ");
                sb.append(encodeString);
            }
            try {
                return getMessages(OAuthBearer.parse(executeSimpleCommand(sb.toString())));
            } catch (IOException e) {
                throw ioExceptionHandler(this.connection, e);
            }
        } finally {
            this.inSearch = false;
        }
    }

    public final void setFlags(ArrayList arrayList, Set set, boolean z) {
        checkOpenWithWriteAccess();
        ArrayList arrayList2 = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(arrayList, 10));
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            String str = ((ImapMessage) it.next()).mUid;
            str.getClass();
            arrayList2.add(Long.valueOf(Long.parseLong(str)));
        }
        Set set2 = CollectionsKt.toSet(arrayList2);
        String format = String.format("%sFLAGS.SILENT (%s)", Arrays.copyOf(new Object[]{z ? "+" : "-", RelationUtil.combineFlags$tfa_mail_protocols_imap(set, this.canCreateKeywords || this.internalImapStore.permanentFlagsIndex.contains(Flag.FORWARDED))}, 2));
        try {
            RealImapConnection realImapConnection = this.connection;
            realImapConnection.getClass();
            realImapConnection.executeCommandWithIdSet("UID STORE", format, set2);
        } catch (IOException e) {
            throw ioExceptionHandler(this.connection, e);
        }
    }

    public final void setFlagsForAllMessages(Set set) {
        checkOpenWithWriteAccess();
        try {
            executeSimpleCommand(String.format("%s 1:* %sFLAGS.SILENT (%s)", Arrays.copyOf(new Object[]{"UID STORE", "+", RelationUtil.combineFlags$tfa_mail_protocols_imap(set, this.canCreateKeywords || this.internalImapStore.permanentFlagsIndex.contains(Flag.FORWARDED))}, 3)));
        } catch (IOException e) {
            throw ioExceptionHandler(this.connection, e);
        }
    }

    public static ArrayList getMessages(Headers.Builder builder) {
        List sortedWith = CollectionsKt.sortedWith(builder.namesAndValues, NaturalOrderComparator.INSTANCE$1);
        ArrayList arrayList = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(sortedWith, 10));
        Iterator it = sortedWith.iterator();
        while (it.hasNext()) {
            arrayList.add(new ImapMessage(String.valueOf(((Number) it.next()).longValue())));
        }
        return arrayList;
    }
}
