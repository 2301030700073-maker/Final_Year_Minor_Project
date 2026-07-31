package org.wikipedia.yearinreview;

import java.util.ArrayList;
import java.util.Iterator;
import kotlin.ExceptionsKt;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__IteratorsJVMKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.text.StringsKt;
import kotlinx.coroutines.CoroutineScope;
import okhttp3.Cookie;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.wikipedia.database.AppDatabase;
import org.wikipedia.database.AppDatabase$Companion$MIGRATION_19_20$1;
import org.wikipedia.history.db.HistoryEntryDao_Impl;
import org.wikipedia.history.db.HistoryEntryDao_Impl$$ExternalSyntheticLambda1;
import org.wikipedia.history.db.HistoryEntryWithImageDao_Impl;
import org.wikipedia.readinglist.db.ReadingListPageDao_Impl;
import org.wikipedia.util.StringUtil;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class YearInReviewViewModel$fetchPersonalizedData$1$mostReadingMonth$1 extends SuspendLambda implements Function2 {
    public final /* synthetic */ long $dataEndMillis;
    public final /* synthetic */ long $dataStartMillis;
    public final /* synthetic */ int $r8$classId;
    public int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ YearInReviewViewModel$fetchPersonalizedData$1$mostReadingMonth$1(long j, long j2, Continuation continuation, int i) {
        super(2, continuation);
        this.$r8$classId = i;
        this.$dataStartMillis = j;
        this.$dataEndMillis = j2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        switch (this.$r8$classId) {
            case 0:
                return new YearInReviewViewModel$fetchPersonalizedData$1$mostReadingMonth$1(this.$dataStartMillis, this.$dataEndMillis, continuation, 0);
            case 1:
                return new YearInReviewViewModel$fetchPersonalizedData$1$mostReadingMonth$1(this.$dataStartMillis, this.$dataEndMillis, continuation, 1);
            case 2:
                return new YearInReviewViewModel$fetchPersonalizedData$1$mostReadingMonth$1(this.$dataStartMillis, this.$dataEndMillis, continuation, 2);
            case 3:
                return new YearInReviewViewModel$fetchPersonalizedData$1$mostReadingMonth$1(this.$dataStartMillis, this.$dataEndMillis, continuation, 3);
            case 4:
                return new YearInReviewViewModel$fetchPersonalizedData$1$mostReadingMonth$1(this.$dataStartMillis, this.$dataEndMillis, continuation, 4);
            case 5:
                return new YearInReviewViewModel$fetchPersonalizedData$1$mostReadingMonth$1(this.$dataStartMillis, this.$dataEndMillis, continuation, 5);
            case 6:
                return new YearInReviewViewModel$fetchPersonalizedData$1$mostReadingMonth$1(this.$dataStartMillis, this.$dataEndMillis, continuation, 6);
            default:
                return new YearInReviewViewModel$fetchPersonalizedData$1$mostReadingMonth$1(this.$dataStartMillis, this.$dataEndMillis, continuation, 7);
        }
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        CoroutineScope coroutineScope = (CoroutineScope) obj;
        Continuation continuation = (Continuation) obj2;
        switch (i) {
        }
        return ((YearInReviewViewModel$fetchPersonalizedData$1$mostReadingMonth$1) create(coroutineScope, continuation)).invokeSuspend(unit);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        switch (this.$r8$classId) {
            case 0:
                CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
                int i = this.label;
                if (i != 0) {
                    if (i == 1) {
                        ResultKt.throwOnFailure(obj);
                        return obj;
                    }
                    _UtilJvmKt$$ExternalSyntheticLambda0.m$1("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.throwOnFailure(obj);
                AppDatabase$Companion$MIGRATION_19_20$1 appDatabase$Companion$MIGRATION_19_20$1 = AppDatabase.MIGRATION_19_20;
                HistoryEntryDao_Impl historyEntryDao = Cookie.Companion.getInstance().historyEntryDao();
                this.label = 1;
                Object performSuspending = ExceptionsKt.performSuspending(historyEntryDao.__db, true, false, new HistoryEntryDao_Impl$$ExternalSyntheticLambda1(3, this.$dataStartMillis, this.$dataEndMillis), this);
                return performSuspending == coroutineSingletons ? coroutineSingletons : performSuspending;
            case 1:
                CoroutineSingletons coroutineSingletons2 = CoroutineSingletons.COROUTINE_SUSPENDED;
                int i2 = this.label;
                if (i2 != 0) {
                    if (i2 == 1) {
                        ResultKt.throwOnFailure(obj);
                        return obj;
                    }
                    _UtilJvmKt$$ExternalSyntheticLambda0.m$1("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.throwOnFailure(obj);
                AppDatabase$Companion$MIGRATION_19_20$1 appDatabase$Companion$MIGRATION_19_20$12 = AppDatabase.MIGRATION_19_20;
                HistoryEntryDao_Impl historyEntryDao2 = Cookie.Companion.getInstance().historyEntryDao();
                this.label = 1;
                Object performSuspending2 = ExceptionsKt.performSuspending(historyEntryDao2.__db, true, false, new HistoryEntryDao_Impl$$ExternalSyntheticLambda1(1, this.$dataStartMillis, this.$dataEndMillis), this);
                return performSuspending2 == coroutineSingletons2 ? coroutineSingletons2 : performSuspending2;
            case 2:
                CoroutineSingletons coroutineSingletons3 = CoroutineSingletons.COROUTINE_SUSPENDED;
                int i3 = this.label;
                if (i3 != 0) {
                    if (i3 == 1) {
                        ResultKt.throwOnFailure(obj);
                        return obj;
                    }
                    _UtilJvmKt$$ExternalSyntheticLambda0.m$1("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.throwOnFailure(obj);
                AppDatabase$Companion$MIGRATION_19_20$1 appDatabase$Companion$MIGRATION_19_20$13 = AppDatabase.MIGRATION_19_20;
                HistoryEntryDao_Impl historyEntryDao3 = Cookie.Companion.getInstance().historyEntryDao();
                this.label = 1;
                Object performSuspending3 = ExceptionsKt.performSuspending(historyEntryDao3.__db, true, false, new HistoryEntryDao_Impl$$ExternalSyntheticLambda1(2, this.$dataStartMillis, this.$dataEndMillis), this);
                return performSuspending3 == coroutineSingletons3 ? coroutineSingletons3 : performSuspending3;
            case 3:
                CoroutineSingletons coroutineSingletons4 = CoroutineSingletons.COROUTINE_SUSPENDED;
                int i4 = this.label;
                if (i4 == 0) {
                    ResultKt.throwOnFailure(obj);
                    AppDatabase$Companion$MIGRATION_19_20$1 appDatabase$Companion$MIGRATION_19_20$14 = AppDatabase.MIGRATION_19_20;
                    ReadingListPageDao_Impl readingListPageDao = Cookie.Companion.getInstance().readingListPageDao();
                    this.label = 1;
                    obj = ExceptionsKt.performSuspending(readingListPageDao.__db, true, false, new HistoryEntryDao_Impl$$ExternalSyntheticLambda1(8, this.$dataStartMillis, this.$dataEndMillis), this);
                    if (obj == coroutineSingletons4) {
                        return coroutineSingletons4;
                    }
                } else {
                    if (i4 != 1) {
                        _UtilJvmKt$$ExternalSyntheticLambda0.m$1("call to 'resume' before 'invoke' with coroutine");
                        return null;
                    }
                    ResultKt.throwOnFailure(obj);
                }
                Iterable<String> iterable = (Iterable) obj;
                ArrayList arrayList = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(iterable, 10));
                for (String str : iterable) {
                    StringUtil stringUtil = StringUtil.INSTANCE;
                    arrayList.add(StringUtil.fromHtml(str).toString());
                }
                ArrayList arrayList2 = new ArrayList();
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    Object next = it.next();
                    if (!StringsKt.isBlank((String) next)) {
                        arrayList2.add(next);
                    }
                }
                return arrayList2;
            case 4:
                CoroutineSingletons coroutineSingletons5 = CoroutineSingletons.COROUTINE_SUSPENDED;
                int i5 = this.label;
                if (i5 != 0) {
                    if (i5 == 1) {
                        ResultKt.throwOnFailure(obj);
                        return obj;
                    }
                    _UtilJvmKt$$ExternalSyntheticLambda0.m$1("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.throwOnFailure(obj);
                AppDatabase$Companion$MIGRATION_19_20$1 appDatabase$Companion$MIGRATION_19_20$15 = AppDatabase.MIGRATION_19_20;
                HistoryEntryDao_Impl historyEntryDao4 = Cookie.Companion.getInstance().historyEntryDao();
                this.label = 1;
                Object performSuspending4 = ExceptionsKt.performSuspending(historyEntryDao4.__db, true, false, new HistoryEntryDao_Impl$$ExternalSyntheticLambda1(4, this.$dataStartMillis, this.$dataEndMillis), this);
                return performSuspending4 == coroutineSingletons5 ? coroutineSingletons5 : performSuspending4;
            case 5:
                CoroutineSingletons coroutineSingletons6 = CoroutineSingletons.COROUTINE_SUSPENDED;
                int i6 = this.label;
                if (i6 == 0) {
                    ResultKt.throwOnFailure(obj);
                    AppDatabase$Companion$MIGRATION_19_20$1 appDatabase$Companion$MIGRATION_19_20$16 = AppDatabase.MIGRATION_19_20;
                    HistoryEntryDao_Impl historyEntryDao5 = Cookie.Companion.getInstance().historyEntryDao();
                    this.label = 1;
                    obj = ExceptionsKt.performSuspending(historyEntryDao5.__db, true, false, new HistoryEntryDao_Impl$$ExternalSyntheticLambda1(0, this.$dataStartMillis, this.$dataEndMillis), this);
                    if (obj == coroutineSingletons6) {
                        return coroutineSingletons6;
                    }
                } else {
                    if (i6 != 1) {
                        _UtilJvmKt$$ExternalSyntheticLambda0.m$1("call to 'resume' before 'invoke' with coroutine");
                        return null;
                    }
                    ResultKt.throwOnFailure(obj);
                }
                Iterable<String> iterable2 = (Iterable) obj;
                ArrayList arrayList3 = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(iterable2, 10));
                for (String str2 : iterable2) {
                    StringUtil stringUtil2 = StringUtil.INSTANCE;
                    arrayList3.add(StringUtil.fromHtml(str2).toString());
                }
                ArrayList arrayList4 = new ArrayList();
                Iterator it2 = arrayList3.iterator();
                while (it2.hasNext()) {
                    Object next2 = it2.next();
                    if (!StringsKt.isBlank((String) next2)) {
                        arrayList4.add(next2);
                    }
                }
                return arrayList4;
            case 6:
                CoroutineSingletons coroutineSingletons7 = CoroutineSingletons.COROUTINE_SUSPENDED;
                int i7 = this.label;
                if (i7 == 0) {
                    ResultKt.throwOnFailure(obj);
                    AppDatabase$Companion$MIGRATION_19_20$1 appDatabase$Companion$MIGRATION_19_20$17 = AppDatabase.MIGRATION_19_20;
                    HistoryEntryWithImageDao_Impl historyEntryWithImageDao = Cookie.Companion.getInstance().historyEntryWithImageDao();
                    this.label = 1;
                    obj = ExceptionsKt.performSuspending(historyEntryWithImageDao.__db, true, false, new HistoryEntryDao_Impl$$ExternalSyntheticLambda1(5, this.$dataStartMillis, this.$dataEndMillis), this);
                    if (obj == coroutineSingletons7) {
                        return coroutineSingletons7;
                    }
                } else {
                    if (i7 != 1) {
                        _UtilJvmKt$$ExternalSyntheticLambda0.m$1("call to 'resume' before 'invoke' with coroutine");
                        return null;
                    }
                    ResultKt.throwOnFailure(obj);
                }
                return new Long(((Number) obj).longValue() / 60);
            default:
                CoroutineSingletons coroutineSingletons8 = CoroutineSingletons.COROUTINE_SUSPENDED;
                int i8 = this.label;
                if (i8 == 0) {
                    ResultKt.throwOnFailure(obj);
                    AppDatabase$Companion$MIGRATION_19_20$1 appDatabase$Companion$MIGRATION_19_20$18 = AppDatabase.MIGRATION_19_20;
                    ReadingListPageDao_Impl readingListPageDao2 = Cookie.Companion.getInstance().readingListPageDao();
                    this.label = 1;
                    obj = ExceptionsKt.performSuspending(readingListPageDao2.__db, true, false, new HistoryEntryDao_Impl$$ExternalSyntheticLambda1(7, this.$dataStartMillis, this.$dataEndMillis), this);
                    if (obj == coroutineSingletons8) {
                        return coroutineSingletons8;
                    }
                } else {
                    if (i8 != 1) {
                        _UtilJvmKt$$ExternalSyntheticLambda0.m$1("call to 'resume' before 'invoke' with coroutine");
                        return null;
                    }
                    ResultKt.throwOnFailure(obj);
                }
                Integer num = (Integer) obj;
                return new Integer(num != null ? num.intValue() : 0);
        }
    }
}
