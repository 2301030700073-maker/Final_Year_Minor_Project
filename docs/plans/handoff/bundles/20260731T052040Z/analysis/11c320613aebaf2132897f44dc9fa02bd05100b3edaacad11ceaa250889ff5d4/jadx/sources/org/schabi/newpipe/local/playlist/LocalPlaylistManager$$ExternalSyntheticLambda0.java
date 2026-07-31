package org.schabi.newpipe.local.playlist;

import androidx.room.util.DBUtil;
import androidx.work.Worker$$ExternalSyntheticLambda0;
import androidx.work.impl.model.WorkSpecDao_Impl$$ExternalSyntheticLambda26;
import java.util.ArrayList;
import java.util.Iterator;
import okhttp3.Dispatcher;
import org.schabi.newpipe.database.AppDatabase;
import org.schabi.newpipe.database.playlist.dao.PlaylistDAO_Impl;
import org.schabi.newpipe.database.playlist.dao.PlaylistDAO_Impl$$ExternalSyntheticLambda2;
import org.schabi.newpipe.database.playlist.model.PlaylistEntity;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final /* synthetic */ class LocalPlaylistManager$$ExternalSyntheticLambda0 implements Runnable {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Dispatcher f$0;
    public final /* synthetic */ ArrayList f$1;
    public final /* synthetic */ ArrayList f$2;

    public /* synthetic */ LocalPlaylistManager$$ExternalSyntheticLambda0(Dispatcher dispatcher, ArrayList arrayList, ArrayList arrayList2, int i) {
        this.$r8$classId = i;
        this.f$0 = dispatcher;
        this.f$1 = arrayList;
        this.f$2 = arrayList2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = this.$r8$classId;
        ArrayList arrayList = this.f$2;
        ArrayList arrayList2 = this.f$1;
        Dispatcher dispatcher = this.f$0;
        int i2 = 1;
        switch (i) {
            case 0:
                ((AppDatabase) dispatcher.executorServiceOrNull).runInTransaction(new Worker$$ExternalSyntheticLambda0(new LocalPlaylistManager$$ExternalSyntheticLambda0(dispatcher, arrayList2, arrayList, i2), 15));
                break;
            default:
                PlaylistDAO_Impl playlistDAO_Impl = (PlaylistDAO_Impl) dispatcher.runningAsyncCalls;
                Iterator it = arrayList2.iterator();
                while (it.hasNext()) {
                    ((Number) DBUtil.performBlocking(playlistDAO_Impl.__db, false, true, new WorkSpecDao_Impl$$ExternalSyntheticLambda26(((Long) it.next()).longValue(), 10))).intValue();
                }
                Iterator it2 = arrayList.iterator();
                while (it2.hasNext()) {
                    PlaylistEntity playlistEntity = (PlaylistEntity) it2.next();
                    playlistDAO_Impl.getClass();
                    playlistEntity.getClass();
                    ((Number) DBUtil.performBlocking(playlistDAO_Impl.__db, false, true, new PlaylistDAO_Impl$$ExternalSyntheticLambda2(playlistDAO_Impl, playlistEntity, i2))).longValue();
                }
                break;
        }
    }
}
