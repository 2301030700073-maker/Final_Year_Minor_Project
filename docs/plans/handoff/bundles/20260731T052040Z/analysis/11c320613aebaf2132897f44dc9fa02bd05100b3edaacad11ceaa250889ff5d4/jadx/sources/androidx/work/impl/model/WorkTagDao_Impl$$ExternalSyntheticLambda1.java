package androidx.work.impl.model;

import androidx.core.os.BundleKt;
import androidx.room.util.DBUtil;
import androidx.sqlite.SQLite;
import androidx.sqlite.SQLiteConnection;
import androidx.sqlite.SQLiteStatement;
import androidx.work.Data;
import androidx.work.WorkInfo$State;
import androidx.work.impl.Processor$$ExternalSyntheticLambda2;
import androidx.work.impl.constraints.ConstraintsState;
import androidx.work.impl.model.WorkSpecDao_Impl;
import java.util.ArrayList;
import java.util.Collection;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlinx.coroutines.StandaloneCoroutine;
import kotlinx.coroutines.android.HandlerContext;
import kotlinx.coroutines.channels.ProducerCoroutine;
import kotlinx.coroutines.channels.ProducerScope;
import okhttp3.Cookie;
import org.schabi.newpipe.database.feed.dao.FeedDAO_Impl;
import org.schabi.newpipe.database.feed.dao.FeedGroupDAO_Impl;
import org.schabi.newpipe.database.playlist.dao.PlaylistStreamDAO_Impl;
import org.schabi.newpipe.database.stream.dao.StreamDAO_Impl;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final /* synthetic */ class WorkTagDao_Impl$$ExternalSyntheticLambda1 implements Function1 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;
    public final /* synthetic */ Object f$1;

    public /* synthetic */ WorkTagDao_Impl$$ExternalSyntheticLambda1(Object obj, Object obj2, int i) {
        this.$r8$classId = i;
        this.f$0 = obj;
        this.f$1 = obj2;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        SQLiteStatement prepare;
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        Object obj2 = this.f$1;
        Object obj3 = this.f$0;
        switch (i) {
            case 0:
                SQLiteConnection sQLiteConnection = (SQLiteConnection) obj;
                sQLiteConnection.getClass();
                ((WorkTagDao_Impl) obj3).__insertAdapterOfWorkTag.insert(sQLiteConnection, (WorkTag) obj2);
                return unit;
            case 1:
                ((StandaloneCoroutine) obj3).cancel(null);
                ((ProducerCoroutine) ((ProducerScope) obj2)).mo691trySendJP2dKIU((ConstraintsState) obj);
                return unit;
            case 2:
                SQLiteConnection sQLiteConnection2 = (SQLiteConnection) obj;
                sQLiteConnection2.getClass();
                ((DependencyDao_Impl) obj3).__insertAdapterOfDependency.insert(sQLiteConnection2, (Dependency) obj2);
                return unit;
            case 3:
                SQLiteConnection sQLiteConnection3 = (SQLiteConnection) obj;
                sQLiteConnection3.getClass();
                ((PreferenceDao_Impl) obj3).__insertAdapterOfPreference.insert(sQLiteConnection3, (Preference) obj2);
                return unit;
            case 4:
                SQLiteConnection sQLiteConnection4 = (SQLiteConnection) obj;
                sQLiteConnection4.getClass();
                ((SystemIdInfoDao_Impl) obj3).__insertAdapterOfSystemIdInfo.insert(sQLiteConnection4, (SystemIdInfo) obj2);
                return unit;
            case 5:
                SQLiteConnection sQLiteConnection5 = (SQLiteConnection) obj;
                sQLiteConnection5.getClass();
                ((WorkNameDao_Impl) obj3).__insertAdapterOfWorkName.insert(sQLiteConnection5, (WorkName) obj2);
                return unit;
            case 6:
                WorkInfo$State workInfo$State = (WorkInfo$State) obj3;
                String str = (String) obj2;
                SQLiteConnection sQLiteConnection6 = (SQLiteConnection) obj;
                sQLiteConnection6.getClass();
                prepare = sQLiteConnection6.prepare("UPDATE workspec SET state=? WHERE id=?");
                try {
                    prepare.bindLong(1, SQLite.stateToInt(workInfo$State));
                    prepare.bindText(2, str);
                    prepare.step();
                    int totalChangedRows = DBUtil.getTotalChangedRows(sQLiteConnection6);
                    prepare.close();
                    return Integer.valueOf(totalChangedRows);
                } finally {
                }
            case 7:
                Data data = (Data) obj3;
                String str2 = (String) obj2;
                SQLiteConnection sQLiteConnection7 = (SQLiteConnection) obj;
                sQLiteConnection7.getClass();
                prepare = sQLiteConnection7.prepare("UPDATE workspec SET output=? WHERE id=?");
                try {
                    Data data2 = Data.EMPTY;
                    prepare.bindBlob(1, Cookie.Companion.toByteArrayInternalV1(data));
                    prepare.bindText(2, str2);
                    prepare.step();
                    return unit;
                } finally {
                }
            case 8:
                ((HandlerContext) obj3).handler.removeCallbacks((Processor$$ExternalSyntheticLambda2) obj2);
                return unit;
            case 9:
                SQLiteConnection sQLiteConnection8 = (SQLiteConnection) obj;
                sQLiteConnection8.getClass();
                return ((FeedDAO_Impl) obj3).__insertAdapterOfFeedEntity.insertAndReturnIdsList(sQLiteConnection8, (ArrayList) obj2);
            case 10:
                SQLiteConnection sQLiteConnection9 = (SQLiteConnection) obj;
                sQLiteConnection9.getClass();
                return ((FeedGroupDAO_Impl) obj3).__insertAdapterOfFeedGroupSubscriptionEntity.insertAndReturnIdsList(sQLiteConnection9, (ArrayList) obj2);
            case 11:
                FeedGroupDAO_Impl feedGroupDAO_Impl = (FeedGroupDAO_Impl) obj3;
                ((SQLiteConnection) obj).getClass();
                feedGroupDAO_Impl.getClass();
                for (Map.Entry entry : ((LinkedHashMap) obj2).entrySet()) {
                    final long longValue = ((Number) entry.getKey()).longValue();
                    final long longValue2 = ((Number) entry.getValue()).longValue();
                    ((Number) DBUtil.performBlocking(feedGroupDAO_Impl.__db, false, true, new Function1() { // from class: org.schabi.newpipe.database.feed.dao.FeedGroupDAO_Impl$$ExternalSyntheticLambda6
                        @Override // kotlin.jvm.functions.Function1
                        public final Object invoke(Object obj4) {
                            long j = longValue2;
                            long j2 = longValue;
                            SQLiteConnection sQLiteConnection10 = (SQLiteConnection) obj4;
                            sQLiteConnection10.getClass();
                            SQLiteStatement prepare2 = sQLiteConnection10.prepare("UPDATE feed_group SET sort_order = ? WHERE uid = ?");
                            try {
                                prepare2.bindLong(1, j);
                                prepare2.bindLong(2, j2);
                                prepare2.step();
                                int totalChangedRows2 = DBUtil.getTotalChangedRows(sQLiteConnection10);
                                prepare2.close();
                                return Integer.valueOf(totalChangedRows2);
                            } catch (Throwable th) {
                                prepare2.close();
                                throw th;
                            }
                        }
                    })).intValue();
                }
                return unit;
            case 12:
                SQLiteConnection sQLiteConnection10 = (SQLiteConnection) obj;
                sQLiteConnection10.getClass();
                return ((PlaylistStreamDAO_Impl) obj3).__insertAdapterOfPlaylistStreamEntity.insertAndReturnIdsList(sQLiteConnection10, (ArrayList) obj2);
            default:
                SQLiteConnection sQLiteConnection11 = (SQLiteConnection) obj;
                sQLiteConnection11.getClass();
                WorkSpecDao_Impl.AnonymousClass2 anonymousClass2 = ((StreamDAO_Impl) obj3).__updateAdapterOfStreamEntity;
                Collection collection = (Collection) obj2;
                if (collection != null) {
                    SQLiteStatement prepare2 = sQLiteConnection11.prepare("UPDATE OR ABORT `streams` SET `uid` = ?,`service_id` = ?,`url` = ?,`title` = ?,`stream_type` = ?,`duration` = ?,`uploader` = ?,`uploader_url` = ?,`thumbnail_url` = ?,`view_count` = ?,`textual_upload_date` = ?,`upload_date` = ?,`is_upload_date_approximation` = ? WHERE `uid` = ?");
                    try {
                        for (Object obj4 : collection) {
                            if (obj4 != null) {
                                anonymousClass2.bind(prepare2, obj4);
                                prepare2.step();
                                prepare2.reset();
                                DBUtil.getTotalChangedRows(sQLiteConnection11);
                            }
                        }
                        BundleKt.closeFinally(prepare2, null);
                    } finally {
                    }
                }
                return unit;
        }
    }
}
