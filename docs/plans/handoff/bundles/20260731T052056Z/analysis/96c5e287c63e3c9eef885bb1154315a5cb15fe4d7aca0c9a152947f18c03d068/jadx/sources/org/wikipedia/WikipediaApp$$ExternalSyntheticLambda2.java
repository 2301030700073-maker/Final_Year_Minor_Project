package org.wikipedia;

import java.lang.annotation.Annotation;
import kotlin.UnsignedKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.ReflectionFactory;
import kotlin.reflect.KClass;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.SealedClassSerializer;
import kotlinx.serialization.internal.HashMapSerializer;
import kotlinx.serialization.internal.HashSetSerializer;
import kotlinx.serialization.internal.IntSerializer;
import kotlinx.serialization.internal.LongSerializer;
import kotlinx.serialization.internal.StringSerializer;
import kotlinx.serialization.json.JsonImpl;
import org.wikimedia.testkitchen.config.StreamConfig$$serializer;
import org.wikimedia.testkitchen.config.curation.ComparableCurationRules;
import org.wikimedia.testkitchen.config.curation.CurationRules;
import org.wikipedia.analytics.SessionData;
import org.wikipedia.analytics.eventplatform.AppInteractionEvent;
import org.wikipedia.analytics.eventplatform.AppInteractionEvent$$serializer;
import org.wikipedia.analytics.eventplatform.AppSessionEvent;
import org.wikipedia.analytics.eventplatform.AppSessionEvent$AppSessionEventImpl$$serializer;
import org.wikipedia.analytics.eventplatform.AppearanceSettingInteractionEvent$AppearanceSettingInteractionEventImpl;
import org.wikipedia.analytics.eventplatform.AppearanceSettingInteractionEvent$AppearanceSettingInteractionEventImpl$$serializer;
import org.wikipedia.analytics.eventplatform.ArticleFindInPageInteractionEvent;
import org.wikipedia.analytics.eventplatform.ArticleFindInPageInteractionEvent$ArticleFindInPageInteractionEventImpl$$serializer;
import org.wikipedia.analytics.eventplatform.ArticleInteractionEvent;
import org.wikipedia.analytics.eventplatform.ArticleInteractionEvent$ArticleInteractionEventImpl$$serializer;
import org.wikipedia.analytics.eventplatform.ArticleLinkPreviewInteractionEvent;
import org.wikipedia.analytics.eventplatform.ArticleLinkPreviewInteractionEvent$ArticleLinkPreviewInteractionEventImpl$$serializer;
import org.wikipedia.analytics.eventplatform.ArticleTocInteractionEvent;
import org.wikipedia.analytics.eventplatform.ArticleTocInteractionEvent$ArticleTocInteractionEventImpl$$serializer;
import org.wikipedia.analytics.eventplatform.BreadCrumbLogEvent;
import org.wikipedia.analytics.eventplatform.BreadCrumbLogEvent$$serializer;
import org.wikipedia.analytics.eventplatform.ClientErrorEvent$ClientErrorEventImpl;
import org.wikipedia.analytics.eventplatform.ClientErrorEvent$ClientErrorEventImpl$$serializer;
import org.wikipedia.analytics.eventplatform.DailyStatsEvent;
import org.wikipedia.analytics.eventplatform.DailyStatsEvent$$serializer;
import org.wikipedia.analytics.eventplatform.EditAttemptStepEvent;
import org.wikipedia.analytics.eventplatform.EditAttemptStepEvent$$serializer;
import org.wikipedia.analytics.eventplatform.Event;
import org.wikipedia.analytics.eventplatform.EventWithDt;
import org.wikipedia.analytics.eventplatform.ImageRecommendationsEvent;
import org.wikipedia.analytics.eventplatform.ImageRecommendationsEvent$$serializer;
import org.wikipedia.analytics.eventplatform.InstallReferrerEvent;
import org.wikipedia.analytics.eventplatform.InstallReferrerEvent$$serializer;
import org.wikipedia.analytics.eventplatform.MobileAppsEvent;
import org.wikipedia.analytics.eventplatform.MobileAppsEventWithTemp;
import org.wikipedia.analytics.eventplatform.TestAppsEvent;
import org.wikipedia.analytics.eventplatform.TestAppsEvent$$serializer;
import org.wikipedia.analytics.eventplatform.TestEvent;
import org.wikipedia.analytics.eventplatform.TestEvent$$serializer;
import org.wikipedia.dataclient.mwapi.MwServiceError$$serializer;
import org.wikipedia.json.JsonUtil;
import org.wikipedia.search.HybridSearchAbCTest;
import org.wikipedia.settings.Prefs;
import org.wikipedia.settings.PrefsIoUtil;
import org.wikipedia.util.log.L;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class WikipediaApp$$ExternalSyntheticLambda2 implements Function0 {
    public final /* synthetic */ int $r8$classId;

    public /* synthetic */ WikipediaApp$$ExternalSyntheticLambda2(HybridSearchAbCTest hybridSearchAbCTest) {
        this.$r8$classId = 28;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        switch (this.$r8$classId) {
            case 0:
                WikipediaApp wikipediaApp = WikipediaApp.instance;
                AppSessionEvent appSessionEvent = new AppSessionEvent();
                Prefs prefs = Prefs.INSTANCE;
                JsonImpl jsonImpl = JsonUtil.json;
                Object obj = null;
                String string = PrefsIoUtil.getString(R.string.preference_key_session_data, null);
                if (string != null && string.length() != 0) {
                    try {
                        JsonImpl jsonImpl2 = JsonUtil.json;
                        jsonImpl2.getClass();
                        obj = jsonImpl2.decodeFromString(string, UnsignedKt.getNullable(SessionData.Companion.serializer()));
                    } catch (Exception e) {
                        L.w(e);
                    }
                }
                SessionData sessionData = (SessionData) obj;
                if (sessionData == null) {
                    sessionData = new SessionData();
                }
                appSessionEvent.sessionData = sessionData;
                if (sessionData.startTime == 0 || sessionData.lastTouchTime == 0) {
                    appSessionEvent.sessionData = new SessionData();
                    appSessionEvent.persistSession();
                }
                appSessionEvent.touchSession();
                return appSessionEvent;
            case 1:
                return CurationRules.Companion.serializer(StringSerializer.INSTANCE);
            case 2:
                return CurationRules.Companion.serializer(StringSerializer.INSTANCE);
            case 3:
                return CurationRules.Companion.serializer(IntSerializer.INSTANCE);
            case 4:
                return CurationRules.Companion.serializer(StringSerializer.INSTANCE);
            case 5:
                return CurationRules.Companion.serializer(StringSerializer.INSTANCE);
            case 6:
                return CurationRules.Companion.serializer(StringSerializer.INSTANCE);
            case 7:
                return CurationRules.Companion.serializer(StringSerializer.INSTANCE);
            case 8:
                return ComparableCurationRules.Companion.serializer(IntSerializer.INSTANCE);
            case 9:
                return ComparableCurationRules.Companion.serializer(IntSerializer.INSTANCE);
            case 10:
                return CurationRules.Companion.serializer(StringSerializer.INSTANCE);
            case 11:
                return CurationRules.Companion.serializer(StringSerializer.INSTANCE);
            case 12:
                return ComparableCurationRules.Companion.serializer(LongSerializer.INSTANCE);
            case IMAGE_VALUE:
                return CurationRules.Companion.serializer(StringSerializer.INSTANCE);
            case LINEAR_PROGRESS_INDICATOR_VALUE:
                return CurationRules.Companion.serializer(StringSerializer.INSTANCE);
            case 15:
                return ComparableCurationRules.Companion.serializer(IntSerializer.INSTANCE);
            case LAZY_VERTICAL_GRID_VALUE:
                return new HashSetSerializer(StringSerializer.INSTANCE, 1);
            case VERTICAL_GRID_ITEM_VALUE:
                return new HashSetSerializer(StringSerializer.INSTANCE, 1);
            case RADIO_GROUP_VALUE:
                return new HashSetSerializer(StringSerializer.INSTANCE, 1);
            case RADIO_BUTTON_VALUE:
                return new HashSetSerializer(StringSerializer.INSTANCE, 1);
            case RADIO_ROW_VALUE:
                return new HashMapSerializer(StringSerializer.INSTANCE, StreamConfig$$serializer.INSTANCE, 1);
            case RADIO_COLUMN_VALUE:
                return new HashSetSerializer(StringSerializer.INSTANCE, 1);
            case SIZE_BOX_VALUE:
                return new HashSetSerializer(StringSerializer.INSTANCE, 1);
            case 23:
                return new HashSetSerializer(StringSerializer.INSTANCE, 1);
            case 24:
                ReflectionFactory reflectionFactory = Reflection.factory;
                return new SealedClassSerializer("org.wikipedia.analytics.eventplatform.Event", reflectionFactory.getOrCreateKotlinClass(Event.class), new KClass[]{reflectionFactory.getOrCreateKotlinClass(ClientErrorEvent$ClientErrorEventImpl.class), reflectionFactory.getOrCreateKotlinClass(EditAttemptStepEvent.class), reflectionFactory.getOrCreateKotlinClass(AppearanceSettingInteractionEvent$AppearanceSettingInteractionEventImpl.class), reflectionFactory.getOrCreateKotlinClass(ArticleFindInPageInteractionEvent.ArticleFindInPageInteractionEventImpl.class), reflectionFactory.getOrCreateKotlinClass(ArticleInteractionEvent.ArticleInteractionEventImpl.class), reflectionFactory.getOrCreateKotlinClass(ArticleLinkPreviewInteractionEvent.ArticleLinkPreviewInteractionEventImpl.class), reflectionFactory.getOrCreateKotlinClass(ArticleTocInteractionEvent.ArticleTocInteractionEventImpl.class), reflectionFactory.getOrCreateKotlinClass(AppInteractionEvent.class), reflectionFactory.getOrCreateKotlinClass(AppSessionEvent.AppSessionEventImpl.class), reflectionFactory.getOrCreateKotlinClass(BreadCrumbLogEvent.class), reflectionFactory.getOrCreateKotlinClass(DailyStatsEvent.class), reflectionFactory.getOrCreateKotlinClass(ImageRecommendationsEvent.class), reflectionFactory.getOrCreateKotlinClass(InstallReferrerEvent.class), reflectionFactory.getOrCreateKotlinClass(TestAppsEvent.class), reflectionFactory.getOrCreateKotlinClass(TestEvent.class)}, new KSerializer[]{ClientErrorEvent$ClientErrorEventImpl$$serializer.INSTANCE, EditAttemptStepEvent$$serializer.INSTANCE, AppearanceSettingInteractionEvent$AppearanceSettingInteractionEventImpl$$serializer.INSTANCE, ArticleFindInPageInteractionEvent$ArticleFindInPageInteractionEventImpl$$serializer.INSTANCE, ArticleInteractionEvent$ArticleInteractionEventImpl$$serializer.INSTANCE, ArticleLinkPreviewInteractionEvent$ArticleLinkPreviewInteractionEventImpl$$serializer.INSTANCE, ArticleTocInteractionEvent$ArticleTocInteractionEventImpl$$serializer.INSTANCE, AppInteractionEvent$$serializer.INSTANCE, AppSessionEvent$AppSessionEventImpl$$serializer.INSTANCE, BreadCrumbLogEvent$$serializer.INSTANCE, DailyStatsEvent$$serializer.INSTANCE, ImageRecommendationsEvent$$serializer.INSTANCE, InstallReferrerEvent$$serializer.INSTANCE, TestAppsEvent$$serializer.INSTANCE, TestEvent$$serializer.INSTANCE}, new Annotation[0]);
            case 25:
                ReflectionFactory reflectionFactory2 = Reflection.factory;
                return new SealedClassSerializer("org.wikipedia.analytics.eventplatform.EventWithDt", reflectionFactory2.getOrCreateKotlinClass(EventWithDt.class), new KClass[]{reflectionFactory2.getOrCreateKotlinClass(EditAttemptStepEvent.class), reflectionFactory2.getOrCreateKotlinClass(AppearanceSettingInteractionEvent$AppearanceSettingInteractionEventImpl.class), reflectionFactory2.getOrCreateKotlinClass(ArticleFindInPageInteractionEvent.ArticleFindInPageInteractionEventImpl.class), reflectionFactory2.getOrCreateKotlinClass(ArticleInteractionEvent.ArticleInteractionEventImpl.class), reflectionFactory2.getOrCreateKotlinClass(ArticleLinkPreviewInteractionEvent.ArticleLinkPreviewInteractionEventImpl.class), reflectionFactory2.getOrCreateKotlinClass(ArticleTocInteractionEvent.ArticleTocInteractionEventImpl.class), reflectionFactory2.getOrCreateKotlinClass(AppInteractionEvent.class), reflectionFactory2.getOrCreateKotlinClass(AppSessionEvent.AppSessionEventImpl.class), reflectionFactory2.getOrCreateKotlinClass(BreadCrumbLogEvent.class), reflectionFactory2.getOrCreateKotlinClass(DailyStatsEvent.class), reflectionFactory2.getOrCreateKotlinClass(ImageRecommendationsEvent.class), reflectionFactory2.getOrCreateKotlinClass(InstallReferrerEvent.class), reflectionFactory2.getOrCreateKotlinClass(TestAppsEvent.class)}, new KSerializer[]{EditAttemptStepEvent$$serializer.INSTANCE, AppearanceSettingInteractionEvent$AppearanceSettingInteractionEventImpl$$serializer.INSTANCE, ArticleFindInPageInteractionEvent$ArticleFindInPageInteractionEventImpl$$serializer.INSTANCE, ArticleInteractionEvent$ArticleInteractionEventImpl$$serializer.INSTANCE, ArticleLinkPreviewInteractionEvent$ArticleLinkPreviewInteractionEventImpl$$serializer.INSTANCE, ArticleTocInteractionEvent$ArticleTocInteractionEventImpl$$serializer.INSTANCE, AppInteractionEvent$$serializer.INSTANCE, AppSessionEvent$AppSessionEventImpl$$serializer.INSTANCE, BreadCrumbLogEvent$$serializer.INSTANCE, DailyStatsEvent$$serializer.INSTANCE, ImageRecommendationsEvent$$serializer.INSTANCE, InstallReferrerEvent$$serializer.INSTANCE, TestAppsEvent$$serializer.INSTANCE}, new Annotation[0]);
            case 26:
                ReflectionFactory reflectionFactory3 = Reflection.factory;
                return new SealedClassSerializer("org.wikipedia.analytics.eventplatform.MobileAppsEvent", reflectionFactory3.getOrCreateKotlinClass(MobileAppsEvent.class), new KClass[]{reflectionFactory3.getOrCreateKotlinClass(AppearanceSettingInteractionEvent$AppearanceSettingInteractionEventImpl.class), reflectionFactory3.getOrCreateKotlinClass(ArticleFindInPageInteractionEvent.ArticleFindInPageInteractionEventImpl.class), reflectionFactory3.getOrCreateKotlinClass(ArticleInteractionEvent.ArticleInteractionEventImpl.class), reflectionFactory3.getOrCreateKotlinClass(ArticleLinkPreviewInteractionEvent.ArticleLinkPreviewInteractionEventImpl.class), reflectionFactory3.getOrCreateKotlinClass(ArticleTocInteractionEvent.ArticleTocInteractionEventImpl.class), reflectionFactory3.getOrCreateKotlinClass(AppInteractionEvent.class), reflectionFactory3.getOrCreateKotlinClass(AppSessionEvent.AppSessionEventImpl.class), reflectionFactory3.getOrCreateKotlinClass(BreadCrumbLogEvent.class), reflectionFactory3.getOrCreateKotlinClass(DailyStatsEvent.class), reflectionFactory3.getOrCreateKotlinClass(ImageRecommendationsEvent.class), reflectionFactory3.getOrCreateKotlinClass(InstallReferrerEvent.class), reflectionFactory3.getOrCreateKotlinClass(TestAppsEvent.class)}, new KSerializer[]{AppearanceSettingInteractionEvent$AppearanceSettingInteractionEventImpl$$serializer.INSTANCE, ArticleFindInPageInteractionEvent$ArticleFindInPageInteractionEventImpl$$serializer.INSTANCE, ArticleInteractionEvent$ArticleInteractionEventImpl$$serializer.INSTANCE, ArticleLinkPreviewInteractionEvent$ArticleLinkPreviewInteractionEventImpl$$serializer.INSTANCE, ArticleTocInteractionEvent$ArticleTocInteractionEventImpl$$serializer.INSTANCE, AppInteractionEvent$$serializer.INSTANCE, AppSessionEvent$AppSessionEventImpl$$serializer.INSTANCE, BreadCrumbLogEvent$$serializer.INSTANCE, DailyStatsEvent$$serializer.INSTANCE, ImageRecommendationsEvent$$serializer.INSTANCE, InstallReferrerEvent$$serializer.INSTANCE, TestAppsEvent$$serializer.INSTANCE}, new Annotation[0]);
            case 27:
                ReflectionFactory reflectionFactory4 = Reflection.factory;
                return new SealedClassSerializer("org.wikipedia.analytics.eventplatform.MobileAppsEventWithTemp", reflectionFactory4.getOrCreateKotlinClass(MobileAppsEventWithTemp.class), new KClass[]{reflectionFactory4.getOrCreateKotlinClass(AppInteractionEvent.class), reflectionFactory4.getOrCreateKotlinClass(AppSessionEvent.AppSessionEventImpl.class), reflectionFactory4.getOrCreateKotlinClass(BreadCrumbLogEvent.class), reflectionFactory4.getOrCreateKotlinClass(DailyStatsEvent.class), reflectionFactory4.getOrCreateKotlinClass(ImageRecommendationsEvent.class), reflectionFactory4.getOrCreateKotlinClass(InstallReferrerEvent.class)}, new KSerializer[]{AppInteractionEvent$$serializer.INSTANCE, AppSessionEvent$AppSessionEventImpl$$serializer.INSTANCE, BreadCrumbLogEvent$$serializer.INSTANCE, DailyStatsEvent$$serializer.INSTANCE, ImageRecommendationsEvent$$serializer.INSTANCE, InstallReferrerEvent$$serializer.INSTANCE}, new Annotation[0]);
            case 28:
                return Boolean.TRUE;
            default:
                return new HashSetSerializer(MwServiceError$$serializer.INSTANCE, 1);
        }
    }

    public /* synthetic */ WikipediaApp$$ExternalSyntheticLambda2(int i) {
        this.$r8$classId = i;
    }
}
