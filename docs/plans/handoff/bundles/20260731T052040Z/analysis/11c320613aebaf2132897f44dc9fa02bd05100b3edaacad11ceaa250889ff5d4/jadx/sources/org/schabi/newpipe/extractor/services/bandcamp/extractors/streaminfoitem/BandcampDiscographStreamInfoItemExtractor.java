package org.schabi.newpipe.extractor.services.bandcamp.extractors.streaminfoitem;

import com.grack.nanojson.JsonObject;
import java.util.List;
import org.schabi.newpipe.extractor.services.bandcamp.extractors.BandcampExtractorHelper;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class BandcampDiscographStreamInfoItemExtractor extends BandcampStreamInfoItemExtractor {
    public final JsonObject discograph;

    public BandcampDiscographStreamInfoItemExtractor(JsonObject jsonObject, String str) {
        super(str);
        this.discograph = jsonObject;
    }

    @Override // org.schabi.newpipe.extractor.stream.StreamInfoItemExtractor
    public final long getDuration() {
        return -1L;
    }

    @Override // org.schabi.newpipe.extractor.InfoItemExtractor
    public final String getName() {
        return this.discograph.getString("title", null);
    }

    @Override // org.schabi.newpipe.extractor.InfoItemExtractor
    public final List getThumbnails() {
        return BandcampExtractorHelper.getImagesFromImageId(this.discograph.getLong("art_id", 0L), true);
    }

    @Override // org.schabi.newpipe.extractor.stream.StreamInfoItemExtractor
    public final String getUploaderName() {
        return this.discograph.getString("band_name", null);
    }

    @Override // org.schabi.newpipe.extractor.InfoItemExtractor
    public final String getUrl() {
        JsonObject jsonObject = this.discograph;
        return BandcampExtractorHelper.getStreamUrlFromIds(jsonObject.getLong("band_id", 0L), jsonObject.getString("item_type", null), jsonObject.getLong("item_id", 0L));
    }
}
