package androidx.work.impl.model;

import androidx.room.RoomDatabase;
import androidx.room.util.DBUtil;
import androidx.sqlite.SQLite;
import androidx.sqlite.SQLiteStatement;
import androidx.work.BackoffPolicy;
import androidx.work.Constraints;
import androidx.work.Data;
import androidx.work.OutOfQuotaPolicy;
import androidx.work.WorkInfo$State;
import androidx.work.impl.model.WorkTagDao_Impl;
import coil3.decode.DecodeUtils$$ExternalSyntheticBUOutline0;
import java.util.List;
import kotlin.text.StringsKt__IndentKt$$ExternalSyntheticLambda0;
import okhttp3.Cookie;
import okio.Path;
import org.schabi.newpipe.database.feed.model.FeedGroupEntity;
import org.schabi.newpipe.database.feed.model.FeedLastUpdatedEntity;
import org.schabi.newpipe.database.history.model.SearchHistoryEntry;
import org.schabi.newpipe.database.history.model.StreamHistoryEntity;
import org.schabi.newpipe.database.playlist.model.PlaylistEntity;
import org.schabi.newpipe.database.playlist.model.PlaylistRemoteEntity;
import org.schabi.newpipe.database.stream.model.StreamEntity;
import org.schabi.newpipe.database.stream.model.StreamStateEntity;
import org.schabi.newpipe.database.subscription.SubscriptionEntity;
import org.schabi.newpipe.extractor.stream.StreamType;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class WorkSpecDao_Impl {
    public final RoomDatabase __db;
    public final WorkTagDao_Impl.AnonymousClass1 __insertAdapterOfWorkSpec = new WorkTagDao_Impl.AnonymousClass1(5);
    public final AnonymousClass2 __updateAdapterOfWorkSpec = new AnonymousClass2(0);

    public WorkSpecDao_Impl(RoomDatabase roomDatabase) {
        this.__db = roomDatabase;
    }

    public final void delete(String str) {
        str.getClass();
        DBUtil.performBlocking(this.__db, false, true, new StringsKt__IndentKt$$ExternalSyntheticLambda0(str, 18));
    }

    public final WorkInfo$State getState(String str) {
        str.getClass();
        return (WorkInfo$State) DBUtil.performBlocking(this.__db, true, false, new StringsKt__IndentKt$$ExternalSyntheticLambda0(str, 11));
    }

    public final WorkSpec getWorkSpec(String str) {
        str.getClass();
        return (WorkSpec) DBUtil.performBlocking(this.__db, true, false, new StringsKt__IndentKt$$ExternalSyntheticLambda0(str, 10));
    }

    public final List getWorkSpecIdAndStatesForName(String str) {
        str.getClass();
        return (List) DBUtil.performBlocking(this.__db, true, false, new StringsKt__IndentKt$$ExternalSyntheticLambda0(str, 19));
    }

    public final void markWorkSpecScheduled(String str, long j) {
        str.getClass();
        ((Number) DBUtil.performBlocking(this.__db, false, true, new WorkSpecDao_Impl$$ExternalSyntheticLambda12(j, str, 0))).intValue();
    }

    public final void resetWorkSpecNextScheduleTimeOverride(int i, String str) {
        str.getClass();
        DBUtil.performBlocking(this.__db, false, true, new WorkSpecDao_Impl$$ExternalSyntheticLambda3(str, i, 2));
    }

    public final void setLastEnqueueTime(String str, long j) {
        str.getClass();
        DBUtil.performBlocking(this.__db, false, true, new WorkSpecDao_Impl$$ExternalSyntheticLambda12(j, str, 1));
    }

    public final void setState(WorkInfo$State workInfo$State, String str) {
        str.getClass();
        ((Number) DBUtil.performBlocking(this.__db, false, true, new WorkTagDao_Impl$$ExternalSyntheticLambda1(workInfo$State, str, 6))).intValue();
    }

    public final void setStopReason(String str, int i) {
        str.getClass();
        DBUtil.performBlocking(this.__db, false, true, new WorkSpecDao_Impl$$ExternalSyntheticLambda3(i, str, 0));
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    /* renamed from: androidx.work.impl.model.WorkSpecDao_Impl$2, reason: invalid class name */
    public final class AnonymousClass2 extends SQLite {
        public final /* synthetic */ int $r8$classId;

        public /* synthetic */ AnonymousClass2(int i) {
            this.$r8$classId = i;
        }

        @Override // androidx.sqlite.SQLite
        public final void bind(SQLiteStatement sQLiteStatement, Object obj) {
            int i;
            int i2 = 1;
            switch (this.$r8$classId) {
                case 0:
                    WorkSpec workSpec = (WorkSpec) obj;
                    sQLiteStatement.getClass();
                    workSpec.getClass();
                    String str = workSpec.id;
                    sQLiteStatement.bindText(1, str);
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
                    String str2 = workSpec.traceTag;
                    if (str2 == null) {
                        sQLiteStatement.bindNull(23);
                    } else {
                        sQLiteStatement.bindText(23, str2);
                    }
                    Boolean bool = workSpec.backOffOnSystemInterruptions;
                    if ((bool != null ? Integer.valueOf(bool.booleanValue() ? 1 : 0) : null) == null) {
                        sQLiteStatement.bindNull(24);
                    } else {
                        sQLiteStatement.bindLong(24, r3.intValue());
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
                    sQLiteStatement.bindText(34, str);
                    break;
                case 1:
                    FeedLastUpdatedEntity feedLastUpdatedEntity = (FeedLastUpdatedEntity) obj;
                    sQLiteStatement.getClass();
                    feedLastUpdatedEntity.getClass();
                    long j = feedLastUpdatedEntity.subscriptionId;
                    sQLiteStatement.bindLong(1, j);
                    Long offsetDateTimeToTimestamp = Path.Companion.offsetDateTimeToTimestamp(feedLastUpdatedEntity.lastUpdated);
                    if (offsetDateTimeToTimestamp == null) {
                        sQLiteStatement.bindNull(2);
                    } else {
                        sQLiteStatement.bindLong(2, offsetDateTimeToTimestamp.longValue());
                    }
                    sQLiteStatement.bindLong(3, j);
                    break;
                case 2:
                    FeedGroupEntity feedGroupEntity = (FeedGroupEntity) obj;
                    sQLiteStatement.getClass();
                    feedGroupEntity.getClass();
                    long j2 = feedGroupEntity.uid;
                    sQLiteStatement.bindLong(1, j2);
                    sQLiteStatement.bindText(2, feedGroupEntity.name);
                    feedGroupEntity.icon.getClass();
                    sQLiteStatement.bindLong(3, r2.getId());
                    sQLiteStatement.bindLong(4, feedGroupEntity.sortOrder);
                    sQLiteStatement.bindLong(5, j2);
                    break;
                case 3:
                    SearchHistoryEntry searchHistoryEntry = (SearchHistoryEntry) obj;
                    sQLiteStatement.getClass();
                    searchHistoryEntry.getClass();
                    long j3 = searchHistoryEntry.id;
                    Long offsetDateTimeToTimestamp2 = Path.Companion.offsetDateTimeToTimestamp(searchHistoryEntry.creationDate);
                    if (offsetDateTimeToTimestamp2 == null) {
                        sQLiteStatement.bindNull(1);
                    } else {
                        sQLiteStatement.bindLong(1, offsetDateTimeToTimestamp2.longValue());
                    }
                    sQLiteStatement.bindLong(2, searchHistoryEntry.serviceId);
                    String str3 = searchHistoryEntry.search;
                    if (str3 == null) {
                        sQLiteStatement.bindNull(3);
                    } else {
                        sQLiteStatement.bindText(3, str3);
                    }
                    sQLiteStatement.bindLong(4, j3);
                    sQLiteStatement.bindLong(5, j3);
                    break;
                case 4:
                    StreamHistoryEntity streamHistoryEntity = (StreamHistoryEntity) obj;
                    sQLiteStatement.getClass();
                    streamHistoryEntity.getClass();
                    sQLiteStatement.bindLong(1, streamHistoryEntity.streamUid);
                    Long offsetDateTimeToTimestamp3 = Path.Companion.offsetDateTimeToTimestamp(streamHistoryEntity.accessDate);
                    if (offsetDateTimeToTimestamp3 != null) {
                        sQLiteStatement.bindLong(2, offsetDateTimeToTimestamp3.longValue());
                        break;
                    } else {
                        sQLiteStatement.bindNull(2);
                        break;
                    }
                case 5:
                    PlaylistEntity playlistEntity = (PlaylistEntity) obj;
                    sQLiteStatement.getClass();
                    playlistEntity.getClass();
                    long j4 = playlistEntity.uid;
                    sQLiteStatement.bindLong(1, j4);
                    String str4 = playlistEntity.name;
                    if (str4 == null) {
                        sQLiteStatement.bindNull(2);
                    } else {
                        sQLiteStatement.bindText(2, str4);
                    }
                    sQLiteStatement.bindLong(3, playlistEntity.isThumbnailPermanent ? 1L : 0L);
                    sQLiteStatement.bindLong(4, playlistEntity.thumbnailStreamId);
                    sQLiteStatement.bindLong(5, playlistEntity.displayIndex);
                    sQLiteStatement.bindLong(6, j4);
                    break;
                case 6:
                    PlaylistRemoteEntity playlistRemoteEntity = (PlaylistRemoteEntity) obj;
                    sQLiteStatement.getClass();
                    playlistRemoteEntity.getClass();
                    sQLiteStatement.bindLong(1, playlistRemoteEntity.uid);
                    sQLiteStatement.bindLong(2, playlistRemoteEntity.serviceId);
                    String str5 = playlistRemoteEntity.orderingName;
                    if (str5 == null) {
                        sQLiteStatement.bindNull(3);
                    } else {
                        sQLiteStatement.bindText(3, str5);
                    }
                    String str6 = playlistRemoteEntity.url;
                    if (str6 == null) {
                        sQLiteStatement.bindNull(4);
                    } else {
                        sQLiteStatement.bindText(4, str6);
                    }
                    String str7 = playlistRemoteEntity.thumbnailUrl;
                    if (str7 == null) {
                        sQLiteStatement.bindNull(5);
                    } else {
                        sQLiteStatement.bindText(5, str7);
                    }
                    String str8 = playlistRemoteEntity.uploader;
                    if (str8 == null) {
                        sQLiteStatement.bindNull(6);
                    } else {
                        sQLiteStatement.bindText(6, str8);
                    }
                    sQLiteStatement.bindLong(7, playlistRemoteEntity.displayIndex);
                    Long l = playlistRemoteEntity.streamCount;
                    if (l == null) {
                        sQLiteStatement.bindNull(8);
                    } else {
                        sQLiteStatement.bindLong(8, l.longValue());
                    }
                    sQLiteStatement.bindLong(9, playlistRemoteEntity.uid);
                    break;
                case 7:
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
                    if ((isUploadDateApproximation != null ? Integer.valueOf(isUploadDateApproximation.booleanValue() ? 1 : 0) : null) == null) {
                        sQLiteStatement.bindNull(13);
                    } else {
                        sQLiteStatement.bindLong(13, r3.intValue());
                    }
                    sQLiteStatement.bindLong(14, streamEntity.getUid());
                    break;
                case 8:
                    StreamStateEntity streamStateEntity = (StreamStateEntity) obj;
                    sQLiteStatement.getClass();
                    streamStateEntity.getClass();
                    long j5 = streamStateEntity.streamUid;
                    sQLiteStatement.bindLong(1, j5);
                    sQLiteStatement.bindLong(2, streamStateEntity.progressMillis);
                    sQLiteStatement.bindLong(3, j5);
                    break;
                case 9:
                    SubscriptionEntity subscriptionEntity = (SubscriptionEntity) obj;
                    sQLiteStatement.getClass();
                    subscriptionEntity.getClass();
                    sQLiteStatement.bindLong(1, subscriptionEntity.uid);
                    break;
                default:
                    SubscriptionEntity subscriptionEntity2 = (SubscriptionEntity) obj;
                    sQLiteStatement.getClass();
                    subscriptionEntity2.getClass();
                    sQLiteStatement.bindLong(1, subscriptionEntity2.uid);
                    sQLiteStatement.bindLong(2, subscriptionEntity2.serviceId);
                    String str9 = subscriptionEntity2.url;
                    if (str9 == null) {
                        sQLiteStatement.bindNull(3);
                    } else {
                        sQLiteStatement.bindText(3, str9);
                    }
                    String str10 = subscriptionEntity2.name;
                    if (str10 == null) {
                        sQLiteStatement.bindNull(4);
                    } else {
                        sQLiteStatement.bindText(4, str10);
                    }
                    String str11 = subscriptionEntity2.avatarUrl;
                    if (str11 == null) {
                        sQLiteStatement.bindNull(5);
                    } else {
                        sQLiteStatement.bindText(5, str11);
                    }
                    Long l2 = subscriptionEntity2.subscriberCount;
                    if (l2 == null) {
                        sQLiteStatement.bindNull(6);
                    } else {
                        sQLiteStatement.bindLong(6, l2.longValue());
                    }
                    String str12 = subscriptionEntity2.description;
                    if (str12 == null) {
                        sQLiteStatement.bindNull(7);
                    } else {
                        sQLiteStatement.bindText(7, str12);
                    }
                    sQLiteStatement.bindLong(8, subscriptionEntity2.notificationMode);
                    sQLiteStatement.bindLong(9, subscriptionEntity2.uid);
                    break;
            }
        }

        @Override // androidx.sqlite.SQLite
        public final String createQuery() {
            switch (this.$r8$classId) {
                case 0:
                    return "UPDATE OR ABORT `WorkSpec` SET `id` = ?,`state` = ?,`worker_class_name` = ?,`input_merger_class_name` = ?,`input` = ?,`output` = ?,`initial_delay` = ?,`interval_duration` = ?,`flex_duration` = ?,`run_attempt_count` = ?,`backoff_policy` = ?,`backoff_delay_duration` = ?,`last_enqueue_time` = ?,`minimum_retention_duration` = ?,`schedule_requested_at` = ?,`run_in_foreground` = ?,`out_of_quota_policy` = ?,`period_count` = ?,`generation` = ?,`next_schedule_time_override` = ?,`next_schedule_time_override_generation` = ?,`stop_reason` = ?,`trace_tag` = ?,`backoff_on_system_interruptions` = ?,`required_network_type` = ?,`required_network_request` = ?,`requires_charging` = ?,`requires_device_idle` = ?,`requires_battery_not_low` = ?,`requires_storage_not_low` = ?,`trigger_content_update_delay` = ?,`trigger_max_content_delay` = ?,`content_uri_triggers` = ? WHERE `id` = ?";
                case 1:
                    return "UPDATE OR IGNORE `feed_last_updated` SET `subscription_id` = ?,`last_updated` = ? WHERE `subscription_id` = ?";
                case 2:
                    return "UPDATE OR IGNORE `feed_group` SET `uid` = ?,`name` = ?,`icon_id` = ?,`sort_order` = ? WHERE `uid` = ?";
                case 3:
                    return "UPDATE OR ABORT `search_history` SET `creation_date` = ?,`service_id` = ?,`search` = ?,`id` = ? WHERE `id` = ?";
                case 4:
                    return "DELETE FROM `stream_history` WHERE `stream_id` = ? AND `access_date` = ?";
                case 5:
                    return "UPDATE OR ABORT `playlists` SET `uid` = ?,`name` = ?,`is_thumbnail_permanent` = ?,`thumbnail_stream_id` = ?,`display_index` = ? WHERE `uid` = ?";
                case 6:
                    return "UPDATE OR ABORT `remote_playlists` SET `uid` = ?,`service_id` = ?,`name` = ?,`url` = ?,`thumbnail_url` = ?,`uploader` = ?,`display_index` = ?,`stream_count` = ? WHERE `uid` = ?";
                case 7:
                    return "UPDATE OR ABORT `streams` SET `uid` = ?,`service_id` = ?,`url` = ?,`title` = ?,`stream_type` = ?,`duration` = ?,`uploader` = ?,`uploader_url` = ?,`thumbnail_url` = ?,`view_count` = ?,`textual_upload_date` = ?,`upload_date` = ?,`is_upload_date_approximation` = ? WHERE `uid` = ?";
                case 8:
                    return "UPDATE OR ABORT `stream_state` SET `stream_id` = ?,`progress_time` = ? WHERE `stream_id` = ?";
                case 9:
                    return "DELETE FROM `subscriptions` WHERE `uid` = ?";
                default:
                    return "UPDATE OR ABORT `subscriptions` SET `uid` = ?,`service_id` = ?,`url` = ?,`name` = ?,`avatar_url` = ?,`subscriber_count` = ?,`description` = ?,`notification_mode` = ? WHERE `uid` = ?";
            }
        }

        public /* synthetic */ AnonymousClass2(Object obj, int i) {
            this.$r8$classId = i;
        }
    }
}
