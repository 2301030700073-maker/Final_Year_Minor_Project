package androidx.work.impl.model;

import androidx.collection.ArrayMap;
import androidx.room.Room;
import androidx.room.RoomDatabase;
import androidx.sqlite.SQLiteConnection;
import androidx.sqlite.SQLiteStatement;
import androidx.work.Data;
import androidx.work.WorkInfo;
import androidx.work.impl.model.WorkTagDao_Impl;
import coil3.util.UtilsKt;
import java.util.Iterator;
import java.util.List;
import kotlin.ExceptionsKt;
import kotlin.ResultKt;
import kotlin.text.StringsKt__IndentKt$$ExternalSyntheticLambda0;
import kotlin.uuid.UuidKt;
import org.wikipedia.games.GamesHubScreenKt$$ExternalSyntheticLambda8;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class WorkSpecDao_Impl {
    public final RoomDatabase __db;
    public final WorkTagDao_Impl.AnonymousClass1 __insertAdapterOfWorkSpec = new WorkTagDao_Impl.AnonymousClass1(5);

    public WorkSpecDao_Impl(RoomDatabase roomDatabase) {
        this.__db = roomDatabase;
    }

    public final void __fetchRelationshipWorkProgressAsandroidxWorkData(SQLiteConnection sQLiteConnection, ArrayMap arrayMap) {
        ArrayMap.KeySet keySet = (ArrayMap.KeySet) arrayMap.keySet();
        ArrayMap arrayMap2 = ArrayMap.this;
        if (arrayMap2.isEmpty()) {
            return;
        }
        int i = 0;
        if (arrayMap.size > 999) {
            ResultKt.recursiveFetchArrayMap(arrayMap, new WorkSpecDao_Impl$$ExternalSyntheticLambda19(this, sQLiteConnection, i));
            return;
        }
        StringBuilder sb = new StringBuilder();
        sb.append("SELECT `progress`,`work_spec_id` FROM `WorkProgress` WHERE `work_spec_id` IN (");
        Room.appendPlaceholders(arrayMap2.size, sb);
        sb.append(")");
        SQLiteStatement prepare = sQLiteConnection.prepare(sb.toString());
        Iterator it = keySet.iterator();
        int i2 = 1;
        while (true) {
            ArrayMap.KeyIterator keyIterator = (ArrayMap.KeyIterator) it;
            if (!keyIterator.hasNext()) {
                try {
                    break;
                } finally {
                    prepare.close();
                }
            } else {
                prepare.bindText(i2, (String) keyIterator.next());
                i2++;
            }
        }
        prepare.getClass();
        int columnIndexOf = UtilsKt.columnIndexOf(prepare, "work_spec_id");
        if (columnIndexOf == -1) {
            return;
        }
        while (prepare.step()) {
            List list = (List) arrayMap.get(prepare.getText(columnIndexOf));
            if (list != null) {
                byte[] blob = prepare.getBlob(0);
                Data data = Data.EMPTY;
                list.add(UuidKt.fromByteArray(blob));
            }
        }
    }

    public final void __fetchRelationshipWorkTagAsjavaLangString(SQLiteConnection sQLiteConnection, ArrayMap arrayMap) {
        ArrayMap.KeySet keySet = (ArrayMap.KeySet) arrayMap.keySet();
        ArrayMap arrayMap2 = ArrayMap.this;
        if (arrayMap2.isEmpty()) {
            return;
        }
        int i = 1;
        if (arrayMap.size > 999) {
            ResultKt.recursiveFetchArrayMap(arrayMap, new WorkSpecDao_Impl$$ExternalSyntheticLambda19(this, sQLiteConnection, i));
            return;
        }
        StringBuilder sb = new StringBuilder();
        sb.append("SELECT `tag`,`work_spec_id` FROM `WorkTag` WHERE `work_spec_id` IN (");
        Room.appendPlaceholders(arrayMap2.size, sb);
        sb.append(")");
        SQLiteStatement prepare = sQLiteConnection.prepare(sb.toString());
        Iterator it = keySet.iterator();
        int i2 = 1;
        while (true) {
            ArrayMap.KeyIterator keyIterator = (ArrayMap.KeyIterator) it;
            if (!keyIterator.hasNext()) {
                try {
                    break;
                } finally {
                    prepare.close();
                }
            } else {
                prepare.bindText(i2, (String) keyIterator.next());
                i2++;
            }
        }
        prepare.getClass();
        int columnIndexOf = UtilsKt.columnIndexOf(prepare, "work_spec_id");
        if (columnIndexOf == -1) {
            return;
        }
        while (prepare.step()) {
            List list = (List) arrayMap.get(prepare.getText(columnIndexOf));
            if (list != null) {
                list.add(prepare.getText(0));
            }
        }
    }

    public final WorkInfo.State getState(String str) {
        str.getClass();
        return (WorkInfo.State) ExceptionsKt.performBlocking(this.__db, true, false, new StringsKt__IndentKt$$ExternalSyntheticLambda0(14, str));
    }

    public final WorkSpec getWorkSpec(String str) {
        str.getClass();
        return (WorkSpec) ExceptionsKt.performBlocking(this.__db, true, false, new StringsKt__IndentKt$$ExternalSyntheticLambda0(13, str));
    }

    public final void markWorkSpecScheduled(String str, long j) {
        str.getClass();
        ((Number) ExceptionsKt.performBlocking(this.__db, false, true, new WorkSpecDao_Impl$$ExternalSyntheticLambda12(0, j, str))).intValue();
    }

    public final void resetWorkSpecNextScheduleTimeOverride(int i, String str) {
        str.getClass();
        ExceptionsKt.performBlocking(this.__db, false, true, new WorkSpecDao_Impl$$ExternalSyntheticLambda3(str, i, 2));
    }

    public final void setLastEnqueueTime(String str, long j) {
        str.getClass();
        ExceptionsKt.performBlocking(this.__db, false, true, new WorkSpecDao_Impl$$ExternalSyntheticLambda12(1, j, str));
    }

    public final void setState(WorkInfo.State state, String str) {
        state.getClass();
        str.getClass();
        ((Number) ExceptionsKt.performBlocking(this.__db, false, true, new GamesHubScreenKt$$ExternalSyntheticLambda8(2, state, str))).intValue();
    }

    public final void setStopReason(int i, String str) {
        str.getClass();
        ExceptionsKt.performBlocking(this.__db, false, true, new WorkSpecDao_Impl$$ExternalSyntheticLambda3(i, str, 0));
    }
}
