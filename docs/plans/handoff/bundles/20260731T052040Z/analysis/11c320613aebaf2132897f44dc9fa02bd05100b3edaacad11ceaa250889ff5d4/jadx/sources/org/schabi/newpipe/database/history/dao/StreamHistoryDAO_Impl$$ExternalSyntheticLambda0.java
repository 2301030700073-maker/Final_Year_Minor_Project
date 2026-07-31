package org.schabi.newpipe.database.history.dao;

import androidx.room.util.DBUtil;
import androidx.sqlite.SQLiteConnection;
import androidx.sqlite.SQLiteStatement;
import j$.time.OffsetDateTime;
import java.util.ArrayList;
import kotlin.jvm.functions.Function1;
import okio.Path;
import org.schabi.newpipe.database.history.model.StreamHistoryEntry;
import org.schabi.newpipe.database.stream.StreamStatisticsEntry;
import org.schabi.newpipe.database.stream.model.StreamEntity;
import org.schabi.newpipe.extractor.stream.StreamType;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final /* synthetic */ class StreamHistoryDAO_Impl$$ExternalSyntheticLambda0 implements Function1 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ StreamHistoryDAO_Impl f$1;

    public /* synthetic */ StreamHistoryDAO_Impl$$ExternalSyntheticLambda0(StreamHistoryDAO_Impl streamHistoryDAO_Impl, int i) {
        this.$r8$classId = i;
        this.f$1 = streamHistoryDAO_Impl;
    }

    /* JADX WARN: Finally extract failed */
    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        int i;
        Integer valueOf;
        Boolean bool;
        int i2;
        Integer valueOf2;
        Boolean bool2;
        int i3 = this.$r8$classId;
        StreamHistoryDAO_Impl streamHistoryDAO_Impl = this.f$1;
        switch (i3) {
            case 0:
                SQLiteConnection sQLiteConnection = (SQLiteConnection) obj;
                sQLiteConnection.getClass();
                SQLiteStatement prepare = sQLiteConnection.prepare("SELECT `uid`, `service_id`, `url`, `title`, `stream_type`, `duration`, `uploader`, `uploader_url`, `thumbnail_url`, `view_count`, `textual_upload_date`, `upload_date`, `is_upload_date_approximation`, `stream_id`, `latestAccess`, `watchCount`, `progress_time` FROM (\n        SELECT * FROM streams\n\n        INNER JOIN (\n            SELECT stream_id, MAX(access_date) AS latestAccess, SUM(repeat_count) AS watchCount\n            FROM stream_history\n            GROUP BY stream_id\n        )\n        ON uid = stream_id\n\n        LEFT JOIN (SELECT stream_id AS stream_id_alias, progress_time FROM stream_state )\n        ON uid = stream_id_alias\n        )");
                try {
                    ArrayList arrayList = new ArrayList();
                    while (prepare.step()) {
                        long j = prepare.getLong(13);
                        Long valueOf3 = prepare.isNull(14) ? null : Long.valueOf(prepare.getLong(14));
                        Path.Companion companion = streamHistoryDAO_Impl.__converters;
                        OffsetDateTime offsetDateTimeFromTimestamp = Path.Companion.offsetDateTimeFromTimestamp(valueOf3);
                        if (offsetDateTimeFromTimestamp == null) {
                            throw new IllegalStateException("Expected NON-NULL 'java.time.OffsetDateTime', but it was NULL.");
                        }
                        long j2 = prepare.getLong(15);
                        long j3 = prepare.getLong(16);
                        long j4 = prepare.getLong(0);
                        int i4 = (int) prepare.getLong(1);
                        String text = prepare.getText(2);
                        String text2 = prepare.getText(3);
                        StreamType streamTypeOf = Path.Companion.streamTypeOf(prepare.getText(4));
                        long j5 = prepare.getLong(5);
                        String text3 = prepare.getText(6);
                        String text4 = prepare.isNull(7) ? null : prepare.getText(7);
                        String text5 = prepare.isNull(8) ? null : prepare.getText(8);
                        Long valueOf4 = prepare.isNull(9) ? null : Long.valueOf(prepare.getLong(9));
                        String text6 = prepare.isNull(10) ? null : prepare.getText(10);
                        OffsetDateTime offsetDateTimeFromTimestamp2 = Path.Companion.offsetDateTimeFromTimestamp(prepare.isNull(11) ? null : Long.valueOf(prepare.getLong(11)));
                        if (prepare.isNull(12)) {
                            i = i4;
                            valueOf = null;
                        } else {
                            i = i4;
                            valueOf = Integer.valueOf((int) prepare.getLong(12));
                        }
                        if (valueOf != null) {
                            bool = Boolean.valueOf(valueOf.intValue() != 0);
                        } else {
                            bool = null;
                        }
                        arrayList.add(new StreamStatisticsEntry(new StreamEntity(j4, i, text, text2, streamTypeOf, j5, text3, text4, text5, valueOf4, text6, offsetDateTimeFromTimestamp2, bool), j3, j, offsetDateTimeFromTimestamp, j2));
                    }
                    prepare.close();
                    return arrayList;
                } catch (Throwable th) {
                    prepare.close();
                    throw th;
                }
            default:
                SQLiteConnection sQLiteConnection2 = (SQLiteConnection) obj;
                sQLiteConnection2.getClass();
                SQLiteStatement prepare2 = sQLiteConnection2.prepare("SELECT * FROM streams INNER JOIN stream_history ON uid = stream_id ORDER BY uid ASC");
                try {
                    int columnIndexOrThrow = DBUtil.getColumnIndexOrThrow(prepare2, "uid");
                    int columnIndexOrThrow2 = DBUtil.getColumnIndexOrThrow(prepare2, "service_id");
                    int columnIndexOrThrow3 = DBUtil.getColumnIndexOrThrow(prepare2, "url");
                    int columnIndexOrThrow4 = DBUtil.getColumnIndexOrThrow(prepare2, "title");
                    int columnIndexOrThrow5 = DBUtil.getColumnIndexOrThrow(prepare2, "stream_type");
                    int columnIndexOrThrow6 = DBUtil.getColumnIndexOrThrow(prepare2, "duration");
                    int columnIndexOrThrow7 = DBUtil.getColumnIndexOrThrow(prepare2, "uploader");
                    int columnIndexOrThrow8 = DBUtil.getColumnIndexOrThrow(prepare2, "uploader_url");
                    int columnIndexOrThrow9 = DBUtil.getColumnIndexOrThrow(prepare2, "thumbnail_url");
                    int columnIndexOrThrow10 = DBUtil.getColumnIndexOrThrow(prepare2, "view_count");
                    int columnIndexOrThrow11 = DBUtil.getColumnIndexOrThrow(prepare2, "textual_upload_date");
                    int columnIndexOrThrow12 = DBUtil.getColumnIndexOrThrow(prepare2, "upload_date");
                    int columnIndexOrThrow13 = DBUtil.getColumnIndexOrThrow(prepare2, "is_upload_date_approximation");
                    int columnIndexOrThrow14 = DBUtil.getColumnIndexOrThrow(prepare2, "stream_id");
                    int i5 = columnIndexOrThrow13;
                    int columnIndexOrThrow15 = DBUtil.getColumnIndexOrThrow(prepare2, "access_date");
                    int i6 = columnIndexOrThrow12;
                    int columnIndexOrThrow16 = DBUtil.getColumnIndexOrThrow(prepare2, "repeat_count");
                    int i7 = columnIndexOrThrow11;
                    ArrayList arrayList2 = new ArrayList();
                    while (prepare2.step()) {
                        long j6 = prepare2.getLong(columnIndexOrThrow14);
                        Long valueOf5 = prepare2.isNull(columnIndexOrThrow15) ? null : Long.valueOf(prepare2.getLong(columnIndexOrThrow15));
                        int i8 = columnIndexOrThrow14;
                        Path.Companion companion2 = streamHistoryDAO_Impl.__converters;
                        OffsetDateTime offsetDateTimeFromTimestamp3 = Path.Companion.offsetDateTimeFromTimestamp(valueOf5);
                        if (offsetDateTimeFromTimestamp3 == null) {
                            throw new IllegalStateException("Expected NON-NULL 'java.time.OffsetDateTime', but it was NULL.");
                        }
                        long j7 = prepare2.getLong(columnIndexOrThrow16);
                        long j8 = prepare2.getLong(columnIndexOrThrow);
                        int i9 = columnIndexOrThrow15;
                        int i10 = (int) prepare2.getLong(columnIndexOrThrow2);
                        String text7 = prepare2.getText(columnIndexOrThrow3);
                        String text8 = prepare2.getText(columnIndexOrThrow4);
                        StreamType streamTypeOf2 = Path.Companion.streamTypeOf(prepare2.getText(columnIndexOrThrow5));
                        long j9 = prepare2.getLong(columnIndexOrThrow6);
                        String text9 = prepare2.getText(columnIndexOrThrow7);
                        String text10 = prepare2.isNull(columnIndexOrThrow8) ? null : prepare2.getText(columnIndexOrThrow8);
                        String text11 = prepare2.isNull(columnIndexOrThrow9) ? null : prepare2.getText(columnIndexOrThrow9);
                        Long valueOf6 = prepare2.isNull(columnIndexOrThrow10) ? null : Long.valueOf(prepare2.getLong(columnIndexOrThrow10));
                        int i11 = i7;
                        String text12 = prepare2.isNull(i11) ? null : prepare2.getText(i11);
                        int i12 = i6;
                        OffsetDateTime offsetDateTimeFromTimestamp4 = Path.Companion.offsetDateTimeFromTimestamp(prepare2.isNull(i12) ? null : Long.valueOf(prepare2.getLong(i12)));
                        i6 = i12;
                        int i13 = i5;
                        if (prepare2.isNull(i13)) {
                            i7 = i11;
                            i2 = columnIndexOrThrow16;
                            valueOf2 = null;
                        } else {
                            i7 = i11;
                            i2 = columnIndexOrThrow16;
                            valueOf2 = Integer.valueOf((int) prepare2.getLong(i13));
                        }
                        if (valueOf2 != null) {
                            bool2 = Boolean.valueOf(valueOf2.intValue() != 0);
                        } else {
                            bool2 = null;
                        }
                        arrayList2.add(new StreamHistoryEntry(new StreamEntity(j8, i10, text7, text8, streamTypeOf2, j9, text9, text10, text11, valueOf6, text12, offsetDateTimeFromTimestamp4, bool2), j6, offsetDateTimeFromTimestamp3, j7));
                        columnIndexOrThrow16 = i2;
                        i5 = i13;
                        columnIndexOrThrow15 = i9;
                        columnIndexOrThrow14 = i8;
                    }
                    prepare2.close();
                    return arrayList2;
                } catch (Throwable th2) {
                    prepare2.close();
                    throw th2;
                }
        }
    }
}
