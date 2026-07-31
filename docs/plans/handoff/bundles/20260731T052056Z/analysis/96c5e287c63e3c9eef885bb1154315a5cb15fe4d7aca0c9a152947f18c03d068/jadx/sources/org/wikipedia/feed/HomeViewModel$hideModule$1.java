package org.wikipedia.feed;

import androidx.paging.SimpleChannelFlowKt$simpleChannelFlow$1;
import androidx.work.impl.model.WorkSpecDao_Impl$$ExternalSyntheticLambda3;
import kotlin.ExceptionsKt;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import okhttp3.Cookie;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.wikipedia.Constants;
import org.wikipedia.database.AppDatabase;
import org.wikipedia.database.AppDatabase$Companion$MIGRATION_19_20$1;
import org.wikipedia.dataclient.Service;
import org.wikipedia.dataclient.ServiceFactory;
import org.wikipedia.dataclient.mwapi.MwQueryResponse;
import org.wikipedia.dataclient.mwapi.MwQueryResult;
import org.wikipedia.dataclient.wikidata.Entities;
import org.wikipedia.games.WikiGames;
import org.wikipedia.games.db.DailyGameHistoryDao_Impl;
import org.wikipedia.settings.SettingsRepository;
import org.wikipedia.settings.SettingsRepository$addHiddenCard$2;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class HomeViewModel$hideModule$1 extends SuspendLambda implements Function2 {
    public final /* synthetic */ String $moduleKey;
    public final /* synthetic */ int $r8$classId;
    public int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ HomeViewModel$hideModule$1(String str, int i, Continuation continuation) {
        super(2, continuation);
        this.$r8$classId = i;
        this.$moduleKey = str;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        int i = this.$r8$classId;
        String str = this.$moduleKey;
        switch (i) {
            case 0:
                return new HomeViewModel$hideModule$1(str, 0, continuation);
            case 1:
                return new HomeViewModel$hideModule$1(str, 1, continuation);
            case 2:
                return new HomeViewModel$hideModule$1(str, 2, continuation);
            case 3:
                return new HomeViewModel$hideModule$1(str, 3, continuation);
            case 4:
                return new HomeViewModel$hideModule$1(str, 4, continuation);
            case 5:
                return new HomeViewModel$hideModule$1(str, 5, continuation);
            case 6:
                return new HomeViewModel$hideModule$1(str, 6, continuation);
            default:
                return new HomeViewModel$hideModule$1(str, 7, continuation);
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
        return ((HomeViewModel$hideModule$1) create(coroutineScope, continuation)).invokeSuspend(unit);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        int i2 = 3;
        String str = this.$moduleKey;
        switch (i) {
            case 0:
                CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
                int i3 = this.label;
                if (i3 != 0) {
                    if (i3 == 1) {
                        ResultKt.throwOnFailure(obj);
                        return unit;
                    }
                    _UtilJvmKt$$ExternalSyntheticLambda0.m$1("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.throwOnFailure(obj);
                SettingsRepository settingsRepository = SettingsRepository.INSTANCE;
                this.label = 1;
                Object updateData = SettingsRepository.dataStore.updateData(new SimpleChannelFlowKt$simpleChannelFlow$1(new SettingsRepository$addHiddenCard$2(str, 1, null), (Continuation) null, 3), this);
                if (updateData != coroutineSingletons) {
                    updateData = unit;
                }
                return updateData == coroutineSingletons ? coroutineSingletons : unit;
            case 1:
                CoroutineSingletons coroutineSingletons2 = CoroutineSingletons.COROUTINE_SUSPENDED;
                int i4 = this.label;
                if (i4 != 0) {
                    if (i4 == 1) {
                        ResultKt.throwOnFailure(obj);
                        return unit;
                    }
                    _UtilJvmKt$$ExternalSyntheticLambda0.m$1("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.throwOnFailure(obj);
                SettingsRepository settingsRepository2 = SettingsRepository.INSTANCE;
                this.label = 1;
                Object updateData2 = SettingsRepository.dataStore.updateData(new SimpleChannelFlowKt$simpleChannelFlow$1(new SettingsRepository$addHiddenCard$2(str, 3, null), (Continuation) null, 3), this);
                if (updateData2 != coroutineSingletons2) {
                    updateData2 = unit;
                }
                return updateData2 == coroutineSingletons2 ? coroutineSingletons2 : unit;
            case 2:
                CoroutineSingletons coroutineSingletons3 = CoroutineSingletons.COROUTINE_SUSPENDED;
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
                AppDatabase$Companion$MIGRATION_19_20$1 appDatabase$Companion$MIGRATION_19_20$1 = AppDatabase.MIGRATION_19_20;
                DailyGameHistoryDao_Impl dailyGameHistoryDao = Cookie.Companion.getInstance().dailyGameHistoryDao();
                int ordinal = WikiGames.WHICH_CAME_FIRST.ordinal();
                this.label = 1;
                Object performSuspending = ExceptionsKt.performSuspending(dailyGameHistoryDao.__db, true, false, new WorkSpecDao_Impl$$ExternalSyntheticLambda3(ordinal, str, 4), this);
                return performSuspending == coroutineSingletons3 ? coroutineSingletons3 : performSuspending;
            case 3:
                CoroutineSingletons coroutineSingletons4 = CoroutineSingletons.COROUTINE_SUSPENDED;
                int i6 = this.label;
                if (i6 != 0) {
                    if (i6 == 1) {
                        ResultKt.throwOnFailure(obj);
                        return obj;
                    }
                    _UtilJvmKt$$ExternalSyntheticLambda0.m$1("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.throwOnFailure(obj);
                AppDatabase$Companion$MIGRATION_19_20$1 appDatabase$Companion$MIGRATION_19_20$12 = AppDatabase.MIGRATION_19_20;
                DailyGameHistoryDao_Impl dailyGameHistoryDao2 = Cookie.Companion.getInstance().dailyGameHistoryDao();
                int ordinal2 = WikiGames.WHICH_CAME_FIRST.ordinal();
                this.label = 1;
                dailyGameHistoryDao2.getClass();
                Object bestStreak$suspendImpl = Service.CC.getBestStreak$suspendImpl(dailyGameHistoryDao2, ordinal2, str, this);
                return bestStreak$suspendImpl == coroutineSingletons4 ? coroutineSingletons4 : bestStreak$suspendImpl;
            case 4:
                CoroutineSingletons coroutineSingletons5 = CoroutineSingletons.COROUTINE_SUSPENDED;
                int i7 = this.label;
                if (i7 != 0) {
                    if (i7 == 1) {
                        ResultKt.throwOnFailure(obj);
                        return obj;
                    }
                    _UtilJvmKt$$ExternalSyntheticLambda0.m$1("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.throwOnFailure(obj);
                AppDatabase$Companion$MIGRATION_19_20$1 appDatabase$Companion$MIGRATION_19_20$13 = AppDatabase.MIGRATION_19_20;
                DailyGameHistoryDao_Impl dailyGameHistoryDao3 = Cookie.Companion.getInstance().dailyGameHistoryDao();
                int ordinal3 = WikiGames.WHICH_CAME_FIRST.ordinal();
                this.label = 1;
                dailyGameHistoryDao3.getClass();
                Object currentStreak$suspendImpl = Service.CC.getCurrentStreak$suspendImpl(dailyGameHistoryDao3, ordinal3, str, this);
                return currentStreak$suspendImpl == coroutineSingletons5 ? coroutineSingletons5 : currentStreak$suspendImpl;
            case 5:
                CoroutineSingletons coroutineSingletons6 = CoroutineSingletons.COROUTINE_SUSPENDED;
                int i8 = this.label;
                if (i8 != 0) {
                    if (i8 == 1) {
                        ResultKt.throwOnFailure(obj);
                        return obj;
                    }
                    _UtilJvmKt$$ExternalSyntheticLambda0.m$1("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.throwOnFailure(obj);
                AppDatabase$Companion$MIGRATION_19_20$1 appDatabase$Companion$MIGRATION_19_20$14 = AppDatabase.MIGRATION_19_20;
                DailyGameHistoryDao_Impl dailyGameHistoryDao4 = Cookie.Companion.getInstance().dailyGameHistoryDao();
                int ordinal4 = WikiGames.WHICH_CAME_FIRST.ordinal();
                this.label = 1;
                Object performSuspending2 = ExceptionsKt.performSuspending(dailyGameHistoryDao4.__db, true, false, new WorkSpecDao_Impl$$ExternalSyntheticLambda3(ordinal4, str, i2), this);
                return performSuspending2 == coroutineSingletons6 ? coroutineSingletons6 : performSuspending2;
            case 6:
                CoroutineSingletons coroutineSingletons7 = CoroutineSingletons.COROUTINE_SUSPENDED;
                int i9 = this.label;
                if (i9 == 0) {
                    ResultKt.throwOnFailure(obj);
                    ServiceFactory serviceFactory = ServiceFactory.INSTANCE;
                    Service service = ServiceFactory.get(Constants.commonsWikiSite);
                    this.label = 1;
                    obj = service.getEntitiesByTitleSuspend(str, "commonswiki", this);
                    if (obj == coroutineSingletons7) {
                        return coroutineSingletons7;
                    }
                } else {
                    if (i9 != 1) {
                        _UtilJvmKt$$ExternalSyntheticLambda0.m$1("call to 'resume' before 'invoke' with coroutine");
                        return null;
                    }
                    ResultKt.throwOnFailure(obj);
                }
                return (Entities.Entity) CollectionsKt.firstOrNull(((Entities) obj).entities.values());
            default:
                CoroutineSingletons coroutineSingletons8 = CoroutineSingletons.COROUTINE_SUSPENDED;
                int i10 = this.label;
                if (i10 == 0) {
                    ResultKt.throwOnFailure(obj);
                    ServiceFactory serviceFactory2 = ServiceFactory.INSTANCE;
                    Service service2 = ServiceFactory.get(Constants.commonsWikiSite);
                    this.label = 1;
                    obj = service2.getImageInfo(str, "commonswiki", this);
                    if (obj == coroutineSingletons8) {
                        return coroutineSingletons8;
                    }
                } else {
                    if (i10 != 1) {
                        _UtilJvmKt$$ExternalSyntheticLambda0.m$1("call to 'resume' before 'invoke' with coroutine");
                        return null;
                    }
                    ResultKt.throwOnFailure(obj);
                }
                MwQueryResult mwQueryResult = ((MwQueryResponse) obj).query;
                if (mwQueryResult != null) {
                    return mwQueryResult.firstPage();
                }
                return null;
        }
    }
}
