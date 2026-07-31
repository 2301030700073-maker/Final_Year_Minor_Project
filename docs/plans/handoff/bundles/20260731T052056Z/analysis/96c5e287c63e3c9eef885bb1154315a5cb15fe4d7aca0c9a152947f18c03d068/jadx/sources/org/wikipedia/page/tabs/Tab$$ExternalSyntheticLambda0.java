package org.wikipedia.page.tabs;

import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlinx.serialization.internal.BooleanSerializer;
import kotlinx.serialization.internal.EnumSerializer;
import kotlinx.serialization.internal.HashMapSerializer;
import kotlinx.serialization.internal.HashSetSerializer;
import kotlinx.serialization.internal.StringSerializer;
import kotlinx.serialization.json.JsonElementSerializer;
import org.wikipedia.dataclient.mwapi.MwServiceError$$serializer;
import org.wikipedia.dataclient.page.PageSummary$$serializer;
import org.wikipedia.feed.onthisday.OnThisDay$Event$$serializer;
import org.wikipedia.feed.personalization.PersonalizationActivity;
import org.wikipedia.feed.personalization.PersonalizationViewModel;
import org.wikipedia.gallery.ImageInfo$$serializer;
import org.wikipedia.gallery.ImageInfo$Derivative$$serializer;
import org.wikipedia.gallery.ImageInfo$MetadataItem$$serializer;
import org.wikipedia.gallery.MediaListItem$$serializer;
import org.wikipedia.gallery.MediaListItem$ImageSrcSet$$serializer;
import org.wikipedia.games.onthisday.OnThisDayGameViewModel$GameState$$serializer;
import org.wikipedia.login.LoginResponse$Request$$serializer;
import org.wikipedia.notifications.db.Notification$Link$$serializer;
import org.wikipedia.page.Namespace;
import org.wikipedia.page.PageBackStackItem$$serializer;
import org.wikipedia.page.PageFragment;
import org.wikipedia.page.references.PageReferences$Reference$$serializer;
import org.wikipedia.readinglist.ReadingListsExportImportHelper$ExportablePage$$serializer;
import org.wikipedia.readinglist.ReadingListsExportImportHelper$ExportableReadingList$$serializer;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class Tab$$ExternalSyntheticLambda0 implements Function0 {
    public final /* synthetic */ int $r8$classId;

    public /* synthetic */ Tab$$ExternalSyntheticLambda0(int i) {
        this.$r8$classId = i;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        switch (this.$r8$classId) {
            case 0:
                return new HashSetSerializer(PageBackStackItem$$serializer.INSTANCE, 1);
            case 1:
                return new HashSetSerializer(OnThisDay$Event$$serializer.INSTANCE, 1);
            case 2:
                return new HashSetSerializer(OnThisDay$Event$$serializer.INSTANCE, 1);
            case 3:
                return new HashSetSerializer(OnThisDay$Event$$serializer.INSTANCE, 1);
            case 4:
                return new HashSetSerializer(OnThisDay$Event$$serializer.INSTANCE, 1);
            case 5:
                return new HashSetSerializer(PageSummary$$serializer.INSTANCE, 1);
            case 6:
                int i = PersonalizationActivity.$r8$clinit;
                return PersonalizationViewModel.Factory;
            case 7:
                Namespace[] values = Namespace.values();
                values.getClass();
                return new EnumSerializer("org.wikipedia.page.Namespace", values);
            case 8:
                return Unit.INSTANCE;
            case 9:
                return new HashSetSerializer(PageSummary$$serializer.INSTANCE, 1);
            case 10:
                return new HashSetSerializer(ImageInfo$$serializer.INSTANCE, 1);
            case 11:
                StringSerializer stringSerializer = StringSerializer.INSTANCE;
                return new HashMapSerializer(stringSerializer, stringSerializer, 0);
            case 12:
                StringSerializer stringSerializer2 = StringSerializer.INSTANCE;
                return new HashMapSerializer(stringSerializer2, stringSerializer2, 1);
            case IMAGE_VALUE:
                return new HashSetSerializer(ImageInfo$Derivative$$serializer.INSTANCE, 1);
            case LINEAR_PROGRESS_INDICATOR_VALUE:
                return new HashSetSerializer(StringSerializer.INSTANCE, 1);
            case 15:
                return new HashSetSerializer(ImageInfo$MetadataItem$$serializer.INSTANCE, 1);
            case LAZY_VERTICAL_GRID_VALUE:
                return new HashSetSerializer(MediaListItem$$serializer.INSTANCE, 1);
            case VERTICAL_GRID_ITEM_VALUE:
                return new HashSetSerializer(MediaListItem$ImageSrcSet$$serializer.INSTANCE, 1);
            case RADIO_GROUP_VALUE:
                return new HashSetSerializer(BooleanSerializer.INSTANCE, 1);
            case RADIO_BUTTON_VALUE:
                return new HashMapSerializer(StringSerializer.INSTANCE, OnThisDayGameViewModel$GameState$$serializer.INSTANCE, 1);
            case RADIO_ROW_VALUE:
                return new HashSetSerializer(MwServiceError$$serializer.INSTANCE, 1);
            case RADIO_COLUMN_VALUE:
                return new HashSetSerializer(LoginResponse$Request$$serializer.INSTANCE, 1);
            case SIZE_BOX_VALUE:
                return new HashSetSerializer(StringSerializer.INSTANCE, 2);
            case 23:
                return new HashSetSerializer(Notification$Link$$serializer.INSTANCE, 1);
            case 24:
                int i2 = PageFragment.REFRESH_SPINNER_ADDITIONAL_OFFSET;
                return Boolean.FALSE;
            case 25:
                return new HashSetSerializer(PageReferences$Reference$$serializer.INSTANCE, 1);
            case 26:
                return Integer.MAX_VALUE;
            case 27:
                return new HashSetSerializer(ReadingListsExportImportHelper$ExportableReadingList$$serializer.INSTANCE, 1);
            case 28:
                return new HashSetSerializer(ReadingListsExportImportHelper$ExportablePage$$serializer.INSTANCE, 1);
            default:
                return new HashMapSerializer(StringSerializer.INSTANCE, new HashSetSerializer(JsonElementSerializer.INSTANCE, 1), 1);
        }
    }
}
