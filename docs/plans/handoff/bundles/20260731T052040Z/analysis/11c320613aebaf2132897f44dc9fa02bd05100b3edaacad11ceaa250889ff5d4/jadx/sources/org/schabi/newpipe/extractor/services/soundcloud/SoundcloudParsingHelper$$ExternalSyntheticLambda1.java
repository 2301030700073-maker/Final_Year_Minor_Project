package org.schabi.newpipe.extractor.services.soundcloud;

import com.grack.nanojson.JsonObject;
import j$.util.function.Consumer$CC;
import java.util.function.Consumer;
import org.schabi.newpipe.extractor.InfoItemExtractor;
import org.schabi.newpipe.extractor.MultiInfoItemsCollector;
import org.schabi.newpipe.extractor.services.media_ccc.extractors.MediaCCCSearchExtractor;
import org.schabi.newpipe.extractor.services.soundcloud.extractors.SoundcloudLikesInfoItemExtractor;
import org.schabi.newpipe.extractor.services.youtube.extractors.YoutubePlaylistInfoItemExtractor;
import org.schabi.newpipe.extractor.services.youtube.extractors.YoutubeReelInfoItemExtractor;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final /* synthetic */ class SoundcloudParsingHelper$$ExternalSyntheticLambda1 implements Consumer {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ MultiInfoItemsCollector f$0;

    public /* synthetic */ SoundcloudParsingHelper$$ExternalSyntheticLambda1(MultiInfoItemsCollector multiInfoItemsCollector, int i) {
        this.$r8$classId = i;
        this.f$0 = multiInfoItemsCollector;
    }

    @Override // java.util.function.Consumer
    /* renamed from: accept */
    public final void s(Object obj) {
        JsonObject jsonObject;
        int i = this.$r8$classId;
        MultiInfoItemsCollector multiInfoItemsCollector = this.f$0;
        int i2 = 2;
        switch (i) {
            case 0:
                jsonObject = (JsonObject) obj;
                String string = jsonObject.getString("kind", "");
                string.getClass();
                switch (string) {
                    case "like":
                        JsonObject object = jsonObject.getObject(null, "playlist");
                        multiInfoItemsCollector.commit(object == null ? new SoundcloudLikesInfoItemExtractor(jsonObject.getObject("track"), 3) : new YoutubePlaylistInfoItemExtractor(object, i2));
                        break;
                    case "user":
                        multiInfoItemsCollector.commit(new MediaCCCSearchExtractor.AnonymousClass1(i2, jsonObject));
                        break;
                    case "track":
                        multiInfoItemsCollector.commit(new YoutubeReelInfoItemExtractor(jsonObject, 3));
                        break;
                    case "playlist":
                        multiInfoItemsCollector.commit(new YoutubePlaylistInfoItemExtractor(jsonObject, i2));
                        break;
                }
            case 1:
                multiInfoItemsCollector.commit(new YoutubeReelInfoItemExtractor((JsonObject) obj, 2));
                break;
            default:
                multiInfoItemsCollector.commit((InfoItemExtractor) obj);
                break;
        }
    }

    public /* synthetic */ Consumer andThen(Consumer consumer) {
        int i = this.$r8$classId;
        return Consumer$CC.$default$andThen(this, consumer);
    }
}
