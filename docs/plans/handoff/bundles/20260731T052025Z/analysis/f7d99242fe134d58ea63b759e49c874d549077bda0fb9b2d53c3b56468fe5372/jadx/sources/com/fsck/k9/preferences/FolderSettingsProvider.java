package com.fsck.k9.preferences;

import app.k9mail.legacy.mailstore.DefaultFolderRepository;
import java.util.TreeMap;
import kotlin.text.Regex$$ExternalSyntheticBUOutline0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class FolderSettingsProvider {
    public final DefaultFolderRepository folderRepository;

    public FolderSettingsProvider(DefaultFolderRepository defaultFolderRepository) {
        this.folderRepository = defaultFolderRepository;
    }

    public static Object getDefaultValue(String str) {
        String str2;
        TreeMap treeMap = (TreeMap) FolderSettingsDescriptions.SETTINGS.get(str);
        if (treeMap != null) {
            Settings$SettingsDescription settings$SettingsDescription = (Settings$SettingsDescription) treeMap.get((Integer) treeMap.lastKey());
            if (settings$SettingsDescription != null) {
                return settings$SettingsDescription.defaultValue;
            }
            str2 = "Setting description not found: ";
        } else {
            str2 = "Key not found: ";
        }
        Regex$$ExternalSyntheticBUOutline0.m((Object) str2.concat(str));
        return null;
    }
}
