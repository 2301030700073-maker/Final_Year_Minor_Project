package androidx.work.impl.model;

import androidx.room.RoomDatabase;
import androidx.room.util.DBUtil;
import androidx.sqlite.SQLite;
import androidx.sqlite.SQLiteStatement;
import androidx.work.BackoffPolicy;
import androidx.work.Constraints;
import androidx.work.Data;
import androidx.work.OutOfQuotaPolicy;
import coil3.decode.DecodeUtils$$ExternalSyntheticBUOutline0;
import java.util.Iterator;
import java.util.Set;
import kotlin.text.CharsKt;
import okhttp3.Cookie;
import okio.Path;
import org.schabi.newpipe.database.feed.model.FeedEntity;
import org.schabi.newpipe.database.feed.model.FeedGroupEntity;
import org.schabi.newpipe.database.feed.model.FeedGroupSubscriptionEntity;
import org.schabi.newpipe.database.feed.model.FeedLastUpdatedEntity;
import org.schabi.newpipe.database.history.model.SearchHistoryEntry;
import org.schabi.newpipe.database.history.model.StreamHistoryEntity;
import org.schabi.newpipe.database.playlist.model.PlaylistEntity;
import org.schabi.newpipe.database.playlist.model.PlaylistRemoteEntity;
import org.schabi.newpipe.database.playlist.model.PlaylistStreamEntity;
import org.schabi.newpipe.database.stream.model.StreamEntity;
import org.schabi.newpipe.database.stream.model.StreamStateEntity;
import org.schabi.newpipe.database.subscription.SubscriptionEntity;
import org.schabi.newpipe.extractor.stream.StreamType;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class WorkTagDao_Impl {
    public final RoomDatabase __db;
    public final AnonymousClass1 __insertAdapterOfWorkTag = new AnonymousClass1(0);

    public WorkTagDao_Impl(RoomDatabase roomDatabase) {
        this.__db = roomDatabase;
    }

    public final void insertTags(String str, Set set) {
        str.getClass();
        set.getClass();
        Iterator it = set.iterator();
        while (it.hasNext()) {
            DBUtil.performBlocking(this.__db, false, true, new WorkTagDao_Impl$$ExternalSyntheticLambda1(this, new WorkTag((String) it.next(), str), 0));
        }
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    /* renamed from: androidx.work.impl.model.WorkTagDao_Impl$1, reason: invalid class name */
    public final class AnonymousClass1 extends CharsKt {
        public final /* synthetic */ int $r8$classId;

        public /* synthetic */ AnonymousClass1(int i) {
            this.$r8$classId = i;
        }

        @Override // kotlin.text.CharsKt
        public final void bind(SQLiteStatement sQLiteStatement, Object obj) {
            int i;
            int i2 = 1;
            switch (this.$r8$classId) {
                case 0:
                    WorkTag workTag = (WorkTag) obj;
                    sQLiteStatement.getClass();
                    workTag.getClass();
                    sQLiteStatement.bindText(1, workTag.tag);
                    sQLiteStatement.bindText(2, workTag.workSpecId);
                    break;
                case 1:
                    Dependency dependency = (Dependency) obj;
                    sQLiteStatement.getClass();
                    dependency.getClass();
                    sQLiteStatement.bindText(1, dependency.workSpecId);
                    sQLiteStatement.bindText(2, dependency.prerequisiteId);
                    break;
                case 2:
                    Preference preference = (Preference) obj;
                    sQLiteStatement.getClass();
                    preference.getClass();
                    sQLiteStatement.bindText(1, preference.key);
                    sQLiteStatement.bindLong(2, preference.value.longValue());
                    break;
                case 3:
                    SystemIdInfo systemIdInfo = (SystemIdInfo) obj;
                    sQLiteStatement.getClass();
                    systemIdInfo.getClass();
                    sQLiteStatement.bindText(1, systemIdInfo.workSpecId);
                    sQLiteStatement.bindLong(2, systemIdInfo.generation);
                    sQLiteStatement.bindLong(3, systemIdInfo.systemId);
                    break;
                case 4:
                    WorkName workName = (WorkName) obj;
                    sQLiteStatement.getClass();
                    workName.getClass();
                    sQLiteStatement.bindText(1, workName.name);
                    sQLiteStatement.bindText(2, workName.workSpecId);
                    break;
                case 5:
                    WorkSpec workSpec = (WorkSpec) obj;
                    sQLiteStatement.getClass();
                    workSpec.getClass();
                    sQLiteStatement.bindText(1, workSpec.id);
                    sQLiteStatement.bindLong(2, SQLite.stateToInt(workSpec.state));
                    sQLiteStatement.bindText(3, workSpec.workerClassName);
                    sQLiteStatement.bindText(4, workSpec.inputMergerClassName);
                    Data data = Data.EMPTY;
                    sQLiteStatement.bindBlob(5, Cookie.Companion.toByteArrayInternalV1(workSpec.input));
                    sQLiteStatement.bindBlob(6, Cookie.Companion.toByteArrayInternalV1(workSpec.output));
                    sQLiteStatement.bindLong(7, workSpec.initialDelay);
                    sQLiteStatement.bindLong(8, workSpec.intervalDuration);
                    sQLiteStatement.bindLong(9, workSpec.flexDuration);
                    sQLiteStatement.bindLong(10, workSpec.runAttemptCount);
                    BackoffPolicy backoffPolicy = workSpec.backoffPolicy;
                    backoffPolicy.getClass();
                    int ordinal = backoffPolicy.ordinal();
                    if (ordinal == 0) {
                        i = 0;
                    } else if (ordinal != 1) {
                        DecodeUtils$$ExternalSyntheticBUOutline0.m();
                        break;
                    } else {
                        i = 1;
                    }
                    sQLiteStatement.bindLong(11, i);
                    sQLiteStatement.bindLong(12, workSpec.backoffDelayDuration);
                    sQLiteStatement.bindLong(13, workSpec.lastEnqueueTime);
                    sQLiteStatement.bindLong(14, workSpec.minimumRetentionDuration);
                    sQLiteStatement.bindLong(15, workSpec.scheduleRequestedAt);
                    sQLiteStatement.bindLong(16, workSpec.expedited ? 1L : 0L);
                    OutOfQuotaPolicy outOfQuotaPolicy = workSpec.outOfQuotaPolicy;
                    outOfQuotaPolicy.getClass();
                    int ordinal2 = outOfQuotaPolicy.ordinal();
                    if (ordinal2 == 0) {
                        i2 = 0;
                    } else if (ordinal2 != 1) {
                        DecodeUtils$$ExternalSyntheticBUOutline0.m();
                        break;
                    }
                    sQLiteStatement.bindLong(17, i2);
                    sQLiteStatement.bindLong(18, workSpec.periodCount);
                    sQLiteStatement.bindLong(19, workSpec.generation);
                    sQLiteStatement.bindLong(20, workSpec.nextScheduleTimeOverride);
                    sQLiteStatement.bindLong(21, workSpec.nextScheduleTimeOverrideGeneration);
                    sQLiteStatement.bindLong(22, workSpec.stopReason);
                    String str = workSpec.traceTag;
                    if (str == null) {
                        sQLiteStatement.bindNull(23);
                    } else {
                        sQLiteStatement.bindText(23, str);
                    }
                    Boolean bool = workSpec.backOffOnSystemInterruptions;
                    if ((bool != null ? Integer.valueOf(bool.booleanValue() ? 1 : 0) : null) == null) {
                        sQLiteStatement.bindNull(24);
                    } else {
                        sQLiteStatement.bindLong(24, r2.intValue());
                    }
                    Constraints constraints = workSpec.constraints;
                    sQLiteStatement.bindLong(25, SQLite.networkTypeToInt(constraints.requiredNetworkType));
                    sQLiteStatement.bindBlob(26, SQLite.fromNetworkRequest$work_runtime_release(constraints.requiredNetworkRequestCompat));
                    sQLiteStatement.bindLong(27, constraints.requiresCharging ? 1L : 0L);
                    sQLiteStatement.bindLong(28, constraints.requiresDeviceIdle ? 1L : 0L);
                    sQLiteStatement.bindLong(29, constraints.requiresBatteryNotLow ? 1L : 0L);
                    sQLiteStatement.bindLong(30, constraints.requiresStorageNotLow ? 1L : 0L);
                    sQLiteStatement.bindLong(31, constraints.contentTriggerUpdateDelayMillis);
                    sQLiteStatement.bindLong(32, constraints.contentTriggerMaxDelayMillis);
                    sQLiteStatement.bindBlob(33, SQLite.setOfTriggersToByteArray(constraints.contentUriTriggers));
                    break;
                case 6:
                    FeedEntity feedEntity = (FeedEntity) obj;
                    sQLiteStatement.getClass();
                    feedEntity.getClass();
                    sQLiteStatement.bindLong(1, feedEntity.streamId);
                    sQLiteStatement.bindLong(2, feedEntity.subscriptionId);
                    break;
                case 7:
                    FeedLastUpdatedEntity feedLastUpdatedEntity = (FeedLastUpdatedEntity) obj;
                    sQLiteStatement.getClass();
                    feedLastUpdatedEntity.getClass();
                    sQLiteStatement.bindLong(1, feedLastUpdatedEntity.subscriptionId);
                    Long offsetDateTimeToTimestamp = Path.Companion.offsetDateTimeToTimestamp(feedLastUpdatedEntity.lastUpdated);
                    if (offsetDateTimeToTimestamp != null) {
                        sQLiteStatement.bindLong(2, offsetDateTimeToTimestamp.longValue());
                        break;
                    } else {
                        sQLiteStatement.bindNull(2);
                        break;
                    }
                case 8:
                    FeedGroupSubscriptionEntity feedGroupSubscriptionEntity = (FeedGroupSubscriptionEntity) obj;
                    sQLiteStatement.getClass();
                    feedGroupSubscriptionEntity.getClass();
                    sQLiteStatement.bindLong(1, feedGroupSubscriptionEntity.feedGroupId);
                    sQLiteStatement.bindLong(2, feedGroupSubscriptionEntity.subscriptionId);
                    break;
                case 9:
                    FeedGroupEntity feedGroupEntity = (FeedGroupEntity) obj;
                    sQLiteStatement.getClass();
                    feedGroupEntity.getClass();
                    sQLiteStatement.bindLong(1, feedGroupEntity.uid);
                    sQLiteStatement.bindText(2, feedGroupEntity.name);
                    feedGroupEntity.icon.getClass();
                    sQLiteStatement.bindLong(3, r2.getId());
                    sQLiteStatement.bindLong(4, feedGroupEntity.sortOrder);
                    break;
                case 10:
                    SearchHistoryEntry searchHistoryEntry = (SearchHistoryEntry) obj;
                    sQLiteStatement.getClass();
                    searchHistoryEntry.getClass();
                    Long offsetDateTimeToTimestamp2 = Path.Companion.offsetDateTimeToTimestamp(searchHistoryEntry.creationDate);
                    if (offsetDateTimeToTimestamp2 == null) {
                        sQLiteStatement.bindNull(1);
                    } else {
                        sQLiteStatement.bindLong(1, offsetDateTimeToTimestamp2.longValue());
                    }
                    sQLiteStatement.bindLong(2, searchHistoryEntry.serviceId);
                    String str2 = searchHistoryEntry.search;
                    if (str2 == null) {
                        sQLiteStatement.bindNull(3);
                    } else {
                        sQLiteStatement.bindText(3, str2);
                    }
                    sQLiteStatement.bindLong(4, searchHistoryEntry.id);
                    break;
                case 11:
                    StreamHistoryEntity streamHistoryEntity = (StreamHistoryEntity) obj;
                    sQLiteStatement.getClass();
                    streamHistoryEntity.getClass();
                    sQLiteStatement.bindLong(1, streamHistoryEntity.streamUid);
                    Long offsetDateTimeToTimestamp3 = Path.Companion.offsetDateTimeToTimestamp(streamHistoryEntity.accessDate);
                    if (offsetDateTimeToTimestamp3 == null) {
                        sQLiteStatement.bindNull(2);
                    } else {
                        sQLiteStatement.bindLong(2, offsetDateTimeToTimestamp3.longValue());
                    }
                    sQLiteStatement.bindLong(3, streamHistoryEntity.repeatCount);
                    break;
                case 12:
                    PlaylistEntity playlistEntity = (PlaylistEntity) obj;
                    sQLiteStatement.getClass();
                    playlistEntity.getClass();
                    sQLiteStatement.bindLong(1, playlistEntity.uid);
                    String str3 = playlistEntity.name;
                    if (str3 == null) {
                        sQLiteStatement.bindNull(2);
                    } else {
                        sQLiteStatement.bindText(2, str3);
                    }
                    sQLiteStatement.bindLong(3, playlistEntity.isThumbnailPermanent ? 1L : 0L);
                    sQLiteStatement.bindLong(4, playlistEntity.thumbnailStreamId);
                    sQLiteStatement.bindLong(5, playlistEntity.displayIndex);
                    break;
                case 13:
                    PlaylistRemoteEntity playlistRemoteEntity = (PlaylistRemoteEntity) obj;
                    sQLiteStatement.getClass();
                    playlistRemoteEntity.getClass();
                    sQLiteStatement.bindLong(1, playlistRemoteEntity.uid);
                    sQLiteStatement.bindLong(2, playlistRemoteEntity.serviceId);
                    String str4 = playlistRemoteEntity.orderingName;
                    if (str4 == null) {
                        sQLiteStatement.bindNull(3);
                    } else {
                        sQLiteStatement.bindText(3, str4);
                    }
                    String str5 = playlistRemoteEntity.url;
                    if (str5 == null) {
                        sQLiteStatement.bindNull(4);
                    } else {
                        sQLiteStatement.bindText(4, str5);
                    }
                    String str6 = playlistRemoteEntity.thumbnailUrl;
                    if (str6 == null) {
                        sQLiteStatement.bindNull(5);
                    } else {
                        sQLiteStatement.bindText(5, str6);
                    }
                    String str7 = playlistRemoteEntity.uploader;
                    if (str7 == null) {
                        sQLiteStatement.bindNull(6);
                    } else {
                        sQLiteStatement.bindText(6, str7);
                    }
                    sQLiteStatement.bindLong(7, playlistRemoteEntity.displayIndex);
                    Long l = playlistRemoteEntity.streamCount;
                    if (l != null) {
                        sQLiteStatement.bindLong(8, l.longValue());
                        break;
                    } else {
                        sQLiteStatement.bindNull(8);
                        break;
                    }
                case 14:
                    PlaylistStreamEntity playlistStreamEntity = (PlaylistStreamEntity) obj;
                    sQLiteStatement.getClass();
                    playlistStreamEntity.getClass();
                    sQLiteStatement.bindLong(1, playlistStreamEntity.playlistUid);
                    sQLiteStatement.bindLong(2, playlistStreamEntity.streamUid);
                    sQLiteStatement.bindLong(3, playlistStreamEntity.index);
                    break;
                case 15:
                    StreamEntity streamEntity = (StreamEntity) obj;
                    sQLiteStatement.getClass();
                    streamEntity.getClass();
                    sQLiteStatement.bindLong(1, streamEntity.getUid());
                    sQLiteStatement.bindLong(2, streamEntity.getServiceId());
                    sQLiteStatement.bindText(3, streamEntity.getUrl());
                    sQLiteStatement.bindText(4, streamEntity.getTitle());
                    StreamType streamType = streamEntity.getStreamType();
                    streamType.getClass();
                    sQLiteStatement.bindText(5, streamType.name());
                    sQLiteStatement.bindLong(6, streamEntity.getDuration());
                    sQLiteStatement.bindText(7, streamEntity.getUploader());
                    String uploaderUrl = streamEntity.getUploaderUrl();
                    if (uploaderUrl == null) {
                        sQLiteStatement.bindNull(8);
                    } else {
                        sQLiteStatement.bindText(8, uploaderUrl);
                    }
                    String thumbnailUrl = streamEntity.getThumbnailUrl();
                    if (thumbnailUrl == null) {
                        sQLiteStatement.bindNull(9);
                    } else {
                        sQLiteStatement.bindText(9, thumbnailUrl);
                    }
                    Long viewCount = streamEntity.getViewCount();
                    if (viewCount == null) {
                        sQLiteStatement.bindNull(10);
                    } else {
                        sQLiteStatement.bindLong(10, viewCount.longValue());
                    }
                    String textualUploadDate = streamEntity.getTextualUploadDate();
                    if (textualUploadDate == null) {
                        sQLiteStatement.bindNull(11);
                    } else {
                        sQLiteStatement.bindText(11, textualUploadDate);
                    }
                    Long offsetDateTimeToTimestamp4 = Path.Companion.offsetDateTimeToTimestamp(streamEntity.getUploadDate());
                    if (offsetDateTimeToTimestamp4 == null) {
                        sQLiteStatement.bindNull(12);
                    } else {
                        sQLiteStatement.bindLong(12, offsetDateTimeToTimestamp4.longValue());
                    }
                    Boolean isUploadDateApproximation = streamEntity.isUploadDateApproximation();
                    if ((isUploadDateApproximation != null ? Integer.valueOf(isUploadDateApproximation.booleanValue() ? 1 : 0) : null) != null) {
                        sQLiteStatement.bindLong(13, r2.intValue());
                        break;
                    } else {
                        sQLiteStatement.bindNull(13);
                        break;
                    }
                case 16:
                    StreamStateEntity streamStateEntity = (StreamStateEntity) obj;
                    sQLiteStatement.getClass();
                    streamStateEntity.getClass();
                    sQLiteStatement.bindLong(1, streamStateEntity.streamUid);
                    sQLiteStatement.bindLong(2, streamStateEntity.progressMillis);
                    break;
                case 17:
                    SubscriptionEntity subscriptionEntity = (SubscriptionEntity) obj;
                    sQLiteStatement.getClass();
                    subscriptionEntity.getClass();
                    sQLiteStatement.bindLong(1, subscriptionEntity.uid);
                    sQLiteStatement.bindLong(2, subscriptionEntity.serviceId);
                    String str8 = subscriptionEntity.url;
                    if (str8 == null) {
                        sQLiteStatement.bindNull(3);
                    } else {
                        sQLiteStatement.bindText(3, str8);
                    }
                    String str9 = subscriptionEntity.name;
                    if (str9 == null) {
                        sQLiteStatement.bindNull(4);
                    } else {
                        sQLiteStatement.bindText(4, str9);
                    }
                    String str10 = subscriptionEntity.avatarUrl;
                    if (str10 == null) {
                        sQLiteStatement.bindNull(5);
                    } else {
                        sQLiteStatement.bindText(5, str10);
                    }
                    Long l2 = subscriptionEntity.subscriberCount;
                    if (l2 == null) {
                        sQLiteStatement.bindNull(6);
                    } else {
                        sQLiteStatement.bindLong(6, l2.longValue());
                    }
                    String str11 = subscriptionEntity.description;
                    if (str11 == null) {
                        sQLiteStatement.bindNull(7);
                    } else {
                        sQLiteStatement.bindText(7, str11);
                    }
                    sQLiteStatement.bindLong(8, subscriptionEntity.notificationMode);
                    break;
                default:
                    SubscriptionEntity subscriptionEntity2 = (SubscriptionEntity) obj;
                    sQLiteStatement.getClass();
                    subscriptionEntity2.getClass();
                    sQLiteStatement.bindLong(1, subscriptionEntity2.uid);
                    sQLiteStatement.bindLong(2, subscriptionEntity2.serviceId);
                    String str12 = subscriptionEntity2.url;
                    if (str12 == null) {
                        sQLiteStatement.bindNull(3);
                    } else {
                        sQLiteStatement.bindText(3, str12);
                    }
                    String str13 = subscriptionEntity2.name;
                    if (str13 == null) {
                        sQLiteStatement.bindNull(4);
                    } else {
                        sQLiteStatement.bindText(4, str13);
                    }
                    String str14 = subscriptionEntity2.avatarUrl;
                    if (str14 == null) {
                        sQLiteStatement.bindNull(5);
                    } else {
                        sQLiteStatement.bindText(5, str14);
                    }
                    Long l3 = subscriptionEntity2.subscriberCount;
                    if (l3 == null) {
                        sQLiteStatement.bindNull(6);
                    } else {
                        sQLiteStatement.bindLong(6, l3.longValue());
                    }
                    String str15 = subscriptionEntity2.description;
                    if (str15 == null) {
                        sQLiteStatement.bindNull(7);
                    } else {
                        sQLiteStatement.bindText(7, str15);
                    }
                    sQLiteStatement.bindLong(8, subscriptionEntity2.notificationMode);
                    break;
            }
        }

        @Override // kotlin.text.CharsKt
        public final String createQuery() {
            switch (this.$r8$classId) {
                case 0:
                    return "INSERT OR IGNORE INTO `WorkTag` (`tag`,`work_spec_id`) VALUES (?,?)";
                case 1:
                    return "INSERT OR IGNORE INTO `Dependency` (`work_spec_id`,`prerequisite_id`) VALUES (?,?)";
                case 2:
                    return "INSERT OR REPLACE INTO `Preference` (`key`,`long_value`) VALUES (?,?)";
                case 3:
                    return "INSERT OR REPLACE INTO `SystemIdInfo` (`work_spec_id`,`generation`,`system_id`) VALUES (?,?,?)";
                case 4:
                    return "INSERT OR IGNORE INTO `WorkName` (`name`,`work_spec_id`) VALUES (?,?)";
                case 5:
                    return "INSERT OR IGNORE INTO `WorkSpec` (`id`,`state`,`worker_class_name`,`input_merger_class_name`,`input`,`output`,`initial_delay`,`interval_duration`,`flex_duration`,`run_attempt_count`,`backoff_policy`,`backoff_delay_duration`,`last_enqueue_time`,`minimum_retention_duration`,`schedule_requested_at`,`run_in_foreground`,`out_of_quota_policy`,`period_count`,`generation`,`next_schedule_time_override`,`next_schedule_time_override_generation`,`stop_reason`,`trace_tag`,`backoff_on_system_interruptions`,`required_network_type`,`required_network_request`,`requires_charging`,`requires_device_idle`,`requires_battery_not_low`,`requires_storage_not_low`,`trigger_content_update_delay`,`trigger_max_content_delay`,`content_uri_triggers`) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
                case 6:
                    return "INSERT OR IGNORE INTO `feed` (`stream_id`,`subscription_id`) VALUES (?,?)";
                case 7:
                    return "INSERT OR IGNORE INTO `feed_last_updated` (`subscription_id`,`last_updated`) VALUES (?,?)";
                case 8:
                    return "INSERT OR IGNORE INTO `feed_group_subscription_join` (`group_id`,`subscription_id`) VALUES (?,?)";
                case 9:
                    return "INSERT OR ABORT INTO `feed_group` (`uid`,`name`,`icon_id`,`sort_order`) VALUES (nullif(?, 0),?,?,?)";
                case 10:
                    return "INSERT OR ABORT INTO `search_history` (`creation_date`,`service_id`,`search`,`id`) VALUES (?,?,?,nullif(?, 0))";
                case 11:
                    return "INSERT OR ABORT INTO `stream_history` (`stream_id`,`access_date`,`repeat_count`) VALUES (?,?,?)";
                case 12:
                    return "INSERT OR ABORT INTO `playlists` (`uid`,`name`,`is_thumbnail_permanent`,`thumbnail_stream_id`,`display_index`) VALUES (nullif(?, 0),?,?,?,?)";
                case 13:
                    return "INSERT OR ABORT INTO `remote_playlists` (`uid`,`service_id`,`name`,`url`,`thumbnail_url`,`uploader`,`display_index`,`stream_count`) VALUES (nullif(?, 0),?,?,?,?,?,?,?)";
                case 14:
                    return "INSERT OR ABORT INTO `playlist_stream_join` (`playlist_id`,`stream_id`,`join_index`) VALUES (?,?,?)";
                case 15:
                    return "INSERT OR IGNORE INTO `streams` (`uid`,`service_id`,`url`,`title`,`stream_type`,`duration`,`uploader`,`uploader_url`,`thumbnail_url`,`view_count`,`textual_upload_date`,`upload_date`,`is_upload_date_approximation`) VALUES (nullif(?, 0),?,?,?,?,?,?,?,?,?,?,?,?)";
                case 16:
                    return "INSERT OR IGNORE INTO `stream_state` (`stream_id`,`progress_time`) VALUES (?,?)";
                case 17:
                    return "INSERT OR ABORT INTO `subscriptions` (`uid`,`service_id`,`url`,`name`,`avatar_url`,`subscriber_count`,`description`,`notification_mode`) VALUES (nullif(?, 0),?,?,?,?,?,?,?)";
                default:
                    return "INSERT OR IGNORE INTO `subscriptions` (`uid`,`service_id`,`url`,`name`,`avatar_url`,`subscriber_count`,`description`,`notification_mode`) VALUES (nullif(?, 0),?,?,?,?,?,?,?)";
            }
        }

        public /* synthetic */ AnonymousClass1(Object obj, int i) {
            this.$r8$classId = i;
        }
    }
}
