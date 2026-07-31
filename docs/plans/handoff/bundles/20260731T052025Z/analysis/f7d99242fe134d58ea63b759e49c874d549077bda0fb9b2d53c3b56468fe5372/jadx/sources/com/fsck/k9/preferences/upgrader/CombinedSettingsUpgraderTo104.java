package com.fsck.k9.preferences.upgrader;

import com.fsck.k9.preferences.CombinedSettingsUpgrader;
import com.fsck.k9.preferences.ValidatedSettings$Account;
import com.fsck.k9.preferences.ValidatedSettings$Identity;
import java.util.LinkedHashMap;
import java.util.Locale;
import java.util.Map;
import kotlin.collections.CollectionsKt;
import kotlin.text.StringsKt;
import kotlin.text.StringsKt__StringsJVMKt;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class CombinedSettingsUpgraderTo104 implements CombinedSettingsUpgrader {
    @Override // com.fsck.k9.preferences.CombinedSettingsUpgrader
    public final ValidatedSettings$Account upgrade(ValidatedSettings$Account validatedSettings$Account) {
        Map map = validatedSettings$Account.settings;
        Object obj = map.get("avatarMonogram");
        String str = obj instanceof String ? (String) obj : null;
        String str2 = "XX";
        if (str == null || str.equals("XX")) {
            String str3 = validatedSettings$Account.name;
            ValidatedSettings$Identity validatedSettings$Identity = (ValidatedSettings$Identity) CollectionsKt.firstOrNull(validatedSettings$Account.identities);
            String str4 = validatedSettings$Identity != null ? validatedSettings$Identity.email : null;
            if (str3 != null && str3.length() != 0) {
                str2 = StringsKt.take(StringsKt__StringsJVMKt.replace$default(str3, " ", ""), 2).toUpperCase(Locale.ROOT);
                str2.getClass();
            } else if (str4 != null && str4.length() != 0) {
                str2 = StringsKt.take(StringsKt__StringsJVMKt.replace$default(str4, " ", ""), 2).toUpperCase(Locale.ROOT);
                str2.getClass();
            }
            if (!str2.equals(str)) {
                LinkedHashMap linkedHashMap = new LinkedHashMap(map);
                linkedHashMap.put("avatarMonogram", str2);
                return ValidatedSettings$Account.copy$default(validatedSettings$Account, null, null, linkedHashMap, null, null, 111);
            }
        }
        return validatedSettings$Account;
    }
}
