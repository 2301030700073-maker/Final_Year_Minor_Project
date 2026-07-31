package org.schabi.newpipe.database.stream.dao;

import androidx.room.RoomDatabase;
import androidx.room.util.DBUtil;
import androidx.work.impl.model.WorkSpecDao_Impl;
import androidx.work.impl.model.WorkSpecDao_Impl$$ExternalSyntheticLambda3;
import androidx.work.impl.model.WorkTagDao_Impl;
import j$.time.OffsetDateTime;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;
import okio.Okio;
import okio.Path;
import org.schabi.newpipe.database.stream.model.StreamEntity;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class StreamDAO_Impl {
    public static final Companion Companion = new Companion();
    public final RoomDatabase __db;
    public final Path.Companion __converters = new Path.Companion(10);
    public final WorkTagDao_Impl.AnonymousClass1 __insertAdapterOfStreamEntity_1 = new WorkTagDao_Impl.AnonymousClass1(this, 15);
    public final WorkSpecDao_Impl.AnonymousClass2 __updateAdapterOfStreamEntity = new WorkSpecDao_Impl.AnonymousClass2(this, 7);

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class Companion {
    }

    public StreamDAO_Impl(RoomDatabase roomDatabase) {
        this.__db = roomDatabase;
    }

    public final void compareAndUpdateStream(StreamEntity streamEntity) {
        int serviceId = streamEntity.getServiceId();
        String url = streamEntity.getUrl();
        url.getClass();
        StreamDAO$StreamCompareFeed streamDAO$StreamCompareFeed = (StreamDAO$StreamCompareFeed) DBUtil.performBlocking(this.__db, true, false, new WorkSpecDao_Impl$$ExternalSyntheticLambda3(url, serviceId, this));
        if (streamDAO$StreamCompareFeed == null) {
            _UtilJvmKt$$ExternalSyntheticLambda1.m$2("Stream cannot be null just after insertion.");
            return;
        }
        long j = streamDAO$StreamCompareFeed.duration;
        streamEntity.setUid(streamDAO$StreamCompareFeed.uid);
        if (Okio.isLiveStream(streamEntity.getStreamType())) {
            return;
        }
        boolean z = (streamEntity.getUploadDate() == null || Intrinsics.areEqual(streamEntity.isUploadDateApproximation(), Boolean.TRUE)) ? false : true;
        OffsetDateTime offsetDateTime = streamDAO$StreamCompareFeed.uploadDate;
        if (offsetDateTime != null && !z) {
            streamEntity.setUploadDate(offsetDateTime);
            streamEntity.setTextualUploadDate(streamDAO$StreamCompareFeed.textualUploadDate);
            streamEntity.setUploadDateApproximation(streamDAO$StreamCompareFeed.isUploadDateApproximation);
        }
        if (j <= 0 || streamEntity.getDuration() >= 0) {
            return;
        }
        streamEntity.setDuration(j);
    }

    public final long upsert(StreamEntity streamEntity) {
        return ((Number) DBUtil.performBlocking(this.__db, false, true, new StreamDAO_Impl$$ExternalSyntheticLambda3(this, streamEntity, 0))).longValue();
    }

    public final List upsertAll(List list) {
        list.getClass();
        return (List) DBUtil.performBlocking(this.__db, false, true, new StreamDAO_Impl$$ExternalSyntheticLambda1(this, list, 0));
    }
}
