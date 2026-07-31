package org.schabi.newpipe.database.stream.dao;

import androidx.room.util.DBUtil;
import androidx.sqlite.SQLiteConnection;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import org.schabi.newpipe.database.stream.model.StreamStateEntity;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final /* synthetic */ class StreamStateDAO_Impl$$ExternalSyntheticLambda3 implements Function1 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ StreamStateDAO_Impl f$0;
    public final /* synthetic */ StreamStateEntity f$1;

    public /* synthetic */ StreamStateDAO_Impl$$ExternalSyntheticLambda3(StreamStateDAO_Impl streamStateDAO_Impl, StreamStateEntity streamStateEntity, int i) {
        this.$r8$classId = i;
        this.f$0 = streamStateDAO_Impl;
        this.f$1 = streamStateEntity;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        int i = this.$r8$classId;
        StreamStateEntity streamStateEntity = this.f$1;
        StreamStateDAO_Impl streamStateDAO_Impl = this.f$0;
        SQLiteConnection sQLiteConnection = (SQLiteConnection) obj;
        switch (i) {
            case 0:
                sQLiteConnection.getClass();
                DBUtil.performBlocking(streamStateDAO_Impl.__db, false, true, new StreamStateDAO_Impl$$ExternalSyntheticLambda3(streamStateDAO_Impl, streamStateEntity, 2));
                return Long.valueOf(((Number) DBUtil.performBlocking(r5, false, true, new StreamStateDAO_Impl$$ExternalSyntheticLambda3(streamStateDAO_Impl, streamStateEntity, 1))).intValue());
            case 1:
                sQLiteConnection.getClass();
                return Integer.valueOf(streamStateDAO_Impl.__updateAdapterOfStreamStateEntity.handle(sQLiteConnection, streamStateEntity));
            default:
                sQLiteConnection.getClass();
                streamStateDAO_Impl.__insertAdapterOfStreamStateEntity_1.insert(sQLiteConnection, streamStateEntity);
                return Unit.INSTANCE;
        }
    }
}
