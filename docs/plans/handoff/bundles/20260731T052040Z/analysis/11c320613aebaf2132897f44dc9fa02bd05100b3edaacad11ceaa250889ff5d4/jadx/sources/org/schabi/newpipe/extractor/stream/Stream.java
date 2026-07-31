package org.schabi.newpipe.extractor.stream;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Iterator;
import org.schabi.newpipe.extractor.MediaFormat;
import org.schabi.newpipe.extractor.services.youtube.ItagItem;
import org.schabi.newpipe.extractor.utils.Utils;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract class Stream implements Serializable {
    private final String content;
    private final DeliveryMethod deliveryMethod;
    private final String id;
    private final boolean isUrl;
    private final String manifestUrl;
    private final MediaFormat mediaFormat;

    public Stream(String str, String str2, boolean z, MediaFormat mediaFormat, DeliveryMethod deliveryMethod, String str3) {
        this.id = str;
        this.content = str2;
        this.isUrl = z;
        this.mediaFormat = mediaFormat;
        this.deliveryMethod = deliveryMethod;
        this.manifestUrl = str3;
    }

    public static boolean containSimilarStream(Stream stream, ArrayList arrayList) {
        if (Utils.isNullOrEmpty(arrayList)) {
            return false;
        }
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            if (stream.equalStats((Stream) it.next())) {
                return true;
            }
        }
        return false;
    }

    public boolean equalStats(Stream stream) {
        MediaFormat mediaFormat;
        MediaFormat mediaFormat2;
        return stream != null && (mediaFormat = this.mediaFormat) != null && (mediaFormat2 = stream.mediaFormat) != null && mediaFormat.id == mediaFormat2.id && this.deliveryMethod == stream.deliveryMethod && this.isUrl == stream.isUrl;
    }

    public final String getContent() {
        return this.content;
    }

    public final DeliveryMethod getDeliveryMethod() {
        return this.deliveryMethod;
    }

    public final MediaFormat getFormat() {
        return this.mediaFormat;
    }

    public final int getFormatId() {
        MediaFormat mediaFormat = this.mediaFormat;
        if (mediaFormat != null) {
            return mediaFormat.id;
        }
        return -1;
    }

    public final String getId() {
        return this.id;
    }

    public abstract ItagItem getItagItem();

    public final String getManifestUrl() {
        return this.manifestUrl;
    }

    public final boolean isUrl() {
        return this.isUrl;
    }
}
