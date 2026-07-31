package com.fsck.k9.preferences;

import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.collections.CollectionsKt__IteratorsJVMKt;
import net.thunderbird.core.preference.GeneralSettingsManager;
import org.slf4j.helpers.Util;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class AccountSettingsUpgrader {
    public final Map combinedUpgraders;
    public final FolderSettingsUpgrader folderSettingsUpgrader;
    public final GeneralSettingsManager generalSettingsManager;
    public final IdentitySettingsUpgrader identitySettingsUpgrader;
    public final int latestVersion;
    public final ServerSettingsUpgrader serverSettingsUpgrader;
    public final Map settingsDescriptions;
    public final Map upgraders;

    public AccountSettingsUpgrader(IdentitySettingsUpgrader identitySettingsUpgrader, FolderSettingsUpgrader folderSettingsUpgrader, ServerSettingsUpgrader serverSettingsUpgrader, GeneralSettingsManager generalSettingsManager) {
        Map map = AccountSettingsDescriptions.SETTINGS;
        map.getClass();
        Map map2 = AccountSettingsDescriptions.UPGRADERS;
        map2.getClass();
        Map map3 = CombinedSettingsUpgraders.UPGRADERS;
        map3.getClass();
        this.identitySettingsUpgrader = identitySettingsUpgrader;
        this.folderSettingsUpgrader = folderSettingsUpgrader;
        this.serverSettingsUpgrader = serverSettingsUpgrader;
        this.latestVersion = 111;
        this.settingsDescriptions = map;
        this.upgraders = map2;
        this.combinedUpgraders = map3;
        this.generalSettingsManager = generalSettingsManager;
    }

    public final ValidatedSettings$Account upgradeToVersion(int i, int i2, ValidatedSettings$Account validatedSettings$Account) {
        Map map = validatedSettings$Account.settings;
        int i3 = i;
        int i4 = i2;
        LinkedHashMap upgradeToVersion = Util.upgradeToVersion(i3, i4, this.upgraders, this.settingsDescriptions, map, this.generalSettingsManager);
        ValidatedSettings$Server validatedSettings$Server = validatedSettings$Account.incoming;
        ServerSettingsUpgrader serverSettingsUpgrader = this.serverSettingsUpgrader;
        ValidatedSettings$Server upgrade = serverSettingsUpgrader.upgrade(i3, i4, validatedSettings$Server);
        ValidatedSettings$Server upgrade2 = serverSettingsUpgrader.upgrade(i3, i4, validatedSettings$Account.outgoing);
        List<ValidatedSettings$Identity> list = validatedSettings$Account.identities;
        ArrayList arrayList = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(list, 10));
        for (ValidatedSettings$Identity validatedSettings$Identity : list) {
            IdentitySettingsUpgrader identitySettingsUpgrader = this.identitySettingsUpgrader;
            identitySettingsUpgrader.getClass();
            validatedSettings$Identity.getClass();
            if (i4 != i3) {
                LinkedHashMap upgradeToVersion2 = Util.upgradeToVersion(i3, i4, identitySettingsUpgrader.upgraders, identitySettingsUpgrader.settingsDescriptions, validatedSettings$Identity.settings, identitySettingsUpgrader.generalSettingsManager);
                String str = validatedSettings$Identity.name;
                String str2 = validatedSettings$Identity.email;
                String str3 = validatedSettings$Identity.description;
                str2.getClass();
                validatedSettings$Identity = new ValidatedSettings$Identity(str, str2, str3, upgradeToVersion2);
            }
            arrayList.add(validatedSettings$Identity);
        }
        List<ValidatedSettings$Folder> list2 = validatedSettings$Account.folders;
        ArrayList arrayList2 = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(list2, 10));
        for (ValidatedSettings$Folder validatedSettings$Folder : list2) {
            FolderSettingsUpgrader folderSettingsUpgrader = this.folderSettingsUpgrader;
            folderSettingsUpgrader.getClass();
            validatedSettings$Folder.getClass();
            if (i4 != i3) {
                validatedSettings$Folder = new ValidatedSettings$Folder(validatedSettings$Folder.name, Util.upgradeToVersion(i3, i4, folderSettingsUpgrader.upgraders, folderSettingsUpgrader.settingsDescriptions, validatedSettings$Folder.settings, folderSettingsUpgrader.generalSettingsManager));
            }
            arrayList2.add(validatedSettings$Folder);
            i3 = i;
            i4 = i2;
        }
        return ValidatedSettings$Account.copy$default(validatedSettings$Account, upgrade, upgrade2, upgradeToVersion, arrayList, arrayList2, 3);
    }
}
