package com.fsck.k9.preferences.upgrader;

import coil3.UriKt$$ExternalSyntheticBUOutline0;
import com.fsck.k9.preferences.CombinedSettingsUpgrader;
import com.fsck.k9.preferences.ValidatedSettings$Account;
import com.fsck.k9.preferences.ValidatedSettings$Folder;
import com.fsck.k9.preferences.legacy.FolderClass;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.collections.CollectionsKt__IteratorsJVMKt;
import net.thunderbird.core.android.account.FolderMode;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class CombinedSettingsUpgraderTo98 implements CombinedSettingsUpgrader {
    public static FolderClass getFolderClass$2(String str, Map map) {
        Object obj = map.get(str);
        FolderClass folderClass = obj instanceof FolderClass ? (FolderClass) obj : null;
        return folderClass == null ? FolderClass.NO_CLASS : folderClass;
    }

    @Override // com.fsck.k9.preferences.CombinedSettingsUpgrader
    public final ValidatedSettings$Account upgrade(ValidatedSettings$Account validatedSettings$Account) {
        Object obj = validatedSettings$Account.settings.get("folderPushMode");
        FolderMode folderMode = obj instanceof FolderMode ? (FolderMode) obj : null;
        if (folderMode == null) {
            folderMode = FolderMode.NONE;
        }
        List<ValidatedSettings$Folder> list = validatedSettings$Account.folders;
        ArrayList arrayList = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(list, 10));
        for (ValidatedSettings$Folder validatedSettings$Folder : list) {
            LinkedHashMap linkedHashMap = new LinkedHashMap(validatedSettings$Folder.settings);
            Map map = validatedSettings$Folder.settings;
            FolderClass folderClass$2 = getFolderClass$2("pushMode", map);
            FolderClass folderClass = FolderClass.INHERITED;
            if (folderClass$2 == folderClass) {
                folderClass$2 = null;
            }
            if (folderClass$2 == null) {
                folderClass$2 = getFolderClass$2("syncMode", map);
                if (folderClass$2 == folderClass) {
                    folderClass$2 = null;
                }
                if (folderClass$2 == null) {
                    FolderClass folderClass$22 = getFolderClass$2("displayMode", map);
                    folderClass$2 = folderClass$22 != folderClass ? folderClass$22 : null;
                    if (folderClass$2 == null) {
                        folderClass$2 = FolderClass.NO_CLASS;
                    }
                }
            }
            int ordinal = folderMode.ordinal();
            boolean z = false;
            if (ordinal != 0) {
                if (ordinal != 1) {
                    FolderClass folderClass2 = FolderClass.FIRST_CLASS;
                    if (ordinal != 2) {
                        FolderClass folderClass3 = FolderClass.SECOND_CLASS;
                        if (ordinal != 3) {
                            if (ordinal != 4) {
                                UriKt$$ExternalSyntheticBUOutline0.m857m();
                                return null;
                            }
                            if (folderClass$2 == folderClass3) {
                            }
                        } else if (folderClass$2 != folderClass2 && folderClass$2 != folderClass3) {
                        }
                    } else if (folderClass$2 != folderClass2) {
                    }
                }
                z = true;
            }
            linkedHashMap.put("pushEnabled", Boolean.valueOf(z));
            arrayList.add(new ValidatedSettings$Folder(validatedSettings$Folder.name, linkedHashMap));
        }
        return ValidatedSettings$Account.copy$default(validatedSettings$Account, null, null, null, null, arrayList, 63);
    }
}
