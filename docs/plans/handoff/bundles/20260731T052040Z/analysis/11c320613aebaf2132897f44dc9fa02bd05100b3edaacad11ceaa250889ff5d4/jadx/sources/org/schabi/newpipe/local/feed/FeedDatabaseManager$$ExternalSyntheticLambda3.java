package org.schabi.newpipe.local.feed;

import androidx.room.util.DBUtil;
import java.util.List;
import java.util.concurrent.Callable;
import kotlin.Unit;
import org.jsoup.parser.TokenData;
import org.schabi.newpipe.database.feed.dao.FeedDAO_Impl$$ExternalSyntheticLambda2;
import org.schabi.newpipe.database.feed.dao.FeedGroupDAO_Impl;
import org.schabi.newpipe.database.playlist.dao.PlaylistRemoteDAO_Impl;
import org.schabi.newpipe.database.playlist.dao.PlaylistRemoteDAO_Impl$$ExternalSyntheticLambda2;
import org.schabi.newpipe.database.playlist.model.PlaylistRemoteEntity;
import org.schabi.newpipe.extractor.playlist.PlaylistInfo;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final /* synthetic */ class FeedDatabaseManager$$ExternalSyntheticLambda3 implements Callable {
    public final /* synthetic */ int $r8$classId = 1;
    public final /* synthetic */ Object f$0;
    public final /* synthetic */ long f$1;
    public final /* synthetic */ Object f$2;

    public /* synthetic */ FeedDatabaseManager$$ExternalSyntheticLambda3(PlaylistInfo playlistInfo, TokenData tokenData, long j) {
        this.f$0 = playlistInfo;
        this.f$2 = tokenData;
        this.f$1 = j;
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        int i = this.$r8$classId;
        Object obj = this.f$2;
        Object obj2 = this.f$0;
        int i2 = 0;
        switch (i) {
            case 0:
                FeedGroupDAO_Impl feedGroupDAO_Impl = ((FeedDatabaseManager) obj2).feedGroupTable;
                feedGroupDAO_Impl.getClass();
                DBUtil.performBlocking(feedGroupDAO_Impl.__db, false, true, new FeedDAO_Impl$$ExternalSyntheticLambda2(1, this.f$1, feedGroupDAO_Impl, (List) obj));
                return Unit.INSTANCE;
            default:
                PlaylistRemoteEntity playlistRemoteEntity = new PlaylistRemoteEntity((PlaylistInfo) obj2);
                playlistRemoteEntity.uid = this.f$1;
                PlaylistRemoteDAO_Impl playlistRemoteDAO_Impl = (PlaylistRemoteDAO_Impl) ((TokenData) obj).builder;
                playlistRemoteDAO_Impl.getClass();
                return Integer.valueOf(((Number) DBUtil.performBlocking(playlistRemoteDAO_Impl.__db, false, true, new PlaylistRemoteDAO_Impl$$ExternalSyntheticLambda2(playlistRemoteDAO_Impl, playlistRemoteEntity, i2))).intValue());
        }
    }

    public /* synthetic */ FeedDatabaseManager$$ExternalSyntheticLambda3(FeedDatabaseManager feedDatabaseManager, long j, List list) {
        this.f$0 = feedDatabaseManager;
        this.f$1 = j;
        this.f$2 = list;
    }
}
