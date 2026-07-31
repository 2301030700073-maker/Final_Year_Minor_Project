package androidx.work.impl.model;

import androidx.sqlite.SQLiteConnection;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final /* synthetic */ class WorkSpecDao_Impl$$ExternalSyntheticLambda1 implements Function1 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ WorkSpecDao_Impl f$0;
    public final /* synthetic */ WorkSpec f$1;

    public /* synthetic */ WorkSpecDao_Impl$$ExternalSyntheticLambda1(WorkSpecDao_Impl workSpecDao_Impl, WorkSpec workSpec, int i) {
        this.$r8$classId = i;
        this.f$0 = workSpecDao_Impl;
        this.f$1 = workSpec;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        WorkSpec workSpec = this.f$1;
        WorkSpecDao_Impl workSpecDao_Impl = this.f$0;
        SQLiteConnection sQLiteConnection = (SQLiteConnection) obj;
        switch (i) {
            case 0:
                sQLiteConnection.getClass();
                workSpecDao_Impl.__insertAdapterOfWorkSpec.insert(sQLiteConnection, workSpec);
                break;
            default:
                sQLiteConnection.getClass();
                workSpecDao_Impl.__updateAdapterOfWorkSpec.handle(sQLiteConnection, workSpec);
                break;
        }
        return unit;
    }
}
