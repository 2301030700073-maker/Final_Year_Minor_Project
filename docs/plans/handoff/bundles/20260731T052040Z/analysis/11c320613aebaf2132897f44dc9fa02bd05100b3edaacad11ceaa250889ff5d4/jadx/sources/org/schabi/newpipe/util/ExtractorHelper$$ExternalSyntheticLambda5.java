package org.schabi.newpipe.util;

import java.util.concurrent.Callable;
import org.schabi.newpipe.extractor.Page;
import org.schabi.newpipe.extractor.StreamingService;
import org.schabi.newpipe.extractor.linkhandler.ListLinkHandlerFactory;
import us.shandian.giga.util.Utility;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final /* synthetic */ class ExtractorHelper$$ExternalSyntheticLambda5 implements Callable {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ int f$0;
    public final /* synthetic */ String f$1;
    public final /* synthetic */ Page f$2;

    public /* synthetic */ ExtractorHelper$$ExternalSyntheticLambda5(int i, String str, Page page, int i2) {
        this.$r8$classId = i2;
        this.f$0 = i;
        this.f$1 = str;
        this.f$2 = page;
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        int i = this.$r8$classId;
        Page page = this.f$2;
        String str = this.f$1;
        int i2 = this.f$0;
        switch (i) {
            case 0:
                return Utility.getService(i2).getKioskList().getExtractorByUrl(str).getPage(page);
            case 1:
                StreamingService service = Utility.getService(i2);
                return service.getPlaylistExtractor(service.getPlaylistLHFactory().fromUrl(str)).getPage(page);
            default:
                StreamingService service2 = Utility.getService(i2);
                ListLinkHandlerFactory commentsLHFactory = service2.getCommentsLHFactory();
                return (commentsLHFactory == null ? null : service2.getCommentsExtractor(commentsLHFactory.fromUrl(str))).getPage(page);
        }
    }
}
