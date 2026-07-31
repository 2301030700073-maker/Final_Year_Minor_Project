package org.wikipedia.search;

import androidx.compose.runtime.Updater;
import java.lang.annotation.Annotation;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Reflection;
import kotlinx.serialization.internal.DoubleSerializer;
import kotlinx.serialization.internal.EnumSerializer;
import kotlinx.serialization.internal.HashSetSerializer;
import kotlinx.serialization.internal.ObjectSerializer;
import kotlinx.serialization.internal.PairSerializer;
import kotlinx.serialization.internal.ReferenceArraySerializer;
import kotlinx.serialization.internal.StringSerializer;
import org.wikipedia.dataclient.mwapi.MwQueryPage$Coordinates$$serializer;
import org.wikipedia.dataclient.okhttp.OkHttpConnectionFactory;
import org.wikipedia.readinglist.sync.SyncedReadingLists;
import org.wikipedia.readinglist.sync.SyncedReadingLists$RemoteIdResponse$$serializer;
import org.wikipedia.readinglist.sync.SyncedReadingLists$RemoteReadingList$$serializer;
import org.wikipedia.readinglist.sync.SyncedReadingLists$RemoteReadingListEntry$$serializer;
import org.wikipedia.search.SearchResult;
import org.wikipedia.settings.RemoteConfig$RemoteConfigYearInReview$$serializer;
import org.wikipedia.settings.RemoteConfig$TopReadPercentage$$serializer;
import org.wikipedia.settings.homefeed.HomeFeedSettingsDestination;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class SearchResult$$ExternalSyntheticLambda0 implements Function0 {
    public final /* synthetic */ int $r8$classId;

    public /* synthetic */ SearchResult$$ExternalSyntheticLambda0(int i) {
        this.$r8$classId = i;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        switch (this.$r8$classId) {
            case 0:
                return SearchResult.SearchResultType.Companion.serializer();
            case 1:
                return new HashSetSerializer(SyncedReadingLists$RemoteReadingList$$serializer.INSTANCE, 1);
            case 2:
                return new HashSetSerializer(SyncedReadingLists$RemoteReadingListEntry$$serializer.INSTANCE, 1);
            case 3:
                return new ReferenceArraySerializer(Reflection.factory.getOrCreateKotlinClass(SyncedReadingLists.RemoteIdResponse.class), SyncedReadingLists$RemoteIdResponse$$serializer.INSTANCE);
            case 4:
                return new HashSetSerializer(SyncedReadingLists$RemoteReadingListEntry$$serializer.INSTANCE, 1);
            case 5:
                return Updater.mutableStateOf$default(Boolean.FALSE);
            case 6:
                return Updater.mutableStateOf$default(Boolean.FALSE);
            case 7:
                return new HashSetSerializer(MwQueryPage$Coordinates$$serializer.INSTANCE, 1);
            case 8:
                SearchResult.SearchResultType[] values = SearchResult.SearchResultType.values();
                values.getClass();
                return new EnumSerializer("org.wikipedia.search.SearchResult.SearchResultType", values);
            case 9:
                return new HashSetSerializer(SearchResult$$serializer.INSTANCE, 1);
            case 10:
                return new HashSetSerializer(SemanticSearchResult$$serializer.INSTANCE, 1);
            case 11:
                return new HashSetSerializer(StringSerializer.INSTANCE, 1);
            case 12:
                return new HashSetSerializer(RemoteConfig$RemoteConfigYearInReview$$serializer.INSTANCE, 1);
            case IMAGE_VALUE:
                return new HashSetSerializer(StringSerializer.INSTANCE, 1);
            case LINEAR_PROGRESS_INDICATOR_VALUE:
                return new HashSetSerializer(RemoteConfig$TopReadPercentage$$serializer.INSTANCE, 1);
            case 15:
                return new HashSetSerializer(StringSerializer.INSTANCE, 1);
            case LAZY_VERTICAL_GRID_VALUE:
                return new HashSetSerializer(StringSerializer.INSTANCE, 1);
            case VERTICAL_GRID_ITEM_VALUE:
                return new ObjectSerializer("org.wikipedia.settings.homefeed.HomeFeedSettingsDestination.CommunityModuleScreen", HomeFeedSettingsDestination.CommunityModuleScreen.INSTANCE, new Annotation[0]);
            case RADIO_GROUP_VALUE:
                return new ObjectSerializer("org.wikipedia.settings.homefeed.HomeFeedSettingsDestination.DefaultFeedViewScreen", HomeFeedSettingsDestination.DefaultFeedViewScreen.INSTANCE, new Annotation[0]);
            case RADIO_BUTTON_VALUE:
                return new ObjectSerializer("org.wikipedia.settings.homefeed.HomeFeedSettingsDestination.FeedConfiguration", HomeFeedSettingsDestination.FeedConfiguration.INSTANCE, new Annotation[0]);
            case RADIO_ROW_VALUE:
                return new ObjectSerializer("org.wikipedia.settings.homefeed.HomeFeedSettingsDestination.ForYouModuleScreen", HomeFeedSettingsDestination.ForYouModuleScreen.INSTANCE, new Annotation[0]);
            case RADIO_COLUMN_VALUE:
                return new ObjectSerializer("org.wikipedia.settings.homefeed.HomeFeedSettingsDestination.Root", HomeFeedSettingsDestination.Root.INSTANCE, new Annotation[0]);
            case SIZE_BOX_VALUE:
                return OkHttpConnectionFactory.client;
            case 23:
                return new HashSetSerializer(StringSerializer.INSTANCE, 1);
            case 24:
                return new HashSetSerializer(StringSerializer.INSTANCE, 1);
            case 25:
                return new HashSetSerializer(StringSerializer.INSTANCE, 1);
            case 26:
                DoubleSerializer doubleSerializer = DoubleSerializer.INSTANCE;
                return new PairSerializer(doubleSerializer, doubleSerializer, 0);
            case 27:
                DoubleSerializer doubleSerializer2 = DoubleSerializer.INSTANCE;
                return new PairSerializer(doubleSerializer2, doubleSerializer2, 0);
            case 28:
                DoubleSerializer doubleSerializer3 = DoubleSerializer.INSTANCE;
                return new PairSerializer(doubleSerializer3, doubleSerializer3, 0);
            default:
                return new HashSetSerializer(StringSerializer.INSTANCE, 1);
        }
    }
}
