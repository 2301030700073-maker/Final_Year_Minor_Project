package org.schabi.newpipe.local.feed.service;

import android.os.Build;
import android.util.Log;
import androidx.core.app.NotificationCompat$Builder;
import androidx.core.app.NotificationManagerCompat;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.functions.BiConsumer;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.processors.BehaviorProcessor;
import kotlin.jvm.internal.Intrinsics;
import org.schabi.newpipe.local.feed.service.FeedEventManager;
import org.schabi.newpipe.local.feed.service.FeedLoadService;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class FeedLoadService$onStartCommand$1 implements Consumer, BiConsumer {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ FeedLoadService this$0;

    public /* synthetic */ FeedLoadService$onStartCommand$1(FeedLoadService feedLoadService, int i) {
        this.$r8$classId = i;
        this.this$0 = feedLoadService;
    }

    @Override // io.reactivex.rxjava3.functions.Consumer
    public void accept(Object obj) {
        int i = this.$r8$classId;
        FeedLoadService feedLoadService = this.this$0;
        switch (i) {
            case 0:
                ((Disposable) obj).getClass();
                NotificationCompat$Builder notificationCompat$Builder = feedLoadService.notificationBuilder;
                if (notificationCompat$Builder != null) {
                    feedLoadService.startForeground(7293450, notificationCompat$Builder.build());
                    return;
                } else {
                    Intrinsics.throwUninitializedPropertyAccessException("notificationBuilder");
                    throw null;
                }
            default:
                FeedLoadState feedLoadState = (FeedLoadState) obj;
                feedLoadState.getClass();
                int i2 = feedLoadState.maxProgress;
                NotificationCompat$Builder notificationCompat$Builder2 = feedLoadService.notificationBuilder;
                if (notificationCompat$Builder2 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("notificationBuilder");
                    throw null;
                }
                int i3 = feedLoadState.currentProgress;
                String str = feedLoadState.updateDescription;
                notificationCompat$Builder2.setProgress(i2, i3, i2 == -1);
                if (i2 == -1) {
                    if (Build.VERSION.SDK_INT < 24) {
                        NotificationCompat$Builder notificationCompat$Builder3 = feedLoadService.notificationBuilder;
                        if (notificationCompat$Builder3 == null) {
                            Intrinsics.throwUninitializedPropertyAccessException("notificationBuilder");
                            throw null;
                        }
                        notificationCompat$Builder3.mContentInfo = NotificationCompat$Builder.limitCharSequenceLength(null);
                    }
                    if (str.length() > 0) {
                        NotificationCompat$Builder notificationCompat$Builder4 = feedLoadService.notificationBuilder;
                        if (notificationCompat$Builder4 == null) {
                            Intrinsics.throwUninitializedPropertyAccessException("notificationBuilder");
                            throw null;
                        }
                        notificationCompat$Builder4.setContentText(str);
                    }
                    NotificationCompat$Builder notificationCompat$Builder5 = feedLoadService.notificationBuilder;
                    if (notificationCompat$Builder5 == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("notificationBuilder");
                        throw null;
                    }
                    notificationCompat$Builder5.mContentText = NotificationCompat$Builder.limitCharSequenceLength(str);
                } else {
                    String str2 = i3 + "/" + i2;
                    if (Build.VERSION.SDK_INT < 24) {
                        NotificationCompat$Builder notificationCompat$Builder6 = feedLoadService.notificationBuilder;
                        if (notificationCompat$Builder6 == null) {
                            Intrinsics.throwUninitializedPropertyAccessException("notificationBuilder");
                            throw null;
                        }
                        notificationCompat$Builder6.mContentInfo = NotificationCompat$Builder.limitCharSequenceLength(str2);
                        if (str.length() > 0) {
                            NotificationCompat$Builder notificationCompat$Builder7 = feedLoadService.notificationBuilder;
                            if (notificationCompat$Builder7 == null) {
                                Intrinsics.throwUninitializedPropertyAccessException("notificationBuilder");
                                throw null;
                            }
                            notificationCompat$Builder7.setContentText(str);
                        }
                    } else if (str.length() > 0) {
                        NotificationCompat$Builder notificationCompat$Builder8 = feedLoadService.notificationBuilder;
                        if (notificationCompat$Builder8 == null) {
                            Intrinsics.throwUninitializedPropertyAccessException("notificationBuilder");
                            throw null;
                        }
                        notificationCompat$Builder8.setContentText(str + "  (" + str2 + ")");
                    }
                }
                NotificationManagerCompat notificationManagerCompat = feedLoadService.notificationManager;
                if (notificationManagerCompat == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("notificationManager");
                    throw null;
                }
                if (notificationManagerCompat.areNotificationsEnabled()) {
                    NotificationManagerCompat notificationManagerCompat2 = feedLoadService.notificationManager;
                    if (notificationManagerCompat2 == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("notificationManager");
                        throw null;
                    }
                    NotificationCompat$Builder notificationCompat$Builder9 = feedLoadService.notificationBuilder;
                    if (notificationCompat$Builder9 != null) {
                        notificationManagerCompat2.notify(7293450, notificationCompat$Builder9.build());
                        return;
                    } else {
                        Intrinsics.throwUninitializedPropertyAccessException("notificationBuilder");
                        throw null;
                    }
                }
                return;
        }
    }

    @Override // io.reactivex.rxjava3.functions.BiConsumer
    public void accept(Object obj, Throwable th) {
        FeedLoadService feedLoadService = this.this$0;
        if (th != null) {
            FeedLoadService.Companion companion = FeedLoadService.Companion;
            Log.e("FeedLoadService", "Error while storing result", th);
            BehaviorProcessor behaviorProcessor = FeedEventManager.processor;
            FeedEventManager.processor.onNext(new FeedEventManager.Event.ErrorResultEvent(th));
            feedLoadService.stopService();
            return;
        }
        FeedLoadService.Companion companion2 = FeedLoadService.Companion;
        feedLoadService.stopService();
    }
}
