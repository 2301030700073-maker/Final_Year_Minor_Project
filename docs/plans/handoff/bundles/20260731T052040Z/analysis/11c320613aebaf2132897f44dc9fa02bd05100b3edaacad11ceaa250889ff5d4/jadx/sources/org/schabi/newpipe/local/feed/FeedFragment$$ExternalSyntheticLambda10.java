package org.schabi.newpipe.local.feed;

import android.R;
import android.content.Context;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import androidx.room.util.DBUtil;
import androidx.sqlite.SQLiteConnection;
import androidx.sqlite.SQLiteStatement;
import java.util.ArrayList;
import kotlin.Pair;
import kotlin.Result;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlinx.serialization.json.JsonBuilder;
import okio.Options;
import org.schabi.newpipe.database.playlist.PlaylistMetadataEntry;
import org.schabi.newpipe.database.playlist.PlaylistStreamEntry;
import org.schabi.newpipe.database.playlist.model.PlaylistRemoteEntity;
import org.schabi.newpipe.database.subscription.SubscriptionEntity;
import org.schabi.newpipe.extractor.Image;
import org.schabi.newpipe.local.feed.FeedFragment;
import org.schabi.newpipe.local.playlist.ExportPlaylistKt;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final /* synthetic */ class FeedFragment$$ExternalSyntheticLambda10 implements Function1 {
    public final /* synthetic */ int $r8$classId;

    public /* synthetic */ FeedFragment$$ExternalSyntheticLambda10(int i) {
        this.$r8$classId = i;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        SQLiteStatement prepare;
        Boolean bool;
        Object failure;
        switch (this.$r8$classId) {
            case 0:
                Context context = (Context) obj;
                FeedFragment.Companion companion = FeedFragment.Companion;
                context.getClass();
                return Options.Companion.resolveDrawable(context, R.attr.selectableItemBackground);
            case 1:
                SQLiteConnection sQLiteConnection = (SQLiteConnection) obj;
                sQLiteConnection.getClass();
                prepare = sQLiteConnection.prepare("SELECT COUNT(*) FROM playlists");
                try {
                    if (prepare.step() && !prepare.isNull(0)) {
                        r7 = Long.valueOf(prepare.getLong(0));
                    }
                    return r7;
                } finally {
                }
            case 2:
                SQLiteConnection sQLiteConnection2 = (SQLiteConnection) obj;
                sQLiteConnection2.getClass();
                prepare = sQLiteConnection2.prepare("SELECT * FROM remote_playlists ORDER BY display_index");
                try {
                    int columnIndexOrThrow = DBUtil.getColumnIndexOrThrow(prepare, "uid");
                    int columnIndexOrThrow2 = DBUtil.getColumnIndexOrThrow(prepare, "service_id");
                    int columnIndexOrThrow3 = DBUtil.getColumnIndexOrThrow(prepare, "name");
                    int columnIndexOrThrow4 = DBUtil.getColumnIndexOrThrow(prepare, "url");
                    int columnIndexOrThrow5 = DBUtil.getColumnIndexOrThrow(prepare, "thumbnail_url");
                    int columnIndexOrThrow6 = DBUtil.getColumnIndexOrThrow(prepare, "uploader");
                    int columnIndexOrThrow7 = DBUtil.getColumnIndexOrThrow(prepare, "display_index");
                    int columnIndexOrThrow8 = DBUtil.getColumnIndexOrThrow(prepare, "stream_count");
                    ArrayList arrayList = new ArrayList();
                    while (prepare.step()) {
                        arrayList.add(new PlaylistRemoteEntity(prepare.getLong(columnIndexOrThrow), (int) prepare.getLong(columnIndexOrThrow2), prepare.isNull(columnIndexOrThrow3) ? null : prepare.getText(columnIndexOrThrow3), prepare.isNull(columnIndexOrThrow4) ? null : prepare.getText(columnIndexOrThrow4), prepare.isNull(columnIndexOrThrow5) ? null : prepare.getText(columnIndexOrThrow5), prepare.isNull(columnIndexOrThrow6) ? null : prepare.getText(columnIndexOrThrow6), prepare.getLong(columnIndexOrThrow7), prepare.isNull(columnIndexOrThrow8) ? null : Long.valueOf(prepare.getLong(columnIndexOrThrow8))));
                    }
                    return arrayList;
                } finally {
                }
            case 3:
                SQLiteConnection sQLiteConnection3 = (SQLiteConnection) obj;
                sQLiteConnection3.getClass();
                prepare = sQLiteConnection3.prepare("\n        SELECT uid, name, is_thumbnail_permanent, thumbnail_stream_id, display_index,\n        (SELECT thumbnail_url FROM streams WHERE streams.uid = thumbnail_stream_id) AS thumbnail_url,\n\n        COALESCE(COUNT(playlist_id), 0) AS streamCount FROM playlists\n\n        LEFT JOIN playlist_stream_join\n        ON playlists.uid = playlist_id\n\n        GROUP BY uid\n        ORDER BY display_index\n        ");
                try {
                    ArrayList arrayList2 = new ArrayList();
                    while (prepare.step()) {
                        long j = prepare.getLong(0);
                        String text = prepare.isNull(1) ? null : prepare.getText(1);
                        Integer valueOf = prepare.isNull(2) ? null : Integer.valueOf((int) prepare.getLong(2));
                        if (valueOf != null) {
                            bool = Boolean.valueOf(valueOf.intValue() != 0);
                        } else {
                            bool = null;
                        }
                        arrayList2.add(new PlaylistMetadataEntry(j, text, prepare.isNull(5) ? null : prepare.getText(5), prepare.isNull(4) ? null : Long.valueOf(prepare.getLong(4)), bool, prepare.isNull(3) ? null : Long.valueOf(prepare.getLong(3)), prepare.getLong(6)));
                    }
                    return arrayList2;
                } finally {
                }
            case 4:
                SQLiteConnection sQLiteConnection4 = (SQLiteConnection) obj;
                sQLiteConnection4.getClass();
                prepare = sQLiteConnection4.prepare("\n        DELETE FROM streams WHERE\n\n        NOT EXISTS (SELECT 1 FROM stream_history sh\n        WHERE sh.stream_id = streams.uid)\n\n        AND NOT EXISTS (SELECT 1 FROM playlist_stream_join ps\n        WHERE ps.stream_id = streams.uid)\n\n        AND NOT EXISTS (SELECT 1 FROM feed f\n        WHERE f.stream_id = streams.uid)\n        ");
                try {
                    prepare.step();
                    int totalChangedRows = DBUtil.getTotalChangedRows(sQLiteConnection4);
                    prepare.close();
                    return Integer.valueOf(totalChangedRows);
                } finally {
                }
            case 5:
                SQLiteConnection sQLiteConnection5 = (SQLiteConnection) obj;
                sQLiteConnection5.getClass();
                prepare = sQLiteConnection5.prepare("DELETE FROM stream_state");
                try {
                    prepare.step();
                    int totalChangedRows2 = DBUtil.getTotalChangedRows(sQLiteConnection5);
                    prepare.close();
                    return Integer.valueOf(totalChangedRows2);
                } finally {
                }
            case 6:
                SQLiteConnection sQLiteConnection6 = (SQLiteConnection) obj;
                sQLiteConnection6.getClass();
                prepare = sQLiteConnection6.prepare("SELECT * FROM subscriptions ORDER BY name COLLATE NOCASE ASC");
                try {
                    int columnIndexOrThrow9 = DBUtil.getColumnIndexOrThrow(prepare, "uid");
                    int columnIndexOrThrow10 = DBUtil.getColumnIndexOrThrow(prepare, "service_id");
                    int columnIndexOrThrow11 = DBUtil.getColumnIndexOrThrow(prepare, "url");
                    int columnIndexOrThrow12 = DBUtil.getColumnIndexOrThrow(prepare, "name");
                    int columnIndexOrThrow13 = DBUtil.getColumnIndexOrThrow(prepare, "avatar_url");
                    int columnIndexOrThrow14 = DBUtil.getColumnIndexOrThrow(prepare, "subscriber_count");
                    int columnIndexOrThrow15 = DBUtil.getColumnIndexOrThrow(prepare, "description");
                    int columnIndexOrThrow16 = DBUtil.getColumnIndexOrThrow(prepare, "notification_mode");
                    ArrayList arrayList3 = new ArrayList();
                    while (prepare.step()) {
                        arrayList3.add(new SubscriptionEntity(prepare.getLong(columnIndexOrThrow9), (int) prepare.getLong(columnIndexOrThrow10), prepare.isNull(columnIndexOrThrow11) ? null : prepare.getText(columnIndexOrThrow11), prepare.isNull(columnIndexOrThrow12) ? null : prepare.getText(columnIndexOrThrow12), prepare.isNull(columnIndexOrThrow13) ? null : prepare.getText(columnIndexOrThrow13), prepare.isNull(columnIndexOrThrow14) ? null : Long.valueOf(prepare.getLong(columnIndexOrThrow14)), prepare.isNull(columnIndexOrThrow15) ? null : prepare.getText(columnIndexOrThrow15), (int) prepare.getLong(columnIndexOrThrow16)));
                    }
                    return arrayList3;
                } finally {
                }
            case 7:
                Context context2 = (Context) obj;
                FeedFragment.Companion companion2 = FeedFragment.Companion;
                context2.getClass();
                return new LayerDrawable(new Drawable[]{Options.Companion.resolveDrawable(context2, org.schabi.newpipe.R.attr.dashed_border), Options.Companion.resolveDrawable(context2, R.attr.selectableItemBackground)});
            case 8:
                PlaylistStreamEntry playlistStreamEntry = (PlaylistStreamEntry) obj;
                playlistStreamEntry.getClass();
                return playlistStreamEntry.streamEntity.getUrl();
            case 9:
                PlaylistStreamEntry playlistStreamEntry2 = (PlaylistStreamEntry) obj;
                playlistStreamEntry2.getClass();
                try {
                    failure = ExportPlaylistKt.linkHandler.getId(playlistStreamEntry2.streamEntity.getUrl());
                } catch (Throwable th) {
                    failure = new Result.Failure(th);
                }
                return (String) (failure instanceof Result.Failure ? null : failure);
            case 10:
                PlaylistStreamEntry playlistStreamEntry3 = (PlaylistStreamEntry) obj;
                playlistStreamEntry3.getClass();
                return playlistStreamEntry3.streamEntity;
            case 11:
                JsonBuilder jsonBuilder = (JsonBuilder) obj;
                jsonBuilder.getClass();
                jsonBuilder.encodeDefaults = true;
                return Unit.INSTANCE;
            case 12:
                Pair pair = (Pair) obj;
                pair.getClass();
                return Boolean.valueOf((((Number) pair.component2()).intValue() & 2) != 0);
            default:
                Image image = (Image) obj;
                if (image.getHeight() == -1 && image.getWidth() == -1) {
                    r8 = true;
                }
                return Boolean.valueOf(r8);
        }
    }
}
