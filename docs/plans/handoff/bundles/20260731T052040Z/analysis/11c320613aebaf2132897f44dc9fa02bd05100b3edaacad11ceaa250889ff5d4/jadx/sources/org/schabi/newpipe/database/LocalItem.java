package org.schabi.newpipe.database;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public interface LocalItem {

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class LocalItemType {
        public static final /* synthetic */ LocalItemType[] $VALUES;
        public static final LocalItemType PLAYLIST_LOCAL_ITEM;
        public static final LocalItemType PLAYLIST_REMOTE_ITEM;
        public static final LocalItemType PLAYLIST_STREAM_ITEM;
        public static final LocalItemType STATISTIC_STREAM_ITEM;

        static {
            LocalItemType localItemType = new LocalItemType("PLAYLIST_LOCAL_ITEM", 0);
            PLAYLIST_LOCAL_ITEM = localItemType;
            LocalItemType localItemType2 = new LocalItemType("PLAYLIST_REMOTE_ITEM", 1);
            PLAYLIST_REMOTE_ITEM = localItemType2;
            LocalItemType localItemType3 = new LocalItemType("PLAYLIST_STREAM_ITEM", 2);
            PLAYLIST_STREAM_ITEM = localItemType3;
            LocalItemType localItemType4 = new LocalItemType("STATISTIC_STREAM_ITEM", 3);
            STATISTIC_STREAM_ITEM = localItemType4;
            $VALUES = new LocalItemType[]{localItemType, localItemType2, localItemType3, localItemType4};
        }

        public static LocalItemType valueOf(String str) {
            return (LocalItemType) Enum.valueOf(LocalItemType.class, str);
        }

        public static LocalItemType[] values() {
            return (LocalItemType[]) $VALUES.clone();
        }
    }

    LocalItemType getLocalItemType();
}
