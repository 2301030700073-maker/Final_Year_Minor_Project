package androidx.compose.ui.unit;

import android.animation.TimeInterpolator;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.res.TypedArray;
import android.graphics.BlurMaskFilter;
import android.graphics.Path;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Parcelable;
import android.util.Log;
import android.util.SizeF;
import android.util.TypedValue;
import android.view.View;
import android.view.animation.AnimationUtils;
import android.view.animation.PathInterpolator;
import android.widget.RemoteViews;
import androidx.activity.OnBackPressedCallback$OnBackPressedEventHandler;
import androidx.activity.OnBackPressedCallbackInfo;
import androidx.activity.OnBackPressedDispatcher;
import androidx.collection.MutableScatterMap;
import androidx.collection.MutableScatterSet;
import androidx.collection.ScatterMapKt;
import androidx.compose.foundation.gestures.Orientation;
import androidx.compose.foundation.pager.PagerState;
import androidx.compose.material3.ListItemKt$ListItem$2;
import androidx.compose.runtime.Composer$Companion;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.Recomposer$$ExternalSyntheticLambda6;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.Expect_jvmKt;
import androidx.compose.runtime.saveable.SaveableStateHolderImpl;
import androidx.compose.runtime.saveable.SaverKt;
import androidx.compose.runtime.snapshots.SnapshotStateList;
import androidx.compose.runtime.tooling.ComposeStackTrace;
import androidx.compose.runtime.tooling.ComposeStackTraceFrame;
import androidx.compose.runtime.tooling.DiagnosticComposeException;
import androidx.compose.ui.graphics.AndroidPaint;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.ColorKt;
import androidx.compose.ui.node.LayoutNode$_foldedChildren$1;
import androidx.compose.ui.platform.InspectionModeKt;
import androidx.compose.ui.platform.ViewCompositionStrategy$DisposeOnDetachedFromWindowOrReleasedFromPool$$ExternalSyntheticLambda0;
import androidx.compose.ui.text.font.FontWeight;
import androidx.concurrent.futures.CallbackToFutureAdapter$SafeFuture;
import androidx.core.provider.RequestExecutor$ReplyRunnable;
import androidx.core.view.ViewKt$allViews$1;
import androidx.customview.poolingcontainer.PoolingContainerListenerHolder;
import androidx.dynamicanimation.animation.SpringForce;
import androidx.fragment.app.FragmentManager$1;
import androidx.glance.Emittable;
import androidx.glance.GlanceModifier;
import androidx.glance.appwidget.Api31Impl;
import androidx.glance.appwidget.EmittableSizeBox;
import androidx.glance.appwidget.InsertedViewInfo;
import androidx.glance.appwidget.LayoutConfiguration;
import androidx.glance.appwidget.LayoutSelectionKt;
import androidx.glance.appwidget.RemoteViewsInfo;
import androidx.glance.appwidget.RemoteViewsRoot;
import androidx.glance.appwidget.SizeMode;
import androidx.glance.appwidget.TranslationContext;
import androidx.glance.layout.Alignment;
import androidx.glance.layout.HeightModifier;
import androidx.glance.layout.WidthModifier;
import androidx.glance.session.TimeSource$Companion$$ExternalSyntheticLambda0;
import androidx.glance.unit.Dimension;
import androidx.lifecycle.Lifecycle$State;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.LifecycleRegistry;
import androidx.navigation.NavBackStackEntry;
import androidx.navigation.NavDestination;
import androidx.navigation.compose.DialogHostKt$$ExternalSyntheticLambda2;
import androidx.navigation.compose.DialogNavigator;
import androidx.paging.FlowExtKt$simpleScan$1;
import androidx.paging.HintHandler$$ExternalSyntheticLambda0;
import androidx.recyclerview.widget.RecyclerView;
import androidx.room.InvalidationTracker;
import androidx.room.Room;
import androidx.room.RoomDatabase;
import androidx.room.RoomDatabaseKt__RoomDatabase_androidKt$withTransactionContext$transactionBlock$1;
import androidx.room.RoomExternalOperationElement;
import androidx.room.TransactionElement;
import androidx.room.TransactionExecutor;
import androidx.room.TriggerBasedInvalidationTracker;
import androidx.room.coroutines.FlowUtil$createFlow$$inlined$map$1;
import androidx.work.ListenableFutureKt$$ExternalSyntheticLambda0;
import androidx.work.Operation$State;
import coil3.ImageLoader$Builder;
import coil3.util.ContextsKt;
import coil3.util.ContextsKt$$ExternalSyntheticBUOutline0;
import coil3.util.UtilsKt;
import com.caverock.androidsvg.SVG;
import com.google.android.material.R$styleable;
import com.hcaptcha.sdk.HCaptchaCompat;
import java.lang.annotation.Annotation;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.ListIterator;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import kotlin.ExceptionsKt;
import kotlin.Pair;
import kotlin.SynchronizedLazyImpl;
import kotlin.UnsignedKt;
import kotlin.collections.AbstractMutableList;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.CollectionsKt__IteratorsJVMKt;
import kotlin.collections.EmptyList;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.collections.builders.ListBuilder;
import kotlin.collections.builders.SetBuilder;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.internal.PlatformImplementations$ReflectThrowable;
import kotlin.internal.jdk7.JDK7PlatformImplementations$ReflectSdkVersion;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.KProperty;
import kotlin.reflect.jvm.internal.KTypeImpl$arguments$2;
import kotlin.reflect.jvm.internal.impl.descriptors.PropertyDescriptor;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Function;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Property;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Type;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$ValueParameter;
import kotlin.reflect.jvm.internal.impl.storage.NotNullLazyValue;
import kotlin.sequences.SequenceBuilderIterator;
import kotlin.uuid.UuidKt;
import kotlinx.coroutines.AwaitKt;
import kotlinx.coroutines.CancellableContinuationImpl;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.CoroutineStart;
import kotlinx.coroutines.CoroutinesInternalError;
import kotlinx.coroutines.channels.BufferOverflow;
import kotlinx.coroutines.channels.BufferedChannel;
import kotlinx.coroutines.channels.Channel;
import kotlinx.coroutines.channels.ConflatedBufferedChannel;
import kotlinx.coroutines.flow.ReadonlyStateFlow;
import kotlinx.coroutines.flow.SafeFlow;
import kotlinx.coroutines.flow.StateFlowKt;
import okhttp3.Dispatcher$promoteAndExecute$Effects;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.wikipedia.R;
import org.wikipedia.feed.HomeScreenKt$$ExternalSyntheticLambda17;
import org.wikipedia.util.ShareUtil$shareImage$2$uri$1;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class DpKt {
    public static BufferedChannel Channel$default(int i, int i2, BufferOverflow bufferOverflow) {
        if ((i2 & 1) != 0) {
            i = 0;
        }
        if ((i2 & 2) != 0) {
            bufferOverflow = BufferOverflow.SUSPEND;
        }
        if (i == -2) {
            if (bufferOverflow != BufferOverflow.SUSPEND) {
                return new ConflatedBufferedChannel(1, bufferOverflow);
            }
            Channel.Factory.getClass();
            return new BufferedChannel(Channel.Factory.CHANNEL_DEFAULT_CAPACITY);
        }
        if (i != -1) {
            return i != 0 ? i != Integer.MAX_VALUE ? bufferOverflow == BufferOverflow.SUSPEND ? new BufferedChannel(i) : new ConflatedBufferedChannel(i, bufferOverflow) : new BufferedChannel(Integer.MAX_VALUE) : bufferOverflow == BufferOverflow.SUSPEND ? new BufferedChannel(0) : new ConflatedBufferedChannel(1, bufferOverflow);
        }
        if (bufferOverflow == BufferOverflow.SUSPEND) {
            return new ConflatedBufferedChannel(1, BufferOverflow.DROP_OLDEST);
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m("CONFLATED capacity cannot be used with non-default onBufferOverflow");
        return null;
    }

    public static final void DialogHost(DialogNavigator dialogNavigator, GapComposer gapComposer, int i) {
        SnapshotStateList snapshotStateList;
        DialogNavigator dialogNavigator2 = dialogNavigator;
        gapComposer.startRestartGroup(294589392);
        int i2 = 25;
        if ((((gapComposer.changedInstance(dialogNavigator2) ? 4 : 2) | i) & 3) == 2 && gapComposer.getSkipping()) {
            gapComposer.skipToGroupEnd();
        } else {
            SaveableStateHolderImpl rememberSaveableStateHolder = SaverKt.rememberSaveableStateHolder(gapComposer);
            ReadonlyStateFlow readonlyStateFlow = dialogNavigator2.getState().backStack;
            MutableState collectAsState = Updater.collectAsState(readonlyStateFlow, readonlyStateFlow.getValue(), gapComposer, 0, 0);
            List list = (List) collectAsState.getValue();
            boolean booleanValue = ((Boolean) gapComposer.consume(InspectionModeKt.LocalInspectionMode)).booleanValue();
            boolean changed = gapComposer.changed(list);
            Object rememberedValue = gapComposer.rememberedValue();
            Object obj = Composer$Companion.Empty;
            Object obj2 = rememberedValue;
            if (changed || rememberedValue == obj) {
                SnapshotStateList snapshotStateList2 = new SnapshotStateList();
                ArrayList arrayList = new ArrayList();
                for (Object obj3 : list) {
                    if (booleanValue ? true : ((NavBackStackEntry) obj3).impl.lifecycle.state.isAtLeast(Lifecycle$State.STARTED)) {
                        arrayList.add(obj3);
                    }
                }
                snapshotStateList2.addAll(arrayList);
                gapComposer.updateRememberedValue(snapshotStateList2);
                obj2 = snapshotStateList2;
            }
            SnapshotStateList snapshotStateList3 = (SnapshotStateList) obj2;
            PopulateVisibleList(snapshotStateList3, (List) collectAsState.getValue(), gapComposer, 0);
            ReadonlyStateFlow readonlyStateFlow2 = dialogNavigator2.getState().transitionsInProgress;
            MutableState collectAsState2 = Updater.collectAsState(readonlyStateFlow2, readonlyStateFlow2.getValue(), gapComposer, 0, 0);
            Object rememberedValue2 = gapComposer.rememberedValue();
            if (rememberedValue2 == obj) {
                rememberedValue2 = new SnapshotStateList();
                gapComposer.updateRememberedValue(rememberedValue2);
            }
            SnapshotStateList snapshotStateList4 = (SnapshotStateList) rememberedValue2;
            gapComposer.startReplaceGroup(-367418626);
            ListIterator listIterator = snapshotStateList3.listIterator();
            while (true) {
                ListBuilder.Itr itr = (ListBuilder.Itr) listIterator;
                if (!itr.hasNext()) {
                    break;
                }
                NavBackStackEntry navBackStackEntry = (NavBackStackEntry) itr.next();
                NavDestination navDestination = navBackStackEntry.destination;
                navDestination.getClass();
                DialogNavigator.Destination destination = (DialogNavigator.Destination) navDestination;
                boolean changedInstance = gapComposer.changedInstance(dialogNavigator2) | gapComposer.changedInstance(navBackStackEntry);
                Object rememberedValue3 = gapComposer.rememberedValue();
                if (changedInstance || rememberedValue3 == obj) {
                    rememberedValue3 = new Recomposer$$ExternalSyntheticLambda6(i2, dialogNavigator2, navBackStackEntry);
                    gapComposer.updateRememberedValue(rememberedValue3);
                }
                UtilsKt.Dialog((Function0) rememberedValue3, destination.dialogProperties, Expect_jvmKt.rememberComposableLambda(1129586364, new ListItemKt$ListItem$2(navBackStackEntry, dialogNavigator2, rememberSaveableStateHolder, snapshotStateList4, destination), gapComposer), gapComposer, 384, 0);
                dialogNavigator2 = dialogNavigator2;
                rememberSaveableStateHolder = rememberSaveableStateHolder;
                snapshotStateList4 = snapshotStateList4;
            }
            DialogNavigator dialogNavigator3 = dialogNavigator2;
            SnapshotStateList snapshotStateList5 = snapshotStateList4;
            gapComposer.end(false);
            Set set = (Set) collectAsState2.getValue();
            boolean changed2 = gapComposer.changed(collectAsState2) | gapComposer.changedInstance(dialogNavigator3);
            Object rememberedValue4 = gapComposer.rememberedValue();
            if (changed2 || rememberedValue4 == obj) {
                dialogNavigator2 = dialogNavigator3;
                snapshotStateList = snapshotStateList5;
                Object shareUtil$shareImage$2$uri$1 = new ShareUtil$shareImage$2$uri$1(collectAsState2, dialogNavigator2, snapshotStateList, null, 3);
                gapComposer.updateRememberedValue(shareUtil$shareImage$2$uri$1);
                rememberedValue4 = shareUtil$shareImage$2$uri$1;
            } else {
                dialogNavigator2 = dialogNavigator3;
                snapshotStateList = snapshotStateList5;
            }
            Updater.LaunchedEffect(set, snapshotStateList, (Function2) rememberedValue4, gapComposer);
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new HintHandler$$ExternalSyntheticLambda0(i, i2, dialogNavigator2);
        }
    }

    /* renamed from: DpSize-YgX7TsA, reason: not valid java name */
    public static final long m695DpSizeYgX7TsA(float f, float f2) {
        return (Float.floatToRawIntBits(f2) & 4294967295L) | (Float.floatToRawIntBits(f) << 32);
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0036  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0053  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0072  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x009c  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x00a8  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0208  */
    /* JADX WARN: Removed duplicated region for block: B:36:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:73:0x01ef  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x009f  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x0078  */
    /* JADX WARN: Removed duplicated region for block: B:82:0x0058  */
    /* JADX WARN: Removed duplicated region for block: B:89:0x003b  */
    /* renamed from: HorizontalPager--8jOkeI, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void m696HorizontalPager8jOkeI(final androidx.compose.foundation.pager.PagerState r20, androidx.compose.ui.Modifier r21, androidx.compose.foundation.layout.PaddingValues r22, androidx.compose.foundation.pager.PageSize$Fill r23, int r24, androidx.compose.ui.BiasAlignment.Vertical r25, androidx.compose.foundation.gestures.snapping.SnapFlingBehavior r26, boolean r27, androidx.compose.ui.input.nestedscroll.NestedScrollConnection r28, androidx.compose.foundation.gestures.snapping.SnapPosition$Start r29, androidx.compose.foundation.AndroidEdgeEffectOverscrollEffect r30, final androidx.compose.runtime.internal.ComposableLambdaImpl r31, androidx.compose.runtime.GapComposer r32, final int r33, final int r34) {
        /*
            Method dump skipped, instructions count: 536
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.ui.unit.DpKt.m696HorizontalPager8jOkeI(androidx.compose.foundation.pager.PagerState, androidx.compose.ui.Modifier, androidx.compose.foundation.layout.PaddingValues, androidx.compose.foundation.pager.PageSize$Fill, int, androidx.compose.ui.BiasAlignment$Vertical, androidx.compose.foundation.gestures.snapping.SnapFlingBehavior, boolean, androidx.compose.ui.input.nestedscroll.NestedScrollConnection, androidx.compose.foundation.gestures.snapping.SnapPosition$Start, androidx.compose.foundation.AndroidEdgeEffectOverscrollEffect, androidx.compose.runtime.internal.ComposableLambdaImpl, androidx.compose.runtime.GapComposer, int, int):void");
    }

    public static final void PopulateVisibleList(List list, Collection collection, GapComposer gapComposer, int i) {
        gapComposer.startRestartGroup(1537894851);
        if ((((gapComposer.changedInstance(list) ? 4 : 2) | i | (gapComposer.changedInstance(collection) ? 32 : 16)) & 19) == 18 && gapComposer.getSkipping()) {
            gapComposer.skipToGroupEnd();
        } else {
            boolean booleanValue = ((Boolean) gapComposer.consume(InspectionModeKt.LocalInspectionMode)).booleanValue();
            Iterator it = collection.iterator();
            while (it.hasNext()) {
                NavBackStackEntry navBackStackEntry = (NavBackStackEntry) it.next();
                LifecycleRegistry lifecycleRegistry = navBackStackEntry.impl.lifecycle;
                boolean changed = gapComposer.changed(booleanValue) | gapComposer.changedInstance(list) | gapComposer.changedInstance(navBackStackEntry);
                Object rememberedValue = gapComposer.rememberedValue();
                if (changed || rememberedValue == Composer$Companion.Empty) {
                    rememberedValue = new DialogHostKt$$ExternalSyntheticLambda2(navBackStackEntry, list, booleanValue);
                    gapComposer.updateRememberedValue(rememberedValue);
                }
                Updater.DisposableEffect(lifecycleRegistry, (Function1) rememberedValue, gapComposer);
            }
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new HomeScreenKt$$ExternalSyntheticLambda17(list, collection, i, 17);
        }
    }

    /* renamed from: add-impl, reason: not valid java name */
    public static final void m697addimpl(MutableScatterMap mutableScatterMap, Object obj, Object obj2) {
        int findInsertIndex = mutableScatterMap.findInsertIndex(obj);
        boolean z = findInsertIndex < 0;
        Object obj3 = z ? null : mutableScatterMap.values[findInsertIndex];
        if (obj3 != null) {
            if (obj3 instanceof MutableScatterSet) {
                ((MutableScatterSet) obj3).add(obj2);
            } else if (obj3 != obj2) {
                MutableScatterSet mutableScatterSet = new MutableScatterSet();
                mutableScatterSet.add(obj3);
                mutableScatterSet.add(obj2);
                obj2 = mutableScatterSet;
            }
            obj2 = obj3;
        }
        if (!z) {
            mutableScatterMap.values[findInsertIndex] = obj2;
            return;
        }
        int i = ~findInsertIndex;
        mutableScatterMap.keys[i] = obj;
        mutableScatterMap.values[i] = obj2;
    }

    public static void addCallback$default(OnBackPressedDispatcher onBackPressedDispatcher, LifecycleOwner lifecycleOwner, Function1 function1) {
        onBackPressedDispatcher.getClass();
        FragmentManager$1 fragmentManager$1 = new FragmentManager$1(1, function1);
        if (lifecycleOwner != null) {
            onBackPressedDispatcher.addCallback(fragmentManager$1, lifecycleOwner);
            return;
        }
        OnBackPressedCallback$OnBackPressedEventHandler onBackPressedCallback$OnBackPressedEventHandler = new OnBackPressedCallback$OnBackPressedEventHandler(fragmentManager$1, new OnBackPressedCallbackInfo(fragmentManager$1, null));
        fragmentManager$1.eventHandlers.add(onBackPressedCallback$OnBackPressedEventHandler);
        ImageLoader$Builder.addHandler$default(onBackPressedDispatcher.getEventInput().dispatcher, onBackPressedCallback$OnBackPressedEventHandler);
    }

    public static final void callPoolingContainerOnRelease(View view) {
        view.getClass();
        SequenceBuilderIterator it = UnsignedKt.iterator(new ViewKt$allViews$1(0, view, null));
        while (it.hasNext()) {
            ArrayList arrayList = getPoolingContainerListenerHolder((View) it.next()).listeners;
            int size = arrayList.size();
            while (true) {
                size--;
                if (-1 < size) {
                    ((ViewCompositionStrategy$DisposeOnDetachedFromWindowOrReleasedFromPool$$ExternalSyntheticLambda0) arrayList.get(size)).f$0.disposeComposition();
                }
            }
        }
    }

    public static final Object compatTransactionCoroutineExecute(RoomDatabase roomDatabase, Continuation continuation, Function1 function1) {
        return (roomDatabase.inCompatibilityMode() && roomDatabase.isOpenInternal$room_runtime() && roomDatabase.inTransaction()) ? function1.invoke(continuation) : continuation.getContext().get(RoomExternalOperationElement.INSTANCE) == null ? function1.invoke(continuation) : withTransactionContext(roomDatabase, continuation, function1);
    }

    /* renamed from: configureShadow-FoewPVk$default, reason: not valid java name */
    public static AndroidPaint m698configureShadowFoewPVk$default(AndroidPaint androidPaint, BlurMaskFilter blurMaskFilter, int i) {
        long j = Color.Black;
        int i2 = (i & 8) != 0 ? 0 : 1;
        androidPaint.m411setColor8_81llA(j);
        androidPaint.m410setBlendModes9anfk8(3);
        androidPaint.m415setStylek9PVt8s(i2);
        ColorKt.getNativePaint(androidPaint).setMaskFilter(blurMaskFilter);
        return androidPaint;
    }

    /* renamed from: constructor-impl$default, reason: not valid java name */
    public static MutableScatterMap m699constructorimpl$default() {
        long[] jArr = ScatterMapKt.EmptyGroup;
        return new MutableScatterMap();
    }

    public static final Object createAnnotationInstance(final Class cls, final Map map, final List list) {
        cls.getClass();
        list.getClass();
        final SynchronizedLazyImpl synchronizedLazyImpl = new SynchronizedLazyImpl(new LayoutNode$_foldedChildren$1(27, map));
        final SynchronizedLazyImpl synchronizedLazyImpl2 = new SynchronizedLazyImpl(new KTypeImpl$arguments$2(13, cls, map));
        Object newProxyInstance = Proxy.newProxyInstance(cls.getClassLoader(), new Class[]{cls}, new InvocationHandler(cls, map, synchronizedLazyImpl2, synchronizedLazyImpl, list) { // from class: kotlin.reflect.jvm.internal.calls.AnnotationConstructorCallerKt$$Lambda$0
            public final Class arg$0;
            public final Map arg$1;
            public final SynchronizedLazyImpl arg$2;
            public final SynchronizedLazyImpl arg$3;
            public final List arg$4;

            {
                this.arg$0 = cls;
                this.arg$1 = map;
                this.arg$2 = synchronizedLazyImpl2;
                this.arg$3 = synchronizedLazyImpl;
                this.arg$4 = list;
            }

            @Override // java.lang.reflect.InvocationHandler
            public final Object invoke(Object obj, Method method, Object[] objArr) {
                boolean areEqual;
                Class cls2 = this.arg$0;
                cls2.getClass();
                List<Method> list2 = this.arg$4;
                list2.getClass();
                String name = method.getName();
                if (name != null) {
                    int hashCode = name.hashCode();
                    if (hashCode != -1776922004) {
                        if (hashCode != 147696667) {
                            if (hashCode == 1444986633 && name.equals("annotationType")) {
                                return cls2;
                            }
                        } else if (name.equals("hashCode")) {
                            return Integer.valueOf(((Number) this.arg$3.getValue()).intValue());
                        }
                    } else if (name.equals("toString")) {
                        return (String) this.arg$2.getValue();
                    }
                }
                boolean areEqual2 = Intrinsics.areEqual(name, "equals");
                Map map2 = this.arg$1;
                boolean z = false;
                if (!areEqual2 || objArr == null || objArr.length != 1) {
                    if (map2.containsKey(name)) {
                        return map2.get(name);
                    }
                    StringBuilder sb = new StringBuilder("Method is not supported: ");
                    sb.append(method);
                    sb.append(" (args: ");
                    if (objArr == null) {
                        objArr = new Object[0];
                    }
                    sb.append(ArraysKt___ArraysKt.toList(objArr));
                    sb.append(')');
                    throw new CoroutinesInternalError(sb.toString());
                }
                Object single = ArraysKt___ArraysKt.single(objArr);
                Annotation annotation = single instanceof Annotation ? (Annotation) single : null;
                if (Intrinsics.areEqual(annotation != null ? UnsignedKt.getJavaClass(UnsignedKt.getAnnotationClass(annotation)) : null, cls2)) {
                    if (!list2.isEmpty()) {
                        for (Method method2 : list2) {
                            Object obj2 = map2.get(method2.getName());
                            Object invoke = method2.invoke(single, null);
                            if (obj2 instanceof boolean[]) {
                                invoke.getClass();
                                areEqual = Arrays.equals((boolean[]) obj2, (boolean[]) invoke);
                            } else if (obj2 instanceof char[]) {
                                invoke.getClass();
                                areEqual = Arrays.equals((char[]) obj2, (char[]) invoke);
                            } else if (obj2 instanceof byte[]) {
                                invoke.getClass();
                                areEqual = Arrays.equals((byte[]) obj2, (byte[]) invoke);
                            } else if (obj2 instanceof short[]) {
                                invoke.getClass();
                                areEqual = Arrays.equals((short[]) obj2, (short[]) invoke);
                            } else if (obj2 instanceof int[]) {
                                invoke.getClass();
                                areEqual = Arrays.equals((int[]) obj2, (int[]) invoke);
                            } else if (obj2 instanceof float[]) {
                                invoke.getClass();
                                areEqual = Arrays.equals((float[]) obj2, (float[]) invoke);
                            } else if (obj2 instanceof long[]) {
                                invoke.getClass();
                                areEqual = Arrays.equals((long[]) obj2, (long[]) invoke);
                            } else if (obj2 instanceof double[]) {
                                invoke.getClass();
                                areEqual = Arrays.equals((double[]) obj2, (double[]) invoke);
                            } else if (obj2 instanceof Object[]) {
                                invoke.getClass();
                                areEqual = Arrays.equals((Object[]) obj2, (Object[]) invoke);
                            } else {
                                areEqual = Intrinsics.areEqual(obj2, invoke);
                            }
                            if (!areEqual) {
                                break;
                            }
                        }
                    }
                    z = true;
                }
                return Boolean.valueOf(z);
            }
        });
        newProxyInstance.getClass();
        return newProxyInstance;
    }

    public static Handler createAsync(Looper looper) {
        Handler createAsync;
        if (Build.VERSION.SDK_INT >= 28) {
            createAsync = Handler.createAsync(looper);
            return createAsync;
        }
        try {
            return (Handler) Handler.class.getDeclaredConstructor(Looper.class, Handler.Callback.class, Boolean.TYPE).newInstance(looper, null, Boolean.TRUE);
        } catch (IllegalAccessException e) {
            e = e;
            Log.w("HandlerCompat", "Unable to invoke Handler(Looper, Callback, boolean) constructor", e);
            return new Handler(looper);
        } catch (InstantiationException e2) {
            e = e2;
            Log.w("HandlerCompat", "Unable to invoke Handler(Looper, Callback, boolean) constructor", e);
            return new Handler(looper);
        } catch (NoSuchMethodException e3) {
            e = e3;
            Log.w("HandlerCompat", "Unable to invoke Handler(Looper, Callback, boolean) constructor", e);
            return new Handler(looper);
        } catch (InvocationTargetException e4) {
            Throwable cause = e4.getCause();
            if (cause instanceof RuntimeException) {
                throw ((RuntimeException) cause);
            }
            if (cause instanceof Error) {
                throw ((Error) cause);
            }
            _UtilJvmKt$$ExternalSyntheticLambda0.m(cause);
            return null;
        }
    }

    public static final FlowUtil$createFlow$$inlined$map$1 createFlow(RoomDatabase roomDatabase, String[] strArr, Function1 function1) {
        Pair pair;
        InvalidationTracker invalidationTracker = roomDatabase.getInvalidationTracker();
        String[] strArr2 = (String[]) Arrays.copyOf(strArr, strArr.length);
        TriggerBasedInvalidationTracker triggerBasedInvalidationTracker = invalidationTracker.implementation;
        triggerBasedInvalidationTracker.getClass();
        SetBuilder setBuilder = new SetBuilder();
        int i = 0;
        for (String str : strArr2) {
            LinkedHashMap linkedHashMap = triggerBasedInvalidationTracker.viewTables;
            String lowerCase = str.toLowerCase(Locale.ROOT);
            lowerCase.getClass();
            Set set = (Set) linkedHashMap.get(lowerCase);
            if (set != null) {
                setBuilder.addAll(set);
            } else {
                setBuilder.add(str);
            }
        }
        String[] strArr3 = (String[]) UuidKt.build(setBuilder).toArray(new String[0]);
        int length = strArr3.length;
        int[] iArr = new int[length];
        int i2 = 0;
        while (true) {
            if (i2 >= length) {
                pair = new Pair(strArr3, iArr);
                break;
            }
            String str2 = strArr3[i2];
            LinkedHashMap linkedHashMap2 = triggerBasedInvalidationTracker.tableIdLookup;
            String lowerCase2 = str2.toLowerCase(Locale.ROOT);
            lowerCase2.getClass();
            Integer num = (Integer) linkedHashMap2.get(lowerCase2);
            if (num == null) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m("There is no table with name ".concat(str2));
                pair = null;
                break;
            }
            iArr[i2] = num.intValue();
            i2++;
        }
        String[] strArr4 = (String[]) pair.first;
        int[] iArr2 = (int[]) pair.second;
        strArr4.getClass();
        iArr2.getClass();
        return new FlowUtil$createFlow$$inlined$map$1(StateFlowKt.buffer$default(new SafeFlow(i, new FlowExtKt$simpleScan$1(triggerBasedInvalidationTracker, iArr2, strArr4, (Continuation) null, 23)), -1), roomDatabase, function1, i);
    }

    public static final float dragGestureDelta(PagerState pagerState) {
        return pagerState.getLayoutInfo().orientation == Orientation.Horizontal ? Float.intBitsToFloat((int) (pagerState.m173getUpDownDifferenceF1C5BW0$foundation() >> 32)) : Float.intBitsToFloat((int) (pagerState.m173getUpDownDifferenceF1C5BW0$foundation() & 4294967295L));
    }

    public static final GlanceModifier fillMaxSize(GlanceModifier glanceModifier) {
        return fillMaxWidth(glanceModifier).then(new HeightModifier(Dimension.Fill.INSTANCE));
    }

    public static final GlanceModifier fillMaxWidth(GlanceModifier glanceModifier) {
        return glanceModifier.then(new WidthModifier(Dimension.Fill.INSTANCE));
    }

    /* renamed from: getAndroidTypefaceStyle-FO1MlWM, reason: not valid java name */
    public static final int m700getAndroidTypefaceStyleFO1MlWM(FontWeight fontWeight, int i) {
        boolean z = Intrinsics.compare(fontWeight.weight, FontWeight.W600.weight) >= 0;
        boolean z2 = i == 1;
        if (z2 && z) {
            return 3;
        }
        if (z) {
            return 1;
        }
        return z2 ? 2 : 0;
    }

    /* renamed from: getInt-impl, reason: not valid java name */
    public static final int m701getIntimpl(Bundle bundle, String str) {
        int i = bundle.getInt(str, Integer.MIN_VALUE);
        if (i != Integer.MIN_VALUE || bundle.getInt(str, Integer.MAX_VALUE) != Integer.MAX_VALUE) {
            return i;
        }
        Operation$State.keyOrValueNotFoundError(str);
        throw null;
    }

    public static float getLegacyControlPoint(String[] strArr, int i) {
        float parseFloat = Float.parseFloat(strArr[i]);
        if (parseFloat >= RecyclerView.DECELERATION_RATE && parseFloat <= 1.0f) {
            return parseFloat;
        }
        throw new IllegalArgumentException("Motion easing control point value must be between 0 and 1; instead got: " + parseFloat);
    }

    public static Object getParcelableExtra(Intent intent, String str, Class cls) {
        if (Build.VERSION.SDK_INT >= 34) {
            return HCaptchaCompat.getParcelableExtra(intent, str, cls);
        }
        Parcelable parcelableExtra = intent.getParcelableExtra(str);
        if (cls.isInstance(parcelableExtra)) {
            return parcelableExtra;
        }
        return null;
    }

    public static final PoolingContainerListenerHolder getPoolingContainerListenerHolder(View view) {
        PoolingContainerListenerHolder poolingContainerListenerHolder = (PoolingContainerListenerHolder) view.getTag(R.id.pooling_container_listener_holder_tag);
        if (poolingContainerListenerHolder != null) {
            return poolingContainerListenerHolder;
        }
        PoolingContainerListenerHolder poolingContainerListenerHolder2 = new PoolingContainerListenerHolder();
        view.setTag(R.id.pooling_container_listener_holder_tag, poolingContainerListenerHolder2);
        return poolingContainerListenerHolder2;
    }

    /* renamed from: getSavedState-impl, reason: not valid java name */
    public static final Bundle m702getSavedStateimpl(Bundle bundle, String str) {
        Bundle bundle2 = bundle.getBundle(str);
        if (bundle2 != null) {
            return bundle2;
        }
        Operation$State.keyOrValueNotFoundError(str);
        throw null;
    }

    public static final Object getValue(NotNullLazyValue notNullLazyValue, KProperty kProperty) {
        notNullLazyValue.getClass();
        kProperty.getClass();
        return notNullLazyValue.invoke();
    }

    /* renamed from: height-3ABfNKs, reason: not valid java name */
    public static final GlanceModifier m703height3ABfNKs(GlanceModifier glanceModifier, float f) {
        return glanceModifier.then(new HeightModifier(new Dimension.Dp(f)));
    }

    public static final boolean isJavaField(PropertyDescriptor propertyDescriptor) {
        propertyDescriptor.getClass();
        return propertyDescriptor.getGetter() == null;
    }

    public static boolean isLegacyEasingType(String str, String str2) {
        return str.startsWith(str2.concat("(")) && str.endsWith(")");
    }

    /* renamed from: isNull-impl, reason: not valid java name */
    public static final boolean m704isNullimpl(Bundle bundle, String str) {
        str.getClass();
        return bundle.containsKey(str) && bundle.get(str) == null;
    }

    public static final boolean isScrollingForward(PagerState pagerState, float f) {
        pagerState.getLayoutInfo().getClass();
        return !(((pagerState.isNotGestureAction$foundation() ? -f : dragGestureDelta(pagerState)) > RecyclerView.DECELERATION_RATE ? 1 : ((pagerState.isNotGestureAction$foundation() ? -f : dragGestureDelta(pagerState)) == RecyclerView.DECELERATION_RATE ? 0 : -1)) > 0);
    }

    public static CallbackToFutureAdapter$SafeFuture launchFuture$default(CoroutineContext coroutineContext, Function2 function2) {
        CoroutineStart coroutineStart = CoroutineStart.DEFAULT;
        coroutineContext.getClass();
        coroutineStart.getClass();
        return Room.getFuture(new ListenableFutureKt$$ExternalSyntheticLambda0(coroutineContext, coroutineStart, function2, 1));
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x0034  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0022  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object readBuffer(coil3.network.SourceResponseBody r5, kotlin.coroutines.jvm.internal.ContinuationImpl r6) {
        /*
            boolean r0 = r6 instanceof coil3.network.internal.UtilsKt$readBuffer$1
            if (r0 == 0) goto L13
            r0 = r6
            coil3.network.internal.UtilsKt$readBuffer$1 r0 = (coil3.network.internal.UtilsKt$readBuffer$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            coil3.network.internal.UtilsKt$readBuffer$1 r0 = new coil3.network.internal.UtilsKt$readBuffer$1
            r0.<init>(r6)
        L18:
            java.lang.Object r6 = r0.result
            kotlin.coroutines.intrinsics.CoroutineSingletons r1 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r2 = r0.label
            r3 = 1
            r4 = 0
            if (r2 == 0) goto L34
            if (r2 != r3) goto L2e
            okio.Buffer r5 = r0.L$1
            coil3.network.SourceResponseBody r0 = r0.L$0
            kotlin.ResultKt.throwOnFailure(r6)     // Catch: java.lang.Throwable -> L2c
            goto L4e
        L2c:
            r5 = move-exception
            goto L57
        L2e:
            java.lang.String r5 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$1(r5)
            return r4
        L34:
            kotlin.ResultKt.throwOnFailure(r6)
            okio.Buffer r6 = new okio.Buffer     // Catch: java.lang.Throwable -> L55
            r6.<init>()     // Catch: java.lang.Throwable -> L55
            r0.L$0 = r5     // Catch: java.lang.Throwable -> L55
            r0.L$1 = r6     // Catch: java.lang.Throwable -> L55
            r0.label = r3     // Catch: java.lang.Throwable -> L55
            okio.BufferedSource r0 = r5.source     // Catch: java.lang.Throwable -> L55
            r0.readAll(r6)     // Catch: java.lang.Throwable -> L55
            kotlin.Unit r0 = kotlin.Unit.INSTANCE     // Catch: java.lang.Throwable -> L55
            if (r0 != r1) goto L4c
            return r1
        L4c:
            r0 = r5
            r5 = r6
        L4e:
            kotlin.TuplesKt.closeFinally(r0, r4)
            return r5
        L52:
            r0 = r5
            r5 = r6
            goto L57
        L55:
            r6 = move-exception
            goto L52
        L57:
            throw r5     // Catch: java.lang.Throwable -> L58
        L58:
            r6 = move-exception
            kotlin.TuplesKt.closeFinally(r0, r5)
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.ui.unit.DpKt.readBuffer(coil3.network.SourceResponseBody, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    /* renamed from: remove-impl, reason: not valid java name */
    public static final boolean m705removeimpl(MutableScatterMap mutableScatterMap, Object obj, Object obj2) {
        Object obj3 = mutableScatterMap.get(obj);
        if (obj3 == null) {
            return false;
        }
        if (!(obj3 instanceof MutableScatterSet)) {
            if (!obj3.equals(obj2)) {
                return false;
            }
            mutableScatterMap.remove(obj);
            return true;
        }
        MutableScatterSet mutableScatterSet = (MutableScatterSet) obj3;
        boolean remove = mutableScatterSet.remove(obj2);
        if (remove && mutableScatterSet.isEmpty()) {
            mutableScatterMap.remove(obj);
        }
        return remove;
    }

    /* renamed from: removeScope-impl, reason: not valid java name */
    public static final void m706removeScopeimpl(MutableScatterMap mutableScatterMap, Object obj) {
        boolean z;
        long[] jArr = mutableScatterMap.metadata;
        int length = jArr.length - 2;
        if (length < 0) {
            return;
        }
        int i = 0;
        while (true) {
            long j = jArr[i];
            if ((((~j) << 7) & j & (-9187201950435737472L)) != -9187201950435737472L) {
                int i2 = 8 - ((~(i - length)) >>> 31);
                for (int i3 = 0; i3 < i2; i3++) {
                    if ((255 & j) < 128) {
                        int i4 = (i << 3) + i3;
                        Object obj2 = mutableScatterMap.keys[i4];
                        Object obj3 = mutableScatterMap.values[i4];
                        if (obj3 instanceof MutableScatterSet) {
                            MutableScatterSet mutableScatterSet = (MutableScatterSet) obj3;
                            mutableScatterSet.remove(obj);
                            z = mutableScatterSet.isEmpty();
                        } else {
                            z = obj3 == obj;
                        }
                        if (z) {
                            mutableScatterMap.removeValueAt(i4);
                        }
                    }
                    j >>= 8;
                }
                if (i2 != 8) {
                    return;
                }
            }
            if (i == length) {
                return;
            } else {
                i++;
            }
        }
    }

    public static final void resetRange(Object[] objArr, int i, int i2) {
        objArr.getClass();
        while (i < i2) {
            objArr[i] = null;
            i++;
        }
    }

    public static TimeInterpolator resolveThemeInterpolator(Context context, int i, TimeInterpolator timeInterpolator) {
        TypedValue typedValue = new TypedValue();
        if (!context.getTheme().resolveAttribute(i, typedValue, true)) {
            return timeInterpolator;
        }
        if (typedValue.type != 3) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m("Motion easing theme attribute must be an @interpolator resource for ?attr/motionEasing*Interpolator attributes or a string for ?attr/motionEasing* attributes.");
            return null;
        }
        String valueOf = String.valueOf(typedValue.string);
        if (!isLegacyEasingType(valueOf, "cubic-bezier") && !isLegacyEasingType(valueOf, "path")) {
            return AnimationUtils.loadInterpolator(context, typedValue.resourceId);
        }
        if (isLegacyEasingType(valueOf, "cubic-bezier")) {
            String[] split = valueOf.substring(13, valueOf.length() - 1).split(",");
            if (split.length == 4) {
                return new PathInterpolator(getLegacyControlPoint(split, 0), getLegacyControlPoint(split, 1), getLegacyControlPoint(split, 2), getLegacyControlPoint(split, 3));
            }
            TimeSource$Companion$$ExternalSyntheticLambda0.m(split.length, "Motion easing theme attribute must have 4 control points if using bezier curve format; instead got: ");
            return null;
        }
        if (!isLegacyEasingType(valueOf, "path")) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m("Invalid motion easing type: ".concat(valueOf));
            return null;
        }
        String substring = valueOf.substring(5, valueOf.length() - 1);
        Path path = new Path();
        try {
            ContextsKt.nodesToPath(ContextsKt.createNodesFromPathData(substring), path);
            return new PathInterpolator(path);
        } catch (RuntimeException e) {
            ContextsKt$$ExternalSyntheticBUOutline0.m("Error in parsing ".concat(substring), (Throwable) e);
            return null;
        }
    }

    public static SpringForce resolveThemeSpringForce(Context context) {
        TypedValue resolve = Operation$State.resolve(context.getTheme(), R.attr.motionSpringFastSpatial);
        int[] iArr = R$styleable.MaterialSpring;
        TypedArray obtainStyledAttributes = resolve == null ? context.obtainStyledAttributes(null, iArr, 0, R.style.Motion_Material3_Spring_Standard_Fast_Spatial) : context.obtainStyledAttributes(resolve.resourceId, iArr);
        SpringForce springForce = new SpringForce();
        try {
            float f = obtainStyledAttributes.getFloat(1, Float.MIN_VALUE);
            if (f == Float.MIN_VALUE) {
                throw new IllegalArgumentException("A MaterialSpring style must have stiffness value.");
            }
            float f2 = obtainStyledAttributes.getFloat(0, Float.MIN_VALUE);
            if (f2 == Float.MIN_VALUE) {
                throw new IllegalArgumentException("A MaterialSpring style must have a damping value.");
            }
            springForce.setStiffness(f);
            springForce.setDampingRatio(f2);
            return springForce;
        } finally {
            obtainStyledAttributes.recycle();
        }
    }

    public static final ProtoBuf$Type returnType(ProtoBuf$Function protoBuf$Function, Dispatcher$promoteAndExecute$Effects dispatcher$promoteAndExecute$Effects) {
        dispatcher$promoteAndExecute$Effects.getClass();
        int i = protoBuf$Function.bitField0_;
        if ((i & 8) == 8) {
            ProtoBuf$Type protoBuf$Type = protoBuf$Function.returnType_;
            protoBuf$Type.getClass();
            return protoBuf$Type;
        }
        if ((i & 16) == 16) {
            return dispatcher$promoteAndExecute$Effects.get(protoBuf$Function.returnTypeId_);
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m$1("No returnType in ProtoBuf.Function");
        return null;
    }

    public static final void setChildren(RemoteViews remoteViews, TranslationContext translationContext, InsertedViewInfo insertedViewInfo, ArrayList arrayList) {
        int i = 0;
        for (Object obj : CollectionsKt.take(arrayList, 10)) {
            int i2 = i + 1;
            if (i < 0) {
                Room.throwIndexOverflow();
                throw null;
            }
            translateChild(remoteViews, translationContext.forChild(insertedViewInfo, i), (Emittable) obj);
            i = i2;
        }
    }

    /* renamed from: size-3ABfNKs, reason: not valid java name */
    public static final GlanceModifier m707size3ABfNKs(float f) {
        return m703height3ABfNKs(new WidthModifier(new Dimension.Dp(f)), f);
    }

    public static final String subarrayContentToString(Object[] objArr, int i, int i2, AbstractMutableList abstractMutableList) {
        StringBuilder sb = new StringBuilder((i2 * 3) + 2);
        sb.append("[");
        for (int i3 = 0; i3 < i2; i3++) {
            if (i3 > 0) {
                sb.append(", ");
            }
            Object obj = objArr[i + i3];
            if (obj == abstractMutableList) {
                sb.append("(this Collection)");
            } else {
                sb.append(obj);
            }
        }
        sb.append("]");
        return sb.toString();
    }

    public static final /* synthetic */ Integer takeIfNotNoIntValue(int i) {
        Integer valueOf = Integer.valueOf(i);
        if (i != Integer.MIN_VALUE) {
            return valueOf;
        }
        return null;
    }

    public static int toActivityTransitResId(Context context, int i) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(android.R.style.Animation.Activity, new int[]{i});
        int resourceId = obtainStyledAttributes.getResourceId(0, -1);
        obtainStyledAttributes.recycle();
        return resourceId;
    }

    public static final int toGravity(Alignment alignment) {
        int i = alignment.horizontal;
        int i2 = 8388611;
        if (i != 0) {
            if (i == 2) {
                i2 = 8388613;
            } else if (i == 1) {
                i2 = 1;
            } else {
                Log.w("GlanceAppWidget", "Unknown horizontal alignment: " + ((Object) Alignment.Horizontal.m746toStringimpl(i)));
            }
        }
        int i3 = alignment.vertical;
        int i4 = 48;
        if (i3 != 0) {
            if (i3 == 2) {
                i4 = 80;
            } else if (i3 == 1) {
                i4 = 16;
            } else {
                Log.w("GlanceAppWidget", "Unknown vertical alignment: " + ((Object) Alignment.Vertical.m748toStringimpl(i3)));
            }
        }
        return i2 | i4;
    }

    /* JADX WARN: Code restructure failed: missing block: B:175:0x0498, code lost:
    
        if (kotlin.jvm.internal.Intrinsics.areEqual(r1 != null ? r1.height : null, r3) != false) goto L177;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void translateChild(android.widget.RemoteViews r30, androidx.glance.appwidget.TranslationContext r31, androidx.glance.Emittable r32) {
        /*
            Method dump skipped, instructions count: 1267
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.ui.unit.DpKt.translateChild(android.widget.RemoteViews, androidx.glance.appwidget.TranslationContext, androidx.glance.Emittable):void");
    }

    public static final RemoteViews translateComposition(TranslationContext translationContext, List list, int i) {
        if (!list.isEmpty()) {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                if (!(((Emittable) it.next()) instanceof EmittableSizeBox)) {
                    Emittable emittable = (Emittable) CollectionsKt.single(list);
                    RemoteViewsInfo createRootView = LayoutSelectionKt.createRootView(translationContext, emittable.getModifier(), i);
                    RemoteViews remoteViews = createRootView.remoteViews;
                    translateChild(remoteViews, TranslationContext.m743copytbIExKY$default(translationContext.forChild(createRootView.view, 0), 0, new AtomicInteger(1), null, new AtomicBoolean(false), 0L, 0, null, 32447), emittable);
                    return remoteViews;
                }
            }
        }
        Object first = CollectionsKt.first(list);
        first.getClass();
        SizeMode sizeMode = ((EmittableSizeBox) first).sizeMode;
        ArrayList arrayList = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(list, 10));
        Iterator it2 = list.iterator();
        while (it2.hasNext()) {
            Emittable emittable2 = (Emittable) it2.next();
            emittable2.getClass();
            long j = ((EmittableSizeBox) emittable2).size;
            RemoteViewsInfo createRootView2 = LayoutSelectionKt.createRootView(translationContext, emittable2.getModifier(), i);
            RemoteViews remoteViews2 = createRootView2.remoteViews;
            translateChild(remoteViews2, TranslationContext.m743copytbIExKY$default(translationContext.forChild(createRootView2.view, 0), 0, new AtomicInteger(1), null, new AtomicBoolean(false), j, 0, null, 31935), emittable2);
            arrayList.add(new Pair(new SizeF(DpSize.m712getWidthD9Ej5fM(j), DpSize.m711getHeightD9Ej5fM(j)), remoteViews2));
        }
        if (sizeMode instanceof SizeMode.Single) {
            return (RemoteViews) ((Pair) CollectionsKt.single((List) arrayList)).second;
        }
        if (!Intrinsics.areEqual(sizeMode, SizeMode.Exact.INSTANCE)) {
            ContextsKt$$ExternalSyntheticBUOutline0.m();
            return null;
        }
        if (Build.VERSION.SDK_INT >= 31) {
            return Api31Impl.INSTANCE.createRemoteViews(MapsKt__MapsKt.toMap(arrayList));
        }
        if (arrayList.size() != 1 && arrayList.size() != 2) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m("unsupported views size");
            return null;
        }
        ArrayList arrayList2 = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(arrayList, 10));
        Iterator it3 = arrayList.iterator();
        while (it3.hasNext()) {
            arrayList2.add((RemoteViews) ((Pair) it3.next()).second);
        }
        int size = arrayList2.size();
        if (size == 1) {
            return (RemoteViews) arrayList2.get(0);
        }
        if (size == 2) {
            return new RemoteViews((RemoteViews) arrayList2.get(0), (RemoteViews) arrayList2.get(1));
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m("There must be between 1 and 2 views.");
        return null;
    }

    /* renamed from: translateComposition-KpG6l20, reason: not valid java name */
    public static final RemoteViews m708translateCompositionKpG6l20(Context context, int i, RemoteViewsRoot remoteViewsRoot, LayoutConfiguration layoutConfiguration, int i2, ComponentName componentName) {
        int i3 = 0;
        return translateComposition(new TranslationContext(context, i, context.getResources().getConfiguration().getLayoutDirection() == 1, layoutConfiguration, -1, false, new AtomicInteger(1), new InsertedViewInfo(i3, i3, null, 7), new AtomicBoolean(false), 9205357640488583168L, -1, false, null, componentName), remoteViewsRoot.children, i2);
    }

    public static final boolean tryAttachComposeStackTrace(Throwable th, Function0 function0) {
        List asList;
        Object invoke;
        th.getClass();
        Integer num = JDK7PlatformImplementations$ReflectSdkVersion.sdkVersion;
        DiagnosticComposeException diagnosticComposeException = null;
        if (num == null || num.intValue() >= 19) {
            Throwable[] suppressed = th.getSuppressed();
            suppressed.getClass();
            asList = Arrays.asList(suppressed);
            asList.getClass();
        } else {
            Method method = PlatformImplementations$ReflectThrowable.getSuppressed;
            if (method == null || (invoke = method.invoke(th, null)) == null) {
                asList = EmptyList.INSTANCE;
            } else {
                asList = Arrays.asList((Throwable[]) invoke);
                asList.getClass();
            }
        }
        int size = asList.size();
        boolean z = false;
        for (int i = 0; i < size; i++) {
            if (((Throwable) asList.get(i)) instanceof DiagnosticComposeException) {
                return false;
            }
        }
        try {
            ComposeStackTrace composeStackTrace = (ComposeStackTrace) function0.invoke();
            if (composeStackTrace != null) {
                boolean z2 = composeStackTrace.hasSourceInformation;
                List list = composeStackTrace.frames;
                if (z2) {
                    int size2 = list.size();
                    for (int i2 = 0; i2 < size2; i2++) {
                        ((ComposeStackTraceFrame) list.get(i2)).getClass();
                    }
                } else if (!list.isEmpty()) {
                    z = true;
                }
            }
            if (z) {
                composeStackTrace.getClass();
                diagnosticComposeException = new DiagnosticComposeException(composeStackTrace);
            }
        } catch (Throwable th2) {
            diagnosticComposeException = th2;
        }
        if (diagnosticComposeException != null) {
            ExceptionsKt.addSuppressed(th, diagnosticComposeException);
        }
        return z;
    }

    public static final ProtoBuf$Type type(ProtoBuf$ValueParameter protoBuf$ValueParameter, Dispatcher$promoteAndExecute$Effects dispatcher$promoteAndExecute$Effects) {
        dispatcher$promoteAndExecute$Effects.getClass();
        int i = protoBuf$ValueParameter.bitField0_;
        if ((i & 4) == 4) {
            ProtoBuf$Type protoBuf$Type = protoBuf$ValueParameter.type_;
            protoBuf$Type.getClass();
            return protoBuf$Type;
        }
        if ((i & 8) == 8) {
            return dispatcher$promoteAndExecute$Effects.get(protoBuf$ValueParameter.typeId_);
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m$1("No type in ProtoBuf.ValueParameter");
        return null;
    }

    /* renamed from: width-3ABfNKs, reason: not valid java name */
    public static final GlanceModifier m709width3ABfNKs(GlanceModifier glanceModifier, float f) {
        return glanceModifier.then(new WidthModifier(new Dimension.Dp(f)));
    }

    public static final Object withTransactionContext(RoomDatabase roomDatabase, Continuation continuation, Function1 function1) {
        TransactionExecutor transactionExecutor;
        RoomDatabaseKt__RoomDatabase_androidKt$withTransactionContext$transactionBlock$1 roomDatabaseKt__RoomDatabase_androidKt$withTransactionContext$transactionBlock$1 = new RoomDatabaseKt__RoomDatabase_androidKt$withTransactionContext$transactionBlock$1(function1, null);
        TransactionElement transactionElement = (TransactionElement) continuation.getContext().get(TransactionElement.Key);
        CoroutineDispatcher coroutineDispatcher = transactionElement != null ? transactionElement.transactionDispatcher : null;
        if (coroutineDispatcher != null) {
            return AwaitKt.withContext(coroutineDispatcher, roomDatabaseKt__RoomDatabase_androidKt$withTransactionContext$transactionBlock$1, continuation);
        }
        CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(1, ExceptionsKt.intercepted(continuation));
        cancellableContinuationImpl.initCancellability();
        try {
            transactionExecutor = roomDatabase.internalTransactionExecutor;
        } catch (RejectedExecutionException e) {
            cancellableContinuationImpl.cancel(new IllegalStateException("Unable to acquire a thread to perform the database transaction.", e));
        }
        if (transactionExecutor != null) {
            transactionExecutor.execute(new RequestExecutor$ReplyRunnable(cancellableContinuationImpl, roomDatabase, roomDatabaseKt__RoomDatabase_androidKt$withTransactionContext$transactionBlock$1));
            return cancellableContinuationImpl.getResult();
        }
        Intrinsics.throwUninitializedPropertyAccessException("internalTransactionExecutor");
        throw null;
    }

    public boolean doTextContainer(SVG.TextContainer textContainer) {
        return true;
    }

    public abstract void processText(String str);

    public static final ProtoBuf$Type returnType(ProtoBuf$Property protoBuf$Property, Dispatcher$promoteAndExecute$Effects dispatcher$promoteAndExecute$Effects) {
        int i = protoBuf$Property.bitField0_;
        if ((i & 8) == 8) {
            ProtoBuf$Type protoBuf$Type = protoBuf$Property.returnType_;
            protoBuf$Type.getClass();
            return protoBuf$Type;
        }
        if ((i & 16) == 16) {
            return dispatcher$promoteAndExecute$Effects.get(protoBuf$Property.returnTypeId_);
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m$1("No returnType in ProtoBuf.Property");
        return null;
    }
}
