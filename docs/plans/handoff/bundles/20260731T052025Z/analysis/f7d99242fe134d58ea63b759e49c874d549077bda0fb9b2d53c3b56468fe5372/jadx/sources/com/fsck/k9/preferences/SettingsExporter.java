package com.fsck.k9.preferences;

import android.content.ContentResolver;
import android.util.Xml;
import app.k9mail.legacy.mailstore.DefaultFolderRepository;
import app.k9mail.legacy.mailstore.ListenableMessageStore;
import coil3.UriKt$$ExternalSyntheticBUOutline0;
import coil3.disk.DiskLruCache;
import com.fsck.k9.Preferences;
import com.fsck.k9.notification.NotificationSettingsUpdater;
import com.fsck.k9.storage.messages.K9MessageStore;
import java.io.OutputStream;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.TreeMap;
import kotlin.collections.ArraysKt___ArraysKt;
import net.thunderbird.core.android.account.LegacyAccountDto;
import net.thunderbird.core.logging.legacy.Log;
import net.thunderbird.feature.account.AccountId;
import org.xmlpull.v1.XmlSerializer;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class SettingsExporter {
    public static final Set FOLDER_NAME_KEYS = ArraysKt___ArraysKt.toSet(new String[]{"autoExpandFolderName", "archiveFolderName", "draftsFolderName", "sentFolderName", "spamFolderName", "trashFolderName"});
    public final ContentResolver contentResolver;
    public final FilePrefixProvider filePrefixProvider;
    public final DefaultFolderRepository folderRepository;
    public final FolderSettingsProvider folderSettingsProvider;
    public final NotificationSettingsUpdater notificationSettingsUpdater;
    public final Preferences preferences;

    public SettingsExporter(ContentResolver contentResolver, Preferences preferences, FolderSettingsProvider folderSettingsProvider, DefaultFolderRepository defaultFolderRepository, NotificationSettingsUpdater notificationSettingsUpdater, FilePrefixProvider filePrefixProvider) {
        this.contentResolver = contentResolver;
        this.preferences = preferences;
        this.folderSettingsProvider = folderSettingsProvider;
        this.folderRepository = defaultFolderRepository;
        this.notificationSettingsUpdater = notificationSettingsUpdater;
        this.filePrefixProvider = filePrefixProvider;
    }

    public static void writeAccountSettingIfValid(XmlSerializer xmlSerializer, String str, String str2, LegacyAccountDto legacyAccountDto) {
        Settings$SettingsDescription settings$SettingsDescription;
        TreeMap treeMap = (TreeMap) AccountSettingsDescriptions.SETTINGS.get(str);
        if (treeMap == null || (settings$SettingsDescription = (Settings$SettingsDescription) treeMap.get((Integer) treeMap.lastKey())) == null) {
            return;
        }
        try {
            writeKeyAndPrettyValueFromSetting(xmlSerializer, str, settings$SettingsDescription.toPrettyString(settings$SettingsDescription.fromString(str2)));
        } catch (Settings$InvalidSettingValueException unused) {
            Log.w("Account setting \"%s\" (%s) has invalid value \"%s\" in preference storage. This shouldn't happen!", str, legacyAccountDto, str2);
        }
    }

    public static void writeElement(XmlSerializer xmlSerializer, String str, String str2) {
        if (str2 != null) {
            xmlSerializer.startTag(null, str);
            xmlSerializer.text(str2);
            xmlSerializer.endTag(null, str);
        }
    }

    public static final void writeFolderNameSettings$writeFolderNameSetting(XmlSerializer xmlSerializer, LegacyAccountDto legacyAccountDto, DefaultFolderRepository defaultFolderRepository, String str, Long l, String str2, boolean z) {
        if (l != null) {
            AccountId accountId = legacyAccountDto.id;
            long longValue = l.longValue();
            accountId.getClass();
            ListenableMessageStore messageStore = defaultFolderRepository.messageStoreManager.getMessageStore(accountId);
            String str3 = (String) ((K9MessageStore) messageStore.messageStore.val$folders).getFolder(longValue, new UriKt$$ExternalSyntheticBUOutline0(7));
            if (str3 != null) {
                str2 = str3;
            }
        }
        if (str2 != null) {
            writeAccountSettingIfValid(xmlSerializer, str, str2, legacyAccountDto);
        } else if (z) {
            writeAccountSettingIfValid(xmlSerializer, str, "", legacyAccountDto);
        }
    }

    public static void writeFolderSetting(XmlSerializer xmlSerializer, String str, String str2) {
        Settings$SettingsDescription settings$SettingsDescription;
        TreeMap treeMap = (TreeMap) FolderSettingsDescriptions.SETTINGS.get(str);
        if (treeMap == null || (settings$SettingsDescription = (Settings$SettingsDescription) treeMap.get((Integer) treeMap.lastKey())) == null) {
            return;
        }
        try {
            writeKeyAndPrettyValueFromSetting(xmlSerializer, str, settings$SettingsDescription.toPrettyString(settings$SettingsDescription.fromString(str2)));
        } catch (Settings$InvalidSettingValueException unused) {
            Log.w("Folder setting \"%s\" has invalid value \"%s\" in preference storage. This shouldn't happen!", str, str2);
        }
    }

    public static void writeKeyAndPrettyValueFromSetting(XmlSerializer xmlSerializer, String str, String str2) {
        xmlSerializer.startTag(null, "value");
        xmlSerializer.attribute(null, "key", str);
        if (str2 != null) {
            xmlSerializer.text(str2);
        }
        xmlSerializer.endTag(null, "value");
    }

    public static void writeSettings(XmlSerializer xmlSerializer, TreeMap treeMap) {
        Map map = GeneralSettingsDescriptions.SETTINGS;
        map.getClass();
        for (Map.Entry entry : map.entrySet()) {
            String str = (String) entry.getKey();
            TreeMap treeMap2 = (TreeMap) entry.getValue();
            String str2 = (String) treeMap.get(str);
            Settings$SettingsDescription settings$SettingsDescription = (Settings$SettingsDescription) treeMap2.get((Integer) treeMap2.lastKey());
            if (settings$SettingsDescription != null) {
                if (str2 != null) {
                    try {
                        str.getClass();
                        writeKeyAndPrettyValueFromSetting(xmlSerializer, str, settings$SettingsDescription.toPrettyString(settings$SettingsDescription.fromString(str2)));
                    } catch (Settings$InvalidSettingValueException unused) {
                        Log.w("Global setting \"%s\" has invalid value \"%s\" in preference storage. This shouldn't happen!", str, str2);
                    }
                } else {
                    Log.d("Couldn't find key \"%s\" in preference storage. Using default value.", str);
                    str.getClass();
                    writeKeyAndPrettyValueFromSetting(xmlSerializer, str, settings$SettingsDescription.toPrettyString(settings$SettingsDescription.defaultValue));
                }
            }
        }
    }

    public final void exportPreferences(OutputStream outputStream, boolean z, Set set, boolean z2) {
        Preferences preferences = this.preferences;
        try {
            this.notificationSettingsUpdater.updateNotificationSettings(set);
        } catch (Exception e) {
            Log.w(e, "Error while updating accounts with notification configuration from system", new Object[0]);
        }
        try {
            XmlSerializer newSerializer = Xml.newSerializer();
            newSerializer.setOutput(outputStream, "UTF-8");
            newSerializer.startDocument(null, Boolean.TRUE);
            newSerializer.setFeature("http://xmlpull.org/v1/doc/features.html#indent-output", true);
            newSerializer.startTag(null, "k9settings");
            newSerializer.attribute(null, "version", "111");
            newSerializer.attribute(null, "format", DiskLruCache.VERSION);
            Log.i("Exporting preferences", new Object[0]);
            TreeMap treeMap = new TreeMap(preferences.getStorage().values);
            if (z) {
                newSerializer.startTag(null, "global");
                writeSettings(newSerializer, treeMap);
                newSerializer.endTag(null, "global");
            }
            newSerializer.startTag(null, "accounts");
            Iterator it = set.iterator();
            while (it.hasNext()) {
                LegacyAccountDto account = preferences.getAccount((String) it.next());
                if (account != null) {
                    writeAccount(newSerializer, account, treeMap, z2);
                }
            }
            newSerializer.endTag(null, "accounts");
            newSerializer.endTag(null, "k9settings");
            newSerializer.endDocument();
            newSerializer.flush();
        } catch (Exception e2) {
            throw new SettingsImportExportException(e2.getLocalizedMessage(), e2);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:65:0x0204, code lost:
    
        if (com.fsck.k9.preferences.FolderSettingsDescriptions.SETTINGS.containsKey(r5) != false) goto L64;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void writeAccount(org.xmlpull.v1.XmlSerializer r28, net.thunderbird.core.android.account.LegacyAccountDto r29, java.util.TreeMap r30, boolean r31) {
        /*
            Method dump skipped, instructions count: 1346
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fsck.k9.preferences.SettingsExporter.writeAccount(org.xmlpull.v1.XmlSerializer, net.thunderbird.core.android.account.LegacyAccountDto, java.util.TreeMap, boolean):void");
    }
}
