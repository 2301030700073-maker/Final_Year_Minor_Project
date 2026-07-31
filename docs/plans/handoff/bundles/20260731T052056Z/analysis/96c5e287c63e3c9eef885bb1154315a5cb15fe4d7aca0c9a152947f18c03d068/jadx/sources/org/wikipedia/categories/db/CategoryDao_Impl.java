package org.wikipedia.categories.db;

import androidx.paging.PagingDataPresenter$collectFrom$2;
import androidx.room.RoomDatabase;
import androidx.work.impl.model.WorkTagDao_Impl;
import java.util.List;
import kotlin.ExceptionsKt;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.SuspendLambda;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class CategoryDao_Impl {
    public final RoomDatabase __db;
    public final WorkTagDao_Impl.AnonymousClass1 __insertAdapterOfCategory = new WorkTagDao_Impl.AnonymousClass1(6);

    public CategoryDao_Impl(RoomDatabase roomDatabase) {
        this.__db = roomDatabase;
    }

    public final Object upsertAll(List list, SuspendLambda suspendLambda) {
        Object performInTransactionSuspending = ExceptionsKt.performInTransactionSuspending(this.__db, suspendLambda, new PagingDataPresenter$collectFrom$2(this, list, null, 5));
        return performInTransactionSuspending == CoroutineSingletons.COROUTINE_SUSPENDED ? performInTransactionSuspending : Unit.INSTANCE;
    }
}
