package org.wikipedia.offline.db;

import androidx.sqlite.SQLiteConnection;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class OfflineObjectDao_Impl$$ExternalSyntheticLambda0 implements Function1 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ OfflineObjectDao_Impl f$0;
    public final /* synthetic */ OfflineObject f$1;

    public /* synthetic */ OfflineObjectDao_Impl$$ExternalSyntheticLambda0(OfflineObjectDao_Impl offlineObjectDao_Impl, OfflineObject offlineObject, int i) {
        this.$r8$classId = i;
        this.f$0 = offlineObjectDao_Impl;
        this.f$1 = offlineObject;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        OfflineObject offlineObject = this.f$1;
        OfflineObjectDao_Impl offlineObjectDao_Impl = this.f$0;
        SQLiteConnection sQLiteConnection = (SQLiteConnection) obj;
        switch (i) {
            case 0:
                sQLiteConnection.getClass();
                offlineObjectDao_Impl.__deleteAdapterOfOfflineObject.handle(sQLiteConnection, offlineObject);
                break;
            case 1:
                sQLiteConnection.getClass();
                offlineObjectDao_Impl.__updateAdapterOfOfflineObject.handle(sQLiteConnection, offlineObject);
                break;
            default:
                sQLiteConnection.getClass();
                offlineObjectDao_Impl.__insertAdapterOfOfflineObject.insert(sQLiteConnection, offlineObject);
                break;
        }
        return unit;
    }
}
