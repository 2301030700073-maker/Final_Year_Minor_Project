package org.schabi.newpipe.util;

import java.util.Collections;
import java.util.concurrent.Callable;
import org.koin.core.logger.Logger;
import org.schabi.newpipe.extractor.ListExtractor;
import org.schabi.newpipe.extractor.StreamingService;
import org.schabi.newpipe.extractor.channel.ChannelInfo;
import org.schabi.newpipe.extractor.comments.CommentsInfo;
import org.schabi.newpipe.extractor.exceptions.ContentNotAvailableException;
import org.schabi.newpipe.extractor.exceptions.ExtractionException;
import org.schabi.newpipe.extractor.kiosk.KioskExtractor;
import org.schabi.newpipe.extractor.kiosk.KioskInfo;
import org.schabi.newpipe.extractor.linkhandler.ListLinkHandler;
import org.schabi.newpipe.extractor.playlist.PlaylistInfo;
import org.schabi.newpipe.extractor.stream.StreamInfo;
import org.schabi.newpipe.extractor.utils.JavaScript;
import org.schabi.newpipe.extractor.utils.Utils;
import us.shandian.giga.util.Utility;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final /* synthetic */ class ExtractorHelper$$ExternalSyntheticLambda3 implements Callable {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ int f$0;
    public final /* synthetic */ String f$1;

    public /* synthetic */ ExtractorHelper$$ExternalSyntheticLambda3(int i, int i2, String str) {
        this.$r8$classId = i2;
        this.f$0 = i;
        this.f$1 = str;
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        int i = this.$r8$classId;
        String str = this.f$1;
        int i2 = this.f$0;
        switch (i) {
            case 0:
                StreamingService service = Utility.getService(i2);
                JavaScript.d("getInfo({service},{url})", service, str);
                ListExtractor streamExtractor = service.getStreamExtractor(service.getStreamLHFactory().fromUrl(str));
                JavaScript.d("getInfo({extractor})", streamExtractor);
                streamExtractor.fetchPage();
                try {
                    StreamInfo extractImportantData = StreamInfo.extractImportantData(streamExtractor);
                    StreamInfo.extractStreams(extractImportantData, streamExtractor);
                    StreamInfo.extractOptionalData(extractImportantData, streamExtractor);
                    return extractImportantData;
                } catch (ExtractionException e) {
                    String errorMessage = streamExtractor.getErrorMessage();
                    if (Utils.isNullOrEmpty(errorMessage)) {
                        throw e;
                    }
                    throw new ContentNotAvailableException(errorMessage, e);
                }
            case 1:
                Logger suggestionExtractor = Utility.getService(i2).getSuggestionExtractor();
                return suggestionExtractor != null ? suggestionExtractor.suggestionList(str) : Collections.EMPTY_LIST;
            case 2:
                KioskExtractor extractorByUrl = Utility.getService(i2).getKioskList().getExtractorByUrl(str);
                extractorByUrl.fetchPage();
                KioskInfo kioskInfo = new KioskInfo(extractorByUrl.service.serviceId, (ListLinkHandler) extractorByUrl.linkHandler, extractorByUrl.getName());
                ListExtractor.InfoItemsPage itemsPageOrLogError = JavaScript.getItemsPageOrLogError(kioskInfo, extractorByUrl);
                kioskInfo.setRelatedItems(itemsPageOrLogError.itemsList);
                kioskInfo.setNextPage(itemsPageOrLogError.nextPage);
                return kioskInfo;
            case 3:
                return ChannelInfo.getInfo(Utility.getService(i2), str);
            case 4:
                return CommentsInfo.getInfo(Utility.getService(i2), str);
            default:
                return PlaylistInfo.getInfo(Utility.getService(i2), str);
        }
    }
}
