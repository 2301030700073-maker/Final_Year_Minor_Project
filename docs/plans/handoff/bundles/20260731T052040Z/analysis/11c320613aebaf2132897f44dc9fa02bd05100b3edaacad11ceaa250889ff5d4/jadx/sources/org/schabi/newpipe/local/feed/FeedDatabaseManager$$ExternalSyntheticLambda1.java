package org.schabi.newpipe.local.feed;

import androidx.room.util.DBUtil;
import androidx.work.impl.model.WorkSpecDao_Impl$$ExternalSyntheticLambda26;
import java.util.concurrent.Callable;
import org.jsoup.parser.TokenData;
import org.schabi.newpipe.database.playlist.dao.PlaylistRemoteDAO_Impl;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final /* synthetic */ class FeedDatabaseManager$$ExternalSyntheticLambda1 implements Callable {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;
    public final /* synthetic */ long f$1;

    public /* synthetic */ FeedDatabaseManager$$ExternalSyntheticLambda1(Object obj, long j, int i) {
        this.$r8$classId = i;
        this.f$0 = obj;
        this.f$1 = j;
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        int i = this.$r8$classId;
        long j = this.f$1;
        Object obj = this.f$0;
        switch (i) {
            case 0:
                return Integer.valueOf(((Number) DBUtil.performBlocking(((FeedDatabaseManager) obj).feedGroupTable.__db, false, true, new WorkSpecDao_Impl$$ExternalSyntheticLambda26(j, 6))).intValue());
            default:
                return Integer.valueOf(((Number) DBUtil.performBlocking(((PlaylistRemoteDAO_Impl) ((TokenData) obj).builder).__db, false, true, new WorkSpecDao_Impl$$ExternalSyntheticLambda26(j, 12))).intValue());
        }
    }
}
