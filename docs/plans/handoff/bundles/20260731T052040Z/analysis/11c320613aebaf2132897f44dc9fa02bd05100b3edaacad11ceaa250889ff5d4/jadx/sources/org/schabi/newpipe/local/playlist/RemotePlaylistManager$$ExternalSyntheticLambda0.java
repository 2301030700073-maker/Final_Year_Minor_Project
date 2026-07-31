package org.schabi.newpipe.local.playlist;

import androidx.room.util.DBUtil;
import androidx.work.Worker$$ExternalSyntheticLambda0;
import androidx.work.impl.model.WorkSpecDao_Impl$$ExternalSyntheticLambda26;
import java.util.ArrayList;
import java.util.Iterator;
import org.jsoup.parser.TokenData;
import org.schabi.newpipe.database.AppDatabase;
import org.schabi.newpipe.database.playlist.dao.PlaylistRemoteDAO_Impl;
import org.schabi.newpipe.database.playlist.dao.PlaylistRemoteDAO_Impl$$ExternalSyntheticLambda2;
import org.schabi.newpipe.database.playlist.model.PlaylistRemoteEntity;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final /* synthetic */ class RemotePlaylistManager$$ExternalSyntheticLambda0 implements Runnable {
    public final /* synthetic */ int $r8$classId = 1;
    public final /* synthetic */ TokenData f$0;
    public final /* synthetic */ ArrayList f$1;
    public final /* synthetic */ ArrayList f$2;

    public /* synthetic */ RemotePlaylistManager$$ExternalSyntheticLambda0(ArrayList arrayList, ArrayList arrayList2, TokenData tokenData) {
        this.f$1 = arrayList;
        this.f$2 = arrayList2;
        this.f$0 = tokenData;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = this.$r8$classId;
        TokenData tokenData = this.f$0;
        ArrayList arrayList = this.f$2;
        ArrayList arrayList2 = this.f$1;
        switch (i) {
            case 0:
                ((AppDatabase) tokenData.value).runInTransaction(new Worker$$ExternalSyntheticLambda0(new RemotePlaylistManager$$ExternalSyntheticLambda0(arrayList2, arrayList, tokenData), 15));
                break;
            default:
                Iterator it = arrayList2.iterator();
                while (true) {
                    int i2 = 1;
                    if (!it.hasNext()) {
                        Iterator it2 = arrayList.iterator();
                        while (it2.hasNext()) {
                            PlaylistRemoteEntity playlistRemoteEntity = (PlaylistRemoteEntity) it2.next();
                            PlaylistRemoteDAO_Impl playlistRemoteDAO_Impl = (PlaylistRemoteDAO_Impl) tokenData.builder;
                            playlistRemoteDAO_Impl.getClass();
                            playlistRemoteEntity.getClass();
                            ((Number) DBUtil.performBlocking(playlistRemoteDAO_Impl.__db, false, true, new PlaylistRemoteDAO_Impl$$ExternalSyntheticLambda2(playlistRemoteDAO_Impl, playlistRemoteEntity, i2))).longValue();
                        }
                        break;
                    } else {
                        ((Number) DBUtil.performBlocking(((PlaylistRemoteDAO_Impl) tokenData.builder).__db, false, true, new WorkSpecDao_Impl$$ExternalSyntheticLambda26(((Number) it.next()).longValue(), 12))).intValue();
                    }
                }
        }
    }

    public /* synthetic */ RemotePlaylistManager$$ExternalSyntheticLambda0(TokenData tokenData, ArrayList arrayList, ArrayList arrayList2) {
        this.f$0 = tokenData;
        this.f$1 = arrayList;
        this.f$2 = arrayList2;
    }
}
