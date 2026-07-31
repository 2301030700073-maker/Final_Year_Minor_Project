package kotlin.text;

import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.State;
import androidx.lifecycle.ViewModelKt;
import androidx.room.Room;
import coil3.disk.DiskLruCache$$ExternalSyntheticLambda0;
import coil3.fetch.Fetcher;
import coil3.gif.AnimatedImageDecoder;
import java.io.IOException;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.regex.Matcher;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyMap;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref$BooleanRef;
import kotlin.jvm.internal.Ref$ObjectRef;
import kotlin.reflect.KClass;
import kotlinx.coroutines.AwaitKt;
import kotlinx.serialization.SealedClassSerializer;
import kotlinx.serialization.SealedClassSerializer$$ExternalSyntheticLambda1;
import kotlinx.serialization.descriptors.PolymorphicKind$OPEN;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.descriptors.SerialKind$ENUM;
import kotlinx.serialization.descriptors.StructureKind$MAP;
import kotlinx.serialization.internal.EnumDescriptor;
import kotlinx.serialization.internal.EnumSerializer;
import kotlinx.serialization.internal.ObjectSerializer;
import kotlinx.serialization.json.Json;
import kotlinx.serialization.json.JsonDecodingException;
import kotlinx.serialization.json.JsonNames;
import kotlinx.serialization.json.internal.WriteModeKt;
import okhttp3.internal.concurrent.TaskQueue;
import okhttp3.internal.http2.ErrorCode;
import okhttp3.internal.http2.Http2Connection;
import okhttp3.internal.http2.Http2Stream;
import okhttp3.internal.http2.Settings;
import okhttp3.internal.platform.Platform;
import org.wikipedia.analytics.eventplatform.WikiGamesEvent;
import org.wikipedia.categories.db.Category;
import org.wikipedia.donate.donationreminder.DonationReminderDropDownMenuItem;
import org.wikipedia.donate.donationreminder.DonationReminderHelper;
import org.wikipedia.donate.donationreminder.DonationReminderViewModel;
import org.wikipedia.edit.richtext.SyntaxHighlighter;
import org.wikipedia.feed.HomeAction;
import org.wikipedia.feed.HomeTab;
import org.wikipedia.feed.featured.FeaturedArticleCard;
import org.wikipedia.feed.image.FeaturedImage;
import org.wikipedia.feed.model.BasedOnInterestCard;
import org.wikipedia.feed.model.BecauseYouReadCard;
import org.wikipedia.feed.model.ContinueReadingCard;
import org.wikipedia.feed.model.DiscoverCard;
import org.wikipedia.feed.model.PlacesOfInterestCard;
import org.wikipedia.feed.model.RandomCard;
import org.wikipedia.feed.model.WikiGameCard;
import org.wikipedia.feed.news.NewsCard;
import org.wikipedia.feed.news.NewsItem;
import org.wikipedia.feed.wikigames.WikiGame$OnThisDayGame;
import org.wikipedia.games.onthisday.OnThisDayGamePlayFragment;
import org.wikipedia.games.onthisday.OnThisDayGameViewModel;
import org.wikipedia.login.LoginClient$login$$inlined$CoroutineExceptionHandler$1;
import org.wikipedia.readinglist.recommended.RecommendedReadingListSettingsActivity;
import org.wikipedia.readinglist.recommended.RecommendedReadingListSettingsViewModel;
import org.wikipedia.readinglist.recommended.RecommendedReadingListSource;
import org.wikipedia.settings.Prefs;
import org.wikipedia.util.Resource;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class Regex$$ExternalSyntheticLambda0 implements Function0 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;
    public final /* synthetic */ Object f$1;

    public /* synthetic */ Regex$$ExternalSyntheticLambda0(int i, Object obj, Object obj2) {
        this.$r8$classId = i;
        this.f$0 = obj;
        this.f$1 = obj2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v0, types: [kotlin.coroutines.Continuation] */
    /* JADX WARN: Type inference failed for: r2v12 */
    /* JADX WARN: Type inference failed for: r2v13 */
    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        String[] names;
        long initialWindowSize;
        Object[] objArr = 0;
        objArr = 0;
        int i = 0;
        switch (this.$r8$classId) {
            case 0:
                Regex regex = (Regex) this.f$0;
                CharSequence charSequence = (CharSequence) this.f$1;
                charSequence.getClass();
                Matcher matcher = regex.nativePattern.matcher(charSequence);
                matcher.getClass();
                return RegexKt.findNext(matcher, 0, charSequence);
            case 1:
                return Room.listOf(new Pair((Fetcher.Factory) this.f$0, (KClass) this.f$1));
            case 2:
                return AnimatedImageDecoder.decode$lambda$0((AnimatedImageDecoder) this.f$0, (Ref$BooleanRef) this.f$1);
            case 3:
                return RegexKt.buildSerialDescriptor((String) this.f$0, PolymorphicKind$OPEN.INSTANCE$1, new SerialDescriptor[0], new SealedClassSerializer$$ExternalSyntheticLambda1((SealedClassSerializer) this.f$1, i));
            case 4:
                EnumSerializer enumSerializer = (EnumSerializer) this.f$0;
                String str = (String) this.f$1;
                Enum[] enumArr = enumSerializer.values;
                EnumDescriptor enumDescriptor = new EnumDescriptor(enumArr.length, str);
                for (Enum r0 : enumArr) {
                    enumDescriptor.addElement(r0.name(), false);
                }
                return enumDescriptor;
            case 5:
                return RegexKt.buildSerialDescriptor((String) this.f$0, StructureKind$MAP.INSTANCE$3, new SerialDescriptor[0], new DiskLruCache$$ExternalSyntheticLambda0(26, (ObjectSerializer) this.f$1));
            case 6:
                SerialDescriptor serialDescriptor = (SerialDescriptor) this.f$0;
                Json json = (Json) this.f$1;
                LinkedHashMap linkedHashMap = new LinkedHashMap();
                WriteModeKt.namingStrategy(serialDescriptor, json);
                int elementsCount = serialDescriptor.getElementsCount();
                for (int i2 = 0; i2 < elementsCount; i2++) {
                    List elementAnnotations = serialDescriptor.getElementAnnotations(i2);
                    ArrayList arrayList = new ArrayList();
                    for (Object obj : elementAnnotations) {
                        if (obj instanceof JsonNames) {
                            arrayList.add(obj);
                        }
                    }
                    JsonNames jsonNames = (JsonNames) CollectionsKt.singleOrNull((List) arrayList);
                    if (jsonNames != null && (names = jsonNames.names()) != null) {
                        for (String str2 : names) {
                            String str3 = Intrinsics.areEqual(serialDescriptor.getKind(), SerialKind$ENUM.INSTANCE) ? "enum value" : "property";
                            if (linkedHashMap.containsKey(str2)) {
                                throw new JsonDecodingException(WriteModeKt.formatDecodingException(-1, "The suggested name '" + str2 + "' for " + str3 + ' ' + serialDescriptor.getElementName(i2) + " is already one of the names for " + str3 + ' ' + serialDescriptor.getElementName(((Number) MapsKt__MapsKt.getValue(str2, linkedHashMap)).intValue()) + " in " + serialDescriptor, null, null, null));
                            }
                            linkedHashMap.put(str2, Integer.valueOf(i2));
                        }
                    }
                }
                return linkedHashMap.isEmpty() ? EmptyMap.INSTANCE : linkedHashMap;
            case 7:
                Http2Connection http2Connection = (Http2Connection) this.f$0;
                Http2Stream http2Stream = (Http2Stream) this.f$1;
                try {
                    http2Connection.listener.onStream(http2Stream);
                } catch (IOException e) {
                    Platform platform = Platform.platform;
                    Platform.platform.log("Http2Connection.Listener failure for " + http2Connection.connectionName, 4, e);
                    try {
                        http2Stream.close(ErrorCode.PROTOCOL_ERROR, e);
                    } catch (IOException unused) {
                    }
                }
                return Unit.INSTANCE;
            case 8:
                Http2Connection.ReaderRunnable readerRunnable = (Http2Connection.ReaderRunnable) this.f$0;
                Settings settings = (Settings) this.f$1;
                Ref$ObjectRef ref$ObjectRef = new Ref$ObjectRef();
                Http2Connection http2Connection2 = (Http2Connection) readerRunnable.this$0;
                synchronized (http2Connection2.writer) {
                    synchronized (http2Connection2) {
                        try {
                            Settings settings2 = http2Connection2.peerSettings;
                            Settings settings3 = new Settings();
                            settings2.getClass();
                            for (int i3 = 0; i3 < 10; i3++) {
                                if (((1 << i3) & settings2.set) != 0) {
                                    settings3.set(i3, settings2.values[i3]);
                                }
                            }
                            for (int i4 = 0; i4 < 10; i4++) {
                                if (((1 << i4) & settings.set) != 0) {
                                    settings3.set(i4, settings.values[i4]);
                                }
                            }
                            ref$ObjectRef.element = settings3;
                            initialWindowSize = settings3.getInitialWindowSize() - settings2.getInitialWindowSize();
                            if (initialWindowSize != 0 && !http2Connection2.streams.isEmpty()) {
                                objArr = (Http2Stream[]) http2Connection2.streams.values().toArray(new Http2Stream[0]);
                            }
                            Settings settings4 = (Settings) ref$ObjectRef.element;
                            settings4.getClass();
                            http2Connection2.peerSettings = settings4;
                            TaskQueue.execute$default(http2Connection2.settingsListenerQueue, http2Connection2.connectionName + " onSettings", new Regex$$ExternalSyntheticLambda0(9, http2Connection2, ref$ObjectRef));
                        } catch (Throwable th) {
                            throw th;
                        }
                    }
                    try {
                        http2Connection2.writer.applyAndAckSettings((Settings) ref$ObjectRef.element);
                    } catch (IOException e2) {
                        ErrorCode errorCode = ErrorCode.PROTOCOL_ERROR;
                        http2Connection2.close$okhttp(errorCode, errorCode, e2);
                    }
                }
                if (objArr != 0) {
                    int length = objArr.length;
                    while (i < length) {
                        Http2Stream http2Stream2 = objArr[i];
                        synchronized (http2Stream2) {
                            http2Stream2.writeBytesMaximum += initialWindowSize;
                            if (initialWindowSize > 0) {
                                http2Stream2.notifyAll();
                            }
                        }
                        i++;
                    }
                }
                return Unit.INSTANCE;
            case 9:
                Http2Connection http2Connection3 = (Http2Connection) this.f$0;
                http2Connection3.listener.onSettings(http2Connection3, (Settings) ((Ref$ObjectRef) this.f$1).element);
                return Unit.INSTANCE;
            case 10:
                ((Function1) this.f$0).invoke((Category) this.f$1);
                return Unit.INSTANCE;
            case 11:
                DonationReminderDropDownMenuItem donationReminderDropDownMenuItem = (DonationReminderDropDownMenuItem) this.f$0;
                MutableState mutableState = (MutableState) this.f$1;
                donationReminderDropDownMenuItem.onClick.invoke();
                mutableState.setValue(Boolean.FALSE);
                return Unit.INSTANCE;
            case 12:
                DonationReminderViewModel donationReminderViewModel = (DonationReminderViewModel) this.f$0;
                Function1 function1 = (Function1) this.f$1;
                donationReminderViewModel.toggleDonationReminders(true);
                donationReminderViewModel.saveReminder();
                int i5 = DonationReminderHelper.validReadCountOnSeconds;
                function1.invoke(DonationReminderHelper.thankYouMessageForSettings());
                return Unit.INSTANCE;
            case IMAGE_VALUE:
                ((Function1) this.f$0).invoke(new HomeAction.HideCommunityCard((FeaturedArticleCard) this.f$1));
                return Unit.INSTANCE;
            case LINEAR_PROGRESS_INDICATOR_VALUE:
                ((Function1) this.f$0).invoke(new HomeAction.HideCommunityCard((NewsCard) this.f$1));
                return Unit.INSTANCE;
            case 15:
                ((Function1) this.f$0).invoke(new HomeAction.RefreshTab((HomeTab) this.f$1));
                return Unit.INSTANCE;
            case LAZY_VERTICAL_GRID_VALUE:
                ((Function2) this.f$0).invoke((HomeTab) this.f$1, null);
                return Unit.INSTANCE;
            case VERTICAL_GRID_ITEM_VALUE:
                ((Function1) this.f$0).invoke((BecauseYouReadCard) this.f$1);
                return Unit.INSTANCE;
            case RADIO_GROUP_VALUE:
                ((Function1) this.f$0).invoke((ContinueReadingCard) this.f$1);
                return Unit.INSTANCE;
            case RADIO_BUTTON_VALUE:
                ((Function1) this.f$0).invoke((DiscoverCard) this.f$1);
                return Unit.INSTANCE;
            case RADIO_ROW_VALUE:
                ((Function1) this.f$0).invoke((FeaturedImage) this.f$1);
                return Unit.INSTANCE;
            case RADIO_COLUMN_VALUE:
                ((Function1) this.f$0).invoke((BasedOnInterestCard) this.f$1);
                return Unit.INSTANCE;
            case SIZE_BOX_VALUE:
                ((Function1) this.f$0).invoke((NewsItem) this.f$1);
                return Unit.INSTANCE;
            case 23:
                ((Function1) this.f$0).invoke((PlacesOfInterestCard) this.f$1);
                return Unit.INSTANCE;
            case 24:
                ((Function1) this.f$0).invoke((RandomCard) this.f$1);
                return Unit.INSTANCE;
            case 25:
                ((Function1) this.f$0).invoke((WikiGame$OnThisDayGame) this.f$1);
                return Unit.INSTANCE;
            case 26:
                ((Function1) this.f$0).invoke((WikiGameCard) this.f$1);
                return Unit.INSTANCE;
            case 27:
                OnThisDayGamePlayFragment onThisDayGamePlayFragment = (OnThisDayGamePlayFragment) this.f$0;
                onThisDayGamePlayFragment.updateGameState((OnThisDayGameViewModel.GameState) this.f$1);
                onThisDayGamePlayFragment.animateQuestionsIn();
                return Unit.INSTANCE;
            case 28:
                RecommendedReadingListSettingsActivity recommendedReadingListSettingsActivity = (RecommendedReadingListSettingsActivity) this.f$0;
                List list = (List) this.f$1;
                int i6 = RecommendedReadingListSettingsActivity.$r8$clinit;
                RecommendedReadingListSettingsViewModel viewModel = recommendedReadingListSettingsActivity.getViewModel();
                RecommendedReadingListSource recommendedReadingListSource = recommendedReadingListSettingsActivity.currentRecommendedReadingListSource;
                if (recommendedReadingListSource == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("currentRecommendedReadingListSource");
                    throw null;
                }
                viewModel.updateRecommendedReadingListSource(recommendedReadingListSource);
                Prefs prefs = Prefs.INSTANCE;
                Prefs.setRecommendedReadingListSourceTitlesWithOffset(list);
                WikiGamesEvent.submit$default("built_undo_click", "discover_settings", null, null, null, null, null, null, 508);
                return Unit.INSTANCE;
            default:
                RecommendedReadingListSettingsActivity recommendedReadingListSettingsActivity2 = (RecommendedReadingListSettingsActivity) this.f$0;
                State state = (State) this.f$1;
                int i7 = RecommendedReadingListSettingsActivity.$r8$clinit;
                if (!(((Resource) state.getValue()) instanceof Resource.Loading)) {
                    WikiGamesEvent.submit$default("back_click", "discover_settings", null, null, null, null, null, null, 508);
                    RecommendedReadingListSettingsViewModel viewModel2 = recommendedReadingListSettingsActivity2.getViewModel();
                    AwaitKt.launch$default(ViewModelKt.getViewModelScope(viewModel2), new LoginClient$login$$inlined$CoroutineExceptionHandler$1(viewModel2), null, new SyntaxHighlighter.AnonymousClass2(12, viewModel2, (Continuation) objArr), 2);
                }
                return Unit.INSTANCE;
        }
    }
}
