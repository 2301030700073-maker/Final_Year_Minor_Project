package org.schabi.newpipe.database.subscription;

import androidx.sqlite.SQLiteConnection;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final /* synthetic */ class SubscriptionDAO_Impl$$ExternalSyntheticLambda2 implements Function1 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ SubscriptionDAO_Impl f$0;
    public final /* synthetic */ SubscriptionEntity f$1;

    public /* synthetic */ SubscriptionDAO_Impl$$ExternalSyntheticLambda2(SubscriptionDAO_Impl subscriptionDAO_Impl, SubscriptionEntity subscriptionEntity, int i) {
        this.$r8$classId = i;
        this.f$0 = subscriptionDAO_Impl;
        this.f$1 = subscriptionEntity;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        int i = this.$r8$classId;
        SubscriptionEntity subscriptionEntity = this.f$1;
        SubscriptionDAO_Impl subscriptionDAO_Impl = this.f$0;
        SQLiteConnection sQLiteConnection = (SQLiteConnection) obj;
        switch (i) {
            case 0:
                sQLiteConnection.getClass();
                return Integer.valueOf(subscriptionDAO_Impl.__updateAdapterOfSubscriptionEntity.handle(sQLiteConnection, subscriptionEntity));
            case 1:
                sQLiteConnection.getClass();
                subscriptionDAO_Impl.__deleteAdapterOfSubscriptionEntity.handle(sQLiteConnection, subscriptionEntity);
                return Unit.INSTANCE;
            default:
                sQLiteConnection.getClass();
                return Long.valueOf(subscriptionDAO_Impl.__insertAdapterOfSubscriptionEntity.insertAndReturnId(sQLiteConnection, subscriptionEntity));
        }
    }
}
