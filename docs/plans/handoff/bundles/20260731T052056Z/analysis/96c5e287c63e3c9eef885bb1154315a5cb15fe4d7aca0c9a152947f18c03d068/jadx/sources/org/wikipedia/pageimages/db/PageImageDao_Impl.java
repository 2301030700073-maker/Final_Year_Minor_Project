package org.wikipedia.pageimages.db;

import androidx.room.RoomDatabase;
import androidx.work.impl.model.WorkTagDao_Impl;
import kotlin.ExceptionsKt;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import org.wikipedia.games.GamesHubScreenKt$$ExternalSyntheticLambda8;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class PageImageDao_Impl {
    public final RoomDatabase __db;
    public final WorkTagDao_Impl.AnonymousClass1 __insertAdapterOfPageImage = new WorkTagDao_Impl.AnonymousClass1(14);

    public PageImageDao_Impl(RoomDatabase roomDatabase) {
        this.__db = roomDatabase;
    }

    public final Object insertPageImage(PageImage pageImage, ContinuationImpl continuationImpl) {
        Object performSuspending = ExceptionsKt.performSuspending(this.__db, false, true, new GamesHubScreenKt$$ExternalSyntheticLambda8(25, this, pageImage), continuationImpl);
        return performSuspending == CoroutineSingletons.COROUTINE_SUSPENDED ? performSuspending : Unit.INSTANCE;
    }
}
