package org.schabi.newpipe.database.feed.dao;

import androidx.room.RoomDatabase;
import androidx.room.util.DBUtil;
import androidx.sqlite.SQLiteConnection;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import org.schabi.newpipe.database.feed.model.FeedLastUpdatedEntity;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final /* synthetic */ class FeedDAO_Impl$$ExternalSyntheticLambda4 implements Function1 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ FeedDAO_Impl f$0;
    public final /* synthetic */ FeedLastUpdatedEntity f$1;

    public /* synthetic */ FeedDAO_Impl$$ExternalSyntheticLambda4(FeedDAO_Impl feedDAO_Impl, FeedLastUpdatedEntity feedLastUpdatedEntity, int i) {
        this.$r8$classId = i;
        this.f$0 = feedDAO_Impl;
        this.f$1 = feedLastUpdatedEntity;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        FeedLastUpdatedEntity feedLastUpdatedEntity = this.f$1;
        FeedDAO_Impl feedDAO_Impl = this.f$0;
        SQLiteConnection sQLiteConnection = (SQLiteConnection) obj;
        switch (i) {
            case 0:
                sQLiteConnection.getClass();
                RoomDatabase roomDatabase = feedDAO_Impl.__db;
                if (((Number) DBUtil.performBlocking(roomDatabase, false, true, new FeedDAO_Impl$$ExternalSyntheticLambda4(feedDAO_Impl, feedLastUpdatedEntity, 1))).longValue() == -1) {
                    DBUtil.performBlocking(roomDatabase, false, true, new FeedDAO_Impl$$ExternalSyntheticLambda4(feedDAO_Impl, feedLastUpdatedEntity, 2));
                }
                return unit;
            case 1:
                sQLiteConnection.getClass();
                return Long.valueOf(feedDAO_Impl.__insertAdapterOfFeedLastUpdatedEntity.insertAndReturnId(sQLiteConnection, feedLastUpdatedEntity));
            default:
                sQLiteConnection.getClass();
                feedDAO_Impl.__updateAdapterOfFeedLastUpdatedEntity.handle(sQLiteConnection, feedLastUpdatedEntity);
                return unit;
        }
    }
}
