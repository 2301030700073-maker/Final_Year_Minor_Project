package com.fsck.k9.preferences.upgrader;

import coil3.UriKt$$ExternalSyntheticBUOutline0;
import com.fsck.k9.preferences.CombinedSettingsUpgrader;
import com.fsck.k9.preferences.ValidatedSettings$Account;
import com.fsck.k9.preferences.ValidatedSettings$Folder;
import com.fsck.k9.preferences.legacy.FolderClass;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import kotlin.collections.CollectionsKt__IteratorsJVMKt;
import net.thunderbird.core.android.account.FolderMode;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class CombinedSettingsUpgraderTo100 implements CombinedSettingsUpgrader {
    @Override // com.fsck.k9.preferences.CombinedSettingsUpgrader
    public final ValidatedSettings$Account upgrade(ValidatedSettings$Account validatedSettings$Account) {
        Object obj = validatedSettings$Account.settings.get("folderDisplayMode");
        FolderMode folderMode = obj instanceof FolderMode ? (FolderMode) obj : null;
        if (folderMode == null) {
            folderMode = FolderMode.NONE;
        }
        List<ValidatedSettings$Folder> list = validatedSettings$Account.folders;
        ArrayList arrayList = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(list, 10));
        for (ValidatedSettings$Folder validatedSettings$Folder : list) {
            LinkedHashMap linkedHashMap = new LinkedHashMap(validatedSettings$Folder.settings);
            Object obj2 = validatedSettings$Folder.settings.get("displayMode");
            FolderClass folderClass = obj2 instanceof FolderClass ? (FolderClass) obj2 : null;
            FolderClass folderClass2 = FolderClass.NO_CLASS;
            if (folderClass == null) {
                folderClass = folderClass2;
            }
            if (folderClass == FolderClass.INHERITED) {
                folderClass = null;
            }
            if (folderClass != null) {
                folderClass2 = folderClass;
            }
            int ordinal = folderMode.ordinal();
            boolean z = false;
            if (ordinal != 0) {
                if (ordinal != 1) {
                    FolderClass folderClass3 = FolderClass.FIRST_CLASS;
                    if (ordinal != 2) {
                        FolderClass folderClass4 = FolderClass.SECOND_CLASS;
                        if (ordinal != 3) {
                            if (ordinal != 4) {
                                UriKt$$ExternalSyntheticBUOutline0.m857m();
                                return null;
                            }
                            if (folderClass2 == folderClass4) {
                            }
                        } else if (folderClass2 != folderClass3 && folderClass2 != folderClass4) {
                        }
                    } else if (folderClass2 != folderClass3) {
                    }
                }
                z = true;
            }
            linkedHashMap.put("visible", Boolean.valueOf(z));
            arrayList.add(new ValidatedSettings$Folder(validatedSettings$Folder.name, linkedHashMap));
        }
        return ValidatedSettings$Account.copy$default(validatedSettings$Account, null, null, null, null, arrayList, 63);
    }
}
