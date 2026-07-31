package androidx.paging;

import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.location.Location;
import androidx.compose.foundation.BorderKt$$ExternalSyntheticLambda1;
import androidx.compose.runtime.ProduceStateScopeImpl;
import androidx.compose.runtime.Updater;
import androidx.glance.appwidget.AppWidgetId;
import androidx.glance.appwidget.AppWidgetSession;
import androidx.glance.session.SessionWorker;
import androidx.paging.PageFetcher;
import androidx.paging.compose.LazyPagingItems;
import androidx.preference.PreferenceManager;
import androidx.room.RoomDatabase;
import androidx.room.TriggerBasedInvalidationTracker;
import androidx.room.coroutines.PassthroughConnection;
import androidx.room.coroutines.PooledConnectionImpl;
import androidx.work.Data$$ExternalSyntheticLambda0;
import androidx.work.OperationKt;
import androidx.work.impl.constraints.NetworkRequestConstraintController;
import androidx.work.impl.constraints.controllers.BaseConstraintController;
import coil3.network.NetworkFetcher;
import java.util.List;
import kotlin.Function;
import kotlin.Pair;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.AdaptedFunctionReference;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.FunctionReferenceImpl;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref$ObjectRef;
import kotlinx.coroutines.AwaitKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.channels.BufferedChannel;
import kotlinx.coroutines.channels.ProducerCoroutine;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.flow.ReadonlyStateFlow;
import kotlinx.coroutines.flow.StateFlowImpl;
import kotlinx.coroutines.flow.internal.ChannelFlow;
import kotlinx.coroutines.flow.internal.ChannelFlowOperator;
import kotlinx.coroutines.flow.internal.SendingCollector;
import kotlinx.coroutines.flow.internal.SubscriptionCountStateFlow;
import okhttp3.Request;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.jsoup.Jsoup;
import org.wikimedia.testkitchen.config.DestinationEventService;
import org.wikipedia.R;
import org.wikipedia.WikipediaApp;
import org.wikipedia.categories.CategoryActivity;
import org.wikipedia.search.SearchResultsViewModel;
import org.wikipedia.settings.AboutActivityKt$$ExternalSyntheticLambda11;
import org.wikipedia.settings.Prefs;
import org.wikipedia.widgets.readingchallenge.ReadingChallengeWidgetReceiver;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class PageFetcher$flow$1 extends SuspendLambda implements Function2 {
    public final /* synthetic */ int $r8$classId;
    public /* synthetic */ Object L$0;
    public int label;
    public final /* synthetic */ Object this$0;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    /* renamed from: androidx.paging.PageFetcher$flow$1$1, reason: invalid class name */
    public final class AnonymousClass1 extends SuspendLambda implements Function2 {
        public final /* synthetic */ int $r8$classId;
        public /* synthetic */ Object L$0;
        public int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public /* synthetic */ AnonymousClass1(int i, int i2, Continuation continuation) {
            super(i, continuation);
            this.$r8$classId = i2;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            switch (this.$r8$classId) {
                case 0:
                    AnonymousClass1 anonymousClass1 = new AnonymousClass1(2, 0, continuation);
                    anonymousClass1.L$0 = obj;
                    return anonymousClass1;
                case 1:
                    AnonymousClass1 anonymousClass12 = new AnonymousClass1(2, 1, continuation);
                    anonymousClass12.L$0 = obj;
                    return anonymousClass12;
                case 2:
                    AnonymousClass1 anonymousClass13 = new AnonymousClass1(2, 2, continuation);
                    anonymousClass13.L$0 = obj;
                    return anonymousClass13;
                case 3:
                    AnonymousClass1 anonymousClass14 = new AnonymousClass1(2, 3, continuation);
                    anonymousClass14.L$0 = obj;
                    return anonymousClass14;
                default:
                    AnonymousClass1 anonymousClass15 = new AnonymousClass1(2, 4, continuation);
                    anonymousClass15.L$0 = obj;
                    return anonymousClass15;
            }
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Object obj, Object obj2) {
            int i = this.$r8$classId;
            Unit unit = Unit.INSTANCE;
            switch (i) {
            }
            return ((AnonymousClass1) create((ProducerCoroutine) obj, (Continuation) obj2)).invokeSuspend(unit);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            FlowCollector flowCollector;
            RemoteMediator$InitializeAction remoteMediator$InitializeAction;
            CoroutineScope coroutineScope;
            int i = this.$r8$classId;
            Unit unit = Unit.INSTANCE;
            switch (i) {
                case 0:
                    CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
                    int i2 = this.label;
                    if (i2 == 0) {
                        ResultKt.throwOnFailure(obj);
                        flowCollector = (FlowCollector) this.L$0;
                        remoteMediator$InitializeAction = null;
                    } else {
                        if (i2 != 1) {
                            if (i2 == 2) {
                                ResultKt.throwOnFailure(obj);
                                return unit;
                            }
                            _UtilJvmKt$$ExternalSyntheticLambda0.m$1("call to 'resume' before 'invoke' with coroutine");
                            return null;
                        }
                        flowCollector = (FlowCollector) this.L$0;
                        ResultKt.throwOnFailure(obj);
                        remoteMediator$InitializeAction = (RemoteMediator$InitializeAction) obj;
                    }
                    PageFetcher$LoadRequest$Refresh pageFetcher$LoadRequest$Refresh = new PageFetcher$LoadRequest$Refresh(remoteMediator$InitializeAction == RemoteMediator$InitializeAction.LAUNCH_INITIAL_REFRESH, PageFetcher$RefreshType$All.INSTANCE$2);
                    this.L$0 = null;
                    this.label = 2;
                    return flowCollector.emit(pageFetcher$LoadRequest$Refresh, this) == coroutineSingletons ? coroutineSingletons : unit;
                case 1:
                    CoroutineSingletons coroutineSingletons2 = CoroutineSingletons.COROUTINE_SUSPENDED;
                    int i3 = this.label;
                    if (i3 == 0) {
                        ResultKt.throwOnFailure(obj);
                        coroutineScope = (CoroutineScope) this.L$0;
                    } else {
                        if (i3 != 1) {
                            _UtilJvmKt$$ExternalSyntheticLambda0.m$1("call to 'resume' before 'invoke' with coroutine");
                            return null;
                        }
                        coroutineScope = (CoroutineScope) this.L$0;
                        ResultKt.throwOnFailure(obj);
                    }
                    while (AwaitKt.isActive(coroutineScope.getCoroutineContext())) {
                        BorderKt$$ExternalSyntheticLambda1 borderKt$$ExternalSyntheticLambda1 = new BorderKt$$ExternalSyntheticLambda1(29);
                        this.L$0 = coroutineScope;
                        this.label = 1;
                        CoroutineContext coroutineContext = this._context;
                        coroutineContext.getClass();
                        if (Updater.getMonotonicFrameClock(coroutineContext).withFrameNanos(borderKt$$ExternalSyntheticLambda1, this) == coroutineSingletons2) {
                            return coroutineSingletons2;
                        }
                    }
                    return unit;
                case 2:
                    FlowCollector flowCollector2 = (FlowCollector) this.L$0;
                    CoroutineSingletons coroutineSingletons3 = CoroutineSingletons.COROUTINE_SUSPENDED;
                    int i4 = this.label;
                    if (i4 == 0) {
                        ResultKt.throwOnFailure(obj);
                        this.L$0 = null;
                        this.label = 1;
                        return flowCollector2.emit("", this) == coroutineSingletons3 ? coroutineSingletons3 : unit;
                    }
                    if (i4 == 1) {
                        ResultKt.throwOnFailure(obj);
                        return unit;
                    }
                    _UtilJvmKt$$ExternalSyntheticLambda0.m$1("call to 'resume' before 'invoke' with coroutine");
                    return null;
                case 3:
                    final ProducerCoroutine producerCoroutine = (ProducerCoroutine) this.L$0;
                    CoroutineSingletons coroutineSingletons4 = CoroutineSingletons.COROUTINE_SUSPENDED;
                    int i5 = this.label;
                    if (i5 != 0) {
                        if (i5 == 1) {
                            ResultKt.throwOnFailure(obj);
                            return unit;
                        }
                        _UtilJvmKt$$ExternalSyntheticLambda0.m$1("call to 'resume' before 'invoke' with coroutine");
                        return null;
                    }
                    ResultKt.throwOnFailure(obj);
                    WikipediaApp wikipediaApp = WikipediaApp.instance;
                    final String string = Jsoup.getInstance().getString(R.string.preference_key_places_last_location_and_zoom_level);
                    string.getClass();
                    WikipediaApp jsoup = Jsoup.getInstance();
                    SharedPreferences sharedPreferences = jsoup.getSharedPreferences(PreferenceManager.getDefaultSharedPreferencesName(jsoup), 0);
                    Prefs prefs = Prefs.INSTANCE;
                    Pair placesLastLocationAndZoomLevel = Prefs.getPlacesLastLocationAndZoomLevel();
                    producerCoroutine.mo757trySendJP2dKIU(placesLastLocationAndZoomLevel != null ? (Location) placesLastLocationAndZoomLevel.first : null);
                    SharedPreferences.OnSharedPreferenceChangeListener onSharedPreferenceChangeListener = new SharedPreferences.OnSharedPreferenceChangeListener() { // from class: org.wikipedia.settings.Prefs$placesLastLocationFlow$1$$ExternalSyntheticLambda0
                        @Override // android.content.SharedPreferences.OnSharedPreferenceChangeListener
                        public final void onSharedPreferenceChanged(SharedPreferences sharedPreferences2, String str) {
                            if (Intrinsics.areEqual(str, string)) {
                                Prefs prefs2 = Prefs.INSTANCE;
                                Pair placesLastLocationAndZoomLevel2 = Prefs.getPlacesLastLocationAndZoomLevel();
                                producerCoroutine.mo757trySendJP2dKIU(placesLastLocationAndZoomLevel2 != null ? (Location) placesLastLocationAndZoomLevel2.first : null);
                            }
                        }
                    };
                    sharedPreferences.registerOnSharedPreferenceChangeListener(onSharedPreferenceChangeListener);
                    AboutActivityKt$$ExternalSyntheticLambda11 aboutActivityKt$$ExternalSyntheticLambda11 = new AboutActivityKt$$ExternalSyntheticLambda11(6, sharedPreferences, onSharedPreferenceChangeListener);
                    this.L$0 = null;
                    this.label = 1;
                    return OperationKt.awaitClose(producerCoroutine, aboutActivityKt$$ExternalSyntheticLambda11, this) == coroutineSingletons4 ? coroutineSingletons4 : unit;
                default:
                    final ProducerCoroutine producerCoroutine2 = (ProducerCoroutine) this.L$0;
                    CoroutineSingletons coroutineSingletons5 = CoroutineSingletons.COROUTINE_SUSPENDED;
                    int i6 = this.label;
                    if (i6 != 0) {
                        if (i6 == 1) {
                            ResultKt.throwOnFailure(obj);
                            return unit;
                        }
                        _UtilJvmKt$$ExternalSyntheticLambda0.m$1("call to 'resume' before 'invoke' with coroutine");
                        return null;
                    }
                    ResultKt.throwOnFailure(obj);
                    WikipediaApp wikipediaApp2 = WikipediaApp.instance;
                    WikipediaApp jsoup2 = Jsoup.getInstance();
                    SharedPreferences sharedPreferences2 = jsoup2.getSharedPreferences(PreferenceManager.getDefaultSharedPreferencesName(jsoup2), 0);
                    SharedPreferences.OnSharedPreferenceChangeListener onSharedPreferenceChangeListener2 = new SharedPreferences.OnSharedPreferenceChangeListener() { // from class: org.wikipedia.settings.Prefs$preferenceKeyChangeFlow$1$$ExternalSyntheticLambda0
                        @Override // android.content.SharedPreferences.OnSharedPreferenceChangeListener
                        public final void onSharedPreferenceChanged(SharedPreferences sharedPreferences3, String str) {
                            if (str != null) {
                                ProducerCoroutine.this.mo757trySendJP2dKIU(str);
                            }
                        }
                    };
                    sharedPreferences2.registerOnSharedPreferenceChangeListener(onSharedPreferenceChangeListener2);
                    AboutActivityKt$$ExternalSyntheticLambda11 aboutActivityKt$$ExternalSyntheticLambda112 = new AboutActivityKt$$ExternalSyntheticLambda11(7, sharedPreferences2, onSharedPreferenceChangeListener2);
                    this.L$0 = null;
                    this.label = 1;
                    return OperationKt.awaitClose(producerCoroutine2, aboutActivityKt$$ExternalSyntheticLambda112, this) == coroutineSingletons5 ? coroutineSingletons5 : unit;
            }
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    /* renamed from: androidx.paging.PageFetcher$flow$1$4, reason: invalid class name */
    public final /* synthetic */ class AnonymousClass4 implements FlowCollector, FunctionAdapter {
        public final /* synthetic */ SimpleProducerScopeImpl $tmp0;

        public AnonymousClass4(SimpleProducerScopeImpl simpleProducerScopeImpl) {
            this.$tmp0 = simpleProducerScopeImpl;
        }

        @Override // kotlinx.coroutines.flow.FlowCollector
        public final Object emit(Object obj, Continuation continuation) {
            Object send = this.$tmp0.channel.send((PagingData) obj, continuation);
            return send == CoroutineSingletons.COROUTINE_SUSPENDED ? send : Unit.INSTANCE;
        }

        public final boolean equals(Object obj) {
            if ((obj instanceof FlowCollector) && (obj instanceof FunctionAdapter)) {
                return getFunctionDelegate().equals(((FunctionAdapter) obj).getFunctionDelegate());
            }
            return false;
        }

        @Override // kotlin.jvm.internal.FunctionAdapter
        public final Function getFunctionDelegate() {
            return new FunctionReferenceImpl(2, 0, SimpleProducerScopeImpl.class, this.$tmp0, "send", "send(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;");
        }

        public final int hashCode() {
            return getFunctionDelegate().hashCode();
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PageFetcher$flow$1(RoomDatabase roomDatabase, Continuation continuation, Function1 function1) {
        super(2, continuation);
        this.$r8$classId = 18;
        this.L$0 = roomDatabase;
        this.this$0 = function1;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        int i = this.$r8$classId;
        Object obj2 = this.this$0;
        switch (i) {
            case 0:
                PageFetcher$flow$1 pageFetcher$flow$1 = new PageFetcher$flow$1(0, (PageFetcher) obj2, continuation);
                pageFetcher$flow$1.L$0 = obj;
                return pageFetcher$flow$1;
            case 1:
                PageFetcher$flow$1 pageFetcher$flow$12 = new PageFetcher$flow$1(1, (AppWidgetId) obj2, continuation);
                pageFetcher$flow$12.L$0 = obj;
                return pageFetcher$flow$12;
            case 2:
                return new PageFetcher$flow$1((Context) this.L$0, (ReadingChallengeWidgetReceiver) obj2, continuation, 2);
            case 3:
                return new PageFetcher$flow$1((Intent) this.L$0, (Context) obj2, continuation, 3);
            case 4:
                PageFetcher$flow$1 pageFetcher$flow$13 = new PageFetcher$flow$1(4, (AppWidgetSession) obj2, continuation);
                pageFetcher$flow$13.L$0 = obj;
                return pageFetcher$flow$13;
            case 5:
                return new PageFetcher$flow$1((SessionWorker) this.L$0, (AppWidgetSession) obj2, continuation, 5);
            case 6:
                PageFetcher$flow$1 pageFetcher$flow$14 = new PageFetcher$flow$1(6, (SessionWorker) obj2, continuation);
                pageFetcher$flow$14.L$0 = obj;
                return pageFetcher$flow$14;
            case 7:
                return new PageFetcher$flow$1((ReadonlyStateFlow) this.L$0, (ProduceStateScopeImpl) obj2, continuation, 7);
            case 8:
                PageFetcher$flow$1 pageFetcher$flow$15 = new PageFetcher$flow$1(8, (Request.Builder) obj2, continuation);
                pageFetcher$flow$15.L$0 = obj;
                return pageFetcher$flow$15;
            case 9:
                return new PageFetcher$flow$1((Flow) this.L$0, (Request.Builder) obj2, continuation, 9);
            case 10:
                return new PageFetcher$flow$1((PageFetcherSnapshot) this.L$0, (SimpleProducerScopeImpl) obj2, continuation, 10);
            case 11:
                return new PageFetcher$flow$1((PageFetcherSnapshot) this.L$0, (BufferedChannel) obj2, continuation, 11);
            case 12:
                return new PageFetcher$flow$1((BufferedChannel) this.L$0, (Function2) obj2, continuation, 12);
            case IMAGE_VALUE:
                PageFetcher$flow$1 pageFetcher$flow$16 = new PageFetcher$flow$1(13, (LazyPagingItems) obj2, continuation);
                pageFetcher$flow$16.L$0 = obj;
                return pageFetcher$flow$16;
            case LINEAR_PROGRESS_INDICATOR_VALUE:
                return new PageFetcher$flow$1((TriggerBasedInvalidationTracker) this.L$0, (Function0) obj2, continuation, 14);
            case 15:
                return new PageFetcher$flow$1((Function2) this.L$0, (PooledConnectionImpl) obj2, continuation, 15);
            case LAZY_VERTICAL_GRID_VALUE:
                return new PageFetcher$flow$1((Function2) this.L$0, (Ref$ObjectRef) obj2, continuation, 16);
            case VERTICAL_GRID_ITEM_VALUE:
                return new PageFetcher$flow$1((Function2) this.L$0, (PassthroughConnection) obj2, continuation, 17);
            case RADIO_GROUP_VALUE:
                return new PageFetcher$flow$1((RoomDatabase) this.L$0, continuation, (Function1) obj2);
            case RADIO_BUTTON_VALUE:
                return new PageFetcher$flow$1((NetworkRequestConstraintController) this.L$0, (ProducerCoroutine) obj2, continuation, 19);
            case RADIO_ROW_VALUE:
                PageFetcher$flow$1 pageFetcher$flow$17 = new PageFetcher$flow$1(20, (BaseConstraintController) obj2, continuation);
                pageFetcher$flow$17.L$0 = obj;
                return pageFetcher$flow$17;
            case RADIO_COLUMN_VALUE:
                PageFetcher$flow$1 pageFetcher$flow$18 = new PageFetcher$flow$1(21, (NetworkFetcher) obj2, continuation);
                pageFetcher$flow$18.L$0 = obj;
                return pageFetcher$flow$18;
            case SIZE_BOX_VALUE:
                PageFetcher$flow$1 pageFetcher$flow$19 = new PageFetcher$flow$1(22, (StateFlowImpl) obj2, continuation);
                pageFetcher$flow$19.L$0 = obj;
                return pageFetcher$flow$19;
            case 23:
                PageFetcher$flow$1 pageFetcher$flow$110 = new PageFetcher$flow$1(23, (SubscriptionCountStateFlow) obj2, continuation);
                pageFetcher$flow$110.L$0 = obj;
                return pageFetcher$flow$110;
            case 24:
                PageFetcher$flow$1 pageFetcher$flow$111 = new PageFetcher$flow$1(24, (ChannelFlow) obj2, continuation);
                pageFetcher$flow$111.L$0 = obj;
                return pageFetcher$flow$111;
            case 25:
                PageFetcher$flow$1 pageFetcher$flow$112 = new PageFetcher$flow$1(25, (ChannelFlowOperator) obj2, continuation);
                pageFetcher$flow$112.L$0 = obj;
                return pageFetcher$flow$112;
            case 26:
                return new PageFetcher$flow$1((Flow) this.L$0, (SendingCollector) obj2, continuation, 26);
            case 27:
                PageFetcher$flow$1 pageFetcher$flow$113 = new PageFetcher$flow$1(27, (FlowCollector) obj2, continuation);
                pageFetcher$flow$113.L$0 = obj;
                return pageFetcher$flow$113;
            case 28:
                return new PageFetcher$flow$1((CategoryActivity.CategoryMembersAdapter) this.L$0, (PagingData) obj2, continuation, 28);
            default:
                return new PageFetcher$flow$1((DestinationEventService) this.L$0, (List) obj2, continuation, 29);
        }
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        switch (i) {
        }
        return ((PageFetcher$flow$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(unit);
    }

    /* JADX WARN: Code restructure failed: missing block: B:23:0x005a, code lost:
    
        if (r14 == r2) goto L25;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x006c, code lost:
    
        if (r14 == r2) goto L25;
     */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r15) {
        /*
            Method dump skipped, instructions count: 2154
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.paging.PageFetcher$flow$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    /* renamed from: androidx.paging.PageFetcher$flow$1$2, reason: invalid class name */
    public final class AnonymousClass2 extends SuspendLambda implements Function3 {
        public final /* synthetic */ int $r8$classId = 0;
        public Object L$0;
        public Object L$1;
        public Object L$2;
        public Object L$3;
        public Object L$4;
        public int label;
        public Object this$0;

        /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
        /* renamed from: androidx.paging.PageFetcher$flow$1$2$1, reason: invalid class name */
        public final /* synthetic */ class AnonymousClass1 extends AdaptedFunctionReference implements Function0 {
            public final /* synthetic */ int $r8$classId;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public /* synthetic */ AnonymousClass1(int i, Object obj, Class cls, String str, String str2, int i2, int i3) {
                super(i, i2, cls, obj, str, str2);
                this.$r8$classId = i3;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i = this.$r8$classId;
                Unit unit = Unit.INSTANCE;
                Object obj = this.receiver;
                switch (i) {
                    case 0:
                        ((PageFetcher) obj).loadRequests.send(new PageFetcher$LoadRequest$Refresh(true, PageFetcher$RefreshType$All.INSTANCE$1));
                        break;
                    default:
                        ((PageFetcher) obj).loadRequests.send(new PageFetcher$LoadRequest$Refresh(true, PageFetcher$RefreshType$All.INSTANCE$1));
                        break;
                }
                return unit;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass2(Data$$ExternalSyntheticLambda0 data$$ExternalSyntheticLambda0, StateFlowImpl stateFlowImpl, Continuation continuation) {
            super(3, continuation);
            this.L$0 = data$$ExternalSyntheticLambda0;
            this.this$0 = stateFlowImpl;
        }

        @Override // kotlin.jvm.functions.Function3
        public final Object invoke(Object obj, Object obj2, Object obj3) {
            int i = this.$r8$classId;
            Unit unit = Unit.INSTANCE;
            switch (i) {
                case 0:
                    AnonymousClass2 anonymousClass2 = new AnonymousClass2((PageFetcher) this.this$0, (Continuation) obj3);
                    anonymousClass2.L$0 = (PageFetcher.GenerationInfo) obj;
                    anonymousClass2.L$1 = (PageFetcher$LoadRequest$Refresh) obj2;
                    return anonymousClass2.invokeSuspend(unit);
                case 1:
                    AnonymousClass2 anonymousClass22 = new AnonymousClass2((Data$$ExternalSyntheticLambda0) this.L$0, (StateFlowImpl) this.this$0, (Continuation) obj3);
                    anonymousClass22.L$2 = (CoroutineScope) obj;
                    anonymousClass22.L$3 = (FlowCollector) obj2;
                    return anonymousClass22.invokeSuspend(unit);
                default:
                    AnonymousClass2 anonymousClass23 = new AnonymousClass2((Continuation) obj3, (SearchResultsViewModel) this.L$1);
                    anonymousClass23.L$3 = (FlowCollector) obj;
                    anonymousClass23.L$2 = obj2;
                    return anonymousClass23.invokeSuspend(unit);
            }
        }

        /* JADX WARN: Code restructure failed: missing block: B:169:0x02bf, code lost:
        
            if (r7 == r3) goto L164;
         */
        /* JADX WARN: Code restructure failed: missing block: B:60:0x01d6, code lost:
        
            if (r15.complete(r22) == r1) goto L61;
         */
        /* JADX WARN: Code restructure failed: missing block: B:62:0x00c0, code lost:
        
            if (r15.doSelectSuspend(r22) == r1) goto L61;
         */
        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Removed duplicated region for block: B:104:0x0309  */
        /* JADX WARN: Removed duplicated region for block: B:36:0x011a  */
        /* JADX WARN: Removed duplicated region for block: B:56:0x016b  */
        /* JADX WARN: Removed duplicated region for block: B:59:0x01cd  */
        /* JADX WARN: Removed duplicated region for block: B:61:0x01d2  */
        /* JADX WARN: Removed duplicated region for block: B:63:? A[RETURN, SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:82:0x044f A[LOOP:0: B:80:0x0449->B:82:0x044f, LOOP_END] */
        /* JADX WARN: Type inference failed for: r10v11 */
        /* JADX WARN: Type inference failed for: r10v16, types: [kotlinx.coroutines.channels.Channel] */
        /* JADX WARN: Type inference failed for: r10v8, types: [java.lang.Object, kotlinx.coroutines.channels.Channel] */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object invokeSuspend(java.lang.Object r23) {
            /*
                Method dump skipped, instructions count: 1318
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.paging.PageFetcher$flow$1.AnonymousClass2.invokeSuspend(java.lang.Object):java.lang.Object");
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass2(PageFetcher pageFetcher, Continuation continuation) {
            super(3, continuation);
            this.this$0 = pageFetcher;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass2(Continuation continuation, SearchResultsViewModel searchResultsViewModel) {
            super(3, continuation);
            this.L$1 = searchResultsViewModel;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ PageFetcher$flow$1(int i, Object obj, Continuation continuation) {
        super(2, continuation);
        this.$r8$classId = i;
        this.this$0 = obj;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ PageFetcher$flow$1(Object obj, Object obj2, Continuation continuation, int i) {
        super(2, continuation);
        this.$r8$classId = i;
        this.L$0 = obj;
        this.this$0 = obj2;
    }
}
