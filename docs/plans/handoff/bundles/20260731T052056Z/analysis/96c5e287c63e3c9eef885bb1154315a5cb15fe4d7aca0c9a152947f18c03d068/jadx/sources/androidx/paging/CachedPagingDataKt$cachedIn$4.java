package androidx.paging;

import androidx.compose.foundation.gestures.ScrollScope;
import coil3.size.ViewSizeResolver$CC;
import j$.util.concurrent.ConcurrentHashMap;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.UnsignedKt;
import kotlin.collections.EmptyMap;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.serialization.internal.HashMapSerializer;
import kotlinx.serialization.internal.StringSerializer;
import kotlinx.serialization.json.JsonImpl;
import org.wikimedia.testkitchen.TestKitchenClient;
import org.wikimedia.testkitchen.config.SourceConfig;
import org.wikimedia.testkitchen.config.StreamConfig;
import org.wikipedia.R;
import org.wikipedia.WikipediaApp;
import org.wikipedia.analytics.eventplatform.AppInteractionEvent;
import org.wikipedia.analytics.eventplatform.EventPlatformClient;
import org.wikipedia.analytics.testkitchen.TestKitchenAdapter;
import org.wikipedia.json.JsonUtil;
import org.wikipedia.settings.Prefs;
import org.wikipedia.settings.PrefsIoUtil;
import org.wikipedia.util.log.L;
import org.wikipedia.yearinreview.YearInReviewModel;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class CachedPagingDataKt$cachedIn$4 extends SuspendLambda implements Function2 {
    public final /* synthetic */ int $r8$classId;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ CachedPagingDataKt$cachedIn$4(int i, int i2, Continuation continuation) {
        super(i, continuation);
        this.$r8$classId = i2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        switch (this.$r8$classId) {
            case 0:
                return new CachedPagingDataKt$cachedIn$4(2, 0, continuation);
            case 1:
                return new CachedPagingDataKt$cachedIn$4(2, 1, continuation);
            case 2:
                return new CachedPagingDataKt$cachedIn$4(2, 2, continuation);
            case 3:
                return new CachedPagingDataKt$cachedIn$4(2, 3, continuation);
            case 4:
                return new CachedPagingDataKt$cachedIn$4(2, 4, continuation);
            case 5:
                return new CachedPagingDataKt$cachedIn$4(2, 5, continuation);
            case 6:
                return new CachedPagingDataKt$cachedIn$4(2, 6, continuation);
            default:
                return new CachedPagingDataKt$cachedIn$4(2, 7, continuation);
        }
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        switch (i) {
            case 0:
                ((CachedPagingDataKt$cachedIn$4) create((FlowCollector) obj, (Continuation) obj2)).invokeSuspend(unit);
                break;
            case 1:
                ((CachedPagingDataKt$cachedIn$4) create((Flow) obj, (Continuation) obj2)).invokeSuspend(unit);
                break;
            case 2:
                ((CachedPagingDataKt$cachedIn$4) create((ScrollScope) obj, (Continuation) obj2)).invokeSuspend(unit);
                break;
            case 3:
                break;
            case 4:
                ((CachedPagingDataKt$cachedIn$4) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(unit);
                break;
            case 5:
                ((CachedPagingDataKt$cachedIn$4) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(unit);
                break;
            case 6:
                ((CachedPagingDataKt$cachedIn$4) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(unit);
                break;
            default:
                ((CachedPagingDataKt$cachedIn$4) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(unit);
                break;
        }
        return unit;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        int i = this.$r8$classId;
        Object obj2 = null;
        String str = null;
        obj2 = null;
        obj2 = null;
        Unit unit = Unit.INSTANCE;
        switch (i) {
            case 0:
                ResultKt.throwOnFailure(obj);
                break;
            case 1:
                ResultKt.throwOnFailure(obj);
                break;
            case 2:
                ResultKt.throwOnFailure(obj);
                break;
            case 3:
                ResultKt.throwOnFailure(obj);
                break;
            case 4:
                ResultKt.throwOnFailure(obj);
                Prefs prefs = Prefs.INSTANCE;
                ConcurrentHashMap concurrentHashMap = EventPlatformClient.STREAM_CONFIGS;
                concurrentHashMap.getClass();
                try {
                    JsonImpl jsonImpl = JsonUtil.json;
                    jsonImpl.getClass();
                    str = jsonImpl.encodeToString(new HashMapSerializer(StringSerializer.INSTANCE, StreamConfig.Companion.serializer(), 1), concurrentHashMap);
                } catch (Exception e) {
                    L.w(e);
                }
                PrefsIoUtil.setString(R.string.preference_key_event_platform_stored_stream_configs, str);
                TestKitchenClient testKitchenClient = TestKitchenAdapter.client;
                ConcurrentHashMap concurrentHashMap2 = EventPlatformClient.STREAM_CONFIGS;
                testKitchenClient.getClass();
                concurrentHashMap2.getClass();
                testKitchenClient.sourceConfig.set(new SourceConfig(concurrentHashMap2));
                testKitchenClient.eventProcessor.sendEnqueuedEvents();
                break;
            case 5:
                ResultKt.throwOnFailure(obj);
                ConcurrentHashMap concurrentHashMap3 = EventPlatformClient.STREAM_CONFIGS;
                Prefs prefs2 = Prefs.INSTANCE;
                JsonImpl jsonImpl2 = JsonUtil.json;
                String string = PrefsIoUtil.getString(R.string.preference_key_event_platform_stored_stream_configs, null);
                if (string != null && string.length() != 0) {
                    try {
                        JsonImpl jsonImpl3 = JsonUtil.json;
                        jsonImpl3.getClass();
                        obj2 = jsonImpl3.decodeFromString(string, UnsignedKt.getNullable(new HashMapSerializer(StringSerializer.INSTANCE, StreamConfig.Companion.serializer(), 1)));
                    } catch (Exception e2) {
                        L.w(e2);
                    }
                }
                Map map = (Map) obj2;
                Map map2 = map;
                if (map == null) {
                    map2 = EmptyMap.INSTANCE;
                }
                concurrentHashMap3.putAll(map2);
                TestKitchenClient testKitchenClient2 = TestKitchenAdapter.client;
                ConcurrentHashMap concurrentHashMap4 = EventPlatformClient.STREAM_CONFIGS;
                testKitchenClient2.getClass();
                concurrentHashMap4.getClass();
                testKitchenClient2.sourceConfig.set(new SourceConfig(concurrentHashMap4));
                testKitchenClient2.eventProcessor.sendEnqueuedEvents();
                break;
            case 6:
                ResultKt.throwOnFailure(obj);
                EventPlatformClient eventPlatformClient = EventPlatformClient.INSTANCE;
                WikipediaApp wikipediaApp = WikipediaApp.instance;
                String m = ViewSizeResolver$CC.m();
                Prefs prefs3 = Prefs.INSTANCE;
                EventPlatformClient.submit(new AppInteractionEvent("no_results_impression", "search_view", "", m, Prefs.getPlacesWikiCode(), "app_places_interaction"));
                break;
            default:
                ResultKt.throwOnFailure(obj);
                Prefs prefs4 = Prefs.INSTANCE;
                LinkedHashMap linkedHashMap = new LinkedHashMap(Prefs.getYearInReviewModelData());
                YearInReviewModel yearInReviewModel = (YearInReviewModel) linkedHashMap.get(2025);
                if (yearInReviewModel != null) {
                    linkedHashMap.put(2025, YearInReviewModel.copy$default(yearInReviewModel, yearInReviewModel.slideViewedCount + 1, false, 917503));
                    Prefs.setYearInReviewModelData(linkedHashMap);
                    break;
                }
                break;
        }
        return unit;
    }
}
