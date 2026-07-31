package org.schabi.newpipe.extractor;

import com.google.android.exoplayer2.util.MimeTypes;
import j$.util.DesugarArrays;
import org.jsoup.select.Nodes$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public enum MediaFormat {
    MPEG_4("MPEG_4", "MPEG-4", "mp4", MimeTypes.VIDEO_MP4),
    v3GPP("v3GPP", "3GPP", "3gp", MimeTypes.VIDEO_H263),
    WEBM("WEBM", "WebM", "webm", MimeTypes.VIDEO_WEBM),
    M4A("M4A", "m4a", "m4a", MimeTypes.AUDIO_MP4),
    WEBMA("WEBMA", "WebM", "webm", MimeTypes.AUDIO_WEBM),
    MP3("MP3", "MP3", "mp3", MimeTypes.AUDIO_MPEG),
    /* JADX INFO: Fake field, exist only in values array */
    EF6("MP2", "MP2", "mp2", MimeTypes.AUDIO_MPEG),
    OPUS("OPUS", "opus", "opus", MimeTypes.AUDIO_OPUS),
    OGG("OGG", "ogg", "ogg", MimeTypes.AUDIO_OGG),
    WEBMA_OPUS("WEBMA_OPUS", "WebM Opus", "webm", MimeTypes.AUDIO_WEBM),
    /* JADX INFO: Fake field, exist only in values array */
    EF10("AIFF", "AIFF", "aiff", "audio/aiff"),
    /* JADX INFO: Fake field, exist only in values array */
    EF11("AIF", "AIFF", "aif", "audio/aiff"),
    /* JADX INFO: Fake field, exist only in values array */
    EF12("WAV", "WAV", "wav", MimeTypes.AUDIO_WAV),
    /* JADX INFO: Fake field, exist only in values array */
    EF13("FLAC", "FLAC", "flac", MimeTypes.AUDIO_FLAC),
    /* JADX INFO: Fake field, exist only in values array */
    EF14("ALAC", "ALAC", "alac", MimeTypes.AUDIO_ALAC),
    /* JADX INFO: Fake field, exist only in values array */
    EF15("VTT", "WebVTT", "vtt", MimeTypes.TEXT_VTT),
    TTML("TTML", "Timed Text Markup Language", "ttml", MimeTypes.APPLICATION_TTML),
    /* JADX INFO: Fake field, exist only in values array */
    EF17("TRANSCRIPT1", "TranScript v1", "srv1", "text/xml"),
    /* JADX INFO: Fake field, exist only in values array */
    EF18("TRANSCRIPT2", "TranScript v2", "srv2", "text/xml"),
    /* JADX INFO: Fake field, exist only in values array */
    EF19("TRANSCRIPT3", "TranScript v3", "srv3", "text/xml"),
    SRT("SRT", "SubRip file format", "srt", "text/srt");

    public final int id;
    public final String mimeType;
    public final String name;
    public final String suffix;

    MediaFormat(String str, String str2, String str3, String str4) {
        this.id = r2;
        this.name = str2;
        this.suffix = str3;
        this.mimeType = str4;
    }

    public static MediaFormat getFromSuffix(String str) {
        return (MediaFormat) DesugarArrays.stream(values()).filter(new NewPipe$$ExternalSyntheticLambda2(str, 3)).findFirst().orElse(null);
    }

    public static String getNameById(int i) {
        return (String) DesugarArrays.stream(values()).filter(new NewPipe$$ExternalSyntheticLambda0(i, 1)).map(new Nodes$$ExternalSyntheticLambda0(20)).findFirst().orElse("");
    }
}
