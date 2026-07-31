package org.schabi.newpipe.extractor.stream;

import j$.util.Objects;
import java.util.Locale;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;
import org.schabi.newpipe.extractor.MediaFormat;
import org.schabi.newpipe.extractor.services.youtube.ItagItem;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class AudioStream extends Stream {
    private final Locale audioLocale;
    private final String audioTrackId;
    private final String audioTrackName;
    private final AudioTrackType audioTrackType;
    private final int averageBitrate;
    private int bitrate;
    private String codec;
    private int indexEnd;
    private int indexStart;
    private int initEnd;
    private int initStart;
    private int itag;
    private ItagItem itagItem;
    private String quality;

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class Builder {
        public Locale audioLocale;
        public String audioTrackId;
        public String audioTrackName;
        public AudioTrackType audioTrackType;
        public String content;
        public String id;
        public boolean isUrl;
        public ItagItem itagItem;
        public String manifestUrl;
        public MediaFormat mediaFormat;
        public DeliveryMethod deliveryMethod = DeliveryMethod.PROGRESSIVE_HTTP;
        public int averageBitrate = -1;

        public final AudioStream build() {
            if (this.id == null) {
                _UtilJvmKt$$ExternalSyntheticLambda1.m$2("The identifier of the audio stream has been not set or is null. If you are not able to get an identifier, use the static constant ID_UNKNOWN of the Stream class.");
                return null;
            }
            if (this.content != null) {
                return new AudioStream(this);
            }
            _UtilJvmKt$$ExternalSyntheticLambda1.m$2("The content of the audio stream has been not set or is null. Please specify a non-null one with setContent.");
            return null;
        }
    }

    public AudioStream(Builder builder) {
        super(builder.id, builder.content, builder.isUrl, builder.mediaFormat, builder.deliveryMethod, builder.manifestUrl);
        this.itag = -1;
        ItagItem itagItem = builder.itagItem;
        if (itagItem != null) {
            this.itagItem = itagItem;
            this.itag = itagItem.id;
            this.quality = itagItem.getQuality();
            this.bitrate = builder.itagItem.getBitrate();
            this.initStart = builder.itagItem.getInitStart();
            this.initEnd = builder.itagItem.getInitEnd();
            this.indexStart = builder.itagItem.getIndexStart();
            this.indexEnd = builder.itagItem.getIndexEnd();
            this.codec = builder.itagItem.getCodec();
        }
        this.averageBitrate = builder.averageBitrate;
        this.audioTrackId = builder.audioTrackId;
        this.audioTrackName = builder.audioTrackName;
        this.audioLocale = builder.audioLocale;
        this.audioTrackType = builder.audioTrackType;
    }

    @Override // org.schabi.newpipe.extractor.stream.Stream
    public final boolean equalStats(Stream stream) {
        if (!super.equalStats(stream) || !(stream instanceof AudioStream)) {
            return false;
        }
        AudioStream audioStream = (AudioStream) stream;
        return this.averageBitrate == audioStream.averageBitrate && Objects.equals(this.audioTrackId, audioStream.audioTrackId) && this.audioTrackType == audioStream.audioTrackType && Objects.equals(this.audioLocale, audioStream.audioLocale);
    }

    public final Locale getAudioLocale() {
        return this.audioLocale;
    }

    public final String getAudioTrackId() {
        return this.audioTrackId;
    }

    public final String getAudioTrackName() {
        return this.audioTrackName;
    }

    public final AudioTrackType getAudioTrackType() {
        return this.audioTrackType;
    }

    public final int getAverageBitrate() {
        return this.averageBitrate;
    }

    @Override // org.schabi.newpipe.extractor.stream.Stream
    public final ItagItem getItagItem() {
        return this.itagItem;
    }
}
