package org.schabi.newpipe.database;

import androidx.room.RoomDatabase;
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
public abstract class AppDatabase extends RoomDatabase {
    public static final Companion Companion = new Companion();

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class Companion {
    }

    public abstract FeedDAO_Impl feedDAO();

    public abstract FeedGroupDAO_Impl feedGroupDAO();

    public abstract PlaylistDAO_Impl playlistDAO();

    public abstract PlaylistRemoteDAO_Impl playlistRemoteDAO();

    public abstract PlaylistStreamDAO_Impl playlistStreamDAO();

    public abstract SearchHistoryDAO_Impl searchHistoryDAO();

    public abstract StreamDAO_Impl streamDAO();

    public abstract StreamHistoryDAO_Impl streamHistoryDAO();

    public abstract StreamStateDAO_Impl streamStateDAO();

    public abstract SubscriptionDAO_Impl subscriptionDAO();
}
