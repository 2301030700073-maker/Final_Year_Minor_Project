package org.schabi.newpipe.util;

import androidx.room.util.DBUtil;
import androidx.work.impl.model.WorkSpecDao_Impl$$ExternalSyntheticLambda3;
import java.io.Serializable;
import java.util.concurrent.Callable;
import org.schabi.newpipe.database.subscription.SubscriptionDAO_Impl;
import org.schabi.newpipe.extractor.Page;
import org.schabi.newpipe.extractor.StreamingService;
import org.schabi.newpipe.extractor.comments.CommentsInfo;
import org.schabi.newpipe.extractor.linkhandler.ListLinkHandler;
import org.schabi.newpipe.extractor.linkhandler.ListLinkHandlerFactory;
import org.schabi.newpipe.local.subscription.SubscriptionManager;
import us.shandian.giga.util.Utility;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final /* synthetic */ class ExtractorHelper$$ExternalSyntheticLambda4 implements Callable {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ int f$0;
    public final /* synthetic */ Object f$1;
    public final /* synthetic */ Serializable f$2;

    public /* synthetic */ ExtractorHelper$$ExternalSyntheticLambda4(SubscriptionManager subscriptionManager, int i, String str) {
        this.$r8$classId = 1;
        this.f$1 = subscriptionManager;
        this.f$0 = i;
        this.f$2 = str;
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        int i = this.$r8$classId;
        Serializable serializable = this.f$2;
        Object obj = this.f$1;
        int i2 = this.f$0;
        switch (i) {
            case 0:
                return Utility.getService(i2).getChannelTabExtractor((ListLinkHandler) obj).getPage((Page) serializable);
            case 1:
                String str = (String) serializable;
                SubscriptionDAO_Impl subscriptionDAO_Impl = ((SubscriptionManager) obj).subscriptionTable;
                subscriptionDAO_Impl.getClass();
                str.getClass();
                return Integer.valueOf(((Number) DBUtil.performBlocking(subscriptionDAO_Impl.__db, false, true, new WorkSpecDao_Impl$$ExternalSyntheticLambda3(str, i2, 7))).intValue());
            default:
                Page page = (Page) serializable;
                StreamingService service = Utility.getService(i2);
                String url = ((CommentsInfo) obj).getUrl();
                ListLinkHandlerFactory commentsLHFactory = service.getCommentsLHFactory();
                return (commentsLHFactory == null ? null : service.getCommentsExtractor(commentsLHFactory.fromUrl(url))).getPage(page);
        }
    }

    public /* synthetic */ ExtractorHelper$$ExternalSyntheticLambda4(int i, Serializable serializable, Page page, int i2) {
        this.$r8$classId = i2;
        this.f$0 = i;
        this.f$1 = serializable;
        this.f$2 = page;
    }
}
