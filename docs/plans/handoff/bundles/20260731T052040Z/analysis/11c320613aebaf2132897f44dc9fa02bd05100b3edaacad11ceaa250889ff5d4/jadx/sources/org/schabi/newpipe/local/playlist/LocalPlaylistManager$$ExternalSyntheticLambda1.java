package org.schabi.newpipe.local.playlist;

import androidx.room.util.DBUtil;
import androidx.work.Worker$$ExternalSyntheticLambda0;
import androidx.work.impl.model.WorkSpecDao_Impl$$ExternalSyntheticLambda26;
import java.util.ArrayList;
import okhttp3.Dispatcher;
import org.schabi.newpipe.database.AppDatabase;
import org.schabi.newpipe.database.playlist.dao.PlaylistStreamDAO_Impl;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final /* synthetic */ class LocalPlaylistManager$$ExternalSyntheticLambda1 implements Runnable {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Dispatcher f$0;
    public final /* synthetic */ long f$1;
    public final /* synthetic */ ArrayList f$2;

    public /* synthetic */ LocalPlaylistManager$$ExternalSyntheticLambda1(Dispatcher dispatcher, long j, ArrayList arrayList, int i) {
        this.$r8$classId = i;
        this.f$0 = dispatcher;
        this.f$1 = j;
        this.f$2 = arrayList;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.$r8$classId) {
            case 0:
                Dispatcher dispatcher = this.f$0;
                ((AppDatabase) dispatcher.executorServiceOrNull).runInTransaction(new Worker$$ExternalSyntheticLambda0(new LocalPlaylistManager$$ExternalSyntheticLambda1(dispatcher, this.f$1, this.f$2, 1), 15));
                break;
            default:
                PlaylistStreamDAO_Impl playlistStreamDAO_Impl = (PlaylistStreamDAO_Impl) this.f$0.runningSyncCalls;
                DBUtil.performBlocking(playlistStreamDAO_Impl.__db, false, true, new WorkSpecDao_Impl$$ExternalSyntheticLambda26(this.f$1, 14));
                break;
        }
    }
}
