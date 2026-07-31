package org.schabi.newpipe.extractor.services.youtube;

import java.io.Serializable;
import java.util.Locale;
import org.mozilla.javascript.Context;
import org.mozilla.javascript.Token;
import org.schabi.newpipe.extractor.MediaFormat;
import org.schabi.newpipe.extractor.stream.AudioTrackType;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class ItagItem implements Serializable {
    public static final ItagItem[] ITAG_LIST;
    private long approxDurationMs;
    private int audioChannels;
    private Locale audioLocale;
    private String audioTrackId;
    private String audioTrackName;
    private AudioTrackType audioTrackType;

    @Deprecated
    public int avgBitrate;
    private int bitrate;
    private String codec;
    private long contentLength;

    @Deprecated
    public int fps;
    private int height;
    public final int id;
    private int indexEnd;
    private int indexStart;
    private int initEnd;
    private int initStart;
    private boolean isDrc;
    public final ItagType itagType;
    private long lastModified;
    private final MediaFormat mediaFormat;
    private String quality;

    @Deprecated
    public String resolutionString;
    private int sampleRate;
    private int targetDurationSec;
    private int width;
    private String xtags;

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class ItagType {
        public static final /* synthetic */ ItagType[] $VALUES;
        public static final ItagType AUDIO;
        public static final ItagType VIDEO;
        public static final ItagType VIDEO_ONLY;

        static {
            ItagType itagType = new ItagType("AUDIO", 0);
            AUDIO = itagType;
            ItagType itagType2 = new ItagType("VIDEO", 1);
            VIDEO = itagType2;
            ItagType itagType3 = new ItagType("VIDEO_ONLY", 2);
            VIDEO_ONLY = itagType3;
            $VALUES = new ItagType[]{itagType, itagType2, itagType3};
        }

        public static ItagType valueOf(String str) {
            return (ItagType) Enum.valueOf(ItagType.class, str);
        }

        public static ItagType[] values() {
            return (ItagType[]) $VALUES.clone();
        }
    }

    static {
        ItagType itagType = ItagType.VIDEO;
        MediaFormat mediaFormat = MediaFormat.v3GPP;
        ItagItem itagItem = new ItagItem(17, itagType, mediaFormat, "144p");
        ItagItem itagItem2 = new ItagItem(36, itagType, mediaFormat, "240p");
        MediaFormat mediaFormat2 = MediaFormat.MPEG_4;
        ItagItem itagItem3 = new ItagItem(18, itagType, mediaFormat2, "360p");
        ItagItem itagItem4 = new ItagItem(34, itagType, mediaFormat2, "360p");
        ItagItem itagItem5 = new ItagItem(35, itagType, mediaFormat2, "480p");
        ItagItem itagItem6 = new ItagItem(59, itagType, mediaFormat2, "480p");
        ItagItem itagItem7 = new ItagItem(78, itagType, mediaFormat2, "480p");
        ItagItem itagItem8 = new ItagItem(22, itagType, mediaFormat2, "720p");
        ItagItem itagItem9 = new ItagItem(37, itagType, mediaFormat2, "1080p");
        ItagItem itagItem10 = new ItagItem(38, itagType, mediaFormat2, "1080p");
        MediaFormat mediaFormat3 = MediaFormat.WEBM;
        ItagItem itagItem11 = new ItagItem(43, itagType, mediaFormat3, "360p");
        ItagItem itagItem12 = new ItagItem(44, itagType, mediaFormat3, "480p");
        ItagItem itagItem13 = new ItagItem(45, itagType, mediaFormat3, "720p");
        ItagItem itagItem14 = new ItagItem(46, itagType, mediaFormat3, "1080p");
        MediaFormat mediaFormat4 = MediaFormat.WEBMA;
        ItagItem itagItem15 = new ItagItem(Token.ARRAYCOMP, mediaFormat4, 128);
        ItagItem itagItem16 = new ItagItem(172, mediaFormat4, 256);
        MediaFormat mediaFormat5 = MediaFormat.M4A;
        ItagItem itagItem17 = new ItagItem(599, mediaFormat5, 32);
        ItagItem itagItem18 = new ItagItem(Token.VOID, mediaFormat5, 48);
        ItagItem itagItem19 = new ItagItem(140, mediaFormat5, 128);
        ItagItem itagItem20 = new ItagItem(Token.EMPTY, mediaFormat5, 256);
        MediaFormat mediaFormat6 = MediaFormat.WEBMA_OPUS;
        ItagItem itagItem21 = new ItagItem(600, mediaFormat6, 35);
        ItagItem itagItem22 = new ItagItem(249, mediaFormat6, 50);
        ItagItem itagItem23 = new ItagItem(Context.VERSION_ECMASCRIPT, mediaFormat6, 70);
        ItagItem itagItem24 = new ItagItem(251, mediaFormat6, 160);
        ItagType itagType2 = ItagType.VIDEO_ONLY;
        ITAG_LIST = new ItagItem[]{itagItem, itagItem2, itagItem3, itagItem4, itagItem5, itagItem6, itagItem7, itagItem8, itagItem9, itagItem10, itagItem11, itagItem12, itagItem13, itagItem14, itagItem15, itagItem16, itagItem17, itagItem18, itagItem19, itagItem20, itagItem21, itagItem22, itagItem23, itagItem24, new ItagItem(160, itagType2, mediaFormat2, "144p"), new ItagItem(394, itagType2, mediaFormat2, "144p"), new ItagItem(Token.BREAK, itagType2, mediaFormat2, "240p"), new ItagItem(395, itagType2, mediaFormat2, "240p"), new ItagItem(134, itagType2, mediaFormat2, "360p"), new ItagItem(396, itagType2, mediaFormat2, "360p"), new ItagItem(135, itagType2, mediaFormat2, "480p"), new ItagItem(212, itagType2, mediaFormat2, "480p"), new ItagItem(397, itagType2, mediaFormat2, "480p"), new ItagItem(Token.WITH, itagType2, mediaFormat2, "720p"), new ItagItem(398, itagType2, mediaFormat2, "720p"), new ItagItem(298, mediaFormat2, "720p60"), new ItagItem(Token.CATCH, itagType2, mediaFormat2, "1080p"), new ItagItem(399, itagType2, mediaFormat2, "1080p"), new ItagItem(299, mediaFormat2, "1080p60"), new ItagItem(400, itagType2, mediaFormat2, "1440p"), new ItagItem(266, itagType2, mediaFormat2, "2160p"), new ItagItem(401, itagType2, mediaFormat2, "2160p"), new ItagItem(278, itagType2, mediaFormat3, "144p"), new ItagItem(242, itagType2, mediaFormat3, "240p"), new ItagItem(243, itagType2, mediaFormat3, "360p"), new ItagItem(244, itagType2, mediaFormat3, "480p"), new ItagItem(245, itagType2, mediaFormat3, "480p"), new ItagItem(246, itagType2, mediaFormat3, "480p"), new ItagItem(247, itagType2, mediaFormat3, "720p"), new ItagItem(248, itagType2, mediaFormat3, "1080p"), new ItagItem(271, itagType2, mediaFormat3, "1440p"), new ItagItem(272, itagType2, mediaFormat3, "2160p"), new ItagItem(302, mediaFormat3, "720p60"), new ItagItem(303, mediaFormat3, "1080p60"), new ItagItem(308, mediaFormat3, "1440p60"), new ItagItem(313, itagType2, mediaFormat3, "2160p"), new ItagItem(315, mediaFormat3, "2160p60")};
    }

    public ItagItem(ItagItem itagItem) {
        this.avgBitrate = -1;
        this.sampleRate = -1;
        this.audioChannels = -1;
        this.fps = -1;
        this.targetDurationSec = -1;
        this.approxDurationMs = -1L;
        this.contentLength = -1L;
        this.mediaFormat = itagItem.mediaFormat;
        this.id = itagItem.id;
        this.itagType = itagItem.itagType;
        this.avgBitrate = itagItem.avgBitrate;
        this.sampleRate = itagItem.sampleRate;
        this.audioChannels = itagItem.audioChannels;
        this.resolutionString = itagItem.resolutionString;
        this.fps = itagItem.fps;
        this.bitrate = itagItem.bitrate;
        this.width = itagItem.width;
        this.height = itagItem.height;
        this.initStart = itagItem.initStart;
        this.initEnd = itagItem.initEnd;
        this.indexStart = itagItem.indexStart;
        this.indexEnd = itagItem.indexEnd;
        this.quality = itagItem.quality;
        this.codec = itagItem.codec;
        this.targetDurationSec = itagItem.targetDurationSec;
        this.approxDurationMs = itagItem.approxDurationMs;
        this.contentLength = itagItem.contentLength;
        this.audioTrackId = itagItem.audioTrackId;
        this.audioTrackName = itagItem.audioTrackName;
        this.audioTrackType = itagItem.audioTrackType;
        this.audioLocale = itagItem.audioLocale;
    }

    public final long getApproxDurationMs() {
        return this.approxDurationMs;
    }

    public final int getAudioChannels() {
        return this.audioChannels;
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

    public final int getBitrate() {
        return this.bitrate;
    }

    public final String getCodec() {
        return this.codec;
    }

    public final int getHeight() {
        return this.height;
    }

    public final int getIndexEnd() {
        return this.indexEnd;
    }

    public final int getIndexStart() {
        return this.indexStart;
    }

    public final int getInitEnd() {
        return this.initEnd;
    }

    public final int getInitStart() {
        return this.initStart;
    }

    public final MediaFormat getMediaFormat() {
        return this.mediaFormat;
    }

    public final String getQuality() {
        return this.quality;
    }

    public final int getSampleRate() {
        return this.sampleRate;
    }

    public final int getTargetDurationSec() {
        return this.targetDurationSec;
    }

    public final int getWidth() {
        return this.width;
    }

    public final String getXtags() {
        return this.xtags;
    }

    public final void setApproxDurationMs(long j) {
        if (j <= 0) {
            j = -1;
        }
        this.approxDurationMs = j;
    }

    public final void setAudioChannels(int i) {
        if (i <= 0) {
            i = -1;
        }
        this.audioChannels = i;
    }

    public final void setAudioLocale(Locale locale) {
        this.audioLocale = locale;
    }

    public final void setAudioTrackId(String str) {
        this.audioTrackId = str;
    }

    public final void setAudioTrackName(String str) {
        this.audioTrackName = str;
    }

    public final void setAudioTrackType(AudioTrackType audioTrackType) {
        this.audioTrackType = audioTrackType;
    }

    public final void setBitrate(int i) {
        this.bitrate = i;
    }

    public final void setCodec(String str) {
        this.codec = str;
    }

    public final void setContentLength(long j) {
        if (j <= 0) {
            j = -1;
        }
        this.contentLength = j;
    }

    public final void setHeight(int i) {
        this.height = i;
    }

    public final void setIndexEnd(int i) {
        this.indexEnd = i;
    }

    public final void setIndexStart(int i) {
        this.indexStart = i;
    }

    public final void setInitEnd(int i) {
        this.initEnd = i;
    }

    public final void setInitStart(int i) {
        this.initStart = i;
    }

    public final void setIsDrc(Boolean bool) {
        this.isDrc = bool.booleanValue();
    }

    public final void setLastModified(long j) {
        this.lastModified = j;
    }

    public final void setQuality(String str) {
        this.quality = str;
    }

    public final void setSampleRate(int i) {
        if (i <= 0) {
            i = -1;
        }
        this.sampleRate = i;
    }

    public final void setTargetDurationSec(int i) {
        if (i <= 0) {
            i = -1;
        }
        this.targetDurationSec = i;
    }

    public final void setWidth(int i) {
        this.width = i;
    }

    public final void setXtags(String str) {
        this.xtags = str;
    }

    public ItagItem(int i, MediaFormat mediaFormat, String str) {
        this.avgBitrate = -1;
        this.sampleRate = -1;
        this.audioChannels = -1;
        this.targetDurationSec = -1;
        this.approxDurationMs = -1L;
        this.contentLength = -1L;
        this.id = i;
        this.itagType = ItagType.VIDEO_ONLY;
        this.mediaFormat = mediaFormat;
        this.resolutionString = str;
        this.fps = 60;
    }

    public ItagItem(int i, MediaFormat mediaFormat, int i2) {
        this.sampleRate = -1;
        this.audioChannels = -1;
        this.fps = -1;
        this.targetDurationSec = -1;
        this.approxDurationMs = -1L;
        this.contentLength = -1L;
        this.id = i;
        this.itagType = ItagType.AUDIO;
        this.mediaFormat = mediaFormat;
        this.avgBitrate = i2;
    }

    public ItagItem(int i, ItagType itagType, MediaFormat mediaFormat, String str) {
        this.avgBitrate = -1;
        this.sampleRate = -1;
        this.audioChannels = -1;
        this.targetDurationSec = -1;
        this.approxDurationMs = -1L;
        this.contentLength = -1L;
        this.id = i;
        this.itagType = itagType;
        this.mediaFormat = mediaFormat;
        this.resolutionString = str;
        this.fps = 30;
    }
}
