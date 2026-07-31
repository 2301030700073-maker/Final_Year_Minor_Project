package org.schabi.newpipe.extractor.services.bandcamp.extractors;

import com.google.android.exoplayer2.upstream.CmcdHeadersFactory;
import com.grack.nanojson.JsonArray;
import com.grack.nanojson.JsonObject;
import com.grack.nanojson.JsonParser;
import com.grack.nanojson.JsonParserException;
import j$.util.Collection;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import kotlin.io.CloseableKt;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Entities$$ExternalSyntheticLambda0;
import org.jsoup.select.Nodes$$ExternalSyntheticLambda0;
import org.schabi.newpipe.extractor.Image;
import org.schabi.newpipe.extractor.InfoItemsCollector;
import org.schabi.newpipe.extractor.MediaFormat;
import org.schabi.newpipe.extractor.exceptions.ContentNotSupportedException;
import org.schabi.newpipe.extractor.exceptions.ReCaptchaException;
import org.schabi.newpipe.extractor.stream.AudioStream;
import org.schabi.newpipe.extractor.stream.Description;
import org.schabi.newpipe.extractor.stream.StreamInfoItemsCollector;
import org.schabi.newpipe.extractor.stream.StreamSegment;
import org.schabi.newpipe.extractor.utils.Utils$$ExternalSyntheticBUOutline0;
import us.shandian.giga.util.Utility;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class BandcampRadioStreamExtractor extends BandcampStreamExtractor {
    public JsonObject showInfo;

    @Override // org.schabi.newpipe.extractor.services.bandcamp.extractors.BandcampStreamExtractor, org.schabi.newpipe.extractor.ListExtractor
    public final List getAudioStreams() {
        ArrayList arrayList = new ArrayList();
        JsonObject object = this.showInfo.getObject("audio_stream");
        if (object.containsKey("mp3-128")) {
            AudioStream.Builder builder = new AudioStream.Builder();
            builder.id = "mp3-128";
            builder.content = object.getString("mp3-128", null);
            builder.isUrl = true;
            builder.mediaFormat = MediaFormat.MP3;
            builder.averageBitrate = 128;
            arrayList.add(builder.build());
        }
        if (object.containsKey("opus-lo")) {
            AudioStream.Builder builder2 = new AudioStream.Builder();
            builder2.id = "opus-lo";
            builder2.content = object.getString("opus-lo", null);
            builder2.isUrl = true;
            builder2.mediaFormat = MediaFormat.OPUS;
            builder2.averageBitrate = 100;
            arrayList.add(builder2.build());
        }
        return arrayList;
    }

    @Override // org.schabi.newpipe.extractor.services.bandcamp.extractors.BandcampStreamExtractor, org.schabi.newpipe.extractor.ListExtractor
    public final String getCategory() {
        return "";
    }

    @Override // org.schabi.newpipe.extractor.services.bandcamp.extractors.BandcampStreamExtractor, org.schabi.newpipe.extractor.ListExtractor
    /* renamed from: getDescription */
    public final Description mo861getDescription() {
        return new Description(this.showInfo.getString("desc", null), 3);
    }

    @Override // org.schabi.newpipe.extractor.services.bandcamp.extractors.BandcampStreamExtractor, org.schabi.newpipe.extractor.ListExtractor
    public final long getLength() {
        return this.showInfo.getLong("audio_duration", 0L);
    }

    @Override // org.schabi.newpipe.extractor.services.bandcamp.extractors.BandcampStreamExtractor, org.schabi.newpipe.extractor.ListExtractor
    public final String getLicence() {
        return "";
    }

    @Override // org.schabi.newpipe.extractor.services.bandcamp.extractors.BandcampStreamExtractor, org.schabi.newpipe.extractor.ListExtractor
    public final String getName() {
        return this.showInfo.getString("subtitle", null);
    }

    @Override // org.schabi.newpipe.extractor.services.bandcamp.extractors.BandcampStreamExtractor, org.schabi.newpipe.extractor.ListExtractor
    public final /* bridge */ /* synthetic */ InfoItemsCollector getRelatedItems() {
        return null;
    }

    @Override // org.schabi.newpipe.extractor.ListExtractor
    public final List getStreamSegments() {
        JsonArray array = this.showInfo.getArray("tracks");
        ArrayList arrayList = new ArrayList(array.size());
        Iterator<E> it = array.iterator();
        while (it.hasNext()) {
            JsonObject jsonObject = (JsonObject) it.next();
            StreamSegment streamSegment = new StreamSegment(jsonObject.getString("title", null), jsonObject.getInt(0, "timecode"));
            long j = jsonObject.getLong("track_art_id", 0L);
            List list = BandcampExtractorHelper.IMAGE_URL_SUFFIXES_AND_RESOLUTIONS;
            streamSegment.setPreviewUrl("https://f4.bcbits.com/img/" + ((Object) 'a') + j + "_10.jpg");
            streamSegment.setChannelName(jsonObject.getString("artist", null));
            arrayList.add(streamSegment);
        }
        return arrayList;
    }

    @Override // org.schabi.newpipe.extractor.services.bandcamp.extractors.BandcampStreamExtractor, org.schabi.newpipe.extractor.ListExtractor
    public final List getTags() {
        return Collections.EMPTY_LIST;
    }

    @Override // org.schabi.newpipe.extractor.services.bandcamp.extractors.BandcampStreamExtractor, org.schabi.newpipe.extractor.ListExtractor
    public final String getTextualUploadDate() {
        return this.showInfo.getString("published_date", null);
    }

    @Override // org.schabi.newpipe.extractor.services.bandcamp.extractors.BandcampStreamExtractor, org.schabi.newpipe.extractor.ListExtractor
    public final List getThumbnails() {
        return BandcampExtractorHelper.getImagesFromImageId(this.showInfo.getLong("show_image_id", 0L), false);
    }

    @Override // org.schabi.newpipe.extractor.services.bandcamp.extractors.BandcampStreamExtractor, org.schabi.newpipe.extractor.ListExtractor
    public final List getUploaderAvatars() {
        return Collections.singletonList(new Image("https://bandcamp.com/img/buttons/bandcamp-button-circle-whitecolor-512.png", 512, 512, Image.ResolutionLevel.MEDIUM));
    }

    @Override // org.schabi.newpipe.extractor.services.bandcamp.extractors.BandcampStreamExtractor, org.schabi.newpipe.extractor.ListExtractor
    public final String getUploaderName() {
        return (String) Collection.EL.stream(Jsoup.parse(this.showInfo.getString("image_caption", null)).getElementsByTag(CmcdHeadersFactory.OBJECT_TYPE_AUDIO_ONLY)).map(new Nodes$$ExternalSyntheticLambda0(10)).findFirst().orElseThrow(new Entities$$ExternalSyntheticLambda0(10));
    }

    @Override // org.schabi.newpipe.extractor.services.bandcamp.extractors.BandcampStreamExtractor, org.schabi.newpipe.extractor.ListExtractor
    public final String getUploaderUrl() {
        throw new ContentNotSupportedException("Fan pages are not supported");
    }

    @Override // org.schabi.newpipe.extractor.services.bandcamp.extractors.BandcampStreamExtractor, org.schabi.newpipe.extractor.ListExtractor
    public final String getUrl() {
        return this.linkHandler.getUrl();
    }

    @Override // org.schabi.newpipe.extractor.services.bandcamp.extractors.BandcampStreamExtractor, org.schabi.newpipe.extractor.ListExtractor
    public final void onFetchPage(CloseableKt closeableKt) {
        int parseInt = Integer.parseInt(this.linkHandler.getId());
        try {
        } catch (JsonParserException | IOException | ReCaptchaException e) {
            e = e;
        }
        try {
            this.showInfo = (JsonObject) JsonParser.object().from((String) Utility.downloader.get("https://bandcamp.com/api/bcweekly/1/get?id=" + parseInt).mHiddenViews);
        } catch (JsonParserException e2) {
            e = e2;
            Utils$$ExternalSyntheticBUOutline0.m("could not get show data", e);
        } catch (ReCaptchaException e3) {
            e = e3;
            Utils$$ExternalSyntheticBUOutline0.m("could not get show data", e);
        }
    }

    @Override // org.schabi.newpipe.extractor.services.bandcamp.extractors.BandcampStreamExtractor, org.schabi.newpipe.extractor.ListExtractor
    public final StreamInfoItemsCollector getRelatedItems() {
        return null;
    }
}
