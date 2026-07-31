package org.schabi.newpipe.database;

import androidx.room.InvalidationTracker;
import androidx.room.RoomOpenDelegate;
import androidx.work.impl.WorkDatabase_Impl$createOpenDelegate$_openDelegate$1;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import kotlin.SynchronizedLazyImpl;
import kotlin.collections.EmptyList;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.ClassReference;
import kotlin.jvm.internal.Reflection;
import org.schabi.newpipe.database.feed.dao.FeedDAO_Impl;
import org.schabi.newpipe.database.feed.dao.FeedGroupDAO_Impl;
import org.schabi.newpipe.database.history.dao.SearchHistoryDAO_Impl;
import org.schabi.newpipe.database.history.dao.StreamHistoryDAO_Impl;
import org.schabi.newpipe.database.playlist.dao.PlaylistDAO_Impl;
import org.schabi.newpipe.database.playlist.dao.PlaylistRemoteDAO_Impl;
import org.schabi.newpipe.database.playlist.dao.PlaylistStreamDAO_Impl;
import org.schabi.newpipe.database.stream.dao.StreamDAO_Impl;
import org.schabi.newpipe.database.stream.dao.StreamStateDAO_Impl;
import org.schabi.newpipe.database.subscription.SubscriptionDAO_Impl;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class AppDatabase_Impl extends AppDatabase {
    public final SynchronizedLazyImpl _feedDAO;
    public final SynchronizedLazyImpl _feedGroupDAO;
    public final SynchronizedLazyImpl _playlistDAO;
    public final SynchronizedLazyImpl _playlistRemoteDAO;
    public final SynchronizedLazyImpl _playlistStreamDAO;
    public final SynchronizedLazyImpl _searchHistoryDAO;
    public final SynchronizedLazyImpl _streamDAO;
    public final SynchronizedLazyImpl _streamHistoryDAO;
    public final SynchronizedLazyImpl _streamStateDAO;
    public final SynchronizedLazyImpl _subscriptionDAO;

    public AppDatabase_Impl() {
        final int i = 0;
        this._feedDAO = new SynchronizedLazyImpl(new Function0(this) { // from class: org.schabi.newpipe.database.AppDatabase_Impl$$ExternalSyntheticLambda0
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
                        return new FeedDAO_Impl(appDatabase_Impl);
                    case 1:
                        return new FeedGroupDAO_Impl(appDatabase_Impl);
                    case 2:
                        return new PlaylistDAO_Impl(appDatabase_Impl);
                    case 3:
                        return new PlaylistRemoteDAO_Impl(appDatabase_Impl);
                    case 4:
                        return new PlaylistStreamDAO_Impl(appDatabase_Impl);
                    case 5:
                        return new SearchHistoryDAO_Impl(appDatabase_Impl);
                    case 6:
                        return new StreamDAO_Impl(appDatabase_Impl);
                    case 7:
                        return new StreamHistoryDAO_Impl(appDatabase_Impl);
                    case 8:
                        return new StreamStateDAO_Impl(appDatabase_Impl);
                    default:
                        return new SubscriptionDAO_Impl(appDatabase_Impl);
                }
            }
        });
        final int i2 = 1;
        this._feedGroupDAO = new SynchronizedLazyImpl(new Function0(this) { // from class: org.schabi.newpipe.database.AppDatabase_Impl$$ExternalSyntheticLambda0
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
                        return new FeedDAO_Impl(appDatabase_Impl);
                    case 1:
                        return new FeedGroupDAO_Impl(appDatabase_Impl);
                    case 2:
                        return new PlaylistDAO_Impl(appDatabase_Impl);
                    case 3:
                        return new PlaylistRemoteDAO_Impl(appDatabase_Impl);
                    case 4:
                        return new PlaylistStreamDAO_Impl(appDatabase_Impl);
                    case 5:
                        return new SearchHistoryDAO_Impl(appDatabase_Impl);
                    case 6:
                        return new StreamDAO_Impl(appDatabase_Impl);
                    case 7:
                        return new StreamHistoryDAO_Impl(appDatabase_Impl);
                    case 8:
                        return new StreamStateDAO_Impl(appDatabase_Impl);
                    default:
                        return new SubscriptionDAO_Impl(appDatabase_Impl);
                }
            }
        });
        final int i3 = 2;
        this._playlistDAO = new SynchronizedLazyImpl(new Function0(this) { // from class: org.schabi.newpipe.database.AppDatabase_Impl$$ExternalSyntheticLambda0
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
                        return new FeedDAO_Impl(appDatabase_Impl);
                    case 1:
                        return new FeedGroupDAO_Impl(appDatabase_Impl);
                    case 2:
                        return new PlaylistDAO_Impl(appDatabase_Impl);
                    case 3:
                        return new PlaylistRemoteDAO_Impl(appDatabase_Impl);
                    case 4:
                        return new PlaylistStreamDAO_Impl(appDatabase_Impl);
                    case 5:
                        return new SearchHistoryDAO_Impl(appDatabase_Impl);
                    case 6:
                        return new StreamDAO_Impl(appDatabase_Impl);
                    case 7:
                        return new StreamHistoryDAO_Impl(appDatabase_Impl);
                    case 8:
                        return new StreamStateDAO_Impl(appDatabase_Impl);
                    default:
                        return new SubscriptionDAO_Impl(appDatabase_Impl);
                }
            }
        });
        final int i4 = 3;
        this._playlistRemoteDAO = new SynchronizedLazyImpl(new Function0(this) { // from class: org.schabi.newpipe.database.AppDatabase_Impl$$ExternalSyntheticLambda0
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
                        return new FeedDAO_Impl(appDatabase_Impl);
                    case 1:
                        return new FeedGroupDAO_Impl(appDatabase_Impl);
                    case 2:
                        return new PlaylistDAO_Impl(appDatabase_Impl);
                    case 3:
                        return new PlaylistRemoteDAO_Impl(appDatabase_Impl);
                    case 4:
                        return new PlaylistStreamDAO_Impl(appDatabase_Impl);
                    case 5:
                        return new SearchHistoryDAO_Impl(appDatabase_Impl);
                    case 6:
                        return new StreamDAO_Impl(appDatabase_Impl);
                    case 7:
                        return new StreamHistoryDAO_Impl(appDatabase_Impl);
                    case 8:
                        return new StreamStateDAO_Impl(appDatabase_Impl);
                    default:
                        return new SubscriptionDAO_Impl(appDatabase_Impl);
                }
            }
        });
        final int i5 = 4;
        this._playlistStreamDAO = new SynchronizedLazyImpl(new Function0(this) { // from class: org.schabi.newpipe.database.AppDatabase_Impl$$ExternalSyntheticLambda0
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
                        return new FeedDAO_Impl(appDatabase_Impl);
                    case 1:
                        return new FeedGroupDAO_Impl(appDatabase_Impl);
                    case 2:
                        return new PlaylistDAO_Impl(appDatabase_Impl);
                    case 3:
                        return new PlaylistRemoteDAO_Impl(appDatabase_Impl);
                    case 4:
                        return new PlaylistStreamDAO_Impl(appDatabase_Impl);
                    case 5:
                        return new SearchHistoryDAO_Impl(appDatabase_Impl);
                    case 6:
                        return new StreamDAO_Impl(appDatabase_Impl);
                    case 7:
                        return new StreamHistoryDAO_Impl(appDatabase_Impl);
                    case 8:
                        return new StreamStateDAO_Impl(appDatabase_Impl);
                    default:
                        return new SubscriptionDAO_Impl(appDatabase_Impl);
                }
            }
        });
        final int i6 = 5;
        this._searchHistoryDAO = new SynchronizedLazyImpl(new Function0(this) { // from class: org.schabi.newpipe.database.AppDatabase_Impl$$ExternalSyntheticLambda0
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
                        return new FeedDAO_Impl(appDatabase_Impl);
                    case 1:
                        return new FeedGroupDAO_Impl(appDatabase_Impl);
                    case 2:
                        return new PlaylistDAO_Impl(appDatabase_Impl);
                    case 3:
                        return new PlaylistRemoteDAO_Impl(appDatabase_Impl);
                    case 4:
                        return new PlaylistStreamDAO_Impl(appDatabase_Impl);
                    case 5:
                        return new SearchHistoryDAO_Impl(appDatabase_Impl);
                    case 6:
                        return new StreamDAO_Impl(appDatabase_Impl);
                    case 7:
                        return new StreamHistoryDAO_Impl(appDatabase_Impl);
                    case 8:
                        return new StreamStateDAO_Impl(appDatabase_Impl);
                    default:
                        return new SubscriptionDAO_Impl(appDatabase_Impl);
                }
            }
        });
        final int i7 = 6;
        this._streamDAO = new SynchronizedLazyImpl(new Function0(this) { // from class: org.schabi.newpipe.database.AppDatabase_Impl$$ExternalSyntheticLambda0
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
                        return new FeedDAO_Impl(appDatabase_Impl);
                    case 1:
                        return new FeedGroupDAO_Impl(appDatabase_Impl);
                    case 2:
                        return new PlaylistDAO_Impl(appDatabase_Impl);
                    case 3:
                        return new PlaylistRemoteDAO_Impl(appDatabase_Impl);
                    case 4:
                        return new PlaylistStreamDAO_Impl(appDatabase_Impl);
                    case 5:
                        return new SearchHistoryDAO_Impl(appDatabase_Impl);
                    case 6:
                        return new StreamDAO_Impl(appDatabase_Impl);
                    case 7:
                        return new StreamHistoryDAO_Impl(appDatabase_Impl);
                    case 8:
                        return new StreamStateDAO_Impl(appDatabase_Impl);
                    default:
                        return new SubscriptionDAO_Impl(appDatabase_Impl);
                }
            }
        });
        final int i8 = 7;
        this._streamHistoryDAO = new SynchronizedLazyImpl(new Function0(this) { // from class: org.schabi.newpipe.database.AppDatabase_Impl$$ExternalSyntheticLambda0
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
                        return new FeedDAO_Impl(appDatabase_Impl);
                    case 1:
                        return new FeedGroupDAO_Impl(appDatabase_Impl);
                    case 2:
                        return new PlaylistDAO_Impl(appDatabase_Impl);
                    case 3:
                        return new PlaylistRemoteDAO_Impl(appDatabase_Impl);
                    case 4:
                        return new PlaylistStreamDAO_Impl(appDatabase_Impl);
                    case 5:
                        return new SearchHistoryDAO_Impl(appDatabase_Impl);
                    case 6:
                        return new StreamDAO_Impl(appDatabase_Impl);
                    case 7:
                        return new StreamHistoryDAO_Impl(appDatabase_Impl);
                    case 8:
                        return new StreamStateDAO_Impl(appDatabase_Impl);
                    default:
                        return new SubscriptionDAO_Impl(appDatabase_Impl);
                }
            }
        });
        final int i9 = 8;
        this._streamStateDAO = new SynchronizedLazyImpl(new Function0(this) { // from class: org.schabi.newpipe.database.AppDatabase_Impl$$ExternalSyntheticLambda0
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
                        return new FeedDAO_Impl(appDatabase_Impl);
                    case 1:
                        return new FeedGroupDAO_Impl(appDatabase_Impl);
                    case 2:
                        return new PlaylistDAO_Impl(appDatabase_Impl);
                    case 3:
                        return new PlaylistRemoteDAO_Impl(appDatabase_Impl);
                    case 4:
                        return new PlaylistStreamDAO_Impl(appDatabase_Impl);
                    case 5:
                        return new SearchHistoryDAO_Impl(appDatabase_Impl);
                    case 6:
                        return new StreamDAO_Impl(appDatabase_Impl);
                    case 7:
                        return new StreamHistoryDAO_Impl(appDatabase_Impl);
                    case 8:
                        return new StreamStateDAO_Impl(appDatabase_Impl);
                    default:
                        return new SubscriptionDAO_Impl(appDatabase_Impl);
                }
            }
        });
        final int i10 = 9;
        this._subscriptionDAO = new SynchronizedLazyImpl(new Function0(this) { // from class: org.schabi.newpipe.database.AppDatabase_Impl$$ExternalSyntheticLambda0
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
                        return new FeedDAO_Impl(appDatabase_Impl);
                    case 1:
                        return new FeedGroupDAO_Impl(appDatabase_Impl);
                    case 2:
                        return new PlaylistDAO_Impl(appDatabase_Impl);
                    case 3:
                        return new PlaylistRemoteDAO_Impl(appDatabase_Impl);
                    case 4:
                        return new PlaylistStreamDAO_Impl(appDatabase_Impl);
                    case 5:
                        return new SearchHistoryDAO_Impl(appDatabase_Impl);
                    case 6:
                        return new StreamDAO_Impl(appDatabase_Impl);
                    case 7:
                        return new StreamHistoryDAO_Impl(appDatabase_Impl);
                    case 8:
                        return new StreamStateDAO_Impl(appDatabase_Impl);
                    default:
                        return new SubscriptionDAO_Impl(appDatabase_Impl);
                }
            }
        });
    }

    @Override // androidx.room.RoomDatabase
    public final List createAutoMigrations(LinkedHashMap linkedHashMap) {
        return new ArrayList();
    }

    @Override // androidx.room.RoomDatabase
    public final InvalidationTracker createInvalidationTracker() {
        return new InvalidationTracker(this, new LinkedHashMap(), new LinkedHashMap(), "subscriptions", "search_history", "streams", "stream_history", "stream_state", "playlists", "playlist_stream_join", "remote_playlists", "feed", "feed_group", "feed_group_subscription_join", "feed_last_updated");
    }

    @Override // androidx.room.RoomDatabase
    public final RoomOpenDelegate createOpenDelegate() {
        return new WorkDatabase_Impl$createOpenDelegate$_openDelegate$1(this);
    }

    @Override // org.schabi.newpipe.database.AppDatabase
    public final FeedDAO_Impl feedDAO() {
        return (FeedDAO_Impl) this._feedDAO.getValue();
    }

    @Override // org.schabi.newpipe.database.AppDatabase
    public final FeedGroupDAO_Impl feedGroupDAO() {
        return (FeedGroupDAO_Impl) this._feedGroupDAO.getValue();
    }

    @Override // androidx.room.RoomDatabase
    public final Set getRequiredAutoMigrationSpecClasses() {
        return new LinkedHashSet();
    }

    @Override // androidx.room.RoomDatabase
    public final LinkedHashMap getRequiredTypeConverterClasses() {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        ClassReference orCreateKotlinClass = Reflection.getOrCreateKotlinClass(FeedDAO_Impl.class);
        FeedDAO_Impl.Companion.getClass();
        EmptyList emptyList = EmptyList.INSTANCE;
        linkedHashMap.put(orCreateKotlinClass, emptyList);
        ClassReference orCreateKotlinClass2 = Reflection.getOrCreateKotlinClass(FeedGroupDAO_Impl.class);
        FeedGroupDAO_Impl.Companion.getClass();
        linkedHashMap.put(orCreateKotlinClass2, emptyList);
        ClassReference orCreateKotlinClass3 = Reflection.getOrCreateKotlinClass(PlaylistDAO_Impl.class);
        PlaylistDAO_Impl.Companion.getClass();
        linkedHashMap.put(orCreateKotlinClass3, emptyList);
        ClassReference orCreateKotlinClass4 = Reflection.getOrCreateKotlinClass(PlaylistRemoteDAO_Impl.class);
        PlaylistRemoteDAO_Impl.Companion.getClass();
        linkedHashMap.put(orCreateKotlinClass4, emptyList);
        ClassReference orCreateKotlinClass5 = Reflection.getOrCreateKotlinClass(PlaylistStreamDAO_Impl.class);
        PlaylistStreamDAO_Impl.Companion.getClass();
        linkedHashMap.put(orCreateKotlinClass5, emptyList);
        ClassReference orCreateKotlinClass6 = Reflection.getOrCreateKotlinClass(SearchHistoryDAO_Impl.class);
        SearchHistoryDAO_Impl.Companion.getClass();
        linkedHashMap.put(orCreateKotlinClass6, emptyList);
        ClassReference orCreateKotlinClass7 = Reflection.getOrCreateKotlinClass(StreamDAO_Impl.class);
        StreamDAO_Impl.Companion.getClass();
        linkedHashMap.put(orCreateKotlinClass7, emptyList);
        ClassReference orCreateKotlinClass8 = Reflection.getOrCreateKotlinClass(StreamHistoryDAO_Impl.class);
        StreamHistoryDAO_Impl.Companion.getClass();
        linkedHashMap.put(orCreateKotlinClass8, emptyList);
        ClassReference orCreateKotlinClass9 = Reflection.getOrCreateKotlinClass(StreamStateDAO_Impl.class);
        StreamStateDAO_Impl.Companion.getClass();
        linkedHashMap.put(orCreateKotlinClass9, emptyList);
        ClassReference orCreateKotlinClass10 = Reflection.getOrCreateKotlinClass(SubscriptionDAO_Impl.class);
        SubscriptionDAO_Impl.Companion.getClass();
        linkedHashMap.put(orCreateKotlinClass10, emptyList);
        return linkedHashMap;
    }

    @Override // org.schabi.newpipe.database.AppDatabase
    public final PlaylistDAO_Impl playlistDAO() {
        return (PlaylistDAO_Impl) this._playlistDAO.getValue();
    }

    @Override // org.schabi.newpipe.database.AppDatabase
    public final PlaylistRemoteDAO_Impl playlistRemoteDAO() {
        return (PlaylistRemoteDAO_Impl) this._playlistRemoteDAO.getValue();
    }

    @Override // org.schabi.newpipe.database.AppDatabase
    public final PlaylistStreamDAO_Impl playlistStreamDAO() {
        return (PlaylistStreamDAO_Impl) this._playlistStreamDAO.getValue();
    }

    @Override // org.schabi.newpipe.database.AppDatabase
    public final SearchHistoryDAO_Impl searchHistoryDAO() {
        return (SearchHistoryDAO_Impl) this._searchHistoryDAO.getValue();
    }

    @Override // org.schabi.newpipe.database.AppDatabase
    public final StreamDAO_Impl streamDAO() {
        return (StreamDAO_Impl) this._streamDAO.getValue();
    }

    @Override // org.schabi.newpipe.database.AppDatabase
    public final StreamHistoryDAO_Impl streamHistoryDAO() {
        return (StreamHistoryDAO_Impl) this._streamHistoryDAO.getValue();
    }

    @Override // org.schabi.newpipe.database.AppDatabase
    public final StreamStateDAO_Impl streamStateDAO() {
        return (StreamStateDAO_Impl) this._streamStateDAO.getValue();
    }

    @Override // org.schabi.newpipe.database.AppDatabase
    public final SubscriptionDAO_Impl subscriptionDAO() {
        return (SubscriptionDAO_Impl) this._subscriptionDAO.getValue();
    }
}
