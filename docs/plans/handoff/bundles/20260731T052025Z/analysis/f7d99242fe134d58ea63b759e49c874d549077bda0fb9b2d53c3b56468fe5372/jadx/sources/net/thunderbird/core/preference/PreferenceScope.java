package net.thunderbird.core.preference;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class PreferenceScope {
    public static final /* synthetic */ PreferenceScope[] $VALUES;
    public static final PreferenceScope ALL;
    public static final PreferenceScope DEBUGGING;
    public static final PreferenceScope DISPLAY_CORE;
    public static final PreferenceScope DISPLAY_INBOX;
    public static final PreferenceScope DISPLAY_MISC;
    public static final PreferenceScope DISPLAY_VISUAL;
    public static final PreferenceScope DISPLAY_VISUAL_MESSAGE_LIST;
    public static final PreferenceScope INTERACTION;
    public static final PreferenceScope NETWORK;
    public static final PreferenceScope NOTIFICATION;
    public static final PreferenceScope PRIVACY;

    static {
        PreferenceScope preferenceScope = new PreferenceScope("ALL", 0);
        ALL = preferenceScope;
        PreferenceScope preferenceScope2 = new PreferenceScope("DEBUGGING", 1);
        DEBUGGING = preferenceScope2;
        PreferenceScope preferenceScope3 = new PreferenceScope("DISPLAY_CORE", 2);
        DISPLAY_CORE = preferenceScope3;
        PreferenceScope preferenceScope4 = new PreferenceScope("DISPLAY_INBOX", 3);
        DISPLAY_INBOX = preferenceScope4;
        PreferenceScope preferenceScope5 = new PreferenceScope("DISPLAY_MISC", 4);
        DISPLAY_MISC = preferenceScope5;
        PreferenceScope preferenceScope6 = new PreferenceScope("DISPLAY_VISUAL", 5);
        DISPLAY_VISUAL = preferenceScope6;
        PreferenceScope preferenceScope7 = new PreferenceScope("DISPLAY_VISUAL_MESSAGE_LIST", 6);
        DISPLAY_VISUAL_MESSAGE_LIST = preferenceScope7;
        PreferenceScope preferenceScope8 = new PreferenceScope("INTERACTION", 7);
        INTERACTION = preferenceScope8;
        PreferenceScope preferenceScope9 = new PreferenceScope("NETWORK", 8);
        NETWORK = preferenceScope9;
        PreferenceScope preferenceScope10 = new PreferenceScope("NOTIFICATION", 9);
        NOTIFICATION = preferenceScope10;
        PreferenceScope preferenceScope11 = new PreferenceScope("PRIVACY", 10);
        PRIVACY = preferenceScope11;
        $VALUES = new PreferenceScope[]{preferenceScope, preferenceScope2, preferenceScope3, preferenceScope4, preferenceScope5, preferenceScope6, preferenceScope7, preferenceScope8, preferenceScope9, preferenceScope10, preferenceScope11};
    }

    public static PreferenceScope valueOf(String str) {
        return (PreferenceScope) Enum.valueOf(PreferenceScope.class, str);
    }

    public static PreferenceScope[] values() {
        return (PreferenceScope[]) $VALUES.clone();
    }
}
