package org.schabi.newpipe.database.stream.dao;

import androidx.room.RoomDatabase;
import androidx.room.util.DBUtil;
import androidx.sqlite.SQLiteConnection;
import kotlin.jvm.functions.Function1;
import org.schabi.newpipe.database.stream.model.StreamEntity;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final /* synthetic */ class StreamDAO_Impl$$ExternalSyntheticLambda3 implements Function1 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ StreamDAO_Impl f$0;
    public final /* synthetic */ StreamEntity f$1;

    public /* synthetic */ StreamDAO_Impl$$ExternalSyntheticLambda3(StreamDAO_Impl streamDAO_Impl, StreamEntity streamEntity, int i) {
        this.$r8$classId = i;
        this.f$0 = streamDAO_Impl;
        this.f$1 = streamEntity;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        int i = this.$r8$classId;
        StreamEntity streamEntity = this.f$1;
        StreamDAO_Impl streamDAO_Impl = this.f$0;
        SQLiteConnection sQLiteConnection = (SQLiteConnection) obj;
        switch (i) {
            case 0:
                sQLiteConnection.getClass();
                RoomDatabase roomDatabase = streamDAO_Impl.__db;
                int i2 = 1;
                long longValue = ((Number) DBUtil.performBlocking(roomDatabase, false, true, new StreamDAO_Impl$$ExternalSyntheticLambda3(streamDAO_Impl, streamEntity, 2))).longValue();
                if (longValue != -1) {
                    streamEntity.setUid(longValue);
                } else {
                    streamDAO_Impl.compareAndUpdateStream(streamEntity);
                    ((Number) DBUtil.performBlocking(roomDatabase, false, true, new StreamDAO_Impl$$ExternalSyntheticLambda3(streamDAO_Impl, streamEntity, i2))).intValue();
                    longValue = streamEntity.getUid();
                }
                return Long.valueOf(longValue);
            case 1:
                sQLiteConnection.getClass();
                return Integer.valueOf(streamDAO_Impl.__updateAdapterOfStreamEntity.handle(sQLiteConnection, streamEntity));
            default:
                sQLiteConnection.getClass();
                return Long.valueOf(streamDAO_Impl.__insertAdapterOfStreamEntity_1.insertAndReturnId(sQLiteConnection, streamEntity));
        }
    }
}
