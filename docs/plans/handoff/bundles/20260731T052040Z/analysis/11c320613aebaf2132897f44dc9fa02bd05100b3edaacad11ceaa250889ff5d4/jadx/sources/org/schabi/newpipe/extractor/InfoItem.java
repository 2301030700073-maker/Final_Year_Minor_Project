package org.schabi.newpipe.extractor;

import java.io.Serializable;
import java.util.Collections;
import java.util.List;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract class InfoItem implements Serializable {
    private final InfoType infoType;
    private final String name;
    private final int serviceId;
    private List<Image> thumbnails = Collections.EMPTY_LIST;
    private final String url;

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    /* loaded from: classes3.dex */
    public final class InfoType {
        public static final /* synthetic */ InfoType[] $VALUES;
        public static final InfoType CHANNEL;
        public static final InfoType COMMENT;
        public static final InfoType PLAYLIST;
        public static final InfoType STREAM;

        static {
            InfoType infoType = new InfoType("STREAM", 0);
            STREAM = infoType;
            InfoType infoType2 = new InfoType("PLAYLIST", 1);
            PLAYLIST = infoType2;
            InfoType infoType3 = new InfoType("CHANNEL", 2);
            CHANNEL = infoType3;
            InfoType infoType4 = new InfoType("COMMENT", 3);
            COMMENT = infoType4;
            $VALUES = new InfoType[]{infoType, infoType2, infoType3, infoType4};
        }

        public static InfoType valueOf(String str) {
            return (InfoType) Enum.valueOf(InfoType.class, str);
        }

        public static InfoType[] values() {
            return (InfoType[]) $VALUES.clone();
        }
    }

    public InfoItem(InfoType infoType, int i, String str, String str2) {
        this.infoType = infoType;
        this.serviceId = i;
        this.url = str;
        this.name = str2;
    }

    public final InfoType getInfoType() {
        return this.infoType;
    }

    public final String getName() {
        return this.name;
    }

    public final int getServiceId() {
        return this.serviceId;
    }

    public final List getThumbnails() {
        return this.thumbnails;
    }

    public final String getUrl() {
        return this.url;
    }

    public final void setThumbnails(List list) {
        this.thumbnails = list;
    }

    public String toString() {
        return getClass().getSimpleName() + "[url=\"" + this.url + "\", name=\"" + this.name + "\"]";
    }
}
