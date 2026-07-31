package org.schabi.newpipe.extractor.utils;

import java.io.Serializable;
import org.schabi.newpipe.extractor.Image;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes3.dex */
public final class ImageSuffix implements Serializable {
    private final int height;
    private final Image.ResolutionLevel resolutionLevel;
    private final String suffix;
    private final int width;

    public ImageSuffix(String str, int i, int i2, Image.ResolutionLevel resolutionLevel) {
        this.suffix = str;
        this.height = i;
        this.width = i2;
        this.resolutionLevel = resolutionLevel;
    }

    public final int getHeight() {
        return this.height;
    }

    public final Image.ResolutionLevel getResolutionLevel() {
        return this.resolutionLevel;
    }

    public final String getSuffix() {
        return this.suffix;
    }

    public final int getWidth() {
        return this.width;
    }

    public final String toString() {
        return "ImageSuffix {suffix=" + this.suffix + ", height=" + this.height + ", width=" + this.width + ", resolutionLevel=" + this.resolutionLevel + "}";
    }
}
