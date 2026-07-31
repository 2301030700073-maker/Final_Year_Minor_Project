package androidx.work.impl.model;

import androidx.collection.ArrayMap;
import androidx.sqlite.SQLiteConnection;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class WorkSpecDao_Impl$$ExternalSyntheticLambda19 implements Function1 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ WorkSpecDao_Impl f$0;
    public final /* synthetic */ SQLiteConnection f$1;

    public /* synthetic */ WorkSpecDao_Impl$$ExternalSyntheticLambda19(WorkSpecDao_Impl workSpecDao_Impl, SQLiteConnection sQLiteConnection, int i) {
        this.$r8$classId = i;
        this.f$0 = workSpecDao_Impl;
        this.f$1 = sQLiteConnection;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        SQLiteConnection sQLiteConnection = this.f$1;
        WorkSpecDao_Impl workSpecDao_Impl = this.f$0;
        ArrayMap arrayMap = (ArrayMap) obj;
        switch (i) {
            case 0:
                arrayMap.getClass();
                workSpecDao_Impl.__fetchRelationshipWorkProgressAsandroidxWorkData(sQLiteConnection, arrayMap);
                break;
            default:
                arrayMap.getClass();
                workSpecDao_Impl.__fetchRelationshipWorkTagAsjavaLangString(sQLiteConnection, arrayMap);
                break;
        }
        return unit;
    }
}
