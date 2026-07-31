package com.fsck.k9.preferences;

import androidx.compose.ui.unit.IntRectKt;
import androidx.sqlite.SQLite;
import com.fsck.k9.K9;
import com.fsck.k9.Preferences;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.Map;
import net.thunderbird.core.logging.legacy.Log;
import net.thunderbird.core.preference.DefaultPreferenceChangeBroker;
import net.thunderbird.core.preference.PreferenceChangePublisher;
import net.thunderbird.core.preference.PreferenceScope;
import net.thunderbird.core.preference.PreferenceScopeRegistry;
import net.thunderbird.core.preference.storage.InMemoryStorage;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class GeneralSettingsWriter {
    public final PreferenceChangePublisher changePublisher;
    public final DefaultGeneralSettingsManager generalSettingsManager;
    public final Preferences preferences;

    public GeneralSettingsWriter(Preferences preferences, DefaultGeneralSettingsManager defaultGeneralSettingsManager, PreferenceChangePublisher preferenceChangePublisher) {
        this.preferences = preferences;
        this.generalSettingsManager = defaultGeneralSettingsManager;
        this.changePublisher = preferenceChangePublisher;
    }

    public final boolean write(HashMap hashMap) {
        Map map = GeneralSettingsDescriptions.SETTINGS;
        HashMap convert = SQLite.convert(hashMap, map);
        K9StorageEditor createStorageEditor = this.preferences.createStorageEditor();
        InMemoryStorage storage = this.preferences.getStorage();
        HashMap hashMap2 = new HashMap();
        for (String str : map.keySet()) {
            String stringOrNull = storage.getStringOrNull(str);
            if (stringOrNull != null) {
                hashMap2.put(str, stringOrNull);
            }
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap(hashMap2);
        linkedHashMap.putAll(convert);
        for (Map.Entry entry : linkedHashMap.entrySet()) {
            String str2 = (String) entry.getKey();
            String str3 = (String) entry.getValue();
            str2.getClass();
            IntRectKt.putStringWithLogging(createStorageEditor, str2, str3, this.generalSettingsManager.getConfig().debugging.isDebugLoggingEnabled, this.generalSettingsManager.getConfig().debugging.isSensitiveLoggingEnabled);
        }
        if (!createStorageEditor.commit()) {
            Log.v("Failed to commit general settings to the preference storage", new Object[0]);
            return false;
        }
        Log.v("Committed general settings to the preference storage.", new Object[0]);
        DefaultGeneralSettingsManager defaultGeneralSettingsManager = this.generalSettingsManager;
        synchronized (defaultGeneralSettingsManager) {
            K9.loadPrefs(defaultGeneralSettingsManager.preferences.getStorage());
        }
        for (String str4 : linkedHashMap.keySet()) {
            str4.getClass();
            PreferenceScope preferenceScope = (PreferenceScope) PreferenceScopeRegistry.map.get(str4);
            if (preferenceScope == null) {
                preferenceScope = PreferenceScope.ALL;
            }
            ((DefaultPreferenceChangeBroker) this.changePublisher).publish(preferenceScope);
        }
        return true;
    }
}
