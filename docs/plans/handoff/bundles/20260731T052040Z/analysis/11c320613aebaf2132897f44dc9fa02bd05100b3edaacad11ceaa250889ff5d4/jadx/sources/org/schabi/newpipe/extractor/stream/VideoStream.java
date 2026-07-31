package org.schabi.newpipe.extractor.stream;

import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;
import org.schabi.newpipe.extractor.MediaFormat;
import org.schabi.newpipe.extractor.services.youtube.ItagItem;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class VideoStream extends Stream {
    private int bitrate;
    private String codec;
    private int fps;
    private int height;
    private int indexEnd;
    private int indexStart;
    private int initEnd;
    private int initStart;

    @Deprecated
    public final boolean isVideoOnly;
    private int itag;
    private ItagItem itagItem;
    private String quality;

    @Deprecated
    public final String resolution;
    private int width;

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class Builder {
        public String content;
        public DeliveryMethod deliveryMethod;
        public String id;
        public boolean isUrl;
        public Boolean isVideoOnly;
        public MediaFormat mediaFormat;
        public String resolution;

        public final VideoStream build() {
            String str = this.id;
            if (str == null) {
                _UtilJvmKt$$ExternalSyntheticLambda1.m$2("The identifier of the video stream has been not set or is null. If you are not able to get an identifier, use the static constant ID_UNKNOWN of the Stream class.");
                return null;
            }
            String str2 = this.content;
            if (str2 == null) {
                _UtilJvmKt$$ExternalSyntheticLambda1.m$2("The content of the video stream has been not set or is null. Please specify a non-null one with setContent.");
                return null;
            }
            DeliveryMethod deliveryMethod = this.deliveryMethod;
            Boolean bool = this.isVideoOnly;
            if (bool == null) {
                _UtilJvmKt$$ExternalSyntheticLambda1.m$2("The video stream has been not set as a video-only stream or as a video stream with embedded audio. Please specify this information with setIsVideoOnly.");
                return null;
            }
            String str3 = this.resolution;
            if (str3 != null) {
                return new VideoStream(str, str2, this.isUrl, this.mediaFormat, deliveryMethod, str3, bool.booleanValue(), null, null);
            }
            _UtilJvmKt$$ExternalSyntheticLambda1.m$2("The resolution of the video stream has been not set. Please specify it with setResolution (use an empty string if you are not able to get it).");
            return null;
        }
    }

    public VideoStream(String str, String str2, boolean z, MediaFormat mediaFormat, DeliveryMethod deliveryMethod, String str3, boolean z2, String str4, ItagItem itagItem) {
        super(str, str2, z, mediaFormat, deliveryMethod, str4);
        this.itag = -1;
        if (itagItem != null) {
            this.itagItem = itagItem;
            this.itag = itagItem.id;
            this.bitrate = itagItem.getBitrate();
            this.initStart = itagItem.getInitStart();
            this.initEnd = itagItem.getInitEnd();
            this.indexStart = itagItem.getIndexStart();
            this.indexEnd = itagItem.getIndexEnd();
            this.codec = itagItem.getCodec();
            this.height = itagItem.getHeight();
            this.width = itagItem.getWidth();
            this.quality = itagItem.getQuality();
            this.fps = itagItem.fps;
        }
        this.resolution = str3;
        this.isVideoOnly = z2;
    }

    @Override // org.schabi.newpipe.extractor.stream.Stream
    public final boolean equalStats(Stream stream) {
        if (!super.equalStats(stream) || !(stream instanceof VideoStream)) {
            return false;
        }
        VideoStream videoStream = (VideoStream) stream;
        return this.resolution.equals(videoStream.resolution) && this.isVideoOnly == videoStream.isVideoOnly;
    }

    @Override // org.schabi.newpipe.extractor.stream.Stream
    public final ItagItem getItagItem() {
        return this.itagItem;
    }
}
