package net.thunderbird.feature.account.storage.legacy;

import androidx.compose.ui.unit.IntOffsetKt;
import com.fsck.k9.preferences.K9StorageEditor;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import net.thunderbird.core.android.account.Identity;
import net.thunderbird.core.android.account.LegacyAccountDto;
import net.thunderbird.core.android.account.MessageFormat;
import net.thunderbird.core.logging.Logger;
import net.thunderbird.core.preference.storage.InMemoryStorage;
import net.thunderbird.feature.account.AccountId;
import net.thunderbird.feature.account.storage.legacy.serializer.ServerSettingsDtoSerializer;
import okhttp3.ConnectionPool;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class LegacyAccountStorageHandler {
    public final Logger logger;
    public final LegacyProfileDtoStorageHandler profileDtoStorageHandler;
    public final ServerSettingsDtoSerializer serverSettingsDtoSerializer;

    public LegacyAccountStorageHandler(ServerSettingsDtoSerializer serverSettingsDtoSerializer, LegacyProfileDtoStorageHandler legacyProfileDtoStorageHandler, Logger logger) {
        this.serverSettingsDtoSerializer = serverSettingsDtoSerializer;
        this.profileDtoStorageHandler = legacyProfileDtoStorageHandler;
        this.logger = logger;
    }

    public final void delete(LegacyAccountDto legacyAccountDto, InMemoryStorage inMemoryStorage, K9StorageEditor k9StorageEditor) {
        List list;
        Collection collection;
        synchronized (this) {
            try {
                ConnectionPool connectionPool = new ConnectionPool(legacyAccountDto.id);
                String str = legacyAccountDto.uuid;
                this.profileDtoStorageHandler.delete(legacyAccountDto, inMemoryStorage, k9StorageEditor);
                String str2 = "";
                String stringOrNull = inMemoryStorage.getStringOrNull("accountUuids");
                if (stringOrNull != null) {
                    str2 = stringOrNull;
                }
                Pattern compile = Pattern.compile(",");
                compile.getClass();
                StringsKt.requireNonNegativeLimit(0);
                Matcher matcher = compile.matcher(str2);
                if (matcher.find()) {
                    ArrayList arrayList = new ArrayList(10);
                    int i = 0;
                    do {
                        arrayList.add(str2.subSequence(i, matcher.start()).toString());
                        i = matcher.end();
                    } while (matcher.find());
                    arrayList.add(str2.subSequence(i, str2.length()).toString());
                    list = arrayList;
                } else {
                    list = IntOffsetKt.listOf(str2.toString());
                }
                if (!list.isEmpty()) {
                    ListIterator listIterator = list.listIterator(list.size());
                    while (listIterator.hasPrevious()) {
                        if (((String) listIterator.previous()).length() != 0) {
                            collection = CollectionsKt.take(list, listIterator.nextIndex() + 1);
                            break;
                        }
                    }
                }
                collection = EmptyList.INSTANCE;
                String[] strArr = (String[]) collection.toArray(new String[0]);
                ArrayList arrayList2 = new ArrayList(strArr.length);
                for (String str3 : strArr) {
                    if (!Intrinsics.areEqual(str3, str)) {
                        arrayList2.add(str3);
                    }
                }
                if (arrayList2.size() < strArr.length) {
                    k9StorageEditor.putString("accountUuids", CollectionsKt.joinToString$default(arrayList2, ",", null, null, null, 62));
                }
                k9StorageEditor.remove(connectionPool.create("oAuthState"));
                k9StorageEditor.remove(connectionPool.create("incomingServerSettings"));
                k9StorageEditor.remove(connectionPool.create("outgoingServerSettings"));
                k9StorageEditor.remove(connectionPool.create("description"));
                k9StorageEditor.remove(connectionPool.create("email"));
                k9StorageEditor.remove(connectionPool.create("alwaysBcc"));
                k9StorageEditor.remove(connectionPool.create("automaticCheckIntervalMinutes"));
                k9StorageEditor.remove(connectionPool.create("idleRefreshMinutes"));
                k9StorageEditor.remove(connectionPool.create("lastAutomaticCheckTime"));
                k9StorageEditor.remove(connectionPool.create("notifyNewMail"));
                k9StorageEditor.remove(connectionPool.create("notifySelfNewMail"));
                k9StorageEditor.remove(connectionPool.create("ignoreChatMessages"));
                k9StorageEditor.remove(connectionPool.create("messagesNotificationChannelVersion"));
                k9StorageEditor.remove(connectionPool.create("deletePolicy"));
                k9StorageEditor.remove(connectionPool.create("draftsFolderName"));
                k9StorageEditor.remove(connectionPool.create("sentFolderName"));
                k9StorageEditor.remove(connectionPool.create("trashFolderName"));
                k9StorageEditor.remove(connectionPool.create("archiveFolderName"));
                k9StorageEditor.remove(connectionPool.create("spamFolderName"));
                k9StorageEditor.remove(connectionPool.create("archiveFolderSelection"));
                k9StorageEditor.remove(connectionPool.create("draftsFolderSelection"));
                k9StorageEditor.remove(connectionPool.create("sentFolderSelection"));
                k9StorageEditor.remove(connectionPool.create("spamFolderSelection"));
                k9StorageEditor.remove(connectionPool.create("trashFolderSelection"));
                k9StorageEditor.remove(connectionPool.create("autoExpandFolderName"));
                k9StorageEditor.remove(connectionPool.create("accountNumber"));
                k9StorageEditor.remove(connectionPool.create("vibrate"));
                k9StorageEditor.remove(connectionPool.create("vibratePattern"));
                k9StorageEditor.remove(connectionPool.create("vibrateTimes"));
                k9StorageEditor.remove(connectionPool.create("ring"));
                k9StorageEditor.remove(connectionPool.create("ringtone"));
                k9StorageEditor.remove(connectionPool.create("folderDisplayMode"));
                k9StorageEditor.remove(connectionPool.create("folderSyncMode"));
                k9StorageEditor.remove(connectionPool.create("folderPushMode"));
                k9StorageEditor.remove(connectionPool.create("signatureBeforeQuotedText"));
                k9StorageEditor.remove(connectionPool.create("expungePolicy"));
                k9StorageEditor.remove(connectionPool.create("syncRemoteDeletions"));
                k9StorageEditor.remove(connectionPool.create("maxPushFolders"));
                k9StorageEditor.remove(connectionPool.create("notificationLight"));
                k9StorageEditor.remove(connectionPool.create("subscribedFoldersOnly"));
                k9StorageEditor.remove(connectionPool.create("maximumPolledMessageAge"));
                k9StorageEditor.remove(connectionPool.create("maximumAutoDownloadMessageSize"));
                k9StorageEditor.remove(connectionPool.create("messageFormatAuto"));
                k9StorageEditor.remove(connectionPool.create("quoteStyle"));
                k9StorageEditor.remove(connectionPool.create("quotePrefix"));
                k9StorageEditor.remove(connectionPool.create("sortTypeEnum"));
                k9StorageEditor.remove(connectionPool.create("sortAscending"));
                k9StorageEditor.remove(connectionPool.create("showPicturesEnum"));
                k9StorageEditor.remove(connectionPool.create("replyAfterQuote"));
                k9StorageEditor.remove(connectionPool.create("stripSignature"));
                k9StorageEditor.remove(connectionPool.create("cryptoApp"));
                k9StorageEditor.remove(connectionPool.create("cryptoAutoSignature"));
                k9StorageEditor.remove(connectionPool.create("cryptoAutoEncrypt"));
                k9StorageEditor.remove(connectionPool.create("cryptoApp"));
                k9StorageEditor.remove(connectionPool.create("cryptoKey"));
                k9StorageEditor.remove(connectionPool.create("cryptoSupportSignOnly"));
                k9StorageEditor.remove(connectionPool.create("openPgpProvider"));
                k9StorageEditor.remove(connectionPool.create("openPgpHideSignOnly"));
                k9StorageEditor.remove(connectionPool.create("openPgpEncryptSubject"));
                k9StorageEditor.remove(connectionPool.create("openPgpEncryptAllDrafts"));
                k9StorageEditor.remove(connectionPool.create("autocryptMutualMode"));
                k9StorageEditor.remove(connectionPool.create("enabled"));
                k9StorageEditor.remove(connectionPool.create("markMessageAsReadOnView"));
                k9StorageEditor.remove(connectionPool.create("markMessageAsReadOnDelete"));
                k9StorageEditor.remove(connectionPool.create("alwaysShowCcBcc"));
                k9StorageEditor.remove(connectionPool.create("remoteSearchFullText"));
                k9StorageEditor.remove(connectionPool.create("remoteSearchNumResults"));
                k9StorageEditor.remove(connectionPool.create("uploadSentMessages"));
                k9StorageEditor.remove(connectionPool.create("defaultQuotedTextShown"));
                k9StorageEditor.remove(connectionPool.create("displayCount"));
                k9StorageEditor.remove(connectionPool.create("inboxFolderName"));
                k9StorageEditor.remove(connectionPool.create("messageFormat"));
                k9StorageEditor.remove(connectionPool.create("messageReadReceipt"));
                k9StorageEditor.remove(connectionPool.create("notifyMailCheck"));
                k9StorageEditor.remove(connectionPool.create("inboxFolderId"));
                k9StorageEditor.remove(connectionPool.create("outboxFolderId"));
                k9StorageEditor.remove(connectionPool.create("draftsFolderId"));
                k9StorageEditor.remove(connectionPool.create("sentFolderId"));
                k9StorageEditor.remove(connectionPool.create("trashFolderId"));
                k9StorageEditor.remove(connectionPool.create("archiveFolderId"));
                k9StorageEditor.remove(connectionPool.create("spamFolderId"));
                k9StorageEditor.remove(connectionPool.create("autoExpandFolderId"));
                k9StorageEditor.remove(connectionPool.create("lastSyncTime"));
                k9StorageEditor.remove(connectionPool.create("lastFolderListRefreshTime"));
                k9StorageEditor.remove(connectionPool.create("isFinishedSetup"));
                k9StorageEditor.remove(connectionPool.create("useCompression"));
                k9StorageEditor.remove(connectionPool.create("sendClientInfo"));
                k9StorageEditor.remove(connectionPool.create("migrateToOAuth"));
                k9StorageEditor.remove(connectionPool.create("folderPathDelimiter"));
                deleteIdentities(legacyAccountDto, inMemoryStorage, k9StorageEditor);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final synchronized void deleteIdentities(LegacyAccountDto legacyAccountDto, InMemoryStorage inMemoryStorage, K9StorageEditor k9StorageEditor) {
        boolean z;
        ConnectionPool connectionPool = new ConnectionPool(legacyAccountDto.id);
        int i = 0;
        do {
            if (inMemoryStorage.getStringOrNull(connectionPool.create("email." + i)) != null) {
                k9StorageEditor.remove(connectionPool.create("name." + i));
                k9StorageEditor.remove(connectionPool.create("email." + i));
                k9StorageEditor.remove(connectionPool.create("signatureUse." + i));
                k9StorageEditor.remove(connectionPool.create("signature." + i));
                k9StorageEditor.remove(connectionPool.create("description." + i));
                k9StorageEditor.remove(connectionPool.create("replyTo." + i));
                z = true;
            } else {
                z = false;
            }
            i++;
        } while (z);
    }

    /* JADX WARN: Removed duplicated region for block: B:104:0x0b22 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:115:0x0a8c A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:126:0x09f6 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:137:0x0957 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:148:0x08af A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:159:0x07ab A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:170:0x06e6 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:181:0x0600 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:192:0x0557 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:203:0x0548  */
    /* JADX WARN: Removed duplicated region for block: B:204:0x04ae A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0290 A[Catch: all -> 0x00ef, TryCatch #8 {all -> 0x00ef, blocks: (B:5:0x0099, B:7:0x00ea, B:8:0x00f2, B:10:0x0128, B:11:0x012b, B:14:0x0143, B:254:0x0149, B:18:0x01da, B:20:0x0290, B:21:0x0296, B:23:0x02a5, B:24:0x02ac, B:26:0x02b4, B:241:0x02ba, B:28:0x0338, B:30:0x0347, B:31:0x034e, B:33:0x0356, B:229:0x035c, B:35:0x03e1, B:37:0x03f0, B:38:0x03f7, B:40:0x03ff, B:217:0x0405, B:42:0x048a, B:44:0x0499, B:45:0x04a0, B:47:0x04a8, B:205:0x04ae, B:49:0x0533, B:51:0x0542, B:52:0x0549, B:54:0x0551, B:193:0x0557, B:56:0x05dc, B:58:0x05eb, B:59:0x05ef, B:61:0x05fa, B:182:0x0600, B:64:0x0687, B:66:0x06e0, B:171:0x06e6, B:68:0x076b, B:70:0x077b, B:72:0x0783, B:73:0x0788, B:75:0x07a5, B:160:0x07ab, B:77:0x0830, B:79:0x08a9, B:149:0x08af, B:81:0x0934, B:83:0x0951, B:138:0x0957, B:85:0x09dc, B:87:0x09f0, B:127:0x09f6, B:89:0x0a7b, B:91:0x0a86, B:116:0x0a8c, B:93:0x0b11, B:95:0x0b1c, B:105:0x0b22, B:97:0x0ba7, B:99:0x0ca9, B:100:0x0cac, B:110:0x0b2c, B:111:0x0b98, B:114:0x0b9a, B:121:0x0a96, B:122:0x0b02, B:125:0x0b04, B:132:0x0a00, B:133:0x0a6c, B:136:0x0a6e, B:143:0x0961, B:144:0x09cd, B:147:0x09cf, B:154:0x08b9, B:155:0x0925, B:158:0x0927, B:165:0x07b5, B:166:0x0821, B:169:0x0823, B:176:0x06f0, B:177:0x075c, B:180:0x075e, B:187:0x0609, B:188:0x0675, B:191:0x067a, B:198:0x0561, B:199:0x05cd, B:202:0x05cf, B:210:0x04b8, B:211:0x0524, B:214:0x0526, B:222:0x040f, B:223:0x047b, B:226:0x047d, B:234:0x0366, B:235:0x03d2, B:238:0x03d4, B:246:0x02c3, B:247:0x0329, B:250:0x032b, B:261:0x0158, B:264:0x015f, B:265:0x01c0, B:268:0x01cd), top: B:4:0x0099, inners: #0, #3, #4, #6, #7, #9, #10, #14, #16, #17, #20, #21, #26 }] */
    /* JADX WARN: Removed duplicated region for block: B:215:0x049f  */
    /* JADX WARN: Removed duplicated region for block: B:216:0x0405 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:227:0x03f6  */
    /* JADX WARN: Removed duplicated region for block: B:228:0x035c A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:239:0x034d  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x02a5 A[Catch: all -> 0x00ef, TryCatch #8 {all -> 0x00ef, blocks: (B:5:0x0099, B:7:0x00ea, B:8:0x00f2, B:10:0x0128, B:11:0x012b, B:14:0x0143, B:254:0x0149, B:18:0x01da, B:20:0x0290, B:21:0x0296, B:23:0x02a5, B:24:0x02ac, B:26:0x02b4, B:241:0x02ba, B:28:0x0338, B:30:0x0347, B:31:0x034e, B:33:0x0356, B:229:0x035c, B:35:0x03e1, B:37:0x03f0, B:38:0x03f7, B:40:0x03ff, B:217:0x0405, B:42:0x048a, B:44:0x0499, B:45:0x04a0, B:47:0x04a8, B:205:0x04ae, B:49:0x0533, B:51:0x0542, B:52:0x0549, B:54:0x0551, B:193:0x0557, B:56:0x05dc, B:58:0x05eb, B:59:0x05ef, B:61:0x05fa, B:182:0x0600, B:64:0x0687, B:66:0x06e0, B:171:0x06e6, B:68:0x076b, B:70:0x077b, B:72:0x0783, B:73:0x0788, B:75:0x07a5, B:160:0x07ab, B:77:0x0830, B:79:0x08a9, B:149:0x08af, B:81:0x0934, B:83:0x0951, B:138:0x0957, B:85:0x09dc, B:87:0x09f0, B:127:0x09f6, B:89:0x0a7b, B:91:0x0a86, B:116:0x0a8c, B:93:0x0b11, B:95:0x0b1c, B:105:0x0b22, B:97:0x0ba7, B:99:0x0ca9, B:100:0x0cac, B:110:0x0b2c, B:111:0x0b98, B:114:0x0b9a, B:121:0x0a96, B:122:0x0b02, B:125:0x0b04, B:132:0x0a00, B:133:0x0a6c, B:136:0x0a6e, B:143:0x0961, B:144:0x09cd, B:147:0x09cf, B:154:0x08b9, B:155:0x0925, B:158:0x0927, B:165:0x07b5, B:166:0x0821, B:169:0x0823, B:176:0x06f0, B:177:0x075c, B:180:0x075e, B:187:0x0609, B:188:0x0675, B:191:0x067a, B:198:0x0561, B:199:0x05cd, B:202:0x05cf, B:210:0x04b8, B:211:0x0524, B:214:0x0526, B:222:0x040f, B:223:0x047b, B:226:0x047d, B:234:0x0366, B:235:0x03d2, B:238:0x03d4, B:246:0x02c3, B:247:0x0329, B:250:0x032b, B:261:0x0158, B:264:0x015f, B:265:0x01c0, B:268:0x01cd), top: B:4:0x0099, inners: #0, #3, #4, #6, #7, #9, #10, #14, #16, #17, #20, #21, #26 }] */
    /* JADX WARN: Removed duplicated region for block: B:240:0x02ba A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:251:0x02ab  */
    /* JADX WARN: Removed duplicated region for block: B:252:0x0295  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0347 A[Catch: all -> 0x00ef, TryCatch #8 {all -> 0x00ef, blocks: (B:5:0x0099, B:7:0x00ea, B:8:0x00f2, B:10:0x0128, B:11:0x012b, B:14:0x0143, B:254:0x0149, B:18:0x01da, B:20:0x0290, B:21:0x0296, B:23:0x02a5, B:24:0x02ac, B:26:0x02b4, B:241:0x02ba, B:28:0x0338, B:30:0x0347, B:31:0x034e, B:33:0x0356, B:229:0x035c, B:35:0x03e1, B:37:0x03f0, B:38:0x03f7, B:40:0x03ff, B:217:0x0405, B:42:0x048a, B:44:0x0499, B:45:0x04a0, B:47:0x04a8, B:205:0x04ae, B:49:0x0533, B:51:0x0542, B:52:0x0549, B:54:0x0551, B:193:0x0557, B:56:0x05dc, B:58:0x05eb, B:59:0x05ef, B:61:0x05fa, B:182:0x0600, B:64:0x0687, B:66:0x06e0, B:171:0x06e6, B:68:0x076b, B:70:0x077b, B:72:0x0783, B:73:0x0788, B:75:0x07a5, B:160:0x07ab, B:77:0x0830, B:79:0x08a9, B:149:0x08af, B:81:0x0934, B:83:0x0951, B:138:0x0957, B:85:0x09dc, B:87:0x09f0, B:127:0x09f6, B:89:0x0a7b, B:91:0x0a86, B:116:0x0a8c, B:93:0x0b11, B:95:0x0b1c, B:105:0x0b22, B:97:0x0ba7, B:99:0x0ca9, B:100:0x0cac, B:110:0x0b2c, B:111:0x0b98, B:114:0x0b9a, B:121:0x0a96, B:122:0x0b02, B:125:0x0b04, B:132:0x0a00, B:133:0x0a6c, B:136:0x0a6e, B:143:0x0961, B:144:0x09cd, B:147:0x09cf, B:154:0x08b9, B:155:0x0925, B:158:0x0927, B:165:0x07b5, B:166:0x0821, B:169:0x0823, B:176:0x06f0, B:177:0x075c, B:180:0x075e, B:187:0x0609, B:188:0x0675, B:191:0x067a, B:198:0x0561, B:199:0x05cd, B:202:0x05cf, B:210:0x04b8, B:211:0x0524, B:214:0x0526, B:222:0x040f, B:223:0x047b, B:226:0x047d, B:234:0x0366, B:235:0x03d2, B:238:0x03d4, B:246:0x02c3, B:247:0x0329, B:250:0x032b, B:261:0x0158, B:264:0x015f, B:265:0x01c0, B:268:0x01cd), top: B:4:0x0099, inners: #0, #3, #4, #6, #7, #9, #10, #14, #16, #17, #20, #21, #26 }] */
    /* JADX WARN: Removed duplicated region for block: B:37:0x03f0 A[Catch: all -> 0x00ef, TryCatch #8 {all -> 0x00ef, blocks: (B:5:0x0099, B:7:0x00ea, B:8:0x00f2, B:10:0x0128, B:11:0x012b, B:14:0x0143, B:254:0x0149, B:18:0x01da, B:20:0x0290, B:21:0x0296, B:23:0x02a5, B:24:0x02ac, B:26:0x02b4, B:241:0x02ba, B:28:0x0338, B:30:0x0347, B:31:0x034e, B:33:0x0356, B:229:0x035c, B:35:0x03e1, B:37:0x03f0, B:38:0x03f7, B:40:0x03ff, B:217:0x0405, B:42:0x048a, B:44:0x0499, B:45:0x04a0, B:47:0x04a8, B:205:0x04ae, B:49:0x0533, B:51:0x0542, B:52:0x0549, B:54:0x0551, B:193:0x0557, B:56:0x05dc, B:58:0x05eb, B:59:0x05ef, B:61:0x05fa, B:182:0x0600, B:64:0x0687, B:66:0x06e0, B:171:0x06e6, B:68:0x076b, B:70:0x077b, B:72:0x0783, B:73:0x0788, B:75:0x07a5, B:160:0x07ab, B:77:0x0830, B:79:0x08a9, B:149:0x08af, B:81:0x0934, B:83:0x0951, B:138:0x0957, B:85:0x09dc, B:87:0x09f0, B:127:0x09f6, B:89:0x0a7b, B:91:0x0a86, B:116:0x0a8c, B:93:0x0b11, B:95:0x0b1c, B:105:0x0b22, B:97:0x0ba7, B:99:0x0ca9, B:100:0x0cac, B:110:0x0b2c, B:111:0x0b98, B:114:0x0b9a, B:121:0x0a96, B:122:0x0b02, B:125:0x0b04, B:132:0x0a00, B:133:0x0a6c, B:136:0x0a6e, B:143:0x0961, B:144:0x09cd, B:147:0x09cf, B:154:0x08b9, B:155:0x0925, B:158:0x0927, B:165:0x07b5, B:166:0x0821, B:169:0x0823, B:176:0x06f0, B:177:0x075c, B:180:0x075e, B:187:0x0609, B:188:0x0675, B:191:0x067a, B:198:0x0561, B:199:0x05cd, B:202:0x05cf, B:210:0x04b8, B:211:0x0524, B:214:0x0526, B:222:0x040f, B:223:0x047b, B:226:0x047d, B:234:0x0366, B:235:0x03d2, B:238:0x03d4, B:246:0x02c3, B:247:0x0329, B:250:0x032b, B:261:0x0158, B:264:0x015f, B:265:0x01c0, B:268:0x01cd), top: B:4:0x0099, inners: #0, #3, #4, #6, #7, #9, #10, #14, #16, #17, #20, #21, #26 }] */
    /* JADX WARN: Removed duplicated region for block: B:44:0x0499 A[Catch: all -> 0x00ef, TryCatch #8 {all -> 0x00ef, blocks: (B:5:0x0099, B:7:0x00ea, B:8:0x00f2, B:10:0x0128, B:11:0x012b, B:14:0x0143, B:254:0x0149, B:18:0x01da, B:20:0x0290, B:21:0x0296, B:23:0x02a5, B:24:0x02ac, B:26:0x02b4, B:241:0x02ba, B:28:0x0338, B:30:0x0347, B:31:0x034e, B:33:0x0356, B:229:0x035c, B:35:0x03e1, B:37:0x03f0, B:38:0x03f7, B:40:0x03ff, B:217:0x0405, B:42:0x048a, B:44:0x0499, B:45:0x04a0, B:47:0x04a8, B:205:0x04ae, B:49:0x0533, B:51:0x0542, B:52:0x0549, B:54:0x0551, B:193:0x0557, B:56:0x05dc, B:58:0x05eb, B:59:0x05ef, B:61:0x05fa, B:182:0x0600, B:64:0x0687, B:66:0x06e0, B:171:0x06e6, B:68:0x076b, B:70:0x077b, B:72:0x0783, B:73:0x0788, B:75:0x07a5, B:160:0x07ab, B:77:0x0830, B:79:0x08a9, B:149:0x08af, B:81:0x0934, B:83:0x0951, B:138:0x0957, B:85:0x09dc, B:87:0x09f0, B:127:0x09f6, B:89:0x0a7b, B:91:0x0a86, B:116:0x0a8c, B:93:0x0b11, B:95:0x0b1c, B:105:0x0b22, B:97:0x0ba7, B:99:0x0ca9, B:100:0x0cac, B:110:0x0b2c, B:111:0x0b98, B:114:0x0b9a, B:121:0x0a96, B:122:0x0b02, B:125:0x0b04, B:132:0x0a00, B:133:0x0a6c, B:136:0x0a6e, B:143:0x0961, B:144:0x09cd, B:147:0x09cf, B:154:0x08b9, B:155:0x0925, B:158:0x0927, B:165:0x07b5, B:166:0x0821, B:169:0x0823, B:176:0x06f0, B:177:0x075c, B:180:0x075e, B:187:0x0609, B:188:0x0675, B:191:0x067a, B:198:0x0561, B:199:0x05cd, B:202:0x05cf, B:210:0x04b8, B:211:0x0524, B:214:0x0526, B:222:0x040f, B:223:0x047b, B:226:0x047d, B:234:0x0366, B:235:0x03d2, B:238:0x03d4, B:246:0x02c3, B:247:0x0329, B:250:0x032b, B:261:0x0158, B:264:0x015f, B:265:0x01c0, B:268:0x01cd), top: B:4:0x0099, inners: #0, #3, #4, #6, #7, #9, #10, #14, #16, #17, #20, #21, #26 }] */
    /* JADX WARN: Removed duplicated region for block: B:51:0x0542 A[Catch: all -> 0x00ef, TryCatch #8 {all -> 0x00ef, blocks: (B:5:0x0099, B:7:0x00ea, B:8:0x00f2, B:10:0x0128, B:11:0x012b, B:14:0x0143, B:254:0x0149, B:18:0x01da, B:20:0x0290, B:21:0x0296, B:23:0x02a5, B:24:0x02ac, B:26:0x02b4, B:241:0x02ba, B:28:0x0338, B:30:0x0347, B:31:0x034e, B:33:0x0356, B:229:0x035c, B:35:0x03e1, B:37:0x03f0, B:38:0x03f7, B:40:0x03ff, B:217:0x0405, B:42:0x048a, B:44:0x0499, B:45:0x04a0, B:47:0x04a8, B:205:0x04ae, B:49:0x0533, B:51:0x0542, B:52:0x0549, B:54:0x0551, B:193:0x0557, B:56:0x05dc, B:58:0x05eb, B:59:0x05ef, B:61:0x05fa, B:182:0x0600, B:64:0x0687, B:66:0x06e0, B:171:0x06e6, B:68:0x076b, B:70:0x077b, B:72:0x0783, B:73:0x0788, B:75:0x07a5, B:160:0x07ab, B:77:0x0830, B:79:0x08a9, B:149:0x08af, B:81:0x0934, B:83:0x0951, B:138:0x0957, B:85:0x09dc, B:87:0x09f0, B:127:0x09f6, B:89:0x0a7b, B:91:0x0a86, B:116:0x0a8c, B:93:0x0b11, B:95:0x0b1c, B:105:0x0b22, B:97:0x0ba7, B:99:0x0ca9, B:100:0x0cac, B:110:0x0b2c, B:111:0x0b98, B:114:0x0b9a, B:121:0x0a96, B:122:0x0b02, B:125:0x0b04, B:132:0x0a00, B:133:0x0a6c, B:136:0x0a6e, B:143:0x0961, B:144:0x09cd, B:147:0x09cf, B:154:0x08b9, B:155:0x0925, B:158:0x0927, B:165:0x07b5, B:166:0x0821, B:169:0x0823, B:176:0x06f0, B:177:0x075c, B:180:0x075e, B:187:0x0609, B:188:0x0675, B:191:0x067a, B:198:0x0561, B:199:0x05cd, B:202:0x05cf, B:210:0x04b8, B:211:0x0524, B:214:0x0526, B:222:0x040f, B:223:0x047b, B:226:0x047d, B:234:0x0366, B:235:0x03d2, B:238:0x03d4, B:246:0x02c3, B:247:0x0329, B:250:0x032b, B:261:0x0158, B:264:0x015f, B:265:0x01c0, B:268:0x01cd), top: B:4:0x0099, inners: #0, #3, #4, #6, #7, #9, #10, #14, #16, #17, #20, #21, #26 }] */
    /* JADX WARN: Removed duplicated region for block: B:58:0x05eb A[Catch: all -> 0x00ef, TryCatch #8 {all -> 0x00ef, blocks: (B:5:0x0099, B:7:0x00ea, B:8:0x00f2, B:10:0x0128, B:11:0x012b, B:14:0x0143, B:254:0x0149, B:18:0x01da, B:20:0x0290, B:21:0x0296, B:23:0x02a5, B:24:0x02ac, B:26:0x02b4, B:241:0x02ba, B:28:0x0338, B:30:0x0347, B:31:0x034e, B:33:0x0356, B:229:0x035c, B:35:0x03e1, B:37:0x03f0, B:38:0x03f7, B:40:0x03ff, B:217:0x0405, B:42:0x048a, B:44:0x0499, B:45:0x04a0, B:47:0x04a8, B:205:0x04ae, B:49:0x0533, B:51:0x0542, B:52:0x0549, B:54:0x0551, B:193:0x0557, B:56:0x05dc, B:58:0x05eb, B:59:0x05ef, B:61:0x05fa, B:182:0x0600, B:64:0x0687, B:66:0x06e0, B:171:0x06e6, B:68:0x076b, B:70:0x077b, B:72:0x0783, B:73:0x0788, B:75:0x07a5, B:160:0x07ab, B:77:0x0830, B:79:0x08a9, B:149:0x08af, B:81:0x0934, B:83:0x0951, B:138:0x0957, B:85:0x09dc, B:87:0x09f0, B:127:0x09f6, B:89:0x0a7b, B:91:0x0a86, B:116:0x0a8c, B:93:0x0b11, B:95:0x0b1c, B:105:0x0b22, B:97:0x0ba7, B:99:0x0ca9, B:100:0x0cac, B:110:0x0b2c, B:111:0x0b98, B:114:0x0b9a, B:121:0x0a96, B:122:0x0b02, B:125:0x0b04, B:132:0x0a00, B:133:0x0a6c, B:136:0x0a6e, B:143:0x0961, B:144:0x09cd, B:147:0x09cf, B:154:0x08b9, B:155:0x0925, B:158:0x0927, B:165:0x07b5, B:166:0x0821, B:169:0x0823, B:176:0x06f0, B:177:0x075c, B:180:0x075e, B:187:0x0609, B:188:0x0675, B:191:0x067a, B:198:0x0561, B:199:0x05cd, B:202:0x05cf, B:210:0x04b8, B:211:0x0524, B:214:0x0526, B:222:0x040f, B:223:0x047b, B:226:0x047d, B:234:0x0366, B:235:0x03d2, B:238:0x03d4, B:246:0x02c3, B:247:0x0329, B:250:0x032b, B:261:0x0158, B:264:0x015f, B:265:0x01c0, B:268:0x01cd), top: B:4:0x0099, inners: #0, #3, #4, #6, #7, #9, #10, #14, #16, #17, #20, #21, #26 }] */
    /* JADX WARN: Removed duplicated region for block: B:70:0x077b A[Catch: all -> 0x00ef, TryCatch #8 {all -> 0x00ef, blocks: (B:5:0x0099, B:7:0x00ea, B:8:0x00f2, B:10:0x0128, B:11:0x012b, B:14:0x0143, B:254:0x0149, B:18:0x01da, B:20:0x0290, B:21:0x0296, B:23:0x02a5, B:24:0x02ac, B:26:0x02b4, B:241:0x02ba, B:28:0x0338, B:30:0x0347, B:31:0x034e, B:33:0x0356, B:229:0x035c, B:35:0x03e1, B:37:0x03f0, B:38:0x03f7, B:40:0x03ff, B:217:0x0405, B:42:0x048a, B:44:0x0499, B:45:0x04a0, B:47:0x04a8, B:205:0x04ae, B:49:0x0533, B:51:0x0542, B:52:0x0549, B:54:0x0551, B:193:0x0557, B:56:0x05dc, B:58:0x05eb, B:59:0x05ef, B:61:0x05fa, B:182:0x0600, B:64:0x0687, B:66:0x06e0, B:171:0x06e6, B:68:0x076b, B:70:0x077b, B:72:0x0783, B:73:0x0788, B:75:0x07a5, B:160:0x07ab, B:77:0x0830, B:79:0x08a9, B:149:0x08af, B:81:0x0934, B:83:0x0951, B:138:0x0957, B:85:0x09dc, B:87:0x09f0, B:127:0x09f6, B:89:0x0a7b, B:91:0x0a86, B:116:0x0a8c, B:93:0x0b11, B:95:0x0b1c, B:105:0x0b22, B:97:0x0ba7, B:99:0x0ca9, B:100:0x0cac, B:110:0x0b2c, B:111:0x0b98, B:114:0x0b9a, B:121:0x0a96, B:122:0x0b02, B:125:0x0b04, B:132:0x0a00, B:133:0x0a6c, B:136:0x0a6e, B:143:0x0961, B:144:0x09cd, B:147:0x09cf, B:154:0x08b9, B:155:0x0925, B:158:0x0927, B:165:0x07b5, B:166:0x0821, B:169:0x0823, B:176:0x06f0, B:177:0x075c, B:180:0x075e, B:187:0x0609, B:188:0x0675, B:191:0x067a, B:198:0x0561, B:199:0x05cd, B:202:0x05cf, B:210:0x04b8, B:211:0x0524, B:214:0x0526, B:222:0x040f, B:223:0x047b, B:226:0x047d, B:234:0x0366, B:235:0x03d2, B:238:0x03d4, B:246:0x02c3, B:247:0x0329, B:250:0x032b, B:261:0x0158, B:264:0x015f, B:265:0x01c0, B:268:0x01cd), top: B:4:0x0099, inners: #0, #3, #4, #6, #7, #9, #10, #14, #16, #17, #20, #21, #26 }] */
    /* JADX WARN: Removed duplicated region for block: B:99:0x0ca9 A[Catch: all -> 0x00ef, TryCatch #8 {all -> 0x00ef, blocks: (B:5:0x0099, B:7:0x00ea, B:8:0x00f2, B:10:0x0128, B:11:0x012b, B:14:0x0143, B:254:0x0149, B:18:0x01da, B:20:0x0290, B:21:0x0296, B:23:0x02a5, B:24:0x02ac, B:26:0x02b4, B:241:0x02ba, B:28:0x0338, B:30:0x0347, B:31:0x034e, B:33:0x0356, B:229:0x035c, B:35:0x03e1, B:37:0x03f0, B:38:0x03f7, B:40:0x03ff, B:217:0x0405, B:42:0x048a, B:44:0x0499, B:45:0x04a0, B:47:0x04a8, B:205:0x04ae, B:49:0x0533, B:51:0x0542, B:52:0x0549, B:54:0x0551, B:193:0x0557, B:56:0x05dc, B:58:0x05eb, B:59:0x05ef, B:61:0x05fa, B:182:0x0600, B:64:0x0687, B:66:0x06e0, B:171:0x06e6, B:68:0x076b, B:70:0x077b, B:72:0x0783, B:73:0x0788, B:75:0x07a5, B:160:0x07ab, B:77:0x0830, B:79:0x08a9, B:149:0x08af, B:81:0x0934, B:83:0x0951, B:138:0x0957, B:85:0x09dc, B:87:0x09f0, B:127:0x09f6, B:89:0x0a7b, B:91:0x0a86, B:116:0x0a8c, B:93:0x0b11, B:95:0x0b1c, B:105:0x0b22, B:97:0x0ba7, B:99:0x0ca9, B:100:0x0cac, B:110:0x0b2c, B:111:0x0b98, B:114:0x0b9a, B:121:0x0a96, B:122:0x0b02, B:125:0x0b04, B:132:0x0a00, B:133:0x0a6c, B:136:0x0a6e, B:143:0x0961, B:144:0x09cd, B:147:0x09cf, B:154:0x08b9, B:155:0x0925, B:158:0x0927, B:165:0x07b5, B:166:0x0821, B:169:0x0823, B:176:0x06f0, B:177:0x075c, B:180:0x075e, B:187:0x0609, B:188:0x0675, B:191:0x067a, B:198:0x0561, B:199:0x05cd, B:202:0x05cf, B:210:0x04b8, B:211:0x0524, B:214:0x0526, B:222:0x040f, B:223:0x047b, B:226:0x047d, B:234:0x0366, B:235:0x03d2, B:238:0x03d4, B:246:0x02c3, B:247:0x0329, B:250:0x032b, B:261:0x0158, B:264:0x015f, B:265:0x01c0, B:268:0x01cd), top: B:4:0x0099, inners: #0, #3, #4, #6, #7, #9, #10, #14, #16, #17, #20, #21, #26 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final synchronized void load(net.thunderbird.core.android.account.LegacyAccountDto r59, net.thunderbird.core.preference.storage.InMemoryStorage r60) {
        /*
            Method dump skipped, instructions count: 3251
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: net.thunderbird.feature.account.storage.legacy.LegacyAccountStorageHandler.load(net.thunderbird.core.android.account.LegacyAccountDto, net.thunderbird.core.preference.storage.InMemoryStorage):void");
    }

    public final synchronized ArrayList loadIdentities(AccountId accountId, InMemoryStorage inMemoryStorage) {
        ArrayList arrayList;
        boolean z;
        try {
            arrayList = new ArrayList();
            ConnectionPool connectionPool = new ConnectionPool(accountId);
            int i = 0;
            do {
                String stringOrNull = inMemoryStorage.getStringOrNull(connectionPool.create("name." + i));
                String stringOrNull2 = inMemoryStorage.getStringOrNull(connectionPool.create("email." + i));
                boolean z2 = inMemoryStorage.getBoolean(connectionPool.create("signatureUse." + i), false);
                String stringOrNull3 = inMemoryStorage.getStringOrNull(connectionPool.create("signature." + i));
                String stringOrNull4 = inMemoryStorage.getStringOrNull(connectionPool.create("description." + i));
                String stringOrNull5 = inMemoryStorage.getStringOrNull(connectionPool.create("replyTo." + i));
                if (stringOrNull2 != null) {
                    arrayList.add(new Identity(stringOrNull4, stringOrNull, stringOrNull2, stringOrNull3, z2, stringOrNull5));
                    z = true;
                } else {
                    z = false;
                }
                i++;
            } while (z);
            if (arrayList.isEmpty()) {
                String stringOrNull6 = inMemoryStorage.getStringOrNull(connectionPool.create("name"));
                String stringOrNull7 = inMemoryStorage.getStringOrNull(connectionPool.create("email"));
                arrayList.add(new Identity(stringOrNull7, stringOrNull6, stringOrNull7, inMemoryStorage.getStringOrNull(connectionPool.create("signature")), inMemoryStorage.getBoolean(connectionPool.create("signatureUse"), false), 32));
            }
        } catch (Throwable th) {
            throw th;
        }
        return arrayList;
    }

    public final void save(LegacyAccountDto legacyAccountDto, InMemoryStorage inMemoryStorage, K9StorageEditor k9StorageEditor) {
        boolean z;
        synchronized (this) {
            try {
                legacyAccountDto.getClass();
                ConnectionPool connectionPool = new ConnectionPool(legacyAccountDto.id);
                this.profileDtoStorageHandler.save(legacyAccountDto, inMemoryStorage, k9StorageEditor);
                String str = "";
                String stringOrNull = inMemoryStorage.getStringOrNull("accountUuids");
                if (stringOrNull != null) {
                    str = stringOrNull;
                }
                if (!StringsKt.contains(str, legacyAccountDto.uuid, false)) {
                    String str2 = "";
                    String stringOrNull2 = inMemoryStorage.getStringOrNull("accountUuids");
                    if (stringOrNull2 != null) {
                        str2 = stringOrNull2;
                    }
                    String str3 = str2.length() > 0 ? "," : "";
                    k9StorageEditor.putString("accountUuids", str2 + str3 + legacyAccountDto.uuid);
                }
                k9StorageEditor.putString(connectionPool.create("incomingServerSettings"), this.serverSettingsDtoSerializer.adapter.toJson(legacyAccountDto.getIncomingServerSettings()));
                k9StorageEditor.putString(connectionPool.create("outgoingServerSettings"), this.serverSettingsDtoSerializer.adapter.toJson(legacyAccountDto.getOutgoingServerSettings()));
                k9StorageEditor.putString(connectionPool.create("oAuthState"), legacyAccountDto.getOAuthState());
                k9StorageEditor.putString(connectionPool.create("alwaysBcc"), legacyAccountDto.getAlwaysBcc());
                k9StorageEditor.putInt(connectionPool.create("automaticCheckIntervalMinutes"), legacyAccountDto.getAutomaticCheckIntervalMinutes());
                k9StorageEditor.putInt(connectionPool.create("idleRefreshMinutes"), legacyAccountDto.getIdleRefreshMinutes());
                k9StorageEditor.putInt(connectionPool.create("displayCount"), legacyAccountDto.getDisplayCount());
                k9StorageEditor.putBoolean(connectionPool.create("notifyNewMail"), legacyAccountDto.isNotifyNewMail());
                k9StorageEditor.putString(connectionPool.create("folderNotifyNewMailMode"), legacyAccountDto.getFolderNotifyNewMailMode().name());
                k9StorageEditor.putBoolean(connectionPool.create("notifySelfNewMail"), legacyAccountDto.isNotifySelfNewMail());
                k9StorageEditor.putBoolean(connectionPool.create("notifyContactsMailOnly"), legacyAccountDto.isNotifyContactsMailOnly());
                k9StorageEditor.putBoolean(connectionPool.create("ignoreChatMessages"), legacyAccountDto.isIgnoreChatMessages());
                k9StorageEditor.putBoolean(connectionPool.create("notifyMailCheck"), legacyAccountDto.isNotifySync());
                k9StorageEditor.putInt(connectionPool.create("messagesNotificationChannelVersion"), legacyAccountDto.getMessagesNotificationChannelVersion());
                k9StorageEditor.putInt(connectionPool.create("deletePolicy"), legacyAccountDto.getDeletePolicy().setting);
                k9StorageEditor.putString(connectionPool.create("inboxFolderName"), legacyAccountDto.getLegacyInboxFolder());
                k9StorageEditor.putString(connectionPool.create("draftsFolderName"), legacyAccountDto.getImportedDraftsFolder());
                k9StorageEditor.putString(connectionPool.create("sentFolderName"), legacyAccountDto.getImportedSentFolder());
                k9StorageEditor.putString(connectionPool.create("trashFolderName"), legacyAccountDto.getImportedTrashFolder());
                k9StorageEditor.putString(connectionPool.create("archiveFolderName"), legacyAccountDto.getImportedArchiveFolder());
                k9StorageEditor.putString(connectionPool.create("spamFolderName"), legacyAccountDto.getImportedSpamFolder());
                String create = connectionPool.create("inboxFolderId");
                Long inboxFolderId = legacyAccountDto.getInboxFolderId();
                k9StorageEditor.putString(create, inboxFolderId != null ? String.valueOf(inboxFolderId.longValue()) : null);
                String create2 = connectionPool.create("draftsFolderId");
                Long draftsFolderId = legacyAccountDto.getDraftsFolderId();
                k9StorageEditor.putString(create2, draftsFolderId != null ? String.valueOf(draftsFolderId.longValue()) : null);
                String create3 = connectionPool.create("sentFolderId");
                Long sentFolderId = legacyAccountDto.getSentFolderId();
                k9StorageEditor.putString(create3, sentFolderId != null ? String.valueOf(sentFolderId.longValue()) : null);
                String create4 = connectionPool.create("trashFolderId");
                Long trashFolderId = legacyAccountDto.getTrashFolderId();
                k9StorageEditor.putString(create4, trashFolderId != null ? String.valueOf(trashFolderId.longValue()) : null);
                String create5 = connectionPool.create("archiveFolderId");
                Long archiveFolderId = legacyAccountDto.getArchiveFolderId();
                k9StorageEditor.putString(create5, archiveFolderId != null ? String.valueOf(archiveFolderId.longValue()) : null);
                String create6 = connectionPool.create("spamFolderId");
                Long spamFolderId = legacyAccountDto.getSpamFolderId();
                k9StorageEditor.putString(create6, spamFolderId != null ? String.valueOf(spamFolderId.longValue()) : null);
                k9StorageEditor.putString(connectionPool.create("archiveFolderSelection"), legacyAccountDto.getArchiveFolderSelection().name());
                k9StorageEditor.putString(connectionPool.create("draftsFolderSelection"), legacyAccountDto.getDraftsFolderSelection().name());
                k9StorageEditor.putString(connectionPool.create("sentFolderSelection"), legacyAccountDto.getSentFolderSelection().name());
                k9StorageEditor.putString(connectionPool.create("spamFolderSelection"), legacyAccountDto.getSpamFolderSelection().name());
                k9StorageEditor.putString(connectionPool.create("trashFolderSelection"), legacyAccountDto.getTrashFolderSelection().name());
                k9StorageEditor.putString(connectionPool.create("autoExpandFolderName"), legacyAccountDto.getImportedAutoExpandFolder());
                String create7 = connectionPool.create("autoExpandFolderId");
                Long autoExpandFolderId = legacyAccountDto.getAutoExpandFolderId();
                k9StorageEditor.putString(create7, autoExpandFolderId != null ? String.valueOf(autoExpandFolderId.longValue()) : null);
                k9StorageEditor.putInt(connectionPool.create("accountNumber"), legacyAccountDto.getAccountNumber());
                k9StorageEditor.putString(connectionPool.create("sortTypeEnum"), legacyAccountDto.getSortType().name());
                k9StorageEditor.putBoolean(connectionPool.create("sortAscending"), legacyAccountDto.isSortAscending(legacyAccountDto.getSortType()));
                k9StorageEditor.putString(connectionPool.create("showPicturesEnum"), legacyAccountDto.getShowPictures().name());
                k9StorageEditor.putString(connectionPool.create("folderDisplayMode"), legacyAccountDto.getFolderDisplayMode().name());
                k9StorageEditor.putString(connectionPool.create("folderSyncMode"), legacyAccountDto.getFolderSyncMode().name());
                k9StorageEditor.putString(connectionPool.create("folderPushMode"), legacyAccountDto.getFolderPushMode().name());
                k9StorageEditor.putBoolean(connectionPool.create("signatureBeforeQuotedText"), legacyAccountDto.isSignatureBeforeQuotedText());
                k9StorageEditor.putString(connectionPool.create("expungePolicy"), legacyAccountDto.getExpungePolicy().name());
                k9StorageEditor.putBoolean(connectionPool.create("syncRemoteDeletions"), legacyAccountDto.isSyncRemoteDeletions());
                k9StorageEditor.putInt(connectionPool.create("maxPushFolders"), legacyAccountDto.getMaxPushFolders());
                k9StorageEditor.putBoolean(connectionPool.create("subscribedFoldersOnly"), legacyAccountDto.isSubscribedFoldersOnly());
                k9StorageEditor.putInt(connectionPool.create("maximumPolledMessageAge"), legacyAccountDto.getMaximumPolledMessageAge());
                k9StorageEditor.putInt(connectionPool.create("maximumAutoDownloadMessageSize"), legacyAccountDto.getMaximumAutoDownloadMessageSize());
                if (MessageFormat.AUTO == legacyAccountDto.getMessageFormat()) {
                    k9StorageEditor.putString(connectionPool.create("messageFormat"), "TEXT");
                    z = true;
                } else {
                    k9StorageEditor.putString(connectionPool.create("messageFormat"), legacyAccountDto.getMessageFormat().name());
                    z = false;
                }
                k9StorageEditor.putBoolean(connectionPool.create("messageFormatAuto"), z);
                k9StorageEditor.putBoolean(connectionPool.create("messageReadReceipt"), legacyAccountDto.isMessageReadReceipt());
                k9StorageEditor.putString(connectionPool.create("quoteStyle"), legacyAccountDto.getQuoteStyle().name());
                k9StorageEditor.putString(connectionPool.create("quotePrefix"), legacyAccountDto.getQuotePrefix());
                k9StorageEditor.putBoolean(connectionPool.create("defaultQuotedTextShown"), legacyAccountDto.isDefaultQuotedTextShown());
                k9StorageEditor.putBoolean(connectionPool.create("replyAfterQuote"), legacyAccountDto.isReplyAfterQuote());
                k9StorageEditor.putBoolean(connectionPool.create("stripSignature"), legacyAccountDto.isStripSignature());
                k9StorageEditor.putLong(legacyAccountDto.getOpenPgpKey(), connectionPool.create("cryptoKey"));
                k9StorageEditor.putBoolean(connectionPool.create("openPgpHideSignOnly"), legacyAccountDto.isOpenPgpHideSignOnly());
                k9StorageEditor.putBoolean(connectionPool.create("openPgpEncryptSubject"), legacyAccountDto.isOpenPgpEncryptSubject());
                k9StorageEditor.putBoolean(connectionPool.create("openPgpEncryptAllDrafts"), legacyAccountDto.isOpenPgpEncryptAllDrafts());
                k9StorageEditor.putString(connectionPool.create("openPgpProvider"), legacyAccountDto.getOpenPgpProvider());
                k9StorageEditor.putBoolean(connectionPool.create("autocryptMutualMode"), legacyAccountDto.getAutocryptPreferEncryptMutual());
                String create8 = connectionPool.create("remoteSearchFullText");
                legacyAccountDto.isRemoteSearchFullText();
                k9StorageEditor.putBoolean(create8, false);
                k9StorageEditor.putInt(connectionPool.create("remoteSearchNumResults"), legacyAccountDto.getRemoteSearchNumResults());
                k9StorageEditor.putBoolean(connectionPool.create("uploadSentMessages"), legacyAccountDto.isUploadSentMessages());
                k9StorageEditor.putBoolean(connectionPool.create("markMessageAsReadOnView"), legacyAccountDto.isMarkMessageAsReadOnView());
                k9StorageEditor.putBoolean(connectionPool.create("markMessageAsReadOnDelete"), legacyAccountDto.isMarkMessageAsReadOnDelete());
                k9StorageEditor.putBoolean(connectionPool.create("alwaysShowCcBcc"), legacyAccountDto.isAlwaysShowCcBcc());
                k9StorageEditor.putBoolean(connectionPool.create("vibrate"), legacyAccountDto.getNotificationSettings().vibration.isEnabled);
                k9StorageEditor.putInt(connectionPool.create("vibratePattern"), legacyAccountDto.getNotificationSettings().vibration.pattern.serialize());
                k9StorageEditor.putInt(connectionPool.create("vibrateTimes"), legacyAccountDto.getNotificationSettings().vibration.repeatCount);
                k9StorageEditor.putBoolean(connectionPool.create("ring"), legacyAccountDto.getNotificationSettings().isRingEnabled);
                k9StorageEditor.putString(connectionPool.create("ringtone"), legacyAccountDto.getNotificationSettings().ringtone);
                k9StorageEditor.putString(connectionPool.create("notificationLight"), legacyAccountDto.getNotificationSettings().light.name());
                k9StorageEditor.putLong(legacyAccountDto.getLastSyncTime(), connectionPool.create("lastSyncTime"));
                k9StorageEditor.putLong(legacyAccountDto.getLastFolderListRefreshTime(), connectionPool.create("lastFolderListRefreshTime"));
                k9StorageEditor.putBoolean(connectionPool.create("isFinishedSetup"), legacyAccountDto.isFinishedSetup());
                k9StorageEditor.putBoolean(connectionPool.create("useCompression"), legacyAccountDto.useCompression());
                k9StorageEditor.putBoolean(connectionPool.create("sendClientInfo"), legacyAccountDto.isSendClientInfoEnabled());
                k9StorageEditor.putBoolean(connectionPool.create("migrateToOAuth"), legacyAccountDto.shouldMigrateToOAuth());
                k9StorageEditor.putString(connectionPool.create("folderPathDelimiter"), legacyAccountDto.folderPathDelimiter());
                saveIdentities(legacyAccountDto, inMemoryStorage, k9StorageEditor);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final synchronized void saveIdentities(LegacyAccountDto legacyAccountDto, InMemoryStorage inMemoryStorage, K9StorageEditor k9StorageEditor) {
        deleteIdentities(legacyAccountDto, inMemoryStorage, k9StorageEditor);
        ConnectionPool connectionPool = new ConnectionPool(legacyAccountDto.id);
        Iterator it = ((ArrayList) legacyAccountDto.getIdentities()).iterator();
        int i = 0;
        while (it.hasNext()) {
            Identity identity = (Identity) it.next();
            k9StorageEditor.putString(connectionPool.create("name." + i), identity.name);
            k9StorageEditor.putString(connectionPool.create("email." + i), identity.email);
            k9StorageEditor.putBoolean(connectionPool.create("signatureUse." + i), identity.signatureUse);
            k9StorageEditor.putString(connectionPool.create("signature." + i), identity.signature);
            k9StorageEditor.putString(connectionPool.create("description." + i), identity.description);
            k9StorageEditor.putString(connectionPool.create("replyTo." + i), identity.replyTo);
            i++;
        }
    }
}
