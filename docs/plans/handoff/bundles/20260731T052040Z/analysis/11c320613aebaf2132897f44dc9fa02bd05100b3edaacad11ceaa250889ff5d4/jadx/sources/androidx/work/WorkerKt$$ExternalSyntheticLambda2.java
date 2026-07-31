package androidx.work;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.compose.runtime.GapComposer$$ExternalSyntheticLambda0;
import androidx.concurrent.futures.CallbackToFutureAdapter$Completer;
import androidx.concurrent.futures.CallbackToFutureAdapter$SafeFuture;
import androidx.core.os.ExecutorCompat$HandlerExecutor;
import androidx.emoji2.text.EmojiCompat;
import androidx.emoji2.text.FontRequestEmojiCompatConfig;
import androidx.fragment.app.DefaultSpecialEffectsController;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentTransition;
import androidx.fragment.app.FragmentTransitionCompat21;
import androidx.fragment.app.SpecialEffectsController$FragmentStateManagerOperation;
import androidx.room.util.DBUtil;
import androidx.sqlite.SQLite;
import androidx.work.impl.ExecutionListener;
import androidx.work.impl.Processor;
import androidx.work.impl.Processor$$ExternalSyntheticLambda0;
import androidx.work.impl.Processor$$ExternalSyntheticLambda2;
import androidx.work.impl.StartStopToken;
import androidx.work.impl.WorkDatabase;
import androidx.work.impl.WorkManagerImpl;
import androidx.work.impl.WorkerWrapper;
import androidx.work.impl.WorkerWrapper$launch$1;
import androidx.work.impl.model.WorkGenerationalId;
import androidx.work.impl.model.WorkSpec;
import androidx.work.impl.model.WorkSpecDao_Impl;
import androidx.work.impl.model.WorkSpecDao_Impl$$ExternalSyntheticLambda26;
import androidx.work.impl.model.WorkSpecDao_Impl$$ExternalSyntheticLambda3;
import androidx.work.impl.utils.EnqueueUtilsKt;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.audio.AudioRendererEventListener;
import com.google.android.exoplayer2.decoder.DecoderReuseEvaluation;
import com.google.android.exoplayer2.drm.DrmSessionEventListener;
import com.google.android.exoplayer2.source.MediaLoadData;
import com.google.android.exoplayer2.source.MediaSourceEventListener;
import com.google.android.exoplayer2.util.Util;
import com.google.android.exoplayer2.video.VideoRendererEventListener;
import com.google.common.util.concurrent.AsyncFunction;
import com.google.common.util.concurrent.ListenableFuture;
import com.google.common.util.concurrent.SettableFuture;
import com.grack.nanojson.JsonBuilder;
import io.reactivex.rxjava3.core.Notification;
import io.reactivex.rxjava3.internal.util.NotificationLite;
import j$.time.OffsetDateTime;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Pair;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.functions.Function0;
import kotlin.math.MathKt;
import kotlin.ranges.RangesKt;
import kotlin.text.CharsKt;
import kotlin.text.StringsKt__IndentKt$$ExternalSyntheticLambda0;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.JobImpl;
import kotlinx.coroutines.JobKt;
import net.newpipe.app.AppKt;
import okhttp3.Dispatcher;
import okhttp3.Headers;
import org.acra.config.CoreConfiguration;
import org.acra.file.ReportLocator;
import org.acra.sender.LegacySenderService;
import org.acra.util.ProcessFinisher;
import org.jsoup.Jsoup;
import org.koin.core.Koin;
import org.schabi.newpipe.database.feed.dao.FeedDAO_Impl;
import org.schabi.newpipe.database.feed.dao.FeedDAO_Impl$$ExternalSyntheticLambda4;
import org.schabi.newpipe.database.feed.model.FeedLastUpdatedEntity;
import org.schabi.newpipe.database.stream.dao.StreamDAO_Impl;
import org.schabi.newpipe.database.subscription.SubscriptionDAO_Impl;
import org.schabi.newpipe.database.subscription.SubscriptionEntity;
import org.schabi.newpipe.extractor.channel.ChannelInfo;
import org.schabi.newpipe.extractor.channel.tabs.ChannelTabInfo;
import org.schabi.newpipe.extractor.localization.DateWrapper;
import org.schabi.newpipe.extractor.stream.StreamInfoItem;
import org.schabi.newpipe.local.feed.FeedDatabaseManager;
import org.schabi.newpipe.local.feed.service.FeedLoadManager;
import org.schabi.newpipe.local.feed.service.FeedLoadManager$notification$1;
import org.schabi.newpipe.local.feed.service.FeedLoadService;
import org.schabi.newpipe.local.feed.service.FeedUpdateInfo;
import org.schabi.newpipe.local.subscription.SubscriptionManager;
import org.schabi.newpipe.util.image.ImageStrategy;
import org.schabi.newpipe.util.text.LongPressClickableSpan;
import org.schabi.newpipe.util.text.LongPressLinkMovementMethod;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final /* synthetic */ class WorkerKt$$ExternalSyntheticLambda2 implements Runnable {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;
    public final /* synthetic */ Object f$1;
    public final /* synthetic */ Object f$2;

    public /* synthetic */ WorkerKt$$ExternalSyntheticLambda2(int i, Object obj, Object obj2, Object obj3) {
        this.$r8$classId = i;
        this.f$0 = obj;
        this.f$1 = obj2;
        this.f$2 = obj3;
    }

    private final void run$androidx$work$impl$Processor$$ExternalSyntheticLambda1() {
        boolean z;
        Processor processor = (Processor) this.f$0;
        CallbackToFutureAdapter$SafeFuture callbackToFutureAdapter$SafeFuture = (CallbackToFutureAdapter$SafeFuture) this.f$1;
        WorkerWrapper workerWrapper = (WorkerWrapper) this.f$2;
        processor.getClass();
        try {
            z = ((Boolean) callbackToFutureAdapter$SafeFuture.delegate.get()).booleanValue();
        } catch (InterruptedException | ExecutionException unused) {
            z = true;
        }
        synchronized (processor.mLock) {
            try {
                WorkGenerationalId generationalId = RangesKt.generationalId(workerWrapper.workSpec);
                String str = generationalId.workSpecId;
                if (processor.getWorkerWrapperUnsafe(str) == workerWrapper) {
                    processor.cleanUpWorkerUnsafe(str);
                }
                Logger$LogcatLogger.get().debug(Processor.TAG, "Processor " + str + " executed; reschedule = " + z);
                Iterator it = processor.mOuterListeners.iterator();
                while (it.hasNext()) {
                    ((ExecutionListener) it.next()).onExecuted(generationalId, z);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private final void run$androidx$work$impl$WorkLauncherImpl$$ExternalSyntheticLambda0() {
        JsonBuilder jsonBuilder = (JsonBuilder) this.f$0;
        StartStopToken startStopToken = (StartStopToken) this.f$1;
        Processor processor = (Processor) jsonBuilder.json;
        processor.getClass();
        WorkGenerationalId workGenerationalId = startStopToken.id;
        String str = workGenerationalId.workSpecId;
        ArrayList arrayList = new ArrayList();
        int i = 0;
        WorkSpec workSpec = (WorkSpec) processor.mWorkDatabase.runInTransaction(new Worker$$ExternalSyntheticLambda0(new Processor$$ExternalSyntheticLambda0(i, processor, arrayList, str), 14));
        if (workSpec == null) {
            Logger$LogcatLogger.get().warning(Processor.TAG, "Didn't find WorkSpec for id " + workGenerationalId);
            ((ExecutorCompat$HandlerExecutor) processor.mWorkTaskExecutor.runningSyncCalls).execute(new Processor$$ExternalSyntheticLambda2(processor, workGenerationalId, i));
            return;
        }
        synchronized (processor.mLock) {
            try {
                if (processor.isEnqueued(str)) {
                    Set set = (Set) processor.mWorkRuns.get(str);
                    if (((StartStopToken) set.iterator().next()).id.generation == workGenerationalId.generation) {
                        set.add(startStopToken);
                        Logger$LogcatLogger.get().debug(Processor.TAG, "Work " + workGenerationalId + " is already enqueued for processing");
                    } else {
                        ((ExecutorCompat$HandlerExecutor) processor.mWorkTaskExecutor.runningSyncCalls).execute(new Processor$$ExternalSyntheticLambda2(processor, workGenerationalId, i));
                    }
                    return;
                }
                if (workSpec.generation != workGenerationalId.generation) {
                    ((ExecutorCompat$HandlerExecutor) processor.mWorkTaskExecutor.runningSyncCalls).execute(new Processor$$ExternalSyntheticLambda2(processor, workGenerationalId, i));
                    return;
                }
                Context context = processor.mAppContext;
                Configuration configuration = processor.mConfiguration;
                Dispatcher dispatcher = processor.mWorkTaskExecutor;
                WorkDatabase workDatabase = processor.mWorkDatabase;
                context.getClass();
                processor.getClass();
                Koin koin = new Koin();
                koin.logger = configuration;
                koin.resolver = dispatcher;
                koin.scopeRegistry = processor;
                koin.instanceRegistry = workDatabase;
                koin.propertyRegistry = workSpec;
                koin.extensionManager = arrayList;
                Context applicationContext = context.getApplicationContext();
                applicationContext.getClass();
                koin.optionRegistry = applicationContext;
                WorkerWrapper workerWrapper = new WorkerWrapper(koin);
                CoroutineDispatcher coroutineDispatcher = (CoroutineDispatcher) workerWrapper.workTaskExecutor.readyAsyncCalls;
                JobImpl Job$default = JobKt.Job$default();
                coroutineDispatcher.getClass();
                CallbackToFutureAdapter$SafeFuture launchFuture$default = MathKt.launchFuture$default(AppKt.plus(coroutineDispatcher, Job$default), new WorkerWrapper$launch$1(workerWrapper, null));
                launchFuture$default.delegate.addListener(new WorkerKt$$ExternalSyntheticLambda2(5, processor, launchFuture$default, workerWrapper), (ExecutorCompat$HandlerExecutor) processor.mWorkTaskExecutor.runningSyncCalls);
                processor.mEnqueuedWorkMap.put(str, workerWrapper);
                HashSet hashSet = new HashSet();
                hashSet.add(startStopToken);
                processor.mWorkRuns.put(str, hashSet);
                Logger$LogcatLogger.get().debug(Processor.TAG, "Processor: processing " + workGenerationalId);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // java.lang.Runnable
    public final void run() {
        Iterator it;
        FeedLoadManager$notification$1 feedLoadManager$notification$1;
        int i = 0;
        switch (this.$r8$classId) {
            case 0:
                AtomicBoolean atomicBoolean = (AtomicBoolean) this.f$0;
                CallbackToFutureAdapter$Completer callbackToFutureAdapter$Completer = (CallbackToFutureAdapter$Completer) this.f$1;
                Function0 function0 = (Function0) this.f$2;
                if (atomicBoolean.get()) {
                    return;
                }
                try {
                    callbackToFutureAdapter$Completer.set(function0.invoke());
                    return;
                } catch (Throwable th) {
                    callbackToFutureAdapter$Completer.setException(th);
                    return;
                }
            case 1:
                ReportLocator reportLocator = (ReportLocator) this.f$0;
                final CharsKt charsKt = (CharsKt) this.f$1;
                final ThreadPoolExecutor threadPoolExecutor = (ThreadPoolExecutor) this.f$2;
                try {
                    FontRequestEmojiCompatConfig create = SQLite.create(reportLocator.context);
                    if (create == null) {
                        throw new RuntimeException("EmojiCompat font provider not available on this device.");
                    }
                    FontRequestEmojiCompatConfig.FontRequestMetadataLoader fontRequestMetadataLoader = (FontRequestEmojiCompatConfig.FontRequestMetadataLoader) ((EmojiCompat.MetadataRepoLoader) create.identityHash);
                    synchronized (fontRequestMetadataLoader.mLock) {
                        fontRequestMetadataLoader.mExecutor = threadPoolExecutor;
                    }
                    ((EmojiCompat.MetadataRepoLoader) create.identityHash).load(new CharsKt() { // from class: androidx.emoji2.text.EmojiCompatInitializer$BackgroundDefaultLoader$1
                        @Override // kotlin.text.CharsKt
                        public final void onFailed(Throwable th2) {
                            ThreadPoolExecutor threadPoolExecutor2 = threadPoolExecutor;
                            try {
                                CharsKt.this.onFailed(th2);
                            } finally {
                                threadPoolExecutor2.shutdown();
                            }
                        }

                        @Override // kotlin.text.CharsKt
                        public final void onLoaded(Dispatcher dispatcher) {
                            ThreadPoolExecutor threadPoolExecutor2 = threadPoolExecutor;
                            try {
                                CharsKt.this.onLoaded(dispatcher);
                            } finally {
                                threadPoolExecutor2.shutdown();
                            }
                        }
                    });
                    return;
                } catch (Throwable th2) {
                    charsKt.onFailed(th2);
                    threadPoolExecutor.shutdown();
                    return;
                }
            case 2:
                ViewGroup viewGroup = (ViewGroup) this.f$0;
                View view = (View) this.f$1;
                DefaultSpecialEffectsController.AnimationEffect animationEffect = (DefaultSpecialEffectsController.AnimationEffect) this.f$2;
                viewGroup.getClass();
                viewGroup.endViewTransition(view);
                animationEffect.animationInfo.operation.completeEffect(animationEffect);
                return;
            case 3:
                SpecialEffectsController$FragmentStateManagerOperation specialEffectsController$FragmentStateManagerOperation = (SpecialEffectsController$FragmentStateManagerOperation) this.f$0;
                SpecialEffectsController$FragmentStateManagerOperation specialEffectsController$FragmentStateManagerOperation2 = (SpecialEffectsController$FragmentStateManagerOperation) this.f$1;
                DefaultSpecialEffectsController.TransitionEffect transitionEffect = (DefaultSpecialEffectsController.TransitionEffect) this.f$2;
                Fragment fragment = specialEffectsController$FragmentStateManagerOperation.fragment;
                Fragment fragment2 = specialEffectsController$FragmentStateManagerOperation2.fragment;
                boolean z = transitionEffect.isPop;
                FragmentTransitionCompat21 fragmentTransitionCompat21 = FragmentTransition.PLATFORM_IMPL;
                fragment.getClass();
                fragment2.getClass();
                if (z) {
                    fragment2.getEnterTransitionCallback();
                    return;
                } else {
                    fragment.getEnterTransitionCallback();
                    return;
                }
            case 4:
                AtomicBoolean atomicBoolean2 = (AtomicBoolean) this.f$0;
                CallbackToFutureAdapter$Completer callbackToFutureAdapter$Completer2 = (CallbackToFutureAdapter$Completer) this.f$1;
                GapComposer$$ExternalSyntheticLambda0 gapComposer$$ExternalSyntheticLambda0 = (GapComposer$$ExternalSyntheticLambda0) this.f$2;
                if (atomicBoolean2.get()) {
                    return;
                }
                try {
                    gapComposer$$ExternalSyntheticLambda0.invoke();
                    callbackToFutureAdapter$Completer2.set(null);
                    return;
                } catch (Throwable th3) {
                    callbackToFutureAdapter$Completer2.setException(th3);
                    return;
                }
            case 5:
                run$androidx$work$impl$Processor$$ExternalSyntheticLambda1();
                return;
            case 6:
                run$androidx$work$impl$WorkLauncherImpl$$ExternalSyntheticLambda0();
                return;
            case 7:
                WorkDatabase workDatabase = (WorkDatabase) this.f$0;
                String str = (String) this.f$1;
                WorkManagerImpl workManagerImpl = (WorkManagerImpl) this.f$2;
                WorkSpecDao_Impl workSpecDao = workDatabase.workSpecDao();
                workSpecDao.getClass();
                str.getClass();
                Iterator it2 = ((List) DBUtil.performBlocking(workSpecDao.__db, true, false, new StringsKt__IndentKt$$ExternalSyntheticLambda0(str, 12))).iterator();
                while (it2.hasNext()) {
                    EnqueueUtilsKt.cancel(workManagerImpl, (String) it2.next());
                }
                return;
            case 8:
                ((AudioRendererEventListener.EventDispatcher) this.f$0).lambda$inputFormatChanged$2((Format) this.f$1, (DecoderReuseEvaluation) this.f$2);
                return;
            case 9:
                ((DrmSessionEventListener.EventDispatcher) this.f$0).lambda$drmSessionManagerError$2((DrmSessionEventListener) this.f$1, (Exception) this.f$2);
                return;
            case 10:
                ((MediaSourceEventListener.EventDispatcher) this.f$0).lambda$downstreamFormatChanged$5((MediaSourceEventListener) this.f$1, (MediaLoadData) this.f$2);
                return;
            case 11:
                Util.lambda$transformFutureAsync$2((ListenableFuture) this.f$0, (SettableFuture) this.f$1, (AsyncFunction) this.f$2);
                return;
            case 12:
                Util.lambda$postOrRunWithCompletion$0((SettableFuture) this.f$0, (Runnable) this.f$1, this.f$2);
                return;
            case 13:
                ((VideoRendererEventListener.EventDispatcher) this.f$0).lambda$inputFormatChanged$2((Format) this.f$1, (DecoderReuseEvaluation) this.f$2);
                return;
            case 14:
                LegacySenderService legacySenderService = (LegacySenderService) this.f$0;
                CoreConfiguration coreConfiguration = (CoreConfiguration) this.f$1;
                Intent intent = (Intent) this.f$2;
                int i2 = LegacySenderService.$r8$clinit;
                ProcessFinisher processFinisher = new ProcessFinisher(legacySenderService, coreConfiguration);
                Bundle extras = intent.getExtras();
                if (extras == null) {
                    extras = new Bundle();
                }
                processFinisher.sendReports(false, extras);
                legacySenderService.stopSelf();
                return;
            case 15:
                List list = (List) this.f$0;
                FeedLoadManager$notification$1 feedLoadManager$notification$12 = (FeedLoadManager$notification$1) this.f$1;
                FeedLoadManager feedLoadManager = (FeedLoadManager) this.f$2;
                Headers.Builder builder = feedLoadManager.feedResultsHolder;
                FeedDatabaseManager feedDatabaseManager = feedLoadManager.feedDatabaseManager;
                Iterator it3 = list.iterator();
                while (it3.hasNext()) {
                    Notification notification = (Notification) it3.next();
                    Object obj = notification.value;
                    if (obj == null || (obj instanceof NotificationLite.ErrorNotification)) {
                        it = it3;
                        feedLoadManager$notification$1 = feedLoadManager$notification$12;
                        if (obj instanceof NotificationLite.ErrorNotification) {
                            Throwable error = obj instanceof NotificationLite.ErrorNotification ? NotificationLite.getError(obj) : null;
                            error.getClass();
                            builder.getClass();
                            builder.namesAndValues.add(error);
                            if (error instanceof FeedLoadService.RequestException) {
                                long subscriptionId = ((FeedLoadService.RequestException) error).getSubscriptionId();
                                FeedDAO_Impl feedDAO_Impl = feedDatabaseManager.feedTable;
                                DBUtil.performBlocking(feedDAO_Impl.__db, false, true, new FeedDAO_Impl$$ExternalSyntheticLambda4(feedDAO_Impl, new FeedLastUpdatedEntity(subscriptionId, null), 0));
                                it3 = it;
                                feedLoadManager$notification$12 = feedLoadManager$notification$1;
                            }
                        }
                        it3 = it;
                        feedLoadManager$notification$12 = feedLoadManager$notification$1;
                    } else {
                        Object value = notification.getValue();
                        value.getClass();
                        FeedUpdateInfo feedUpdateInfo = (FeedUpdateInfo) value;
                        List list2 = feedUpdateInfo.streams;
                        long j = feedUpdateInfo.uid;
                        ArrayList arrayList = feedUpdateInfo.errors;
                        Object value2 = notification.getValue();
                        value2.getClass();
                        FeedUpdateInfo feedUpdateInfo2 = (FeedUpdateInfo) value2;
                        FeedLoadManager feedLoadManager2 = feedLoadManager$notification$12.this$0;
                        ArrayList arrayList2 = new ArrayList();
                        for (Object obj2 : list2) {
                            StreamInfoItem streamInfoItem = (StreamInfoItem) obj2;
                            FeedDatabaseManager feedDatabaseManager2 = feedLoadManager2.feedDatabaseManager;
                            feedDatabaseManager2.getClass();
                            streamInfoItem.getClass();
                            StreamDAO_Impl streamDAO_Impl = feedDatabaseManager2.streamTable;
                            int serviceId = streamInfoItem.getServiceId();
                            Iterator it4 = it3;
                            String url = streamInfoItem.getUrl();
                            url.getClass();
                            streamDAO_Impl.getClass();
                            FeedLoadManager$notification$1 feedLoadManager$notification$13 = feedLoadManager$notification$12;
                            FeedLoadManager feedLoadManager3 = feedLoadManager2;
                            if (!((Boolean) DBUtil.performBlocking(streamDAO_Impl.__db, true, false, new WorkSpecDao_Impl$$ExternalSyntheticLambda3(url, serviceId, 4))).booleanValue() && streamInfoItem.getUploadDate() != null) {
                                DateWrapper uploadDate = streamInfoItem.getUploadDate();
                                uploadDate.getClass();
                                OffsetDateTime offsetDateTime = uploadDate.offsetDateTime();
                                FeedDatabaseManager.Companion.getClass();
                                if (offsetDateTime.isAfter(FeedDatabaseManager.FEED_OLDEST_ALLOWED_DATE)) {
                                    arrayList2.add(obj2);
                                }
                            }
                            it3 = it4;
                            feedLoadManager$notification$12 = feedLoadManager$notification$13;
                            feedLoadManager2 = feedLoadManager3;
                        }
                        it = it3;
                        feedLoadManager$notification$1 = feedLoadManager$notification$12;
                        feedUpdateInfo2.newStreams = arrayList2;
                        FeedDatabaseManager.upsertAll$default(feedDatabaseManager, j, list2);
                        SubscriptionManager subscriptionManager = feedLoadManager.subscriptionManager;
                        subscriptionManager.getClass();
                        SubscriptionDAO_Impl subscriptionDAO_Impl = subscriptionManager.subscriptionTable;
                        SubscriptionEntity subscriptionEntity = (SubscriptionEntity) DBUtil.performBlocking(subscriptionDAO_Impl.__db, true, false, new WorkSpecDao_Impl$$ExternalSyntheticLambda26(j, 18));
                        subscriptionEntity.name = feedUpdateInfo.name;
                        String str2 = feedUpdateInfo.avatarUrl;
                        if (str2 != null) {
                            subscriptionEntity.avatarUrl = str2;
                        }
                        String str3 = feedUpdateInfo.description;
                        if (str3 != null) {
                            subscriptionEntity.description = str3;
                        }
                        Long l = feedUpdateInfo.subscriberCount;
                        if (l != null) {
                            subscriptionEntity.subscriberCount = Long.valueOf(l.longValue());
                        }
                        subscriptionDAO_Impl.update(subscriptionEntity);
                        if (arrayList.isEmpty()) {
                            it3 = it;
                            feedLoadManager$notification$12 = feedLoadManager$notification$1;
                        } else {
                            ArrayList arrayList3 = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(arrayList, 10));
                            Iterator it5 = arrayList.iterator();
                            while (it5.hasNext()) {
                                arrayList3.add(new FeedLoadService.RequestException(feedUpdateInfo.serviceId + ":" + feedUpdateInfo.url, (Throwable) it5.next(), j));
                            }
                            builder.getClass();
                            builder.namesAndValues.addAll(arrayList3);
                            FeedDAO_Impl feedDAO_Impl2 = feedDatabaseManager.feedTable;
                            DBUtil.performBlocking(feedDAO_Impl2.__db, false, true, new FeedDAO_Impl$$ExternalSyntheticLambda4(feedDAO_Impl2, new FeedLastUpdatedEntity(j, null), 0));
                            feedLoadManager$notification$12 = feedLoadManager$notification$1;
                            it3 = it;
                        }
                    }
                }
                return;
            case 16:
                List list3 = (List) this.f$0;
                SubscriptionManager subscriptionManager2 = (SubscriptionManager) this.f$1;
                ArrayList arrayList4 = (ArrayList) this.f$2;
                for (Object obj3 : list3) {
                    int i3 = i + 1;
                    if (i < 0) {
                        Jsoup.throwIndexOverflow();
                        throw null;
                    }
                    Pair pair = (Pair) obj3;
                    if (pair.getSecond() != null) {
                        Object second = pair.getSecond();
                        second.getClass();
                        List relatedItems = ((ChannelTabInfo) second).getRelatedItems();
                        relatedItems.getClass();
                        ArrayList arrayList5 = new ArrayList();
                        for (Object obj4 : relatedItems) {
                            if (obj4 instanceof StreamInfoItem) {
                                arrayList5.add(obj4);
                            }
                        }
                        FeedDatabaseManager.upsertAll$default(subscriptionManager2.feedDatabaseManager, ((SubscriptionEntity) arrayList4.get(i)).uid, arrayList5);
                    }
                    i = i3;
                }
                return;
            case 17:
                SubscriptionEntity subscriptionEntity2 = (SubscriptionEntity) this.f$0;
                SubscriptionManager subscriptionManager3 = (SubscriptionManager) this.f$1;
                ChannelInfo channelInfo = (ChannelInfo) this.f$2;
                subscriptionEntity2.name = channelInfo.getName();
                List avatars = channelInfo.getAvatars();
                avatars.getClass();
                subscriptionEntity2.avatarUrl = ImageStrategy.imageListToDbUrl(avatars);
                subscriptionEntity2.description = channelInfo.getDescription();
                subscriptionEntity2.subscriberCount = Long.valueOf(channelInfo.getSubscriberCount());
                subscriptionManager3.subscriptionTable.update(subscriptionEntity2);
                return;
            default:
                LongPressLinkMovementMethod longPressLinkMovementMethod = (LongPressLinkMovementMethod) this.f$0;
                ((LongPressClickableSpan[]) this.f$1)[0].onLongClick((TextView) this.f$2);
                longPressLinkMovementMethod.isLongPressed = true;
                return;
        }
    }
}
