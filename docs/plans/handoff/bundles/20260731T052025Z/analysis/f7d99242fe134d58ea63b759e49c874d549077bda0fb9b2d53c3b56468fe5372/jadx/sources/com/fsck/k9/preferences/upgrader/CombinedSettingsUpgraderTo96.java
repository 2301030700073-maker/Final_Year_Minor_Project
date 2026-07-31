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
import kotlin.collections.builders.SetBuilder;
import net.thunderbird.core.android.account.FolderMode;
import org.jsoup.helper.Validate;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class CombinedSettingsUpgraderTo96 implements CombinedSettingsUpgrader {
    public static FolderClass getFolderClass$1(String str, Map map) {
        Object obj = map.get(str);
        FolderClass folderClass = obj instanceof FolderClass ? (FolderClass) obj : null;
        return folderClass == null ? FolderClass.NO_CLASS : folderClass;
    }

    public static String getFolderNameUnlessInbox(String str, Map map) {
        Object obj = map.get(str);
        String str2 = obj instanceof String ? (String) obj : null;
        if (str2 == null || str2.equalsIgnoreCase("INBOX")) {
            return null;
        }
        return str2;
    }

    @Override // com.fsck.k9.preferences.CombinedSettingsUpgrader
    public final ValidatedSettings$Account upgrade(ValidatedSettings$Account validatedSettings$Account) {
        Map map = validatedSettings$Account.settings;
        Object obj = map.get("folderNotifyNewMailMode");
        FolderMode folderMode = obj instanceof FolderMode ? (FolderMode) obj : null;
        if (folderMode == null) {
            folderMode = FolderMode.NONE;
        }
        SetBuilder setBuilder = new SetBuilder();
        String folderNameUnlessInbox = getFolderNameUnlessInbox("trashFolderName", map);
        if (folderNameUnlessInbox != null) {
            setBuilder.add(folderNameUnlessInbox);
        }
        String folderNameUnlessInbox2 = getFolderNameUnlessInbox("draftsFolderName", map);
        if (folderNameUnlessInbox2 != null) {
            setBuilder.add(folderNameUnlessInbox2);
        }
        String folderNameUnlessInbox3 = getFolderNameUnlessInbox("spamFolderName", map);
        if (folderNameUnlessInbox3 != null) {
            setBuilder.add(folderNameUnlessInbox3);
        }
        String folderNameUnlessInbox4 = getFolderNameUnlessInbox("sentFolderName", map);
        if (folderNameUnlessInbox4 != null) {
            setBuilder.add(folderNameUnlessInbox4);
        }
        SetBuilder build = Validate.build(setBuilder);
        List<ValidatedSettings$Folder> list = validatedSettings$Account.folders;
        ArrayList arrayList = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(list, 10));
        for (ValidatedSettings$Folder validatedSettings$Folder : list) {
            String str = validatedSettings$Folder.name;
            Map map2 = validatedSettings$Folder.settings;
            boolean z = false;
            if (!build.backing.containsKey(str)) {
                FolderClass folderClass$1 = getFolderClass$1("notifyMode", map2);
                FolderClass folderClass = FolderClass.INHERITED;
                if (folderClass$1 == folderClass) {
                    folderClass$1 = null;
                }
                if (folderClass$1 == null) {
                    folderClass$1 = getFolderClass$1("pushMode", map2);
                    if (folderClass$1 == folderClass) {
                        folderClass$1 = null;
                    }
                    if (folderClass$1 == null) {
                        folderClass$1 = getFolderClass$1("syncMode", map2);
                        if (folderClass$1 == folderClass) {
                            folderClass$1 = null;
                        }
                        if (folderClass$1 == null) {
                            folderClass$1 = getFolderClass$1("displayMode", map2);
                            if (folderClass$1 == folderClass) {
                                folderClass$1 = null;
                            }
                            if (folderClass$1 == null) {
                                folderClass$1 = FolderClass.NO_CLASS;
                            }
                        }
                    }
                }
                int ordinal = folderMode.ordinal();
                if (ordinal == 0) {
                    continue;
                } else {
                    if (ordinal != 1) {
                        FolderClass folderClass2 = FolderClass.FIRST_CLASS;
                        if (ordinal != 2) {
                            FolderClass folderClass3 = FolderClass.SECOND_CLASS;
                            if (ordinal != 3) {
                                if (ordinal != 4) {
                                    UriKt$$ExternalSyntheticBUOutline0.m857m();
                                    return null;
                                }
                                if (folderClass$1 == folderClass3) {
                                }
                            } else if (folderClass$1 != folderClass2 && folderClass$1 != folderClass3) {
                            }
                        } else if (folderClass$1 != folderClass2) {
                        }
                    }
                    z = true;
                }
            }
            LinkedHashMap linkedHashMap = new LinkedHashMap(map2);
            linkedHashMap.put("notificationsEnabled", Boolean.valueOf(z));
            arrayList.add(new ValidatedSettings$Folder(validatedSettings$Folder.name, linkedHashMap));
        }
        return ValidatedSettings$Account.copy$default(validatedSettings$Account, null, null, null, null, arrayList, 63);
    }
}
