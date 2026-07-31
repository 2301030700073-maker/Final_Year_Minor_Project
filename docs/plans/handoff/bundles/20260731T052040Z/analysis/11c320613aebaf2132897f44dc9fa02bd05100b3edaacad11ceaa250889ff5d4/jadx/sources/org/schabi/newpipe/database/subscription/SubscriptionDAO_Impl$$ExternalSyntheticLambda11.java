package org.schabi.newpipe.database.subscription;

import androidx.room.RoomDatabase;
import androidx.room.util.DBUtil;
import androidx.sqlite.SQLiteConnection;
import androidx.work.impl.model.WorkSpecDao_Impl$$ExternalSyntheticLambda3;
import java.util.ArrayList;
import java.util.List;
import kotlin.jvm.functions.Function1;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;
import org.jsoup.Jsoup;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final /* synthetic */ class SubscriptionDAO_Impl$$ExternalSyntheticLambda11 implements Function1 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ SubscriptionDAO_Impl f$0;
    public final /* synthetic */ ArrayList f$1;

    public /* synthetic */ SubscriptionDAO_Impl$$ExternalSyntheticLambda11(SubscriptionDAO_Impl subscriptionDAO_Impl, ArrayList arrayList, int i) {
        this.$r8$classId = i;
        this.f$0 = subscriptionDAO_Impl;
        this.f$1 = arrayList;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        int i = this.$r8$classId;
        ArrayList arrayList = this.f$1;
        SubscriptionDAO_Impl subscriptionDAO_Impl = this.f$0;
        SQLiteConnection sQLiteConnection = (SQLiteConnection) obj;
        switch (i) {
            case 0:
                sQLiteConnection.getClass();
                subscriptionDAO_Impl.getClass();
                RoomDatabase roomDatabase = subscriptionDAO_Impl.__db;
                int i2 = 0;
                for (Object obj2 : (List) DBUtil.performBlocking(roomDatabase, false, true, new SubscriptionDAO_Impl$$ExternalSyntheticLambda11(subscriptionDAO_Impl, arrayList, 1))) {
                    int i3 = i2 + 1;
                    if (i2 < 0) {
                        Jsoup.throwIndexOverflow();
                        throw null;
                    }
                    long longValue = ((Number) obj2).longValue();
                    SubscriptionEntity subscriptionEntity = (SubscriptionEntity) arrayList.get(i2);
                    if (longValue != -1) {
                        subscriptionEntity.uid = longValue;
                    } else {
                        int i4 = subscriptionEntity.serviceId;
                        String str = subscriptionEntity.url;
                        str.getClass();
                        Long l = (Long) DBUtil.performBlocking(roomDatabase, true, false, new WorkSpecDao_Impl$$ExternalSyntheticLambda3(str, i4, 8));
                        if (l == null) {
                            _UtilJvmKt$$ExternalSyntheticLambda1.m$2("Subscription cannot be null just after insertion.");
                            return null;
                        }
                        subscriptionEntity.uid = l.longValue();
                        subscriptionDAO_Impl.update(subscriptionEntity);
                    }
                    i2 = i3;
                }
                return arrayList;
            default:
                sQLiteConnection.getClass();
                return subscriptionDAO_Impl.__insertAdapterOfSubscriptionEntity_1.insertAndReturnIdsList(sQLiteConnection, arrayList);
        }
    }
}
