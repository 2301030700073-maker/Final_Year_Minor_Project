package com.fsck.k9.preferences;

import androidx.sqlite.SQLite;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import kotlin.collections.CollectionsKt;
import kotlin.collections.CollectionsKt__IteratorsJVMKt;
import net.thunderbird.core.logging.legacy.Log;
import net.thunderbird.core.preference.GeneralSettingsManager;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.slf4j.helpers.Util;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class SettingsImporter {
    public final AccountSettingsUpgrader accountSettingsUpgrader;
    public final AccountSettingsValidator accountSettingsValidator;
    public final AccountSettingsWriter accountSettingsWriter;
    public final GeneralSettingsWriter generalSettingsWriter;
    public final UnifiedInboxConfigurator unifiedInboxConfigurator;

    public SettingsImporter(SettingsFileParser settingsFileParser, GeneralSettingsValidator generalSettingsValidator, AccountSettingsValidator accountSettingsValidator, GeneralSettingsUpgrader generalSettingsUpgrader, AccountSettingsUpgrader accountSettingsUpgrader, GeneralSettingsWriter generalSettingsWriter, AccountSettingsWriter accountSettingsWriter, UnifiedInboxConfigurator unifiedInboxConfigurator) {
        this.accountSettingsValidator = accountSettingsValidator;
        this.accountSettingsUpgrader = accountSettingsUpgrader;
        this.generalSettingsWriter = generalSettingsWriter;
        this.accountSettingsWriter = accountSettingsWriter;
        this.unifiedInboxConfigurator = unifiedInboxConfigurator;
    }

    public static SettingsFile$Contents filterSettings(SettingsFile$Contents settingsFile$Contents, boolean z, List list) {
        List list2 = settingsFile$Contents.accounts;
        Map map = settingsFile$Contents.globalSettings;
        if (z && map == null) {
            Log.w("Was asked to import global settings but none found.", new Object[0]);
        }
        int size = list2.size();
        if (size >= 0) {
            size = size < 3 ? size + 1 : size < 1073741824 ? (int) ((size / 0.75f) + 1.0f) : Integer.MAX_VALUE;
        }
        LinkedHashSet linkedHashSet = new LinkedHashSet(size);
        Iterator it = list2.iterator();
        while (it.hasNext()) {
            linkedHashSet.add(((SettingsFile$Account) it.next()).uuid);
        }
        Iterator it2 = list.iterator();
        while (it2.hasNext()) {
            String str = (String) it2.next();
            if (!linkedHashSet.contains(str)) {
                Log.w("Was asked to import account %s. But this account wasn't found.", str);
            }
        }
        if (!z) {
            map = null;
        }
        ArrayList arrayList = new ArrayList();
        for (Object obj : list2) {
            if (list.contains(((SettingsFile$Account) obj).uuid)) {
                arrayList.add(obj);
            }
        }
        return new SettingsFile$Contents(settingsFile$Contents.contentVersion, map, arrayList);
    }

    public static String getAccountDisplayName(SettingsFile$Account settingsFile$Account) {
        SettingsFile$Identity settingsFile$Identity;
        String str = settingsFile$Account.name;
        if (str != null) {
            if (str.length() <= 0) {
                str = null;
            }
            if (str != null) {
                return str;
            }
        }
        List list = settingsFile$Account.identities;
        String str2 = (list == null || (settingsFile$Identity = (SettingsFile$Identity) CollectionsKt.firstOrNull(list)) == null) ? null : settingsFile$Identity.email;
        if (str2 != null) {
            return str2;
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m$2("Account name missing");
        return null;
    }

    public final ImportContents getImportStreamContents(InputStream inputStream) {
        try {
            SettingsFile$Contents parseSettings = SettingsFileParser.parseSettings(inputStream);
            boolean z = parseSettings.globalSettings != null;
            List<SettingsFile$Account> list = parseSettings.accounts;
            ArrayList arrayList = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(list, 10));
            for (SettingsFile$Account settingsFile$Account : list) {
                arrayList.add(new AccountDescription(getAccountDisplayName(settingsFile$Account), settingsFile$Account.uuid));
            }
            if (!z && arrayList.isEmpty()) {
                throw new SettingsImportExportException("Neither global settings nor account settings could be found");
            }
            return new ImportContents(arrayList, z);
        } catch (SettingsImportExportException e) {
            throw e;
        } catch (Exception e2) {
            throw new SettingsImportExportException(e2);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x01aa  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x01c6  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x01f6  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x021a  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x021e  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x01fb  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x01c9  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x01af  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x0038  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0028  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object importAccount(int r21, com.fsck.k9.preferences.SettingsFile$Account r22, kotlin.coroutines.jvm.internal.ContinuationImpl r23) {
        /*
            Method dump skipped, instructions count: 630
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fsck.k9.preferences.SettingsImporter.importAccount(int, com.fsck.k9.preferences.SettingsFile$Account, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    public final boolean importGeneralSettings(int i, Map map) {
        try {
            map.getClass();
            Map map2 = GeneralSettingsDescriptions.SETTINGS;
            HashMap validate = SQLite.validate(i, map2, map, false);
            if (i != 111) {
                Map map3 = GeneralSettingsDescriptions.UPGRADERS;
                GeneralSettingsManager generalSettingsManager = GeneralSettingsDescriptions.generalSettingManager;
                map3.getClass();
                generalSettingsManager.getClass();
                validate = Util.upgradeToVersion(111, i, map3, map2, validate, generalSettingsManager);
            }
            return this.generalSettingsWriter.write(validate);
        } catch (Exception e) {
            Log.e(e, "Exception while importing general settings", new Object[0]);
            return false;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0072 A[Catch: Exception -> 0x00df, SettingsImportExportException -> 0x00e6, TRY_LEAVE, TryCatch #3 {SettingsImportExportException -> 0x00e6, Exception -> 0x00df, blocks: (B:14:0x006c, B:16:0x0072, B:23:0x00d1, B:24:0x00d6, B:27:0x00db, B:34:0x0099, B:32:0x00b4, B:38:0x0043, B:40:0x0059, B:41:0x0061, B:12:0x0030, B:13:0x0093, B:17:0x0078), top: B:7:0x001e, inners: #4 }] */
    /* JADX WARN: Removed duplicated region for block: B:22:0x00cf  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0040  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0020  */
    /* JADX WARN: Type inference failed for: r10v0, types: [com.fsck.k9.preferences.SettingsImporter] */
    /* JADX WARN: Type inference failed for: r11v12 */
    /* JADX WARN: Type inference failed for: r11v13 */
    /* JADX WARN: Type inference failed for: r11v14 */
    /* JADX WARN: Type inference failed for: r11v4 */
    /* JADX WARN: Type inference failed for: r11v7, types: [int] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:19:0x0090 -> B:13:0x0093). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object importSettings(java.io.InputStream r11, boolean r12, java.util.List r13, kotlin.coroutines.jvm.internal.ContinuationImpl r14) {
        /*
            Method dump skipped, instructions count: 232
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fsck.k9.preferences.SettingsImporter.importSettings(java.io.InputStream, boolean, java.util.List, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }
}
