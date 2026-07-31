package net.newpipe.app;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ArgbEvaluator;
import android.animation.ValueAnimator;
import android.app.AppOpsManager;
import android.content.Context;
import android.os.Binder;
import android.os.Build;
import android.os.Process;
import android.view.View;
import android.view.Window;
import android.widget.LinearLayout;
import android.widget.Toast;
import androidx.appcompat.app.AppCompatActivity;
import androidx.cardview.widget.CardView;
import androidx.compose.animation.SplineBasedFloatDecayAnimationSpec_androidKt;
import androidx.compose.animation.core.ArcSplineKt;
import androidx.compose.animation.core.DecayAnimationSpecImpl;
import androidx.compose.animation.core.SpringSpec;
import androidx.compose.animation.core.VisibilityThresholdsKt;
import androidx.compose.foundation.AndroidEdgeEffectOverscrollEffect;
import androidx.compose.foundation.IndicationKt$$ExternalSyntheticLambda0;
import androidx.compose.foundation.OverscrollKt;
import androidx.compose.foundation.gestures.snapping.SnapFlingBehavior;
import androidx.compose.foundation.gestures.snapping.SnapPosition$Start;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.foundation.layout.PaddingValuesImpl;
import androidx.compose.foundation.pager.DefaultPagerNestedScrollConnection;
import androidx.compose.foundation.pager.DefaultPagerState;
import androidx.compose.foundation.pager.PageSize$Fill;
import androidx.compose.foundation.pager.PagerSnapDistanceMaxPages;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.internal.Expect_jvmKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draganddrop.DragAndDropEvent;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.input.nestedscroll.NestedScrollConnection;
import androidx.compose.ui.input.pointer.PointerInputChange;
import androidx.compose.ui.node.LayoutNode$$ExternalSyntheticBUOutline0;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.text.SaversKt$$ExternalSyntheticLambda3;
import androidx.compose.ui.unit.ConstraintsKt;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.LayoutDirection;
import androidx.core.app.ServiceCompat$Api29Impl;
import androidx.core.os.BuildCompat;
import androidx.emoji2.text.flatbuffer.MetadataList;
import androidx.interpolator.view.animation.FastOutSlowInInterpolator;
import androidx.lifecycle.ViewModel;
import androidx.preference.PreferenceManager;
import androidx.room.Room;
import androidx.room.RoomDatabase;
import androidx.room.RoomDatabaseKt__RoomDatabase_androidKt$withTransactionContext$transactionBlock$1;
import androidx.room.RoomExternalOperationElement;
import androidx.room.TransactionElement;
import androidx.room.TransactionExecutor;
import androidx.sqlite.SQLite;
import androidx.transition.Transition;
import androidx.work.Data$$ExternalSyntheticLambda0;
import coil3.decode.DecodeUtils$$ExternalSyntheticBUOutline0;
import coil3.decode.FileImageSource;
import coil3.disk.RealDiskCache;
import com.google.android.exoplayer2.RendererCapabilities;
import com.google.android.exoplayer2.audio.WavUtil;
import com.google.android.exoplayer2.util.Log;
import com.google.common.collect.CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0;
import com.livefront.bridge.BridgeDelegate;
import com.russhwolf.settings.SharedPreferencesSettings;
import j$.util.Objects;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.MappedByteBuffer;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.concurrent.RejectedExecutionException;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.ClassReference;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.text.UStringsKt;
import kotlinx.coroutines.CancellableContinuationImpl;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.JobKt;
import kotlinx.serialization.json.Json;
import net.newpipe.app.AppKt;
import net.newpipe.app.navigation.Destination;
import net.newpipe.app.navigation.NavModuleKt$$ExternalSyntheticLambda1;
import net.newpipe.app.screen.about.AboutPageKt$$ExternalSyntheticLambda3;
import net.newpipe.app.viewmodel.about.AboutViewModel;
import net.newpipe.app.viewmodel.settings.SettingsViewModel;
import okhttp3.ConnectionPool;
import okhttp3.Dispatcher;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;
import okio.FileSystem;
import okio.Path;
import okio.internal.ZipFilesKt$$ExternalSyntheticLambda3;
import org.jsoup.Jsoup;
import org.koin.compose.KoinApplicationKt;
import org.koin.core.definition.Kind;
import org.koin.core.module.Module;
import org.mozilla.javascript.Token;
import org.schabi.newpipe.R;
import org.schabi.newpipe.database.AppDatabase;
import org.schabi.newpipe.database.Migrations;
import org.schabi.newpipe.fragments.list.playlist.PlaylistControlViewHolder;
import org.schabi.newpipe.ktx.AnimationType;
import org.schabi.newpipe.ktx.HideAndExecOnEndListener;
import org.schabi.newpipe.ktx.TextViewUtils$animateTextColor$$inlined$addListener$default$1;
import org.schabi.newpipe.ktx.ViewUtils$$ExternalSyntheticLambda0;
import org.schabi.newpipe.local.feed.FeedFragment$$ExternalSyntheticLambda13;
import org.schabi.newpipe.player.PlayerType;
import org.schabi.newpipe.player.playqueue.PlayQueue;
import org.schabi.newpipe.player.playqueue.PlayQueueItem;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract class AppKt {
    public static volatile AppDatabase databaseInstance;

    public static final void App(Destination destination, Function0 function0, ComposableLambdaImpl composableLambdaImpl, Composer composer, int i) {
        function0.getClass();
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(2097816449);
        int i2 = 2;
        int i3 = (gapComposer.changed(destination) ? 4 : 2) | i | (gapComposer.changedInstance(function0) ? 32 : 16);
        byte b = 0;
        if (gapComposer.shouldExecute(i3 & 1, (i3 & Token.EXPR_VOID) != 146)) {
            Module module = new Module();
            Room.buildSingle$default(module, Reflection.getOrCreateKotlinClass(Json.class), new NavModuleKt$$ExternalSyntheticLambda1(i2, b));
            Module module2 = new Module();
            Room.buildSingle$default(module2, Reflection.getOrCreateKotlinClass(SharedPreferencesSettings.class), new NavModuleKt$$ExternalSyntheticLambda1(3, b));
            ZipFilesKt$$ExternalSyntheticLambda3 zipFilesKt$$ExternalSyntheticLambda3 = new ZipFilesKt$$ExternalSyntheticLambda3(i2);
            Module module3 = new Module();
            zipFilesKt$$ExternalSyntheticLambda3.invoke(module3);
            Module module4 = new Module();
            buildViewModel(module4, Reflection.getOrCreateKotlinClass(AboutViewModel.class), new NavModuleKt$$ExternalSyntheticLambda1(8, b));
            buildViewModel(module4, Reflection.getOrCreateKotlinClass(SettingsViewModel.class), new NavModuleKt$$ExternalSyntheticLambda1(9, b));
            List listOf = Jsoup.listOf((Object[]) new Module[]{module, module2, module3, module4});
            Object rememberedValue = gapComposer.rememberedValue();
            if (rememberedValue == Composer.Companion.Empty) {
                rememberedValue = new Data$$ExternalSyntheticLambda0(28);
                gapComposer.updateRememberedValue(rememberedValue);
            }
            KoinApplicationKt.KoinApplication(new ConnectionPool(new AboutPageKt$$ExternalSyntheticLambda3((Function1) rememberedValue, listOf)), null, Expect_jvmKt.rememberComposableLambda(-844018649, new AppKt$$ExternalSyntheticLambda1(destination, function0, composableLambdaImpl, 0, (byte) 0), gapComposer), gapComposer, RendererCapabilities.MODE_SUPPORT_MASK);
        } else {
            gapComposer.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new AppKt$$ExternalSyntheticLambda1(destination, function0, composableLambdaImpl, i);
        }
    }

    /* renamed from: HorizontalPager--8jOkeI, reason: not valid java name */
    public static final void m698HorizontalPager8jOkeI(final DefaultPagerState defaultPagerState, final Modifier modifier, PaddingValues paddingValues, PageSize$Fill pageSize$Fill, Alignment.Vertical vertical, SnapFlingBehavior snapFlingBehavior, boolean z, NestedScrollConnection nestedScrollConnection, SnapPosition$Start snapPosition$Start, AndroidEdgeEffectOverscrollEffect androidEdgeEffectOverscrollEffect, final ComposableLambdaImpl composableLambdaImpl, Composer composer, final int i) {
        final PaddingValues paddingValues2;
        final PageSize$Fill pageSize$Fill2;
        final Alignment.Vertical vertical2;
        final SnapFlingBehavior snapFlingBehavior2;
        final boolean z2;
        final NestedScrollConnection nestedScrollConnection2;
        final SnapPosition$Start snapPosition$Start2;
        final AndroidEdgeEffectOverscrollEffect androidEdgeEffectOverscrollEffect2;
        Alignment.Vertical vertical3;
        PageSize$Fill pageSize$Fill3;
        NestedScrollConnection nestedScrollConnection3;
        int i2;
        boolean z3;
        AndroidEdgeEffectOverscrollEffect androidEdgeEffectOverscrollEffect3;
        PaddingValues paddingValues3;
        SnapFlingBehavior snapFlingBehavior3;
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(1860873769);
        int i3 = i | (gapComposer.changed(defaultPagerState) ? 4 : 2) | 911961472;
        int i4 = 1;
        if (gapComposer.shouldExecute(i3 & 1, (306783379 & i3) != 306783378)) {
            gapComposer.startDefaults();
            if ((i & 1) == 0 || gapComposer.getDefaultsInvalid()) {
                PaddingValuesImpl paddingValuesImpl = new PaddingValuesImpl(0.0f, 0.0f, 0.0f, 0.0f);
                vertical3 = Alignment.Companion.CenterVertically;
                int i5 = (i3 & 14) | 196608;
                PagerSnapDistanceMaxPages pagerSnapDistanceMaxPages = new PagerSnapDistanceMaxPages();
                DecayAnimationSpecImpl rememberSplineBasedDecay = SplineBasedFloatDecayAnimationSpec_androidKt.rememberSplineBasedDecay(gapComposer);
                LinkedHashMap linkedHashMap = VisibilityThresholdsKt.VisibilityThresholdMap;
                SpringSpec spring$default = ArcSplineKt.spring$default(0.0f, 400.0f, Float.valueOf(1.0f), 1);
                Density density = (Density) gapComposer.consume(CompositionLocalsKt.LocalDensity);
                LayoutDirection layoutDirection = (LayoutDirection) gapComposer.consume(CompositionLocalsKt.LocalLayoutDirection);
                boolean changed = ((((i5 & 14) ^ 6) > 4 && gapComposer.changed(defaultPagerState)) || (i5 & 6) == 4) | gapComposer.changed(rememberSplineBasedDecay) | gapComposer.changed(spring$default) | gapComposer.changed(pagerSnapDistanceMaxPages) | gapComposer.changed(density) | gapComposer.changed(layoutDirection.ordinal());
                Object rememberedValue = gapComposer.rememberedValue();
                Object obj = Composer.Companion.Empty;
                Object obj2 = rememberedValue;
                if (changed || rememberedValue == obj) {
                    Object snapFlingBehavior4 = new SnapFlingBehavior(new CardView.AnonymousClass1(defaultPagerState, new IndicationKt$$ExternalSyntheticLambda0(defaultPagerState, layoutDirection, i4), pagerSnapDistanceMaxPages), rememberSplineBasedDecay, spring$default);
                    gapComposer.updateRememberedValue(snapFlingBehavior4);
                    obj2 = snapFlingBehavior4;
                }
                SnapFlingBehavior snapFlingBehavior5 = (SnapFlingBehavior) obj2;
                int i6 = (-29360129) & i3;
                int i7 = (i3 & 14) | 432;
                boolean z4 = (((i7 & 14) ^ 6) > 4 && gapComposer.changed(defaultPagerState)) || (i7 & 6) == 4;
                Object rememberedValue2 = gapComposer.rememberedValue();
                if (z4 || rememberedValue2 == obj) {
                    rememberedValue2 = new DefaultPagerNestedScrollConnection(defaultPagerState);
                    gapComposer.updateRememberedValue(rememberedValue2);
                }
                AndroidEdgeEffectOverscrollEffect rememberOverscrollEffect = OverscrollKt.rememberOverscrollEffect(gapComposer);
                pageSize$Fill3 = PageSize$Fill.INSTANCE;
                snapPosition$Start2 = SnapPosition$Start.INSTANCE;
                nestedScrollConnection3 = (DefaultPagerNestedScrollConnection) rememberedValue2;
                i2 = i6;
                z3 = true;
                androidEdgeEffectOverscrollEffect3 = rememberOverscrollEffect;
                paddingValues3 = paddingValuesImpl;
                snapFlingBehavior3 = snapFlingBehavior5;
            } else {
                gapComposer.skipToGroupEnd();
                i2 = i3 & (-29360129);
                paddingValues3 = paddingValues;
                pageSize$Fill3 = pageSize$Fill;
                vertical3 = vertical;
                snapFlingBehavior3 = snapFlingBehavior;
                z3 = z;
                nestedScrollConnection3 = nestedScrollConnection;
                snapPosition$Start2 = snapPosition$Start;
                androidEdgeEffectOverscrollEffect3 = androidEdgeEffectOverscrollEffect;
            }
            gapComposer.endDefaults();
            Room.m466PagereLwUrMk(modifier, defaultPagerState, paddingValues3, snapFlingBehavior3, z3, androidEdgeEffectOverscrollEffect3, pageSize$Fill3, nestedScrollConnection3, vertical3, snapPosition$Start2, composableLambdaImpl, gapComposer, ((i2 << 3) & Token.ASSIGN_MOD) | 907570566, 1797510);
            androidEdgeEffectOverscrollEffect2 = androidEdgeEffectOverscrollEffect3;
            vertical2 = vertical3;
            nestedScrollConnection2 = nestedScrollConnection3;
            z2 = z3;
            pageSize$Fill2 = pageSize$Fill3;
            snapFlingBehavior2 = snapFlingBehavior3;
            paddingValues2 = paddingValues3;
        } else {
            gapComposer.skipToGroupEnd();
            paddingValues2 = paddingValues;
            pageSize$Fill2 = pageSize$Fill;
            vertical2 = vertical;
            snapFlingBehavior2 = snapFlingBehavior;
            z2 = z;
            nestedScrollConnection2 = nestedScrollConnection;
            snapPosition$Start2 = snapPosition$Start;
            androidEdgeEffectOverscrollEffect2 = androidEdgeEffectOverscrollEffect;
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new Function2(modifier, paddingValues2, pageSize$Fill2, vertical2, snapFlingBehavior2, z2, nestedScrollConnection2, snapPosition$Start2, androidEdgeEffectOverscrollEffect2, composableLambdaImpl, i) { // from class: androidx.compose.foundation.pager.PagerKt$$ExternalSyntheticLambda0
                public final /* synthetic */ Modifier f$1;
                public final /* synthetic */ NestedScrollConnection f$11;
                public final /* synthetic */ SnapPosition$Start f$12;
                public final /* synthetic */ AndroidEdgeEffectOverscrollEffect f$13;
                public final /* synthetic */ ComposableLambdaImpl f$14;
                public final /* synthetic */ PaddingValues f$2;
                public final /* synthetic */ PageSize$Fill f$3;
                public final /* synthetic */ Alignment.Vertical f$6;
                public final /* synthetic */ SnapFlingBehavior f$7;
                public final /* synthetic */ boolean f$8;

                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj3, Object obj4) {
                    ((Integer) obj4).getClass();
                    int updateChangedFlags = Updater.updateChangedFlags(49);
                    AppKt.m698HorizontalPager8jOkeI(DefaultPagerState.this, this.f$1, this.f$2, this.f$3, this.f$6, this.f$7, this.f$8, this.f$11, this.f$12, this.f$13, this.f$14, (Composer) obj3, updateChangedFlags);
                    return Unit.INSTANCE;
                }
            };
        }
    }

    public static FileImageSource ImageSource$default(Path path, FileSystem fileSystem, String str, RealDiskCache.RealSnapshot realSnapshot, int i) {
        if ((i & 4) != 0) {
            str = null;
        }
        if ((i & 8) != 0) {
            realSnapshot = null;
        }
        return new FileImageSource(path, fileSystem, str, realSnapshot);
    }

    public static final void animate(View view, boolean z, long j, AnimationType animationType, long j2, Runnable runnable) {
        view.getClass();
        animationType.getClass();
        if (view.getVisibility() == 0 && z) {
            view.animate().setListener(null).cancel();
            view.setVisibility(0);
            view.setAlpha(1.0f);
            if (runnable != null) {
                runnable.run();
                return;
            }
            return;
        }
        if ((view.getVisibility() == 8 || view.getVisibility() == 4) && !z) {
            view.animate().setListener(null).cancel();
            view.setVisibility(8);
            view.setAlpha(0.0f);
            if (runnable != null) {
                runnable.run();
                return;
            }
            return;
        }
        view.animate().setListener(null).cancel();
        view.setVisibility(0);
        int ordinal = animationType.ordinal();
        if (ordinal == 0) {
            if (z) {
                view.animate().setInterpolator(new FastOutSlowInInterpolator(0)).alpha(1.0f).setDuration(j).setStartDelay(j2).setListener(new Transition.AnonymousClass3(runnable)).start();
                return;
            } else {
                view.animate().setInterpolator(new FastOutSlowInInterpolator(0)).alpha(0.0f).setDuration(j).setStartDelay(j2).setListener(new HideAndExecOnEndListener(view, runnable)).start();
                return;
            }
        }
        if (ordinal == 1) {
            if (z) {
                view.setScaleX(0.8f);
                view.setScaleY(0.8f);
                view.animate().setInterpolator(new FastOutSlowInInterpolator(0)).alpha(1.0f).scaleX(1.0f).scaleY(1.0f).setDuration(j).setStartDelay(j2).setListener(new Transition.AnonymousClass3(runnable)).start();
                return;
            } else {
                view.setScaleX(1.0f);
                view.setScaleY(1.0f);
                view.animate().setInterpolator(new FastOutSlowInInterpolator(0)).alpha(0.0f).scaleX(0.8f).scaleY(0.8f).setDuration(j).setStartDelay(j2).setListener(new HideAndExecOnEndListener(view, runnable)).start();
                return;
            }
        }
        if (ordinal == 2) {
            if (z) {
                view.setAlpha(0.5f);
                view.setScaleX(0.95f);
                view.setScaleY(0.95f);
                view.animate().setInterpolator(new FastOutSlowInInterpolator(0)).alpha(1.0f).scaleX(1.0f).scaleY(1.0f).setDuration(j).setStartDelay(j2).setListener(new Transition.AnonymousClass3(runnable)).start();
                return;
            }
            view.setAlpha(1.0f);
            view.setScaleX(1.0f);
            view.setScaleY(1.0f);
            view.animate().setInterpolator(new FastOutSlowInInterpolator(0)).alpha(0.0f).scaleX(0.95f).scaleY(0.95f).setDuration(j).setStartDelay(j2).setListener(new HideAndExecOnEndListener(view, runnable)).start();
            return;
        }
        if (ordinal == 3) {
            if (!z) {
                view.animate().setInterpolator(new FastOutSlowInInterpolator(0)).alpha(0.0f).translationY(-view.getHeight()).setDuration(j).setStartDelay(j2).setListener(new HideAndExecOnEndListener(view, runnable)).start();
                return;
            }
            view.setTranslationY(-view.getHeight());
            view.setAlpha(0.0f);
            view.animate().setInterpolator(new FastOutSlowInInterpolator(0)).alpha(1.0f).translationY(0.0f).setDuration(j).setStartDelay(j2).setListener(new Transition.AnonymousClass3(runnable)).start();
            return;
        }
        if (ordinal != 4) {
            DecodeUtils$$ExternalSyntheticBUOutline0.m();
        } else {
            if (!z) {
                view.animate().setInterpolator(new FastOutSlowInInterpolator(0)).alpha(0.0f).translationY((-view.getHeight()) / 2.0f).setDuration(j).setStartDelay(j2).setListener(new HideAndExecOnEndListener(view, runnable)).start();
                return;
            }
            view.setTranslationY((-view.getHeight()) / 2.0f);
            view.setAlpha(0.0f);
            view.animate().setInterpolator(new FastOutSlowInInterpolator(0)).alpha(1.0f).translationY(0.0f).setDuration(j).setStartDelay(j2).setListener(new Transition.AnonymousClass3(runnable)).start();
        }
    }

    public static /* synthetic */ void animate$default(View view, boolean z, long j, AnimationType animationType, long j2, FeedFragment$$ExternalSyntheticLambda13 feedFragment$$ExternalSyntheticLambda13, int i) {
        if ((i & 4) != 0) {
            animationType = AnimationType.ALPHA;
        }
        AnimationType animationType2 = animationType;
        if ((i & 8) != 0) {
            j2 = 0;
        }
        animate(view, z, j, animationType2, j2, (i & 16) != 0 ? null : feedFragment$$ExternalSyntheticLambda13);
    }

    public static final void animateBackgroundColor(View view, long j, int i, int i2) {
        ValueAnimator ofObject = ValueAnimator.ofObject(new ArgbEvaluator(), Integer.valueOf(i), Integer.valueOf(i2));
        ofObject.setInterpolator(new FastOutSlowInInterpolator(0));
        ofObject.setDuration(j);
        ofObject.addUpdateListener(new ViewUtils$$ExternalSyntheticLambda0(view, 0));
        ofObject.addListener(new TextViewUtils$animateTextColor$$inlined$addListener$default$1(i2, i2, view, view));
        ofObject.start();
    }

    public static final void animateHideRecyclerViewAllowingScrolling(View view) {
        view.getClass();
        view.animate().alpha(0.0f).setDuration(200L).start();
    }

    public static final void animateRotation(final int i, final View view) {
        view.getClass();
        view.animate().setListener(null).cancel();
        view.animate().rotation(i).setDuration(300L).setInterpolator(new FastOutSlowInInterpolator(0)).setListener(new AnimatorListenerAdapter() { // from class: org.schabi.newpipe.ktx.ViewUtils$animateRotation$1
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public final void onAnimationCancel(Animator animator) {
                animator.getClass();
                view.setRotation(i);
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public final void onAnimationEnd(Animator animator) {
                animator.getClass();
                view.setRotation(i);
            }
        }).start();
    }

    public static void appendElement(StringBuilder sb, Object obj, Function1 function1) {
        if (function1 != null) {
            sb.append((CharSequence) function1.invoke(obj));
            return;
        }
        if (obj == null ? true : obj instanceof CharSequence) {
            sb.append((CharSequence) obj);
        } else if (obj instanceof Character) {
            sb.append(((Character) obj).charValue());
        } else {
            sb.append((CharSequence) obj.toString());
        }
    }

    public static final void buildViewModel(Module module, ClassReference classReference, Function2 function2) {
        module.getClass();
        Room.bind(Room.createDefinition$default(classReference, function2, Kind.Factory, module, 72), Reflection.getOrCreateKotlinClass(ViewModel.class));
    }

    public static final boolean changedToDownIgnoreConsumed(PointerInputChange pointerInputChange) {
        return !pointerInputChange.previousPressed && pointerInputChange.pressed;
    }

    public static final boolean changedToUp(PointerInputChange pointerInputChange) {
        return (pointerInputChange.isConsumed() || !pointerInputChange.previousPressed || pointerInputChange.pressed) ? false : true;
    }

    public static final boolean changedToUpIgnoreConsumed(PointerInputChange pointerInputChange) {
        return pointerInputChange.previousPressed && !pointerInputChange.pressed;
    }

    public static int checkSelfPermission(Context context, String str) {
        int noteProxyOpNoThrow;
        int myPid = Process.myPid();
        int myUid = Process.myUid();
        String packageName = context.getPackageName();
        if (context.checkPermission(str, myPid, myUid) != -1) {
            String permissionToOp = AppOpsManager.permissionToOp(str);
            if (permissionToOp != null) {
                if (packageName == null) {
                    String[] packagesForUid = context.getPackageManager().getPackagesForUid(myUid);
                    if (packagesForUid != null && packagesForUid.length > 0) {
                        packageName = packagesForUid[0];
                    }
                }
                int myUid2 = Process.myUid();
                String packageName2 = context.getPackageName();
                if (myUid2 != myUid || !Objects.equals(packageName2, packageName)) {
                    noteProxyOpNoThrow = ((AppOpsManager) context.getSystemService(AppOpsManager.class)).noteProxyOpNoThrow(permissionToOp, packageName);
                } else if (Build.VERSION.SDK_INT >= 29) {
                    AppOpsManager appOpsManager = (AppOpsManager) context.getSystemService(AppOpsManager.class);
                    noteProxyOpNoThrow = appOpsManager == null ? 1 : appOpsManager.checkOpNoThrow(permissionToOp, Binder.getCallingUid(), packageName);
                    if (noteProxyOpNoThrow == 0) {
                        noteProxyOpNoThrow = appOpsManager != null ? appOpsManager.checkOpNoThrow(permissionToOp, myUid, ServiceCompat$Api29Impl.getOpPackageName(context)) : 1;
                    }
                } else {
                    noteProxyOpNoThrow = ((AppOpsManager) context.getSystemService(AppOpsManager.class)).noteProxyOpNoThrow(permissionToOp, packageName);
                }
                if (noteProxyOpNoThrow != 0) {
                    return -2;
                }
            }
            return 0;
        }
        return -1;
    }

    public static final Object compatTransactionCoroutineExecute(RoomDatabase roomDatabase, Function1 function1, Continuation continuation) {
        TransactionExecutor transactionExecutor;
        if (roomDatabase.inCompatibilityMode() && roomDatabase.isOpenInternal$room_runtime() && roomDatabase.inTransaction()) {
            return function1.invoke(continuation);
        }
        if (continuation.getContext().get(RoomExternalOperationElement.INSTANCE) == null) {
            return function1.invoke(continuation);
        }
        RoomDatabaseKt__RoomDatabase_androidKt$withTransactionContext$transactionBlock$1 roomDatabaseKt__RoomDatabase_androidKt$withTransactionContext$transactionBlock$1 = new RoomDatabaseKt__RoomDatabase_androidKt$withTransactionContext$transactionBlock$1(null, function1);
        TransactionElement transactionElement = (TransactionElement) continuation.getContext().get(TransactionElement.Key);
        CoroutineDispatcher coroutineDispatcher = transactionElement != null ? transactionElement.transactionDispatcher : null;
        if (coroutineDispatcher != null) {
            return JobKt.withContext(coroutineDispatcher, roomDatabaseKt__RoomDatabase_androidKt$withTransactionContext$transactionBlock$1, continuation);
        }
        CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(1, UStringsKt.intercepted(continuation));
        cancellableContinuationImpl.initCancellability();
        try {
            transactionExecutor = roomDatabase.internalTransactionExecutor;
        } catch (RejectedExecutionException e) {
            cancellableContinuationImpl.cancel(new IllegalStateException("Unable to acquire a thread to perform the database transaction.", e));
        }
        if (transactionExecutor != null) {
            transactionExecutor.execute(new BridgeDelegate.AnonymousClass3(cancellableContinuationImpl, roomDatabase, roomDatabaseKt__RoomDatabase_androidKt$withTransactionContext$transactionBlock$1));
            return cancellableContinuationImpl.getResult();
        }
        Intrinsics.throwUninitializedPropertyAccessException("internalTransactionExecutor");
        throw null;
    }

    public static Object firstNonNull(Object obj, Object obj2) {
        if (obj != null) {
            return obj;
        }
        if (obj2 != null) {
            return obj2;
        }
        CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0.m$1("Both parameters are null");
        return null;
    }

    /* renamed from: fitPrioritizingHeight-Zbe2FdA, reason: not valid java name */
    public static long m699fitPrioritizingHeightZbe2FdA(int i, int i2, int i3, int i4) {
        int i5 = 262142;
        int min = Math.min(i3, 262142);
        int i6 = Log.LOG_LEVEL_OFF;
        int min2 = i4 == Integer.MAX_VALUE ? Integer.MAX_VALUE : Math.min(i4, 262142);
        int i7 = min2 == Integer.MAX_VALUE ? min : min2;
        if (i7 >= 8191) {
            if (i7 < 32767) {
                i5 = WavUtil.TYPE_WAVE_FORMAT_EXTENSIBLE;
            } else if (i7 < 65535) {
                i5 = 32766;
            } else {
                if (i7 >= 262143) {
                    ConstraintsKt.throwInvalidConstraintsSizeException(i7);
                    LayoutNode$$ExternalSyntheticBUOutline0.m322m();
                    return 0L;
                }
                i5 = 8190;
            }
        }
        if (i2 != Integer.MAX_VALUE) {
            i6 = Math.min(i5, i2);
        }
        return ConstraintsKt.Constraints(Math.min(i5, i), i6, min, min2);
    }

    /* renamed from: fitPrioritizingWidth-Zbe2FdA, reason: not valid java name */
    public static long m700fitPrioritizingWidthZbe2FdA(int i, int i2, int i3, int i4) {
        int i5 = 262142;
        int min = Math.min(i, 262142);
        int i6 = Log.LOG_LEVEL_OFF;
        int min2 = i2 == Integer.MAX_VALUE ? Integer.MAX_VALUE : Math.min(i2, 262142);
        int i7 = min2 == Integer.MAX_VALUE ? min : min2;
        if (i7 >= 8191) {
            if (i7 < 32767) {
                i5 = WavUtil.TYPE_WAVE_FORMAT_EXTENSIBLE;
            } else if (i7 < 65535) {
                i5 = 32766;
            } else {
                if (i7 >= 262143) {
                    ConstraintsKt.throwInvalidConstraintsSizeException(i7);
                    LayoutNode$$ExternalSyntheticBUOutline0.m322m();
                    return 0L;
                }
                i5 = 8190;
            }
        }
        if (i4 != Integer.MAX_VALUE) {
            i6 = Math.min(i5, i4);
        }
        return ConstraintsKt.Constraints(min, min2, Math.min(i5, i3), i6);
    }

    public static CoroutineContext.Element get(CoroutineContext.Element element, CoroutineContext.Key key) {
        key.getClass();
        if (Intrinsics.areEqual(element.getKey(), key)) {
            return element;
        }
        return null;
    }

    public static AppDatabase getDatabase(Context context) {
        Context applicationContext = context.getApplicationContext();
        applicationContext.getClass();
        RoomDatabase.Builder databaseBuilder = Room.databaseBuilder(applicationContext, AppDatabase.class, "newpipe.db");
        databaseBuilder.addMigrations(Migrations.MIGRATION_1_2, Migrations.MIGRATION_2_3, Migrations.MIGRATION_3_4, Migrations.MIGRATION_4_5, Migrations.MIGRATION_5_6, Migrations.MIGRATION_6_7, Migrations.MIGRATION_7_8, Migrations.MIGRATION_8_9);
        return (AppDatabase) databaseBuilder.build();
    }

    public static final AppDatabase getInstance(Context context) {
        AppDatabase appDatabase;
        context.getClass();
        AppDatabase appDatabase2 = databaseInstance;
        if (appDatabase2 == null) {
            synchronized (AppKt.class) {
                AppDatabase appDatabase3 = databaseInstance;
                if (appDatabase3 == null) {
                    databaseInstance = getDatabase(context);
                    appDatabase = databaseInstance;
                } else {
                    appDatabase = appDatabase3;
                }
            }
            appDatabase2 = appDatabase;
        }
        appDatabase2.getClass();
        return appDatabase2;
    }

    public static final long getPositionInRoot(DragAndDropEvent dragAndDropEvent) {
        float x = dragAndDropEvent.dragEvent.getX();
        float y = dragAndDropEvent.dragEvent.getY();
        return (Float.floatToRawIntBits(x) << 32) | (Float.floatToRawIntBits(y) & 4294967295L);
    }

    public static final void initPlaylistControlClickListener(final AppCompatActivity appCompatActivity, Dispatcher dispatcher, final PlaylistControlViewHolder playlistControlViewHolder) {
        appCompatActivity.getClass();
        dispatcher.getClass();
        playlistControlViewHolder.getClass();
        LinearLayout linearLayout = (LinearLayout) dispatcher.readyAsyncCalls;
        final int i = 0;
        linearLayout.setOnClickListener(new View.OnClickListener() { // from class: org.schabi.newpipe.util.PlayButtonHelper$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                int i2 = i;
                AppCompatActivity appCompatActivity2 = appCompatActivity;
                PlaylistControlViewHolder playlistControlViewHolder2 = playlistControlViewHolder;
                switch (i2) {
                    case 0:
                        PlayQueue playQueue = playlistControlViewHolder2.getPlayQueue();
                        PlayQueueItem item = playQueue.getItem();
                        AppCompatActivity appCompatActivity3 = appCompatActivity;
                        if (item != null) {
                            SQLite.openVideoDetailFragment(appCompatActivity3, appCompatActivity3.getSupportFragmentManager(), item.getServiceId(), item.getUrl(), item.getTitle(), playQueue, false);
                        }
                        if (AppKt.shouldShowHoldToAppendTip(appCompatActivity3)) {
                            Toast.makeText(appCompatActivity3, R.string.hold_to_append, 0).show();
                            break;
                        }
                        break;
                    case 1:
                        SQLite.playOnPopupPlayer(appCompatActivity2, playlistControlViewHolder2.getPlayQueue(), false);
                        if (AppKt.shouldShowHoldToAppendTip(appCompatActivity2)) {
                            Toast.makeText(appCompatActivity2, R.string.hold_to_append, 0).show();
                            break;
                        }
                        break;
                    default:
                        SQLite.playOnBackgroundPlayer(appCompatActivity2, playlistControlViewHolder2.getPlayQueue(), false);
                        if (AppKt.shouldShowHoldToAppendTip(appCompatActivity2)) {
                            Toast.makeText(appCompatActivity2, R.string.hold_to_append, 0).show();
                            break;
                        }
                        break;
                }
            }
        });
        LinearLayout linearLayout2 = (LinearLayout) dispatcher.runningSyncCalls;
        final int i2 = 1;
        linearLayout2.setOnClickListener(new View.OnClickListener() { // from class: org.schabi.newpipe.util.PlayButtonHelper$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                int i22 = i2;
                AppCompatActivity appCompatActivity2 = appCompatActivity;
                PlaylistControlViewHolder playlistControlViewHolder2 = playlistControlViewHolder;
                switch (i22) {
                    case 0:
                        PlayQueue playQueue = playlistControlViewHolder2.getPlayQueue();
                        PlayQueueItem item = playQueue.getItem();
                        AppCompatActivity appCompatActivity3 = appCompatActivity;
                        if (item != null) {
                            SQLite.openVideoDetailFragment(appCompatActivity3, appCompatActivity3.getSupportFragmentManager(), item.getServiceId(), item.getUrl(), item.getTitle(), playQueue, false);
                        }
                        if (AppKt.shouldShowHoldToAppendTip(appCompatActivity3)) {
                            Toast.makeText(appCompatActivity3, R.string.hold_to_append, 0).show();
                            break;
                        }
                        break;
                    case 1:
                        SQLite.playOnPopupPlayer(appCompatActivity2, playlistControlViewHolder2.getPlayQueue(), false);
                        if (AppKt.shouldShowHoldToAppendTip(appCompatActivity2)) {
                            Toast.makeText(appCompatActivity2, R.string.hold_to_append, 0).show();
                            break;
                        }
                        break;
                    default:
                        SQLite.playOnBackgroundPlayer(appCompatActivity2, playlistControlViewHolder2.getPlayQueue(), false);
                        if (AppKt.shouldShowHoldToAppendTip(appCompatActivity2)) {
                            Toast.makeText(appCompatActivity2, R.string.hold_to_append, 0).show();
                            break;
                        }
                        break;
                }
            }
        });
        LinearLayout linearLayout3 = (LinearLayout) dispatcher.runningAsyncCalls;
        final int i3 = 2;
        linearLayout3.setOnClickListener(new View.OnClickListener() { // from class: org.schabi.newpipe.util.PlayButtonHelper$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                int i22 = i3;
                AppCompatActivity appCompatActivity2 = appCompatActivity;
                PlaylistControlViewHolder playlistControlViewHolder2 = playlistControlViewHolder;
                switch (i22) {
                    case 0:
                        PlayQueue playQueue = playlistControlViewHolder2.getPlayQueue();
                        PlayQueueItem item = playQueue.getItem();
                        AppCompatActivity appCompatActivity3 = appCompatActivity;
                        if (item != null) {
                            SQLite.openVideoDetailFragment(appCompatActivity3, appCompatActivity3.getSupportFragmentManager(), item.getServiceId(), item.getUrl(), item.getTitle(), playQueue, false);
                        }
                        if (AppKt.shouldShowHoldToAppendTip(appCompatActivity3)) {
                            Toast.makeText(appCompatActivity3, R.string.hold_to_append, 0).show();
                            break;
                        }
                        break;
                    case 1:
                        SQLite.playOnPopupPlayer(appCompatActivity2, playlistControlViewHolder2.getPlayQueue(), false);
                        if (AppKt.shouldShowHoldToAppendTip(appCompatActivity2)) {
                            Toast.makeText(appCompatActivity2, R.string.hold_to_append, 0).show();
                            break;
                        }
                        break;
                    default:
                        SQLite.playOnBackgroundPlayer(appCompatActivity2, playlistControlViewHolder2.getPlayQueue(), false);
                        if (AppKt.shouldShowHoldToAppendTip(appCompatActivity2)) {
                            Toast.makeText(appCompatActivity2, R.string.hold_to_append, 0).show();
                            break;
                        }
                        break;
                }
            }
        });
        linearLayout.setOnLongClickListener(new View.OnLongClickListener() { // from class: org.schabi.newpipe.util.PlayButtonHelper$$ExternalSyntheticLambda3
            @Override // android.view.View.OnLongClickListener
            public final boolean onLongClick(View view) {
                int i4 = i;
                PlaylistControlViewHolder playlistControlViewHolder2 = playlistControlViewHolder;
                AppCompatActivity appCompatActivity2 = appCompatActivity;
                switch (i4) {
                    case 0:
                        SQLite.enqueueOnPlayer(appCompatActivity2, playlistControlViewHolder2.getPlayQueue(), PlayerType.MAIN);
                        break;
                    case 1:
                        SQLite.enqueueOnPlayer(appCompatActivity2, playlistControlViewHolder2.getPlayQueue(), PlayerType.POPUP);
                        break;
                    default:
                        SQLite.enqueueOnPlayer(appCompatActivity2, playlistControlViewHolder2.getPlayQueue(), PlayerType.AUDIO);
                        break;
                }
                return true;
            }
        });
        linearLayout2.setOnLongClickListener(new View.OnLongClickListener() { // from class: org.schabi.newpipe.util.PlayButtonHelper$$ExternalSyntheticLambda3
            @Override // android.view.View.OnLongClickListener
            public final boolean onLongClick(View view) {
                int i4 = i2;
                PlaylistControlViewHolder playlistControlViewHolder2 = playlistControlViewHolder;
                AppCompatActivity appCompatActivity2 = appCompatActivity;
                switch (i4) {
                    case 0:
                        SQLite.enqueueOnPlayer(appCompatActivity2, playlistControlViewHolder2.getPlayQueue(), PlayerType.MAIN);
                        break;
                    case 1:
                        SQLite.enqueueOnPlayer(appCompatActivity2, playlistControlViewHolder2.getPlayQueue(), PlayerType.POPUP);
                        break;
                    default:
                        SQLite.enqueueOnPlayer(appCompatActivity2, playlistControlViewHolder2.getPlayQueue(), PlayerType.AUDIO);
                        break;
                }
                return true;
            }
        });
        linearLayout3.setOnLongClickListener(new View.OnLongClickListener() { // from class: org.schabi.newpipe.util.PlayButtonHelper$$ExternalSyntheticLambda3
            @Override // android.view.View.OnLongClickListener
            public final boolean onLongClick(View view) {
                int i4 = i3;
                PlaylistControlViewHolder playlistControlViewHolder2 = playlistControlViewHolder;
                AppCompatActivity appCompatActivity2 = appCompatActivity;
                switch (i4) {
                    case 0:
                        SQLite.enqueueOnPlayer(appCompatActivity2, playlistControlViewHolder2.getPlayQueue(), PlayerType.MAIN);
                        break;
                    case 1:
                        SQLite.enqueueOnPlayer(appCompatActivity2, playlistControlViewHolder2.getPlayQueue(), PlayerType.POPUP);
                        break;
                    default:
                        SQLite.enqueueOnPlayer(appCompatActivity2, playlistControlViewHolder2.getPlayQueue(), PlayerType.AUDIO);
                        break;
                }
                return true;
            }
        });
    }

    /* renamed from: isOutOfBounds-jwHxaWs, reason: not valid java name */
    public static final boolean m701isOutOfBoundsjwHxaWs(PointerInputChange pointerInputChange, long j, long j2) {
        int i = pointerInputChange.type == 1 ? 1 : 0;
        long j3 = pointerInputChange.position;
        float intBitsToFloat = Float.intBitsToFloat((int) (j3 >> 32));
        float intBitsToFloat2 = Float.intBitsToFloat((int) (j3 & 4294967295L));
        float f = i;
        float intBitsToFloat3 = Float.intBitsToFloat((int) (j2 >> 32)) * f;
        float f2 = ((int) (j >> 32)) + intBitsToFloat3;
        float intBitsToFloat4 = Float.intBitsToFloat((int) (j2 & 4294967295L)) * f;
        return (intBitsToFloat > f2) | (intBitsToFloat < (-intBitsToFloat3)) | (intBitsToFloat2 < (-intBitsToFloat4)) | (intBitsToFloat2 > ((int) (j & 4294967295L)) + intBitsToFloat4);
    }

    public static CoroutineContext minusKey(CoroutineContext.Element element, CoroutineContext.Key key) {
        key.getClass();
        return Intrinsics.areEqual(element.getKey(), key) ? EmptyCoroutineContext.INSTANCE : element;
    }

    public static CoroutineContext plus(CoroutineContext.Element element, CoroutineContext coroutineContext) {
        coroutineContext.getClass();
        return coroutineContext == EmptyCoroutineContext.INSTANCE ? element : (CoroutineContext) coroutineContext.fold(element, new SaversKt$$ExternalSyntheticLambda3(22));
    }

    public static final long positionChangeInternal(PointerInputChange pointerInputChange, boolean z) {
        long m199minusMKHz9U = Offset.m199minusMKHz9U(pointerInputChange.position, pointerInputChange.previousPosition);
        if (z || !pointerInputChange.isConsumed()) {
            return m199minusMKHz9U;
        }
        return 0L;
    }

    public static MetadataList read(MappedByteBuffer mappedByteBuffer) {
        long j;
        ByteBuffer duplicate = mappedByteBuffer.duplicate();
        duplicate.order(ByteOrder.BIG_ENDIAN);
        duplicate.position(duplicate.position() + 4);
        int i = duplicate.getShort() & 65535;
        if (i > 100) {
            _UtilJvmKt$$ExternalSyntheticLambda1.m$3("Cannot read metadata.");
            return null;
        }
        duplicate.position(duplicate.position() + 6);
        int i2 = 0;
        while (true) {
            if (i2 >= i) {
                j = -1;
                break;
            }
            int i3 = duplicate.getInt();
            duplicate.position(duplicate.position() + 4);
            j = duplicate.getInt() & 4294967295L;
            duplicate.position(duplicate.position() + 4);
            if (1835365473 == i3) {
                break;
            }
            i2++;
        }
        if (j != -1) {
            duplicate.position(duplicate.position() + ((int) (j - duplicate.position())));
            duplicate.position(duplicate.position() + 12);
            long j2 = duplicate.getInt() & 4294967295L;
            for (int i4 = 0; i4 < j2; i4++) {
                int i5 = duplicate.getInt();
                long j3 = duplicate.getInt() & 4294967295L;
                duplicate.getInt();
                if (1164798569 == i5 || 1701669481 == i5) {
                    duplicate.position((int) (j3 + j));
                    MetadataList metadataList = new MetadataList();
                    duplicate.order(ByteOrder.LITTLE_ENDIAN);
                    int position = duplicate.position() + duplicate.getInt(duplicate.position());
                    metadataList.bb = duplicate;
                    metadataList.bb_pos = position;
                    int i6 = position - duplicate.getInt(position);
                    metadataList.vtable_start = i6;
                    metadataList.vtable_size = ((ByteBuffer) metadataList.bb).getShort(i6);
                    return metadataList;
                }
            }
        }
        _UtilJvmKt$$ExternalSyntheticLambda1.m$3("Cannot read metadata.");
        return null;
    }

    public static void setDecorFitsSystemWindows(Window window, boolean z) {
        int i = Build.VERSION.SDK_INT;
        if (i >= 35) {
            window.setDecorFitsSystemWindows(z);
        } else {
            if (i >= 30) {
                BuildCompat.Api30Impl.setDecorFitsSystemWindows(window, z);
                return;
            }
            View decorView = window.getDecorView();
            int systemUiVisibility = decorView.getSystemUiVisibility();
            decorView.setSystemUiVisibility(z ? systemUiVisibility & (-1793) : systemUiVisibility | 1792);
        }
    }

    public static final boolean shouldShowHoldToAppendTip(Context context) {
        context.getClass();
        return context.getSharedPreferences(PreferenceManager.getDefaultSharedPreferencesName(context), 0).getBoolean(context.getString(R.string.show_hold_to_append_key), true);
    }

    public static void slideUp$default(View view, long j, long j2, FeedFragment$$ExternalSyntheticLambda13 feedFragment$$ExternalSyntheticLambda13, int i) {
        float f = (i & 4) != 0 ? 1.0f : 0.06f;
        if ((i & 8) != 0) {
            feedFragment$$ExternalSyntheticLambda13 = null;
        }
        view.getClass();
        view.animate().setListener(null).cancel();
        view.setAlpha(0.0f);
        view.setTranslationY((int) (view.getResources().getDisplayMetrics().heightPixels * f));
        view.setVisibility(0);
        view.animate().alpha(1.0f).translationY(0.0f).setStartDelay(j2).setDuration(j).setInterpolator(new FastOutSlowInInterpolator(0)).setListener(new Transition.AnonymousClass3(feedFragment$$ExternalSyntheticLambda13)).start();
    }

    public static void throwIfFatal(Throwable th) {
        if (th instanceof VirtualMachineError) {
            throw ((VirtualMachineError) th);
        }
        if (th instanceof ThreadDeath) {
            throw ((ThreadDeath) th);
        }
        if (th instanceof LinkageError) {
            throw ((LinkageError) th);
        }
    }

    public abstract List clean(String str, List list);

    public static final void animate(View view, boolean z, long j) {
        view.getClass();
        animate$default(view, z, j, null, 0L, null, 28);
    }
}
