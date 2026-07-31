package org.schabi.newpipe.database.feed.dao;

import androidx.room.RoomDatabase;
import androidx.room.util.DBUtil;
import androidx.sqlite.SQLiteConnection;
import androidx.sqlite.SQLiteStatement;
import androidx.work.impl.model.WorkSpecDao_Impl$$ExternalSyntheticLambda26;
import j$.time.OffsetDateTime;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.functions.Function1;
import okio.Path;
import org.schabi.newpipe.database.feed.model.FeedGroupSubscriptionEntity;
import org.schabi.newpipe.database.stream.dao.StreamDAO_Impl;
import org.schabi.newpipe.database.stream.model.StreamEntity;
import org.schabi.newpipe.database.subscription.SubscriptionEntity;
import org.schabi.newpipe.extractor.stream.StreamType;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final /* synthetic */ class FeedDAO_Impl$$ExternalSyntheticLambda2 implements Function1 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ long f$1;
    public final /* synthetic */ Object f$2;
    public final /* synthetic */ Object f$3;

    public /* synthetic */ FeedDAO_Impl$$ExternalSyntheticLambda2(long j, FeedDAO_Impl feedDAO_Impl, OffsetDateTime offsetDateTime) {
        this.$r8$classId = 0;
        this.f$1 = j;
        this.f$2 = feedDAO_Impl;
        this.f$3 = offsetDateTime;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        SQLiteStatement prepare;
        int i;
        int i2;
        Integer valueOf;
        Boolean bool;
        int i3 = this.$r8$classId;
        Object obj2 = this.f$3;
        long j = this.f$1;
        Object obj3 = this.f$2;
        switch (i3) {
            case 0:
                FeedDAO_Impl feedDAO_Impl = (FeedDAO_Impl) obj3;
                OffsetDateTime offsetDateTime = (OffsetDateTime) obj2;
                SQLiteConnection sQLiteConnection = (SQLiteConnection) obj;
                sQLiteConnection.getClass();
                prepare = sQLiteConnection.prepare("\n        SELECT s.* FROM subscriptions s\n\n        INNER JOIN feed_group_subscription_join fgs\n        ON s.uid = fgs.subscription_id AND fgs.group_id = ?\n\n        LEFT JOIN feed_last_updated lu\n        ON s.uid = lu.subscription_id\n\n        WHERE lu.last_updated IS NULL OR lu.last_updated < ?\n        ");
                try {
                    prepare.bindLong(1, j);
                    Path.Companion companion = feedDAO_Impl.__converters;
                    Long offsetDateTimeToTimestamp = Path.Companion.offsetDateTimeToTimestamp(offsetDateTime);
                    if (offsetDateTimeToTimestamp == null) {
                        prepare.bindNull(2);
                    } else {
                        prepare.bindLong(2, offsetDateTimeToTimestamp.longValue());
                    }
                    int columnIndexOrThrow = DBUtil.getColumnIndexOrThrow(prepare, "uid");
                    int columnIndexOrThrow2 = DBUtil.getColumnIndexOrThrow(prepare, "service_id");
                    int columnIndexOrThrow3 = DBUtil.getColumnIndexOrThrow(prepare, "url");
                    int columnIndexOrThrow4 = DBUtil.getColumnIndexOrThrow(prepare, "name");
                    int columnIndexOrThrow5 = DBUtil.getColumnIndexOrThrow(prepare, "avatar_url");
                    int columnIndexOrThrow6 = DBUtil.getColumnIndexOrThrow(prepare, "subscriber_count");
                    int columnIndexOrThrow7 = DBUtil.getColumnIndexOrThrow(prepare, "description");
                    int columnIndexOrThrow8 = DBUtil.getColumnIndexOrThrow(prepare, "notification_mode");
                    ArrayList arrayList = new ArrayList();
                    while (prepare.step()) {
                        arrayList.add(new SubscriptionEntity(prepare.getLong(columnIndexOrThrow), (int) prepare.getLong(columnIndexOrThrow2), prepare.isNull(columnIndexOrThrow3) ? null : prepare.getText(columnIndexOrThrow3), prepare.isNull(columnIndexOrThrow4) ? null : prepare.getText(columnIndexOrThrow4), prepare.isNull(columnIndexOrThrow5) ? null : prepare.getText(columnIndexOrThrow5), prepare.isNull(columnIndexOrThrow6) ? null : Long.valueOf(prepare.getLong(columnIndexOrThrow6)), prepare.isNull(columnIndexOrThrow7) ? null : prepare.getText(columnIndexOrThrow7), (int) prepare.getLong(columnIndexOrThrow8)));
                    }
                    prepare.close();
                    return arrayList;
                } finally {
                }
            case 1:
                FeedGroupDAO_Impl feedGroupDAO_Impl = (FeedGroupDAO_Impl) obj3;
                List list = (List) obj2;
                ((SQLiteConnection) obj).getClass();
                feedGroupDAO_Impl.getClass();
                RoomDatabase roomDatabase = feedGroupDAO_Impl.__db;
                ((Number) DBUtil.performBlocking(roomDatabase, false, true, new WorkSpecDao_Impl$$ExternalSyntheticLambda26(j, 4))).intValue();
                ArrayList arrayList2 = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10));
                Iterator it = list.iterator();
                while (it.hasNext()) {
                    long longValue = ((Number) it.next()).longValue();
                    FeedGroupSubscriptionEntity feedGroupSubscriptionEntity = new FeedGroupSubscriptionEntity();
                    feedGroupSubscriptionEntity.feedGroupId = j;
                    feedGroupSubscriptionEntity.subscriptionId = longValue;
                    arrayList2.add(feedGroupSubscriptionEntity);
                }
                return Unit.INSTANCE;
            default:
                String str = (String) obj3;
                StreamDAO_Impl streamDAO_Impl = (StreamDAO_Impl) obj2;
                SQLiteConnection sQLiteConnection2 = (SQLiteConnection) obj;
                sQLiteConnection2.getClass();
                prepare = sQLiteConnection2.prepare("SELECT * FROM streams WHERE url = ? AND service_id = ?");
                try {
                    prepare.bindText(1, str);
                    prepare.bindLong(2, j);
                    int columnIndexOrThrow9 = DBUtil.getColumnIndexOrThrow(prepare, "uid");
                    int columnIndexOrThrow10 = DBUtil.getColumnIndexOrThrow(prepare, "service_id");
                    int columnIndexOrThrow11 = DBUtil.getColumnIndexOrThrow(prepare, "url");
                    int columnIndexOrThrow12 = DBUtil.getColumnIndexOrThrow(prepare, "title");
                    int columnIndexOrThrow13 = DBUtil.getColumnIndexOrThrow(prepare, "stream_type");
                    int columnIndexOrThrow14 = DBUtil.getColumnIndexOrThrow(prepare, "duration");
                    int columnIndexOrThrow15 = DBUtil.getColumnIndexOrThrow(prepare, "uploader");
                    int columnIndexOrThrow16 = DBUtil.getColumnIndexOrThrow(prepare, "uploader_url");
                    int columnIndexOrThrow17 = DBUtil.getColumnIndexOrThrow(prepare, "thumbnail_url");
                    int columnIndexOrThrow18 = DBUtil.getColumnIndexOrThrow(prepare, "view_count");
                    int columnIndexOrThrow19 = DBUtil.getColumnIndexOrThrow(prepare, "textual_upload_date");
                    int columnIndexOrThrow20 = DBUtil.getColumnIndexOrThrow(prepare, "upload_date");
                    int columnIndexOrThrow21 = DBUtil.getColumnIndexOrThrow(prepare, "is_upload_date_approximation");
                    ArrayList arrayList3 = new ArrayList();
                    while (prepare.step()) {
                        long j2 = prepare.getLong(columnIndexOrThrow9);
                        int i4 = columnIndexOrThrow20;
                        ArrayList arrayList4 = arrayList3;
                        int i5 = (int) prepare.getLong(columnIndexOrThrow10);
                        String text = prepare.getText(columnIndexOrThrow11);
                        String text2 = prepare.getText(columnIndexOrThrow12);
                        String text3 = prepare.getText(columnIndexOrThrow13);
                        int i6 = columnIndexOrThrow9;
                        Path.Companion companion2 = streamDAO_Impl.__converters;
                        StreamType streamTypeOf = Path.Companion.streamTypeOf(text3);
                        long j3 = prepare.getLong(columnIndexOrThrow14);
                        String text4 = prepare.getText(columnIndexOrThrow15);
                        String text5 = prepare.isNull(columnIndexOrThrow16) ? null : prepare.getText(columnIndexOrThrow16);
                        String text6 = prepare.isNull(columnIndexOrThrow17) ? null : prepare.getText(columnIndexOrThrow17);
                        Long valueOf2 = prepare.isNull(columnIndexOrThrow18) ? null : Long.valueOf(prepare.getLong(columnIndexOrThrow18));
                        String text7 = prepare.isNull(columnIndexOrThrow19) ? null : prepare.getText(columnIndexOrThrow19);
                        OffsetDateTime offsetDateTimeFromTimestamp = Path.Companion.offsetDateTimeFromTimestamp(prepare.isNull(i4) ? null : Long.valueOf(prepare.getLong(i4)));
                        if (prepare.isNull(columnIndexOrThrow21)) {
                            i = columnIndexOrThrow11;
                            i2 = columnIndexOrThrow10;
                            valueOf = null;
                        } else {
                            i = columnIndexOrThrow11;
                            i2 = columnIndexOrThrow10;
                            valueOf = Integer.valueOf((int) prepare.getLong(columnIndexOrThrow21));
                        }
                        if (valueOf != null) {
                            bool = Boolean.valueOf(valueOf.intValue() != 0);
                        } else {
                            bool = null;
                        }
                        arrayList4.add(new StreamEntity(j2, i5, text, text2, streamTypeOf, j3, text4, text5, text6, valueOf2, text7, offsetDateTimeFromTimestamp, bool));
                        columnIndexOrThrow20 = i4;
                        columnIndexOrThrow11 = i;
                        columnIndexOrThrow9 = i6;
                        arrayList3 = arrayList4;
                        columnIndexOrThrow10 = i2;
                    }
                    ArrayList arrayList5 = arrayList3;
                    prepare.close();
                    return arrayList5;
                } finally {
                }
        }
    }

    public /* synthetic */ FeedDAO_Impl$$ExternalSyntheticLambda2(int i, long j, Object obj, Object obj2) {
        this.$r8$classId = i;
        this.f$2 = obj;
        this.f$1 = j;
        this.f$3 = obj2;
    }
}
