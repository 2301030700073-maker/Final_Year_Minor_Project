package org.schabi.newpipe.database.playlist.dao;

import androidx.room.RoomDatabase;
import androidx.room.util.DBUtil;
import androidx.sqlite.SQLiteConnection;
import androidx.work.impl.model.WorkSpecDao_Impl$$ExternalSyntheticLambda12;
import kotlin.jvm.functions.Function1;
import org.schabi.newpipe.database.playlist.model.PlaylistRemoteEntity;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final /* synthetic */ class PlaylistRemoteDAO_Impl$$ExternalSyntheticLambda2 implements Function1 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ PlaylistRemoteDAO_Impl f$0;
    public final /* synthetic */ PlaylistRemoteEntity f$1;

    public /* synthetic */ PlaylistRemoteDAO_Impl$$ExternalSyntheticLambda2(PlaylistRemoteDAO_Impl playlistRemoteDAO_Impl, PlaylistRemoteEntity playlistRemoteEntity, int i) {
        this.$r8$classId = i;
        this.f$0 = playlistRemoteDAO_Impl;
        this.f$1 = playlistRemoteEntity;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        long longValue;
        int i = this.$r8$classId;
        PlaylistRemoteEntity playlistRemoteEntity = this.f$1;
        PlaylistRemoteDAO_Impl playlistRemoteDAO_Impl = this.f$0;
        SQLiteConnection sQLiteConnection = (SQLiteConnection) obj;
        switch (i) {
            case 0:
                sQLiteConnection.getClass();
                return Integer.valueOf(playlistRemoteDAO_Impl.__updateAdapterOfPlaylistRemoteEntity.handle(sQLiteConnection, playlistRemoteEntity));
            case 1:
                sQLiteConnection.getClass();
                playlistRemoteEntity.getClass();
                long j = playlistRemoteEntity.serviceId;
                String str = playlistRemoteEntity.url;
                RoomDatabase roomDatabase = playlistRemoteDAO_Impl.__db;
                WorkSpecDao_Impl$$ExternalSyntheticLambda12 workSpecDao_Impl$$ExternalSyntheticLambda12 = new WorkSpecDao_Impl$$ExternalSyntheticLambda12(str, j, 3);
                int i2 = 0;
                Long l = (Long) DBUtil.performBlocking(roomDatabase, true, false, workSpecDao_Impl$$ExternalSyntheticLambda12);
                if (l == null) {
                    longValue = ((Number) DBUtil.performBlocking(roomDatabase, false, true, new PlaylistRemoteDAO_Impl$$ExternalSyntheticLambda2(playlistRemoteDAO_Impl, playlistRemoteEntity, 2))).longValue();
                } else {
                    playlistRemoteEntity.uid = l.longValue();
                    ((Number) DBUtil.performBlocking(roomDatabase, false, true, new PlaylistRemoteDAO_Impl$$ExternalSyntheticLambda2(playlistRemoteDAO_Impl, playlistRemoteEntity, i2))).intValue();
                    longValue = l.longValue();
                }
                return Long.valueOf(longValue);
            default:
                sQLiteConnection.getClass();
                return Long.valueOf(playlistRemoteDAO_Impl.__insertAdapterOfPlaylistRemoteEntity.insertAndReturnId(sQLiteConnection, playlistRemoteEntity));
        }
    }
}
