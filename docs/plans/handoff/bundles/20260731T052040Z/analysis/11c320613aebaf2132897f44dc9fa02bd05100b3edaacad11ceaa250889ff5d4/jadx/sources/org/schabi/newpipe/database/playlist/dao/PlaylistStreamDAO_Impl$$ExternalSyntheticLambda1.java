package org.schabi.newpipe.database.playlist.dao;

import androidx.sqlite.SQLiteConnection;
import androidx.sqlite.SQLiteStatement;
import j$.time.OffsetDateTime;
import java.util.ArrayList;
import kotlin.jvm.functions.Function1;
import okio.Path;
import org.schabi.newpipe.database.playlist.PlaylistStreamEntry;
import org.schabi.newpipe.database.stream.model.StreamEntity;
import org.schabi.newpipe.extractor.stream.StreamType;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final /* synthetic */ class PlaylistStreamDAO_Impl$$ExternalSyntheticLambda1 implements Function1 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ long f$1;
    public final /* synthetic */ PlaylistStreamDAO_Impl f$2;

    public /* synthetic */ PlaylistStreamDAO_Impl$$ExternalSyntheticLambda1(long j, PlaylistStreamDAO_Impl playlistStreamDAO_Impl, int i) {
        this.$r8$classId = i;
        this.f$1 = j;
        this.f$2 = playlistStreamDAO_Impl;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        SQLiteStatement prepare;
        Boolean bool;
        Boolean bool2;
        int i = this.$r8$classId;
        int i2 = 15;
        int i3 = 14;
        int i4 = 13;
        int i5 = 7;
        int i6 = 6;
        int i7 = 1;
        PlaylistStreamDAO_Impl playlistStreamDAO_Impl = this.f$2;
        long j = this.f$1;
        SQLiteConnection sQLiteConnection = (SQLiteConnection) obj;
        switch (i) {
            case 0:
                sQLiteConnection.getClass();
                prepare = sQLiteConnection.prepare("SELECT `uid`, `service_id`, `url`, `title`, `stream_type`, `duration`, `uploader`, `uploader_url`, `thumbnail_url`, `view_count`, `textual_upload_date`, `upload_date`, `is_upload_date_approximation`, `stream_id`, `join_index`, `progress_time` FROM (\n        SELECT * FROM streams\n\n        INNER JOIN (SELECT stream_id, join_index FROM playlist_stream_join WHERE playlist_id = ?)\n        ON uid = stream_id\n\n        LEFT JOIN (SELECT stream_id AS stream_id_alias, progress_time FROM stream_state )\n        ON uid = stream_id_alias\n\n        ORDER BY join_index ASC\n        )");
                try {
                    prepare.bindLong(1, j);
                    ArrayList arrayList = new ArrayList();
                    while (prepare.step()) {
                        long j2 = prepare.getLong(i4);
                        int i8 = (int) prepare.getLong(14);
                        long j3 = prepare.getLong(15);
                        long j4 = prepare.getLong(0);
                        int i9 = (int) prepare.getLong(i7);
                        String text = prepare.getText(2);
                        String text2 = prepare.getText(3);
                        String text3 = prepare.getText(4);
                        Path.Companion companion = playlistStreamDAO_Impl.__converters;
                        StreamType streamTypeOf = Path.Companion.streamTypeOf(text3);
                        long j5 = prepare.getLong(5);
                        String text4 = prepare.getText(6);
                        String text5 = prepare.isNull(7) ? null : prepare.getText(7);
                        String text6 = prepare.isNull(8) ? null : prepare.getText(8);
                        Long valueOf = prepare.isNull(9) ? null : Long.valueOf(prepare.getLong(9));
                        String text7 = prepare.isNull(10) ? null : prepare.getText(10);
                        OffsetDateTime offsetDateTimeFromTimestamp = Path.Companion.offsetDateTimeFromTimestamp(prepare.isNull(11) ? null : Long.valueOf(prepare.getLong(11)));
                        Integer valueOf2 = prepare.isNull(12) ? null : Integer.valueOf((int) prepare.getLong(12));
                        if (valueOf2 != null) {
                            bool = Boolean.valueOf(valueOf2.intValue() != 0);
                        } else {
                            bool = null;
                        }
                        arrayList.add(new PlaylistStreamEntry(new StreamEntity(j4, i9, text, text2, streamTypeOf, j5, text4, text5, text6, valueOf, text7, offsetDateTimeFromTimestamp, bool), j3, j2, i8));
                        i4 = 13;
                        i7 = 1;
                    }
                    prepare.close();
                    return arrayList;
                } finally {
                }
            default:
                sQLiteConnection.getClass();
                prepare = sQLiteConnection.prepare("SELECT `uid`, `service_id`, `url`, `title`, `stream_type`, `duration`, `uploader`, `uploader_url`, `thumbnail_url`, `view_count`, `textual_upload_date`, `upload_date`, `is_upload_date_approximation`, `stream_id`, `join_index`, `progress_time` FROM (\n        SELECT *, MIN(join_index) FROM streams\n\n        INNER JOIN (SELECT stream_id, join_index FROM playlist_stream_join WHERE playlist_id = ?)\n        ON uid = stream_id\n\n        LEFT JOIN (SELECT stream_id AS stream_id_alias, progress_time FROM stream_state )\n        ON uid = stream_id_alias\n\n        GROUP BY uid\n        ORDER BY MIN(join_index) ASC\n        )");
                try {
                    prepare.bindLong(1, j);
                    ArrayList arrayList2 = new ArrayList();
                    while (prepare.step()) {
                        long j6 = prepare.getLong(13);
                        int i10 = (int) prepare.getLong(i3);
                        long j7 = prepare.getLong(i2);
                        long j8 = prepare.getLong(0);
                        int i11 = (int) prepare.getLong(1);
                        String text8 = prepare.getText(2);
                        String text9 = prepare.getText(3);
                        String text10 = prepare.getText(4);
                        Path.Companion companion2 = playlistStreamDAO_Impl.__converters;
                        StreamType streamTypeOf2 = Path.Companion.streamTypeOf(text10);
                        long j9 = prepare.getLong(5);
                        String text11 = prepare.getText(i6);
                        String text12 = prepare.isNull(i5) ? null : prepare.getText(i5);
                        String text13 = prepare.isNull(8) ? null : prepare.getText(8);
                        Long valueOf3 = prepare.isNull(9) ? null : Long.valueOf(prepare.getLong(9));
                        String text14 = prepare.isNull(10) ? null : prepare.getText(10);
                        OffsetDateTime offsetDateTimeFromTimestamp2 = Path.Companion.offsetDateTimeFromTimestamp(prepare.isNull(11) ? null : Long.valueOf(prepare.getLong(11)));
                        Integer valueOf4 = prepare.isNull(12) ? null : Integer.valueOf((int) prepare.getLong(12));
                        if (valueOf4 != null) {
                            bool2 = Boolean.valueOf(valueOf4.intValue() != 0);
                        } else {
                            bool2 = null;
                        }
                        arrayList2.add(new PlaylistStreamEntry(new StreamEntity(j8, i11, text8, text9, streamTypeOf2, j9, text11, text12, text13, valueOf3, text14, offsetDateTimeFromTimestamp2, bool2), j7, j6, i10));
                        i2 = 15;
                        i3 = 14;
                        i5 = 7;
                        i6 = 6;
                    }
                    prepare.close();
                    return arrayList2;
                } finally {
                }
        }
    }
}
