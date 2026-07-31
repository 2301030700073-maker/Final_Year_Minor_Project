package org.schabi.newpipe.extractor.services.bandcamp.extractors.streaminfoitem;

import androidx.compose.ui.node.Owner;
import com.grack.nanojson.JsonObject;
import java.io.IOException;
import java.util.Collections;
import java.util.List;
import org.schabi.newpipe.extractor.ListExtractor;
import org.schabi.newpipe.extractor.StreamingService;
import org.schabi.newpipe.extractor.exceptions.ExtractionException;
import org.schabi.newpipe.extractor.utils.Utils$$ExternalSyntheticBUOutline0;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class BandcampPlaylistStreamInfoItemExtractor extends BandcampStreamInfoItemExtractor {
    public final StreamingService service;
    public List substituteCovers;
    public final JsonObject track;

    public BandcampPlaylistStreamInfoItemExtractor(JsonObject jsonObject, String str, StreamingService streamingService) {
        super(str);
        this.track = jsonObject;
        this.service = streamingService;
        this.substituteCovers = Collections.EMPTY_LIST;
    }

    @Override // org.schabi.newpipe.extractor.stream.StreamInfoItemExtractor
    public final long getDuration() {
        return this.track.getLong("duration", 0L);
    }

    @Override // org.schabi.newpipe.extractor.InfoItemExtractor
    public final String getName() {
        return this.track.getString("title", null);
    }

    @Override // org.schabi.newpipe.extractor.InfoItemExtractor
    public final List getThumbnails() {
        StreamingService streamingService;
        List list = this.substituteCovers;
        if (!list.isEmpty() || getUrl() == null) {
            return list;
        }
        try {
            streamingService = this.service;
        } catch (IOException | ExtractionException e) {
            e = e;
        }
        try {
            ListExtractor streamExtractor = streamingService.getStreamExtractor(streamingService.getStreamLHFactory().fromUrl(getUrl()));
            streamExtractor.fetchPage();
            return streamExtractor.getThumbnails();
        } catch (IOException e2) {
            e = e2;
            Utils$$ExternalSyntheticBUOutline0.m("Could not download cover art location", e);
            return null;
        }
    }

    @Override // org.schabi.newpipe.extractor.stream.StreamInfoItemExtractor
    public final String getUploaderName() {
        return "";
    }

    @Override // org.schabi.newpipe.extractor.InfoItemExtractor
    public final String getUrl() {
        String string = this.track.getString("title_link", null);
        if (string != null) {
            return Owner.CC.m$1(this.uploaderUrl, string);
        }
        return null;
    }
}
