package org.schabi.newpipe.database.history.dao;

import androidx.sqlite.SQLiteConnection;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import org.schabi.newpipe.database.history.model.StreamHistoryEntity;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final /* synthetic */ class StreamHistoryDAO_Impl$$ExternalSyntheticLambda4 implements Function1 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ StreamHistoryDAO_Impl f$0;
    public final /* synthetic */ StreamHistoryEntity f$1;

    public /* synthetic */ StreamHistoryDAO_Impl$$ExternalSyntheticLambda4(StreamHistoryDAO_Impl streamHistoryDAO_Impl, StreamHistoryEntity streamHistoryEntity, int i) {
        this.$r8$classId = i;
        this.f$0 = streamHistoryDAO_Impl;
        this.f$1 = streamHistoryEntity;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        int i = this.$r8$classId;
        StreamHistoryEntity streamHistoryEntity = this.f$1;
        StreamHistoryDAO_Impl streamHistoryDAO_Impl = this.f$0;
        SQLiteConnection sQLiteConnection = (SQLiteConnection) obj;
        switch (i) {
            case 0:
                sQLiteConnection.getClass();
                streamHistoryDAO_Impl.__deleteAdapterOfStreamHistoryEntity.handle(sQLiteConnection, streamHistoryEntity);
                return Unit.INSTANCE;
            default:
                sQLiteConnection.getClass();
                return Long.valueOf(streamHistoryDAO_Impl.__insertAdapterOfStreamHistoryEntity.insertAndReturnId(sQLiteConnection, streamHistoryEntity));
        }
    }
}
