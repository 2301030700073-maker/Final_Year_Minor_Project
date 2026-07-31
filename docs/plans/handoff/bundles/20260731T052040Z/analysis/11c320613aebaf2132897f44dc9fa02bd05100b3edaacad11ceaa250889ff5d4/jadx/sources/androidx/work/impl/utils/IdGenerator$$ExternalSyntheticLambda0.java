package androidx.work.impl.utils;

import androidx.room.util.DBUtil;
import androidx.work.impl.WorkDatabase;
import androidx.work.impl.model.Preference;
import androidx.work.impl.model.PreferenceDao_Impl;
import androidx.work.impl.model.WorkTagDao_Impl$$ExternalSyntheticLambda1;
import com.google.android.exoplayer2.util.Util;
import java.util.Arrays;
import java.util.concurrent.Callable;
import okio.ByteString;
import org.schabi.newpipe.R;
import org.schabi.newpipe.extractor.ListExtractor;
import org.schabi.newpipe.extractor.channel.tabs.ChannelTabInfo;
import org.schabi.newpipe.extractor.linkhandler.LinkHandler;
import org.schabi.newpipe.extractor.linkhandler.ListLinkHandler;
import org.schabi.newpipe.extractor.search.SearchExtractor;
import org.schabi.newpipe.extractor.utils.JavaScript;
import org.schabi.newpipe.streams.DataReader;
import org.schabi.newpipe.streams.io.StoredFileHelper;
import us.shandian.giga.util.Utility;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final /* synthetic */ class IdGenerator$$ExternalSyntheticLambda0 implements Callable {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;
    public final /* synthetic */ int f$2;

    public /* synthetic */ IdGenerator$$ExternalSyntheticLambda0(int i, ListLinkHandler listLinkHandler) {
        this.$r8$classId = 1;
        this.f$2 = i;
        this.f$0 = listLinkHandler;
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        int i = this.$r8$classId;
        int i2 = 0;
        int i3 = this.f$2;
        Object obj = this.f$0;
        switch (i) {
            case 0:
                WorkDatabase workDatabase = ((IdGenerator) obj).workDatabase;
                Long longValue = workDatabase.preferenceDao().getLongValue("next_job_scheduler_id");
                int longValue2 = longValue != null ? (int) longValue.longValue() : 0;
                int i4 = longValue2 == Integer.MAX_VALUE ? 0 : longValue2 + 1;
                PreferenceDao_Impl preferenceDao = workDatabase.preferenceDao();
                int i5 = 3;
                DBUtil.performBlocking(preferenceDao.__db, false, true, new WorkTagDao_Impl$$ExternalSyntheticLambda1(preferenceDao, new Preference("next_job_scheduler_id", Long.valueOf(i4)), i5));
                if (longValue2 < 0 || longValue2 > i3) {
                    PreferenceDao_Impl preferenceDao2 = workDatabase.preferenceDao();
                    DBUtil.performBlocking(preferenceDao2.__db, false, true, new WorkTagDao_Impl$$ExternalSyntheticLambda1(preferenceDao2, new Preference("next_job_scheduler_id", 1L), i5));
                } else {
                    i2 = longValue2;
                }
                return Integer.valueOf(i2);
            case 1:
                SearchExtractor channelTabExtractor = Utility.getService(i3).getChannelTabExtractor((ListLinkHandler) obj);
                channelTabExtractor.fetchPage();
                int i6 = channelTabExtractor.service.serviceId;
                LinkHandler linkHandler = channelTabExtractor.linkHandler;
                ListLinkHandler listLinkHandler = (ListLinkHandler) linkHandler;
                ChannelTabInfo channelTabInfo = new ChannelTabInfo(i6, listLinkHandler, (String) listLinkHandler.getContentFilters().get(0));
                try {
                    channelTabInfo.setOriginalUrl(linkHandler.getOriginalUrl());
                } catch (Exception e) {
                    channelTabInfo.addError(e);
                }
                ListExtractor.InfoItemsPage itemsPageOrLogError = JavaScript.getItemsPageOrLogError(channelTabInfo, channelTabExtractor);
                channelTabInfo.setRelatedItems(itemsPageOrLogError.itemsList);
                channelTabInfo.setNextPage(itemsPageOrLogError.nextPage);
                return channelTabInfo;
            default:
                DataReader.AnonymousClass1 anonymousClass1 = new DataReader.AnonymousClass1(((StoredFileHelper) obj).getStream());
                try {
                    byte[] byteArray = Util.toByteArray(anonymousClass1);
                    ByteString byteString = ByteString.EMPTY;
                    byteArray.getClass();
                    ByteString byteString2 = new ByteString(Arrays.copyOf(byteArray, byteArray.length));
                    anonymousClass1.close();
                    if (i3 == R.id.md5) {
                        byteString2 = byteString2.digest$okio("MD5");
                    } else if (i3 == R.id.sha1) {
                        byteString2 = byteString2.digest$okio("SHA-1");
                    }
                    return byteString2.hex();
                } catch (Throwable th) {
                    try {
                        anonymousClass1.close();
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                    throw th;
                }
        }
    }

    public /* synthetic */ IdGenerator$$ExternalSyntheticLambda0(Object obj, int i, int i2) {
        this.$r8$classId = i2;
        this.f$0 = obj;
        this.f$2 = i;
    }
}
