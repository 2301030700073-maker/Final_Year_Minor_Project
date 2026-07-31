package org.wikipedia.edit;

import java.lang.annotation.Annotation;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.ReflectionFactory;
import kotlin.reflect.KClass;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.SealedClassSerializer;
import kotlinx.serialization.internal.EnumSerializer;
import kotlinx.serialization.internal.HashMapSerializer;
import kotlinx.serialization.internal.HashSetSerializer;
import kotlinx.serialization.internal.StringSerializer;
import org.wikipedia.dataclient.mwapi.MwServiceError$$serializer;
import org.wikipedia.dataclient.page.PageSummary$$serializer;
import org.wikipedia.dataclient.watch.Watch$$serializer;
import org.wikipedia.dataclient.wikidata.Claims$Claim$$serializer;
import org.wikipedia.dataclient.wikidata.Entities$Entity$$serializer;
import org.wikipedia.dataclient.wikidata.Search$SearchResult$$serializer;
import org.wikipedia.feed.ForYouModule;
import org.wikipedia.feed.ForYouModule$BasedOnInterest$$serializer;
import org.wikipedia.feed.ForYouModule$BecauseYouRead$$serializer;
import org.wikipedia.feed.ForYouModule$ContinueReading$$serializer;
import org.wikipedia.feed.ForYouModule$Discover$$serializer;
import org.wikipedia.feed.ForYouModule$PlacesOfInterest$$serializer;
import org.wikipedia.feed.ForYouModule$Random$$serializer;
import org.wikipedia.feed.didyouknow.DidYouKnowItem$$serializer;
import org.wikipedia.feed.model.BasedOnInterestCard;
import org.wikipedia.feed.model.BasedOnInterestCard$$serializer;
import org.wikipedia.feed.model.BecauseYouReadCard;
import org.wikipedia.feed.model.BecauseYouReadCard$$serializer;
import org.wikipedia.feed.model.ContinueReadingCard;
import org.wikipedia.feed.model.ContinueReadingCard$$serializer;
import org.wikipedia.feed.model.DiscoverCard;
import org.wikipedia.feed.model.DiscoverCard$$serializer;
import org.wikipedia.feed.model.ForYouCard;
import org.wikipedia.feed.model.PlacesOfInterestCard;
import org.wikipedia.feed.model.PlacesOfInterestCard$$serializer;
import org.wikipedia.feed.model.RandomCard;
import org.wikipedia.feed.model.RandomCard$$serializer;
import org.wikipedia.feed.model.SeeAllRecommendationCard;
import org.wikipedia.feed.model.SeeAllRecommendationCard$$serializer;
import org.wikipedia.feed.news.NewsItem$$serializer;
import org.wikipedia.feed.onthisday.OnThisDay$Event$$serializer;
import org.wikipedia.gallery.ImageInfo$$serializer;
import org.wikipedia.readinglist.recommended.RecommendedReadingListUpdateFrequency;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class Edit$$ExternalSyntheticLambda0 implements Function0 {
    public final /* synthetic */ int $r8$classId;

    public /* synthetic */ Edit$$ExternalSyntheticLambda0(int i) {
        this.$r8$classId = i;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        switch (i) {
            case 0:
                return new HashSetSerializer(MwServiceError$$serializer.INSTANCE, 1);
            case 1:
                return new HashSetSerializer(MwServiceError$$serializer.INSTANCE, 1);
            case 2:
                return new HashSetSerializer(Watch$$serializer.INSTANCE, 1);
            case 3:
                return new HashSetSerializer(MwServiceError$$serializer.INSTANCE, 1);
            case 4:
                return new HashMapSerializer(StringSerializer.INSTANCE, new HashSetSerializer(Claims$Claim$$serializer.INSTANCE, 1), 1);
            case 5:
                return new HashSetSerializer(MwServiceError$$serializer.INSTANCE, 1);
            case 6:
                return new HashMapSerializer(StringSerializer.INSTANCE, Entities$Entity$$serializer.INSTANCE, 1);
            case 7:
                return new HashSetSerializer(MwServiceError$$serializer.INSTANCE, 1);
            case 8:
                return new HashSetSerializer(MwServiceError$$serializer.INSTANCE, 1);
            case 9:
                return new HashSetSerializer(Search$SearchResult$$serializer.INSTANCE, 1);
            case 10:
            case 11:
            case 12:
            case IMAGE_VALUE:
            case LINEAR_PROGRESS_INDICATOR_VALUE:
                return unit;
            case 15:
                return new HashMapSerializer(StringSerializer.INSTANCE, new HashSetSerializer(ForYouModule.Companion.serializer(), 1), 1);
            case LAZY_VERTICAL_GRID_VALUE:
                ReflectionFactory reflectionFactory = Reflection.factory;
                return new SealedClassSerializer("org.wikipedia.feed.ForYouModule", reflectionFactory.getOrCreateKotlinClass(ForYouModule.class), new KClass[]{reflectionFactory.getOrCreateKotlinClass(ForYouModule.BasedOnInterest.class), reflectionFactory.getOrCreateKotlinClass(ForYouModule.BecauseYouRead.class), reflectionFactory.getOrCreateKotlinClass(ForYouModule.ContinueReading.class), reflectionFactory.getOrCreateKotlinClass(ForYouModule.Discover.class), reflectionFactory.getOrCreateKotlinClass(ForYouModule.PlacesOfInterest.class), reflectionFactory.getOrCreateKotlinClass(ForYouModule.Random.class)}, new KSerializer[]{ForYouModule$BasedOnInterest$$serializer.INSTANCE, ForYouModule$BecauseYouRead$$serializer.INSTANCE, ForYouModule$ContinueReading$$serializer.INSTANCE, ForYouModule$Discover$$serializer.INSTANCE, ForYouModule$PlacesOfInterest$$serializer.INSTANCE, ForYouModule$Random$$serializer.INSTANCE}, new Annotation[0]);
            case VERTICAL_GRID_ITEM_VALUE:
                return new HashSetSerializer(ForYouCard.Companion.serializer(), 1);
            case RADIO_GROUP_VALUE:
                return new HashSetSerializer(ForYouCard.Companion.serializer(), 1);
            case RADIO_BUTTON_VALUE:
                return new HashSetSerializer(ForYouCard.Companion.serializer(), 1);
            case RADIO_ROW_VALUE:
                return new HashSetSerializer(ForYouCard.Companion.serializer(), 1);
            case RADIO_COLUMN_VALUE:
                RecommendedReadingListUpdateFrequency[] values = RecommendedReadingListUpdateFrequency.values();
                values.getClass();
                return new EnumSerializer("org.wikipedia.readinglist.recommended.RecommendedReadingListUpdateFrequency", values);
            case SIZE_BOX_VALUE:
                return new HashSetSerializer(ForYouCard.Companion.serializer(), 1);
            case 23:
                return new HashSetSerializer(ForYouCard.Companion.serializer(), 1);
            case 24:
                return new HashSetSerializer(NewsItem$$serializer.INSTANCE, 1);
            case 25:
                return new HashSetSerializer(OnThisDay$Event$$serializer.INSTANCE, 1);
            case 26:
                return new HashSetSerializer(DidYouKnowItem$$serializer.INSTANCE, 1);
            case 27:
                return new HashSetSerializer(ImageInfo$$serializer.INSTANCE, 1);
            case 28:
                ReflectionFactory reflectionFactory2 = Reflection.factory;
                return new SealedClassSerializer("org.wikipedia.feed.model.ForYouCard", reflectionFactory2.getOrCreateKotlinClass(ForYouCard.class), new KClass[]{reflectionFactory2.getOrCreateKotlinClass(BasedOnInterestCard.class), reflectionFactory2.getOrCreateKotlinClass(BecauseYouReadCard.class), reflectionFactory2.getOrCreateKotlinClass(ContinueReadingCard.class), reflectionFactory2.getOrCreateKotlinClass(DiscoverCard.class), reflectionFactory2.getOrCreateKotlinClass(PlacesOfInterestCard.class), reflectionFactory2.getOrCreateKotlinClass(RandomCard.class), reflectionFactory2.getOrCreateKotlinClass(SeeAllRecommendationCard.class)}, new KSerializer[]{BasedOnInterestCard$$serializer.INSTANCE, BecauseYouReadCard$$serializer.INSTANCE, ContinueReadingCard$$serializer.INSTANCE, DiscoverCard$$serializer.INSTANCE, PlacesOfInterestCard$$serializer.INSTANCE, RandomCard$$serializer.INSTANCE, SeeAllRecommendationCard$$serializer.INSTANCE}, new Annotation[0]);
            default:
                return new HashSetSerializer(PageSummary$$serializer.INSTANCE, 1);
        }
    }
}
