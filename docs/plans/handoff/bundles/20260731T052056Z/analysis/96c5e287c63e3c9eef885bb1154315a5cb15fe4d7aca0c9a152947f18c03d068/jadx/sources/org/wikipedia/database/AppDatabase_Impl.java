package org.wikipedia.database;

import androidx.room.InvalidationTracker;
import androidx.room.RoomOpenDelegate;
import androidx.work.impl.WorkDatabase_Impl$createOpenDelegate$_openDelegate$1;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import kotlin.Metadata;
import kotlin.SynchronizedLazyImpl;
import kotlin.collections.EmptyList;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.ReflectionFactory;
import kotlin.reflect.KClass;
import org.wikipedia.categories.db.CategoryDao_Impl;
import org.wikipedia.edit.db.EditSummaryDao_Impl;
import org.wikipedia.feed.personalization.db.dao.InterestArticleDao_Impl;
import org.wikipedia.feed.personalization.db.dao.InterestTopicDao_Impl;
import org.wikipedia.games.db.DailyGameHistoryDao_Impl;
import org.wikipedia.history.db.HistoryEntryDao_Impl;
import org.wikipedia.history.db.HistoryEntryWithImageDao_Impl;
import org.wikipedia.notifications.db.NotificationDao_Impl;
import org.wikipedia.offline.db.OfflineObjectDao_Impl;
import org.wikipedia.pageimages.db.PageImageDao_Impl;
import org.wikipedia.readinglist.db.ReadingListDao_Impl;
import org.wikipedia.readinglist.db.ReadingListPageDao_Impl;
import org.wikipedia.readinglist.db.RecommendedPageDao_Impl;
import org.wikipedia.search.db.RecentSearchDao_Impl;
import org.wikipedia.talk.db.TalkPageSeenDao_Impl;
import org.wikipedia.talk.db.TalkTemplateDao_Impl;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0007\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lorg/wikipedia/database/AppDatabase_Impl;", "Lorg/wikipedia/database/AppDatabase;", "<init>", "()V", "app"}, k = 1, mv = {2, 3, 0}, xi = 48)
/* loaded from: classes.dex */
public final class AppDatabase_Impl extends AppDatabase {
    public static final /* synthetic */ int $r8$clinit = 0;
    public final SynchronizedLazyImpl _categoryDao;
    public final SynchronizedLazyImpl _dailyGameHistoryDao;
    public final SynchronizedLazyImpl _editSummaryDao;
    public final SynchronizedLazyImpl _historyEntryDao;
    public final SynchronizedLazyImpl _historyEntryWithImageDao;
    public final SynchronizedLazyImpl _interestArticleDao;
    public final SynchronizedLazyImpl _interestTopicDao;
    public final SynchronizedLazyImpl _notificationDao;
    public final SynchronizedLazyImpl _offlineObjectDao;
    public final SynchronizedLazyImpl _pageImageDao;
    public final SynchronizedLazyImpl _readingListDao;
    public final SynchronizedLazyImpl _readingListPageDao;
    public final SynchronizedLazyImpl _recentSearchDao;
    public final SynchronizedLazyImpl _recommendedPageDao;
    public final SynchronizedLazyImpl _talkPageSeenDao;
    public final SynchronizedLazyImpl _talkTemplateDao;

    public AppDatabase_Impl() {
        final int i = 0;
        this._historyEntryDao = new SynchronizedLazyImpl(new Function0(this) { // from class: org.wikipedia.database.AppDatabase_Impl$$ExternalSyntheticLambda0
            public final /* synthetic */ AppDatabase_Impl f$0;

            {
                this.f$0 = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i2 = i;
                AppDatabase_Impl appDatabase_Impl = this.f$0;
                switch (i2) {
                    case 0:
                        int i3 = AppDatabase_Impl.$r8$clinit;
                        return new HistoryEntryDao_Impl(appDatabase_Impl);
                    case 1:
                        int i4 = AppDatabase_Impl.$r8$clinit;
                        return new TalkPageSeenDao_Impl(appDatabase_Impl);
                    case 2:
                        int i5 = AppDatabase_Impl.$r8$clinit;
                        return new EditSummaryDao_Impl(appDatabase_Impl);
                    case 3:
                        int i6 = AppDatabase_Impl.$r8$clinit;
                        return new OfflineObjectDao_Impl(appDatabase_Impl);
                    case 4:
                        int i7 = AppDatabase_Impl.$r8$clinit;
                        return new ReadingListDao_Impl(appDatabase_Impl);
                    case 5:
                        int i8 = AppDatabase_Impl.$r8$clinit;
                        return new ReadingListPageDao_Impl(appDatabase_Impl);
                    case 6:
                        int i9 = AppDatabase_Impl.$r8$clinit;
                        return new NotificationDao_Impl(appDatabase_Impl);
                    case 7:
                        int i10 = AppDatabase_Impl.$r8$clinit;
                        return new TalkTemplateDao_Impl(appDatabase_Impl);
                    case 8:
                        int i11 = AppDatabase_Impl.$r8$clinit;
                        return new CategoryDao_Impl(appDatabase_Impl);
                    case 9:
                        int i12 = AppDatabase_Impl.$r8$clinit;
                        return new DailyGameHistoryDao_Impl(appDatabase_Impl);
                    case 10:
                        int i13 = AppDatabase_Impl.$r8$clinit;
                        return new RecommendedPageDao_Impl(appDatabase_Impl);
                    case 11:
                        int i14 = AppDatabase_Impl.$r8$clinit;
                        return new InterestTopicDao_Impl(appDatabase_Impl);
                    case 12:
                        int i15 = AppDatabase_Impl.$r8$clinit;
                        return new InterestArticleDao_Impl(appDatabase_Impl);
                    case IMAGE_VALUE:
                        int i16 = AppDatabase_Impl.$r8$clinit;
                        return new HistoryEntryWithImageDao_Impl(appDatabase_Impl);
                    case LINEAR_PROGRESS_INDICATOR_VALUE:
                        int i17 = AppDatabase_Impl.$r8$clinit;
                        return new PageImageDao_Impl(appDatabase_Impl);
                    default:
                        int i18 = AppDatabase_Impl.$r8$clinit;
                        return new RecentSearchDao_Impl(appDatabase_Impl);
                }
            }
        });
        final int i2 = 13;
        this._historyEntryWithImageDao = new SynchronizedLazyImpl(new Function0(this) { // from class: org.wikipedia.database.AppDatabase_Impl$$ExternalSyntheticLambda0
            public final /* synthetic */ AppDatabase_Impl f$0;

            {
                this.f$0 = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i22 = i2;
                AppDatabase_Impl appDatabase_Impl = this.f$0;
                switch (i22) {
                    case 0:
                        int i3 = AppDatabase_Impl.$r8$clinit;
                        return new HistoryEntryDao_Impl(appDatabase_Impl);
                    case 1:
                        int i4 = AppDatabase_Impl.$r8$clinit;
                        return new TalkPageSeenDao_Impl(appDatabase_Impl);
                    case 2:
                        int i5 = AppDatabase_Impl.$r8$clinit;
                        return new EditSummaryDao_Impl(appDatabase_Impl);
                    case 3:
                        int i6 = AppDatabase_Impl.$r8$clinit;
                        return new OfflineObjectDao_Impl(appDatabase_Impl);
                    case 4:
                        int i7 = AppDatabase_Impl.$r8$clinit;
                        return new ReadingListDao_Impl(appDatabase_Impl);
                    case 5:
                        int i8 = AppDatabase_Impl.$r8$clinit;
                        return new ReadingListPageDao_Impl(appDatabase_Impl);
                    case 6:
                        int i9 = AppDatabase_Impl.$r8$clinit;
                        return new NotificationDao_Impl(appDatabase_Impl);
                    case 7:
                        int i10 = AppDatabase_Impl.$r8$clinit;
                        return new TalkTemplateDao_Impl(appDatabase_Impl);
                    case 8:
                        int i11 = AppDatabase_Impl.$r8$clinit;
                        return new CategoryDao_Impl(appDatabase_Impl);
                    case 9:
                        int i12 = AppDatabase_Impl.$r8$clinit;
                        return new DailyGameHistoryDao_Impl(appDatabase_Impl);
                    case 10:
                        int i13 = AppDatabase_Impl.$r8$clinit;
                        return new RecommendedPageDao_Impl(appDatabase_Impl);
                    case 11:
                        int i14 = AppDatabase_Impl.$r8$clinit;
                        return new InterestTopicDao_Impl(appDatabase_Impl);
                    case 12:
                        int i15 = AppDatabase_Impl.$r8$clinit;
                        return new InterestArticleDao_Impl(appDatabase_Impl);
                    case IMAGE_VALUE:
                        int i16 = AppDatabase_Impl.$r8$clinit;
                        return new HistoryEntryWithImageDao_Impl(appDatabase_Impl);
                    case LINEAR_PROGRESS_INDICATOR_VALUE:
                        int i17 = AppDatabase_Impl.$r8$clinit;
                        return new PageImageDao_Impl(appDatabase_Impl);
                    default:
                        int i18 = AppDatabase_Impl.$r8$clinit;
                        return new RecentSearchDao_Impl(appDatabase_Impl);
                }
            }
        });
        final int i3 = 14;
        this._pageImageDao = new SynchronizedLazyImpl(new Function0(this) { // from class: org.wikipedia.database.AppDatabase_Impl$$ExternalSyntheticLambda0
            public final /* synthetic */ AppDatabase_Impl f$0;

            {
                this.f$0 = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i22 = i3;
                AppDatabase_Impl appDatabase_Impl = this.f$0;
                switch (i22) {
                    case 0:
                        int i32 = AppDatabase_Impl.$r8$clinit;
                        return new HistoryEntryDao_Impl(appDatabase_Impl);
                    case 1:
                        int i4 = AppDatabase_Impl.$r8$clinit;
                        return new TalkPageSeenDao_Impl(appDatabase_Impl);
                    case 2:
                        int i5 = AppDatabase_Impl.$r8$clinit;
                        return new EditSummaryDao_Impl(appDatabase_Impl);
                    case 3:
                        int i6 = AppDatabase_Impl.$r8$clinit;
                        return new OfflineObjectDao_Impl(appDatabase_Impl);
                    case 4:
                        int i7 = AppDatabase_Impl.$r8$clinit;
                        return new ReadingListDao_Impl(appDatabase_Impl);
                    case 5:
                        int i8 = AppDatabase_Impl.$r8$clinit;
                        return new ReadingListPageDao_Impl(appDatabase_Impl);
                    case 6:
                        int i9 = AppDatabase_Impl.$r8$clinit;
                        return new NotificationDao_Impl(appDatabase_Impl);
                    case 7:
                        int i10 = AppDatabase_Impl.$r8$clinit;
                        return new TalkTemplateDao_Impl(appDatabase_Impl);
                    case 8:
                        int i11 = AppDatabase_Impl.$r8$clinit;
                        return new CategoryDao_Impl(appDatabase_Impl);
                    case 9:
                        int i12 = AppDatabase_Impl.$r8$clinit;
                        return new DailyGameHistoryDao_Impl(appDatabase_Impl);
                    case 10:
                        int i13 = AppDatabase_Impl.$r8$clinit;
                        return new RecommendedPageDao_Impl(appDatabase_Impl);
                    case 11:
                        int i14 = AppDatabase_Impl.$r8$clinit;
                        return new InterestTopicDao_Impl(appDatabase_Impl);
                    case 12:
                        int i15 = AppDatabase_Impl.$r8$clinit;
                        return new InterestArticleDao_Impl(appDatabase_Impl);
                    case IMAGE_VALUE:
                        int i16 = AppDatabase_Impl.$r8$clinit;
                        return new HistoryEntryWithImageDao_Impl(appDatabase_Impl);
                    case LINEAR_PROGRESS_INDICATOR_VALUE:
                        int i17 = AppDatabase_Impl.$r8$clinit;
                        return new PageImageDao_Impl(appDatabase_Impl);
                    default:
                        int i18 = AppDatabase_Impl.$r8$clinit;
                        return new RecentSearchDao_Impl(appDatabase_Impl);
                }
            }
        });
        final int i4 = 15;
        this._recentSearchDao = new SynchronizedLazyImpl(new Function0(this) { // from class: org.wikipedia.database.AppDatabase_Impl$$ExternalSyntheticLambda0
            public final /* synthetic */ AppDatabase_Impl f$0;

            {
                this.f$0 = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i22 = i4;
                AppDatabase_Impl appDatabase_Impl = this.f$0;
                switch (i22) {
                    case 0:
                        int i32 = AppDatabase_Impl.$r8$clinit;
                        return new HistoryEntryDao_Impl(appDatabase_Impl);
                    case 1:
                        int i42 = AppDatabase_Impl.$r8$clinit;
                        return new TalkPageSeenDao_Impl(appDatabase_Impl);
                    case 2:
                        int i5 = AppDatabase_Impl.$r8$clinit;
                        return new EditSummaryDao_Impl(appDatabase_Impl);
                    case 3:
                        int i6 = AppDatabase_Impl.$r8$clinit;
                        return new OfflineObjectDao_Impl(appDatabase_Impl);
                    case 4:
                        int i7 = AppDatabase_Impl.$r8$clinit;
                        return new ReadingListDao_Impl(appDatabase_Impl);
                    case 5:
                        int i8 = AppDatabase_Impl.$r8$clinit;
                        return new ReadingListPageDao_Impl(appDatabase_Impl);
                    case 6:
                        int i9 = AppDatabase_Impl.$r8$clinit;
                        return new NotificationDao_Impl(appDatabase_Impl);
                    case 7:
                        int i10 = AppDatabase_Impl.$r8$clinit;
                        return new TalkTemplateDao_Impl(appDatabase_Impl);
                    case 8:
                        int i11 = AppDatabase_Impl.$r8$clinit;
                        return new CategoryDao_Impl(appDatabase_Impl);
                    case 9:
                        int i12 = AppDatabase_Impl.$r8$clinit;
                        return new DailyGameHistoryDao_Impl(appDatabase_Impl);
                    case 10:
                        int i13 = AppDatabase_Impl.$r8$clinit;
                        return new RecommendedPageDao_Impl(appDatabase_Impl);
                    case 11:
                        int i14 = AppDatabase_Impl.$r8$clinit;
                        return new InterestTopicDao_Impl(appDatabase_Impl);
                    case 12:
                        int i15 = AppDatabase_Impl.$r8$clinit;
                        return new InterestArticleDao_Impl(appDatabase_Impl);
                    case IMAGE_VALUE:
                        int i16 = AppDatabase_Impl.$r8$clinit;
                        return new HistoryEntryWithImageDao_Impl(appDatabase_Impl);
                    case LINEAR_PROGRESS_INDICATOR_VALUE:
                        int i17 = AppDatabase_Impl.$r8$clinit;
                        return new PageImageDao_Impl(appDatabase_Impl);
                    default:
                        int i18 = AppDatabase_Impl.$r8$clinit;
                        return new RecentSearchDao_Impl(appDatabase_Impl);
                }
            }
        });
        final int i5 = 1;
        this._talkPageSeenDao = new SynchronizedLazyImpl(new Function0(this) { // from class: org.wikipedia.database.AppDatabase_Impl$$ExternalSyntheticLambda0
            public final /* synthetic */ AppDatabase_Impl f$0;

            {
                this.f$0 = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i22 = i5;
                AppDatabase_Impl appDatabase_Impl = this.f$0;
                switch (i22) {
                    case 0:
                        int i32 = AppDatabase_Impl.$r8$clinit;
                        return new HistoryEntryDao_Impl(appDatabase_Impl);
                    case 1:
                        int i42 = AppDatabase_Impl.$r8$clinit;
                        return new TalkPageSeenDao_Impl(appDatabase_Impl);
                    case 2:
                        int i52 = AppDatabase_Impl.$r8$clinit;
                        return new EditSummaryDao_Impl(appDatabase_Impl);
                    case 3:
                        int i6 = AppDatabase_Impl.$r8$clinit;
                        return new OfflineObjectDao_Impl(appDatabase_Impl);
                    case 4:
                        int i7 = AppDatabase_Impl.$r8$clinit;
                        return new ReadingListDao_Impl(appDatabase_Impl);
                    case 5:
                        int i8 = AppDatabase_Impl.$r8$clinit;
                        return new ReadingListPageDao_Impl(appDatabase_Impl);
                    case 6:
                        int i9 = AppDatabase_Impl.$r8$clinit;
                        return new NotificationDao_Impl(appDatabase_Impl);
                    case 7:
                        int i10 = AppDatabase_Impl.$r8$clinit;
                        return new TalkTemplateDao_Impl(appDatabase_Impl);
                    case 8:
                        int i11 = AppDatabase_Impl.$r8$clinit;
                        return new CategoryDao_Impl(appDatabase_Impl);
                    case 9:
                        int i12 = AppDatabase_Impl.$r8$clinit;
                        return new DailyGameHistoryDao_Impl(appDatabase_Impl);
                    case 10:
                        int i13 = AppDatabase_Impl.$r8$clinit;
                        return new RecommendedPageDao_Impl(appDatabase_Impl);
                    case 11:
                        int i14 = AppDatabase_Impl.$r8$clinit;
                        return new InterestTopicDao_Impl(appDatabase_Impl);
                    case 12:
                        int i15 = AppDatabase_Impl.$r8$clinit;
                        return new InterestArticleDao_Impl(appDatabase_Impl);
                    case IMAGE_VALUE:
                        int i16 = AppDatabase_Impl.$r8$clinit;
                        return new HistoryEntryWithImageDao_Impl(appDatabase_Impl);
                    case LINEAR_PROGRESS_INDICATOR_VALUE:
                        int i17 = AppDatabase_Impl.$r8$clinit;
                        return new PageImageDao_Impl(appDatabase_Impl);
                    default:
                        int i18 = AppDatabase_Impl.$r8$clinit;
                        return new RecentSearchDao_Impl(appDatabase_Impl);
                }
            }
        });
        final int i6 = 2;
        this._editSummaryDao = new SynchronizedLazyImpl(new Function0(this) { // from class: org.wikipedia.database.AppDatabase_Impl$$ExternalSyntheticLambda0
            public final /* synthetic */ AppDatabase_Impl f$0;

            {
                this.f$0 = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i22 = i6;
                AppDatabase_Impl appDatabase_Impl = this.f$0;
                switch (i22) {
                    case 0:
                        int i32 = AppDatabase_Impl.$r8$clinit;
                        return new HistoryEntryDao_Impl(appDatabase_Impl);
                    case 1:
                        int i42 = AppDatabase_Impl.$r8$clinit;
                        return new TalkPageSeenDao_Impl(appDatabase_Impl);
                    case 2:
                        int i52 = AppDatabase_Impl.$r8$clinit;
                        return new EditSummaryDao_Impl(appDatabase_Impl);
                    case 3:
                        int i62 = AppDatabase_Impl.$r8$clinit;
                        return new OfflineObjectDao_Impl(appDatabase_Impl);
                    case 4:
                        int i7 = AppDatabase_Impl.$r8$clinit;
                        return new ReadingListDao_Impl(appDatabase_Impl);
                    case 5:
                        int i8 = AppDatabase_Impl.$r8$clinit;
                        return new ReadingListPageDao_Impl(appDatabase_Impl);
                    case 6:
                        int i9 = AppDatabase_Impl.$r8$clinit;
                        return new NotificationDao_Impl(appDatabase_Impl);
                    case 7:
                        int i10 = AppDatabase_Impl.$r8$clinit;
                        return new TalkTemplateDao_Impl(appDatabase_Impl);
                    case 8:
                        int i11 = AppDatabase_Impl.$r8$clinit;
                        return new CategoryDao_Impl(appDatabase_Impl);
                    case 9:
                        int i12 = AppDatabase_Impl.$r8$clinit;
                        return new DailyGameHistoryDao_Impl(appDatabase_Impl);
                    case 10:
                        int i13 = AppDatabase_Impl.$r8$clinit;
                        return new RecommendedPageDao_Impl(appDatabase_Impl);
                    case 11:
                        int i14 = AppDatabase_Impl.$r8$clinit;
                        return new InterestTopicDao_Impl(appDatabase_Impl);
                    case 12:
                        int i15 = AppDatabase_Impl.$r8$clinit;
                        return new InterestArticleDao_Impl(appDatabase_Impl);
                    case IMAGE_VALUE:
                        int i16 = AppDatabase_Impl.$r8$clinit;
                        return new HistoryEntryWithImageDao_Impl(appDatabase_Impl);
                    case LINEAR_PROGRESS_INDICATOR_VALUE:
                        int i17 = AppDatabase_Impl.$r8$clinit;
                        return new PageImageDao_Impl(appDatabase_Impl);
                    default:
                        int i18 = AppDatabase_Impl.$r8$clinit;
                        return new RecentSearchDao_Impl(appDatabase_Impl);
                }
            }
        });
        final int i7 = 3;
        this._offlineObjectDao = new SynchronizedLazyImpl(new Function0(this) { // from class: org.wikipedia.database.AppDatabase_Impl$$ExternalSyntheticLambda0
            public final /* synthetic */ AppDatabase_Impl f$0;

            {
                this.f$0 = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i22 = i7;
                AppDatabase_Impl appDatabase_Impl = this.f$0;
                switch (i22) {
                    case 0:
                        int i32 = AppDatabase_Impl.$r8$clinit;
                        return new HistoryEntryDao_Impl(appDatabase_Impl);
                    case 1:
                        int i42 = AppDatabase_Impl.$r8$clinit;
                        return new TalkPageSeenDao_Impl(appDatabase_Impl);
                    case 2:
                        int i52 = AppDatabase_Impl.$r8$clinit;
                        return new EditSummaryDao_Impl(appDatabase_Impl);
                    case 3:
                        int i62 = AppDatabase_Impl.$r8$clinit;
                        return new OfflineObjectDao_Impl(appDatabase_Impl);
                    case 4:
                        int i72 = AppDatabase_Impl.$r8$clinit;
                        return new ReadingListDao_Impl(appDatabase_Impl);
                    case 5:
                        int i8 = AppDatabase_Impl.$r8$clinit;
                        return new ReadingListPageDao_Impl(appDatabase_Impl);
                    case 6:
                        int i9 = AppDatabase_Impl.$r8$clinit;
                        return new NotificationDao_Impl(appDatabase_Impl);
                    case 7:
                        int i10 = AppDatabase_Impl.$r8$clinit;
                        return new TalkTemplateDao_Impl(appDatabase_Impl);
                    case 8:
                        int i11 = AppDatabase_Impl.$r8$clinit;
                        return new CategoryDao_Impl(appDatabase_Impl);
                    case 9:
                        int i12 = AppDatabase_Impl.$r8$clinit;
                        return new DailyGameHistoryDao_Impl(appDatabase_Impl);
                    case 10:
                        int i13 = AppDatabase_Impl.$r8$clinit;
                        return new RecommendedPageDao_Impl(appDatabase_Impl);
                    case 11:
                        int i14 = AppDatabase_Impl.$r8$clinit;
                        return new InterestTopicDao_Impl(appDatabase_Impl);
                    case 12:
                        int i15 = AppDatabase_Impl.$r8$clinit;
                        return new InterestArticleDao_Impl(appDatabase_Impl);
                    case IMAGE_VALUE:
                        int i16 = AppDatabase_Impl.$r8$clinit;
                        return new HistoryEntryWithImageDao_Impl(appDatabase_Impl);
                    case LINEAR_PROGRESS_INDICATOR_VALUE:
                        int i17 = AppDatabase_Impl.$r8$clinit;
                        return new PageImageDao_Impl(appDatabase_Impl);
                    default:
                        int i18 = AppDatabase_Impl.$r8$clinit;
                        return new RecentSearchDao_Impl(appDatabase_Impl);
                }
            }
        });
        final int i8 = 4;
        this._readingListDao = new SynchronizedLazyImpl(new Function0(this) { // from class: org.wikipedia.database.AppDatabase_Impl$$ExternalSyntheticLambda0
            public final /* synthetic */ AppDatabase_Impl f$0;

            {
                this.f$0 = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i22 = i8;
                AppDatabase_Impl appDatabase_Impl = this.f$0;
                switch (i22) {
                    case 0:
                        int i32 = AppDatabase_Impl.$r8$clinit;
                        return new HistoryEntryDao_Impl(appDatabase_Impl);
                    case 1:
                        int i42 = AppDatabase_Impl.$r8$clinit;
                        return new TalkPageSeenDao_Impl(appDatabase_Impl);
                    case 2:
                        int i52 = AppDatabase_Impl.$r8$clinit;
                        return new EditSummaryDao_Impl(appDatabase_Impl);
                    case 3:
                        int i62 = AppDatabase_Impl.$r8$clinit;
                        return new OfflineObjectDao_Impl(appDatabase_Impl);
                    case 4:
                        int i72 = AppDatabase_Impl.$r8$clinit;
                        return new ReadingListDao_Impl(appDatabase_Impl);
                    case 5:
                        int i82 = AppDatabase_Impl.$r8$clinit;
                        return new ReadingListPageDao_Impl(appDatabase_Impl);
                    case 6:
                        int i9 = AppDatabase_Impl.$r8$clinit;
                        return new NotificationDao_Impl(appDatabase_Impl);
                    case 7:
                        int i10 = AppDatabase_Impl.$r8$clinit;
                        return new TalkTemplateDao_Impl(appDatabase_Impl);
                    case 8:
                        int i11 = AppDatabase_Impl.$r8$clinit;
                        return new CategoryDao_Impl(appDatabase_Impl);
                    case 9:
                        int i12 = AppDatabase_Impl.$r8$clinit;
                        return new DailyGameHistoryDao_Impl(appDatabase_Impl);
                    case 10:
                        int i13 = AppDatabase_Impl.$r8$clinit;
                        return new RecommendedPageDao_Impl(appDatabase_Impl);
                    case 11:
                        int i14 = AppDatabase_Impl.$r8$clinit;
                        return new InterestTopicDao_Impl(appDatabase_Impl);
                    case 12:
                        int i15 = AppDatabase_Impl.$r8$clinit;
                        return new InterestArticleDao_Impl(appDatabase_Impl);
                    case IMAGE_VALUE:
                        int i16 = AppDatabase_Impl.$r8$clinit;
                        return new HistoryEntryWithImageDao_Impl(appDatabase_Impl);
                    case LINEAR_PROGRESS_INDICATOR_VALUE:
                        int i17 = AppDatabase_Impl.$r8$clinit;
                        return new PageImageDao_Impl(appDatabase_Impl);
                    default:
                        int i18 = AppDatabase_Impl.$r8$clinit;
                        return new RecentSearchDao_Impl(appDatabase_Impl);
                }
            }
        });
        final int i9 = 5;
        this._readingListPageDao = new SynchronizedLazyImpl(new Function0(this) { // from class: org.wikipedia.database.AppDatabase_Impl$$ExternalSyntheticLambda0
            public final /* synthetic */ AppDatabase_Impl f$0;

            {
                this.f$0 = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i22 = i9;
                AppDatabase_Impl appDatabase_Impl = this.f$0;
                switch (i22) {
                    case 0:
                        int i32 = AppDatabase_Impl.$r8$clinit;
                        return new HistoryEntryDao_Impl(appDatabase_Impl);
                    case 1:
                        int i42 = AppDatabase_Impl.$r8$clinit;
                        return new TalkPageSeenDao_Impl(appDatabase_Impl);
                    case 2:
                        int i52 = AppDatabase_Impl.$r8$clinit;
                        return new EditSummaryDao_Impl(appDatabase_Impl);
                    case 3:
                        int i62 = AppDatabase_Impl.$r8$clinit;
                        return new OfflineObjectDao_Impl(appDatabase_Impl);
                    case 4:
                        int i72 = AppDatabase_Impl.$r8$clinit;
                        return new ReadingListDao_Impl(appDatabase_Impl);
                    case 5:
                        int i82 = AppDatabase_Impl.$r8$clinit;
                        return new ReadingListPageDao_Impl(appDatabase_Impl);
                    case 6:
                        int i92 = AppDatabase_Impl.$r8$clinit;
                        return new NotificationDao_Impl(appDatabase_Impl);
                    case 7:
                        int i10 = AppDatabase_Impl.$r8$clinit;
                        return new TalkTemplateDao_Impl(appDatabase_Impl);
                    case 8:
                        int i11 = AppDatabase_Impl.$r8$clinit;
                        return new CategoryDao_Impl(appDatabase_Impl);
                    case 9:
                        int i12 = AppDatabase_Impl.$r8$clinit;
                        return new DailyGameHistoryDao_Impl(appDatabase_Impl);
                    case 10:
                        int i13 = AppDatabase_Impl.$r8$clinit;
                        return new RecommendedPageDao_Impl(appDatabase_Impl);
                    case 11:
                        int i14 = AppDatabase_Impl.$r8$clinit;
                        return new InterestTopicDao_Impl(appDatabase_Impl);
                    case 12:
                        int i15 = AppDatabase_Impl.$r8$clinit;
                        return new InterestArticleDao_Impl(appDatabase_Impl);
                    case IMAGE_VALUE:
                        int i16 = AppDatabase_Impl.$r8$clinit;
                        return new HistoryEntryWithImageDao_Impl(appDatabase_Impl);
                    case LINEAR_PROGRESS_INDICATOR_VALUE:
                        int i17 = AppDatabase_Impl.$r8$clinit;
                        return new PageImageDao_Impl(appDatabase_Impl);
                    default:
                        int i18 = AppDatabase_Impl.$r8$clinit;
                        return new RecentSearchDao_Impl(appDatabase_Impl);
                }
            }
        });
        final int i10 = 6;
        this._notificationDao = new SynchronizedLazyImpl(new Function0(this) { // from class: org.wikipedia.database.AppDatabase_Impl$$ExternalSyntheticLambda0
            public final /* synthetic */ AppDatabase_Impl f$0;

            {
                this.f$0 = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i22 = i10;
                AppDatabase_Impl appDatabase_Impl = this.f$0;
                switch (i22) {
                    case 0:
                        int i32 = AppDatabase_Impl.$r8$clinit;
                        return new HistoryEntryDao_Impl(appDatabase_Impl);
                    case 1:
                        int i42 = AppDatabase_Impl.$r8$clinit;
                        return new TalkPageSeenDao_Impl(appDatabase_Impl);
                    case 2:
                        int i52 = AppDatabase_Impl.$r8$clinit;
                        return new EditSummaryDao_Impl(appDatabase_Impl);
                    case 3:
                        int i62 = AppDatabase_Impl.$r8$clinit;
                        return new OfflineObjectDao_Impl(appDatabase_Impl);
                    case 4:
                        int i72 = AppDatabase_Impl.$r8$clinit;
                        return new ReadingListDao_Impl(appDatabase_Impl);
                    case 5:
                        int i82 = AppDatabase_Impl.$r8$clinit;
                        return new ReadingListPageDao_Impl(appDatabase_Impl);
                    case 6:
                        int i92 = AppDatabase_Impl.$r8$clinit;
                        return new NotificationDao_Impl(appDatabase_Impl);
                    case 7:
                        int i102 = AppDatabase_Impl.$r8$clinit;
                        return new TalkTemplateDao_Impl(appDatabase_Impl);
                    case 8:
                        int i11 = AppDatabase_Impl.$r8$clinit;
                        return new CategoryDao_Impl(appDatabase_Impl);
                    case 9:
                        int i12 = AppDatabase_Impl.$r8$clinit;
                        return new DailyGameHistoryDao_Impl(appDatabase_Impl);
                    case 10:
                        int i13 = AppDatabase_Impl.$r8$clinit;
                        return new RecommendedPageDao_Impl(appDatabase_Impl);
                    case 11:
                        int i14 = AppDatabase_Impl.$r8$clinit;
                        return new InterestTopicDao_Impl(appDatabase_Impl);
                    case 12:
                        int i15 = AppDatabase_Impl.$r8$clinit;
                        return new InterestArticleDao_Impl(appDatabase_Impl);
                    case IMAGE_VALUE:
                        int i16 = AppDatabase_Impl.$r8$clinit;
                        return new HistoryEntryWithImageDao_Impl(appDatabase_Impl);
                    case LINEAR_PROGRESS_INDICATOR_VALUE:
                        int i17 = AppDatabase_Impl.$r8$clinit;
                        return new PageImageDao_Impl(appDatabase_Impl);
                    default:
                        int i18 = AppDatabase_Impl.$r8$clinit;
                        return new RecentSearchDao_Impl(appDatabase_Impl);
                }
            }
        });
        final int i11 = 7;
        this._talkTemplateDao = new SynchronizedLazyImpl(new Function0(this) { // from class: org.wikipedia.database.AppDatabase_Impl$$ExternalSyntheticLambda0
            public final /* synthetic */ AppDatabase_Impl f$0;

            {
                this.f$0 = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i22 = i11;
                AppDatabase_Impl appDatabase_Impl = this.f$0;
                switch (i22) {
                    case 0:
                        int i32 = AppDatabase_Impl.$r8$clinit;
                        return new HistoryEntryDao_Impl(appDatabase_Impl);
                    case 1:
                        int i42 = AppDatabase_Impl.$r8$clinit;
                        return new TalkPageSeenDao_Impl(appDatabase_Impl);
                    case 2:
                        int i52 = AppDatabase_Impl.$r8$clinit;
                        return new EditSummaryDao_Impl(appDatabase_Impl);
                    case 3:
                        int i62 = AppDatabase_Impl.$r8$clinit;
                        return new OfflineObjectDao_Impl(appDatabase_Impl);
                    case 4:
                        int i72 = AppDatabase_Impl.$r8$clinit;
                        return new ReadingListDao_Impl(appDatabase_Impl);
                    case 5:
                        int i82 = AppDatabase_Impl.$r8$clinit;
                        return new ReadingListPageDao_Impl(appDatabase_Impl);
                    case 6:
                        int i92 = AppDatabase_Impl.$r8$clinit;
                        return new NotificationDao_Impl(appDatabase_Impl);
                    case 7:
                        int i102 = AppDatabase_Impl.$r8$clinit;
                        return new TalkTemplateDao_Impl(appDatabase_Impl);
                    case 8:
                        int i112 = AppDatabase_Impl.$r8$clinit;
                        return new CategoryDao_Impl(appDatabase_Impl);
                    case 9:
                        int i12 = AppDatabase_Impl.$r8$clinit;
                        return new DailyGameHistoryDao_Impl(appDatabase_Impl);
                    case 10:
                        int i13 = AppDatabase_Impl.$r8$clinit;
                        return new RecommendedPageDao_Impl(appDatabase_Impl);
                    case 11:
                        int i14 = AppDatabase_Impl.$r8$clinit;
                        return new InterestTopicDao_Impl(appDatabase_Impl);
                    case 12:
                        int i15 = AppDatabase_Impl.$r8$clinit;
                        return new InterestArticleDao_Impl(appDatabase_Impl);
                    case IMAGE_VALUE:
                        int i16 = AppDatabase_Impl.$r8$clinit;
                        return new HistoryEntryWithImageDao_Impl(appDatabase_Impl);
                    case LINEAR_PROGRESS_INDICATOR_VALUE:
                        int i17 = AppDatabase_Impl.$r8$clinit;
                        return new PageImageDao_Impl(appDatabase_Impl);
                    default:
                        int i18 = AppDatabase_Impl.$r8$clinit;
                        return new RecentSearchDao_Impl(appDatabase_Impl);
                }
            }
        });
        final int i12 = 8;
        this._categoryDao = new SynchronizedLazyImpl(new Function0(this) { // from class: org.wikipedia.database.AppDatabase_Impl$$ExternalSyntheticLambda0
            public final /* synthetic */ AppDatabase_Impl f$0;

            {
                this.f$0 = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i22 = i12;
                AppDatabase_Impl appDatabase_Impl = this.f$0;
                switch (i22) {
                    case 0:
                        int i32 = AppDatabase_Impl.$r8$clinit;
                        return new HistoryEntryDao_Impl(appDatabase_Impl);
                    case 1:
                        int i42 = AppDatabase_Impl.$r8$clinit;
                        return new TalkPageSeenDao_Impl(appDatabase_Impl);
                    case 2:
                        int i52 = AppDatabase_Impl.$r8$clinit;
                        return new EditSummaryDao_Impl(appDatabase_Impl);
                    case 3:
                        int i62 = AppDatabase_Impl.$r8$clinit;
                        return new OfflineObjectDao_Impl(appDatabase_Impl);
                    case 4:
                        int i72 = AppDatabase_Impl.$r8$clinit;
                        return new ReadingListDao_Impl(appDatabase_Impl);
                    case 5:
                        int i82 = AppDatabase_Impl.$r8$clinit;
                        return new ReadingListPageDao_Impl(appDatabase_Impl);
                    case 6:
                        int i92 = AppDatabase_Impl.$r8$clinit;
                        return new NotificationDao_Impl(appDatabase_Impl);
                    case 7:
                        int i102 = AppDatabase_Impl.$r8$clinit;
                        return new TalkTemplateDao_Impl(appDatabase_Impl);
                    case 8:
                        int i112 = AppDatabase_Impl.$r8$clinit;
                        return new CategoryDao_Impl(appDatabase_Impl);
                    case 9:
                        int i122 = AppDatabase_Impl.$r8$clinit;
                        return new DailyGameHistoryDao_Impl(appDatabase_Impl);
                    case 10:
                        int i13 = AppDatabase_Impl.$r8$clinit;
                        return new RecommendedPageDao_Impl(appDatabase_Impl);
                    case 11:
                        int i14 = AppDatabase_Impl.$r8$clinit;
                        return new InterestTopicDao_Impl(appDatabase_Impl);
                    case 12:
                        int i15 = AppDatabase_Impl.$r8$clinit;
                        return new InterestArticleDao_Impl(appDatabase_Impl);
                    case IMAGE_VALUE:
                        int i16 = AppDatabase_Impl.$r8$clinit;
                        return new HistoryEntryWithImageDao_Impl(appDatabase_Impl);
                    case LINEAR_PROGRESS_INDICATOR_VALUE:
                        int i17 = AppDatabase_Impl.$r8$clinit;
                        return new PageImageDao_Impl(appDatabase_Impl);
                    default:
                        int i18 = AppDatabase_Impl.$r8$clinit;
                        return new RecentSearchDao_Impl(appDatabase_Impl);
                }
            }
        });
        final int i13 = 9;
        this._dailyGameHistoryDao = new SynchronizedLazyImpl(new Function0(this) { // from class: org.wikipedia.database.AppDatabase_Impl$$ExternalSyntheticLambda0
            public final /* synthetic */ AppDatabase_Impl f$0;

            {
                this.f$0 = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i22 = i13;
                AppDatabase_Impl appDatabase_Impl = this.f$0;
                switch (i22) {
                    case 0:
                        int i32 = AppDatabase_Impl.$r8$clinit;
                        return new HistoryEntryDao_Impl(appDatabase_Impl);
                    case 1:
                        int i42 = AppDatabase_Impl.$r8$clinit;
                        return new TalkPageSeenDao_Impl(appDatabase_Impl);
                    case 2:
                        int i52 = AppDatabase_Impl.$r8$clinit;
                        return new EditSummaryDao_Impl(appDatabase_Impl);
                    case 3:
                        int i62 = AppDatabase_Impl.$r8$clinit;
                        return new OfflineObjectDao_Impl(appDatabase_Impl);
                    case 4:
                        int i72 = AppDatabase_Impl.$r8$clinit;
                        return new ReadingListDao_Impl(appDatabase_Impl);
                    case 5:
                        int i82 = AppDatabase_Impl.$r8$clinit;
                        return new ReadingListPageDao_Impl(appDatabase_Impl);
                    case 6:
                        int i92 = AppDatabase_Impl.$r8$clinit;
                        return new NotificationDao_Impl(appDatabase_Impl);
                    case 7:
                        int i102 = AppDatabase_Impl.$r8$clinit;
                        return new TalkTemplateDao_Impl(appDatabase_Impl);
                    case 8:
                        int i112 = AppDatabase_Impl.$r8$clinit;
                        return new CategoryDao_Impl(appDatabase_Impl);
                    case 9:
                        int i122 = AppDatabase_Impl.$r8$clinit;
                        return new DailyGameHistoryDao_Impl(appDatabase_Impl);
                    case 10:
                        int i132 = AppDatabase_Impl.$r8$clinit;
                        return new RecommendedPageDao_Impl(appDatabase_Impl);
                    case 11:
                        int i14 = AppDatabase_Impl.$r8$clinit;
                        return new InterestTopicDao_Impl(appDatabase_Impl);
                    case 12:
                        int i15 = AppDatabase_Impl.$r8$clinit;
                        return new InterestArticleDao_Impl(appDatabase_Impl);
                    case IMAGE_VALUE:
                        int i16 = AppDatabase_Impl.$r8$clinit;
                        return new HistoryEntryWithImageDao_Impl(appDatabase_Impl);
                    case LINEAR_PROGRESS_INDICATOR_VALUE:
                        int i17 = AppDatabase_Impl.$r8$clinit;
                        return new PageImageDao_Impl(appDatabase_Impl);
                    default:
                        int i18 = AppDatabase_Impl.$r8$clinit;
                        return new RecentSearchDao_Impl(appDatabase_Impl);
                }
            }
        });
        final int i14 = 10;
        this._recommendedPageDao = new SynchronizedLazyImpl(new Function0(this) { // from class: org.wikipedia.database.AppDatabase_Impl$$ExternalSyntheticLambda0
            public final /* synthetic */ AppDatabase_Impl f$0;

            {
                this.f$0 = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i22 = i14;
                AppDatabase_Impl appDatabase_Impl = this.f$0;
                switch (i22) {
                    case 0:
                        int i32 = AppDatabase_Impl.$r8$clinit;
                        return new HistoryEntryDao_Impl(appDatabase_Impl);
                    case 1:
                        int i42 = AppDatabase_Impl.$r8$clinit;
                        return new TalkPageSeenDao_Impl(appDatabase_Impl);
                    case 2:
                        int i52 = AppDatabase_Impl.$r8$clinit;
                        return new EditSummaryDao_Impl(appDatabase_Impl);
                    case 3:
                        int i62 = AppDatabase_Impl.$r8$clinit;
                        return new OfflineObjectDao_Impl(appDatabase_Impl);
                    case 4:
                        int i72 = AppDatabase_Impl.$r8$clinit;
                        return new ReadingListDao_Impl(appDatabase_Impl);
                    case 5:
                        int i82 = AppDatabase_Impl.$r8$clinit;
                        return new ReadingListPageDao_Impl(appDatabase_Impl);
                    case 6:
                        int i92 = AppDatabase_Impl.$r8$clinit;
                        return new NotificationDao_Impl(appDatabase_Impl);
                    case 7:
                        int i102 = AppDatabase_Impl.$r8$clinit;
                        return new TalkTemplateDao_Impl(appDatabase_Impl);
                    case 8:
                        int i112 = AppDatabase_Impl.$r8$clinit;
                        return new CategoryDao_Impl(appDatabase_Impl);
                    case 9:
                        int i122 = AppDatabase_Impl.$r8$clinit;
                        return new DailyGameHistoryDao_Impl(appDatabase_Impl);
                    case 10:
                        int i132 = AppDatabase_Impl.$r8$clinit;
                        return new RecommendedPageDao_Impl(appDatabase_Impl);
                    case 11:
                        int i142 = AppDatabase_Impl.$r8$clinit;
                        return new InterestTopicDao_Impl(appDatabase_Impl);
                    case 12:
                        int i15 = AppDatabase_Impl.$r8$clinit;
                        return new InterestArticleDao_Impl(appDatabase_Impl);
                    case IMAGE_VALUE:
                        int i16 = AppDatabase_Impl.$r8$clinit;
                        return new HistoryEntryWithImageDao_Impl(appDatabase_Impl);
                    case LINEAR_PROGRESS_INDICATOR_VALUE:
                        int i17 = AppDatabase_Impl.$r8$clinit;
                        return new PageImageDao_Impl(appDatabase_Impl);
                    default:
                        int i18 = AppDatabase_Impl.$r8$clinit;
                        return new RecentSearchDao_Impl(appDatabase_Impl);
                }
            }
        });
        final int i15 = 11;
        this._interestTopicDao = new SynchronizedLazyImpl(new Function0(this) { // from class: org.wikipedia.database.AppDatabase_Impl$$ExternalSyntheticLambda0
            public final /* synthetic */ AppDatabase_Impl f$0;

            {
                this.f$0 = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i22 = i15;
                AppDatabase_Impl appDatabase_Impl = this.f$0;
                switch (i22) {
                    case 0:
                        int i32 = AppDatabase_Impl.$r8$clinit;
                        return new HistoryEntryDao_Impl(appDatabase_Impl);
                    case 1:
                        int i42 = AppDatabase_Impl.$r8$clinit;
                        return new TalkPageSeenDao_Impl(appDatabase_Impl);
                    case 2:
                        int i52 = AppDatabase_Impl.$r8$clinit;
                        return new EditSummaryDao_Impl(appDatabase_Impl);
                    case 3:
                        int i62 = AppDatabase_Impl.$r8$clinit;
                        return new OfflineObjectDao_Impl(appDatabase_Impl);
                    case 4:
                        int i72 = AppDatabase_Impl.$r8$clinit;
                        return new ReadingListDao_Impl(appDatabase_Impl);
                    case 5:
                        int i82 = AppDatabase_Impl.$r8$clinit;
                        return new ReadingListPageDao_Impl(appDatabase_Impl);
                    case 6:
                        int i92 = AppDatabase_Impl.$r8$clinit;
                        return new NotificationDao_Impl(appDatabase_Impl);
                    case 7:
                        int i102 = AppDatabase_Impl.$r8$clinit;
                        return new TalkTemplateDao_Impl(appDatabase_Impl);
                    case 8:
                        int i112 = AppDatabase_Impl.$r8$clinit;
                        return new CategoryDao_Impl(appDatabase_Impl);
                    case 9:
                        int i122 = AppDatabase_Impl.$r8$clinit;
                        return new DailyGameHistoryDao_Impl(appDatabase_Impl);
                    case 10:
                        int i132 = AppDatabase_Impl.$r8$clinit;
                        return new RecommendedPageDao_Impl(appDatabase_Impl);
                    case 11:
                        int i142 = AppDatabase_Impl.$r8$clinit;
                        return new InterestTopicDao_Impl(appDatabase_Impl);
                    case 12:
                        int i152 = AppDatabase_Impl.$r8$clinit;
                        return new InterestArticleDao_Impl(appDatabase_Impl);
                    case IMAGE_VALUE:
                        int i16 = AppDatabase_Impl.$r8$clinit;
                        return new HistoryEntryWithImageDao_Impl(appDatabase_Impl);
                    case LINEAR_PROGRESS_INDICATOR_VALUE:
                        int i17 = AppDatabase_Impl.$r8$clinit;
                        return new PageImageDao_Impl(appDatabase_Impl);
                    default:
                        int i18 = AppDatabase_Impl.$r8$clinit;
                        return new RecentSearchDao_Impl(appDatabase_Impl);
                }
            }
        });
        final int i16 = 12;
        this._interestArticleDao = new SynchronizedLazyImpl(new Function0(this) { // from class: org.wikipedia.database.AppDatabase_Impl$$ExternalSyntheticLambda0
            public final /* synthetic */ AppDatabase_Impl f$0;

            {
                this.f$0 = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i22 = i16;
                AppDatabase_Impl appDatabase_Impl = this.f$0;
                switch (i22) {
                    case 0:
                        int i32 = AppDatabase_Impl.$r8$clinit;
                        return new HistoryEntryDao_Impl(appDatabase_Impl);
                    case 1:
                        int i42 = AppDatabase_Impl.$r8$clinit;
                        return new TalkPageSeenDao_Impl(appDatabase_Impl);
                    case 2:
                        int i52 = AppDatabase_Impl.$r8$clinit;
                        return new EditSummaryDao_Impl(appDatabase_Impl);
                    case 3:
                        int i62 = AppDatabase_Impl.$r8$clinit;
                        return new OfflineObjectDao_Impl(appDatabase_Impl);
                    case 4:
                        int i72 = AppDatabase_Impl.$r8$clinit;
                        return new ReadingListDao_Impl(appDatabase_Impl);
                    case 5:
                        int i82 = AppDatabase_Impl.$r8$clinit;
                        return new ReadingListPageDao_Impl(appDatabase_Impl);
                    case 6:
                        int i92 = AppDatabase_Impl.$r8$clinit;
                        return new NotificationDao_Impl(appDatabase_Impl);
                    case 7:
                        int i102 = AppDatabase_Impl.$r8$clinit;
                        return new TalkTemplateDao_Impl(appDatabase_Impl);
                    case 8:
                        int i112 = AppDatabase_Impl.$r8$clinit;
                        return new CategoryDao_Impl(appDatabase_Impl);
                    case 9:
                        int i122 = AppDatabase_Impl.$r8$clinit;
                        return new DailyGameHistoryDao_Impl(appDatabase_Impl);
                    case 10:
                        int i132 = AppDatabase_Impl.$r8$clinit;
                        return new RecommendedPageDao_Impl(appDatabase_Impl);
                    case 11:
                        int i142 = AppDatabase_Impl.$r8$clinit;
                        return new InterestTopicDao_Impl(appDatabase_Impl);
                    case 12:
                        int i152 = AppDatabase_Impl.$r8$clinit;
                        return new InterestArticleDao_Impl(appDatabase_Impl);
                    case IMAGE_VALUE:
                        int i162 = AppDatabase_Impl.$r8$clinit;
                        return new HistoryEntryWithImageDao_Impl(appDatabase_Impl);
                    case LINEAR_PROGRESS_INDICATOR_VALUE:
                        int i17 = AppDatabase_Impl.$r8$clinit;
                        return new PageImageDao_Impl(appDatabase_Impl);
                    default:
                        int i18 = AppDatabase_Impl.$r8$clinit;
                        return new RecentSearchDao_Impl(appDatabase_Impl);
                }
            }
        });
    }

    @Override // org.wikipedia.database.AppDatabase
    public final InterestArticleDao_Impl articleInterestDao() {
        return (InterestArticleDao_Impl) this._interestArticleDao.getValue();
    }

    @Override // org.wikipedia.database.AppDatabase
    public final CategoryDao_Impl categoryDao() {
        return (CategoryDao_Impl) this._categoryDao.getValue();
    }

    @Override // androidx.room.RoomDatabase
    public final List createAutoMigrations(LinkedHashMap linkedHashMap) {
        return new ArrayList();
    }

    @Override // androidx.room.RoomDatabase
    public final InvalidationTracker createInvalidationTracker() {
        return new InvalidationTracker(this, new LinkedHashMap(), new LinkedHashMap(), "HistoryEntry", "PageImage", "RecentSearch", "TalkPageSeen", "EditSummary", "OfflineObject", "ReadingList", "ReadingListPage", "Notification", "TalkTemplate", "Category", "DailyGameHistory", "RecommendedPage", "InterestTopic", "InterestArticle");
    }

    @Override // androidx.room.RoomDatabase
    public final RoomOpenDelegate createOpenDelegate() {
        return new WorkDatabase_Impl$createOpenDelegate$_openDelegate$1(this);
    }

    @Override // org.wikipedia.database.AppDatabase
    public final DailyGameHistoryDao_Impl dailyGameHistoryDao() {
        return (DailyGameHistoryDao_Impl) this._dailyGameHistoryDao.getValue();
    }

    @Override // org.wikipedia.database.AppDatabase
    public final EditSummaryDao_Impl editSummaryDao() {
        return (EditSummaryDao_Impl) this._editSummaryDao.getValue();
    }

    @Override // androidx.room.RoomDatabase
    public final Set getRequiredAutoMigrationSpecClasses() {
        return new LinkedHashSet();
    }

    @Override // androidx.room.RoomDatabase
    public final LinkedHashMap getRequiredTypeConverterClasses() {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        ReflectionFactory reflectionFactory = Reflection.factory;
        KClass orCreateKotlinClass = reflectionFactory.getOrCreateKotlinClass(HistoryEntryDao_Impl.class);
        EmptyList emptyList = EmptyList.INSTANCE;
        linkedHashMap.put(orCreateKotlinClass, emptyList);
        linkedHashMap.put(reflectionFactory.getOrCreateKotlinClass(HistoryEntryWithImageDao_Impl.class), emptyList);
        linkedHashMap.put(reflectionFactory.getOrCreateKotlinClass(PageImageDao_Impl.class), emptyList);
        linkedHashMap.put(reflectionFactory.getOrCreateKotlinClass(RecentSearchDao_Impl.class), emptyList);
        linkedHashMap.put(reflectionFactory.getOrCreateKotlinClass(TalkPageSeenDao_Impl.class), emptyList);
        linkedHashMap.put(reflectionFactory.getOrCreateKotlinClass(EditSummaryDao_Impl.class), emptyList);
        linkedHashMap.put(reflectionFactory.getOrCreateKotlinClass(OfflineObjectDao_Impl.class), emptyList);
        linkedHashMap.put(reflectionFactory.getOrCreateKotlinClass(ReadingListDao_Impl.class), emptyList);
        linkedHashMap.put(reflectionFactory.getOrCreateKotlinClass(ReadingListPageDao_Impl.class), emptyList);
        linkedHashMap.put(reflectionFactory.getOrCreateKotlinClass(NotificationDao_Impl.class), emptyList);
        linkedHashMap.put(reflectionFactory.getOrCreateKotlinClass(TalkTemplateDao_Impl.class), emptyList);
        linkedHashMap.put(reflectionFactory.getOrCreateKotlinClass(CategoryDao_Impl.class), emptyList);
        linkedHashMap.put(reflectionFactory.getOrCreateKotlinClass(DailyGameHistoryDao_Impl.class), emptyList);
        linkedHashMap.put(reflectionFactory.getOrCreateKotlinClass(RecommendedPageDao_Impl.class), emptyList);
        linkedHashMap.put(reflectionFactory.getOrCreateKotlinClass(InterestTopicDao_Impl.class), emptyList);
        linkedHashMap.put(reflectionFactory.getOrCreateKotlinClass(InterestArticleDao_Impl.class), emptyList);
        return linkedHashMap;
    }

    @Override // org.wikipedia.database.AppDatabase
    public final HistoryEntryDao_Impl historyEntryDao() {
        return (HistoryEntryDao_Impl) this._historyEntryDao.getValue();
    }

    @Override // org.wikipedia.database.AppDatabase
    public final HistoryEntryWithImageDao_Impl historyEntryWithImageDao() {
        return (HistoryEntryWithImageDao_Impl) this._historyEntryWithImageDao.getValue();
    }

    @Override // org.wikipedia.database.AppDatabase
    public final NotificationDao_Impl notificationDao() {
        return (NotificationDao_Impl) this._notificationDao.getValue();
    }

    @Override // org.wikipedia.database.AppDatabase
    public final OfflineObjectDao_Impl offlineObjectDao() {
        return (OfflineObjectDao_Impl) this._offlineObjectDao.getValue();
    }

    @Override // org.wikipedia.database.AppDatabase
    public final PageImageDao_Impl pageImagesDao() {
        return (PageImageDao_Impl) this._pageImageDao.getValue();
    }

    @Override // org.wikipedia.database.AppDatabase
    public final ReadingListDao_Impl readingListDao() {
        return (ReadingListDao_Impl) this._readingListDao.getValue();
    }

    @Override // org.wikipedia.database.AppDatabase
    public final ReadingListPageDao_Impl readingListPageDao() {
        return (ReadingListPageDao_Impl) this._readingListPageDao.getValue();
    }

    @Override // org.wikipedia.database.AppDatabase
    public final RecentSearchDao_Impl recentSearchDao() {
        return (RecentSearchDao_Impl) this._recentSearchDao.getValue();
    }

    @Override // org.wikipedia.database.AppDatabase
    public final RecommendedPageDao_Impl recommendedPageDao() {
        return (RecommendedPageDao_Impl) this._recommendedPageDao.getValue();
    }

    @Override // org.wikipedia.database.AppDatabase
    public final TalkPageSeenDao_Impl talkPageSeenDao() {
        return (TalkPageSeenDao_Impl) this._talkPageSeenDao.getValue();
    }

    @Override // org.wikipedia.database.AppDatabase
    public final TalkTemplateDao_Impl talkTemplateDao() {
        return (TalkTemplateDao_Impl) this._talkTemplateDao.getValue();
    }

    @Override // org.wikipedia.database.AppDatabase
    public final InterestTopicDao_Impl topicInterestDao() {
        return (InterestTopicDao_Impl) this._interestTopicDao.getValue();
    }
}
