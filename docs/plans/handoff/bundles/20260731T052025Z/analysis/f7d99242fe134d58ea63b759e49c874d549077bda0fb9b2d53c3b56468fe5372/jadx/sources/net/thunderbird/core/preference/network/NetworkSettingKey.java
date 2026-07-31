package net.thunderbird.core.preference.network;

import kotlin.enums.EnumEntriesList;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class NetworkSettingKey {
    public static final /* synthetic */ EnumEntriesList $ENTRIES;
    public static final /* synthetic */ NetworkSettingKey[] $VALUES;

    static {
        NetworkSettingKey[] networkSettingKeyArr = {new NetworkSettingKey("BackgroundOperations", 0)};
        $VALUES = networkSettingKeyArr;
        $ENTRIES = new EnumEntriesList(networkSettingKeyArr);
    }

    public static NetworkSettingKey valueOf(String str) {
        return (NetworkSettingKey) Enum.valueOf(NetworkSettingKey.class, str);
    }

    public static NetworkSettingKey[] values() {
        return (NetworkSettingKey[]) $VALUES.clone();
    }
}
