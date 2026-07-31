package androidx.work.impl.model;

import androidx.appcompat.app.ActionBar;
import androidx.sqlite.SQLiteConnection;
import androidx.sqlite.SQLiteStatement;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class WorkSpecDao_Impl$$ExternalSyntheticLambda3 implements Function1 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ int f$1;
    public final /* synthetic */ String f$2;

    public /* synthetic */ WorkSpecDao_Impl$$ExternalSyntheticLambda3(String str, int i) {
        this.$r8$classId = 0;
        this.f$1 = i;
        this.f$2 = str;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        SQLiteStatement prepare;
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        int i2 = this.f$1;
        String str = this.f$2;
        SQLiteConnection sQLiteConnection = (SQLiteConnection) obj;
        switch (i) {
            case 0:
                sQLiteConnection.getClass();
                prepare = sQLiteConnection.prepare("UPDATE workspec SET stop_reason=? WHERE id=?");
                try {
                    prepare.bindLong(1, i2);
                    prepare.bindText(str, 2);
                    prepare.step();
                    return unit;
                } finally {
                }
            case 1:
                sQLiteConnection.getClass();
                prepare = sQLiteConnection.prepare("SELECT * FROM SystemIdInfo WHERE work_spec_id=? AND generation=?");
                try {
                    prepare.bindText(str, 1);
                    prepare.bindLong(2, i2);
                    return prepare.step() ? new SystemIdInfo(prepare.getText(ActionBar.getColumnIndexOrThrow(prepare, "work_spec_id")), (int) prepare.getLong(ActionBar.getColumnIndexOrThrow(prepare, "generation")), (int) prepare.getLong(ActionBar.getColumnIndexOrThrow(prepare, "system_id"))) : null;
                } finally {
                }
            default:
                sQLiteConnection.getClass();
                prepare = sQLiteConnection.prepare("UPDATE workspec SET next_schedule_time_override=9223372036854775807 WHERE (id=? AND next_schedule_time_override_generation=?)");
                try {
                    prepare.bindText(str, 1);
                    prepare.bindLong(2, i2);
                    prepare.step();
                    return unit;
                } finally {
                }
        }
    }

    public /* synthetic */ WorkSpecDao_Impl$$ExternalSyntheticLambda3(String str, int i, int i2) {
        this.$r8$classId = i2;
        this.f$2 = str;
        this.f$1 = i;
    }
}
