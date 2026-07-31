package org.schabi.newpipe.database.playlist.dao;

import androidx.room.util.DBUtil;
import androidx.sqlite.SQLiteConnection;
import kotlin.jvm.functions.Function1;
import org.schabi.newpipe.database.playlist.model.PlaylistEntity;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final /* synthetic */ class PlaylistDAO_Impl$$ExternalSyntheticLambda2 implements Function1 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ PlaylistDAO_Impl f$0;
    public final /* synthetic */ PlaylistEntity f$1;

    public /* synthetic */ PlaylistDAO_Impl$$ExternalSyntheticLambda2(PlaylistDAO_Impl playlistDAO_Impl, PlaylistEntity playlistEntity, int i) {
        this.$r8$classId = i;
        this.f$0 = playlistDAO_Impl;
        this.f$1 = playlistEntity;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        int i = this.$r8$classId;
        PlaylistEntity playlistEntity = this.f$1;
        PlaylistDAO_Impl playlistDAO_Impl = this.f$0;
        SQLiteConnection sQLiteConnection = (SQLiteConnection) obj;
        switch (i) {
            case 0:
                sQLiteConnection.getClass();
                return Integer.valueOf(playlistDAO_Impl.__updateAdapterOfPlaylistEntity.handle(sQLiteConnection, playlistEntity));
            case 1:
                sQLiteConnection.getClass();
                long j = playlistEntity.uid;
                int i2 = 0;
                if (j == -1) {
                    playlistDAO_Impl.getClass();
                    j = ((Number) DBUtil.performBlocking(playlistDAO_Impl.__db, false, true, new PlaylistDAO_Impl$$ExternalSyntheticLambda2(playlistDAO_Impl, playlistEntity, 2))).longValue();
                } else {
                    playlistDAO_Impl.getClass();
                    ((Number) DBUtil.performBlocking(playlistDAO_Impl.__db, false, true, new PlaylistDAO_Impl$$ExternalSyntheticLambda2(playlistDAO_Impl, playlistEntity, i2))).intValue();
                }
                return Long.valueOf(j);
            default:
                sQLiteConnection.getClass();
                return Long.valueOf(playlistDAO_Impl.__insertAdapterOfPlaylistEntity.insertAndReturnId(sQLiteConnection, playlistEntity));
        }
    }
}
