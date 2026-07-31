package androidx.work.impl;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.Point;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.text.Spanned;
import android.view.ActionMode;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewOutlineProvider;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.PopupWindow;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.compose.foundation.text.contextmenu.internal.AndroidTextContextMenuToolbarProvider;
import androidx.compose.foundation.text.contextmenu.internal.FloatingTextActionModeCallback;
import androidx.compose.ui.unit.DpKt;
import androidx.concurrent.futures.CallbackToFutureAdapter$SafeFuture;
import androidx.core.app.ActivityOptionsCompat$ActivityOptionsCompatImpl;
import androidx.core.view.ViewCompat;
import androidx.emoji2.text.EmojiCompat;
import androidx.emoji2.text.FontRequestEmojiCompatConfig;
import androidx.fragment.app.DefaultSpecialEffectsController;
import androidx.fragment.app.SpecialEffectsController$FragmentStateManagerOperation;
import androidx.navigation.internal.NavContext;
import androidx.recyclerview.widget.RecyclerView;
import androidx.work.Logger$LogcatLogger;
import androidx.work.OperationKt;
import androidx.work.Worker$$ExternalSyntheticLambda0;
import androidx.work.impl.model.WorkGenerationalId;
import androidx.work.impl.model.WorkSpec;
import androidx.work.impl.model.WorkSpecDao_Impl;
import androidx.work.impl.model.WorkTagDao_Impl;
import androidx.work.impl.utils.EnqueueUtilsKt;
import coil3.ImageLoader$Builder;
import coil3.svg.internal.AndroidSvg;
import coil3.util.ContextsKt$$ExternalSyntheticBUOutline0;
import coil3.util.UtilsKt;
import com.google.android.material.internal.ViewUtils$$ExternalSyntheticLambda0;
import com.google.gson.GsonBuilder;
import com.skydoves.balloon.ArrowOrientation;
import com.skydoves.balloon.ArrowOrientationRules;
import com.skydoves.balloon.Balloon;
import com.skydoves.balloon.Balloon$$ExternalSyntheticLambda9;
import com.skydoves.balloon.BalloonAlign;
import com.skydoves.balloon.BalloonKt$sam$com_skydoves_balloon_OnBalloonInitializedListener$0;
import com.skydoves.balloon.BalloonPlacement;
import com.skydoves.balloon.PlacementType;
import com.skydoves.balloon.radius.RadiusLayout;
import com.skydoves.balloon.vectortext.VectorTextView;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.WeakHashMap;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.regex.Pattern;
import kotlin.ExceptionsKt;
import kotlin.Pair;
import kotlin.ResultKt;
import kotlin.UnsignedKt;
import kotlin.collections.CollectionsKt__IteratorsJVMKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref$ObjectRef;
import kotlin.text.StringsKt__IndentKt$$ExternalSyntheticLambda0;
import kotlinx.coroutines.AwaitKt;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.JobImpl;
import okhttp3.Cache;
import okio.internal.DefaultSocket;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;
import org.wikipedia.R;
import org.wikipedia.edit.preview.EditPreviewFragment;
import org.wikipedia.history.HistoryEntry;
import org.wikipedia.login.LoginClient;
import org.wikipedia.page.PageActivity;
import org.wikipedia.page.PageFragment;
import org.wikipedia.page.PageTitle;
import org.wikipedia.page.references.PageReferences;
import org.wikipedia.page.references.ReferenceDialog;
import org.wikipedia.util.StringUtil;
import org.wikipedia.views.AppTextView;
import retrofit2.Callback;
import retrofit2.DefaultCallAdapterFactory;
import retrofit2.OkHttpCall;
import retrofit2.Response;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class Processor$$ExternalSyntheticLambda1 implements Runnable {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;
    public final /* synthetic */ Object f$1;
    public final /* synthetic */ Object f$2;

    public /* synthetic */ Processor$$ExternalSyntheticLambda1(Object obj, Object obj2, Object obj3, int i) {
        this.$r8$classId = i;
        this.f$0 = obj;
        this.f$1 = obj2;
        this.f$2 = obj3;
    }

    private final void run$androidx$emoji2$text$EmojiCompatInitializer$BackgroundDefaultLoader$$ExternalSyntheticLambda0() {
        NavContext navContext = (NavContext) this.f$0;
        final UtilsKt utilsKt = (UtilsKt) this.f$1;
        final ThreadPoolExecutor threadPoolExecutor = (ThreadPoolExecutor) this.f$2;
        try {
            FontRequestEmojiCompatConfig create = UnsignedKt.create(navContext.context);
            if (create == null) {
                throw new RuntimeException("EmojiCompat font provider not available on this device.");
            }
            FontRequestEmojiCompatConfig.FontRequestMetadataLoader fontRequestMetadataLoader = (FontRequestEmojiCompatConfig.FontRequestMetadataLoader) ((EmojiCompat.MetadataRepoLoader) create.identityHash);
            synchronized (fontRequestMetadataLoader.mLock) {
                fontRequestMetadataLoader.mExecutor = threadPoolExecutor;
            }
            ((EmojiCompat.MetadataRepoLoader) create.identityHash).load(new UtilsKt() { // from class: androidx.emoji2.text.EmojiCompatInitializer$BackgroundDefaultLoader$1
                @Override // coil3.util.UtilsKt
                public final void onFailed(Throwable th) {
                    ThreadPoolExecutor threadPoolExecutor2 = threadPoolExecutor;
                    try {
                        UtilsKt.this.onFailed(th);
                    } finally {
                        threadPoolExecutor2.shutdown();
                    }
                }

                @Override // coil3.util.UtilsKt
                public final void onLoaded(ImageLoader$Builder imageLoader$Builder) {
                    ThreadPoolExecutor threadPoolExecutor2 = threadPoolExecutor;
                    try {
                        UtilsKt.this.onLoaded(imageLoader$Builder);
                    } finally {
                        threadPoolExecutor2.shutdown();
                    }
                }
            });
        } catch (Throwable th) {
            utilsKt.onFailed(th);
            threadPoolExecutor.shutdown();
        }
    }

    private final void run$androidx$work$impl$WorkLauncherImpl$$ExternalSyntheticLambda0() {
        AndroidSvg androidSvg = (AndroidSvg) this.f$0;
        StartStopToken startStopToken = (StartStopToken) this.f$1;
        final Processor processor = (Processor) androidSvg.svg;
        processor.getClass();
        WorkGenerationalId workGenerationalId = startStopToken.id;
        final String str = workGenerationalId.workSpecId;
        final ArrayList arrayList = new ArrayList();
        WorkSpec workSpec = (WorkSpec) processor.mWorkDatabase.runInTransaction(new Worker$$ExternalSyntheticLambda0(5, new Callable() { // from class: androidx.work.impl.Processor$$ExternalSyntheticLambda0
            @Override // java.util.concurrent.Callable
            public final Object call() {
                WorkDatabase workDatabase = Processor.this.mWorkDatabase;
                WorkTagDao_Impl workTagDao = workDatabase.workTagDao();
                workTagDao.getClass();
                String str2 = str;
                str2.getClass();
                arrayList.addAll((List) ExceptionsKt.performBlocking(workTagDao.__db, true, false, new StringsKt__IndentKt$$ExternalSyntheticLambda0(23, str2)));
                return workDatabase.workSpecDao().getWorkSpec(str2);
            }
        }));
        int i = 0;
        if (workSpec == null) {
            Logger$LogcatLogger.get().warning(Processor.TAG, "Didn't find WorkSpec for id " + workGenerationalId);
            processor.mWorkTaskExecutor.mMainThreadExecutor.execute(new Processor$$ExternalSyntheticLambda2(i, processor, workGenerationalId));
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
                        processor.mWorkTaskExecutor.mMainThreadExecutor.execute(new Processor$$ExternalSyntheticLambda2(i, processor, workGenerationalId));
                    }
                    return;
                }
                if (workSpec.generation != workGenerationalId.generation) {
                    processor.mWorkTaskExecutor.mMainThreadExecutor.execute(new Processor$$ExternalSyntheticLambda2(i, processor, workGenerationalId));
                    return;
                }
                WorkerWrapper workerWrapper = new WorkerWrapper(new GsonBuilder(processor.mAppContext, processor.mConfiguration, processor.mWorkTaskExecutor, processor, processor.mWorkDatabase, workSpec, arrayList));
                CoroutineDispatcher coroutineDispatcher = workerWrapper.workTaskExecutor.mTaskDispatcher;
                JobImpl Job$default = AwaitKt.Job$default();
                coroutineDispatcher.getClass();
                CallbackToFutureAdapter$SafeFuture launchFuture$default = DpKt.launchFuture$default(OperationKt.plus(coroutineDispatcher, Job$default), new WorkerWrapper$launch$1(workerWrapper, null, i));
                launchFuture$default.delegate.addListener(new Processor$$ExternalSyntheticLambda1(processor, launchFuture$default, workerWrapper, i), processor.mWorkTaskExecutor.mMainThreadExecutor);
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
        int makeMeasureSpec;
        Pair pair;
        Pair pair2;
        PageTitle pageTitle;
        PageFragment.Callback callback;
        boolean z = true;
        switch (this.$r8$classId) {
            case 0:
                Processor processor = (Processor) this.f$0;
                CallbackToFutureAdapter$SafeFuture callbackToFutureAdapter$SafeFuture = (CallbackToFutureAdapter$SafeFuture) this.f$1;
                WorkerWrapper workerWrapper = (WorkerWrapper) this.f$2;
                processor.getClass();
                try {
                    z = ((Boolean) callbackToFutureAdapter$SafeFuture.delegate.get()).booleanValue();
                } catch (InterruptedException | ExecutionException unused) {
                }
                synchronized (processor.mLock) {
                    try {
                        WorkGenerationalId generationalId = ResultKt.generationalId(workerWrapper.workSpec);
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
                return;
            case 1:
                AndroidTextContextMenuToolbarProvider androidTextContextMenuToolbarProvider = (AndroidTextContextMenuToolbarProvider) this.f$0;
                AndroidTextContextMenuToolbarProvider.TextActionModeCallbackImpl textActionModeCallbackImpl = (AndroidTextContextMenuToolbarProvider.TextActionModeCallbackImpl) this.f$1;
                AndroidTextContextMenuToolbarProvider.TextContextMenuSessionImpl textContextMenuSessionImpl = (AndroidTextContextMenuToolbarProvider.TextContextMenuSessionImpl) this.f$2;
                ActionMode startActionMode = androidTextContextMenuToolbarProvider.view.startActionMode(new FloatingTextActionModeCallback(textActionModeCallbackImpl), 1);
                Intrinsics.areEqual(androidTextContextMenuToolbarProvider.actionMode, startActionMode);
                if (startActionMode == null) {
                    textContextMenuSessionImpl.close();
                    return;
                }
                return;
            case 2:
                run$androidx$emoji2$text$EmojiCompatInitializer$BackgroundDefaultLoader$$ExternalSyntheticLambda0();
                return;
            case 3:
                ViewGroup viewGroup = (ViewGroup) this.f$0;
                View view = (View) this.f$1;
                DefaultSpecialEffectsController.AnimationEffect animationEffect = (DefaultSpecialEffectsController.AnimationEffect) this.f$2;
                viewGroup.getClass();
                viewGroup.endViewTransition(view);
                ((SpecialEffectsController$FragmentStateManagerOperation) animationEffect.animationInfo.fragment).completeEffect(animationEffect);
                return;
            case 4:
                run$androidx$work$impl$WorkLauncherImpl$$ExternalSyntheticLambda0();
                return;
            case 5:
                WorkDatabase workDatabase = (WorkDatabase) this.f$0;
                String str2 = (String) this.f$1;
                WorkManagerImpl workManagerImpl = (WorkManagerImpl) this.f$2;
                WorkSpecDao_Impl workSpecDao = workDatabase.workSpecDao();
                workSpecDao.getClass();
                str2.getClass();
                Iterator it2 = ((List) ExceptionsKt.performBlocking(workSpecDao.__db, true, false, new StringsKt__IndentKt$$ExternalSyntheticLambda0(15, str2))).iterator();
                while (it2.hasNext()) {
                    EnqueueUtilsKt.cancel(workManagerImpl, (String) it2.next());
                }
                return;
            case 6:
                Balloon balloon = (Balloon) this.f$0;
                GsonBuilder gsonBuilder = balloon.binding;
                View view2 = (View) this.f$1;
                ImageView imageView = (ImageView) this.f$2;
                BalloonKt$sam$com_skydoves_balloon_OnBalloonInitializedListener$0 balloonKt$sam$com_skydoves_balloon_OnBalloonInitializedListener$0 = balloon.onBalloonInitializedListener;
                Balloon.Builder builder = balloon.builder;
                if (balloonKt$sam$com_skydoves_balloon_OnBalloonInitializedListener$0 != null) {
                    balloonKt$sam$com_skydoves_balloon_OnBalloonInitializedListener$0.function.invoke((RadiusLayout) gsonBuilder.instanceCreators);
                }
                if (builder.arrowOrientationRules != ArrowOrientationRules.ALIGN_FIXED) {
                    Rect rect = new Rect();
                    view2.getGlobalVisibleRect(rect);
                    int[] iArr = {0, 0};
                    balloon.bodyWindow.getContentView().getLocationOnScreen(iArr);
                    ArrowOrientation arrowOrientation = builder.arrowOrientation;
                    ArrowOrientation arrowOrientation2 = ArrowOrientation.TOP;
                    if (arrowOrientation == arrowOrientation2 && iArr[1] < rect.bottom) {
                        arrowOrientation = ArrowOrientation.BOTTOM;
                        arrowOrientation.getClass();
                        builder.arrowOrientation = arrowOrientation;
                    } else if (arrowOrientation == ArrowOrientation.BOTTOM && iArr[1] > rect.top) {
                        arrowOrientation2.getClass();
                        builder.arrowOrientation = arrowOrientation2;
                        arrowOrientation = arrowOrientation2;
                    }
                    ArrowOrientation arrowOrientation3 = ArrowOrientation.START;
                    if (arrowOrientation == arrowOrientation3 && iArr[0] < rect.right) {
                        ArrowOrientation arrowOrientation4 = ArrowOrientation.END;
                        arrowOrientation4.getClass();
                        builder.arrowOrientation = arrowOrientation4;
                    } else if (arrowOrientation == ArrowOrientation.END && iArr[0] > rect.left) {
                        arrowOrientation3.getClass();
                        builder.arrowOrientation = arrowOrientation3;
                    }
                    balloon.initializeBalloonContent();
                }
                ImageView imageView2 = (ImageView) gsonBuilder.fieldNamingPolicy;
                RadiusLayout radiusLayout = (RadiusLayout) gsonBuilder.instanceCreators;
                ArrowOrientation.Companion companion = ArrowOrientation.Companion;
                ArrowOrientation arrowOrientation5 = builder.arrowOrientation;
                boolean z2 = builder.isRtlLayout;
                companion.getClass();
                arrowOrientation5.getClass();
                if (z2) {
                    int i = ArrowOrientation.Companion.WhenMappings.$EnumSwitchMapping$0[arrowOrientation5.ordinal()];
                    if (i == 1) {
                        arrowOrientation5 = ArrowOrientation.END;
                    } else if (i == 2) {
                        arrowOrientation5 = ArrowOrientation.START;
                    }
                }
                int i2 = Balloon.WhenMappings.$EnumSwitchMapping$0[arrowOrientation5.ordinal()];
                if (i2 == 1) {
                    imageView2.setRotation(180.0f);
                    imageView2.setX(balloon.getArrowConstraintPositionX(view2));
                    imageView2.setY((radiusLayout.getY() + radiusLayout.getHeight()) - 1.0f);
                    WeakHashMap weakHashMap = ViewCompat.sViewPropertyAnimatorMap;
                    imageView2.setElevation(RecyclerView.DECELERATION_RATE);
                    imageView2.getX();
                    radiusLayout.getHeight();
                    imageView2.setForeground(null);
                } else if (i2 == 2) {
                    imageView2.setRotation(RecyclerView.DECELERATION_RATE);
                    imageView2.setX(balloon.getArrowConstraintPositionX(view2));
                    imageView2.setY((radiusLayout.getY() - builder.getEffectiveArrowHeight()) + 1.0f);
                    imageView2.getX();
                    imageView2.setForeground(null);
                } else if (i2 == 3) {
                    imageView2.setRotation(-90.0f);
                    imageView2.setX((radiusLayout.getX() - builder.getEffectiveArrowWidth()) + 1.0f);
                    imageView2.setY(balloon.getArrowConstraintPositionY(view2));
                    imageView2.getY();
                    imageView2.setForeground(null);
                } else {
                    if (i2 != 4) {
                        ContextsKt$$ExternalSyntheticBUOutline0.m();
                        return;
                    }
                    imageView2.setRotation(90.0f);
                    imageView2.setX((radiusLayout.getX() + radiusLayout.getWidth()) - 1.0f);
                    imageView2.setY(balloon.getArrowConstraintPositionY(view2));
                    radiusLayout.getWidth();
                    imageView2.getY();
                    imageView2.setForeground(null);
                }
                imageView.setVisibility(0);
                return;
            case 7:
                Balloon balloon2 = (Balloon) this.f$0;
                View view3 = (View) this.f$1;
                BalloonPlacement balloonPlacement = (BalloonPlacement) this.f$2;
                boolean canShowBalloonWindow = balloon2.canShowBalloonWindow(view3);
                PopupWindow popupWindow = balloon2.bodyWindow;
                GsonBuilder gsonBuilder2 = balloon2.binding;
                Balloon.Builder builder2 = balloon2.builder;
                if ((canShowBalloonWindow ? Boolean.valueOf(canShowBalloonWindow) : null) != null) {
                    int i3 = builder2.supportRtlLayoutFactor;
                    balloon2.isShowing = true;
                    if (builder2.layout != null) {
                        balloon2.traverseAndMeasureTextWidth((RadiusLayout) gsonBuilder2.instanceCreators);
                    } else {
                        balloon2.measureTextWidth((VectorTextView) gsonBuilder2.hierarchyFactories, (RadiusLayout) gsonBuilder2.instanceCreators);
                    }
                    int i4 = new Point(Resources.getSystem().getDisplayMetrics().widthPixels, Resources.getSystem().getDisplayMetrics().heightPixels).x;
                    int i5 = builder2.width;
                    if (i5 != Integer.MIN_VALUE) {
                        if (i5 <= i4) {
                            i4 = i5;
                        }
                        makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(i4, 1073741824);
                    } else {
                        int i6 = builder2.maxWidth;
                        if (i6 <= i4) {
                            i4 = i6;
                        }
                        makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(i4, Integer.MIN_VALUE);
                    }
                    int i7 = new Point(Resources.getSystem().getDisplayMetrics().widthPixels, Resources.getSystem().getDisplayMetrics().heightPixels).y;
                    int i8 = builder2.height;
                    ((FrameLayout) gsonBuilder2.excluder).measure(makeMeasureSpec, i8 != Integer.MIN_VALUE ? View.MeasureSpec.makeMeasureSpec(i8, 1073741824) : View.MeasureSpec.makeMeasureSpec(i7, Integer.MIN_VALUE));
                    popupWindow.setWidth(balloon2.getMeasuredWidth());
                    popupWindow.setHeight(balloon2.getMeasuredHeight());
                    ((VectorTextView) gsonBuilder2.hierarchyFactories).setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
                    ImageView imageView3 = (ImageView) gsonBuilder2.fieldNamingPolicy;
                    imageView3.setLayoutParams(new FrameLayout.LayoutParams(builder2.getEffectiveArrowWidth(), builder2.getEffectiveArrowHeight()));
                    imageView3.setAlpha(1.0f);
                    Drawable drawable = builder2.arrowDrawable;
                    if (drawable != null) {
                        imageView3.setImageDrawable(drawable);
                    }
                    imageView3.setPadding(0, 0, 0, 0);
                    imageView3.setImageTintList(ColorStateList.valueOf(builder2.backgroundColor));
                    imageView3.setOutlineProvider(ViewOutlineProvider.BOUNDS);
                    ((RadiusLayout) gsonBuilder2.instanceCreators).post(new Processor$$ExternalSyntheticLambda1(balloon2, view3, imageView3, 6));
                    balloon2.initializeBalloonContent();
                    PopupWindow popupWindow2 = balloon2.overlayWindow;
                    if (Balloon.WhenMappings.$EnumSwitchMapping$3[builder2.balloonOverlayAnimation.ordinal()] == 1) {
                        popupWindow2.setAnimationStyle(R.style.Balloon_Fade_Anim);
                    } else {
                        popupWindow2.setAnimationStyle(R.style.Balloon_Normal_Anim);
                    }
                    int i9 = Balloon.WhenMappings.$EnumSwitchMapping$2[builder2.balloonAnimation.ordinal()];
                    if (i9 == 1) {
                        popupWindow.setAnimationStyle(R.style.Balloon_Elastic_Anim);
                    } else if (i9 == 2) {
                        View contentView = popupWindow.getContentView();
                        contentView.getClass();
                        contentView.setVisibility(4);
                        contentView.post(new ViewUtils$$ExternalSyntheticLambda0(contentView, 2));
                        popupWindow.setAnimationStyle(R.style.Balloon_Normal_Dispose_Anim);
                    } else if (i9 == 3) {
                        popupWindow.setAnimationStyle(R.style.Balloon_Fade_Anim);
                    } else if (i9 == 4) {
                        popupWindow.setAnimationStyle(R.style.Balloon_Overshoot_Anim);
                    } else {
                        if (i9 != 5) {
                            ContextsKt$$ExternalSyntheticBUOutline0.m();
                            return;
                        }
                        popupWindow.setAnimationStyle(R.style.Balloon_None_Anim);
                    }
                    ((FrameLayout) gsonBuilder2.longSerializationPolicy).post(new Balloon$$ExternalSyntheticLambda9(balloon2, r7));
                    PlacementType placementType = balloonPlacement.type;
                    BalloonAlign balloonAlign = balloonPlacement.align;
                    View view4 = balloonPlacement.anchor;
                    int i10 = balloonPlacement.yOff;
                    int i11 = Balloon.WhenMappings.$EnumSwitchMapping$5[placementType.ordinal()];
                    if (i11 == 1) {
                        pair = new Pair(0, Integer.valueOf(i10));
                    } else if (i11 == 2) {
                        int roundToInt = UnsignedKt.roundToInt(view4.getMeasuredWidth() * 0.5f);
                        int roundToInt2 = UnsignedKt.roundToInt(view4.getMeasuredHeight() * 0.5f);
                        int roundToInt3 = UnsignedKt.roundToInt(balloon2.getMeasuredWidth() * 0.5f);
                        int roundToInt4 = UnsignedKt.roundToInt(balloon2.getMeasuredHeight() * 0.5f);
                        int i12 = Balloon.WhenMappings.$EnumSwitchMapping$6[balloonAlign.ordinal()];
                        if (i12 == 1) {
                            pair2 = new Pair(Integer.valueOf((roundToInt - roundToInt3) * i3), Integer.valueOf((-(view4.getMeasuredHeight() + balloon2.getMeasuredHeight())) + i10));
                            pair = pair2;
                        } else if (i12 == 2) {
                            pair = new Pair(Integer.valueOf((roundToInt - roundToInt3) * i3), Integer.valueOf(i10));
                        } else if (i12 == 3) {
                            pair = new Pair(Integer.valueOf((-balloon2.getMeasuredWidth()) * i3), Integer.valueOf((-(roundToInt4 + roundToInt2)) + i10));
                        } else {
                            if (i12 != 4) {
                                ContextsKt$$ExternalSyntheticBUOutline0.m();
                                return;
                            }
                            pair = new Pair(Integer.valueOf(view4.getMeasuredWidth() * i3), Integer.valueOf((-(roundToInt4 + roundToInt2)) + i10));
                        }
                    } else {
                        if (i11 != 3) {
                            ContextsKt$$ExternalSyntheticBUOutline0.m();
                            return;
                        }
                        int roundToInt5 = UnsignedKt.roundToInt(view4.getMeasuredWidth() * 0.5f);
                        int roundToInt6 = UnsignedKt.roundToInt(view4.getMeasuredHeight() * 0.5f);
                        int roundToInt7 = UnsignedKt.roundToInt(balloon2.getMeasuredWidth() * 0.5f);
                        int roundToInt8 = UnsignedKt.roundToInt(balloon2.getMeasuredHeight() * 0.5f);
                        int i13 = Balloon.WhenMappings.$EnumSwitchMapping$6[balloonAlign.ordinal()];
                        if (i13 == 1) {
                            pair2 = new Pair(Integer.valueOf((roundToInt5 - roundToInt7) * i3), Integer.valueOf((-(balloon2.getMeasuredHeight() + roundToInt6)) + i10));
                            pair = pair2;
                        } else if (i13 == 2) {
                            pair = new Pair(Integer.valueOf((roundToInt5 - roundToInt7) * i3), Integer.valueOf((-roundToInt6) + i10));
                        } else if (i13 == 3) {
                            pair = new Pair(Integer.valueOf((roundToInt5 - balloon2.getMeasuredWidth()) * i3), Integer.valueOf(((-roundToInt8) - roundToInt6) + i10));
                        } else {
                            if (i13 != 4) {
                                ContextsKt$$ExternalSyntheticBUOutline0.m();
                                return;
                            }
                            pair = new Pair(Integer.valueOf(roundToInt5 * i3), Integer.valueOf(((-roundToInt8) - roundToInt6) + i10));
                        }
                    }
                    popupWindow.showAsDropDown(view3, ((Number) pair.first).intValue() + ((int) view3.getTranslationX()), ((Number) pair.second).intValue() + ((int) view3.getTranslationY()));
                    return;
                }
                return;
            case 8:
                EditPreviewFragment editPreviewFragment = (EditPreviewFragment) this.f$0;
                EditPreviewFragment.EditLinkHandler editLinkHandler = (EditPreviewFragment.EditLinkHandler) this.f$1;
                PageTitle pageTitle2 = (PageTitle) this.f$2;
                int i14 = PageActivity.$r8$clinit;
                editPreviewFragment.startActivity(LoginClient.newIntentForCurrentTab(editLinkHandler.context, new HistoryEntry(2, pageTitle2), pageTitle2, true), null);
                return;
            case 9:
                PageFragment pageFragment = (PageFragment) this.f$0;
                String str3 = (String) this.f$1;
                Ref$ObjectRef ref$ObjectRef = (Ref$ObjectRef) this.f$2;
                int i15 = PageFragment.REFRESH_SPINNER_ADDITIONAL_OFFSET;
                if (!pageFragment.isAdded() || (pageTitle = (PageTitle) pageFragment.model.title) == null || (callback = pageFragment.callback()) == null) {
                    return;
                }
                ((PageActivity) callback).onPageRequestGallery(pageTitle, str3, pageTitle.wikiSite, pageFragment.revision, false, (ActivityOptionsCompat$ActivityOptionsCompatImpl) ref$ObjectRef.element);
                return;
            case 10:
                ReferenceDialog referenceDialog = (ReferenceDialog) this.f$0;
                String str4 = ((PageReferences.Reference) this.f$1).html;
                DefaultSocket defaultSocket = ((ReferenceDialog.ViewHolder) this.f$2).binding;
                String str5 = "";
                if (referenceDialog.isAdded()) {
                    StringUtil stringUtil = StringUtil.INSTANCE;
                    String removeStyleTags = StringUtil.removeStyleTags(str4);
                    Pattern compile = Pattern.compile("<cite.*?>");
                    compile.getClass();
                    String replaceAll = compile.matcher(removeStyleTags).replaceAll("");
                    replaceAll.getClass();
                    Pattern compile2 = Pattern.compile("</cite>");
                    compile2.getClass();
                    String replaceAll2 = compile2.matcher(replaceAll).replaceAll("");
                    replaceAll2.getClass();
                    Spanned fromHtml = StringUtil.fromHtml(replaceAll2);
                    if (fromHtml.length() != 0) {
                        ((AppCompatImageView) defaultSocket.closeBits).setVisibility(8);
                        ((AppTextView) defaultSocket.sink).setText(fromHtml);
                        return;
                    }
                    Document parse = Jsoup.parse(str4);
                    parse.getClass();
                    Elements select = Cache.Companion.select("a[href]", parse);
                    select.getClass();
                    ArrayList arrayList = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(select, 10));
                    Iterator it3 = select.iterator();
                    while (it3.hasNext()) {
                        arrayList.add(((Element) it3.next()).attr("href"));
                    }
                    int size = arrayList.size();
                    int i16 = 0;
                    while (i16 < size) {
                        Object obj = arrayList.get(i16);
                        i16++;
                        str5 = str5 + "<a href='" + obj + "'>[" + i16 + "]</a>";
                    }
                    AppTextView appTextView = (AppTextView) defaultSocket.sink;
                    StringUtil stringUtil2 = StringUtil.INSTANCE;
                    appTextView.setText(StringUtil.fromHtml(str5));
                    ((AppCompatImageView) defaultSocket.closeBits).setVisibility(str5.length() <= 0 ? 8 : 0);
                    return;
                }
                return;
            case 11:
                OkHttpCall.AnonymousClass1 anonymousClass1 = (OkHttpCall.AnonymousClass1) this.f$0;
                Callback callback2 = (Callback) this.f$1;
                Response response = (Response) this.f$2;
                DefaultCallAdapterFactory.ExecutorCallbackCall executorCallbackCall = (DefaultCallAdapterFactory.ExecutorCallbackCall) anonymousClass1.this$0;
                if (executorCallbackCall.delegate.isCanceled()) {
                    callback2.onFailure(executorCallbackCall, new IOException("Canceled"));
                    return;
                } else {
                    callback2.onResponse(executorCallbackCall, response);
                    return;
                }
            default:
                ((Callback) this.f$1).onFailure((DefaultCallAdapterFactory.ExecutorCallbackCall) ((OkHttpCall.AnonymousClass1) this.f$0).this$0, (Throwable) this.f$2);
                return;
        }
    }
}
