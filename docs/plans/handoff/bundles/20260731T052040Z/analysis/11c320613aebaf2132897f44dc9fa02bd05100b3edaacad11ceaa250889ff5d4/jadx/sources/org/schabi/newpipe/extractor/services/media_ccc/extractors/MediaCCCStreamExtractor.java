package org.schabi.newpipe.extractor.services.media_ccc.extractors;

import androidx.compose.ui.node.Owner;
import com.google.android.exoplayer2.util.MimeTypes;
import com.grack.nanojson.JsonArray;
import com.grack.nanojson.JsonObject;
import com.grack.nanojson.JsonParser;
import com.grack.nanojson.JsonParserException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import kotlin.io.CloseableKt;
import org.jsoup.internal.StringUtil$$ExternalSyntheticLambda1;
import org.schabi.newpipe.extractor.ListExtractor;
import org.schabi.newpipe.extractor.MediaFormat;
import org.schabi.newpipe.extractor.exceptions.ExtractionException;
import org.schabi.newpipe.extractor.exceptions.ParsingException;
import org.schabi.newpipe.extractor.localization.DateWrapper;
import org.schabi.newpipe.extractor.stream.AudioStream;
import org.schabi.newpipe.extractor.stream.Description;
import org.schabi.newpipe.extractor.stream.StreamType;
import org.schabi.newpipe.extractor.utils.JavaScript;
import org.schabi.newpipe.extractor.utils.Parser;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class MediaCCCStreamExtractor extends ListExtractor {
    public JsonObject conferenceData;
    public JsonObject data;

    @Override // org.schabi.newpipe.extractor.ListExtractor
    public final List getAudioStreams() {
        JsonArray array = this.data.getArray("recordings");
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < array.size(); i++) {
            JsonObject object = array.getObject(i);
            String string = object.getString("mime_type", null);
            if (string.startsWith(MimeTypes.BASE_TYPE_AUDIO)) {
                MediaFormat mediaFormat = string.endsWith("opus") ? MediaFormat.OPUS : string.endsWith("mpeg") ? MediaFormat.MP3 : string.endsWith("ogg") ? MediaFormat.OGG : null;
                AudioStream.Builder builder = new AudioStream.Builder();
                builder.id = object.getString("filename", " ");
                builder.content = object.getString("recording_url", null);
                builder.isUrl = true;
                builder.mediaFormat = mediaFormat;
                builder.averageBitrate = -1;
                String string2 = object.getString("language", null);
                if (string2 != null && !string2.contains("-")) {
                    builder.audioLocale = (Locale) JavaScript.forLanguageTag(string2).orElseThrow(new StringUtil$$ExternalSyntheticLambda1(string2, 4));
                }
                arrayList.add(builder.build());
            }
        }
        return arrayList;
    }

    @Override // org.schabi.newpipe.extractor.ListExtractor
    /* renamed from: getDescription */
    public final Description mo861getDescription() {
        return new Description(this.data.getString("description", null), 3);
    }

    @Override // org.schabi.newpipe.extractor.ListExtractor
    public final Locale getLanguageInfo() {
        String string = this.data.getString("original_language", null);
        String[] iSOLanguages = Locale.getISOLanguages();
        HashMap hashMap = new HashMap(iSOLanguages.length);
        for (String str : iSOLanguages) {
            Locale locale = new Locale(str);
            hashMap.put(locale.getISO3Language(), locale);
        }
        if (hashMap.containsKey(string)) {
            return (Locale) hashMap.get(string);
        }
        throw new ParsingException(Owner.CC.m("Could not get Locale from this three letter language code", string));
    }

    @Override // org.schabi.newpipe.extractor.ListExtractor
    public final long getLength() {
        return this.data.getInt(0, "length");
    }

    @Override // org.schabi.newpipe.extractor.ListExtractor
    public final String getName() {
        return this.data.getString("title", null);
    }

    @Override // org.schabi.newpipe.extractor.ListExtractor
    public final String getOriginalUrl() {
        return this.data.getString("frontend_link", null);
    }

    @Override // org.schabi.newpipe.extractor.ListExtractor
    public final StreamType getStreamType() {
        return StreamType.VIDEO_STREAM;
    }

    @Override // org.schabi.newpipe.extractor.ListExtractor
    public final List getTags() {
        return Parser.getStringListFromJsonArray(this.data.getArray("tags"));
    }

    @Override // org.schabi.newpipe.extractor.ListExtractor
    public final String getTextualUploadDate() {
        return this.data.getString("release_date", null);
    }

    @Override // org.schabi.newpipe.extractor.ListExtractor
    public final List getThumbnails() {
        return MediaCCCParsingHelper.getThumbnailsFromObject(this.data, "thumb_url", "poster_url");
    }

    @Override // org.schabi.newpipe.extractor.ListExtractor
    public final DateWrapper getUploadDate() {
        return DateWrapper.fromOffsetDateTime(getTextualUploadDate());
    }

    @Override // org.schabi.newpipe.extractor.ListExtractor
    public final List getUploaderAvatars() {
        return MediaCCCParsingHelper.getImageListFromLogoImageUrl(this.conferenceData.getString("logo_url", null));
    }

    @Override // org.schabi.newpipe.extractor.ListExtractor
    public final String getUploaderName() {
        return this.data.getString("conference_url", null).replaceFirst("https://(api\\.)?media\\.ccc\\.de/public/conferences/", "");
    }

    @Override // org.schabi.newpipe.extractor.ListExtractor
    public final String getUploaderUrl() {
        return Owner.CC.m("https://media.ccc.de/c/", getUploaderName());
    }

    @Override // org.schabi.newpipe.extractor.ListExtractor
    public final List getVideoOnlyStreams() {
        return Collections.EMPTY_LIST;
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x006b  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0083 A[SYNTHETIC] */
    @Override // org.schabi.newpipe.extractor.ListExtractor
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.util.List getVideoStreams() {
        /*
            r17 = this;
            r0 = r17
            com.grack.nanojson.JsonObject r0 = r0.data
            java.lang.String r1 = "recordings"
            com.grack.nanojson.JsonArray r0 = r0.getArray(r1)
            java.util.ArrayList r1 = new java.util.ArrayList
            r1.<init>()
            r2 = 0
            r3 = r2
        L11:
            int r4 = r0.size()
            if (r3 >= r4) goto L8c
            com.grack.nanojson.JsonObject r4 = r0.getObject(r3)
            java.lang.String r5 = "mime_type"
            r6 = 0
            java.lang.String r5 = r4.getString(r5, r6)
            java.lang.String r7 = "video"
            boolean r7 = r5.startsWith(r7)
            if (r7 == 0) goto L89
            java.lang.String r7 = "webm"
            boolean r7 = r5.endsWith(r7)
            if (r7 == 0) goto L38
            org.schabi.newpipe.extractor.MediaFormat r5 = org.schabi.newpipe.extractor.MediaFormat.WEBM
        L36:
            r11 = r5
            goto L44
        L38:
            java.lang.String r7 = "mp4"
            boolean r5 = r5.endsWith(r7)
            if (r5 == 0) goto L43
            org.schabi.newpipe.extractor.MediaFormat r5 = org.schabi.newpipe.extractor.MediaFormat.MPEG_4
            goto L36
        L43:
            r11 = r6
        L44:
            java.lang.String r5 = "filename"
            java.lang.String r7 = " "
            java.lang.String r8 = r4.getString(r5, r7)
            java.lang.String r5 = "recording_url"
            java.lang.String r9 = r4.getString(r5, r6)
            java.lang.String r5 = "height"
            int r4 = r4.getInt(r2, r5)
            java.lang.StringBuilder r5 = new java.lang.StringBuilder
            r5.<init>()
            r5.append(r4)
            java.lang.String r4 = "p"
            r5.append(r4)
            java.lang.String r13 = r5.toString()
            if (r8 == 0) goto L83
            if (r9 == 0) goto L7d
            org.schabi.newpipe.extractor.stream.VideoStream r7 = new org.schabi.newpipe.extractor.stream.VideoStream
            r14 = 0
            r10 = 1
            org.schabi.newpipe.extractor.stream.DeliveryMethod r12 = org.schabi.newpipe.extractor.stream.DeliveryMethod.PROGRESSIVE_HTTP
            r15 = 0
            r16 = 0
            r7.<init>(r8, r9, r10, r11, r12, r13, r14, r15, r16)
            r1.add(r7)
            goto L89
        L7d:
            java.lang.String r0 = "The content of the video stream has been not set or is null. Please specify a non-null one with setContent."
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1.m$2(r0)
            return r6
        L83:
            java.lang.String r0 = "The identifier of the video stream has been not set or is null. If you are not able to get an identifier, use the static constant ID_UNKNOWN of the Stream class."
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1.m$2(r0)
            return r6
        L89:
            int r3 = r3 + 1
            goto L11
        L8c:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: org.schabi.newpipe.extractor.services.media_ccc.extractors.MediaCCCStreamExtractor.getVideoStreams():java.util.List");
    }

    @Override // org.schabi.newpipe.extractor.ListExtractor
    public final long getViewCount() {
        return this.data.getInt(0, "view_count");
    }

    @Override // org.schabi.newpipe.extractor.ListExtractor
    public final void onFetchPage(CloseableKt closeableKt) {
        String m = Owner.CC.m("https://api.media.ccc.de/public/events/", this.linkHandler.getId());
        try {
            this.data = (JsonObject) JsonParser.object().from((String) closeableKt.get(m).mHiddenViews);
            this.conferenceData = (JsonObject) JsonParser.object().from((String) closeableKt.get(this.data.getString("conference_url", null)).mHiddenViews);
        } catch (JsonParserException e) {
            throw new ExtractionException("Could not parse json returned by URL: ".concat(m), e);
        }
    }
}
