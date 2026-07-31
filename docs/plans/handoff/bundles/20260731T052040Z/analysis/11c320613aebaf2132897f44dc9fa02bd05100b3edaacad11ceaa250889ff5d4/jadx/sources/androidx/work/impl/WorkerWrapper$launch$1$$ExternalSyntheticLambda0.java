package androidx.work.impl;

import android.content.Context;
import android.graphics.Bitmap;
import android.net.Uri;
import androidx.room.util.DBUtil;
import androidx.work.Data;
import androidx.work.ListenableWorker;
import androidx.work.Logger$LogcatLogger;
import androidx.work.WorkInfo$State;
import androidx.work.impl.WorkerWrapper;
import androidx.work.impl.model.DependencyDao_Impl;
import androidx.work.impl.model.WorkProgressDao_Impl;
import androidx.work.impl.model.WorkSpec;
import androidx.work.impl.model.WorkSpecDao_Impl;
import androidx.work.impl.model.WorkSpecDao_Impl$$ExternalSyntheticLambda26;
import androidx.work.impl.model.WorkTagDao_Impl$$ExternalSyntheticLambda1;
import coil3.decode.DecodeUtils$$ExternalSyntheticBUOutline0;
import com.google.android.exoplayer2.upstream.DataSourceBitmapLoader;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.concurrent.Callable;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__IndentKt$$ExternalSyntheticLambda0;
import net.newpipe.app.AppKt;
import okhttp3.Cookie;
import org.schabi.newpipe.database.LocalItem;
import org.schabi.newpipe.database.feed.dao.FeedDAO_Impl$$ExternalSyntheticLambda2;
import org.schabi.newpipe.database.feed.dao.FeedGroupDAO_Impl;
import org.schabi.newpipe.database.feed.dao.FeedGroupDAO_Impl$$ExternalSyntheticLambda5;
import org.schabi.newpipe.database.feed.model.FeedGroupEntity;
import org.schabi.newpipe.database.history.dao.SearchHistoryDAO_Impl;
import org.schabi.newpipe.database.playlist.PlaylistStreamEntry;
import org.schabi.newpipe.database.playlist.model.PlaylistStreamEntity;
import org.schabi.newpipe.database.stream.StreamStatisticsEntry;
import org.schabi.newpipe.database.stream.dao.StreamDAO_Impl;
import org.schabi.newpipe.database.stream.dao.StreamStateDAO_Impl;
import org.schabi.newpipe.database.stream.model.StreamEntity;
import org.schabi.newpipe.database.stream.model.StreamStateEntity;
import org.schabi.newpipe.database.subscription.SubscriptionEntity;
import org.schabi.newpipe.databinding.PlaylistHeaderBinding;
import org.schabi.newpipe.extractor.InfoItem;
import org.schabi.newpipe.extractor.stream.StreamInfo;
import org.schabi.newpipe.local.feed.FeedDatabaseManager;
import org.schabi.newpipe.local.feed.FeedFragment;
import org.schabi.newpipe.local.feed.service.FeedLoadService;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final /* synthetic */ class WorkerWrapper$launch$1$$ExternalSyntheticLambda0 implements Callable {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;
    public final /* synthetic */ Object f$1;

    public /* synthetic */ WorkerWrapper$launch$1$$ExternalSyntheticLambda0(Object obj, Object obj2, int i) {
        this.$r8$classId = i;
        this.f$0 = obj;
        this.f$1 = obj2;
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        Bitmap lambda$loadBitmap$2;
        long j;
        int i = this.$r8$classId;
        boolean z = true;
        Object obj = this.f$1;
        Object obj2 = this.f$0;
        boolean z2 = false;
        switch (i) {
            case 0:
                WorkerWrapper.Resolution resolution = (WorkerWrapper.Resolution) obj2;
                WorkerWrapper workerWrapper = (WorkerWrapper) obj;
                boolean z3 = resolution instanceof WorkerWrapper.Resolution.Finished;
                WorkInfo$State workInfo$State = WorkInfo$State.ENQUEUED;
                if (!z3) {
                    if (resolution instanceof WorkerWrapper.Resolution.Failed) {
                        ListenableWorker.Result result = ((WorkerWrapper.Resolution.Failed) resolution).result;
                        workerWrapper.getClass();
                        String str = WorkerWrapperKt.TAG;
                        Logger$LogcatLogger.get().info(str, "Worker result FAILURE for " + workerWrapper.workDescription);
                        if (workerWrapper.workSpec.isPeriodic()) {
                            workerWrapper.resetPeriodic();
                        } else {
                            workerWrapper.setFailed(result);
                        }
                        return Boolean.valueOf(z2);
                    }
                    if (!(resolution instanceof WorkerWrapper.Resolution.ResetWorkerStatus)) {
                        DecodeUtils$$ExternalSyntheticBUOutline0.m();
                        return null;
                    }
                    int i2 = ((WorkerWrapper.Resolution.ResetWorkerStatus) resolution).reason;
                    WorkSpecDao_Impl workSpecDao_Impl = workerWrapper.workSpecDao;
                    String str2 = workerWrapper.workSpecId;
                    WorkSpec workSpec = workerWrapper.workSpec;
                    if (Intrinsics.areEqual(workSpec.backOffOnSystemInterruptions, Boolean.TRUE)) {
                        String str3 = WorkerWrapperKt.TAG;
                        Logger$LogcatLogger.get().debug(str3, "Worker " + workSpec.workerClassName + " was interrupted. Backing off.");
                        workerWrapper.reschedule(i2);
                    } else {
                        WorkInfo$State state = workSpecDao_Impl.getState(str2);
                        if (state == null || state.isFinished()) {
                            String str4 = WorkerWrapperKt.TAG;
                            Logger$LogcatLogger.get().debug(str4, "Status for " + str2 + " is " + state + " ; not doing any work");
                            z = false;
                        } else {
                            String str5 = WorkerWrapperKt.TAG;
                            Logger$LogcatLogger.get().debug(str5, "Status for " + str2 + " is " + state + "; not doing any work and rescheduling for later execution");
                            workSpecDao_Impl.setState(workInfo$State, str2);
                            workSpecDao_Impl.setStopReason(str2, i2);
                            workSpecDao_Impl.markWorkSpecScheduled(str2, -1L);
                        }
                    }
                    z2 = z;
                    return Boolean.valueOf(z2);
                }
                ListenableWorker.Result result2 = ((WorkerWrapper.Resolution.Finished) resolution).result;
                WorkSpecDao_Impl workSpecDao_Impl2 = workerWrapper.workSpecDao;
                String str6 = workerWrapper.workSpecId;
                WorkInfo$State state2 = workSpecDao_Impl2.getState(str6);
                WorkProgressDao_Impl workProgressDao = workerWrapper.workDatabase.workProgressDao();
                workProgressDao.getClass();
                DBUtil.performBlocking(workProgressDao.__db, false, true, new StringsKt__IndentKt$$ExternalSyntheticLambda0(str6, 9));
                if (state2 != null) {
                    if (state2 == WorkInfo$State.RUNNING) {
                        WorkSpec workSpec2 = workerWrapper.workSpec;
                        String str7 = workerWrapper.workDescription;
                        if (result2 instanceof ListenableWorker.Result.Success) {
                            String str8 = WorkerWrapperKt.TAG;
                            Logger$LogcatLogger.get().info(str8, "Worker result SUCCESS for " + str7);
                            if (workSpec2.isPeriodic()) {
                                workerWrapper.resetPeriodic();
                            } else {
                                workSpecDao_Impl2.setState(WorkInfo$State.SUCCEEDED, str6);
                                Data data = ((ListenableWorker.Result.Success) result2).mOutputData;
                                data.getClass();
                                DBUtil.performBlocking(workSpecDao_Impl2.__db, false, true, new WorkTagDao_Impl$$ExternalSyntheticLambda1(data, str6, 7));
                                workerWrapper.clock.getClass();
                                long currentTimeMillis = System.currentTimeMillis();
                                DependencyDao_Impl dependencyDao_Impl = workerWrapper.dependencyDao;
                                for (String str9 : dependencyDao_Impl.getDependentWorkIds(str6)) {
                                    if (workSpecDao_Impl2.getState(str9) == WorkInfo$State.BLOCKED && ((Boolean) DBUtil.performBlocking(dependencyDao_Impl.__db, true, false, new StringsKt__IndentKt$$ExternalSyntheticLambda0(str9, 5))).booleanValue()) {
                                        Logger$LogcatLogger.get().info(WorkerWrapperKt.TAG, "Setting status to enqueued for ".concat(str9));
                                        workSpecDao_Impl2.setState(workInfo$State, str9);
                                        workSpecDao_Impl2.setLastEnqueueTime(str9, currentTimeMillis);
                                    }
                                }
                            }
                        } else {
                            if (result2 instanceof ListenableWorker.Result.Retry) {
                                String str10 = WorkerWrapperKt.TAG;
                                Logger$LogcatLogger.get().info(str10, "Worker result RETRY for " + str7);
                                workerWrapper.reschedule(-256);
                                z2 = z;
                                return Boolean.valueOf(z2);
                            }
                            String str11 = WorkerWrapperKt.TAG;
                            Logger$LogcatLogger.get().info(str11, "Worker result FAILURE for " + str7);
                            if (workSpec2.isPeriodic()) {
                                workerWrapper.resetPeriodic();
                            } else {
                                workerWrapper.setFailed(result2);
                            }
                        }
                    } else if (!state2.isFinished()) {
                        workerWrapper.reschedule(-512);
                        z2 = z;
                        return Boolean.valueOf(z2);
                    }
                }
                z = false;
                z2 = z;
                return Boolean.valueOf(z2);
            case 1:
                lambda$loadBitmap$2 = ((DataSourceBitmapLoader) obj2).lambda$loadBitmap$2((Uri) obj);
                return lambda$loadBitmap$2;
            case 2:
                FeedGroupDAO_Impl feedGroupDAO_Impl = ((FeedDatabaseManager) obj2).feedGroupTable;
                feedGroupDAO_Impl.getClass();
                DBUtil.performBlocking(feedGroupDAO_Impl.__db, false, true, new WorkTagDao_Impl$$ExternalSyntheticLambda1(feedGroupDAO_Impl, (LinkedHashMap) obj, 11));
                return Unit.INSTANCE;
            case 3:
                FeedGroupDAO_Impl feedGroupDAO_Impl2 = ((FeedDatabaseManager) obj2).feedGroupTable;
                feedGroupDAO_Impl2.getClass();
                return Integer.valueOf(((Number) DBUtil.performBlocking(feedGroupDAO_Impl2.__db, false, true, new FeedGroupDAO_Impl$$ExternalSyntheticLambda5(feedGroupDAO_Impl2, (FeedGroupEntity) obj, 2))).intValue());
            case 4:
                FeedFragment.Companion companion = FeedFragment.Companion;
                Context requireContext = ((FeedFragment) obj2).requireContext();
                requireContext.getClass();
                return (SubscriptionEntity) DBUtil.performBlocking(AppKt.getInstance(requireContext).subscriptionDAO().__db, true, false, new WorkSpecDao_Impl$$ExternalSyntheticLambda26(((FeedLoadService.RequestException) obj).getSubscriptionId(), 18));
            case 5:
                return Long.valueOf(((StreamDAO_Impl) ((PlaylistHeaderBinding) obj2).uploaderLayout).upsert(new StreamEntity((StreamInfo) obj)));
            case 6:
                PlaylistHeaderBinding playlistHeaderBinding = (PlaylistHeaderBinding) obj2;
                InfoItem infoItem = (InfoItem) obj;
                StreamDAO_Impl streamDAO_Impl = (StreamDAO_Impl) playlistHeaderBinding.uploaderLayout;
                long serviceId = infoItem.getServiceId();
                String url = infoItem.getUrl();
                streamDAO_Impl.getClass();
                url.getClass();
                List list = (List) Cookie.Companion.createFlowable(streamDAO_Impl.__db, false, new String[]{"streams"}, new FeedDAO_Impl$$ExternalSyntheticLambda2(2, serviceId, url, streamDAO_Impl)).blockingFirst();
                if (list.isEmpty()) {
                    return new StreamStateEntity[]{null};
                }
                List list2 = (List) ((StreamStateDAO_Impl) playlistHeaderBinding.playlistStreamCount).getState(((StreamEntity) list.get(0)).getUid()).blockingFirst();
                return list2.isEmpty() ? new StreamStateEntity[]{null} : new StreamStateEntity[]{(StreamStateEntity) list2.get(0)};
            case 7:
                String str12 = (String) obj;
                SearchHistoryDAO_Impl searchHistoryDAO_Impl = (SearchHistoryDAO_Impl) ((PlaylistHeaderBinding) obj2).playlistDescriptionReadMore;
                searchHistoryDAO_Impl.getClass();
                str12.getClass();
                return Integer.valueOf(((Number) DBUtil.performBlocking(searchHistoryDAO_Impl.__db, false, true, new StringsKt__IndentKt$$ExternalSyntheticLambda0(str12, 22))).intValue());
            default:
                PlaylistHeaderBinding playlistHeaderBinding2 = (PlaylistHeaderBinding) obj2;
                List<LocalItem> list3 = (List) obj;
                ArrayList arrayList = new ArrayList(list3.size());
                for (LocalItem localItem : list3) {
                    if (localItem instanceof StreamStatisticsEntry) {
                        j = ((StreamStatisticsEntry) localItem).streamId;
                    } else if (localItem instanceof PlaylistStreamEntity) {
                        j = ((PlaylistStreamEntity) localItem).streamUid;
                    } else if (localItem instanceof PlaylistStreamEntry) {
                        j = ((PlaylistStreamEntry) localItem).streamId;
                    } else {
                        arrayList.add(null);
                    }
                    List list4 = (List) ((StreamStateDAO_Impl) playlistHeaderBinding2.playlistStreamCount).getState(j).blockingFirst();
                    if (list4.isEmpty()) {
                        arrayList.add(null);
                    } else {
                        arrayList.add((StreamStateEntity) list4.get(0));
                    }
                }
                return arrayList;
        }
    }
}
