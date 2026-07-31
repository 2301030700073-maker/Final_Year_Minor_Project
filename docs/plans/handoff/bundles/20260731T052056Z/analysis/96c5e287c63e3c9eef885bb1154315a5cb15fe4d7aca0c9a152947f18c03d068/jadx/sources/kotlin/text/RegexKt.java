package kotlin.text;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ValueAnimator;
import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.ContextWrapper;
import android.graphics.Matrix;
import android.os.Build;
import android.provider.Settings;
import android.text.TextUtils;
import android.view.View;
import androidx.appcompat.widget.PopupMenu$1;
import androidx.appcompat.widget.TooltipCompat$Api26Impl;
import androidx.appcompat.widget.TooltipCompatHandler;
import androidx.collection.MutableScatterMap;
import androidx.compose.animation.FlingCalculator;
import androidx.compose.animation.core.AnimateAsStateKt;
import androidx.compose.animation.core.Animation;
import androidx.compose.animation.core.AnimationState;
import androidx.compose.foundation.AndroidEdgeEffectOverscrollEffect;
import androidx.compose.foundation.ImageKt;
import androidx.compose.foundation.gestures.DefaultFlingBehavior$performFling$2;
import androidx.compose.foundation.gestures.FlingBehavior;
import androidx.compose.foundation.gestures.Orientation;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.OffsetKt;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.lazy.grid.LazyGridSlots;
import androidx.compose.foundation.lazy.layout.LazyLayoutKt;
import androidx.compose.foundation.lazy.layout.LazyLayoutMeasurePolicy;
import androidx.compose.foundation.lazy.layout.LazyLayoutMeasureScopeImpl;
import androidx.compose.foundation.lazy.layout.LazyLayoutNearestRangeState;
import androidx.compose.foundation.lazy.layout.LazyLayoutSemanticState;
import androidx.compose.foundation.lazy.staggeredgrid.LazyStaggeredGridBeyondBoundsState;
import androidx.compose.foundation.lazy.staggeredgrid.LazyStaggeredGridSemanticsKt$rememberLazyStaggeredGridSemanticState$1$1;
import androidx.compose.foundation.lazy.staggeredgrid.LazyStaggeredGridSlotCache;
import androidx.compose.foundation.lazy.staggeredgrid.LazyStaggeredGridState;
import androidx.compose.foundation.text.TextDelegate;
import androidx.compose.material3.CardKt;
import androidx.compose.material3.TextFieldDefaults$Container$1;
import androidx.compose.material3.internal.FloatProducer;
import androidx.compose.material3.pulltorefresh.PullToRefreshStateImpl;
import androidx.compose.material3.tokens.MotionSchemeKeyTokens;
import androidx.compose.runtime.Composer$Companion;
import androidx.compose.runtime.DerivedSnapshotState;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.NeverEqualPolicy;
import androidx.compose.runtime.ParcelableSnapshotMutableIntState;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.Recomposer$$ExternalSyntheticLambda6;
import androidx.compose.runtime.SnapshotStateKt__DerivedStateKt;
import androidx.compose.runtime.State;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.saveable.SaverKt;
import androidx.compose.runtime.snapshots.Snapshot;
import androidx.compose.runtime.snapshots.SnapshotId_jvmKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.geometry.RoundRect;
import androidx.compose.ui.graphics.AndroidPath;
import androidx.compose.ui.graphics.AndroidPath_androidKt;
import androidx.compose.ui.graphics.GraphicsContext;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import androidx.compose.ui.graphics.drawscope.Stroke;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.RulerKt;
import androidx.compose.ui.layout.SubcomposeMeasureScope;
import androidx.compose.ui.node.LayoutNode$_foldedChildren$1;
import androidx.compose.ui.node.NodeCoordinator;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.scrollcapture.ScrollCapture$onScrollCaptureSearch$1;
import androidx.compose.ui.scrollcapture.ScrollCaptureCandidate;
import androidx.compose.ui.semantics.ClearAndSetSemanticsElement;
import androidx.compose.ui.semantics.CollectionInfo;
import androidx.compose.ui.semantics.ScrollAxisRange;
import androidx.compose.ui.semantics.SemanticsActions;
import androidx.compose.ui.semantics.SemanticsConfiguration;
import androidx.compose.ui.semantics.SemanticsNode;
import androidx.compose.ui.semantics.SemanticsNodeKt;
import androidx.compose.ui.semantics.SemanticsProperties;
import androidx.compose.ui.text.MultiParagraph$$ExternalSyntheticLambda0;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.ConstraintsKt;
import androidx.compose.ui.unit.IntRect;
import androidx.compose.ui.unit.LayoutDirection;
import androidx.concurrent.futures.AbstractResolvableFuture;
import androidx.emoji2.text.flatbuffer.Table;
import androidx.glance.Applier;
import androidx.glance.GlanceModifier;
import androidx.glance.GlanceThemeKt$GlanceTheme$1;
import androidx.glance.layout.Alignment;
import androidx.glance.layout.BoxKt$Box$1;
import androidx.glance.layout.BoxKt$Box$2$1;
import androidx.glance.layout.BoxKt$Box$3;
import androidx.navigation.NavArgument;
import androidx.navigation.NavBackStackEntry$$ExternalSyntheticLambda0;
import androidx.paging.FlowExtKt$simpleScan$1;
import androidx.recyclerview.widget.DiffUtil;
import androidx.recyclerview.widget.RecyclerView;
import androidx.room.Room;
import androidx.room.RoomDatabase$createConnectionManager$2;
import androidx.room.util.ForeignKeyWithSequence;
import androidx.room.util.TableInfo;
import androidx.sqlite.SQLiteConnection;
import androidx.sqlite.SQLiteStatement;
import androidx.work.OperationKt;
import androidx.work.Worker$$ExternalSyntheticLambda1;
import coil3.decode.FileImageSource;
import coil3.decode.SourceImageSource;
import coil3.disk.DiskLruCache$$ExternalSyntheticLambda0;
import coil3.disk.RealDiskCache;
import coil3.util.ContextsKt$$ExternalSyntheticBUOutline0;
import coil3.util.UtilsKt;
import com.airbnb.lottie.AsyncUpdates;
import com.airbnb.lottie.LottieComposition;
import com.airbnb.lottie.LottieDrawable;
import com.airbnb.lottie.RenderMode;
import com.airbnb.lottie.compose.LottieAnimatableImpl;
import com.airbnb.lottie.compose.LottieAnimationSizeElement;
import com.airbnb.lottie.compose.LottieCancellationBehavior;
import com.airbnb.lottie.utils.Utils;
import com.caverock.androidsvg.SVG;
import com.google.gson.Gson$$ExternalSyntheticBUOutline0;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.regex.Matcher;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.CollectionsKt__IteratorsJVMKt;
import kotlin.collections.builders.ListBuilder;
import kotlin.collections.builders.MapBuilder;
import kotlin.collections.builders.MapBuilderValues;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Reflection;
import kotlin.ranges.IntProgression;
import kotlin.ranges.IntRange;
import kotlin.reflect.KProperty0;
import kotlin.reflect.jvm.internal.impl.descriptors.CallableDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.ModuleAwareClassDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.SimpleFunctionDescriptorImpl;
import kotlin.reflect.jvm.internal.impl.resolve.DescriptorUtils;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.ChainedMemberScope;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.LazyScopeAdapter;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.utils.SmartList;
import kotlin.text.RegexKt;
import kotlinx.coroutines.AwaitKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.internal.ContextScope;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.descriptors.ClassSerialDescriptorBuilder;
import kotlinx.serialization.descriptors.PrimitiveKind$INT;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.descriptors.SerialDescriptorImpl;
import kotlinx.serialization.descriptors.StructureKind$MAP;
import kotlinx.serialization.internal.PrimitiveSerialDescriptor;
import kotlinx.serialization.internal.PrimitivesKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import okhttp3.internal.http.StatusLine;
import okio.BufferedSource;
import okio.FileSystem;
import okio.Path;
import org.wikipedia.feed.ForYouCardKt$$ExternalSyntheticLambda2;
import org.wikipedia.games.GamesHubScreenKt$$ExternalSyntheticLambda4;
import org.wikipedia.random.RandomViewModel$loadMore$2;
import org.wikipedia.util.FileUtil;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class RegexKt {
    public static boolean sTryHiddenTransitionAlpha = true;
    public static Field sViewFlagsField;
    public static boolean sViewFlagsFieldFetched;

    public static final void Box(GlanceModifier glanceModifier, Alignment alignment, ComposableLambdaImpl composableLambdaImpl, GapComposer gapComposer, int i, int i2) {
        int i3;
        gapComposer.startRestartGroup(1959221577);
        int i4 = i2 & 1;
        if (i4 != 0) {
            i3 = i | 6;
        } else if ((i & 6) == 0) {
            i3 = (gapComposer.changed(glanceModifier) ? 4 : 2) | i;
        } else {
            i3 = i;
        }
        int i5 = i2 & 2;
        if (i5 != 0) {
            i3 |= 48;
        } else if ((i & 48) == 0) {
            i3 |= gapComposer.changed(alignment) ? 32 : 16;
        }
        if ((i & 384) == 0) {
            i3 |= gapComposer.changed(composableLambdaImpl) ? 256 : 128;
        }
        if ((i3 & 147) == 146 && gapComposer.getSkipping()) {
            gapComposer.skipToGroupEnd();
        } else {
            if (i4 != 0) {
                glanceModifier = GlanceModifier.Companion.$$INSTANCE;
            }
            if (i5 != 0) {
                alignment = Alignment.TopStart;
            }
            BoxKt$Box$1 boxKt$Box$1 = BoxKt$Box$1.INSTANCE;
            gapComposer.startReplaceableGroup(578571862);
            int i6 = i3 & 896;
            gapComposer.startReplaceableGroup(-548224868);
            if (!(gapComposer.applier instanceof Applier)) {
                Updater.invalidApplier();
                throw null;
            }
            gapComposer.startNode();
            if (gapComposer.inserting) {
                gapComposer.createNode(boxKt$Box$1);
            } else {
                gapComposer.useNode();
            }
            Updater.m327setimpl(gapComposer, glanceModifier, BoxKt$Box$2$1.INSTANCE);
            Updater.m327setimpl(gapComposer, alignment, BoxKt$Box$2$1.INSTANCE$1);
            composableLambdaImpl.invoke(gapComposer, Integer.valueOf((i6 >> 6) & 14));
            gapComposer.end(true);
            gapComposer.end(false);
            gapComposer.end(false);
        }
        GlanceModifier glanceModifier2 = glanceModifier;
        Alignment alignment2 = alignment;
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new BoxKt$Box$3(glanceModifier2, alignment2, composableLambdaImpl, i, i2, 0);
        }
    }

    /* renamed from: CircularArrowProgressIndicator-RPmYEkk, reason: not valid java name */
    public static final void m837CircularArrowProgressIndicatorRPmYEkk(FloatProducer floatProducer, long j, GapComposer gapComposer, int i) {
        gapComposer.startRestartGroup(-1353562852);
        int i2 = 4;
        int i3 = (gapComposer.changed(floatProducer) ? 4 : 2) | i | (gapComposer.changed(j) ? 32 : 16);
        if (gapComposer.shouldExecute(i3 & 1, (i3 & 19) != 18)) {
            Object rememberedValue = gapComposer.rememberedValue();
            Object obj = Composer$Companion.Empty;
            Object obj2 = rememberedValue;
            if (rememberedValue == obj) {
                AndroidPath Path = AndroidPath_androidKt.Path();
                Path.m417setFillTypeoQ8Xj4U(1);
                gapComposer.updateRememberedValue(Path);
                obj2 = Path;
            }
            Object obj3 = (AndroidPath) obj2;
            Object rememberedValue2 = gapComposer.rememberedValue();
            if (rememberedValue2 == obj) {
                rememberedValue2 = SnapshotStateKt__DerivedStateKt.derivedStateOf(new NavBackStackEntry$$ExternalSyntheticLambda0(23, floatProducer));
                gapComposer.updateRememberedValue(rememberedValue2);
            }
            Object animateFloatAsState = AnimateAsStateKt.animateFloatAsState(((Number) ((State) rememberedValue2).getValue()).floatValue(), CardKt.value(MotionSchemeKeyTokens.DefaultEffects, gapComposer), gapComposer, 0, 28);
            int i4 = i3 & 14;
            boolean z = i4 == 4;
            Object rememberedValue3 = gapComposer.rememberedValue();
            if (z || rememberedValue3 == obj) {
                rememberedValue3 = new DiskLruCache$$ExternalSyntheticLambda0(i2, floatProducer);
                gapComposer.updateRememberedValue(rememberedValue3);
            }
            Modifier m145size3ABfNKs = SizeKt.m145size3ABfNKs(new ClearAndSetSemanticsElement((Function1) rememberedValue3), 16.0f);
            boolean changed = (i4 == 4) | gapComposer.changed(animateFloatAsState) | ((i3 & 112) == 32) | gapComposer.changedInstance(obj3);
            Object rememberedValue4 = gapComposer.rememberedValue();
            if (changed || rememberedValue4 == obj) {
                Object multiParagraph$$ExternalSyntheticLambda0 = new MultiParagraph$$ExternalSyntheticLambda0(floatProducer, animateFloatAsState, j, obj3, 3);
                gapComposer.updateRememberedValue(multiParagraph$$ExternalSyntheticLambda0);
                rememberedValue4 = multiParagraph$$ExternalSyntheticLambda0;
            }
            ImageKt.Canvas(m145size3ABfNKs, (Function1) rememberedValue4, gapComposer, 0);
        } else {
            gapComposer.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new GamesHubScreenKt$$ExternalSyntheticLambda4(floatProducer, j, i);
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

    /* renamed from: LazyStaggeredGrid-w41Enmo, reason: not valid java name */
    public static final void m838LazyStaggeredGridw41Enmo(LazyStaggeredGridState lazyStaggeredGridState, final Orientation orientation, final LazyStaggeredGridSlotCache lazyStaggeredGridSlotCache, final Modifier modifier, final PaddingValues paddingValues, final FlingBehavior flingBehavior, final boolean z, final AndroidEdgeEffectOverscrollEffect androidEdgeEffectOverscrollEffect, final float f, final float f2, final Function1 function1, GapComposer gapComposer, final int i, final int i2) {
        int i3;
        int i4;
        LazyStaggeredGridState lazyStaggeredGridState2;
        Object obj;
        final LazyStaggeredGridState lazyStaggeredGridState3;
        final Orientation orientation2;
        KProperty0 kProperty0;
        Modifier modifier2;
        gapComposer.startRestartGroup(-1904835166);
        if ((i & 6) == 0) {
            i3 = (gapComposer.changed(lazyStaggeredGridState) ? 4 : 2) | i;
        } else {
            i3 = i;
        }
        if ((i & 48) == 0) {
            i3 |= gapComposer.changed(orientation.ordinal()) ? 32 : 16;
        }
        if ((i & 384) == 0) {
            i3 |= (i & 512) == 0 ? gapComposer.changed(lazyStaggeredGridSlotCache) : gapComposer.changedInstance(lazyStaggeredGridSlotCache) ? 256 : 128;
        }
        if ((i & 3072) == 0) {
            i3 |= gapComposer.changed(modifier) ? 2048 : 1024;
        }
        if ((i & 24576) == 0) {
            i3 |= gapComposer.changed(paddingValues) ? 16384 : 8192;
        }
        if ((i & 196608) == 0) {
            i3 |= gapComposer.changed(false) ? 131072 : 65536;
        }
        if ((i & 1572864) == 0) {
            i3 |= gapComposer.changed(flingBehavior) ? 1048576 : 524288;
        }
        if ((i & 12582912) == 0) {
            i3 |= gapComposer.changed(z) ? 8388608 : 4194304;
        }
        if ((i & 100663296) == 0) {
            i3 |= gapComposer.changed(androidEdgeEffectOverscrollEffect) ? 67108864 : 33554432;
        }
        if ((i & 805306368) == 0) {
            i3 |= gapComposer.changed(f) ? 536870912 : 268435456;
        }
        int i5 = i3;
        if ((i2 & 6) == 0) {
            i4 = i2 | (gapComposer.changed(f2) ? 4 : 2);
        } else {
            i4 = i2;
        }
        if ((i2 & 48) == 0) {
            i4 |= gapComposer.changedInstance(function1) ? 32 : 16;
        }
        boolean z2 = true;
        if (gapComposer.shouldExecute(i5 & 1, ((i5 & 306783379) == 306783378 && (i4 & 19) == 18) ? false : true)) {
            gapComposer.startDefaults();
            if ((i & 1) != 0 && !gapComposer.getDefaultsInvalid()) {
                gapComposer.skipToGroupEnd();
            }
            gapComposer.endDefaults();
            int i6 = i5 & 14;
            int i7 = i6 | (i4 & 112);
            MutableState rememberUpdatedState = Updater.rememberUpdatedState(function1, gapComposer);
            int i8 = i4;
            boolean z3 = (((i7 & 14) ^ 6) > 4 && gapComposer.changed(lazyStaggeredGridState)) || (i7 & 6) == 4;
            Object rememberedValue = gapComposer.rememberedValue();
            Object obj2 = Composer$Companion.Empty;
            if (z3 || rememberedValue == obj2) {
                NeverEqualPolicy neverEqualPolicy = NeverEqualPolicy.INSTANCE$1;
                ForYouCardKt$$ExternalSyntheticLambda2 forYouCardKt$$ExternalSyntheticLambda2 = new ForYouCardKt$$ExternalSyntheticLambda2(rememberUpdatedState, 4);
                SVG svg = SnapshotStateKt__DerivedStateKt.calculationBlockNestedLevel;
                rememberedValue = new TextFieldDefaults$Container$1(0, 3, State.class, new DerivedSnapshotState(new Recomposer$$ExternalSyntheticLambda6(8, new DerivedSnapshotState(forYouCardKt$$ExternalSyntheticLambda2, neverEqualPolicy), lazyStaggeredGridState), neverEqualPolicy), "value", "getValue()Ljava/lang/Object;");
                gapComposer.updateRememberedValue(rememberedValue);
            }
            final KProperty0 kProperty02 = (KProperty0) rememberedValue;
            Object rememberedValue2 = gapComposer.rememberedValue();
            if (rememberedValue2 == obj2) {
                rememberedValue2 = Updater.createCompositionCoroutineScope(gapComposer);
                gapComposer.updateRememberedValue(rememberedValue2);
            }
            final CoroutineScope coroutineScope = (CoroutineScope) rememberedValue2;
            final GraphicsContext graphicsContext = (GraphicsContext) gapComposer.consume(CompositionLocalsKt.LocalGraphicsContext);
            int i9 = i5 >> 6;
            int i10 = i5 >> 12;
            int i11 = i6 | (i9 & 896) | (i9 & 7168) | ((i5 << 9) & 57344) | (i10 & 458752) | ((i8 << 18) & 3670016) | ((i5 << 18) & 234881024);
            boolean changed = ((((i11 & 234881024) ^ 100663296) > 67108864 && gapComposer.changed(lazyStaggeredGridSlotCache)) || (i11 & 100663296) == 67108864) | ((((i11 & 896) ^ 384) > 256 && gapComposer.changed(paddingValues)) || (i11 & 384) == 256) | ((((i11 & 14) ^ 6) > 4 && gapComposer.changed(lazyStaggeredGridState)) || (i11 & 6) == 4) | gapComposer.changed(kProperty02) | ((((i11 & 7168) ^ 3072) > 2048 && gapComposer.changed(false)) || (i11 & 3072) == 2048) | ((((i11 & 57344) ^ 24576) > 16384 && gapComposer.changed(orientation.ordinal())) || (i11 & 24576) == 16384) | ((((i11 & 458752) ^ 196608) > 131072 && gapComposer.changed(f)) || (i11 & 196608) == 131072) | ((((i11 & 3670016) ^ 1572864) > 1048576 && gapComposer.changed(f2)) || (i11 & 1572864) == 1048576) | gapComposer.changed(graphicsContext);
            Object rememberedValue3 = gapComposer.rememberedValue();
            if (changed || rememberedValue3 == obj2) {
                lazyStaggeredGridState3 = lazyStaggeredGridState;
                orientation2 = orientation;
                obj = new LazyLayoutMeasurePolicy() { // from class: androidx.compose.foundation.lazy.staggeredgrid.LazyStaggeredGridMeasurePolicyKt$rememberStaggeredGridMeasurePolicy$1$1
                    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutMeasurePolicy
                    /* renamed from: measure-0kLqBqw */
                    public final MeasureResult mo152measure0kLqBqw(LazyLayoutMeasureScopeImpl lazyLayoutMeasureScopeImpl, long j) {
                        LazyGridSlots lazyGridSlots;
                        float mo123calculateTopPaddingD9Ej5fM;
                        float mo120calculateBottomPaddingD9Ej5fM;
                        float calculateStartPadding;
                        LazyGridSlots lazyGridSlots2;
                        long j2;
                        long j3;
                        int m760maxInRangejy6DScQ;
                        SubcomposeMeasureScope subcomposeMeasureScope = lazyLayoutMeasureScopeImpl.subcomposeMeasureScope;
                        LazyStaggeredGridState lazyStaggeredGridState4 = LazyStaggeredGridState.this;
                        lazyStaggeredGridState4.measurementScopeInvalidator.getValue();
                        boolean z4 = lazyStaggeredGridState4.hasLookaheadOccurred || subcomposeMeasureScope.isLookingAhead();
                        Orientation orientation3 = orientation2;
                        ImageKt.m49checkScrollableContainerConstraintsK40F9xA(j, orientation3);
                        LazyStaggeredGridSlotCache lazyStaggeredGridSlotCache2 = lazyStaggeredGridSlotCache;
                        if (lazyStaggeredGridSlotCache2.cachedSizes != null && Constraints.m675equalsimpl0(lazyStaggeredGridSlotCache2.cachedConstraints, j) && lazyStaggeredGridSlotCache2.cachedDensity == subcomposeMeasureScope.getDensity()) {
                            LazyGridSlots lazyGridSlots3 = lazyStaggeredGridSlotCache2.cachedSizes;
                            lazyGridSlots3.getClass();
                            lazyGridSlots = lazyGridSlots3;
                        } else {
                            lazyStaggeredGridSlotCache2.cachedConstraints = j;
                            lazyStaggeredGridSlotCache2.cachedDensity = subcomposeMeasureScope.getDensity();
                            LazyGridSlots lazyGridSlots4 = (LazyGridSlots) lazyStaggeredGridSlotCache2.calculation.invoke(lazyLayoutMeasureScopeImpl, new Constraints(j));
                            lazyStaggeredGridSlotCache2.cachedSizes = lazyGridSlots4;
                            lazyGridSlots = lazyGridSlots4;
                        }
                        boolean z5 = orientation3 == Orientation.Vertical;
                        LazyStaggeredGridItemProviderImpl lazyStaggeredGridItemProviderImpl = (LazyStaggeredGridItemProviderImpl) kProperty02.invoke();
                        LayoutDirection layoutDirection = subcomposeMeasureScope.getLayoutDirection();
                        int[] iArr = LazyStaggeredGridMeasurePolicyKt$WhenMappings.$EnumSwitchMapping$0;
                        int i12 = iArr[orientation3.ordinal()];
                        PaddingValues paddingValues2 = paddingValues;
                        if (i12 == 1) {
                            mo123calculateTopPaddingD9Ej5fM = paddingValues2.mo123calculateTopPaddingD9Ej5fM();
                        } else {
                            if (i12 != 2) {
                                ContextsKt$$ExternalSyntheticBUOutline0.m();
                                return null;
                            }
                            mo123calculateTopPaddingD9Ej5fM = OffsetKt.calculateStartPadding(paddingValues2, layoutDirection);
                        }
                        int mo81roundToPx0680j_4 = subcomposeMeasureScope.mo81roundToPx0680j_4(mo123calculateTopPaddingD9Ej5fM);
                        LayoutDirection layoutDirection2 = subcomposeMeasureScope.getLayoutDirection();
                        int i13 = iArr[orientation3.ordinal()];
                        if (i13 == 1) {
                            mo120calculateBottomPaddingD9Ej5fM = paddingValues2.mo120calculateBottomPaddingD9Ej5fM();
                        } else {
                            if (i13 != 2) {
                                ContextsKt$$ExternalSyntheticBUOutline0.m();
                                return null;
                            }
                            mo120calculateBottomPaddingD9Ej5fM = OffsetKt.calculateEndPadding(paddingValues2, layoutDirection2);
                        }
                        int mo81roundToPx0680j_42 = subcomposeMeasureScope.mo81roundToPx0680j_4(mo120calculateBottomPaddingD9Ej5fM);
                        LayoutDirection layoutDirection3 = subcomposeMeasureScope.getLayoutDirection();
                        int i14 = iArr[orientation3.ordinal()];
                        if (i14 == 1) {
                            calculateStartPadding = OffsetKt.calculateStartPadding(paddingValues2, layoutDirection3);
                        } else {
                            if (i14 != 2) {
                                ContextsKt$$ExternalSyntheticBUOutline0.m();
                                return null;
                            }
                            calculateStartPadding = paddingValues2.mo123calculateTopPaddingD9Ej5fM();
                        }
                        int mo81roundToPx0680j_43 = subcomposeMeasureScope.mo81roundToPx0680j_4(calculateStartPadding);
                        int m680getMaxHeightimpl = ((z5 ? Constraints.m680getMaxHeightimpl(j) : Constraints.m681getMaxWidthimpl(j)) - mo81roundToPx0680j_4) - mo81roundToPx0680j_42;
                        if (z5) {
                            j2 = mo81roundToPx0680j_43 << 32;
                            lazyGridSlots2 = lazyGridSlots;
                            j3 = mo81roundToPx0680j_4;
                        } else {
                            lazyGridSlots2 = lazyGridSlots;
                            j2 = mo81roundToPx0680j_4 << 32;
                            j3 = mo81roundToPx0680j_43;
                        }
                        long j4 = j2 | (j3 & 4294967295L);
                        int mo81roundToPx0680j_44 = subcomposeMeasureScope.mo81roundToPx0680j_4(OffsetKt.calculateEndPadding(paddingValues2, subcomposeMeasureScope.getLayoutDirection()) + OffsetKt.calculateStartPadding(paddingValues2, subcomposeMeasureScope.getLayoutDirection()));
                        int mo81roundToPx0680j_45 = subcomposeMeasureScope.mo81roundToPx0680j_4(paddingValues2.mo120calculateBottomPaddingD9Ej5fM() + paddingValues2.mo123calculateTopPaddingD9Ej5fM());
                        List calculateLazyLayoutPinnedIndices = LazyLayoutKt.calculateLazyLayoutPinnedIndices(lazyStaggeredGridItemProviderImpl, lazyStaggeredGridState4.pinnedItems, lazyStaggeredGridState4.beyondBoundsInfo);
                        long m674copyZbe2FdA$default = Constraints.m674copyZbe2FdA$default(j, ConstraintsKt.m689constrainWidthK40F9xA(j, mo81roundToPx0680j_44), 0, ConstraintsKt.m688constrainHeightK40F9xA(j, mo81roundToPx0680j_45), 0, 10);
                        int mo81roundToPx0680j_46 = subcomposeMeasureScope.mo81roundToPx0680j_4(f);
                        boolean isLookingAhead = subcomposeMeasureScope.isLookingAhead();
                        LazyStaggeredGridMeasureResult lazyStaggeredGridMeasureResult = lazyStaggeredGridState4.approachLayoutInfo;
                        LazyStaggeredGridMeasureContext lazyStaggeredGridMeasureContext = new LazyStaggeredGridMeasureContext(lazyStaggeredGridState4, calculateLazyLayoutPinnedIndices, lazyStaggeredGridItemProviderImpl, lazyGridSlots2, m674copyZbe2FdA$default, z5, lazyLayoutMeasureScopeImpl, m680getMaxHeightimpl, j4, mo81roundToPx0680j_4, mo81roundToPx0680j_42, mo81roundToPx0680j_46, coroutineScope, z4, lazyStaggeredGridMeasureResult != null ? lazyStaggeredGridMeasureResult.visibleItemsInfo : null, graphicsContext);
                        TextDelegate textDelegate = lazyStaggeredGridState4.scrollPosition;
                        int[] iArr2 = (int[]) textDelegate.style;
                        Object obj3 = textDelegate.paragraphIntrinsics;
                        Integer orNull = ArraysKt___ArraysKt.getOrNull(iArr2, 0);
                        int findIndexByKey = LazyLayoutKt.findIndexByKey(orNull != null ? orNull.intValue() : 0, lazyStaggeredGridItemProviderImpl, obj3);
                        if (!ArraysKt___ArraysKt.contains(iArr2, findIndexByKey)) {
                            ((LazyLayoutNearestRangeState) textDelegate.intrinsicsLayoutDirection).update(findIndexByKey);
                            Snapshot currentThreadSnapshot = SnapshotId_jvmKt.getCurrentThreadSnapshot();
                            Function1 readObserver = currentThreadSnapshot != null ? currentThreadSnapshot.getReadObserver() : null;
                            Snapshot makeCurrentNonObservable = SnapshotId_jvmKt.makeCurrentNonObservable(currentThreadSnapshot);
                            try {
                                iArr2 = (int[]) ((RoomDatabase$createConnectionManager$2) textDelegate.text).invoke(Integer.valueOf(findIndexByKey), Integer.valueOf(iArr2.length));
                                SnapshotId_jvmKt.restoreNonObservable(currentThreadSnapshot, makeCurrentNonObservable, readObserver);
                                textDelegate.style = iArr2;
                                ((ParcelableSnapshotMutableIntState) textDelegate.density).setIntValue(TextDelegate.calculateFirstVisibleIndex(iArr2));
                            } catch (Throwable th) {
                                SnapshotId_jvmKt.restoreNonObservable(currentThreadSnapshot, makeCurrentNonObservable, readObserver);
                                throw th;
                            }
                        }
                        int[] iArr3 = (int[]) textDelegate.fontFamilyResolver;
                        int length = iArr2.length;
                        int i15 = lazyStaggeredGridMeasureContext.laneCount;
                        if (length != i15) {
                            StatusLine statusLine = lazyStaggeredGridMeasureContext.laneInfo;
                            statusLine.reset();
                            int[] iArr4 = new int[i15];
                            for (int i16 = 0; i16 < i15; i16++) {
                                if (i16 >= iArr2.length || (m760maxInRangejy6DScQ = iArr2[i16]) == -1) {
                                    if (i16 == 0) {
                                        m760maxInRangejy6DScQ = 0;
                                    } else {
                                        m760maxInRangejy6DScQ = Room.m760maxInRangejy6DScQ(i16 & 4294967295L, iArr4) + 1;
                                        iArr4[i16] = m760maxInRangejy6DScQ;
                                        statusLine.setLane(m760maxInRangejy6DScQ, i16);
                                    }
                                }
                                iArr4[i16] = m760maxInRangejy6DScQ;
                                statusLine.setLane(m760maxInRangejy6DScQ, i16);
                            }
                            iArr2 = iArr4;
                        }
                        if (iArr3.length != i15) {
                            int[] iArr5 = new int[i15];
                            int i17 = 0;
                            while (i17 < i15) {
                                iArr5[i17] = i17 < iArr3.length ? iArr3[i17] : i17 == 0 ? 0 : iArr5[i17 - 1];
                                i17++;
                            }
                            iArr3 = iArr5;
                        }
                        LazyStaggeredGridMeasureResult measure = Room.measure(lazyStaggeredGridMeasureContext, Math.round((isLookingAhead || !lazyStaggeredGridState4.hasLookaheadOccurred) ? lazyStaggeredGridState4.scrollToBeConsumed : ((Number) ((AnimationState) lazyStaggeredGridState4._lazyLayoutScrollDeltaBetweenPasses.this$0).value$delegate.getValue()).floatValue()), iArr2, iArr3, true);
                        lazyStaggeredGridState4.applyMeasureResult$foundation(measure, subcomposeMeasureScope.isLookingAhead(), false);
                        return measure;
                    }
                };
                kProperty0 = kProperty02;
                gapComposer.updateRememberedValue(obj);
            } else {
                orientation2 = orientation;
                obj = rememberedValue3;
                kProperty0 = kProperty02;
                lazyStaggeredGridState3 = lazyStaggeredGridState;
            }
            LazyLayoutMeasurePolicy lazyLayoutMeasurePolicy = (LazyLayoutMeasurePolicy) obj;
            int i12 = i6 | (i10 & 112);
            boolean z4 = ((((i12 & 112) ^ 48) > 32 && gapComposer.changed(false)) || (i12 & 48) == 32) | ((((i12 & 14) ^ 6) > 4 && gapComposer.changed(lazyStaggeredGridState3)) || (i12 & 6) == 4);
            Object rememberedValue4 = gapComposer.rememberedValue();
            if (z4 || rememberedValue4 == obj2) {
                rememberedValue4 = new LazyLayoutSemanticState() { // from class: androidx.compose.foundation.lazy.staggeredgrid.LazyStaggeredGridSemanticsKt$rememberLazyStaggeredGridSemanticState$1$1
                    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutSemanticState
                    public final CollectionInfo collectionInfo() {
                        return new CollectionInfo(-1, -1);
                    }

                    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutSemanticState
                    public final int getContentPadding() {
                        LazyStaggeredGridState lazyStaggeredGridState4 = LazyStaggeredGridState.this;
                        return lazyStaggeredGridState4.getLayoutInfo().beforeContentPadding + lazyStaggeredGridState4.getLayoutInfo().afterContentPadding;
                    }

                    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutSemanticState
                    public final float getMaxScrollOffset() {
                        LazyStaggeredGridState lazyStaggeredGridState4 = LazyStaggeredGridState.this;
                        int intValue = ((ParcelableSnapshotMutableIntState) lazyStaggeredGridState4.scrollPosition.density).getIntValue();
                        int intValue2 = ((ParcelableSnapshotMutableIntState) lazyStaggeredGridState4.scrollPosition.placeholders).getIntValue();
                        return lazyStaggeredGridState4.getCanScrollForward() ? (intValue * 500) + intValue2 + 100.0f : (intValue * 500) + intValue2;
                    }

                    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutSemanticState
                    public final float getScrollOffset() {
                        LazyStaggeredGridState lazyStaggeredGridState4 = LazyStaggeredGridState.this;
                        return (((ParcelableSnapshotMutableIntState) lazyStaggeredGridState4.scrollPosition.density).getIntValue() * 500) + ((ParcelableSnapshotMutableIntState) lazyStaggeredGridState4.scrollPosition.placeholders).getIntValue();
                    }

                    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutSemanticState
                    public final int getViewport() {
                        LazyStaggeredGridState lazyStaggeredGridState4 = LazyStaggeredGridState.this;
                        return (int) (lazyStaggeredGridState4.getLayoutInfo().orientation == Orientation.Vertical ? lazyStaggeredGridState4.getLayoutInfo().viewportSize & 4294967295L : lazyStaggeredGridState4.getLayoutInfo().viewportSize >> 32);
                    }

                    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutSemanticState
                    public final Object scrollToItem(int i13, RandomViewModel$loadMore$2 randomViewModel$loadMore$2) {
                        Object scrollToItem$default = LazyStaggeredGridState.scrollToItem$default(LazyStaggeredGridState.this, i13, randomViewModel$loadMore$2);
                        return scrollToItem$default == CoroutineSingletons.COROUTINE_SUSPENDED ? scrollToItem$default : Unit.INSTANCE;
                    }
                };
                gapComposer.updateRememberedValue(rememberedValue4);
            }
            LazyStaggeredGridSemanticsKt$rememberLazyStaggeredGridSemanticState$1$1 lazyStaggeredGridSemanticsKt$rememberLazyStaggeredGridSemanticState$1$1 = (LazyStaggeredGridSemanticsKt$rememberLazyStaggeredGridSemanticState$1$1) rememberedValue4;
            if (z) {
                gapComposer.startReplaceGroup(-1834596342);
                if (((i6 ^ 6) <= 4 || !gapComposer.changed(lazyStaggeredGridState3)) && (i5 & 6) != 4) {
                    z2 = false;
                }
                Object rememberedValue5 = gapComposer.rememberedValue();
                if (z2 || rememberedValue5 == obj2) {
                    rememberedValue5 = new LazyStaggeredGridBeyondBoundsState(lazyStaggeredGridState3);
                    gapComposer.updateRememberedValue(rememberedValue5);
                }
                modifier2 = LazyLayoutKt.lazyLayoutBeyondBoundsModifier((LazyStaggeredGridBeyondBoundsState) rememberedValue5, lazyStaggeredGridState3.beyondBoundsInfo, orientation2);
                gapComposer.end(false);
            } else {
                gapComposer.startReplaceGroup(-1834291488);
                gapComposer.end(false);
                modifier2 = Modifier.Companion.$$INSTANCE;
            }
            lazyStaggeredGridState2 = lazyStaggeredGridState3;
            LazyLayoutKt.LazyLayout(kProperty0, ImageKt.scrollableArea(LazyLayoutKt.lazyLayoutSemantics(modifier.then(lazyStaggeredGridState3.remeasurementModifier).then(lazyStaggeredGridState3.awaitLayoutModifier), kProperty0, lazyStaggeredGridSemanticsKt$rememberLazyStaggeredGridSemanticState$1$1, orientation2, z).then(modifier2).then(lazyStaggeredGridState3.itemAnimator.modifier), lazyStaggeredGridState3, orientation2, androidEdgeEffectOverscrollEffect, z, flingBehavior, lazyStaggeredGridState3.mutableInteractionSource, null), lazyStaggeredGridState2.prefetchState, lazyLayoutMeasurePolicy, gapComposer, 0);
        } else {
            lazyStaggeredGridState2 = lazyStaggeredGridState;
            gapComposer.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            final LazyStaggeredGridState lazyStaggeredGridState4 = lazyStaggeredGridState2;
            endRestartGroup.block = new Function2() { // from class: androidx.compose.foundation.lazy.staggeredgrid.LazyStaggeredGridKt$$ExternalSyntheticLambda0
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj3, Object obj4) {
                    ((Integer) obj4).getClass();
                    int updateChangedFlags = Updater.updateChangedFlags(i | 1);
                    int updateChangedFlags2 = Updater.updateChangedFlags(i2);
                    RegexKt.m838LazyStaggeredGridw41Enmo(LazyStaggeredGridState.this, orientation, lazyStaggeredGridSlotCache, modifier, paddingValues, flingBehavior, z, androidEdgeEffectOverscrollEffect, f, f2, function1, (GapComposer) obj3, updateChangedFlags, updateChangedFlags2);
                    return Unit.INSTANCE;
                }
            };
        }
    }

    public static final void LottieAnimation(LottieComposition lottieComposition, Modifier modifier, GapComposer gapComposer, int i) {
        gapComposer.startRestartGroup(1331239405);
        RenderMode renderMode = RenderMode.AUTOMATIC;
        AsyncUpdates asyncUpdates = AsyncUpdates.AUTOMATIC;
        gapComposer.startReplaceableGroup(683659508);
        LottieCancellationBehavior lottieCancellationBehavior = LottieCancellationBehavior.Immediately;
        if (Float.isInfinite(1.0f) || Float.isNaN(1.0f)) {
            throw new IllegalArgumentException(("Speed must be a finite number. It is 1.0.").toString());
        }
        gapComposer.startReplaceableGroup(2024497114);
        gapComposer.startReplaceableGroup(-610207850);
        Object rememberedValue = gapComposer.rememberedValue();
        Object obj = Composer$Companion.Empty;
        if (rememberedValue == obj) {
            rememberedValue = new LottieAnimatableImpl();
            gapComposer.updateRememberedValue(rememberedValue);
        }
        LottieAnimatableImpl lottieAnimatableImpl = (LottieAnimatableImpl) rememberedValue;
        gapComposer.end(false);
        gapComposer.end(false);
        gapComposer.startReplaceableGroup(-180606964);
        Object rememberedValue2 = gapComposer.rememberedValue();
        if (rememberedValue2 == obj) {
            rememberedValue2 = Updater.mutableStateOf$default(true);
            gapComposer.updateRememberedValue(rememberedValue2);
        }
        MutableState mutableState = (MutableState) rememberedValue2;
        gapComposer.end(false);
        gapComposer.startReplaceableGroup(-180606834);
        Context context = (Context) gapComposer.consume(AndroidCompositionLocals_androidKt.LocalContext);
        Matrix matrix = Utils.IDENTITY_MATRIX;
        float f = 1.0f / Settings.Global.getFloat(context.getContentResolver(), "animator_duration_scale", 1.0f);
        gapComposer.end(false);
        Updater.LaunchedEffect(new Object[]{lottieComposition, true, null, Float.valueOf(f), Integer.MAX_VALUE}, new DefaultFlingBehavior$performFling$2(lottieAnimatableImpl, lottieComposition, f, lottieCancellationBehavior, mutableState, null), gapComposer);
        gapComposer.end(false);
        gapComposer.startReplaceableGroup(185157769);
        boolean changed = gapComposer.changed(lottieAnimatableImpl);
        Object rememberedValue3 = gapComposer.rememberedValue();
        if (changed || rememberedValue3 == obj) {
            rememberedValue3 = new LayoutNode$_foldedChildren$1(21, lottieAnimatableImpl);
            gapComposer.updateRememberedValue(rememberedValue3);
        }
        gapComposer.end(false);
        LottieAnimation(lottieComposition, (Function0) rememberedValue3, modifier, renderMode, asyncUpdates, gapComposer, 1073742216, 32768);
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new GlanceThemeKt$GlanceTheme$1(lottieComposition, modifier, renderMode, asyncUpdates, i);
        }
    }

    public static final PrimitiveSerialDescriptor PrimitiveSerialDescriptor(String str, PrimitiveKind$INT primitiveKind$INT) {
        if (StringsKt.isBlank(str)) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m("Blank serial names are prohibited");
            return null;
        }
        Object it = ((MapBuilderValues) PrimitivesKt.BUILTIN_SERIALIZERS.values()).iterator();
        while (((Table) it).hasNext()) {
            KSerializer kSerializer = (KSerializer) ((MapBuilder.KeysItr) it).next();
            if (str.equals(kSerializer.getDescriptor().getSerialName())) {
                StringBuilder m21m = Animation.CC.m21m("\n                The name of serial descriptor should uniquely identify associated serializer.\n                For serial name ", str, " there already exists ");
                m21m.append(Reflection.factory.getOrCreateKotlinClass(kSerializer.getClass()).getSimpleName());
                m21m.append(".\n                Please refer to SerialDescriptor documentation for additional information.\n            ");
                _UtilJvmKt$$ExternalSyntheticLambda0.m(StringsKt__IndentKt.trimIndent(m21m.toString()));
                return null;
            }
        }
        return new PrimitiveSerialDescriptor(str, primitiveKind$INT);
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0049  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x005c  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0066  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x00fc  */
    /* JADX WARN: Removed duplicated region for block: B:38:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:44:0x00ec  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x005e  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x004c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void PullToRefreshBox(boolean r14, kotlin.jvm.functions.Function0 r15, androidx.compose.ui.Modifier r16, androidx.compose.material3.pulltorefresh.PullToRefreshStateImpl r17, androidx.compose.ui.Alignment r18, kotlin.jvm.functions.Function3 r19, androidx.compose.runtime.internal.ComposableLambdaImpl r20, androidx.compose.runtime.GapComposer r21, int r22, int r23) {
        /*
            Method dump skipped, instructions count: 265
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.text.RegexKt.PullToRefreshBox(boolean, kotlin.jvm.functions.Function0, androidx.compose.ui.Modifier, androidx.compose.material3.pulltorefresh.PullToRefreshStateImpl, androidx.compose.ui.Alignment, kotlin.jvm.functions.Function3, androidx.compose.runtime.internal.ComposableLambdaImpl, androidx.compose.runtime.GapComposer, int, int):void");
    }

    /* renamed from: RoundRect-gG7oq9Y, reason: not valid java name */
    public static final RoundRect m839RoundRectgG7oq9Y(float f, float f2, float f3, float f4, long j) {
        float intBitsToFloat = Float.intBitsToFloat((int) (j >> 32));
        float intBitsToFloat2 = Float.intBitsToFloat((int) (j & 4294967295L));
        long floatToRawIntBits = (Float.floatToRawIntBits(intBitsToFloat) << 32) | (4294967295L & Float.floatToRawIntBits(intBitsToFloat2));
        return new RoundRect(f, f2, f3, f4, floatToRawIntBits, floatToRawIntBits, floatToRawIntBits, floatToRawIntBits);
    }

    public static final SerialDescriptorImpl buildSerialDescriptor(String str, Room room, SerialDescriptor[] serialDescriptorArr, Function1 function1) {
        if (StringsKt.isBlank(str)) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m("Blank serial names are prohibited");
            return null;
        }
        if (room.equals(StructureKind$MAP.INSTANCE$1)) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m("For StructureKind.CLASS please use 'buildClassSerialDescriptor' instead");
            return null;
        }
        ClassSerialDescriptorBuilder classSerialDescriptorBuilder = new ClassSerialDescriptorBuilder(str);
        function1.invoke(classSerialDescriptorBuilder);
        return new SerialDescriptorImpl(str, room, classSerialDescriptorBuilder.elementNames.size(), ArraysKt___ArraysKt.toList(serialDescriptorArr), classSerialDescriptorBuilder);
    }

    public static SerialDescriptorImpl buildSerialDescriptor$default(String str, Room room, SerialDescriptor[] serialDescriptorArr) {
        if (StringsKt.isBlank(str)) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m("Blank serial names are prohibited");
            return null;
        }
        if (room.equals(StructureKind$MAP.INSTANCE$1)) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m("For StructureKind.CLASS please use 'buildClassSerialDescriptor' instead");
            return null;
        }
        ClassSerialDescriptorBuilder classSerialDescriptorBuilder = new ClassSerialDescriptorBuilder(str);
        return new SerialDescriptorImpl(str, room, classSerialDescriptorBuilder.elementNames.size(), ArraysKt___ArraysKt.toList(serialDescriptorArr), classSerialDescriptorBuilder);
    }

    public static float clamp(float f, float f2, float f3) {
        return f < f2 ? f2 : f > f3 ? f3 : f;
    }

    public static int coerceIn(int i, IntRange intRange) {
        intRange.getClass();
        int i2 = intRange.last;
        int i3 = intRange.first;
        if (!intRange.isEmpty()) {
            return i < Integer.valueOf(i3).intValue() ? Integer.valueOf(i3).intValue() : i > Integer.valueOf(i2).intValue() ? Integer.valueOf(i2).intValue() : i;
        }
        Gson$$ExternalSyntheticBUOutline0.m$4("Cannot coerce value to an empty range: ", intRange);
        return 0;
    }

    /* JADX WARN: Code restructure failed: missing block: B:31:0x00a2, code lost:
    
        if ((r5 instanceof kotlin.reflect.jvm.internal.impl.descriptors.impl.PropertyGetterDescriptorImpl) == false) goto L34;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String computeJvmDescriptor$default(kotlin.reflect.jvm.internal.impl.descriptors.FunctionDescriptor r5, int r6) {
        /*
            r0 = r6 & 1
            r1 = 0
            r2 = 1
            if (r0 == 0) goto L8
            r0 = r2
            goto L9
        L8:
            r0 = r1
        L9:
            r6 = r6 & 2
            if (r6 == 0) goto Le
            r1 = r2
        Le:
            r5.getClass()
            java.lang.StringBuilder r6 = new java.lang.StringBuilder
            r6.<init>()
            if (r1 == 0) goto L30
            boolean r1 = r5 instanceof kotlin.reflect.jvm.internal.impl.descriptors.ConstructorDescriptor
            if (r1 == 0) goto L1f
            java.lang.String r1 = "<init>"
            goto L2d
        L1f:
            r1 = r5
            kotlin.reflect.jvm.internal.impl.descriptors.impl.DeclarationDescriptorImpl r1 = (kotlin.reflect.jvm.internal.impl.descriptors.impl.DeclarationDescriptorImpl) r1
            kotlin.reflect.jvm.internal.impl.name.Name r1 = r1.getName()
            java.lang.String r1 = r1.asString()
            r1.getClass()
        L2d:
            r6.append(r1)
        L30:
            java.lang.String r1 = "("
            r6.append(r1)
            kotlin.reflect.jvm.internal.impl.descriptors.impl.ReceiverParameterDescriptorImpl r1 = r5.getExtensionReceiverParameter()
            kotlin.reflect.jvm.internal.impl.utils.FunctionsKt$DO_NOTHING_3$1 r2 = kotlin.reflect.jvm.internal.impl.utils.FunctionsKt$DO_NOTHING_3$1.INSTANCE
            if (r1 == 0) goto L4f
            kotlin.reflect.jvm.internal.impl.types.KotlinType r1 = r1.getType()
            r1.getClass()
            kotlin.reflect.jvm.internal.impl.load.kotlin.TypeMappingMode r3 = kotlin.reflect.jvm.internal.impl.load.kotlin.TypeMappingMode.DEFAULT
            java.lang.Object r1 = kotlin.ResultKt.mapType(r1, r3, r2)
            kotlin.reflect.jvm.internal.impl.load.kotlin.JvmType r1 = (kotlin.reflect.jvm.internal.impl.load.kotlin.JvmType) r1
            r6.append(r1)
        L4f:
            java.util.List r1 = r5.getValueParameters()
            java.util.Iterator r1 = r1.iterator()
        L57:
            boolean r3 = r1.hasNext()
            if (r3 == 0) goto L76
            java.lang.Object r3 = r1.next()
            kotlin.reflect.jvm.internal.impl.descriptors.impl.ValueParameterDescriptorImpl r3 = (kotlin.reflect.jvm.internal.impl.descriptors.impl.ValueParameterDescriptorImpl) r3
            kotlin.reflect.jvm.internal.impl.types.KotlinType r3 = r3.getType()
            r3.getClass()
            kotlin.reflect.jvm.internal.impl.load.kotlin.TypeMappingMode r4 = kotlin.reflect.jvm.internal.impl.load.kotlin.TypeMappingMode.DEFAULT
            java.lang.Object r3 = kotlin.ResultKt.mapType(r3, r4, r2)
            kotlin.reflect.jvm.internal.impl.load.kotlin.JvmType r3 = (kotlin.reflect.jvm.internal.impl.load.kotlin.JvmType) r3
            r6.append(r3)
            goto L57
        L76:
            java.lang.String r1 = ")"
            r6.append(r1)
            if (r0 == 0) goto Lbc
            boolean r0 = r5 instanceof kotlin.reflect.jvm.internal.impl.descriptors.ConstructorDescriptor
            if (r0 == 0) goto L82
            goto La4
        L82:
            kotlin.reflect.jvm.internal.impl.types.KotlinType r0 = r5.getReturnType()
            r0.getClass()
            kotlin.reflect.jvm.internal.impl.name.Name r1 = kotlin.reflect.jvm.internal.impl.builtins.KotlinBuiltIns.BUILTINS_MODULE_NAME
            kotlin.reflect.jvm.internal.impl.name.FqNameUnsafe r1 = kotlin.reflect.jvm.internal.impl.builtins.StandardNames.FqNames.unit
            boolean r0 = kotlin.reflect.jvm.internal.impl.builtins.KotlinBuiltIns.isNotNullConstructedFromGivenClass(r0, r1)
            if (r0 == 0) goto Laa
            kotlin.reflect.jvm.internal.impl.types.KotlinType r0 = r5.getReturnType()
            r0.getClass()
            boolean r0 = kotlin.reflect.jvm.internal.impl.types.TypeUtils.isNullableType(r0)
            if (r0 != 0) goto Laa
            boolean r0 = r5 instanceof kotlin.reflect.jvm.internal.impl.descriptors.impl.PropertyGetterDescriptorImpl
            if (r0 != 0) goto Laa
        La4:
            java.lang.String r5 = "V"
            r6.append(r5)
            goto Lbc
        Laa:
            kotlin.reflect.jvm.internal.impl.types.KotlinType r5 = r5.getReturnType()
            r5.getClass()
            kotlin.reflect.jvm.internal.impl.load.kotlin.TypeMappingMode r0 = kotlin.reflect.jvm.internal.impl.load.kotlin.TypeMappingMode.DEFAULT
            java.lang.Object r5 = kotlin.ResultKt.mapType(r5, r0, r2)
            kotlin.reflect.jvm.internal.impl.load.kotlin.JvmType r5 = (kotlin.reflect.jvm.internal.impl.load.kotlin.JvmType) r5
            r6.append(r5)
        Lbc:
            java.lang.String r5 = r6.toString()
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.text.RegexKt.computeJvmDescriptor$default(kotlin.reflect.jvm.internal.impl.descriptors.FunctionDescriptor, int):java.lang.String");
    }

    public static final String computeJvmSignature(CallableDescriptor callableDescriptor) {
        if (!DescriptorUtils.isLocal(callableDescriptor)) {
            DeclarationDescriptor containingDeclaration = callableDescriptor.getContainingDeclaration();
            ModuleAwareClassDescriptor moduleAwareClassDescriptor = containingDeclaration instanceof ModuleAwareClassDescriptor ? (ModuleAwareClassDescriptor) containingDeclaration : null;
            if (moduleAwareClassDescriptor != null && !moduleAwareClassDescriptor.getName().special) {
                CallableDescriptor original = callableDescriptor.getOriginal();
                SimpleFunctionDescriptorImpl simpleFunctionDescriptorImpl = original instanceof SimpleFunctionDescriptorImpl ? (SimpleFunctionDescriptorImpl) original : null;
                if (simpleFunctionDescriptorImpl != null) {
                    return UtilsKt.signature(moduleAwareClassDescriptor, computeJvmDescriptor$default(simpleFunctionDescriptorImpl, 3));
                }
            }
        }
        return null;
    }

    public static final void copyOfRangeToIndexCheck(int i, int i2) {
        if (i <= i2) {
            return;
        }
        Gson$$ExternalSyntheticBUOutline0.m(i, i2, ") is greater than size (", "toIndex (");
    }

    /* JADX WARN: Code restructure failed: missing block: B:48:0x00af, code lost:
    
        if (r2 != kotlin.reflect.jvm.internal.impl.load.kotlin.header.KotlinClassHeader.Kind.MULTIFILE_CLASS_PART) goto L44;
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x00b3, code lost:
    
        if (r0.data != null) goto L44;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:39:0x00d2 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:41:0x00d3  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static kotlin.reflect.jvm.internal.impl.descriptors.runtime.components.ReflectKotlinClass create(java.lang.Class r15) {
        /*
            Method dump skipped, instructions count: 215
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.text.RegexKt.create(java.lang.Class):kotlin.reflect.jvm.internal.impl.descriptors.runtime.components.ReflectKotlinClass");
    }

    /* renamed from: drawArrow-uDrxG_w, reason: not valid java name */
    public static final void m840drawArrowuDrxG_w(DrawScope drawScope, AndroidPath androidPath, Rect rect, long j, float f, FlingCalculator flingCalculator) {
        androidPath.reset();
        androidPath.internalPath.moveTo(RecyclerView.DECELERATION_RATE, RecyclerView.DECELERATION_RATE);
        float mo87toPx0680j_4 = drawScope.mo87toPx0680j_4(10.0f);
        float f2 = flingCalculator.magicPhysicalCoefficient;
        androidPath.lineTo((mo87toPx0680j_4 * f2) / 2.0f, drawScope.mo87toPx0680j_4(5.0f) * f2);
        androidPath.lineTo(drawScope.mo87toPx0680j_4(10.0f) * f2, RecyclerView.DECELERATION_RATE);
        float intBitsToFloat = (Float.intBitsToFloat((int) (rect.m390getCenterF1C5BW0() >> 32)) + (Math.min(rect.right - rect.left, rect.bottom - rect.top) / 2.0f)) - ((drawScope.mo87toPx0680j_4(10.0f) * f2) / 2.0f);
        float intBitsToFloat2 = Float.intBitsToFloat((int) (rect.m390getCenterF1C5BW0() & 4294967295L)) - drawScope.mo87toPx0680j_4(2.5f);
        androidPath.m418translatek4lQ0M((Float.floatToRawIntBits(intBitsToFloat) << 32) | (Float.floatToRawIntBits(intBitsToFloat2) & 4294967295L));
        float mo87toPx0680j_42 = flingCalculator.friction - drawScope.mo87toPx0680j_4(2.5f);
        long mo475getCenterF1C5BW0 = drawScope.mo475getCenterF1C5BW0();
        SVG drawContext = drawScope.getDrawContext();
        long m796getSizeNHjbRc = drawContext.m796getSizeNHjbRc();
        drawContext.getCanvas().save();
        try {
            ((PopupMenu$1) drawContext.rootElement).m6rotateUv8p0NA(mo87toPx0680j_42, mo475getCenterF1C5BW0);
            Modifier.CC.m348drawPathLG529CI$default(drawScope, androidPath, j, f, new Stroke(drawScope.mo87toPx0680j_4(2.5f), RecyclerView.DECELERATION_RATE, 0, 0, 30), 48);
        } finally {
            Animation.CC.m(drawContext, m796getSizeNHjbRc);
        }
    }

    public static final /* synthetic */ Activity findActivity(Context context) {
        while (context instanceof ContextWrapper) {
            if (context instanceof Activity) {
                return (Activity) context;
            }
            context = ((ContextWrapper) context).getBaseContext();
            context.getClass();
        }
        return null;
    }

    public static final MatcherMatchResult findNext(Matcher matcher, int i, CharSequence charSequence) {
        if (matcher.find(i)) {
            return new MatcherMatchResult(matcher, charSequence);
        }
        return null;
    }

    public static Set getExclusions() {
        try {
            Object invoke = Class.forName("android.text.EmojiConsistency").getMethod("getEmojiConsistencySet", null).invoke(null, null);
            if (invoke == null) {
                return Collections.EMPTY_SET;
            }
            Set set = (Set) invoke;
            Iterator it = set.iterator();
            while (it.hasNext()) {
                if (!(it.next() instanceof int[])) {
                    return Collections.EMPTY_SET;
                }
            }
            return set;
        } catch (Throwable unused) {
            return Collections.EMPTY_SET;
        }
    }

    public static final void goAsync(BroadcastReceiver broadcastReceiver, CoroutineContext coroutineContext, Function2 function2) {
        ContextScope CoroutineScope = AwaitKt.CoroutineScope(OperationKt.plus(AwaitKt.SupervisorJob$default(), coroutineContext));
        AwaitKt.launch$default(CoroutineScope, null, null, new FlowExtKt$simpleScan$1(function2, CoroutineScope, broadcastReceiver.goAsync(), (Continuation) null, 10), 3);
    }

    public static final int indexSegment(int i, int i2) {
        return (i >> i2) & 31;
    }

    public static final boolean isSimple(RoundRect roundRect) {
        long j = roundRect.topLeftCornerRadius;
        return (j >>> 32) == (4294967295L & j) && j == roundRect.topRightCornerRadius && j == roundRect.bottomRightCornerRadius && j == roundRect.bottomLeftCornerRadius;
    }

    public static final ArrayList missingRequiredArguments(Map map, Function1 function1) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (Map.Entry entry : map.entrySet()) {
            NavArgument navArgument = (NavArgument) entry.getValue();
            Boolean valueOf = navArgument != null ? Boolean.valueOf(navArgument.isNullable) : null;
            valueOf.getClass();
            if (!valueOf.booleanValue() && !navArgument.isDefaultValuePresent) {
                linkedHashMap.put(entry.getKey(), entry.getValue());
            }
        }
        Set keySet = linkedHashMap.keySet();
        ArrayList arrayList = new ArrayList();
        for (Object obj : keySet) {
            if (((Boolean) function1.invoke((String) obj)).booleanValue()) {
                arrayList.add(obj);
            }
        }
        return arrayList;
    }

    public static void playTogether(AnimatorSet animatorSet, ArrayList arrayList) {
        int size = arrayList.size();
        long j = 0;
        for (int i = 0; i < size; i++) {
            Animator animator = (Animator) arrayList.get(i);
            j = Math.max(j, animator.getDuration() + animator.getStartDelay());
        }
        ValueAnimator ofInt = ValueAnimator.ofInt(0, 0);
        ofInt.setDuration(j);
        arrayList.add(0, ofInt);
        animatorSet.playTogether(arrayList);
    }

    public static final List readForeignKeyFieldMappings(SQLiteStatement sQLiteStatement) {
        int columnIndexOf = UtilsKt.columnIndexOf(sQLiteStatement, "id");
        int columnIndexOf2 = UtilsKt.columnIndexOf(sQLiteStatement, "seq");
        int columnIndexOf3 = UtilsKt.columnIndexOf(sQLiteStatement, "from");
        int columnIndexOf4 = UtilsKt.columnIndexOf(sQLiteStatement, "to");
        ListBuilder createListBuilder = Room.createListBuilder();
        while (sQLiteStatement.step()) {
            createListBuilder.add(new ForeignKeyWithSequence((int) sQLiteStatement.getLong(columnIndexOf), (int) sQLiteStatement.getLong(columnIndexOf2), sQLiteStatement.getText(columnIndexOf3), sQLiteStatement.getText(columnIndexOf4)));
        }
        return CollectionsKt.sorted(Room.build(createListBuilder));
    }

    public static final TableInfo.Index readIndex(SQLiteConnection sQLiteConnection, String str, boolean z) {
        SQLiteStatement prepare = sQLiteConnection.prepare("PRAGMA index_xinfo(`" + str + "`)");
        try {
            int columnIndexOf = UtilsKt.columnIndexOf(prepare, "seqno");
            int columnIndexOf2 = UtilsKt.columnIndexOf(prepare, "cid");
            int columnIndexOf3 = UtilsKt.columnIndexOf(prepare, "name");
            int columnIndexOf4 = UtilsKt.columnIndexOf(prepare, "desc");
            if (columnIndexOf != -1 && columnIndexOf2 != -1 && columnIndexOf3 != -1 && columnIndexOf4 != -1) {
                LinkedHashMap linkedHashMap = new LinkedHashMap();
                LinkedHashMap linkedHashMap2 = new LinkedHashMap();
                while (prepare.step()) {
                    if (((int) prepare.getLong(columnIndexOf2)) >= 0) {
                        int i = (int) prepare.getLong(columnIndexOf);
                        String text = prepare.getText(columnIndexOf3);
                        String str2 = prepare.getLong(columnIndexOf4) > 0 ? "DESC" : "ASC";
                        linkedHashMap.put(Integer.valueOf(i), text);
                        linkedHashMap2.put(Integer.valueOf(i), str2);
                    }
                }
                List sortedWith = CollectionsKt.sortedWith(linkedHashMap.entrySet(), new DiffUtil.AnonymousClass1(5));
                ArrayList arrayList = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(sortedWith, 10));
                Iterator it = sortedWith.iterator();
                while (it.hasNext()) {
                    arrayList.add((String) ((Map.Entry) it.next()).getValue());
                }
                List list = CollectionsKt.toList(arrayList);
                List sortedWith2 = CollectionsKt.sortedWith(linkedHashMap2.entrySet(), new DiffUtil.AnonymousClass1(6));
                ArrayList arrayList2 = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(sortedWith2, 10));
                Iterator it2 = sortedWith2.iterator();
                while (it2.hasNext()) {
                    arrayList2.add((String) ((Map.Entry) it2.next()).getValue());
                }
                TableInfo.Index index = new TableInfo.Index(str, z, list, CollectionsKt.toList(arrayList2));
                TuplesKt.closeFinally(prepare, null);
                return index;
            }
            TuplesKt.closeFinally(prepare, null);
            return null;
        } finally {
        }
    }

    public static final PullToRefreshStateImpl rememberPullToRefreshState(GapComposer gapComposer) {
        Object[] objArr = new Object[0];
        Object rememberedValue = gapComposer.rememberedValue();
        if (rememberedValue == Composer$Companion.Empty) {
            rememberedValue = new Worker$$ExternalSyntheticLambda1(8);
            gapComposer.updateRememberedValue(rememberedValue);
        }
        return (PullToRefreshStateImpl) SaverKt.rememberSaveable(objArr, PullToRefreshStateImpl.Saver, (Function0) rememberedValue, gapComposer, 384);
    }

    public static void setTooltipText(View view, CharSequence charSequence) {
        if (Build.VERSION.SDK_INT >= 26) {
            TooltipCompat$Api26Impl.setTooltipText(view, charSequence);
            return;
        }
        TooltipCompatHandler tooltipCompatHandler = TooltipCompatHandler.sPendingHandler;
        if (tooltipCompatHandler != null && tooltipCompatHandler.mAnchor == view) {
            TooltipCompatHandler.setPendingHandler(null);
        }
        if (!TextUtils.isEmpty(charSequence)) {
            new TooltipCompatHandler(view, charSequence);
            return;
        }
        TooltipCompatHandler tooltipCompatHandler2 = TooltipCompatHandler.sActiveHandler;
        if (tooltipCompatHandler2 != null && tooltipCompatHandler2.mAnchor == view) {
            tooltipCompatHandler2.hide();
        }
        view.setOnLongClickListener(null);
        view.setLongClickable(false);
        view.setOnHoverListener(null);
    }

    public static IntProgression step(int i, IntRange intRange) {
        intRange.getClass();
        boolean z = i > 0;
        Integer valueOf = Integer.valueOf(i);
        if (!z) {
            Gson$$ExternalSyntheticBUOutline0.m$4("Step must be positive, was: ", valueOf);
            return null;
        }
        int i2 = intRange.first;
        int i3 = intRange.last;
        if (intRange.step <= 0) {
            i = -i;
        }
        return new IntProgression(i2, i3, i);
    }

    /* renamed from: toString-impl, reason: not valid java name */
    public static String m841toStringimpl(int i) {
        return i == 1 ? "Clip" : i == 2 ? "Ellipsis" : i == 5 ? "MiddleEllipsis" : i == 3 ? "Visible" : i == 4 ? "StartEllipsis" : "Invalid";
    }

    public static IntRange until(int i, int i2) {
        if (i2 > Integer.MIN_VALUE) {
            return new IntRange(i, i2 - 1, 1);
        }
        IntRange intRange = IntRange.EMPTY;
        return IntRange.EMPTY;
    }

    public static final void visitScrollCaptureCandidates(SemanticsNode semanticsNode, int i, ScrollCapture$onScrollCaptureSearch$1 scrollCapture$onScrollCaptureSearch$1) {
        SemanticsNode semanticsNode2;
        MutableVector mutableVector = new MutableVector(new SemanticsNode[16]);
        List children$ui = semanticsNode.getChildren$ui(false, false);
        while (true) {
            mutableVector.addAll(children$ui, mutableVector.size);
            while (true) {
                int i2 = mutableVector.size;
                if (i2 == 0) {
                    return;
                }
                semanticsNode2 = (SemanticsNode) mutableVector.removeAt(i2 - 1);
                boolean isHidden = SemanticsNodeKt.isHidden(semanticsNode2);
                SemanticsConfiguration semanticsConfiguration = semanticsNode2.unmergedConfig;
                MutableScatterMap mutableScatterMap = semanticsConfiguration.props;
                if (!isHidden && !mutableScatterMap.containsKey(SemanticsProperties.Disabled)) {
                    NodeCoordinator findCoordinatorToGetBounds$ui = semanticsNode2.findCoordinatorToGetBounds$ui();
                    if (findCoordinatorToGetBounds$ui == null) {
                        throw Modifier.CC.m("Expected semantics node to have a coordinator.");
                    }
                    IntRect roundToIntRect = OperationKt.roundToIntRect(RulerKt.boundsInWindow(findCoordinatorToGetBounds$ui, true));
                    if (roundToIntRect.left < roundToIntRect.right && roundToIntRect.top < roundToIntRect.bottom) {
                        Object obj = semanticsConfiguration.props.get(SemanticsActions.ScrollByOffset);
                        if (obj == null) {
                            obj = null;
                        }
                        Function2 function2 = (Function2) obj;
                        Object obj2 = mutableScatterMap.get(SemanticsProperties.VerticalScrollAxisRange);
                        ScrollAxisRange scrollAxisRange = (ScrollAxisRange) (obj2 != null ? obj2 : null);
                        if (function2 != null && scrollAxisRange != null && ((Number) scrollAxisRange.maxValue.invoke()).floatValue() > RecyclerView.DECELERATION_RATE) {
                            int i3 = 1 + i;
                            scrollCapture$onScrollCaptureSearch$1.invoke(new ScrollCaptureCandidate(semanticsNode2, i3, roundToIntRect, findCoordinatorToGetBounds$ui));
                            visitScrollCaptureCandidates(semanticsNode2, i3, scrollCapture$onScrollCaptureSearch$1);
                        }
                    }
                }
            }
            children$ui = semanticsNode2.getChildren$ui(false, false);
        }
    }

    public abstract void bind(SQLiteStatement sQLiteStatement, Object obj);

    public abstract boolean casListeners(AbstractResolvableFuture abstractResolvableFuture, AbstractResolvableFuture.Listener listener, AbstractResolvableFuture.Listener listener2);

    public abstract boolean casValue(AbstractResolvableFuture abstractResolvableFuture, Object obj, Object obj2);

    public abstract boolean casWaiters(AbstractResolvableFuture abstractResolvableFuture, AbstractResolvableFuture.Waiter waiter, AbstractResolvableFuture.Waiter waiter2);

    public abstract String createQuery();

    public float getTransitionAlpha(View view) {
        if (sTryHiddenTransitionAlpha) {
            try {
                return FileUtil.getTransitionAlpha(view);
            } catch (NoSuchMethodError unused) {
                sTryHiddenTransitionAlpha = false;
            }
        }
        return view.getAlpha();
    }

    public void insert(SQLiteConnection sQLiteConnection, Object obj) {
        sQLiteConnection.getClass();
        if (obj == null) {
            return;
        }
        SQLiteStatement prepare = sQLiteConnection.prepare(createQuery());
        try {
            bind(prepare, obj);
            prepare.step();
            TuplesKt.closeFinally(prepare, null);
        } finally {
        }
    }

    public long insertAndReturnId(SQLiteConnection sQLiteConnection, Object obj) {
        sQLiteConnection.getClass();
        if (obj == null) {
            return -1L;
        }
        SQLiteStatement prepare = sQLiteConnection.prepare(createQuery());
        try {
            bind(prepare, obj);
            prepare.step();
            TuplesKt.closeFinally(prepare, null);
            if (TuplesKt.getTotalChangedRows(sQLiteConnection) == 0) {
                return -1L;
            }
            prepare = sQLiteConnection.prepare("SELECT last_insert_rowid()");
            try {
                prepare.step();
                long j = prepare.getLong(0);
                TuplesKt.closeFinally(prepare, null);
                return j;
            } finally {
            }
        } finally {
        }
    }

    public abstract void putNext(AbstractResolvableFuture.Waiter waiter, AbstractResolvableFuture.Waiter waiter2);

    public abstract void putThread(AbstractResolvableFuture.Waiter waiter, Thread thread);

    public void setTransitionAlpha(View view, float f) {
        if (sTryHiddenTransitionAlpha) {
            try {
                FileUtil.setTransitionAlpha(view, f);
                return;
            } catch (NoSuchMethodError unused) {
                sTryHiddenTransitionAlpha = false;
            }
        }
        view.setAlpha(f);
    }

    public static int clamp(int i, int i2, int i3) {
        return i < i2 ? i2 : i > i3 ? i3 : i;
    }

    public static SourceImageSource ImageSource$default(BufferedSource bufferedSource, FileSystem fileSystem) {
        return new SourceImageSource(bufferedSource, fileSystem, null);
    }

    public static long coerceIn(long j, long j2, long j3) {
        if (j2 <= j3) {
            return j < j2 ? j2 : j > j3 ? j3 : j;
        }
        throw new IllegalArgumentException("Cannot coerce value to an empty range: maximum " + j3 + " is less than minimum " + j2 + '.');
    }

    public static float coerceIn(float f, float f2, float f3) {
        if (f2 <= f3) {
            return f < f2 ? f2 : f > f3 ? f3 : f;
        }
        throw new IllegalArgumentException("Cannot coerce value to an empty range: maximum " + f3 + " is less than minimum " + f2 + '.');
    }

    public static double coerceIn(double d, double d2, double d3) {
        if (d2 <= d3) {
            return d < d2 ? d2 : d > d3 ? d3 : d;
        }
        throw new IllegalArgumentException("Cannot coerce value to an empty range: maximum " + d3 + " is less than minimum " + d2 + '.');
    }

    public static int coerceIn(int i, int i2, int i3) {
        if (i2 <= i3) {
            return i < i2 ? i2 : i > i3 ? i3 : i;
        }
        throw new IllegalArgumentException("Cannot coerce value to an empty range: maximum " + i3 + " is less than minimum " + i2 + '.');
    }

    public static MemberScope create(String str, Collection collection) {
        MemberScope memberScope;
        collection.getClass();
        Collection collection2 = collection;
        ArrayList arrayList = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(collection2, 10));
        Iterator it = collection2.iterator();
        while (it.hasNext()) {
            arrayList.add(((KotlinType) it.next()).getMemberScope());
        }
        SmartList listOfNonEmptyScopes = TuplesKt.listOfNonEmptyScopes(arrayList);
        int i = listOfNonEmptyScopes.mySize;
        if (i == 0) {
            memberScope = MemberScope.Empty.INSTANCE;
        } else if (i != 1) {
            memberScope = new ChainedMemberScope(str, (MemberScope[]) listOfNonEmptyScopes.toArray(new MemberScope[0]));
        } else {
            memberScope = (MemberScope) listOfNonEmptyScopes.get(0);
        }
        return listOfNonEmptyScopes.mySize <= 1 ? memberScope : new LazyScopeAdapter(memberScope);
    }

    public static final void LottieAnimation(final LottieComposition lottieComposition, final Function0 function0, final Modifier modifier, final RenderMode renderMode, final AsyncUpdates asyncUpdates, GapComposer gapComposer, final int i, final int i2) {
        function0.getClass();
        gapComposer.startRestartGroup(382909894);
        gapComposer.startReplaceableGroup(185152185);
        Object rememberedValue = gapComposer.rememberedValue();
        NeverEqualPolicy neverEqualPolicy = Composer$Companion.Empty;
        if (rememberedValue == neverEqualPolicy) {
            rememberedValue = new LottieDrawable();
            gapComposer.updateRememberedValue(rememberedValue);
        }
        final LottieDrawable lottieDrawable = (LottieDrawable) rememberedValue;
        gapComposer.end(false);
        gapComposer.startReplaceableGroup(185152232);
        Object rememberedValue2 = gapComposer.rememberedValue();
        if (rememberedValue2 == neverEqualPolicy) {
            rememberedValue2 = new Matrix();
            gapComposer.updateRememberedValue(rememberedValue2);
        }
        final Matrix matrix = (Matrix) rememberedValue2;
        gapComposer.end(false);
        gapComposer.startReplaceableGroup(185152312);
        boolean changed = gapComposer.changed(lottieComposition);
        Object rememberedValue3 = gapComposer.rememberedValue();
        if (changed || rememberedValue3 == neverEqualPolicy) {
            rememberedValue3 = Updater.mutableStateOf$default(null);
            gapComposer.updateRememberedValue(rememberedValue3);
        }
        final MutableState mutableState = (MutableState) rememberedValue3;
        gapComposer.end(false);
        gapComposer.startReplaceableGroup(185152364);
        if (lottieComposition != null && lottieComposition.getDuration() != RecyclerView.DECELERATION_RATE) {
            gapComposer.end(false);
            final android.graphics.Rect rect = lottieComposition.bounds;
            final Context context = (Context) gapComposer.consume(AndroidCompositionLocals_androidKt.LocalContext);
            int width = rect.width();
            int height = rect.height();
            modifier.getClass();
            ImageKt.Canvas(modifier.then(new LottieAnimationSizeElement(width, height)), new Function1() { // from class: com.airbnb.lottie.compose.LottieAnimationKt$LottieAnimation$2
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                /* JADX WARN: Code restructure failed: missing block: B:65:0x024b, code lost:
                
                    if (r6.progress != r7.getAnimatedValueAbsolute()) goto L77;
                 */
                /* JADX WARN: Code restructure failed: missing block: B:66:0x024d, code lost:
                
                    r3.execute(r2);
                 */
                /* JADX WARN: Code restructure failed: missing block: B:70:0x0271, code lost:
                
                    if (r6.progress != r7.getAnimatedValueAbsolute()) goto L77;
                 */
                @Override // kotlin.jvm.functions.Function1
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                public final java.lang.Object invoke(java.lang.Object r18) {
                    /*
                        Method dump skipped, instructions count: 635
                        To view this dump add '--comments-level debug' option
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.airbnb.lottie.compose.LottieAnimationKt$LottieAnimation$2.invoke(java.lang.Object):java.lang.Object");
                }
            }, gapComposer, 0);
            RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
            if (endRestartGroup != null) {
                final int i3 = 1;
                endRestartGroup.block = new Function2() { // from class: com.airbnb.lottie.compose.LottieAnimationKt$LottieAnimation$1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(2);
                    }

                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj, Object obj2) {
                        int i4 = i3;
                        Unit unit = Unit.INSTANCE;
                        int i5 = i2;
                        int i6 = i;
                        switch (i4) {
                            case 0:
                                ((Number) obj2).intValue();
                                int updateChangedFlags = Updater.updateChangedFlags(i6 | 1);
                                int updateChangedFlags2 = Updater.updateChangedFlags(i5);
                                RegexKt.LottieAnimation(lottieComposition, function0, modifier, renderMode, asyncUpdates, (GapComposer) obj, updateChangedFlags, updateChangedFlags2);
                                break;
                            default:
                                ((Number) obj2).intValue();
                                int updateChangedFlags3 = Updater.updateChangedFlags(i6 | 1);
                                int updateChangedFlags4 = Updater.updateChangedFlags(i5);
                                RegexKt.LottieAnimation(lottieComposition, function0, modifier, renderMode, asyncUpdates, (GapComposer) obj, updateChangedFlags3, updateChangedFlags4);
                                break;
                        }
                        return unit;
                    }
                };
                return;
            }
            return;
        }
        BoxKt.Box(modifier, gapComposer, (i >> 6) & 14);
        gapComposer.end(false);
        RecomposeScopeImpl endRestartGroup2 = gapComposer.endRestartGroup();
        if (endRestartGroup2 != null) {
            final int i4 = 0;
            endRestartGroup2.block = new Function2() { // from class: com.airbnb.lottie.compose.LottieAnimationKt$LottieAnimation$1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(2);
                }

                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    int i42 = i4;
                    Unit unit = Unit.INSTANCE;
                    int i5 = i2;
                    int i6 = i;
                    switch (i42) {
                        case 0:
                            ((Number) obj2).intValue();
                            int updateChangedFlags = Updater.updateChangedFlags(i6 | 1);
                            int updateChangedFlags2 = Updater.updateChangedFlags(i5);
                            RegexKt.LottieAnimation(lottieComposition, function0, modifier, renderMode, asyncUpdates, (GapComposer) obj, updateChangedFlags, updateChangedFlags2);
                            break;
                        default:
                            ((Number) obj2).intValue();
                            int updateChangedFlags3 = Updater.updateChangedFlags(i6 | 1);
                            int updateChangedFlags4 = Updater.updateChangedFlags(i5);
                            RegexKt.LottieAnimation(lottieComposition, function0, modifier, renderMode, asyncUpdates, (GapComposer) obj, updateChangedFlags3, updateChangedFlags4);
                            break;
                    }
                    return unit;
                }
            };
        }
    }
}
