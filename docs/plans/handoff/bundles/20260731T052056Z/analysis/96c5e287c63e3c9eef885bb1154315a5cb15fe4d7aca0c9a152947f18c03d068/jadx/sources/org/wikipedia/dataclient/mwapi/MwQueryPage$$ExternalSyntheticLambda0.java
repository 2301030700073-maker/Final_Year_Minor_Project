package org.wikipedia.dataclient.mwapi;

import kotlin.UnsignedKt;
import kotlin.jvm.functions.Function0;
import kotlinx.serialization.internal.HashMapSerializer;
import kotlinx.serialization.internal.HashSetSerializer;
import kotlinx.serialization.internal.LongSerializer;
import kotlinx.serialization.internal.StringSerializer;
import org.wikipedia.dataclient.growthtasks.GrowthImageSuggestion$$serializer;
import org.wikipedia.dataclient.page.Protection$$serializer;
import org.wikipedia.gallery.ImageInfo$$serializer;
import org.wikipedia.notifications.db.Notification$UnreadNotificationWikiItem$$serializer;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class MwQueryPage$$ExternalSyntheticLambda0 implements Function0 {
    public final /* synthetic */ int $r8$classId;

    public /* synthetic */ MwQueryPage$$ExternalSyntheticLambda0(int i) {
        this.$r8$classId = i;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        switch (this.$r8$classId) {
            case 0:
                return new HashSetSerializer(ImageInfo$$serializer.INSTANCE, 1);
            case 1:
                return new HashSetSerializer(MwQueryPage$Revision$$serializer.INSTANCE, 1);
            case 2:
                return new HashSetSerializer(Protection$$serializer.INSTANCE, 1);
            case 3:
                return new HashSetSerializer(StringSerializer.INSTANCE, 1);
            case 4:
                return new HashSetSerializer(GrowthImageSuggestion$$serializer.INSTANCE, 1);
            case 5:
                return new HashSetSerializer(ImageInfo$$serializer.INSTANCE, 1);
            case 6:
                return new HashMapSerializer(StringSerializer.INSTANCE, UnsignedKt.getNullable(LongSerializer.INSTANCE), 1);
            case 7:
                return new HashSetSerializer(MwQueryPage$CategoryResponse$$serializer.INSTANCE, 1);
            case 8:
                return new HashSetSerializer(MwQueryPage$Coordinates$$serializer.INSTANCE, 1);
            case 9:
                StringSerializer stringSerializer = StringSerializer.INSTANCE;
                return new HashMapSerializer(stringSerializer, stringSerializer, 1);
            case 10:
                return new HashMapSerializer(StringSerializer.INSTANCE, new HashSetSerializer(MwServiceError$$serializer.INSTANCE, 1), 1);
            case 11:
                return new HashSetSerializer(MwQueryPage$LangLink$$serializer.INSTANCE, 1);
            case 12:
                return new HashSetSerializer(StringSerializer.INSTANCE, 1);
            case IMAGE_VALUE:
                return new HashSetSerializer(StringSerializer.INSTANCE, 1);
            case LINEAR_PROGRESS_INDICATOR_VALUE:
                return new HashSetSerializer(StringSerializer.INSTANCE, 1);
            case 15:
                return new HashMapSerializer(StringSerializer.INSTANCE, MwQueryPage$RevisionSlot$$serializer.INSTANCE, 1);
            case LAZY_VERTICAL_GRID_VALUE:
                return new HashSetSerializer(MwServiceError$$serializer.INSTANCE, 1);
            case VERTICAL_GRID_ITEM_VALUE:
                return new HashMapSerializer(StringSerializer.INSTANCE, Notification$UnreadNotificationWikiItem$$serializer.INSTANCE, 1);
            case RADIO_GROUP_VALUE:
                return new HashSetSerializer(MwQueryResult$WatchlistItem$$serializer.INSTANCE, 1);
            case RADIO_BUTTON_VALUE:
                return new HashMapSerializer(StringSerializer.INSTANCE, MwQueryResult$Namespace$$serializer.INSTANCE, 1);
            case RADIO_ROW_VALUE:
                return new HashSetSerializer(MwQueryResult$Message$$serializer.INSTANCE, 1);
            case RADIO_COLUMN_VALUE:
                return new HashSetSerializer(MwQueryResult$MagicWord$$serializer.INSTANCE, 1);
            case SIZE_BOX_VALUE:
                return new HashSetSerializer(MwQueryResult$RecentChange$$serializer.INSTANCE, 1);
            case 23:
                return new HashSetSerializer(UserContribution$$serializer.INSTANCE, 1);
            case 24:
                return new HashSetSerializer(UserInfo$$serializer.INSTANCE, 1);
            case 25:
                return new HashSetSerializer(MwQueryResult$Redirect$$serializer.INSTANCE, 1);
            case 26:
                return new HashSetSerializer(MwQueryResult$ConvertedTitle$$serializer.INSTANCE, 1);
            case 27:
                return new HashSetSerializer(UserInfo$$serializer.INSTANCE, 1);
            case 28:
                return new HashSetSerializer(MwQueryPage$$serializer.INSTANCE, 1);
            default:
                return new HashSetSerializer(StringSerializer.INSTANCE, 1);
        }
    }
}
