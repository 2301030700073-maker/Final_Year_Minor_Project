package org.wikipedia.games;

import android.database.SQLException;
import androidx.collection.ArrayMap;
import androidx.compose.animation.AnimatedContentTransitionScopeImpl;
import androidx.compose.animation.CrossfadeKt;
import androidx.compose.animation.EnterTransitionImpl;
import androidx.compose.animation.ExitTransitionImpl;
import androidx.compose.foundation.lazy.LazyListIntervalContent;
import androidx.compose.foundation.lazy.LazyListScope$items$1;
import androidx.compose.runtime.Latch;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.ui.focus.FocusRequester;
import androidx.compose.ui.layout.LayoutCoordinates;
import androidx.sqlite.SQLiteConnection;
import androidx.sqlite.SQLiteStatement;
import androidx.work.BackoffPolicy;
import androidx.work.Constraints;
import androidx.work.Data;
import androidx.work.WorkInfo;
import androidx.work.impl.Processor$$ExternalSyntheticLambda2;
import androidx.work.impl.model.WorkSpec;
import androidx.work.impl.model.WorkSpecDao_Impl;
import androidx.work.impl.model.WorkTag;
import androidx.work.impl.model.WorkTagDao_Impl;
import coil3.svg.internal.AndroidSvg;
import j$.time.LocalDate;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.UnsignedKt;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.text.StringsKt;
import kotlin.uuid.UuidKt;
import kotlinx.coroutines.android.HandlerContext;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.descriptors.ClassSerialDescriptorBuilder;
import okhttp3.internal.cache.DiskLruCache;
import okhttp3.tls.internal.der.AnyValue;
import okio.BufferedSink;
import okio.ByteString;
import org.wikipedia.activitytab.ActivityTabFragment$$ExternalSyntheticLambda34;
import org.wikipedia.analytics.eventplatform.WikiGamesEvent;
import org.wikipedia.categories.db.Category;
import org.wikipedia.categories.db.CategoryDao_Impl;
import org.wikipedia.compose.components.ToggleSettingItem;
import org.wikipedia.edit.db.EditSummary;
import org.wikipedia.edit.db.EditSummaryDao_Impl;
import org.wikipedia.feed.HomeAction;
import org.wikipedia.feed.didyouknow.DidYouKnowCard;
import org.wikipedia.feed.news.NewsCard;
import org.wikipedia.feed.news.NewsItem;
import org.wikipedia.feed.personalization.db.dao.InterestArticleDao_Impl;
import org.wikipedia.feed.personalization.db.entity.InterestArticle;
import org.wikipedia.feed.wikigames.OnThisDayGameAction;
import org.wikipedia.games.db.DailyGameHistory;
import org.wikipedia.games.db.DailyGameHistoryDao_Impl;
import org.wikipedia.history.HistoryEntry;
import org.wikipedia.history.db.HistoryEntryDao_Impl;
import org.wikipedia.language.AppLanguageState;
import org.wikipedia.notifications.db.Notification;
import org.wikipedia.notifications.db.NotificationDao_Impl;
import org.wikipedia.offline.db.OfflineObject;
import org.wikipedia.page.Namespace;
import org.wikipedia.page.PageTitle;
import org.wikipedia.pageimages.db.PageImage;
import org.wikipedia.pageimages.db.PageImageDao_Impl;
import org.wikipedia.readinglist.database.ReadingList;
import org.wikipedia.readinglist.database.RecommendedPage;
import org.wikipedia.readinglist.db.ReadingListPageDao_Impl;
import org.wikipedia.readinglist.db.RecommendedPageDao_Impl;
import org.wikipedia.talk.db.TalkTemplateDao_Impl;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class GamesHubScreenKt$$ExternalSyntheticLambda8 implements Function1 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;
    public final /* synthetic */ Object f$1;

    public /* synthetic */ GamesHubScreenKt$$ExternalSyntheticLambda8(int i, Object obj, Object obj2) {
        this.$r8$classId = i;
        this.f$0 = obj;
        this.f$1 = obj2;
    }

    /* JADX WARN: Finally extract failed */
    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        SQLiteStatement prepare;
        long j;
        int i = 0;
        int i2 = 2;
        int i3 = 1;
        switch (this.$r8$classId) {
            case 0:
                Function2 function2 = (Function2) this.f$0;
                LocalDate localDate = (LocalDate) this.f$1;
                OnThisDayGameAction onThisDayGameAction = (OnThisDayGameAction) obj;
                onThisDayGameAction.getClass();
                function2.invoke(onThisDayGameAction, localDate);
                return Unit.INSTANCE;
            case 1:
                String str = (String) this.f$0;
                WorkSpecDao_Impl workSpecDao_Impl = (WorkSpecDao_Impl) this.f$1;
                SQLiteConnection sQLiteConnection = (SQLiteConnection) obj;
                sQLiteConnection.getClass();
                prepare = sQLiteConnection.prepare("SELECT id, state, output, run_attempt_count, generation, required_network_type, required_network_request, requires_charging, requires_device_idle, requires_battery_not_low, requires_storage_not_low, trigger_content_update_delay, trigger_max_content_delay, content_uri_triggers, initial_delay, interval_duration, flex_duration, backoff_policy, backoff_delay_duration, last_enqueue_time, period_count, next_schedule_time_override, stop_reason FROM workspec WHERE id IN (SELECT work_spec_id FROM workname WHERE name=?)");
                try {
                    prepare.bindText(1, str);
                    ArrayMap arrayMap = new ArrayMap(0);
                    ArrayMap arrayMap2 = new ArrayMap(0);
                    while (prepare.step()) {
                        String text = prepare.getText(0);
                        if (!arrayMap.containsKey(text)) {
                            arrayMap.put(text, new ArrayList());
                        }
                        String text2 = prepare.getText(0);
                        if (!arrayMap2.containsKey(text2)) {
                            arrayMap2.put(text2, new ArrayList());
                        }
                    }
                    prepare.reset();
                    workSpecDao_Impl.__fetchRelationshipWorkTagAsjavaLangString(sQLiteConnection, arrayMap);
                    workSpecDao_Impl.__fetchRelationshipWorkProgressAsandroidxWorkData(sQLiteConnection, arrayMap2);
                    ArrayList arrayList = new ArrayList();
                    while (prepare.step()) {
                        String text3 = prepare.getText(i);
                        WorkInfo.State intToState = TuplesKt.intToState((int) prepare.getLong(i3));
                        byte[] blob = prepare.getBlob(i2);
                        Data data = Data.EMPTY;
                        Data fromByteArray = UuidKt.fromByteArray(blob);
                        int i4 = (int) prepare.getLong(3);
                        int i5 = (int) prepare.getLong(4);
                        long j2 = prepare.getLong(14);
                        long j3 = prepare.getLong(15);
                        long j4 = prepare.getLong(16);
                        BackoffPolicy intToBackoffPolicy = TuplesKt.intToBackoffPolicy((int) prepare.getLong(17));
                        long j5 = prepare.getLong(18);
                        long j6 = prepare.getLong(19);
                        int i6 = (int) prepare.getLong(20);
                        long j7 = prepare.getLong(21);
                        int i7 = (int) prepare.getLong(22);
                        Constraints constraints = new Constraints(TuplesKt.toNetworkRequest$work_runtime_release(prepare.getBlob(6)), TuplesKt.intToNetworkType((int) prepare.getLong(5)), ((int) prepare.getLong(7)) != 0, ((int) prepare.getLong(8)) != 0, ((int) prepare.getLong(9)) != 0, ((int) prepare.getLong(10)) != 0, prepare.getLong(11), prepare.getLong(12), TuplesKt.byteArrayToSetOfTriggers(prepare.getBlob(13)));
                        i = 0;
                        Object value = MapsKt__MapsKt.getValue(prepare.getText(0), arrayMap);
                        value.getClass();
                        List list = (List) value;
                        Object value2 = MapsKt__MapsKt.getValue(prepare.getText(0), arrayMap2);
                        value2.getClass();
                        arrayList.add(new WorkSpec.WorkInfoPojo(text3, intToState, fromByteArray, j2, j3, j4, constraints, i4, intToBackoffPolicy, j5, j6, i6, i5, j7, i7, list, (List) value2));
                        i2 = 2;
                        i3 = 1;
                    }
                    return arrayList;
                } catch (Throwable th) {
                    throw th;
                }
            case 2:
                WorkInfo.State state = (WorkInfo.State) this.f$0;
                String str2 = (String) this.f$1;
                SQLiteConnection sQLiteConnection2 = (SQLiteConnection) obj;
                sQLiteConnection2.getClass();
                prepare = sQLiteConnection2.prepare("UPDATE workspec SET state=? WHERE id=?");
                try {
                    prepare.bindLong(TuplesKt.stateToInt(state), 1);
                    prepare.bindText(2, str2);
                    prepare.step();
                    int totalChangedRows = TuplesKt.getTotalChangedRows(sQLiteConnection2);
                    prepare.close();
                    return Integer.valueOf(totalChangedRows);
                } finally {
                }
            case 3:
                WorkSpecDao_Impl workSpecDao_Impl2 = (WorkSpecDao_Impl) this.f$0;
                WorkSpec workSpec = (WorkSpec) this.f$1;
                SQLiteConnection sQLiteConnection3 = (SQLiteConnection) obj;
                sQLiteConnection3.getClass();
                workSpecDao_Impl2.__insertAdapterOfWorkSpec.insert(sQLiteConnection3, workSpec);
                return Unit.INSTANCE;
            case 4:
                Data data2 = (Data) this.f$0;
                String str3 = (String) this.f$1;
                SQLiteConnection sQLiteConnection4 = (SQLiteConnection) obj;
                sQLiteConnection4.getClass();
                prepare = sQLiteConnection4.prepare("UPDATE workspec SET output=? WHERE id=?");
                try {
                    Data data3 = Data.EMPTY;
                    prepare.bindBlob(1, UuidKt.toByteArrayInternalV1(data2));
                    prepare.bindText(2, str3);
                    prepare.step();
                    prepare.close();
                    return Unit.INSTANCE;
                } finally {
                }
            case 5:
                WorkTagDao_Impl workTagDao_Impl = (WorkTagDao_Impl) this.f$0;
                WorkTag workTag = (WorkTag) this.f$1;
                SQLiteConnection sQLiteConnection5 = (SQLiteConnection) obj;
                sQLiteConnection5.getClass();
                workTagDao_Impl.__insertAdapterOfWorkTag.insert(sQLiteConnection5, workTag);
                return Unit.INSTANCE;
            case 6:
                ((HandlerContext) this.f$0).handler.removeCallbacks((Processor$$ExternalSyntheticLambda2) this.f$1);
                return Unit.INSTANCE;
            case 7:
                KSerializer kSerializer = (KSerializer) this.f$0;
                KSerializer kSerializer2 = (KSerializer) this.f$1;
                ClassSerialDescriptorBuilder classSerialDescriptorBuilder = (ClassSerialDescriptorBuilder) obj;
                classSerialDescriptorBuilder.getClass();
                classSerialDescriptorBuilder.element("key", kSerializer.getDescriptor());
                classSerialDescriptorBuilder.element("value", kSerializer2.getDescriptor());
                return Unit.INSTANCE;
            case 8:
                DiskLruCache diskLruCache = (DiskLruCache) this.f$0;
                Latch latch = (Latch) this.f$1;
                ((IOException) obj).getClass();
                synchronized (diskLruCache) {
                    latch.detach$okhttp();
                }
                return Unit.INSTANCE;
            case 9:
                Latch latch2 = (Latch) this.f$0;
                AnyValue anyValue = (AnyValue) this.f$1;
                ((BufferedSink) obj).getClass();
                ByteString byteString = anyValue.bytes;
                latch2.getClass();
                byteString.getClass();
                latch2.sink().write(byteString);
                latch2._isOpen = anyValue.constructed;
                return Unit.INSTANCE;
            case 10:
                CategoryDao_Impl categoryDao_Impl = (CategoryDao_Impl) this.f$0;
                Category category = (Category) this.f$1;
                SQLiteConnection sQLiteConnection6 = (SQLiteConnection) obj;
                sQLiteConnection6.getClass();
                return Long.valueOf(categoryDao_Impl.__insertAdapterOfCategory.insertAndReturnId(sQLiteConnection6, category));
            case 11:
                Function2 function22 = (Function2) this.f$0;
                ToggleSettingItem toggleSettingItem = (ToggleSettingItem) this.f$1;
                Boolean bool = (Boolean) obj;
                bool.getClass();
                function22.invoke(toggleSettingItem.key, bool);
                return Unit.INSTANCE;
            case 12:
                EnterTransitionImpl enterTransitionImpl = (EnterTransitionImpl) this.f$0;
                ExitTransitionImpl exitTransitionImpl = (ExitTransitionImpl) this.f$1;
                ((AnimatedContentTransitionScopeImpl) obj).getClass();
                return CrossfadeKt.togetherWith(enterTransitionImpl, exitTransitionImpl);
            case IMAGE_VALUE:
                FocusRequester focusRequester = (FocusRequester) this.f$0;
                MutableState mutableState = (MutableState) this.f$1;
                ((LayoutCoordinates) obj).getClass();
                if (!((Boolean) mutableState.getValue()).booleanValue()) {
                    FocusRequester.m366requestFocus3ESFkO8$default(focusRequester);
                    mutableState.setValue(Boolean.TRUE);
                }
                return Unit.INSTANCE;
            case LINEAR_PROGRESS_INDICATOR_VALUE:
                EditSummaryDao_Impl editSummaryDao_Impl = (EditSummaryDao_Impl) this.f$0;
                EditSummary editSummary = (EditSummary) this.f$1;
                SQLiteConnection sQLiteConnection7 = (SQLiteConnection) obj;
                sQLiteConnection7.getClass();
                editSummaryDao_Impl.__insertAdapterOfEditSummary.insert(sQLiteConnection7, editSummary);
                return Unit.INSTANCE;
            case 15:
                Function1 function1 = (Function1) this.f$0;
                DidYouKnowCard didYouKnowCard = (DidYouKnowCard) this.f$1;
                PageTitle pageTitle = (PageTitle) obj;
                pageTitle.getClass();
                function1.invoke(new HomeAction.PageClick(didYouKnowCard, new HistoryEntry(49, pageTitle)));
                return Unit.INSTANCE;
            case LAZY_VERTICAL_GRID_VALUE:
                Function1 function12 = (Function1) this.f$0;
                NewsCard newsCard = (NewsCard) this.f$1;
                NewsItem newsItem = (NewsItem) obj;
                newsItem.getClass();
                function12.invoke(new HomeAction.NewsClick(newsCard, newsItem));
                return Unit.INSTANCE;
            case VERTICAL_GRID_ITEM_VALUE:
                String str4 = (String) this.f$0;
                InterestArticleDao_Impl interestArticleDao_Impl = (InterestArticleDao_Impl) this.f$1;
                SQLiteConnection sQLiteConnection8 = (SQLiteConnection) obj;
                sQLiteConnection8.getClass();
                prepare = sQLiteConnection8.prepare("SELECT * FROM InterestArticle WHERE lang = ?");
                try {
                    prepare.bindText(1, str4);
                    int columnIndexOrThrow = UnsignedKt.getColumnIndexOrThrow(prepare, "apiTitle");
                    int columnIndexOrThrow2 = UnsignedKt.getColumnIndexOrThrow(prepare, "lang");
                    int columnIndexOrThrow3 = UnsignedKt.getColumnIndexOrThrow(prepare, "namespace");
                    int columnIndexOrThrow4 = UnsignedKt.getColumnIndexOrThrow(prepare, "displayTitle");
                    int columnIndexOrThrow5 = UnsignedKt.getColumnIndexOrThrow(prepare, "description");
                    int columnIndexOrThrow6 = UnsignedKt.getColumnIndexOrThrow(prepare, "thumbUrl");
                    ArrayList arrayList2 = new ArrayList();
                    while (prepare.step()) {
                        String text4 = prepare.getText(columnIndexOrThrow);
                        String text5 = prepare.getText(columnIndexOrThrow2);
                        Integer valueOf = prepare.isNull(columnIndexOrThrow3) ? null : Integer.valueOf((int) prepare.getLong(columnIndexOrThrow3));
                        ByteString.Companion companion = interestArticleDao_Impl.__namespaceTypeConverter;
                        Namespace intToNamespace = ByteString.Companion.intToNamespace(valueOf);
                        if (intToNamespace == null) {
                            throw new IllegalStateException("Expected NON-NULL 'org.wikipedia.page.Namespace', but it was NULL.");
                        }
                        arrayList2.add(new InterestArticle(text4, text5, intToNamespace, prepare.getText(columnIndexOrThrow4), prepare.getText(columnIndexOrThrow5), prepare.getText(columnIndexOrThrow6)));
                    }
                    return arrayList2;
                } catch (Throwable th2) {
                    throw th2;
                }
            case RADIO_GROUP_VALUE:
                String str5 = (String) this.f$0;
                Function1 function13 = (Function1) this.f$1;
                String str6 = (String) obj;
                str6.getClass();
                WikiGamesEvent.submit$default(956, null, null, "language_chip_select_disabled", "games_hub", null, str5, null);
                function13.invoke(str6);
                return Unit.INSTANCE;
            case RADIO_BUTTON_VALUE:
                DailyGameHistoryDao_Impl dailyGameHistoryDao_Impl = (DailyGameHistoryDao_Impl) this.f$0;
                DailyGameHistory dailyGameHistory = (DailyGameHistory) this.f$1;
                SQLiteConnection sQLiteConnection9 = (SQLiteConnection) obj;
                sQLiteConnection9.getClass();
                AndroidSvg androidSvg = dailyGameHistoryDao_Impl.__upsertAdapterOfDailyGameHistory;
                try {
                    j = ((WorkTagDao_Impl.AnonymousClass1) androidSvg.svg).insertAndReturnId(sQLiteConnection9, dailyGameHistory);
                } catch (SQLException e) {
                    String message = e.getMessage();
                    if (message == null) {
                        throw e;
                    }
                    if (!StringsKt.contains(message, "unique", true) && !StringsKt.contains(message, "2067", false) && !StringsKt.contains(message, "1555", false)) {
                        throw e;
                    }
                    ((TalkTemplateDao_Impl.AnonymousClass2) androidSvg.renderOptions).handle(sQLiteConnection9, dailyGameHistory);
                    j = -1;
                }
                return Long.valueOf(j);
            case RADIO_ROW_VALUE:
                HistoryEntryDao_Impl historyEntryDao_Impl = (HistoryEntryDao_Impl) this.f$0;
                HistoryEntry historyEntry = (HistoryEntry) this.f$1;
                SQLiteConnection sQLiteConnection10 = (SQLiteConnection) obj;
                sQLiteConnection10.getClass();
                return Long.valueOf(historyEntryDao_Impl.__insertAdapterOfHistoryEntry.insertAndReturnId(sQLiteConnection10, historyEntry));
            case RADIO_COLUMN_VALUE:
                NotificationDao_Impl notificationDao_Impl = (NotificationDao_Impl) this.f$0;
                List list2 = (List) this.f$1;
                SQLiteConnection sQLiteConnection11 = (SQLiteConnection) obj;
                sQLiteConnection11.getClass();
                WorkTagDao_Impl.AnonymousClass1 anonymousClass1 = notificationDao_Impl.__insertAdapterOfNotification;
                if (list2 != null) {
                    SQLiteStatement prepare2 = sQLiteConnection11.prepare("INSERT OR REPLACE INTO `Notification` (`id`,`wiki`,`read`,`category`,`type`,`revid`,`title`,`agent`,`timestamp`,`contents`) VALUES (?,?,?,?,?,?,?,?,?,?)");
                    try {
                        for (Object obj2 : list2) {
                            if (obj2 != null) {
                                anonymousClass1.bind(prepare2, obj2);
                                prepare2.step();
                                prepare2.reset();
                            }
                        }
                        TuplesKt.closeFinally(prepare2, null);
                    } finally {
                    }
                }
                return Unit.INSTANCE;
            case SIZE_BOX_VALUE:
                NotificationDao_Impl notificationDao_Impl2 = (NotificationDao_Impl) this.f$0;
                Notification notification = (Notification) this.f$1;
                SQLiteConnection sQLiteConnection12 = (SQLiteConnection) obj;
                sQLiteConnection12.getClass();
                notificationDao_Impl2.__updateAdapterOfNotification.handle(sQLiteConnection12, notification);
                return Unit.INSTANCE;
            case 23:
                String str7 = (String) this.f$0;
                String str8 = (String) this.f$1;
                SQLiteConnection sQLiteConnection13 = (SQLiteConnection) obj;
                sQLiteConnection13.getClass();
                prepare = sQLiteConnection13.prepare("SELECT * FROM OfflineObject WHERE url = ? AND lang = ? LIMIT 1");
                try {
                    prepare.bindText(1, str7);
                    prepare.bindText(2, str8);
                    int columnIndexOrThrow7 = UnsignedKt.getColumnIndexOrThrow(prepare, "id");
                    int columnIndexOrThrow8 = UnsignedKt.getColumnIndexOrThrow(prepare, "url");
                    int columnIndexOrThrow9 = UnsignedKt.getColumnIndexOrThrow(prepare, "lang");
                    int columnIndexOrThrow10 = UnsignedKt.getColumnIndexOrThrow(prepare, "path");
                    return prepare.step() ? new OfflineObject((int) prepare.getLong(columnIndexOrThrow7), (int) prepare.getLong(UnsignedKt.getColumnIndexOrThrow(prepare, "status")), prepare.getText(columnIndexOrThrow8), prepare.getText(columnIndexOrThrow9), prepare.getText(columnIndexOrThrow10), prepare.getText(UnsignedKt.getColumnIndexOrThrow(prepare, "usedByStr"))) : null;
                } finally {
                }
            case 24:
                List list3 = (List) this.f$0;
                AppLanguageState appLanguageState = (AppLanguageState) this.f$1;
                LazyListIntervalContent lazyListIntervalContent = (LazyListIntervalContent) obj;
                lazyListIntervalContent.getClass();
                lazyListIntervalContent.items(list3.size(), null, LazyListScope$items$1.INSTANCE, new ComposableLambdaImpl(new ActivityTabFragment$$ExternalSyntheticLambda34(i3, appLanguageState, list3), true, 1329610780));
                return Unit.INSTANCE;
            case 25:
                PageImageDao_Impl pageImageDao_Impl = (PageImageDao_Impl) this.f$0;
                PageImage pageImage = (PageImage) this.f$1;
                SQLiteConnection sQLiteConnection14 = (SQLiteConnection) obj;
                sQLiteConnection14.getClass();
                pageImageDao_Impl.__insertAdapterOfPageImage.insert(sQLiteConnection14, pageImage);
                return Unit.INSTANCE;
            case 26:
                String str9 = (String) this.f$0;
                Set set = (Set) this.f$1;
                SQLiteConnection sQLiteConnection15 = (SQLiteConnection) obj;
                sQLiteConnection15.getClass();
                prepare = sQLiteConnection15.prepare(str9);
                try {
                    Iterator it = set.iterator();
                    int i8 = 1;
                    while (it.hasNext()) {
                        prepare.bindLong(((Number) it.next()).longValue(), i8);
                        i8++;
                    }
                    int columnIndexOrThrow11 = UnsignedKt.getColumnIndexOrThrow(prepare, "listTitle");
                    int columnIndexOrThrow12 = UnsignedKt.getColumnIndexOrThrow(prepare, "description");
                    int columnIndexOrThrow13 = UnsignedKt.getColumnIndexOrThrow(prepare, "mtime");
                    int columnIndexOrThrow14 = UnsignedKt.getColumnIndexOrThrow(prepare, "atime");
                    int columnIndexOrThrow15 = UnsignedKt.getColumnIndexOrThrow(prepare, "id");
                    int columnIndexOrThrow16 = UnsignedKt.getColumnIndexOrThrow(prepare, "sizeBytes");
                    int columnIndexOrThrow17 = UnsignedKt.getColumnIndexOrThrow(prepare, "dirty");
                    int columnIndexOrThrow18 = UnsignedKt.getColumnIndexOrThrow(prepare, "remoteId");
                    ArrayList arrayList3 = new ArrayList();
                    while (prepare.step()) {
                        arrayList3.add(new ReadingList(prepare.getText(columnIndexOrThrow11), prepare.isNull(columnIndexOrThrow12) ? null : prepare.getText(columnIndexOrThrow12), prepare.getLong(columnIndexOrThrow13), prepare.getLong(columnIndexOrThrow14), prepare.getLong(columnIndexOrThrow15), prepare.getLong(columnIndexOrThrow16), ((int) prepare.getLong(columnIndexOrThrow17)) != 0, prepare.getLong(columnIndexOrThrow18)));
                    }
                    return arrayList3;
                } catch (Throwable th3) {
                    throw th3;
                }
            case 27:
                ReadingListPageDao_Impl readingListPageDao_Impl = (ReadingListPageDao_Impl) this.f$0;
                List list4 = (List) this.f$1;
                SQLiteConnection sQLiteConnection16 = (SQLiteConnection) obj;
                sQLiteConnection16.getClass();
                readingListPageDao_Impl.__updateAdapterOfReadingListPage.handleMultiple(sQLiteConnection16, list4);
                return Unit.INSTANCE;
            case 28:
                RecommendedPageDao_Impl recommendedPageDao_Impl = (RecommendedPageDao_Impl) this.f$0;
                ArrayList arrayList4 = (ArrayList) this.f$1;
                SQLiteConnection sQLiteConnection17 = (SQLiteConnection) obj;
                sQLiteConnection17.getClass();
                recommendedPageDao_Impl.__updateAdapterOfRecommendedPage.handleMultiple(sQLiteConnection17, arrayList4);
                return Unit.INSTANCE;
            default:
                RecommendedPageDao_Impl recommendedPageDao_Impl2 = (RecommendedPageDao_Impl) this.f$0;
                RecommendedPage recommendedPage = (RecommendedPage) this.f$1;
                SQLiteConnection sQLiteConnection18 = (SQLiteConnection) obj;
                sQLiteConnection18.getClass();
                recommendedPageDao_Impl2.__insertAdapterOfRecommendedPage.insert(sQLiteConnection18, recommendedPage);
                return Unit.INSTANCE;
        }
    }
}
