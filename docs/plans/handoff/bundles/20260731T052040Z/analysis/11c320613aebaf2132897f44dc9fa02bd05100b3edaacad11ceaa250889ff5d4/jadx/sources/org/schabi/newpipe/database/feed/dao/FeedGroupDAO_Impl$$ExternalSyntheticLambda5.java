package org.schabi.newpipe.database.feed.dao;

import androidx.room.RoomDatabase;
import androidx.room.util.DBUtil;
import androidx.sqlite.SQLiteConnection;
import kotlin.jvm.functions.Function1;
import okio.internal.ZipFilesKt$$ExternalSyntheticLambda3;
import org.schabi.newpipe.database.feed.model.FeedGroupEntity;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final /* synthetic */ class FeedGroupDAO_Impl$$ExternalSyntheticLambda5 implements Function1 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ FeedGroupDAO_Impl f$0;
    public final /* synthetic */ FeedGroupEntity f$1;

    public /* synthetic */ FeedGroupDAO_Impl$$ExternalSyntheticLambda5(FeedGroupDAO_Impl feedGroupDAO_Impl, FeedGroupEntity feedGroupEntity, int i) {
        this.$r8$classId = i;
        this.f$0 = feedGroupDAO_Impl;
        this.f$1 = feedGroupEntity;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        int i = this.$r8$classId;
        FeedGroupEntity feedGroupEntity = this.f$1;
        FeedGroupDAO_Impl feedGroupDAO_Impl = this.f$0;
        SQLiteConnection sQLiteConnection = (SQLiteConnection) obj;
        switch (i) {
            case 0:
                sQLiteConnection.getClass();
                feedGroupDAO_Impl.getClass();
                RoomDatabase roomDatabase = feedGroupDAO_Impl.__db;
                feedGroupEntity.sortOrder = ((Number) DBUtil.performBlocking(roomDatabase, true, false, new ZipFilesKt$$ExternalSyntheticLambda3(25))).longValue();
                return Long.valueOf(((Number) DBUtil.performBlocking(roomDatabase, false, true, new FeedGroupDAO_Impl$$ExternalSyntheticLambda5(feedGroupDAO_Impl, feedGroupEntity, 1))).longValue());
            case 1:
                sQLiteConnection.getClass();
                return Long.valueOf(feedGroupDAO_Impl.__insertAdapterOfFeedGroupEntity.insertAndReturnId(sQLiteConnection, feedGroupEntity));
            default:
                sQLiteConnection.getClass();
                return Integer.valueOf(feedGroupDAO_Impl.__updateAdapterOfFeedGroupEntity.handle(sQLiteConnection, feedGroupEntity));
        }
    }
}
