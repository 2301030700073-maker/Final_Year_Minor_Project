package org.schabi.newpipe.local.feed;

import android.content.Context;
import androidx.room.RoomDatabase;
import androidx.room.util.DBUtil;
import androidx.work.impl.model.WorkSpecDao_Impl$$ExternalSyntheticLambda26;
import j$.time.LocalDate;
import j$.time.OffsetDateTime;
import j$.time.ZoneOffset;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.collections.CollectionsKt__IterablesKt;
import net.newpipe.app.AppKt;
import org.schabi.newpipe.database.AppDatabase;
import org.schabi.newpipe.database.feed.dao.FeedDAO_Impl;
import org.schabi.newpipe.database.feed.dao.FeedDAO_Impl$$ExternalSyntheticLambda4;
import org.schabi.newpipe.database.feed.dao.FeedGroupDAO_Impl;
import org.schabi.newpipe.database.feed.model.FeedEntity;
import org.schabi.newpipe.database.feed.model.FeedLastUpdatedEntity;
import org.schabi.newpipe.database.stream.dao.StreamDAO_Impl;
import org.schabi.newpipe.database.stream.model.StreamEntity;
import org.schabi.newpipe.extractor.localization.DateWrapper;
import org.schabi.newpipe.extractor.stream.StreamInfoItem;
import org.schabi.newpipe.extractor.stream.StreamType;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class FeedDatabaseManager {
    public static final Companion Companion = new Companion();
    public static final OffsetDateTime FEED_OLDEST_ALLOWED_DATE;
    public final AppDatabase database;
    public final FeedGroupDAO_Impl feedGroupTable;
    public final FeedDAO_Impl feedTable;
    public final StreamDAO_Impl streamTable;

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class Companion {
    }

    static {
        OffsetDateTime atOffset = LocalDate.now().minusWeeks(13L).atStartOfDay().atOffset(ZoneOffset.UTC);
        atOffset.getClass();
        FEED_OLDEST_ALLOWED_DATE = atOffset;
    }

    public FeedDatabaseManager(Context context) {
        context.getClass();
        AppDatabase appKt = AppKt.getInstance(context);
        this.database = appKt;
        this.feedTable = appKt.feedDAO();
        this.feedGroupTable = appKt.feedGroupDAO();
        this.streamTable = appKt.streamDAO();
    }

    public static void upsertAll$default(FeedDatabaseManager feedDatabaseManager, long j, List list) {
        FeedDAO_Impl feedDAO_Impl = feedDatabaseManager.feedTable;
        list.getClass();
        OffsetDateTime offsetDateTime = FEED_OLDEST_ALLOWED_DATE;
        offsetDateTime.getClass();
        ArrayList arrayList = new ArrayList();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            StreamInfoItem streamInfoItem = (StreamInfoItem) it.next();
            DateWrapper uploadDate = streamInfoItem.getUploadDate();
            if ((uploadDate != null || streamInfoItem.getStreamType() != StreamType.LIVE_STREAM) && (uploadDate == null || uploadDate.offsetDateTime().compareTo(offsetDateTime) < 0)) {
                streamInfoItem = null;
            }
            if (streamInfoItem != null) {
                arrayList.add(streamInfoItem);
            }
        }
        RoomDatabase roomDatabase = feedDAO_Impl.__db;
        RoomDatabase roomDatabase2 = feedDAO_Impl.__db;
        int i = 0;
        DBUtil.performBlocking(roomDatabase, false, true, new WorkSpecDao_Impl$$ExternalSyntheticLambda26(j, 3));
        if (!arrayList.isEmpty()) {
            ArrayList arrayList2 = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(arrayList, 10));
            Iterator it2 = arrayList.iterator();
            while (it2.hasNext()) {
                arrayList2.add(new StreamEntity((StreamInfoItem) it2.next()));
            }
            List upsertAll = feedDatabaseManager.streamTable.upsertAll(arrayList2);
            ArrayList arrayList3 = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(upsertAll, 10));
            Iterator it3 = upsertAll.iterator();
            while (it3.hasNext()) {
                long longValue = ((Number) it3.next()).longValue();
                FeedEntity feedEntity = new FeedEntity();
                feedEntity.streamId = longValue;
                feedEntity.subscriptionId = j;
                arrayList3.add(feedEntity);
            }
        }
        DBUtil.performBlocking(roomDatabase2, false, true, new FeedDAO_Impl$$ExternalSyntheticLambda4(feedDAO_Impl, new FeedLastUpdatedEntity(j, OffsetDateTime.now(ZoneOffset.UTC)), i));
    }
}
