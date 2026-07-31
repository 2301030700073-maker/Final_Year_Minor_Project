package org.wikipedia.dataclient.growthtasks;

import android.text.format.DateUtils;
import coil3.util.ContextsKt;
import j$.time.LocalDate;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.Lazy;
import kotlin.LazyThreadSafetyMode;
import kotlin.SynchronizedLazyImpl;
import kotlin.UnsignedKt;
import kotlin.collections.CollectionsKt__IteratorsJVMKt;
import kotlin.collections.EmptyMap;
import kotlin.collections.IntIterator;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.jvm.functions.Function0;
import kotlin.ranges.IntProgressionIterator;
import kotlin.ranges.IntRange;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.internal.HashMapSerializer;
import kotlinx.serialization.internal.IntSerializer;
import kotlinx.serialization.internal.StringSerializer;
import kotlinx.serialization.json.JsonElement;
import kotlinx.serialization.json.JsonImpl;
import kotlinx.serialization.json.JsonObject;
import org.wikipedia.database.AppDatabase$$ExternalSyntheticLambda0;
import org.wikipedia.dataclient.growthtasks.GrowthUserImpact;
import org.wikipedia.games.WikiGames$$ExternalSyntheticLambda0;
import org.wikipedia.json.JsonUtil;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Serializable
/* loaded from: classes.dex */
public final class GrowthUserImpact {
    public final SynchronizedLazyImpl dailyTotalViews$delegate;
    public final SynchronizedLazyImpl editCountByDay$delegate;
    public final SynchronizedLazyImpl editsLastMonth$delegate;
    public final SynchronizedLazyImpl editsThisMonth$delegate;
    public final int givenThanksCount;
    public final SynchronizedLazyImpl groupEditsByMonth$delegate;
    public final SynchronizedLazyImpl lastEditRelativeTime$delegate;
    public final long lastEditTimestamp;
    public final SynchronizedLazyImpl lastThirtyDaysEdits$delegate;
    public final SynchronizedLazyImpl longestEditingStreak$delegate;
    public final JsonElement mDailyTotalViews;
    public final JsonElement mEditCountByDay;
    public final JsonElement mEditCountByNamespace;
    public final JsonElement mEditCountByTaskType;
    public final JsonElement mLongestEditingStreak;
    public final JsonElement mTopViewedArticles;
    public final int newcomerTaskEditCount;
    public final int receivedThanksCount;
    public final int revertedEditCount;
    public final SynchronizedLazyImpl topViewedArticles$delegate;
    public Map topViewedArticlesWithPageTitle;
    public final int totalArticlesCreatedCount;
    public final int totalEditsCount;
    public final long totalPageviewsCount;
    public final int totalUserEditCount;
    public final int userId;
    public final String userName;
    public final int version;
    public static final Companion Companion = new Companion();
    public static final Lazy[] $childSerializers = {null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, ContextsKt.lazy(LazyThreadSafetyMode.PUBLICATION, new AppDatabase$$ExternalSyntheticLambda0(22))};

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    @Serializable
    public final class ArticleViews {
        public static final Companion Companion = new Companion();
        public final String firstEditDate;
        public final String imageUrl;
        public final String newestEdit;
        public final JsonElement views;
        public final SynchronizedLazyImpl viewsByDay$delegate;
        public final long viewsCount;

        /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
        public final class Companion {
            public final KSerializer serializer() {
                return GrowthUserImpact$ArticleViews$$serializer.INSTANCE;
            }
        }

        public ArticleViews(int i, String str, String str2, String str3, long j, JsonElement jsonElement) {
            if ((i & 1) == 0) {
                this.firstEditDate = "";
            } else {
                this.firstEditDate = str;
            }
            if ((i & 2) == 0) {
                this.newestEdit = "";
            } else {
                this.newestEdit = str2;
            }
            if ((i & 4) == 0) {
                this.imageUrl = "";
            } else {
                this.imageUrl = str3;
            }
            if ((i & 8) == 0) {
                this.viewsCount = 0L;
            } else {
                this.viewsCount = j;
            }
            if ((i & 16) == 0) {
                this.views = null;
            } else {
                this.views = jsonElement;
            }
            this.viewsByDay$delegate = new SynchronizedLazyImpl(new WikiGames$$ExternalSyntheticLambda0(2, this));
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Companion {
        public final KSerializer serializer() {
            return GrowthUserImpact$$serializer.INSTANCE;
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    @Serializable
    public final class EditDateRange {
        public static final Companion Companion = new Companion();
        public final int days;
        public final String end;
        public final String start;

        /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
        public final class Companion {
            public final KSerializer serializer() {
                return GrowthUserImpact$EditDateRange$$serializer.INSTANCE;
            }
        }

        public /* synthetic */ EditDateRange(int i, int i2, String str, String str2) {
            if ((i & 1) == 0) {
                this.start = "";
            } else {
                this.start = str;
            }
            if ((i & 2) == 0) {
                this.end = "";
            } else {
                this.end = str2;
            }
            if ((i & 4) == 0) {
                this.days = 0;
            } else {
                this.days = i2;
            }
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    @Serializable
    public final class EditStreak {
        public static final Companion Companion = new Companion();
        public final EditDateRange datePeriod;
        public final int totalEditCountForPeriod;

        /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
        public final class Companion {
            public final KSerializer serializer() {
                return GrowthUserImpact$EditStreak$$serializer.INSTANCE;
            }
        }

        public /* synthetic */ EditStreak(int i, EditDateRange editDateRange, int i2) {
            this.datePeriod = (i & 1) == 0 ? null : editDateRange;
            if ((i & 2) == 0) {
                this.totalEditCountForPeriod = 0;
            } else {
                this.totalEditCountForPeriod = i2;
            }
        }
    }

    public GrowthUserImpact(int i, int i2, int i3, String str, int i4, int i5, JsonElement jsonElement, JsonElement jsonElement2, JsonElement jsonElement3, int i6, int i7, int i8, int i9, long j, int i10, JsonElement jsonElement4, JsonElement jsonElement5, long j2, JsonElement jsonElement6, Map map) {
        final int i11 = 0;
        if ((i & 1) == 0) {
            this.version = 0;
        } else {
            this.version = i2;
        }
        if ((i & 2) == 0) {
            this.userId = 0;
        } else {
            this.userId = i3;
        }
        if ((i & 4) == 0) {
            this.userName = "";
        } else {
            this.userName = str;
        }
        if ((i & 8) == 0) {
            this.receivedThanksCount = 0;
        } else {
            this.receivedThanksCount = i4;
        }
        if ((i & 16) == 0) {
            this.givenThanksCount = 0;
        } else {
            this.givenThanksCount = i5;
        }
        if ((i & 32) == 0) {
            this.mEditCountByNamespace = null;
        } else {
            this.mEditCountByNamespace = jsonElement;
        }
        if ((i & 64) == 0) {
            this.mEditCountByDay = null;
        } else {
            this.mEditCountByDay = jsonElement2;
        }
        if ((i & 128) == 0) {
            this.mEditCountByTaskType = null;
        } else {
            this.mEditCountByTaskType = jsonElement3;
        }
        if ((i & 256) == 0) {
            this.totalUserEditCount = 0;
        } else {
            this.totalUserEditCount = i6;
        }
        if ((i & 512) == 0) {
            this.totalEditsCount = 0;
        } else {
            this.totalEditsCount = i7;
        }
        if ((i & 1024) == 0) {
            this.newcomerTaskEditCount = 0;
        } else {
            this.newcomerTaskEditCount = i8;
        }
        if ((i & 2048) == 0) {
            this.revertedEditCount = 0;
        } else {
            this.revertedEditCount = i9;
        }
        if ((i & 4096) == 0) {
            this.lastEditTimestamp = 0L;
        } else {
            this.lastEditTimestamp = j;
        }
        if ((i & 8192) == 0) {
            this.totalArticlesCreatedCount = 0;
        } else {
            this.totalArticlesCreatedCount = i10;
        }
        if ((i & 16384) == 0) {
            this.mLongestEditingStreak = null;
        } else {
            this.mLongestEditingStreak = jsonElement4;
        }
        if ((32768 & i) == 0) {
            this.mDailyTotalViews = null;
        } else {
            this.mDailyTotalViews = jsonElement5;
        }
        this.totalPageviewsCount = (65536 & i) != 0 ? j2 : 0L;
        if ((131072 & i) == 0) {
            this.mTopViewedArticles = null;
        } else {
            this.mTopViewedArticles = jsonElement6;
        }
        new SynchronizedLazyImpl(new Function0(this) { // from class: org.wikipedia.dataclient.growthtasks.GrowthUserImpact$$ExternalSyntheticLambda1
            public final /* synthetic */ GrowthUserImpact f$0;

            {
                this.f$0 = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i12 = i11;
                EmptyMap emptyMap = EmptyMap.INSTANCE;
                GrowthUserImpact growthUserImpact = this.f$0;
                switch (i12) {
                    case 0:
                        JsonElement jsonElement7 = growthUserImpact.mEditCountByNamespace;
                        if (!(jsonElement7 instanceof JsonObject)) {
                            return emptyMap;
                        }
                        JsonImpl jsonImpl = JsonUtil.json;
                        jsonImpl.getClass();
                        IntSerializer intSerializer = IntSerializer.INSTANCE;
                        return (Map) jsonImpl.decodeFromJsonElement(new HashMapSerializer(intSerializer, intSerializer, 1), jsonElement7);
                    case 1:
                        Map map2 = (Map) growthUserImpact.groupEditsByMonth$delegate.getValue();
                        String localDate = LocalDate.now().minusMonths(1L).toString();
                        localDate.getClass();
                        Integer num = (Integer) map2.get(localDate.substring(0, 7));
                        return Integer.valueOf(num != null ? num.intValue() : 0);
                    case 2:
                        LocalDate minusDays = LocalDate.now().minusDays(30L);
                        IntRange intRange = new IntRange(0, 30, 1);
                        int mapCapacity = MapsKt__MapsKt.mapCapacity(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(intRange, 10));
                        if (mapCapacity < 16) {
                            mapCapacity = 16;
                        }
                        LinkedHashMap linkedHashMap = new LinkedHashMap(mapCapacity);
                        Iterator it = intRange.iterator();
                        while (((IntProgressionIterator) it).hasNext) {
                            String localDate2 = minusDays.plusDays(((IntIterator) it).nextInt()).toString();
                            localDate2.getClass();
                            Integer num2 = (Integer) ((Map) growthUserImpact.editCountByDay$delegate.getValue()).get(localDate2);
                            linkedHashMap.put(localDate2, Integer.valueOf(num2 != null ? num2.intValue() : 0));
                        }
                        return linkedHashMap;
                    case 3:
                        return DateUtils.getRelativeTimeSpanString(growthUserImpact.lastEditTimestamp * 1000, System.currentTimeMillis(), 0L).toString();
                    case 4:
                        JsonElement jsonElement8 = growthUserImpact.mEditCountByDay;
                        if (!(jsonElement8 instanceof JsonObject)) {
                            return emptyMap;
                        }
                        JsonImpl jsonImpl2 = JsonUtil.json;
                        jsonImpl2.getClass();
                        return (Map) jsonImpl2.decodeFromJsonElement(new HashMapSerializer(StringSerializer.INSTANCE, IntSerializer.INSTANCE, 1), jsonElement8);
                    case 5:
                        JsonElement jsonElement9 = growthUserImpact.mEditCountByTaskType;
                        if (!(jsonElement9 instanceof JsonObject)) {
                            return emptyMap;
                        }
                        JsonImpl jsonImpl3 = JsonUtil.json;
                        jsonImpl3.getClass();
                        return (Map) jsonImpl3.decodeFromJsonElement(new HashMapSerializer(StringSerializer.INSTANCE, IntSerializer.INSTANCE, 1), jsonElement9);
                    case 6:
                        JsonElement jsonElement10 = growthUserImpact.mDailyTotalViews;
                        if (!(jsonElement10 instanceof JsonObject)) {
                            return emptyMap;
                        }
                        JsonImpl jsonImpl4 = JsonUtil.json;
                        jsonImpl4.getClass();
                        return (Map) jsonImpl4.decodeFromJsonElement(new HashMapSerializer(StringSerializer.INSTANCE, IntSerializer.INSTANCE, 1), jsonElement10);
                    case 7:
                        JsonElement jsonElement11 = growthUserImpact.mTopViewedArticles;
                        if (!(jsonElement11 instanceof JsonObject)) {
                            return emptyMap;
                        }
                        JsonImpl jsonImpl5 = JsonUtil.json;
                        jsonImpl5.getClass();
                        return (Map) jsonImpl5.decodeFromJsonElement(new HashMapSerializer(StringSerializer.INSTANCE, GrowthUserImpact.ArticleViews.Companion.serializer(), 1), jsonElement11);
                    case 8:
                        JsonElement jsonElement12 = growthUserImpact.mLongestEditingStreak;
                        if (!(jsonElement12 instanceof JsonObject)) {
                            return null;
                        }
                        JsonImpl jsonImpl6 = JsonUtil.json;
                        jsonImpl6.getClass();
                        return (GrowthUserImpact.EditStreak) jsonImpl6.decodeFromJsonElement(UnsignedKt.getNullable(GrowthUserImpact.EditStreak.Companion.serializer()), jsonElement12);
                    case 9:
                        Set entrySet = ((Map) growthUserImpact.editCountByDay$delegate.getValue()).entrySet();
                        LinkedHashMap linkedHashMap2 = new LinkedHashMap();
                        for (Object obj : entrySet) {
                            String substring = ((String) ((Map.Entry) obj).getKey()).substring(0, 7);
                            Object obj2 = linkedHashMap2.get(substring);
                            if (obj2 == null) {
                                obj2 = new ArrayList();
                                linkedHashMap2.put(substring, obj2);
                            }
                            ((List) obj2).add(obj);
                        }
                        LinkedHashMap linkedHashMap3 = new LinkedHashMap(MapsKt__MapsKt.mapCapacity(linkedHashMap2.size()));
                        for (Map.Entry entry : linkedHashMap2.entrySet()) {
                            Object key = entry.getKey();
                            Iterator it2 = ((Iterable) entry.getValue()).iterator();
                            int i13 = 0;
                            while (it2.hasNext()) {
                                i13 += ((Number) ((Map.Entry) it2.next()).getValue()).intValue();
                            }
                            linkedHashMap3.put(key, Integer.valueOf(i13));
                        }
                        return linkedHashMap3;
                    default:
                        Map map3 = (Map) growthUserImpact.groupEditsByMonth$delegate.getValue();
                        String localDate3 = LocalDate.now().toString();
                        localDate3.getClass();
                        Integer num3 = (Integer) map3.get(localDate3.substring(0, 7));
                        return Integer.valueOf(num3 != null ? num3.intValue() : 0);
                }
            }
        });
        final int i12 = 4;
        this.editCountByDay$delegate = new SynchronizedLazyImpl(new Function0(this) { // from class: org.wikipedia.dataclient.growthtasks.GrowthUserImpact$$ExternalSyntheticLambda1
            public final /* synthetic */ GrowthUserImpact f$0;

            {
                this.f$0 = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i122 = i12;
                EmptyMap emptyMap = EmptyMap.INSTANCE;
                GrowthUserImpact growthUserImpact = this.f$0;
                switch (i122) {
                    case 0:
                        JsonElement jsonElement7 = growthUserImpact.mEditCountByNamespace;
                        if (!(jsonElement7 instanceof JsonObject)) {
                            return emptyMap;
                        }
                        JsonImpl jsonImpl = JsonUtil.json;
                        jsonImpl.getClass();
                        IntSerializer intSerializer = IntSerializer.INSTANCE;
                        return (Map) jsonImpl.decodeFromJsonElement(new HashMapSerializer(intSerializer, intSerializer, 1), jsonElement7);
                    case 1:
                        Map map2 = (Map) growthUserImpact.groupEditsByMonth$delegate.getValue();
                        String localDate = LocalDate.now().minusMonths(1L).toString();
                        localDate.getClass();
                        Integer num = (Integer) map2.get(localDate.substring(0, 7));
                        return Integer.valueOf(num != null ? num.intValue() : 0);
                    case 2:
                        LocalDate minusDays = LocalDate.now().minusDays(30L);
                        IntRange intRange = new IntRange(0, 30, 1);
                        int mapCapacity = MapsKt__MapsKt.mapCapacity(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(intRange, 10));
                        if (mapCapacity < 16) {
                            mapCapacity = 16;
                        }
                        LinkedHashMap linkedHashMap = new LinkedHashMap(mapCapacity);
                        Iterator it = intRange.iterator();
                        while (((IntProgressionIterator) it).hasNext) {
                            String localDate2 = minusDays.plusDays(((IntIterator) it).nextInt()).toString();
                            localDate2.getClass();
                            Integer num2 = (Integer) ((Map) growthUserImpact.editCountByDay$delegate.getValue()).get(localDate2);
                            linkedHashMap.put(localDate2, Integer.valueOf(num2 != null ? num2.intValue() : 0));
                        }
                        return linkedHashMap;
                    case 3:
                        return DateUtils.getRelativeTimeSpanString(growthUserImpact.lastEditTimestamp * 1000, System.currentTimeMillis(), 0L).toString();
                    case 4:
                        JsonElement jsonElement8 = growthUserImpact.mEditCountByDay;
                        if (!(jsonElement8 instanceof JsonObject)) {
                            return emptyMap;
                        }
                        JsonImpl jsonImpl2 = JsonUtil.json;
                        jsonImpl2.getClass();
                        return (Map) jsonImpl2.decodeFromJsonElement(new HashMapSerializer(StringSerializer.INSTANCE, IntSerializer.INSTANCE, 1), jsonElement8);
                    case 5:
                        JsonElement jsonElement9 = growthUserImpact.mEditCountByTaskType;
                        if (!(jsonElement9 instanceof JsonObject)) {
                            return emptyMap;
                        }
                        JsonImpl jsonImpl3 = JsonUtil.json;
                        jsonImpl3.getClass();
                        return (Map) jsonImpl3.decodeFromJsonElement(new HashMapSerializer(StringSerializer.INSTANCE, IntSerializer.INSTANCE, 1), jsonElement9);
                    case 6:
                        JsonElement jsonElement10 = growthUserImpact.mDailyTotalViews;
                        if (!(jsonElement10 instanceof JsonObject)) {
                            return emptyMap;
                        }
                        JsonImpl jsonImpl4 = JsonUtil.json;
                        jsonImpl4.getClass();
                        return (Map) jsonImpl4.decodeFromJsonElement(new HashMapSerializer(StringSerializer.INSTANCE, IntSerializer.INSTANCE, 1), jsonElement10);
                    case 7:
                        JsonElement jsonElement11 = growthUserImpact.mTopViewedArticles;
                        if (!(jsonElement11 instanceof JsonObject)) {
                            return emptyMap;
                        }
                        JsonImpl jsonImpl5 = JsonUtil.json;
                        jsonImpl5.getClass();
                        return (Map) jsonImpl5.decodeFromJsonElement(new HashMapSerializer(StringSerializer.INSTANCE, GrowthUserImpact.ArticleViews.Companion.serializer(), 1), jsonElement11);
                    case 8:
                        JsonElement jsonElement12 = growthUserImpact.mLongestEditingStreak;
                        if (!(jsonElement12 instanceof JsonObject)) {
                            return null;
                        }
                        JsonImpl jsonImpl6 = JsonUtil.json;
                        jsonImpl6.getClass();
                        return (GrowthUserImpact.EditStreak) jsonImpl6.decodeFromJsonElement(UnsignedKt.getNullable(GrowthUserImpact.EditStreak.Companion.serializer()), jsonElement12);
                    case 9:
                        Set entrySet = ((Map) growthUserImpact.editCountByDay$delegate.getValue()).entrySet();
                        LinkedHashMap linkedHashMap2 = new LinkedHashMap();
                        for (Object obj : entrySet) {
                            String substring = ((String) ((Map.Entry) obj).getKey()).substring(0, 7);
                            Object obj2 = linkedHashMap2.get(substring);
                            if (obj2 == null) {
                                obj2 = new ArrayList();
                                linkedHashMap2.put(substring, obj2);
                            }
                            ((List) obj2).add(obj);
                        }
                        LinkedHashMap linkedHashMap3 = new LinkedHashMap(MapsKt__MapsKt.mapCapacity(linkedHashMap2.size()));
                        for (Map.Entry entry : linkedHashMap2.entrySet()) {
                            Object key = entry.getKey();
                            Iterator it2 = ((Iterable) entry.getValue()).iterator();
                            int i13 = 0;
                            while (it2.hasNext()) {
                                i13 += ((Number) ((Map.Entry) it2.next()).getValue()).intValue();
                            }
                            linkedHashMap3.put(key, Integer.valueOf(i13));
                        }
                        return linkedHashMap3;
                    default:
                        Map map3 = (Map) growthUserImpact.groupEditsByMonth$delegate.getValue();
                        String localDate3 = LocalDate.now().toString();
                        localDate3.getClass();
                        Integer num3 = (Integer) map3.get(localDate3.substring(0, 7));
                        return Integer.valueOf(num3 != null ? num3.intValue() : 0);
                }
            }
        });
        final int i13 = 5;
        new SynchronizedLazyImpl(new Function0(this) { // from class: org.wikipedia.dataclient.growthtasks.GrowthUserImpact$$ExternalSyntheticLambda1
            public final /* synthetic */ GrowthUserImpact f$0;

            {
                this.f$0 = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i122 = i13;
                EmptyMap emptyMap = EmptyMap.INSTANCE;
                GrowthUserImpact growthUserImpact = this.f$0;
                switch (i122) {
                    case 0:
                        JsonElement jsonElement7 = growthUserImpact.mEditCountByNamespace;
                        if (!(jsonElement7 instanceof JsonObject)) {
                            return emptyMap;
                        }
                        JsonImpl jsonImpl = JsonUtil.json;
                        jsonImpl.getClass();
                        IntSerializer intSerializer = IntSerializer.INSTANCE;
                        return (Map) jsonImpl.decodeFromJsonElement(new HashMapSerializer(intSerializer, intSerializer, 1), jsonElement7);
                    case 1:
                        Map map2 = (Map) growthUserImpact.groupEditsByMonth$delegate.getValue();
                        String localDate = LocalDate.now().minusMonths(1L).toString();
                        localDate.getClass();
                        Integer num = (Integer) map2.get(localDate.substring(0, 7));
                        return Integer.valueOf(num != null ? num.intValue() : 0);
                    case 2:
                        LocalDate minusDays = LocalDate.now().minusDays(30L);
                        IntRange intRange = new IntRange(0, 30, 1);
                        int mapCapacity = MapsKt__MapsKt.mapCapacity(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(intRange, 10));
                        if (mapCapacity < 16) {
                            mapCapacity = 16;
                        }
                        LinkedHashMap linkedHashMap = new LinkedHashMap(mapCapacity);
                        Iterator it = intRange.iterator();
                        while (((IntProgressionIterator) it).hasNext) {
                            String localDate2 = minusDays.plusDays(((IntIterator) it).nextInt()).toString();
                            localDate2.getClass();
                            Integer num2 = (Integer) ((Map) growthUserImpact.editCountByDay$delegate.getValue()).get(localDate2);
                            linkedHashMap.put(localDate2, Integer.valueOf(num2 != null ? num2.intValue() : 0));
                        }
                        return linkedHashMap;
                    case 3:
                        return DateUtils.getRelativeTimeSpanString(growthUserImpact.lastEditTimestamp * 1000, System.currentTimeMillis(), 0L).toString();
                    case 4:
                        JsonElement jsonElement8 = growthUserImpact.mEditCountByDay;
                        if (!(jsonElement8 instanceof JsonObject)) {
                            return emptyMap;
                        }
                        JsonImpl jsonImpl2 = JsonUtil.json;
                        jsonImpl2.getClass();
                        return (Map) jsonImpl2.decodeFromJsonElement(new HashMapSerializer(StringSerializer.INSTANCE, IntSerializer.INSTANCE, 1), jsonElement8);
                    case 5:
                        JsonElement jsonElement9 = growthUserImpact.mEditCountByTaskType;
                        if (!(jsonElement9 instanceof JsonObject)) {
                            return emptyMap;
                        }
                        JsonImpl jsonImpl3 = JsonUtil.json;
                        jsonImpl3.getClass();
                        return (Map) jsonImpl3.decodeFromJsonElement(new HashMapSerializer(StringSerializer.INSTANCE, IntSerializer.INSTANCE, 1), jsonElement9);
                    case 6:
                        JsonElement jsonElement10 = growthUserImpact.mDailyTotalViews;
                        if (!(jsonElement10 instanceof JsonObject)) {
                            return emptyMap;
                        }
                        JsonImpl jsonImpl4 = JsonUtil.json;
                        jsonImpl4.getClass();
                        return (Map) jsonImpl4.decodeFromJsonElement(new HashMapSerializer(StringSerializer.INSTANCE, IntSerializer.INSTANCE, 1), jsonElement10);
                    case 7:
                        JsonElement jsonElement11 = growthUserImpact.mTopViewedArticles;
                        if (!(jsonElement11 instanceof JsonObject)) {
                            return emptyMap;
                        }
                        JsonImpl jsonImpl5 = JsonUtil.json;
                        jsonImpl5.getClass();
                        return (Map) jsonImpl5.decodeFromJsonElement(new HashMapSerializer(StringSerializer.INSTANCE, GrowthUserImpact.ArticleViews.Companion.serializer(), 1), jsonElement11);
                    case 8:
                        JsonElement jsonElement12 = growthUserImpact.mLongestEditingStreak;
                        if (!(jsonElement12 instanceof JsonObject)) {
                            return null;
                        }
                        JsonImpl jsonImpl6 = JsonUtil.json;
                        jsonImpl6.getClass();
                        return (GrowthUserImpact.EditStreak) jsonImpl6.decodeFromJsonElement(UnsignedKt.getNullable(GrowthUserImpact.EditStreak.Companion.serializer()), jsonElement12);
                    case 9:
                        Set entrySet = ((Map) growthUserImpact.editCountByDay$delegate.getValue()).entrySet();
                        LinkedHashMap linkedHashMap2 = new LinkedHashMap();
                        for (Object obj : entrySet) {
                            String substring = ((String) ((Map.Entry) obj).getKey()).substring(0, 7);
                            Object obj2 = linkedHashMap2.get(substring);
                            if (obj2 == null) {
                                obj2 = new ArrayList();
                                linkedHashMap2.put(substring, obj2);
                            }
                            ((List) obj2).add(obj);
                        }
                        LinkedHashMap linkedHashMap3 = new LinkedHashMap(MapsKt__MapsKt.mapCapacity(linkedHashMap2.size()));
                        for (Map.Entry entry : linkedHashMap2.entrySet()) {
                            Object key = entry.getKey();
                            Iterator it2 = ((Iterable) entry.getValue()).iterator();
                            int i132 = 0;
                            while (it2.hasNext()) {
                                i132 += ((Number) ((Map.Entry) it2.next()).getValue()).intValue();
                            }
                            linkedHashMap3.put(key, Integer.valueOf(i132));
                        }
                        return linkedHashMap3;
                    default:
                        Map map3 = (Map) growthUserImpact.groupEditsByMonth$delegate.getValue();
                        String localDate3 = LocalDate.now().toString();
                        localDate3.getClass();
                        Integer num3 = (Integer) map3.get(localDate3.substring(0, 7));
                        return Integer.valueOf(num3 != null ? num3.intValue() : 0);
                }
            }
        });
        final int i14 = 6;
        this.dailyTotalViews$delegate = new SynchronizedLazyImpl(new Function0(this) { // from class: org.wikipedia.dataclient.growthtasks.GrowthUserImpact$$ExternalSyntheticLambda1
            public final /* synthetic */ GrowthUserImpact f$0;

            {
                this.f$0 = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i122 = i14;
                EmptyMap emptyMap = EmptyMap.INSTANCE;
                GrowthUserImpact growthUserImpact = this.f$0;
                switch (i122) {
                    case 0:
                        JsonElement jsonElement7 = growthUserImpact.mEditCountByNamespace;
                        if (!(jsonElement7 instanceof JsonObject)) {
                            return emptyMap;
                        }
                        JsonImpl jsonImpl = JsonUtil.json;
                        jsonImpl.getClass();
                        IntSerializer intSerializer = IntSerializer.INSTANCE;
                        return (Map) jsonImpl.decodeFromJsonElement(new HashMapSerializer(intSerializer, intSerializer, 1), jsonElement7);
                    case 1:
                        Map map2 = (Map) growthUserImpact.groupEditsByMonth$delegate.getValue();
                        String localDate = LocalDate.now().minusMonths(1L).toString();
                        localDate.getClass();
                        Integer num = (Integer) map2.get(localDate.substring(0, 7));
                        return Integer.valueOf(num != null ? num.intValue() : 0);
                    case 2:
                        LocalDate minusDays = LocalDate.now().minusDays(30L);
                        IntRange intRange = new IntRange(0, 30, 1);
                        int mapCapacity = MapsKt__MapsKt.mapCapacity(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(intRange, 10));
                        if (mapCapacity < 16) {
                            mapCapacity = 16;
                        }
                        LinkedHashMap linkedHashMap = new LinkedHashMap(mapCapacity);
                        Iterator it = intRange.iterator();
                        while (((IntProgressionIterator) it).hasNext) {
                            String localDate2 = minusDays.plusDays(((IntIterator) it).nextInt()).toString();
                            localDate2.getClass();
                            Integer num2 = (Integer) ((Map) growthUserImpact.editCountByDay$delegate.getValue()).get(localDate2);
                            linkedHashMap.put(localDate2, Integer.valueOf(num2 != null ? num2.intValue() : 0));
                        }
                        return linkedHashMap;
                    case 3:
                        return DateUtils.getRelativeTimeSpanString(growthUserImpact.lastEditTimestamp * 1000, System.currentTimeMillis(), 0L).toString();
                    case 4:
                        JsonElement jsonElement8 = growthUserImpact.mEditCountByDay;
                        if (!(jsonElement8 instanceof JsonObject)) {
                            return emptyMap;
                        }
                        JsonImpl jsonImpl2 = JsonUtil.json;
                        jsonImpl2.getClass();
                        return (Map) jsonImpl2.decodeFromJsonElement(new HashMapSerializer(StringSerializer.INSTANCE, IntSerializer.INSTANCE, 1), jsonElement8);
                    case 5:
                        JsonElement jsonElement9 = growthUserImpact.mEditCountByTaskType;
                        if (!(jsonElement9 instanceof JsonObject)) {
                            return emptyMap;
                        }
                        JsonImpl jsonImpl3 = JsonUtil.json;
                        jsonImpl3.getClass();
                        return (Map) jsonImpl3.decodeFromJsonElement(new HashMapSerializer(StringSerializer.INSTANCE, IntSerializer.INSTANCE, 1), jsonElement9);
                    case 6:
                        JsonElement jsonElement10 = growthUserImpact.mDailyTotalViews;
                        if (!(jsonElement10 instanceof JsonObject)) {
                            return emptyMap;
                        }
                        JsonImpl jsonImpl4 = JsonUtil.json;
                        jsonImpl4.getClass();
                        return (Map) jsonImpl4.decodeFromJsonElement(new HashMapSerializer(StringSerializer.INSTANCE, IntSerializer.INSTANCE, 1), jsonElement10);
                    case 7:
                        JsonElement jsonElement11 = growthUserImpact.mTopViewedArticles;
                        if (!(jsonElement11 instanceof JsonObject)) {
                            return emptyMap;
                        }
                        JsonImpl jsonImpl5 = JsonUtil.json;
                        jsonImpl5.getClass();
                        return (Map) jsonImpl5.decodeFromJsonElement(new HashMapSerializer(StringSerializer.INSTANCE, GrowthUserImpact.ArticleViews.Companion.serializer(), 1), jsonElement11);
                    case 8:
                        JsonElement jsonElement12 = growthUserImpact.mLongestEditingStreak;
                        if (!(jsonElement12 instanceof JsonObject)) {
                            return null;
                        }
                        JsonImpl jsonImpl6 = JsonUtil.json;
                        jsonImpl6.getClass();
                        return (GrowthUserImpact.EditStreak) jsonImpl6.decodeFromJsonElement(UnsignedKt.getNullable(GrowthUserImpact.EditStreak.Companion.serializer()), jsonElement12);
                    case 9:
                        Set entrySet = ((Map) growthUserImpact.editCountByDay$delegate.getValue()).entrySet();
                        LinkedHashMap linkedHashMap2 = new LinkedHashMap();
                        for (Object obj : entrySet) {
                            String substring = ((String) ((Map.Entry) obj).getKey()).substring(0, 7);
                            Object obj2 = linkedHashMap2.get(substring);
                            if (obj2 == null) {
                                obj2 = new ArrayList();
                                linkedHashMap2.put(substring, obj2);
                            }
                            ((List) obj2).add(obj);
                        }
                        LinkedHashMap linkedHashMap3 = new LinkedHashMap(MapsKt__MapsKt.mapCapacity(linkedHashMap2.size()));
                        for (Map.Entry entry : linkedHashMap2.entrySet()) {
                            Object key = entry.getKey();
                            Iterator it2 = ((Iterable) entry.getValue()).iterator();
                            int i132 = 0;
                            while (it2.hasNext()) {
                                i132 += ((Number) ((Map.Entry) it2.next()).getValue()).intValue();
                            }
                            linkedHashMap3.put(key, Integer.valueOf(i132));
                        }
                        return linkedHashMap3;
                    default:
                        Map map3 = (Map) growthUserImpact.groupEditsByMonth$delegate.getValue();
                        String localDate3 = LocalDate.now().toString();
                        localDate3.getClass();
                        Integer num3 = (Integer) map3.get(localDate3.substring(0, 7));
                        return Integer.valueOf(num3 != null ? num3.intValue() : 0);
                }
            }
        });
        final int i15 = 7;
        this.topViewedArticles$delegate = new SynchronizedLazyImpl(new Function0(this) { // from class: org.wikipedia.dataclient.growthtasks.GrowthUserImpact$$ExternalSyntheticLambda1
            public final /* synthetic */ GrowthUserImpact f$0;

            {
                this.f$0 = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i122 = i15;
                EmptyMap emptyMap = EmptyMap.INSTANCE;
                GrowthUserImpact growthUserImpact = this.f$0;
                switch (i122) {
                    case 0:
                        JsonElement jsonElement7 = growthUserImpact.mEditCountByNamespace;
                        if (!(jsonElement7 instanceof JsonObject)) {
                            return emptyMap;
                        }
                        JsonImpl jsonImpl = JsonUtil.json;
                        jsonImpl.getClass();
                        IntSerializer intSerializer = IntSerializer.INSTANCE;
                        return (Map) jsonImpl.decodeFromJsonElement(new HashMapSerializer(intSerializer, intSerializer, 1), jsonElement7);
                    case 1:
                        Map map2 = (Map) growthUserImpact.groupEditsByMonth$delegate.getValue();
                        String localDate = LocalDate.now().minusMonths(1L).toString();
                        localDate.getClass();
                        Integer num = (Integer) map2.get(localDate.substring(0, 7));
                        return Integer.valueOf(num != null ? num.intValue() : 0);
                    case 2:
                        LocalDate minusDays = LocalDate.now().minusDays(30L);
                        IntRange intRange = new IntRange(0, 30, 1);
                        int mapCapacity = MapsKt__MapsKt.mapCapacity(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(intRange, 10));
                        if (mapCapacity < 16) {
                            mapCapacity = 16;
                        }
                        LinkedHashMap linkedHashMap = new LinkedHashMap(mapCapacity);
                        Iterator it = intRange.iterator();
                        while (((IntProgressionIterator) it).hasNext) {
                            String localDate2 = minusDays.plusDays(((IntIterator) it).nextInt()).toString();
                            localDate2.getClass();
                            Integer num2 = (Integer) ((Map) growthUserImpact.editCountByDay$delegate.getValue()).get(localDate2);
                            linkedHashMap.put(localDate2, Integer.valueOf(num2 != null ? num2.intValue() : 0));
                        }
                        return linkedHashMap;
                    case 3:
                        return DateUtils.getRelativeTimeSpanString(growthUserImpact.lastEditTimestamp * 1000, System.currentTimeMillis(), 0L).toString();
                    case 4:
                        JsonElement jsonElement8 = growthUserImpact.mEditCountByDay;
                        if (!(jsonElement8 instanceof JsonObject)) {
                            return emptyMap;
                        }
                        JsonImpl jsonImpl2 = JsonUtil.json;
                        jsonImpl2.getClass();
                        return (Map) jsonImpl2.decodeFromJsonElement(new HashMapSerializer(StringSerializer.INSTANCE, IntSerializer.INSTANCE, 1), jsonElement8);
                    case 5:
                        JsonElement jsonElement9 = growthUserImpact.mEditCountByTaskType;
                        if (!(jsonElement9 instanceof JsonObject)) {
                            return emptyMap;
                        }
                        JsonImpl jsonImpl3 = JsonUtil.json;
                        jsonImpl3.getClass();
                        return (Map) jsonImpl3.decodeFromJsonElement(new HashMapSerializer(StringSerializer.INSTANCE, IntSerializer.INSTANCE, 1), jsonElement9);
                    case 6:
                        JsonElement jsonElement10 = growthUserImpact.mDailyTotalViews;
                        if (!(jsonElement10 instanceof JsonObject)) {
                            return emptyMap;
                        }
                        JsonImpl jsonImpl4 = JsonUtil.json;
                        jsonImpl4.getClass();
                        return (Map) jsonImpl4.decodeFromJsonElement(new HashMapSerializer(StringSerializer.INSTANCE, IntSerializer.INSTANCE, 1), jsonElement10);
                    case 7:
                        JsonElement jsonElement11 = growthUserImpact.mTopViewedArticles;
                        if (!(jsonElement11 instanceof JsonObject)) {
                            return emptyMap;
                        }
                        JsonImpl jsonImpl5 = JsonUtil.json;
                        jsonImpl5.getClass();
                        return (Map) jsonImpl5.decodeFromJsonElement(new HashMapSerializer(StringSerializer.INSTANCE, GrowthUserImpact.ArticleViews.Companion.serializer(), 1), jsonElement11);
                    case 8:
                        JsonElement jsonElement12 = growthUserImpact.mLongestEditingStreak;
                        if (!(jsonElement12 instanceof JsonObject)) {
                            return null;
                        }
                        JsonImpl jsonImpl6 = JsonUtil.json;
                        jsonImpl6.getClass();
                        return (GrowthUserImpact.EditStreak) jsonImpl6.decodeFromJsonElement(UnsignedKt.getNullable(GrowthUserImpact.EditStreak.Companion.serializer()), jsonElement12);
                    case 9:
                        Set entrySet = ((Map) growthUserImpact.editCountByDay$delegate.getValue()).entrySet();
                        LinkedHashMap linkedHashMap2 = new LinkedHashMap();
                        for (Object obj : entrySet) {
                            String substring = ((String) ((Map.Entry) obj).getKey()).substring(0, 7);
                            Object obj2 = linkedHashMap2.get(substring);
                            if (obj2 == null) {
                                obj2 = new ArrayList();
                                linkedHashMap2.put(substring, obj2);
                            }
                            ((List) obj2).add(obj);
                        }
                        LinkedHashMap linkedHashMap3 = new LinkedHashMap(MapsKt__MapsKt.mapCapacity(linkedHashMap2.size()));
                        for (Map.Entry entry : linkedHashMap2.entrySet()) {
                            Object key = entry.getKey();
                            Iterator it2 = ((Iterable) entry.getValue()).iterator();
                            int i132 = 0;
                            while (it2.hasNext()) {
                                i132 += ((Number) ((Map.Entry) it2.next()).getValue()).intValue();
                            }
                            linkedHashMap3.put(key, Integer.valueOf(i132));
                        }
                        return linkedHashMap3;
                    default:
                        Map map3 = (Map) growthUserImpact.groupEditsByMonth$delegate.getValue();
                        String localDate3 = LocalDate.now().toString();
                        localDate3.getClass();
                        Integer num3 = (Integer) map3.get(localDate3.substring(0, 7));
                        return Integer.valueOf(num3 != null ? num3.intValue() : 0);
                }
            }
        });
        final int i16 = 8;
        this.longestEditingStreak$delegate = new SynchronizedLazyImpl(new Function0(this) { // from class: org.wikipedia.dataclient.growthtasks.GrowthUserImpact$$ExternalSyntheticLambda1
            public final /* synthetic */ GrowthUserImpact f$0;

            {
                this.f$0 = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i122 = i16;
                EmptyMap emptyMap = EmptyMap.INSTANCE;
                GrowthUserImpact growthUserImpact = this.f$0;
                switch (i122) {
                    case 0:
                        JsonElement jsonElement7 = growthUserImpact.mEditCountByNamespace;
                        if (!(jsonElement7 instanceof JsonObject)) {
                            return emptyMap;
                        }
                        JsonImpl jsonImpl = JsonUtil.json;
                        jsonImpl.getClass();
                        IntSerializer intSerializer = IntSerializer.INSTANCE;
                        return (Map) jsonImpl.decodeFromJsonElement(new HashMapSerializer(intSerializer, intSerializer, 1), jsonElement7);
                    case 1:
                        Map map2 = (Map) growthUserImpact.groupEditsByMonth$delegate.getValue();
                        String localDate = LocalDate.now().minusMonths(1L).toString();
                        localDate.getClass();
                        Integer num = (Integer) map2.get(localDate.substring(0, 7));
                        return Integer.valueOf(num != null ? num.intValue() : 0);
                    case 2:
                        LocalDate minusDays = LocalDate.now().minusDays(30L);
                        IntRange intRange = new IntRange(0, 30, 1);
                        int mapCapacity = MapsKt__MapsKt.mapCapacity(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(intRange, 10));
                        if (mapCapacity < 16) {
                            mapCapacity = 16;
                        }
                        LinkedHashMap linkedHashMap = new LinkedHashMap(mapCapacity);
                        Iterator it = intRange.iterator();
                        while (((IntProgressionIterator) it).hasNext) {
                            String localDate2 = minusDays.plusDays(((IntIterator) it).nextInt()).toString();
                            localDate2.getClass();
                            Integer num2 = (Integer) ((Map) growthUserImpact.editCountByDay$delegate.getValue()).get(localDate2);
                            linkedHashMap.put(localDate2, Integer.valueOf(num2 != null ? num2.intValue() : 0));
                        }
                        return linkedHashMap;
                    case 3:
                        return DateUtils.getRelativeTimeSpanString(growthUserImpact.lastEditTimestamp * 1000, System.currentTimeMillis(), 0L).toString();
                    case 4:
                        JsonElement jsonElement8 = growthUserImpact.mEditCountByDay;
                        if (!(jsonElement8 instanceof JsonObject)) {
                            return emptyMap;
                        }
                        JsonImpl jsonImpl2 = JsonUtil.json;
                        jsonImpl2.getClass();
                        return (Map) jsonImpl2.decodeFromJsonElement(new HashMapSerializer(StringSerializer.INSTANCE, IntSerializer.INSTANCE, 1), jsonElement8);
                    case 5:
                        JsonElement jsonElement9 = growthUserImpact.mEditCountByTaskType;
                        if (!(jsonElement9 instanceof JsonObject)) {
                            return emptyMap;
                        }
                        JsonImpl jsonImpl3 = JsonUtil.json;
                        jsonImpl3.getClass();
                        return (Map) jsonImpl3.decodeFromJsonElement(new HashMapSerializer(StringSerializer.INSTANCE, IntSerializer.INSTANCE, 1), jsonElement9);
                    case 6:
                        JsonElement jsonElement10 = growthUserImpact.mDailyTotalViews;
                        if (!(jsonElement10 instanceof JsonObject)) {
                            return emptyMap;
                        }
                        JsonImpl jsonImpl4 = JsonUtil.json;
                        jsonImpl4.getClass();
                        return (Map) jsonImpl4.decodeFromJsonElement(new HashMapSerializer(StringSerializer.INSTANCE, IntSerializer.INSTANCE, 1), jsonElement10);
                    case 7:
                        JsonElement jsonElement11 = growthUserImpact.mTopViewedArticles;
                        if (!(jsonElement11 instanceof JsonObject)) {
                            return emptyMap;
                        }
                        JsonImpl jsonImpl5 = JsonUtil.json;
                        jsonImpl5.getClass();
                        return (Map) jsonImpl5.decodeFromJsonElement(new HashMapSerializer(StringSerializer.INSTANCE, GrowthUserImpact.ArticleViews.Companion.serializer(), 1), jsonElement11);
                    case 8:
                        JsonElement jsonElement12 = growthUserImpact.mLongestEditingStreak;
                        if (!(jsonElement12 instanceof JsonObject)) {
                            return null;
                        }
                        JsonImpl jsonImpl6 = JsonUtil.json;
                        jsonImpl6.getClass();
                        return (GrowthUserImpact.EditStreak) jsonImpl6.decodeFromJsonElement(UnsignedKt.getNullable(GrowthUserImpact.EditStreak.Companion.serializer()), jsonElement12);
                    case 9:
                        Set entrySet = ((Map) growthUserImpact.editCountByDay$delegate.getValue()).entrySet();
                        LinkedHashMap linkedHashMap2 = new LinkedHashMap();
                        for (Object obj : entrySet) {
                            String substring = ((String) ((Map.Entry) obj).getKey()).substring(0, 7);
                            Object obj2 = linkedHashMap2.get(substring);
                            if (obj2 == null) {
                                obj2 = new ArrayList();
                                linkedHashMap2.put(substring, obj2);
                            }
                            ((List) obj2).add(obj);
                        }
                        LinkedHashMap linkedHashMap3 = new LinkedHashMap(MapsKt__MapsKt.mapCapacity(linkedHashMap2.size()));
                        for (Map.Entry entry : linkedHashMap2.entrySet()) {
                            Object key = entry.getKey();
                            Iterator it2 = ((Iterable) entry.getValue()).iterator();
                            int i132 = 0;
                            while (it2.hasNext()) {
                                i132 += ((Number) ((Map.Entry) it2.next()).getValue()).intValue();
                            }
                            linkedHashMap3.put(key, Integer.valueOf(i132));
                        }
                        return linkedHashMap3;
                    default:
                        Map map3 = (Map) growthUserImpact.groupEditsByMonth$delegate.getValue();
                        String localDate3 = LocalDate.now().toString();
                        localDate3.getClass();
                        Integer num3 = (Integer) map3.get(localDate3.substring(0, 7));
                        return Integer.valueOf(num3 != null ? num3.intValue() : 0);
                }
            }
        });
        final int i17 = 9;
        this.groupEditsByMonth$delegate = new SynchronizedLazyImpl(new Function0(this) { // from class: org.wikipedia.dataclient.growthtasks.GrowthUserImpact$$ExternalSyntheticLambda1
            public final /* synthetic */ GrowthUserImpact f$0;

            {
                this.f$0 = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i122 = i17;
                EmptyMap emptyMap = EmptyMap.INSTANCE;
                GrowthUserImpact growthUserImpact = this.f$0;
                switch (i122) {
                    case 0:
                        JsonElement jsonElement7 = growthUserImpact.mEditCountByNamespace;
                        if (!(jsonElement7 instanceof JsonObject)) {
                            return emptyMap;
                        }
                        JsonImpl jsonImpl = JsonUtil.json;
                        jsonImpl.getClass();
                        IntSerializer intSerializer = IntSerializer.INSTANCE;
                        return (Map) jsonImpl.decodeFromJsonElement(new HashMapSerializer(intSerializer, intSerializer, 1), jsonElement7);
                    case 1:
                        Map map2 = (Map) growthUserImpact.groupEditsByMonth$delegate.getValue();
                        String localDate = LocalDate.now().minusMonths(1L).toString();
                        localDate.getClass();
                        Integer num = (Integer) map2.get(localDate.substring(0, 7));
                        return Integer.valueOf(num != null ? num.intValue() : 0);
                    case 2:
                        LocalDate minusDays = LocalDate.now().minusDays(30L);
                        IntRange intRange = new IntRange(0, 30, 1);
                        int mapCapacity = MapsKt__MapsKt.mapCapacity(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(intRange, 10));
                        if (mapCapacity < 16) {
                            mapCapacity = 16;
                        }
                        LinkedHashMap linkedHashMap = new LinkedHashMap(mapCapacity);
                        Iterator it = intRange.iterator();
                        while (((IntProgressionIterator) it).hasNext) {
                            String localDate2 = minusDays.plusDays(((IntIterator) it).nextInt()).toString();
                            localDate2.getClass();
                            Integer num2 = (Integer) ((Map) growthUserImpact.editCountByDay$delegate.getValue()).get(localDate2);
                            linkedHashMap.put(localDate2, Integer.valueOf(num2 != null ? num2.intValue() : 0));
                        }
                        return linkedHashMap;
                    case 3:
                        return DateUtils.getRelativeTimeSpanString(growthUserImpact.lastEditTimestamp * 1000, System.currentTimeMillis(), 0L).toString();
                    case 4:
                        JsonElement jsonElement8 = growthUserImpact.mEditCountByDay;
                        if (!(jsonElement8 instanceof JsonObject)) {
                            return emptyMap;
                        }
                        JsonImpl jsonImpl2 = JsonUtil.json;
                        jsonImpl2.getClass();
                        return (Map) jsonImpl2.decodeFromJsonElement(new HashMapSerializer(StringSerializer.INSTANCE, IntSerializer.INSTANCE, 1), jsonElement8);
                    case 5:
                        JsonElement jsonElement9 = growthUserImpact.mEditCountByTaskType;
                        if (!(jsonElement9 instanceof JsonObject)) {
                            return emptyMap;
                        }
                        JsonImpl jsonImpl3 = JsonUtil.json;
                        jsonImpl3.getClass();
                        return (Map) jsonImpl3.decodeFromJsonElement(new HashMapSerializer(StringSerializer.INSTANCE, IntSerializer.INSTANCE, 1), jsonElement9);
                    case 6:
                        JsonElement jsonElement10 = growthUserImpact.mDailyTotalViews;
                        if (!(jsonElement10 instanceof JsonObject)) {
                            return emptyMap;
                        }
                        JsonImpl jsonImpl4 = JsonUtil.json;
                        jsonImpl4.getClass();
                        return (Map) jsonImpl4.decodeFromJsonElement(new HashMapSerializer(StringSerializer.INSTANCE, IntSerializer.INSTANCE, 1), jsonElement10);
                    case 7:
                        JsonElement jsonElement11 = growthUserImpact.mTopViewedArticles;
                        if (!(jsonElement11 instanceof JsonObject)) {
                            return emptyMap;
                        }
                        JsonImpl jsonImpl5 = JsonUtil.json;
                        jsonImpl5.getClass();
                        return (Map) jsonImpl5.decodeFromJsonElement(new HashMapSerializer(StringSerializer.INSTANCE, GrowthUserImpact.ArticleViews.Companion.serializer(), 1), jsonElement11);
                    case 8:
                        JsonElement jsonElement12 = growthUserImpact.mLongestEditingStreak;
                        if (!(jsonElement12 instanceof JsonObject)) {
                            return null;
                        }
                        JsonImpl jsonImpl6 = JsonUtil.json;
                        jsonImpl6.getClass();
                        return (GrowthUserImpact.EditStreak) jsonImpl6.decodeFromJsonElement(UnsignedKt.getNullable(GrowthUserImpact.EditStreak.Companion.serializer()), jsonElement12);
                    case 9:
                        Set entrySet = ((Map) growthUserImpact.editCountByDay$delegate.getValue()).entrySet();
                        LinkedHashMap linkedHashMap2 = new LinkedHashMap();
                        for (Object obj : entrySet) {
                            String substring = ((String) ((Map.Entry) obj).getKey()).substring(0, 7);
                            Object obj2 = linkedHashMap2.get(substring);
                            if (obj2 == null) {
                                obj2 = new ArrayList();
                                linkedHashMap2.put(substring, obj2);
                            }
                            ((List) obj2).add(obj);
                        }
                        LinkedHashMap linkedHashMap3 = new LinkedHashMap(MapsKt__MapsKt.mapCapacity(linkedHashMap2.size()));
                        for (Map.Entry entry : linkedHashMap2.entrySet()) {
                            Object key = entry.getKey();
                            Iterator it2 = ((Iterable) entry.getValue()).iterator();
                            int i132 = 0;
                            while (it2.hasNext()) {
                                i132 += ((Number) ((Map.Entry) it2.next()).getValue()).intValue();
                            }
                            linkedHashMap3.put(key, Integer.valueOf(i132));
                        }
                        return linkedHashMap3;
                    default:
                        Map map3 = (Map) growthUserImpact.groupEditsByMonth$delegate.getValue();
                        String localDate3 = LocalDate.now().toString();
                        localDate3.getClass();
                        Integer num3 = (Integer) map3.get(localDate3.substring(0, 7));
                        return Integer.valueOf(num3 != null ? num3.intValue() : 0);
                }
            }
        });
        this.topViewedArticlesWithPageTitle = (i & 262144) == 0 ? EmptyMap.INSTANCE : map;
        final int i18 = 10;
        this.editsThisMonth$delegate = new SynchronizedLazyImpl(new Function0(this) { // from class: org.wikipedia.dataclient.growthtasks.GrowthUserImpact$$ExternalSyntheticLambda1
            public final /* synthetic */ GrowthUserImpact f$0;

            {
                this.f$0 = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i122 = i18;
                EmptyMap emptyMap = EmptyMap.INSTANCE;
                GrowthUserImpact growthUserImpact = this.f$0;
                switch (i122) {
                    case 0:
                        JsonElement jsonElement7 = growthUserImpact.mEditCountByNamespace;
                        if (!(jsonElement7 instanceof JsonObject)) {
                            return emptyMap;
                        }
                        JsonImpl jsonImpl = JsonUtil.json;
                        jsonImpl.getClass();
                        IntSerializer intSerializer = IntSerializer.INSTANCE;
                        return (Map) jsonImpl.decodeFromJsonElement(new HashMapSerializer(intSerializer, intSerializer, 1), jsonElement7);
                    case 1:
                        Map map2 = (Map) growthUserImpact.groupEditsByMonth$delegate.getValue();
                        String localDate = LocalDate.now().minusMonths(1L).toString();
                        localDate.getClass();
                        Integer num = (Integer) map2.get(localDate.substring(0, 7));
                        return Integer.valueOf(num != null ? num.intValue() : 0);
                    case 2:
                        LocalDate minusDays = LocalDate.now().minusDays(30L);
                        IntRange intRange = new IntRange(0, 30, 1);
                        int mapCapacity = MapsKt__MapsKt.mapCapacity(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(intRange, 10));
                        if (mapCapacity < 16) {
                            mapCapacity = 16;
                        }
                        LinkedHashMap linkedHashMap = new LinkedHashMap(mapCapacity);
                        Iterator it = intRange.iterator();
                        while (((IntProgressionIterator) it).hasNext) {
                            String localDate2 = minusDays.plusDays(((IntIterator) it).nextInt()).toString();
                            localDate2.getClass();
                            Integer num2 = (Integer) ((Map) growthUserImpact.editCountByDay$delegate.getValue()).get(localDate2);
                            linkedHashMap.put(localDate2, Integer.valueOf(num2 != null ? num2.intValue() : 0));
                        }
                        return linkedHashMap;
                    case 3:
                        return DateUtils.getRelativeTimeSpanString(growthUserImpact.lastEditTimestamp * 1000, System.currentTimeMillis(), 0L).toString();
                    case 4:
                        JsonElement jsonElement8 = growthUserImpact.mEditCountByDay;
                        if (!(jsonElement8 instanceof JsonObject)) {
                            return emptyMap;
                        }
                        JsonImpl jsonImpl2 = JsonUtil.json;
                        jsonImpl2.getClass();
                        return (Map) jsonImpl2.decodeFromJsonElement(new HashMapSerializer(StringSerializer.INSTANCE, IntSerializer.INSTANCE, 1), jsonElement8);
                    case 5:
                        JsonElement jsonElement9 = growthUserImpact.mEditCountByTaskType;
                        if (!(jsonElement9 instanceof JsonObject)) {
                            return emptyMap;
                        }
                        JsonImpl jsonImpl3 = JsonUtil.json;
                        jsonImpl3.getClass();
                        return (Map) jsonImpl3.decodeFromJsonElement(new HashMapSerializer(StringSerializer.INSTANCE, IntSerializer.INSTANCE, 1), jsonElement9);
                    case 6:
                        JsonElement jsonElement10 = growthUserImpact.mDailyTotalViews;
                        if (!(jsonElement10 instanceof JsonObject)) {
                            return emptyMap;
                        }
                        JsonImpl jsonImpl4 = JsonUtil.json;
                        jsonImpl4.getClass();
                        return (Map) jsonImpl4.decodeFromJsonElement(new HashMapSerializer(StringSerializer.INSTANCE, IntSerializer.INSTANCE, 1), jsonElement10);
                    case 7:
                        JsonElement jsonElement11 = growthUserImpact.mTopViewedArticles;
                        if (!(jsonElement11 instanceof JsonObject)) {
                            return emptyMap;
                        }
                        JsonImpl jsonImpl5 = JsonUtil.json;
                        jsonImpl5.getClass();
                        return (Map) jsonImpl5.decodeFromJsonElement(new HashMapSerializer(StringSerializer.INSTANCE, GrowthUserImpact.ArticleViews.Companion.serializer(), 1), jsonElement11);
                    case 8:
                        JsonElement jsonElement12 = growthUserImpact.mLongestEditingStreak;
                        if (!(jsonElement12 instanceof JsonObject)) {
                            return null;
                        }
                        JsonImpl jsonImpl6 = JsonUtil.json;
                        jsonImpl6.getClass();
                        return (GrowthUserImpact.EditStreak) jsonImpl6.decodeFromJsonElement(UnsignedKt.getNullable(GrowthUserImpact.EditStreak.Companion.serializer()), jsonElement12);
                    case 9:
                        Set entrySet = ((Map) growthUserImpact.editCountByDay$delegate.getValue()).entrySet();
                        LinkedHashMap linkedHashMap2 = new LinkedHashMap();
                        for (Object obj : entrySet) {
                            String substring = ((String) ((Map.Entry) obj).getKey()).substring(0, 7);
                            Object obj2 = linkedHashMap2.get(substring);
                            if (obj2 == null) {
                                obj2 = new ArrayList();
                                linkedHashMap2.put(substring, obj2);
                            }
                            ((List) obj2).add(obj);
                        }
                        LinkedHashMap linkedHashMap3 = new LinkedHashMap(MapsKt__MapsKt.mapCapacity(linkedHashMap2.size()));
                        for (Map.Entry entry : linkedHashMap2.entrySet()) {
                            Object key = entry.getKey();
                            Iterator it2 = ((Iterable) entry.getValue()).iterator();
                            int i132 = 0;
                            while (it2.hasNext()) {
                                i132 += ((Number) ((Map.Entry) it2.next()).getValue()).intValue();
                            }
                            linkedHashMap3.put(key, Integer.valueOf(i132));
                        }
                        return linkedHashMap3;
                    default:
                        Map map3 = (Map) growthUserImpact.groupEditsByMonth$delegate.getValue();
                        String localDate3 = LocalDate.now().toString();
                        localDate3.getClass();
                        Integer num3 = (Integer) map3.get(localDate3.substring(0, 7));
                        return Integer.valueOf(num3 != null ? num3.intValue() : 0);
                }
            }
        });
        final int i19 = 1;
        this.editsLastMonth$delegate = new SynchronizedLazyImpl(new Function0(this) { // from class: org.wikipedia.dataclient.growthtasks.GrowthUserImpact$$ExternalSyntheticLambda1
            public final /* synthetic */ GrowthUserImpact f$0;

            {
                this.f$0 = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i122 = i19;
                EmptyMap emptyMap = EmptyMap.INSTANCE;
                GrowthUserImpact growthUserImpact = this.f$0;
                switch (i122) {
                    case 0:
                        JsonElement jsonElement7 = growthUserImpact.mEditCountByNamespace;
                        if (!(jsonElement7 instanceof JsonObject)) {
                            return emptyMap;
                        }
                        JsonImpl jsonImpl = JsonUtil.json;
                        jsonImpl.getClass();
                        IntSerializer intSerializer = IntSerializer.INSTANCE;
                        return (Map) jsonImpl.decodeFromJsonElement(new HashMapSerializer(intSerializer, intSerializer, 1), jsonElement7);
                    case 1:
                        Map map2 = (Map) growthUserImpact.groupEditsByMonth$delegate.getValue();
                        String localDate = LocalDate.now().minusMonths(1L).toString();
                        localDate.getClass();
                        Integer num = (Integer) map2.get(localDate.substring(0, 7));
                        return Integer.valueOf(num != null ? num.intValue() : 0);
                    case 2:
                        LocalDate minusDays = LocalDate.now().minusDays(30L);
                        IntRange intRange = new IntRange(0, 30, 1);
                        int mapCapacity = MapsKt__MapsKt.mapCapacity(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(intRange, 10));
                        if (mapCapacity < 16) {
                            mapCapacity = 16;
                        }
                        LinkedHashMap linkedHashMap = new LinkedHashMap(mapCapacity);
                        Iterator it = intRange.iterator();
                        while (((IntProgressionIterator) it).hasNext) {
                            String localDate2 = minusDays.plusDays(((IntIterator) it).nextInt()).toString();
                            localDate2.getClass();
                            Integer num2 = (Integer) ((Map) growthUserImpact.editCountByDay$delegate.getValue()).get(localDate2);
                            linkedHashMap.put(localDate2, Integer.valueOf(num2 != null ? num2.intValue() : 0));
                        }
                        return linkedHashMap;
                    case 3:
                        return DateUtils.getRelativeTimeSpanString(growthUserImpact.lastEditTimestamp * 1000, System.currentTimeMillis(), 0L).toString();
                    case 4:
                        JsonElement jsonElement8 = growthUserImpact.mEditCountByDay;
                        if (!(jsonElement8 instanceof JsonObject)) {
                            return emptyMap;
                        }
                        JsonImpl jsonImpl2 = JsonUtil.json;
                        jsonImpl2.getClass();
                        return (Map) jsonImpl2.decodeFromJsonElement(new HashMapSerializer(StringSerializer.INSTANCE, IntSerializer.INSTANCE, 1), jsonElement8);
                    case 5:
                        JsonElement jsonElement9 = growthUserImpact.mEditCountByTaskType;
                        if (!(jsonElement9 instanceof JsonObject)) {
                            return emptyMap;
                        }
                        JsonImpl jsonImpl3 = JsonUtil.json;
                        jsonImpl3.getClass();
                        return (Map) jsonImpl3.decodeFromJsonElement(new HashMapSerializer(StringSerializer.INSTANCE, IntSerializer.INSTANCE, 1), jsonElement9);
                    case 6:
                        JsonElement jsonElement10 = growthUserImpact.mDailyTotalViews;
                        if (!(jsonElement10 instanceof JsonObject)) {
                            return emptyMap;
                        }
                        JsonImpl jsonImpl4 = JsonUtil.json;
                        jsonImpl4.getClass();
                        return (Map) jsonImpl4.decodeFromJsonElement(new HashMapSerializer(StringSerializer.INSTANCE, IntSerializer.INSTANCE, 1), jsonElement10);
                    case 7:
                        JsonElement jsonElement11 = growthUserImpact.mTopViewedArticles;
                        if (!(jsonElement11 instanceof JsonObject)) {
                            return emptyMap;
                        }
                        JsonImpl jsonImpl5 = JsonUtil.json;
                        jsonImpl5.getClass();
                        return (Map) jsonImpl5.decodeFromJsonElement(new HashMapSerializer(StringSerializer.INSTANCE, GrowthUserImpact.ArticleViews.Companion.serializer(), 1), jsonElement11);
                    case 8:
                        JsonElement jsonElement12 = growthUserImpact.mLongestEditingStreak;
                        if (!(jsonElement12 instanceof JsonObject)) {
                            return null;
                        }
                        JsonImpl jsonImpl6 = JsonUtil.json;
                        jsonImpl6.getClass();
                        return (GrowthUserImpact.EditStreak) jsonImpl6.decodeFromJsonElement(UnsignedKt.getNullable(GrowthUserImpact.EditStreak.Companion.serializer()), jsonElement12);
                    case 9:
                        Set entrySet = ((Map) growthUserImpact.editCountByDay$delegate.getValue()).entrySet();
                        LinkedHashMap linkedHashMap2 = new LinkedHashMap();
                        for (Object obj : entrySet) {
                            String substring = ((String) ((Map.Entry) obj).getKey()).substring(0, 7);
                            Object obj2 = linkedHashMap2.get(substring);
                            if (obj2 == null) {
                                obj2 = new ArrayList();
                                linkedHashMap2.put(substring, obj2);
                            }
                            ((List) obj2).add(obj);
                        }
                        LinkedHashMap linkedHashMap3 = new LinkedHashMap(MapsKt__MapsKt.mapCapacity(linkedHashMap2.size()));
                        for (Map.Entry entry : linkedHashMap2.entrySet()) {
                            Object key = entry.getKey();
                            Iterator it2 = ((Iterable) entry.getValue()).iterator();
                            int i132 = 0;
                            while (it2.hasNext()) {
                                i132 += ((Number) ((Map.Entry) it2.next()).getValue()).intValue();
                            }
                            linkedHashMap3.put(key, Integer.valueOf(i132));
                        }
                        return linkedHashMap3;
                    default:
                        Map map3 = (Map) growthUserImpact.groupEditsByMonth$delegate.getValue();
                        String localDate3 = LocalDate.now().toString();
                        localDate3.getClass();
                        Integer num3 = (Integer) map3.get(localDate3.substring(0, 7));
                        return Integer.valueOf(num3 != null ? num3.intValue() : 0);
                }
            }
        });
        final int i20 = 2;
        this.lastThirtyDaysEdits$delegate = new SynchronizedLazyImpl(new Function0(this) { // from class: org.wikipedia.dataclient.growthtasks.GrowthUserImpact$$ExternalSyntheticLambda1
            public final /* synthetic */ GrowthUserImpact f$0;

            {
                this.f$0 = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i122 = i20;
                EmptyMap emptyMap = EmptyMap.INSTANCE;
                GrowthUserImpact growthUserImpact = this.f$0;
                switch (i122) {
                    case 0:
                        JsonElement jsonElement7 = growthUserImpact.mEditCountByNamespace;
                        if (!(jsonElement7 instanceof JsonObject)) {
                            return emptyMap;
                        }
                        JsonImpl jsonImpl = JsonUtil.json;
                        jsonImpl.getClass();
                        IntSerializer intSerializer = IntSerializer.INSTANCE;
                        return (Map) jsonImpl.decodeFromJsonElement(new HashMapSerializer(intSerializer, intSerializer, 1), jsonElement7);
                    case 1:
                        Map map2 = (Map) growthUserImpact.groupEditsByMonth$delegate.getValue();
                        String localDate = LocalDate.now().minusMonths(1L).toString();
                        localDate.getClass();
                        Integer num = (Integer) map2.get(localDate.substring(0, 7));
                        return Integer.valueOf(num != null ? num.intValue() : 0);
                    case 2:
                        LocalDate minusDays = LocalDate.now().minusDays(30L);
                        IntRange intRange = new IntRange(0, 30, 1);
                        int mapCapacity = MapsKt__MapsKt.mapCapacity(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(intRange, 10));
                        if (mapCapacity < 16) {
                            mapCapacity = 16;
                        }
                        LinkedHashMap linkedHashMap = new LinkedHashMap(mapCapacity);
                        Iterator it = intRange.iterator();
                        while (((IntProgressionIterator) it).hasNext) {
                            String localDate2 = minusDays.plusDays(((IntIterator) it).nextInt()).toString();
                            localDate2.getClass();
                            Integer num2 = (Integer) ((Map) growthUserImpact.editCountByDay$delegate.getValue()).get(localDate2);
                            linkedHashMap.put(localDate2, Integer.valueOf(num2 != null ? num2.intValue() : 0));
                        }
                        return linkedHashMap;
                    case 3:
                        return DateUtils.getRelativeTimeSpanString(growthUserImpact.lastEditTimestamp * 1000, System.currentTimeMillis(), 0L).toString();
                    case 4:
                        JsonElement jsonElement8 = growthUserImpact.mEditCountByDay;
                        if (!(jsonElement8 instanceof JsonObject)) {
                            return emptyMap;
                        }
                        JsonImpl jsonImpl2 = JsonUtil.json;
                        jsonImpl2.getClass();
                        return (Map) jsonImpl2.decodeFromJsonElement(new HashMapSerializer(StringSerializer.INSTANCE, IntSerializer.INSTANCE, 1), jsonElement8);
                    case 5:
                        JsonElement jsonElement9 = growthUserImpact.mEditCountByTaskType;
                        if (!(jsonElement9 instanceof JsonObject)) {
                            return emptyMap;
                        }
                        JsonImpl jsonImpl3 = JsonUtil.json;
                        jsonImpl3.getClass();
                        return (Map) jsonImpl3.decodeFromJsonElement(new HashMapSerializer(StringSerializer.INSTANCE, IntSerializer.INSTANCE, 1), jsonElement9);
                    case 6:
                        JsonElement jsonElement10 = growthUserImpact.mDailyTotalViews;
                        if (!(jsonElement10 instanceof JsonObject)) {
                            return emptyMap;
                        }
                        JsonImpl jsonImpl4 = JsonUtil.json;
                        jsonImpl4.getClass();
                        return (Map) jsonImpl4.decodeFromJsonElement(new HashMapSerializer(StringSerializer.INSTANCE, IntSerializer.INSTANCE, 1), jsonElement10);
                    case 7:
                        JsonElement jsonElement11 = growthUserImpact.mTopViewedArticles;
                        if (!(jsonElement11 instanceof JsonObject)) {
                            return emptyMap;
                        }
                        JsonImpl jsonImpl5 = JsonUtil.json;
                        jsonImpl5.getClass();
                        return (Map) jsonImpl5.decodeFromJsonElement(new HashMapSerializer(StringSerializer.INSTANCE, GrowthUserImpact.ArticleViews.Companion.serializer(), 1), jsonElement11);
                    case 8:
                        JsonElement jsonElement12 = growthUserImpact.mLongestEditingStreak;
                        if (!(jsonElement12 instanceof JsonObject)) {
                            return null;
                        }
                        JsonImpl jsonImpl6 = JsonUtil.json;
                        jsonImpl6.getClass();
                        return (GrowthUserImpact.EditStreak) jsonImpl6.decodeFromJsonElement(UnsignedKt.getNullable(GrowthUserImpact.EditStreak.Companion.serializer()), jsonElement12);
                    case 9:
                        Set entrySet = ((Map) growthUserImpact.editCountByDay$delegate.getValue()).entrySet();
                        LinkedHashMap linkedHashMap2 = new LinkedHashMap();
                        for (Object obj : entrySet) {
                            String substring = ((String) ((Map.Entry) obj).getKey()).substring(0, 7);
                            Object obj2 = linkedHashMap2.get(substring);
                            if (obj2 == null) {
                                obj2 = new ArrayList();
                                linkedHashMap2.put(substring, obj2);
                            }
                            ((List) obj2).add(obj);
                        }
                        LinkedHashMap linkedHashMap3 = new LinkedHashMap(MapsKt__MapsKt.mapCapacity(linkedHashMap2.size()));
                        for (Map.Entry entry : linkedHashMap2.entrySet()) {
                            Object key = entry.getKey();
                            Iterator it2 = ((Iterable) entry.getValue()).iterator();
                            int i132 = 0;
                            while (it2.hasNext()) {
                                i132 += ((Number) ((Map.Entry) it2.next()).getValue()).intValue();
                            }
                            linkedHashMap3.put(key, Integer.valueOf(i132));
                        }
                        return linkedHashMap3;
                    default:
                        Map map3 = (Map) growthUserImpact.groupEditsByMonth$delegate.getValue();
                        String localDate3 = LocalDate.now().toString();
                        localDate3.getClass();
                        Integer num3 = (Integer) map3.get(localDate3.substring(0, 7));
                        return Integer.valueOf(num3 != null ? num3.intValue() : 0);
                }
            }
        });
        final int i21 = 3;
        this.lastEditRelativeTime$delegate = new SynchronizedLazyImpl(new Function0(this) { // from class: org.wikipedia.dataclient.growthtasks.GrowthUserImpact$$ExternalSyntheticLambda1
            public final /* synthetic */ GrowthUserImpact f$0;

            {
                this.f$0 = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i122 = i21;
                EmptyMap emptyMap = EmptyMap.INSTANCE;
                GrowthUserImpact growthUserImpact = this.f$0;
                switch (i122) {
                    case 0:
                        JsonElement jsonElement7 = growthUserImpact.mEditCountByNamespace;
                        if (!(jsonElement7 instanceof JsonObject)) {
                            return emptyMap;
                        }
                        JsonImpl jsonImpl = JsonUtil.json;
                        jsonImpl.getClass();
                        IntSerializer intSerializer = IntSerializer.INSTANCE;
                        return (Map) jsonImpl.decodeFromJsonElement(new HashMapSerializer(intSerializer, intSerializer, 1), jsonElement7);
                    case 1:
                        Map map2 = (Map) growthUserImpact.groupEditsByMonth$delegate.getValue();
                        String localDate = LocalDate.now().minusMonths(1L).toString();
                        localDate.getClass();
                        Integer num = (Integer) map2.get(localDate.substring(0, 7));
                        return Integer.valueOf(num != null ? num.intValue() : 0);
                    case 2:
                        LocalDate minusDays = LocalDate.now().minusDays(30L);
                        IntRange intRange = new IntRange(0, 30, 1);
                        int mapCapacity = MapsKt__MapsKt.mapCapacity(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(intRange, 10));
                        if (mapCapacity < 16) {
                            mapCapacity = 16;
                        }
                        LinkedHashMap linkedHashMap = new LinkedHashMap(mapCapacity);
                        Iterator it = intRange.iterator();
                        while (((IntProgressionIterator) it).hasNext) {
                            String localDate2 = minusDays.plusDays(((IntIterator) it).nextInt()).toString();
                            localDate2.getClass();
                            Integer num2 = (Integer) ((Map) growthUserImpact.editCountByDay$delegate.getValue()).get(localDate2);
                            linkedHashMap.put(localDate2, Integer.valueOf(num2 != null ? num2.intValue() : 0));
                        }
                        return linkedHashMap;
                    case 3:
                        return DateUtils.getRelativeTimeSpanString(growthUserImpact.lastEditTimestamp * 1000, System.currentTimeMillis(), 0L).toString();
                    case 4:
                        JsonElement jsonElement8 = growthUserImpact.mEditCountByDay;
                        if (!(jsonElement8 instanceof JsonObject)) {
                            return emptyMap;
                        }
                        JsonImpl jsonImpl2 = JsonUtil.json;
                        jsonImpl2.getClass();
                        return (Map) jsonImpl2.decodeFromJsonElement(new HashMapSerializer(StringSerializer.INSTANCE, IntSerializer.INSTANCE, 1), jsonElement8);
                    case 5:
                        JsonElement jsonElement9 = growthUserImpact.mEditCountByTaskType;
                        if (!(jsonElement9 instanceof JsonObject)) {
                            return emptyMap;
                        }
                        JsonImpl jsonImpl3 = JsonUtil.json;
                        jsonImpl3.getClass();
                        return (Map) jsonImpl3.decodeFromJsonElement(new HashMapSerializer(StringSerializer.INSTANCE, IntSerializer.INSTANCE, 1), jsonElement9);
                    case 6:
                        JsonElement jsonElement10 = growthUserImpact.mDailyTotalViews;
                        if (!(jsonElement10 instanceof JsonObject)) {
                            return emptyMap;
                        }
                        JsonImpl jsonImpl4 = JsonUtil.json;
                        jsonImpl4.getClass();
                        return (Map) jsonImpl4.decodeFromJsonElement(new HashMapSerializer(StringSerializer.INSTANCE, IntSerializer.INSTANCE, 1), jsonElement10);
                    case 7:
                        JsonElement jsonElement11 = growthUserImpact.mTopViewedArticles;
                        if (!(jsonElement11 instanceof JsonObject)) {
                            return emptyMap;
                        }
                        JsonImpl jsonImpl5 = JsonUtil.json;
                        jsonImpl5.getClass();
                        return (Map) jsonImpl5.decodeFromJsonElement(new HashMapSerializer(StringSerializer.INSTANCE, GrowthUserImpact.ArticleViews.Companion.serializer(), 1), jsonElement11);
                    case 8:
                        JsonElement jsonElement12 = growthUserImpact.mLongestEditingStreak;
                        if (!(jsonElement12 instanceof JsonObject)) {
                            return null;
                        }
                        JsonImpl jsonImpl6 = JsonUtil.json;
                        jsonImpl6.getClass();
                        return (GrowthUserImpact.EditStreak) jsonImpl6.decodeFromJsonElement(UnsignedKt.getNullable(GrowthUserImpact.EditStreak.Companion.serializer()), jsonElement12);
                    case 9:
                        Set entrySet = ((Map) growthUserImpact.editCountByDay$delegate.getValue()).entrySet();
                        LinkedHashMap linkedHashMap2 = new LinkedHashMap();
                        for (Object obj : entrySet) {
                            String substring = ((String) ((Map.Entry) obj).getKey()).substring(0, 7);
                            Object obj2 = linkedHashMap2.get(substring);
                            if (obj2 == null) {
                                obj2 = new ArrayList();
                                linkedHashMap2.put(substring, obj2);
                            }
                            ((List) obj2).add(obj);
                        }
                        LinkedHashMap linkedHashMap3 = new LinkedHashMap(MapsKt__MapsKt.mapCapacity(linkedHashMap2.size()));
                        for (Map.Entry entry : linkedHashMap2.entrySet()) {
                            Object key = entry.getKey();
                            Iterator it2 = ((Iterable) entry.getValue()).iterator();
                            int i132 = 0;
                            while (it2.hasNext()) {
                                i132 += ((Number) ((Map.Entry) it2.next()).getValue()).intValue();
                            }
                            linkedHashMap3.put(key, Integer.valueOf(i132));
                        }
                        return linkedHashMap3;
                    default:
                        Map map3 = (Map) growthUserImpact.groupEditsByMonth$delegate.getValue();
                        String localDate3 = LocalDate.now().toString();
                        localDate3.getClass();
                        Integer num3 = (Integer) map3.get(localDate3.substring(0, 7));
                        return Integer.valueOf(num3 != null ? num3.intValue() : 0);
                }
            }
        });
    }
}
