package org.schabi.newpipe.local.playlist;

import androidx.room.util.DBUtil;
import androidx.work.Worker$$ExternalSyntheticLambda0;
import java.util.List;
import java.util.concurrent.Callable;
import okhttp3.Dispatcher;
import org.schabi.newpipe.database.AppDatabase;
import org.schabi.newpipe.database.playlist.dao.PlaylistDAO_Impl;
import org.schabi.newpipe.database.playlist.dao.PlaylistDAO_Impl$$ExternalSyntheticLambda2;
import org.schabi.newpipe.database.playlist.model.PlaylistEntity;
import org.schabi.newpipe.database.stream.dao.StreamDAO_Impl;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final /* synthetic */ class LocalPlaylistManager$$ExternalSyntheticLambda7 implements Callable {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Dispatcher f$0;
    public final /* synthetic */ List f$1;
    public final /* synthetic */ String f$2;

    public /* synthetic */ LocalPlaylistManager$$ExternalSyntheticLambda7(Dispatcher dispatcher, List list, String str, int i) {
        this.$r8$classId = i;
        this.f$0 = dispatcher;
        this.f$1 = list;
        this.f$2 = str;
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        int i = this.$r8$classId;
        int i2 = 1;
        List list = this.f$1;
        Dispatcher dispatcher = this.f$0;
        switch (i) {
            case 0:
                return (List) ((AppDatabase) dispatcher.executorServiceOrNull).runInTransaction(new Worker$$ExternalSyntheticLambda0(new LocalPlaylistManager$$ExternalSyntheticLambda7(dispatcher, list, this.f$2, i2), 14));
            default:
                List upsertAll = ((StreamDAO_Impl) dispatcher.readyAsyncCalls).upsertAll(list);
                PlaylistEntity playlistEntity = new PlaylistEntity(0L, this.f$2, false, ((Long) upsertAll.get(0)).longValue(), -1L);
                PlaylistDAO_Impl playlistDAO_Impl = (PlaylistDAO_Impl) dispatcher.runningAsyncCalls;
                playlistDAO_Impl.getClass();
                return dispatcher.insertJoinEntities(upsertAll, 0, ((Number) DBUtil.performBlocking(playlistDAO_Impl.__db, false, true, new PlaylistDAO_Impl$$ExternalSyntheticLambda2(playlistDAO_Impl, playlistEntity, 2))).longValue());
        }
    }
}
