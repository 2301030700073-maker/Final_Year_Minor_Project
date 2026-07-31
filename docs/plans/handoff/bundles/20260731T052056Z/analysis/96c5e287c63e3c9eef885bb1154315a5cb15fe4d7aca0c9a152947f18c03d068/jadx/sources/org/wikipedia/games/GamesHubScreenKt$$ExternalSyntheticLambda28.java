package org.wikipedia.games;

import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.os.PowerManager;
import androidx.compose.animation.core.ArcSplineKt;
import androidx.compose.animation.core.InfiniteRepeatableSpec;
import androidx.compose.animation.core.InfiniteTransition;
import androidx.compose.animation.core.TargetBasedAnimation;
import androidx.compose.foundation.pager.PagerState;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.ParcelableSnapshotMutableIntState;
import androidx.work.ForegroundInfo;
import androidx.work.Logger$LogcatLogger;
import androidx.work.impl.Processor;
import androidx.work.impl.WorkerWrapper;
import androidx.work.impl.foreground.SystemForegroundDispatcher;
import androidx.work.impl.foreground.SystemForegroundService;
import androidx.work.impl.model.WorkGenerationalId;
import androidx.work.impl.model.WorkSpec;
import androidx.work.impl.utils.WakeLocks;
import androidx.work.impl.utils.WorkForegroundUpdater;
import coil3.util.BitmapsKt;
import coil3.util.ContextsKt$$ExternalSyntheticBUOutline0;
import com.caverock.androidsvg.SVGAndroidRenderer;
import java.util.List;
import java.util.UUID;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.wikipedia.analytics.eventplatform.WikiGamesEvent;
import org.wikipedia.extensions.ContextKt;
import org.wikipedia.games.onthisday.OnThisDayGameArchiveCalendarHelper;
import org.wikipedia.onboarding.OnboardingScreen;
import org.wikipedia.util.UriUtil;
import org.wikipedia.yearinreview.YearInReviewCaptureRequest;
import org.wikipedia.yearinreview.YearInReviewScreenData;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class GamesHubScreenKt$$ExternalSyntheticLambda28 implements Function0 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;
    public final /* synthetic */ Object f$1;
    public final /* synthetic */ Object f$2;
    public final /* synthetic */ Object f$3;

    public /* synthetic */ GamesHubScreenKt$$ExternalSyntheticLambda28(Function3 function3, MutableState mutableState, MutableState mutableState2, MutableState mutableState3) {
        this.$r8$classId = 4;
        this.f$0 = function3;
        this.f$3 = mutableState;
        this.f$1 = mutableState2;
        this.f$2 = mutableState3;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        switch (this.$r8$classId) {
            case 0:
                String str = (String) this.f$0;
                GamesHubViewModel gamesHubViewModel = (GamesHubViewModel) this.f$1;
                OnThisDayGameArchiveCalendarHelper onThisDayGameArchiveCalendarHelper = (OnThisDayGameArchiveCalendarHelper) this.f$2;
                MutableState mutableState = (MutableState) this.f$3;
                WikiGamesEvent.submit$default(956, null, null, "language_chip_select", "games_hub", null, str, null);
                mutableState.setValue(str);
                gamesHubViewModel.getClass();
                str.getClass();
                gamesHubViewModel.selectedLanguage = str;
                gamesHubViewModel.loadOnThisDayGamesPreviews((String) mutableState.getValue());
                String str2 = (String) mutableState.getValue();
                onThisDayGameArchiveCalendarHelper.getClass();
                str2.getClass();
                onThisDayGameArchiveCalendarHelper.languageCode = str2;
                return Unit.INSTANCE;
            case 1:
                Float f = (Float) this.f$0;
                InfiniteTransition.TransitionAnimationState transitionAnimationState = (InfiniteTransition.TransitionAnimationState) this.f$1;
                Float f2 = (Float) this.f$2;
                InfiniteRepeatableSpec infiniteRepeatableSpec = (InfiniteRepeatableSpec) this.f$3;
                if (!f.equals(transitionAnimationState.initialValue) || !f2.equals(transitionAnimationState.targetValue)) {
                    transitionAnimationState.initialValue = f;
                    transitionAnimationState.targetValue = f2;
                    transitionAnimationState.animation = new TargetBasedAnimation(infiniteRepeatableSpec, ArcSplineKt.FloatToVector, f, f2, null);
                    transitionAnimationState.this$0.refreshChildNeeded$delegate.setValue(Boolean.TRUE);
                    transitionAnimationState.isFinished = false;
                    transitionAnimationState.startOnTheNextFrame = true;
                }
                return Unit.INSTANCE;
            case 2:
                WorkForegroundUpdater workForegroundUpdater = (WorkForegroundUpdater) this.f$0;
                UUID uuid = (UUID) this.f$1;
                ForegroundInfo foregroundInfo = (ForegroundInfo) this.f$2;
                Context context = (Context) this.f$3;
                String uuid2 = uuid.toString();
                WorkSpec workSpec = workForegroundUpdater.mWorkSpecDao.getWorkSpec(uuid2);
                if (workSpec == null || workSpec.state.isFinished()) {
                    _UtilJvmKt$$ExternalSyntheticLambda0.m$1("Calls to setForegroundAsync() must complete before a ListenableWorker signals completion of work by returning an instance of Result.");
                } else {
                    Processor processor = workForegroundUpdater.mForegroundProcessor;
                    synchronized (processor.mLock) {
                        try {
                            Logger$LogcatLogger.get().info(Processor.TAG, "Moving WorkSpec (" + uuid2 + ") to the foreground");
                            WorkerWrapper workerWrapper = (WorkerWrapper) processor.mEnqueuedWorkMap.remove(uuid2);
                            if (workerWrapper != null) {
                                if (processor.mForegroundLock == null) {
                                    PowerManager.WakeLock newWakeLock = WakeLocks.newWakeLock(processor.mAppContext);
                                    processor.mForegroundLock = newWakeLock;
                                    newWakeLock.acquire();
                                }
                                processor.mForegroundWorkMap.put(uuid2, workerWrapper);
                                Intent createStartForegroundIntent = SystemForegroundDispatcher.createStartForegroundIntent(processor.mAppContext, ResultKt.generationalId(workerWrapper.workSpec), foregroundInfo);
                                Context context2 = processor.mAppContext;
                                if (Build.VERSION.SDK_INT >= 26) {
                                    BitmapsKt.startForegroundService(context2, createStartForegroundIntent);
                                } else {
                                    context2.startService(createStartForegroundIntent);
                                }
                            }
                        } catch (Throwable th) {
                            throw th;
                        }
                    }
                    WorkGenerationalId generationalId = ResultKt.generationalId(workSpec);
                    String str3 = SystemForegroundDispatcher.TAG;
                    Intent intent = new Intent(context, (Class<?>) SystemForegroundService.class);
                    intent.setAction("ACTION_NOTIFY");
                    intent.putExtra("KEY_NOTIFICATION_ID", foregroundInfo.mNotificationId);
                    intent.putExtra("KEY_FOREGROUND_SERVICE_TYPE", foregroundInfo.mForegroundServiceType);
                    intent.putExtra("KEY_NOTIFICATION", foregroundInfo.mNotification);
                    intent.putExtra("KEY_WORKSPEC_ID", generationalId.workSpecId);
                    intent.putExtra("KEY_GENERATION", generationalId.generation);
                    context.startService(intent);
                }
                return null;
            case 3:
                Context context3 = (Context) this.f$0;
                List list = (List) this.f$1;
                Function0 function0 = (Function0) this.f$2;
                ParcelableSnapshotMutableIntState parcelableSnapshotMutableIntState = (ParcelableSnapshotMutableIntState) this.f$3;
                SVGAndroidRenderer instrument = ContextKt.getInstrument(context3);
                if (instrument != null) {
                    SVGAndroidRenderer.submitInteraction$default(instrument, "click", null, ((OnboardingScreen) list.get(parcelableSnapshotMutableIntState.getIntValue())).name(), "add_language", null, null, 242);
                }
                function0.invoke();
                return Unit.INSTANCE;
            case 4:
                ((Function3) this.f$0).invoke((String) ((MutableState) this.f$3).getValue(), (String) ((MutableState) this.f$1).getValue(), (String) ((MutableState) this.f$2).getValue());
                return Unit.INSTANCE;
            default:
                List list2 = (List) this.f$0;
                PagerState pagerState = (PagerState) this.f$1;
                Function2 function2 = (Function2) this.f$2;
                MutableState mutableState2 = (MutableState) this.f$3;
                UriUtil.submit$default(238, null, "share_click", null, ((YearInReviewScreenData) list2.get(pagerState.getCurrentPage())).slideName, null);
                YearInReviewScreenData yearInReviewScreenData = (YearInReviewScreenData) list2.get(pagerState.getCurrentPage());
                if (yearInReviewScreenData instanceof YearInReviewScreenData.GeoScreen) {
                    mutableState2.setValue(new YearInReviewCaptureRequest.GeoScreen((YearInReviewScreenData) list2.get(pagerState.getCurrentPage()), function2));
                } else if (yearInReviewScreenData instanceof YearInReviewScreenData.StandardScreen) {
                    mutableState2.setValue(new YearInReviewCaptureRequest.StandardScreen((YearInReviewScreenData) list2.get(pagerState.getCurrentPage())));
                } else if (!(yearInReviewScreenData instanceof YearInReviewScreenData.HighlightsScreen)) {
                    ContextsKt$$ExternalSyntheticBUOutline0.m();
                    return null;
                }
                return Unit.INSTANCE;
        }
    }

    public /* synthetic */ GamesHubScreenKt$$ExternalSyntheticLambda28(Object obj, Object obj2, Object obj3, Object obj4, int i) {
        this.$r8$classId = i;
        this.f$0 = obj;
        this.f$1 = obj2;
        this.f$2 = obj3;
        this.f$3 = obj4;
    }
}
