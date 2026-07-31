package org.schabi.newpipe.extractor.services.youtube;

import com.grack.nanojson.JsonObject;
import java.io.Serializable;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class YoutubeChannelHelper$ChannelHeader implements Serializable {
    public final HeaderType headerType;
    public final JsonObject json;

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class HeaderType {
        public static final /* synthetic */ HeaderType[] $VALUES;
        public static final HeaderType C4_TABBED;
        public static final HeaderType CAROUSEL;
        public static final HeaderType INTERACTIVE_TABBED;
        public static final HeaderType PAGE;

        static {
            HeaderType headerType = new HeaderType("C4_TABBED", 0);
            C4_TABBED = headerType;
            HeaderType headerType2 = new HeaderType("INTERACTIVE_TABBED", 1);
            INTERACTIVE_TABBED = headerType2;
            HeaderType headerType3 = new HeaderType("CAROUSEL", 2);
            CAROUSEL = headerType3;
            HeaderType headerType4 = new HeaderType("PAGE", 3);
            PAGE = headerType4;
            $VALUES = new HeaderType[]{headerType, headerType2, headerType3, headerType4};
        }

        public static HeaderType valueOf(String str) {
            return (HeaderType) Enum.valueOf(HeaderType.class, str);
        }

        public static HeaderType[] values() {
            return (HeaderType[]) $VALUES.clone();
        }
    }

    public YoutubeChannelHelper$ChannelHeader(JsonObject jsonObject, HeaderType headerType) {
        this.json = jsonObject;
        this.headerType = headerType;
    }
}
