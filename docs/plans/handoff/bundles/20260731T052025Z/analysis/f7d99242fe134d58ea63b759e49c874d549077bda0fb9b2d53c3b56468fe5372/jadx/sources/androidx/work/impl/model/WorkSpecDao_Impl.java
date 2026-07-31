package androidx.work.impl.model;

import androidx.appcompat.app.ActionBar;
import androidx.collection.ArrayMap;
import androidx.compose.material3.IconKt$$ExternalSyntheticLambda1;
import androidx.compose.ui.Modifier;
import androidx.datastore.preferences.protobuf.Utf8;
import androidx.room.RoomDatabase;
import androidx.room.util.DBUtil;
import androidx.room.util.RelationUtil;
import androidx.sqlite.SQLiteConnection;
import androidx.sqlite.SQLiteStatement;
import androidx.work.Data;
import androidx.work.WorkInfo;
import androidx.work.impl.model.WorkTagDao_Impl;
import app.k9mail.legacy.di.DI$$ExternalSyntheticLambda0;
import java.util.Iterator;
import java.util.List;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
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
            RelationUtil.recursiveFetchArrayMap(arrayMap, new WorkSpecDao_Impl$$ExternalSyntheticLambda18(this, sQLiteConnection, i));
            return;
        }
        StringBuilder m = Modifier.CC.m("SELECT `progress`,`work_spec_id` FROM `WorkProgress` WHERE `work_spec_id` IN (");
        Utf8.SafeProcessor.appendPlaceholders(arrayMap2.size, m);
        m.append(")");
        SQLiteStatement prepare = sQLiteConnection.prepare(m.toString());
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
                prepare.bindText((String) keyIterator.next(), i2);
                i2++;
            }
        }
        prepare.getClass();
        int columnIndexOf = ActionBar.columnIndexOf(prepare, "work_spec_id");
        if (columnIndexOf == -1) {
            return;
        }
        while (prepare.step()) {
            List list = (List) arrayMap.get(prepare.getText(columnIndexOf));
            if (list != null) {
                byte[] blob = prepare.getBlob(0);
                Data data = Data.EMPTY;
                list.add(Data.Companion.fromByteArray(blob));
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
            RelationUtil.recursiveFetchArrayMap(arrayMap, new WorkSpecDao_Impl$$ExternalSyntheticLambda18(this, sQLiteConnection, i));
            return;
        }
        StringBuilder m = Modifier.CC.m("SELECT `tag`,`work_spec_id` FROM `WorkTag` WHERE `work_spec_id` IN (");
        Utf8.SafeProcessor.appendPlaceholders(arrayMap2.size, m);
        m.append(")");
        SQLiteStatement prepare = sQLiteConnection.prepare(m.toString());
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
                prepare.bindText((String) keyIterator.next(), i2);
                i2++;
            }
        }
        prepare.getClass();
        int columnIndexOf = ActionBar.columnIndexOf(prepare, "work_spec_id");
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

    public final void delete(String str) {
        str.getClass();
        DBUtil.performBlocking(this.__db, false, true, new IconKt$$ExternalSyntheticLambda1(str, 22));
    }

    public final WorkInfo.State getState(String str) {
        str.getClass();
        return (WorkInfo.State) DBUtil.performBlocking(this.__db, true, false, new IconKt$$ExternalSyntheticLambda1(str, 15));
    }

    public final WorkSpec getWorkSpec(String str) {
        str.getClass();
        return (WorkSpec) DBUtil.performBlocking(this.__db, true, false, new IconKt$$ExternalSyntheticLambda1(str, 14));
    }

    public final List getWorkSpecIdAndStatesForName(String str) {
        str.getClass();
        return (List) DBUtil.performBlocking(this.__db, true, false, new IconKt$$ExternalSyntheticLambda1(str, 23));
    }

    public final void markWorkSpecScheduled(long j, String str) {
        str.getClass();
        ((Number) DBUtil.performBlocking(this.__db, false, true, new WorkSpecDao_Impl$$ExternalSyntheticLambda12(0, j, str))).intValue();
    }

    public final void resetWorkSpecNextScheduleTimeOverride(String str, int i) {
        str.getClass();
        DBUtil.performBlocking(this.__db, false, true, new WorkSpecDao_Impl$$ExternalSyntheticLambda3(str, i, 2));
    }

    public final void setLastEnqueueTime(long j, String str) {
        str.getClass();
        DBUtil.performBlocking(this.__db, false, true, new WorkSpecDao_Impl$$ExternalSyntheticLambda12(1, j, str));
    }

    public final void setState(WorkInfo.State state, String str) {
        str.getClass();
        ((Number) DBUtil.performBlocking(this.__db, false, true, new DI$$ExternalSyntheticLambda0(6, state, str))).intValue();
    }

    public final void setStopReason(String str, int i) {
        str.getClass();
        DBUtil.performBlocking(this.__db, false, true, new WorkSpecDao_Impl$$ExternalSyntheticLambda3(str, i));
    }
}
