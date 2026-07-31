package org.schabi.newpipe.extractor;

import j$.util.Objects;
import java.io.Serializable;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class Image implements Serializable {
    private final ResolutionLevel estimatedResolutionLevel;
    private final int height;
    private final String url;
    private final int width;

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    /* loaded from: classes3.dex */
    public final class ResolutionLevel {
        public static final /* synthetic */ ResolutionLevel[] $VALUES;
        public static final ResolutionLevel HIGH;
        public static final ResolutionLevel LOW;
        public static final ResolutionLevel MEDIUM;
        public static final ResolutionLevel UNKNOWN;

        static {
            ResolutionLevel resolutionLevel = new ResolutionLevel("HIGH", 0);
            HIGH = resolutionLevel;
            ResolutionLevel resolutionLevel2 = new ResolutionLevel("MEDIUM", 1);
            MEDIUM = resolutionLevel2;
            ResolutionLevel resolutionLevel3 = new ResolutionLevel("LOW", 2);
            LOW = resolutionLevel3;
            ResolutionLevel resolutionLevel4 = new ResolutionLevel("UNKNOWN", 3);
            UNKNOWN = resolutionLevel4;
            $VALUES = new ResolutionLevel[]{resolutionLevel, resolutionLevel2, resolutionLevel3, resolutionLevel4};
        }

        public static ResolutionLevel valueOf(String str) {
            return (ResolutionLevel) Enum.valueOf(ResolutionLevel.class, str);
        }

        public static ResolutionLevel[] values() {
            return (ResolutionLevel[]) $VALUES.clone();
        }
    }

    public Image(String str, int i, int i2, ResolutionLevel resolutionLevel) {
        this.url = str;
        this.height = i;
        this.width = i2;
        Objects.requireNonNull(resolutionLevel, "estimatedResolutionLevel is null");
        this.estimatedResolutionLevel = resolutionLevel;
    }

    public final ResolutionLevel getEstimatedResolutionLevel() {
        return this.estimatedResolutionLevel;
    }

    public final int getHeight() {
        return this.height;
    }

    public final String getUrl() {
        return this.url;
    }

    public final int getWidth() {
        return this.width;
    }

    public final String toString() {
        return "Image {url=" + this.url + ", height=" + this.height + ", width=" + this.width + ", estimatedResolutionLevel=" + this.estimatedResolutionLevel + "}";
    }
}
