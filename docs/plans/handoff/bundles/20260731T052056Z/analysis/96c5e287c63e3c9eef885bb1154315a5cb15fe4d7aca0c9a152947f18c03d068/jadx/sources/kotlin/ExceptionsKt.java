package kotlin;

import android.content.Context;
import android.content.Intent;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.Typeface;
import android.os.Build;
import android.util.Log;
import android.view.MenuItem;
import android.view.View;
import androidx.appcompat.app.AppCompatActivity;
import androidx.cardview.widget.CardView;
import androidx.collection.MutableIntList;
import androidx.compose.foundation.pager.PagerState;
import androidx.compose.runtime.Composer$Companion;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.ProvidedValue;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.saveable.SaverKt;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.compose.ui.semantics.CollectionInfo;
import androidx.compose.ui.semantics.SemanticsNode;
import androidx.compose.ui.semantics.SemanticsProperties;
import androidx.compose.ui.text.ParagraphKt;
import androidx.compose.ui.text.SaversKt$$ExternalSyntheticLambda3;
import androidx.compose.ui.text.TextRange;
import androidx.compose.ui.text.input.VisualTransformation$Companion$$ExternalSyntheticLambda0;
import androidx.compose.ui.util.ListUtilsKt;
import androidx.core.graphics.BlendModeCompat;
import androidx.core.internal.view.SupportMenuItem;
import androidx.core.view.ActionProvider;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.glance.CompositionLocalsKt;
import androidx.glance.Emittable;
import androidx.glance.EmittableImage;
import androidx.glance.EmittableWithChildren;
import androidx.glance.GlanceThemeKt$GlanceTheme$1;
import androidx.glance.appwidget.EmittableSizeBox;
import androidx.glance.appwidget.LayoutSelectionKt;
import androidx.glance.appwidget.RadioButtonKt$isSelectableGroup$1;
import androidx.glance.appwidget.RemoteViewsRoot;
import androidx.glance.appwidget.SizeBoxKt$SizeBox$1$2$1;
import androidx.glance.appwidget.WidgetLayoutImpl31;
import androidx.glance.appwidget.lazy.EmittableLazyColumn;
import androidx.glance.appwidget.lazy.EmittableLazyListItem;
import androidx.glance.appwidget.proto.LayoutProto$ContentScale;
import androidx.glance.appwidget.proto.LayoutProto$DimensionType;
import androidx.glance.appwidget.proto.LayoutProto$HorizontalAlignment;
import androidx.glance.appwidget.proto.LayoutProto$LayoutNode;
import androidx.glance.appwidget.proto.LayoutProto$LayoutType;
import androidx.glance.appwidget.proto.LayoutProto$NodeIdentity;
import androidx.glance.appwidget.proto.LayoutProto$VerticalAlignment;
import androidx.glance.color.DynamicThemeColorProviders;
import androidx.glance.layout.Alignment;
import androidx.glance.layout.ContentScale;
import androidx.glance.layout.EmittableBox;
import androidx.glance.layout.EmittableColumn;
import androidx.glance.layout.EmittableRow;
import androidx.glance.layout.EmittableSpacer;
import androidx.glance.layout.HeightModifier;
import androidx.glance.layout.WidthModifier;
import androidx.glance.text.EmittableText;
import androidx.glance.unit.Dimension;
import androidx.navigation.NavHostController;
import androidx.navigation.Navigator;
import androidx.navigation.NavigatorProvider;
import androidx.navigation.compose.ComposeNavGraphNavigator;
import androidx.navigation.compose.ComposeNavigator;
import androidx.navigation.compose.DialogNavigator;
import androidx.navigation.internal.NavControllerImpl;
import androidx.room.Room;
import androidx.room.RoomDatabase;
import androidx.room.TransactionElement;
import androidx.room.util.DBUtil__DBUtil_androidKt$performBlocking$1;
import androidx.savedstate.SavedStateRegistryOwner;
import androidx.work.Logger$LogcatLogger;
import androidx.work.Operation$State;
import androidx.work.OperationKt;
import androidx.work.impl.WorkDatabasePathHelperKt;
import coil3.Extras;
import coil3.util.BitmapsKt;
import coil3.util.ContextsKt;
import coil3.util.ContextsKt$$ExternalSyntheticBUOutline0;
import com.airbnb.lottie.animation.LPaint;
import j$.util.DesugarCollections;
import java.io.File;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.ResultKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.CollectionsKt__IteratorsJVMKt;
import kotlin.collections.EmptyList;
import kotlin.collections.EmptyMap;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.ContinuationInterceptor$Key;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt$createSimpleCoroutineForSuspendFunction$1;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt$createSimpleCoroutineForSuspendFunction$2;
import kotlin.coroutines.jvm.internal.BaseContinuationImpl;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.RestrictedContinuationImpl;
import kotlin.internal.PlatformImplementations$ReflectThrowable;
import kotlin.internal.jdk7.JDK7PlatformImplementations$ReflectSdkVersion;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.TypeIntrinsics;
import kotlin.reflect.jvm.internal.impl.builtins.KotlinBuiltIns;
import kotlin.reflect.jvm.internal.impl.descriptors.CallableDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.FunctionDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotations;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.ValueParameterDescriptorImpl;
import kotlin.reflect.jvm.internal.impl.load.java.descriptors.JavaMethodDescriptor;
import kotlin.reflect.jvm.internal.impl.load.kotlin.JvmType;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.renderer.KeywordStringsGenerated;
import kotlin.reflect.jvm.internal.impl.resolve.calls.inference.CapturedTypeConstructor;
import kotlin.reflect.jvm.internal.impl.resolve.descriptorUtil.DescriptorUtilsKt;
import kotlin.reflect.jvm.internal.impl.types.FlexibleType;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.KotlinTypeKt;
import kotlin.reflect.jvm.internal.impl.types.SimpleType;
import kotlin.reflect.jvm.internal.impl.types.StarProjectionImpl;
import kotlin.reflect.jvm.internal.impl.types.TypeConstructor;
import kotlin.reflect.jvm.internal.impl.types.TypeProjectionBase;
import kotlin.reflect.jvm.internal.impl.types.TypeSubstitutor;
import kotlin.reflect.jvm.internal.impl.types.TypeUtils;
import kotlin.reflect.jvm.internal.impl.types.Variance;
import kotlin.reflect.jvm.internal.impl.types.checker.KotlinTypeChecker;
import kotlin.reflect.jvm.internal.impl.types.typesApproximation.ApproximationBounds;
import kotlin.reflect.jvm.internal.impl.types.typesApproximation.CapturedTypeApproximationKt$WhenMappings;
import kotlin.reflect.jvm.internal.impl.types.typesApproximation.TypeArgument;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlin.uuid.UuidKt;
import kotlinx.coroutines.AwaitKt;
import kotlinx.coroutines.CompletedExceptionally;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.DispatchException;
import kotlinx.coroutines.TimeoutCancellationException;
import kotlinx.coroutines.internal.ContextScope;
import kotlinx.coroutines.internal.DispatchedContinuation;
import kotlinx.coroutines.internal.ScopeCoroutine;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.wikipedia.R;
import org.wikipedia.settings.homefeed.HomeFeedSettingsNavHostKt$$ExternalSyntheticLambda0;
import org.wikipedia.settings.homefeed.HomeFeedSettingsNavHostKt$$ExternalSyntheticLambda18;
import org.wikipedia.util.FileUtil;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class ExceptionsKt {
    public static final void GlanceTheme(DynamicThemeColorProviders dynamicThemeColorProviders, ComposableLambdaImpl composableLambdaImpl, GapComposer gapComposer, int i) {
        gapComposer.startRestartGroup(-1977781714);
        int i2 = 0;
        if (((i | 2) & 19) == 18 && gapComposer.getSkipping()) {
            gapComposer.skipToGroupEnd();
        } else {
            gapComposer.startDefaults();
            if ((i & 1) == 0 || gapComposer.getDefaultsInvalid()) {
                dynamicThemeColorProviders = (DynamicThemeColorProviders) gapComposer.consume(CompositionLocalsKt.LocalColors);
            } else {
                gapComposer.skipToGroupEnd();
            }
            gapComposer.endDefaults();
            Updater.CompositionLocalProvider(new ProvidedValue[]{CompositionLocalsKt.LocalColors.defaultProvidedValue$runtime(dynamicThemeColorProviders)}, composableLambdaImpl, gapComposer, 48);
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new GlanceThemeKt$GlanceTheme$1(i, i2, dynamicThemeColorProviders, composableLambdaImpl);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0064  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0083  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00a2  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x00ac  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x00c2  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x00cd  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x01ae  */
    /* JADX WARN: Removed duplicated region for block: B:67:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:88:0x019a  */
    /* JADX WARN: Removed duplicated region for block: B:89:0x00c4  */
    /* JADX WARN: Removed duplicated region for block: B:92:0x0098  */
    /* JADX WARN: Removed duplicated region for block: B:95:0x0079  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void LazyColumn(androidx.compose.ui.Modifier r16, androidx.compose.foundation.lazy.LazyListState r17, androidx.compose.foundation.layout.PaddingValues r18, androidx.compose.foundation.layout.Arrangement$Vertical r19, androidx.compose.ui.Alignment.Horizontal r20, androidx.compose.foundation.gestures.FlingBehavior r21, boolean r22, androidx.compose.foundation.AndroidEdgeEffectOverscrollEffect r23, kotlin.jvm.functions.Function1 r24, androidx.compose.runtime.GapComposer r25, int r26, int r27) {
        /*
            Method dump skipped, instructions count: 445
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.ExceptionsKt.LazyColumn(androidx.compose.ui.Modifier, androidx.compose.foundation.lazy.LazyListState, androidx.compose.foundation.layout.PaddingValues, androidx.compose.foundation.layout.Arrangement$Vertical, androidx.compose.ui.Alignment$Horizontal, androidx.compose.foundation.gestures.FlingBehavior, boolean, androidx.compose.foundation.AndroidEdgeEffectOverscrollEffect, kotlin.jvm.functions.Function1, androidx.compose.runtime.GapComposer, int, int):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0066  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0078  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0092  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x009d  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x00a7  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x00bd  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x00c8  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x0183  */
    /* JADX WARN: Removed duplicated region for block: B:60:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:77:0x0170  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x00bf  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x007c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void LazyRow(androidx.compose.ui.Modifier r16, androidx.compose.foundation.lazy.LazyListState r17, androidx.compose.foundation.layout.PaddingValues r18, androidx.compose.foundation.layout.Arrangement$Horizontal r19, androidx.compose.ui.BiasAlignment.Vertical r20, androidx.compose.foundation.gestures.FlingBehavior r21, boolean r22, androidx.compose.foundation.AndroidEdgeEffectOverscrollEffect r23, kotlin.jvm.functions.Function1 r24, androidx.compose.runtime.GapComposer r25, int r26, int r27) {
        /*
            Method dump skipped, instructions count: 404
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.ExceptionsKt.LazyRow(androidx.compose.ui.Modifier, androidx.compose.foundation.lazy.LazyListState, androidx.compose.foundation.layout.PaddingValues, androidx.compose.foundation.layout.Arrangement$Horizontal, androidx.compose.ui.BiasAlignment$Vertical, androidx.compose.foundation.gestures.FlingBehavior, boolean, androidx.compose.foundation.AndroidEdgeEffectOverscrollEffect, kotlin.jvm.functions.Function1, androidx.compose.runtime.GapComposer, int, int):void");
    }

    /* renamed from: add-impl, reason: not valid java name */
    public static final void m809addimpl(MutableIntList mutableIntList, int i) {
        if (mutableIntList._size == 0 || !(mutableIntList.get(0) == i || mutableIntList.get(mutableIntList._size - 1) == i)) {
            int i2 = mutableIntList._size;
            mutableIntList.add(i);
            while (i2 > 0) {
                int i3 = ((i2 + 1) >>> 1) - 1;
                int i4 = mutableIntList.get(i3);
                if (i <= i4) {
                    break;
                }
                mutableIntList.set(i2, i4);
                i2 = i3;
            }
            mutableIntList.set(i2, i);
        }
    }

    public static void addSuppressed(Throwable th, Throwable th2) {
        th.getClass();
        th2.getClass();
        if (th != th2) {
            Integer num = JDK7PlatformImplementations$ReflectSdkVersion.sdkVersion;
            if (num == null || num.intValue() >= 19) {
                th.addSuppressed(th2);
                return;
            }
            Method method = PlatformImplementations$ReflectThrowable.addSuppressed;
            if (method != null) {
                method.invoke(th, th2);
            }
        }
    }

    public static final ApproximationBounds approximateCapturedTypes(KotlinType kotlinType) {
        Variance combine;
        TypeArgument typeArgument;
        kotlinType.getClass();
        if (kotlinType.unwrap() instanceof FlexibleType) {
            ApproximationBounds approximateCapturedTypes = approximateCapturedTypes(KotlinTypeKt.lowerIfFlexible(kotlinType));
            ApproximationBounds approximateCapturedTypes2 = approximateCapturedTypes(KotlinTypeKt.upperIfFlexible(kotlinType));
            return new ApproximationBounds(KotlinTypeKt.inheritEnhancement(KotlinTypeKt.flexibleType(KotlinTypeKt.lowerIfFlexible((KotlinType) approximateCapturedTypes.lower), KotlinTypeKt.upperIfFlexible((KotlinType) approximateCapturedTypes2.lower)), kotlinType), KotlinTypeKt.inheritEnhancement(KotlinTypeKt.flexibleType(KotlinTypeKt.lowerIfFlexible((KotlinType) approximateCapturedTypes.upper), KotlinTypeKt.upperIfFlexible((KotlinType) approximateCapturedTypes2.upper)), kotlinType));
        }
        TypeConstructor constructor = kotlinType.getConstructor();
        if (kotlinType.getConstructor() instanceof CapturedTypeConstructor) {
            constructor.getClass();
            TypeProjectionBase projection = ((CapturedTypeConstructor) constructor).getProjection();
            KotlinType type = projection.getType();
            type.getClass();
            KotlinType makeNullableIfNeeded = TypeUtils.makeNullableIfNeeded(type, kotlinType.isMarkedNullable());
            int i = CapturedTypeApproximationKt$WhenMappings.$EnumSwitchMapping$0[projection.getProjectionKind().ordinal()];
            if (i == 2) {
                SimpleType nullableAnyType = OperationKt.getBuiltIns(kotlinType).getNullableAnyType();
                nullableAnyType.getClass();
                return new ApproximationBounds(makeNullableIfNeeded, nullableAnyType);
            }
            if (i == 3) {
                return new ApproximationBounds(TypeUtils.makeNullableIfNeeded((KotlinType) OperationKt.getBuiltIns(kotlinType).getNothingType(), kotlinType.isMarkedNullable()), makeNullableIfNeeded);
            }
            VisualTransformation$Companion$$ExternalSyntheticLambda0.m("Only nontrivial projections should have been captured, not: ", projection);
            return null;
        }
        if (kotlinType.getArguments().isEmpty() || kotlinType.getArguments().size() != constructor.getParameters().size()) {
            return new ApproximationBounds(kotlinType, kotlinType);
        }
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        List arguments = kotlinType.getArguments();
        List parameters = constructor.getParameters();
        parameters.getClass();
        Iterator it = CollectionsKt.zip(arguments, parameters).iterator();
        while (true) {
            boolean z = true;
            if (!it.hasNext()) {
                if (!arrayList.isEmpty()) {
                    Iterator it2 = arrayList.iterator();
                    while (it2.hasNext()) {
                        TypeArgument typeArgument2 = (TypeArgument) it2.next();
                        typeArgument2.getClass();
                        if (!KotlinTypeChecker.DEFAULT.isSubtypeOf(typeArgument2.inProjection, typeArgument2.outProjection)) {
                            break;
                        }
                    }
                }
                z = false;
                return new ApproximationBounds(z ? OperationKt.getBuiltIns(kotlinType).getNothingType() : replaceTypeArguments(kotlinType, arrayList), replaceTypeArguments(kotlinType, arrayList2));
            }
            Pair pair = (Pair) it.next();
            TypeProjectionBase typeProjectionBase = (TypeProjectionBase) pair.first;
            TypeParameterDescriptor typeParameterDescriptor = (TypeParameterDescriptor) pair.second;
            typeParameterDescriptor.getClass();
            Variance variance = typeParameterDescriptor.getVariance();
            if (variance == null) {
                TypeSubstitutor.$$$reportNull$$$0(35);
                throw null;
            }
            if (typeProjectionBase == null) {
                TypeSubstitutor.$$$reportNull$$$0(36);
                throw null;
            }
            TypeSubstitutor typeSubstitutor = TypeSubstitutor.EMPTY;
            if (typeProjectionBase.isStarProjection()) {
                combine = Variance.OUT_VARIANCE;
                if (combine == null) {
                    TypeSubstitutor.$$$reportNull$$$0(37);
                    throw null;
                }
            } else {
                combine = TypeSubstitutor.combine(variance, typeProjectionBase.getProjectionKind());
            }
            int i2 = CapturedTypeApproximationKt$WhenMappings.$EnumSwitchMapping$0[combine.ordinal()];
            if (i2 == 1) {
                KotlinType type2 = typeProjectionBase.getType();
                type2.getClass();
                KotlinType type3 = typeProjectionBase.getType();
                type3.getClass();
                typeArgument = new TypeArgument(typeParameterDescriptor, type2, type3);
            } else if (i2 == 2) {
                KotlinType type4 = typeProjectionBase.getType();
                type4.getClass();
                SimpleType nullableAnyType2 = DescriptorUtilsKt.getBuiltIns(typeParameterDescriptor).getNullableAnyType();
                nullableAnyType2.getClass();
                typeArgument = new TypeArgument(typeParameterDescriptor, type4, nullableAnyType2);
            } else {
                if (i2 != 3) {
                    ContextsKt$$ExternalSyntheticBUOutline0.m();
                    return null;
                }
                SimpleType nothingType = DescriptorUtilsKt.getBuiltIns(typeParameterDescriptor).getNothingType();
                KotlinType type5 = typeProjectionBase.getType();
                type5.getClass();
                typeArgument = new TypeArgument(typeParameterDescriptor, nothingType, type5);
            }
            if (typeProjectionBase.isStarProjection()) {
                arrayList.add(typeArgument);
                arrayList2.add(typeArgument);
            } else {
                ApproximationBounds approximateCapturedTypes3 = approximateCapturedTypes(typeArgument.inProjection);
                KotlinType kotlinType2 = (KotlinType) approximateCapturedTypes3.lower;
                KotlinType kotlinType3 = (KotlinType) approximateCapturedTypes3.upper;
                ApproximationBounds approximateCapturedTypes4 = approximateCapturedTypes(typeArgument.outProjection);
                KotlinType kotlinType4 = (KotlinType) approximateCapturedTypes4.lower;
                KotlinType kotlinType5 = (KotlinType) approximateCapturedTypes4.upper;
                TypeParameterDescriptor typeParameterDescriptor2 = typeArgument.typeParameter;
                TypeArgument typeArgument3 = new TypeArgument(typeParameterDescriptor2, kotlinType3, kotlinType4);
                TypeArgument typeArgument4 = new TypeArgument(typeParameterDescriptor2, kotlinType2, kotlinType5);
                arrayList.add(typeArgument3);
                arrayList2.add(typeArgument4);
            }
        }
    }

    public static final boolean calculateIfHorizontallyStacked(ArrayList arrayList) {
        List list;
        long j;
        if (arrayList.size() >= 2) {
            if (arrayList.size() <= 1) {
                list = EmptyList.INSTANCE;
            } else {
                ArrayList arrayList2 = new ArrayList();
                Object obj = arrayList.get(0);
                int size = arrayList.size() - 1;
                int i = 0;
                while (i < size) {
                    i++;
                    Object obj2 = arrayList.get(i);
                    SemanticsNode semanticsNode = (SemanticsNode) obj2;
                    SemanticsNode semanticsNode2 = (SemanticsNode) obj;
                    float abs = Math.abs(Float.intBitsToFloat((int) (semanticsNode2.getBoundsInRoot().m390getCenterF1C5BW0() >> 32)) - Float.intBitsToFloat((int) (semanticsNode.getBoundsInRoot().m390getCenterF1C5BW0() >> 32)));
                    float abs2 = Math.abs(Float.intBitsToFloat((int) (semanticsNode2.getBoundsInRoot().m390getCenterF1C5BW0() & 4294967295L)) - Float.intBitsToFloat((int) (semanticsNode.getBoundsInRoot().m390getCenterF1C5BW0() & 4294967295L)));
                    arrayList2.add(new Offset((Float.floatToRawIntBits(abs) << 32) | (Float.floatToRawIntBits(abs2) & 4294967295L)));
                    obj = obj2;
                }
                list = arrayList2;
            }
            if (list.size() == 1) {
                j = ((Offset) CollectionsKt.first(list)).packedValue;
            } else {
                if (list.isEmpty()) {
                    ListUtilsKt.throwUnsupportedOperationException("Empty collection can't be reduced.");
                }
                Object first = CollectionsKt.first(list);
                int size2 = list.size() - 1;
                if (1 <= size2) {
                    int i2 = 1;
                    while (true) {
                        first = new Offset(Offset.m386plusMKHz9U(((Offset) first).packedValue, ((Offset) list.get(i2)).packedValue));
                        if (i2 == size2) {
                            break;
                        }
                        i2++;
                    }
                }
                j = ((Offset) first).packedValue;
            }
            if (Float.intBitsToFloat((int) (4294967295L & j)) >= Float.intBitsToFloat((int) (j >> 32))) {
                return false;
            }
        }
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static Continuation createCoroutineUnintercepted(final Continuation continuation, final Continuation continuation2, final Function2 function2) {
        function2.getClass();
        if (function2 instanceof BaseContinuationImpl) {
            return ((BaseContinuationImpl) function2).create(continuation, continuation2);
        }
        final CoroutineContext context = continuation2.getContext();
        return context == EmptyCoroutineContext.INSTANCE ? new RestrictedContinuationImpl(continuation2) { // from class: kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt$createCoroutineUnintercepted$$inlined$createCoroutineFromSuspendFunction$IntrinsicsKt__IntrinsicsJvmKt$3
            public int label;

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) {
                int i = this.label;
                if (i != 0) {
                    if (i != 1) {
                        _UtilJvmKt$$ExternalSyntheticLambda0.m$1("This coroutine had already completed");
                        return null;
                    }
                    this.label = 2;
                    ResultKt.throwOnFailure(obj);
                    return obj;
                }
                this.label = 1;
                ResultKt.throwOnFailure(obj);
                Function2 function22 = function2;
                function22.getClass();
                TypeIntrinsics.beforeCheckcastToFunctionOfArity(2, function22);
                return function22.invoke(continuation, this);
            }
        } : new ContinuationImpl(continuation2, context) { // from class: kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt$createCoroutineUnintercepted$$inlined$createCoroutineFromSuspendFunction$IntrinsicsKt__IntrinsicsJvmKt$4
            public int label;

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) {
                int i = this.label;
                if (i != 0) {
                    if (i != 1) {
                        _UtilJvmKt$$ExternalSyntheticLambda0.m$1("This coroutine had already completed");
                        return null;
                    }
                    this.label = 2;
                    ResultKt.throwOnFailure(obj);
                    return obj;
                }
                this.label = 1;
                ResultKt.throwOnFailure(obj);
                Function2 function22 = function2;
                function22.getClass();
                TypeIntrinsics.beforeCheckcastToFunctionOfArity(2, function22);
                return function22.invoke(continuation, this);
            }
        };
    }

    public static final NavHostController createNavController$NavHostControllerKt__NavHostController_androidKt(Context context) {
        context.getClass();
        NavHostController navHostController = new NavHostController(context);
        NavControllerImpl navControllerImpl = navHostController.impl;
        NavigatorProvider navigatorProvider = navControllerImpl._navigatorProvider;
        navigatorProvider.addNavigator(new ComposeNavGraphNavigator(navigatorProvider));
        NavigatorProvider navigatorProvider2 = navControllerImpl._navigatorProvider;
        navigatorProvider2.addNavigator(new ComposeNavigator());
        navigatorProvider2.addNavigator(new DialogNavigator());
        return navHostController;
    }

    public static final LayoutProto$LayoutNode createNode(Context context, Emittable emittable) {
        LayoutProto$LayoutType layoutProto$LayoutType;
        LayoutProto$ContentScale layoutProto$ContentScale;
        LayoutProto$LayoutNode.Builder newBuilder = LayoutProto$LayoutNode.newBuilder();
        RadioButtonKt$isSelectableGroup$1 radioButtonKt$isSelectableGroup$1 = RadioButtonKt$isSelectableGroup$1.INSTANCE;
        if (emittable instanceof EmittableBox) {
            layoutProto$LayoutType = LayoutProto$LayoutType.BOX;
        } else if (emittable instanceof EmittableRow) {
            layoutProto$LayoutType = ((EmittableRow) emittable).modifier.any(radioButtonKt$isSelectableGroup$1) ? LayoutProto$LayoutType.RADIO_ROW : LayoutProto$LayoutType.ROW;
        } else if (emittable instanceof EmittableColumn) {
            layoutProto$LayoutType = ((EmittableColumn) emittable).modifier.any(radioButtonKt$isSelectableGroup$1) ? LayoutProto$LayoutType.RADIO_COLUMN : LayoutProto$LayoutType.COLUMN;
        } else if (emittable instanceof EmittableText) {
            layoutProto$LayoutType = LayoutProto$LayoutType.TEXT;
        } else if (emittable instanceof EmittableLazyListItem) {
            layoutProto$LayoutType = LayoutProto$LayoutType.LIST_ITEM;
        } else if (emittable instanceof EmittableLazyColumn) {
            layoutProto$LayoutType = LayoutProto$LayoutType.LAZY_COLUMN;
        } else if (emittable instanceof EmittableSpacer) {
            layoutProto$LayoutType = LayoutProto$LayoutType.SPACER;
        } else if (emittable instanceof EmittableImage) {
            layoutProto$LayoutType = LayoutProto$LayoutType.IMAGE;
        } else if (emittable instanceof RemoteViewsRoot) {
            layoutProto$LayoutType = LayoutProto$LayoutType.REMOTE_VIEWS_ROOT;
        } else {
            if (!(emittable instanceof EmittableSizeBox)) {
                ContextsKt$$ExternalSyntheticBUOutline0.m$2("Unknown element type ", emittable.getClass().getCanonicalName());
                return null;
            }
            layoutProto$LayoutType = LayoutProto$LayoutType.SIZE_BOX;
        }
        newBuilder.copyOnWrite();
        ((LayoutProto$LayoutNode) newBuilder.instance).setType(layoutProto$LayoutType);
        WidthModifier widthModifier = (WidthModifier) emittable.getModifier().foldIn(null, SizeBoxKt$SizeBox$1$2$1.INSTANCE$22);
        Dimension dimension = Dimension.Wrap.INSTANCE;
        LayoutProto$DimensionType proto = toProto(widthModifier != null ? widthModifier.width : dimension, context);
        newBuilder.copyOnWrite();
        ((LayoutProto$LayoutNode) newBuilder.instance).setWidth(proto);
        HeightModifier heightModifier = (HeightModifier) emittable.getModifier().foldIn(null, SizeBoxKt$SizeBox$1$2$1.INSTANCE$23);
        if (heightModifier != null) {
            dimension = heightModifier.height;
        }
        LayoutProto$DimensionType proto2 = toProto(dimension, context);
        newBuilder.copyOnWrite();
        ((LayoutProto$LayoutNode) newBuilder.instance).setHeight(proto2);
        boolean z = emittable.getModifier().foldIn(null, SizeBoxKt$SizeBox$1$2$1.INSTANCE$20) != null;
        newBuilder.copyOnWrite();
        ((LayoutProto$LayoutNode) newBuilder.instance).setHasAction(z);
        if (emittable.getModifier().foldIn(null, SizeBoxKt$SizeBox$1$2$1.INSTANCE$21) != null) {
            LayoutProto$NodeIdentity layoutProto$NodeIdentity = LayoutProto$NodeIdentity.BACKGROUND_NODE;
            newBuilder.copyOnWrite();
            ((LayoutProto$LayoutNode) newBuilder.instance).setIdentity(layoutProto$NodeIdentity);
        }
        if (emittable instanceof EmittableImage) {
            EmittableImage emittableImage = (EmittableImage) emittable;
            int i = emittableImage.contentScale;
            if (i == 1) {
                layoutProto$ContentScale = LayoutProto$ContentScale.FIT;
            } else if (i == 0) {
                layoutProto$ContentScale = LayoutProto$ContentScale.CROP;
            } else {
                if (i != 2) {
                    ContextsKt$$ExternalSyntheticBUOutline0.m("Unknown content scale ", ContentScale.m749toStringimpl(emittableImage.contentScale));
                    return null;
                }
                layoutProto$ContentScale = LayoutProto$ContentScale.FILL_BOUNDS;
            }
            newBuilder.copyOnWrite();
            ((LayoutProto$LayoutNode) newBuilder.instance).setImageScale(layoutProto$ContentScale);
            boolean z2 = !ContextsKt.isDecorative(emittableImage);
            newBuilder.copyOnWrite();
            ((LayoutProto$LayoutNode) newBuilder.instance).setHasImageDescription(z2);
            boolean z3 = emittableImage.colorFilterParams != null;
            newBuilder.copyOnWrite();
            ((LayoutProto$LayoutNode) newBuilder.instance).setHasImageColorFilter(z3);
        } else if (emittable instanceof EmittableColumn) {
            LayoutProto$HorizontalAlignment m812toProtouMT220 = m812toProtouMT220(((EmittableColumn) emittable).horizontalAlignment);
            newBuilder.copyOnWrite();
            ((LayoutProto$LayoutNode) newBuilder.instance).setHorizontalAlignment$1(m812toProtouMT220);
        } else if (emittable instanceof EmittableRow) {
            LayoutProto$VerticalAlignment m811toProtoJe2gTW8 = m811toProtoJe2gTW8(((EmittableRow) emittable).verticalAlignment);
            newBuilder.copyOnWrite();
            ((LayoutProto$LayoutNode) newBuilder.instance).setVerticalAlignment$1(m811toProtoJe2gTW8);
        } else if (emittable instanceof EmittableBox) {
            EmittableBox emittableBox = (EmittableBox) emittable;
            LayoutProto$HorizontalAlignment m812toProtouMT2202 = m812toProtouMT220(emittableBox.contentAlignment.horizontal);
            newBuilder.copyOnWrite();
            ((LayoutProto$LayoutNode) newBuilder.instance).setHorizontalAlignment$1(m812toProtouMT2202);
            LayoutProto$VerticalAlignment m811toProtoJe2gTW82 = m811toProtoJe2gTW8(emittableBox.contentAlignment.vertical);
            newBuilder.copyOnWrite();
            ((LayoutProto$LayoutNode) newBuilder.instance).setVerticalAlignment$1(m811toProtoJe2gTW82);
        } else if (emittable instanceof EmittableLazyColumn) {
            LayoutProto$HorizontalAlignment m812toProtouMT2203 = m812toProtouMT220(((EmittableLazyColumn) emittable).horizontalAlignment);
            newBuilder.copyOnWrite();
            ((LayoutProto$LayoutNode) newBuilder.instance).setHorizontalAlignment$1(m812toProtouMT2203);
        }
        if ((emittable instanceof EmittableWithChildren) && !(emittable instanceof EmittableLazyColumn)) {
            ArrayList arrayList = ((EmittableWithChildren) emittable).children;
            ArrayList arrayList2 = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(arrayList, 10));
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                arrayList2.add(createNode(context, (Emittable) it.next()));
            }
            newBuilder.copyOnWrite();
            ((LayoutProto$LayoutNode) newBuilder.instance).addAllChildren(arrayList2);
        }
        return (LayoutProto$LayoutNode) newBuilder.build();
    }

    public static final long currentAbsoluteScrollOffset(PagerState pagerState) {
        return UnsignedKt.roundToLong(pagerState.getCurrentPageOffsetFraction() * pagerState.getPageSizeWithSpacing$foundation()) + (pagerState.getCurrentPage() * pagerState.getPageSizeWithSpacing$foundation());
    }

    public static final File dataStoreFile(Context context, String str) {
        context.getClass();
        str.getClass();
        return new File(context.getApplicationContext().getFilesDir(), Intrinsics.stringPlus("datastore/", str));
    }

    public static boolean doesJavaOverrideHaveIncompatibleValueParameterKinds(CallableDescriptor callableDescriptor, CallableDescriptor callableDescriptor2) {
        callableDescriptor.getClass();
        callableDescriptor2.getClass();
        if (!(callableDescriptor2 instanceof JavaMethodDescriptor) || !(callableDescriptor instanceof FunctionDescriptor)) {
            return false;
        }
        JavaMethodDescriptor javaMethodDescriptor = (JavaMethodDescriptor) callableDescriptor2;
        javaMethodDescriptor.getValueParameters().size();
        FunctionDescriptor functionDescriptor = (FunctionDescriptor) callableDescriptor;
        functionDescriptor.getValueParameters().size();
        List valueParameters = javaMethodDescriptor.getOriginal().getValueParameters();
        valueParameters.getClass();
        List valueParameters2 = functionDescriptor.getOriginal().getValueParameters();
        valueParameters2.getClass();
        Iterator it = CollectionsKt.zip(valueParameters, valueParameters2).iterator();
        while (it.hasNext()) {
            Pair pair = (Pair) it.next();
            ValueParameterDescriptorImpl valueParameterDescriptorImpl = (ValueParameterDescriptorImpl) pair.first;
            ValueParameterDescriptorImpl valueParameterDescriptorImpl2 = (ValueParameterDescriptorImpl) pair.second;
            valueParameterDescriptorImpl.getClass();
            boolean z = mapValueParameterType((FunctionDescriptor) callableDescriptor2, valueParameterDescriptorImpl) instanceof JvmType.Primitive;
            valueParameterDescriptorImpl2.getClass();
            if (z != (mapValueParameterType(functionDescriptor, valueParameterDescriptorImpl2) instanceof JvmType.Primitive)) {
                return true;
            }
        }
        return false;
    }

    public static final SavedStateRegistryOwner get(View view) {
        view.getClass();
        while (view != null) {
            Object tag = view.getTag(R.id.view_tree_saved_state_registry_owner);
            SavedStateRegistryOwner savedStateRegistryOwner = tag instanceof SavedStateRegistryOwner ? (SavedStateRegistryOwner) tag : null;
            if (savedStateRegistryOwner != null) {
                return savedStateRegistryOwner;
            }
            Object parentOrViewTreeDisjointParent = Room.getParentOrViewTreeDisjointParent(view);
            view = parentOrViewTreeDisjointParent instanceof View ? (View) parentOrViewTreeDisjointParent : null;
        }
        return null;
    }

    public static final CoroutineContext getCoroutineContext(RoomDatabase roomDatabase, boolean z, ContinuationImpl continuationImpl) {
        TransactionElement transactionElement = (TransactionElement) continuationImpl.getContext().get(TransactionElement.Key);
        CoroutineContext coroutineContext = transactionElement != null ? transactionElement.transactionDispatcher : null;
        if (!roomDatabase.inCompatibilityMode()) {
            ContextScope contextScope = roomDatabase.coroutineScope;
            if (contextScope == null) {
                Intrinsics.throwUninitializedPropertyAccessException("coroutineScope");
                throw null;
            }
            CoroutineContext coroutineContext2 = contextScope.coroutineContext;
            if (coroutineContext == null) {
                coroutineContext = EmptyCoroutineContext.INSTANCE;
            }
            return coroutineContext2.plus(coroutineContext);
        }
        if (coroutineContext != null) {
            ContextScope contextScope2 = roomDatabase.coroutineScope;
            if (contextScope2 != null) {
                return contextScope2.coroutineContext.plus(coroutineContext);
            }
            Intrinsics.throwUninitializedPropertyAccessException("coroutineScope");
            throw null;
        }
        if (z) {
            CoroutineContext coroutineContext3 = roomDatabase.transactionContext;
            if (coroutineContext3 != null) {
                return coroutineContext3;
            }
            Intrinsics.throwUninitializedPropertyAccessException("transactionContext");
            throw null;
        }
        ContextScope contextScope3 = roomDatabase.coroutineScope;
        if (contextScope3 != null) {
            return contextScope3.coroutineContext;
        }
        Intrinsics.throwUninitializedPropertyAccessException("coroutineScope");
        throw null;
    }

    public static Continuation intercepted(Continuation continuation) {
        continuation.getClass();
        ContinuationImpl continuationImpl = continuation instanceof ContinuationImpl ? (ContinuationImpl) continuation : null;
        if (continuationImpl == null || (continuation = continuationImpl.intercepted) != null) {
            return continuation;
        }
        CoroutineDispatcher coroutineDispatcher = (CoroutineDispatcher) continuationImpl.getContext().get(ContinuationInterceptor$Key.$$INSTANCE);
        Continuation dispatchedContinuation = coroutineDispatcher != null ? new DispatchedContinuation(coroutineDispatcher, continuationImpl) : continuationImpl;
        continuationImpl.intercepted = dispatchedContinuation;
        return dispatchedContinuation;
    }

    /* JADX WARN: Code restructure failed: missing block: B:23:0x00b5, code lost:
    
        if (((kotlin.reflect.jvm.internal.impl.load.kotlin.JvmType.Object) r4).internalName.equals("java/lang/Object") != false) goto L49;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0109, code lost:
    
        r6 = r7.getType();
        r6.getClass();
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x011c, code lost:
    
        return (kotlin.reflect.jvm.internal.impl.load.kotlin.JvmType) kotlin.ResultKt.mapType(kotlin.reflect.jvm.internal.impl.types.TypeUtils.makeNullableAsSpecified(r6, true), kotlin.reflect.jvm.internal.impl.load.kotlin.TypeMappingMode.DEFAULT, r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x0107, code lost:
    
        if (kotlin.reflect.jvm.internal.impl.resolve.descriptorUtil.DescriptorUtilsKt.getFqNameSafe(r0).equals(kotlin.reflect.jvm.internal.impl.resolve.descriptorUtil.DescriptorUtilsKt.getFqNameSafe(r2)) == false) goto L51;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static kotlin.reflect.jvm.internal.impl.load.kotlin.JvmType mapValueParameterType(kotlin.reflect.jvm.internal.impl.descriptors.FunctionDescriptor r6, kotlin.reflect.jvm.internal.impl.descriptors.impl.ValueParameterDescriptorImpl r7) {
        /*
            Method dump skipped, instructions count: 301
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.ExceptionsKt.mapValueParameterType(kotlin.reflect.jvm.internal.impl.descriptors.FunctionDescriptor, kotlin.reflect.jvm.internal.impl.descriptors.impl.ValueParameterDescriptorImpl):kotlin.reflect.jvm.internal.impl.load.kotlin.JvmType");
    }

    public static final void migrateDatabase(Context context) {
        Map map;
        context.getClass();
        File databasePath = context.getDatabasePath("androidx.work.workdb");
        databasePath.getClass();
        if (databasePath.exists()) {
            Logger$LogcatLogger.get().debug(WorkDatabasePathHelperKt.TAG, "Migrating WorkDatabase to the no-backup directory");
            File databasePath2 = context.getDatabasePath("androidx.work.workdb");
            databasePath2.getClass();
            File noBackupFilesDir = context.getNoBackupFilesDir();
            noBackupFilesDir.getClass();
            String[] strArr = WorkDatabasePathHelperKt.DATABASE_EXTRA_FILES;
            int mapCapacity = MapsKt__MapsKt.mapCapacity(strArr.length);
            if (mapCapacity < 16) {
                mapCapacity = 16;
            }
            LinkedHashMap linkedHashMap = new LinkedHashMap(mapCapacity);
            for (String str : strArr) {
                linkedHashMap.put(new File(databasePath2.getPath() + str), new File(noBackupFilesDir.getPath() + str));
            }
            if (linkedHashMap.isEmpty()) {
                map = Collections.singletonMap(databasePath2, noBackupFilesDir);
                map.getClass();
            } else {
                LinkedHashMap linkedHashMap2 = new LinkedHashMap(linkedHashMap);
                linkedHashMap2.put(databasePath2, noBackupFilesDir);
                map = linkedHashMap2;
            }
            for (Map.Entry entry : map.entrySet()) {
                File file = (File) entry.getKey();
                File file2 = (File) entry.getValue();
                if (file.exists()) {
                    if (file2.exists()) {
                        Logger$LogcatLogger.get().warning(WorkDatabasePathHelperKt.TAG, "Over-writing contents of " + file2);
                    }
                    Logger$LogcatLogger.get().debug(WorkDatabasePathHelperKt.TAG, file.renameTo(file2) ? "Migrated " + file + "to " + file2 : "Renaming " + file + " to " + file2 + " failed");
                }
            }
        }
    }

    public static final Object performBlocking(RoomDatabase roomDatabase, boolean z, boolean z2, Function1 function1) {
        roomDatabase.getClass();
        ThreadLocal threadLocal = roomDatabase.suspendingTransactionContext;
        roomDatabase.assertNotMainThread();
        if (roomDatabase.inCompatibilityMode() && !roomDatabase.inTransaction()) {
            CoroutineContext coroutineContext = (CoroutineContext) threadLocal.get();
            if ((coroutineContext != null ? (TransactionElement) coroutineContext.get(TransactionElement.Key) : null) != null) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m$1("Cannot access database on a different coroutine context inherited from a suspending transaction.");
                return null;
            }
        }
        CoroutineContext coroutineContext2 = (CoroutineContext) threadLocal.get();
        if (coroutineContext2 == null) {
            coroutineContext2 = EmptyCoroutineContext.INSTANCE;
        }
        return Operation$State.runBlockingUninterruptible(new DBUtil__DBUtil_androidKt$performBlocking$1(coroutineContext2, roomDatabase, z2, z, function1, null));
    }

    /* JADX WARN: Code restructure failed: missing block: B:41:0x0091, code lost:
    
        if (r9 == r1) goto L44;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:20:0x00a7 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:21:0x00a8 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:26:0x004a  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0025  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object performInTransactionSuspending(androidx.room.RoomDatabase r8, kotlin.coroutines.Continuation r9, kotlin.jvm.functions.Function1 r10) {
        /*
            boolean r0 = r9 instanceof androidx.room.util.DBUtil__DBUtil_androidKt$performInTransactionSuspending$1
            if (r0 == 0) goto L13
            r0 = r9
            androidx.room.util.DBUtil__DBUtil_androidKt$performInTransactionSuspending$1 r0 = (androidx.room.util.DBUtil__DBUtil_androidKt$performInTransactionSuspending$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            androidx.room.util.DBUtil__DBUtil_androidKt$performInTransactionSuspending$1 r0 = new androidx.room.util.DBUtil__DBUtil_androidKt$performInTransactionSuspending$1
            r0.<init>(r9)
        L18:
            java.lang.Object r9 = r0.result
            kotlin.coroutines.intrinsics.CoroutineSingletons r1 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r2 = r0.label
            r3 = 4
            r4 = 3
            r5 = 2
            r6 = 1
            r7 = 0
            if (r2 == 0) goto L4a
            if (r2 == r6) goto L46
            if (r2 == r5) goto L42
            if (r2 == r4) goto L37
            if (r2 != r3) goto L31
            kotlin.ResultKt.throwOnFailure(r9)
            return r9
        L31:
            java.lang.String r8 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$1(r8)
            return r7
        L37:
            kotlin.coroutines.jvm.internal.SuspendLambda r8 = r0.L$1
            r10 = r8
            kotlin.jvm.functions.Function1 r10 = (kotlin.jvm.functions.Function1) r10
            androidx.room.RoomDatabase r8 = r0.L$0
            kotlin.ResultKt.throwOnFailure(r9)
            goto L94
        L42:
            kotlin.ResultKt.throwOnFailure(r9)
            return r9
        L46:
            kotlin.ResultKt.throwOnFailure(r9)
            return r9
        L4a:
            kotlin.ResultKt.throwOnFailure(r9)
            boolean r9 = r8.inCompatibilityMode()
            if (r9 == 0) goto L62
            androidx.paging.PagingDataPresenter$collectFrom$2 r9 = new androidx.paging.PagingDataPresenter$collectFrom$2
            r9.<init>(r8, r10, r7, r4)
            r0.label = r6
            java.lang.Object r8 = androidx.compose.ui.unit.DpKt.withTransactionContext(r8, r0, r9)
            if (r8 != r1) goto L61
            goto La7
        L61:
            return r8
        L62:
            boolean r9 = r8.inCompatibilityMode()
            if (r9 == 0) goto L84
            boolean r9 = r8.isOpenInternal$room_runtime()
            if (r9 == 0) goto L84
            boolean r9 = r8.inTransaction()
            if (r9 == 0) goto L84
            androidx.room.util.DBUtil__DBUtil_androidKt$performInTransactionSuspending$lambda$3$$inlined$internalPerform$1 r9 = new androidx.room.util.DBUtil__DBUtil_androidKt$performInTransactionSuspending$lambda$3$$inlined$internalPerform$1
            r2 = 0
            r9.<init>(r8, r7, r10, r2)
            r0.label = r5
            java.lang.Object r8 = r8.useConnection(r2, r9, r0)
            if (r8 != r1) goto L83
            goto La7
        L83:
            return r8
        L84:
            r0.L$0 = r8
            r9 = r10
            kotlin.coroutines.jvm.internal.SuspendLambda r9 = (kotlin.coroutines.jvm.internal.SuspendLambda) r9
            r0.L$1 = r9
            r0.label = r4
            kotlin.coroutines.CoroutineContext r9 = getCoroutineContext(r8, r6, r0)
            if (r9 != r1) goto L94
            goto La7
        L94:
            kotlin.coroutines.CoroutineContext r9 = (kotlin.coroutines.CoroutineContext) r9
            androidx.paging.PageFetcher$flow$1 r2 = new androidx.paging.PageFetcher$flow$1
            r2.<init>(r8, r7, r10)
            r0.L$0 = r7
            r0.L$1 = r7
            r0.label = r3
            java.lang.Object r8 = kotlinx.coroutines.AwaitKt.withContext(r9, r2, r0)
            if (r8 != r1) goto La8
        La7:
            return r1
        La8:
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.ExceptionsKt.performInTransactionSuspending(androidx.room.RoomDatabase, kotlin.coroutines.Continuation, kotlin.jvm.functions.Function1):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x00ab A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:22:0x00ac A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:25:0x004c  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0028  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object performSuspending(androidx.room.RoomDatabase r15, boolean r16, boolean r17, kotlin.jvm.functions.Function1 r18, kotlin.coroutines.Continuation r19) {
        /*
            r0 = r19
            boolean r1 = r0 instanceof androidx.room.util.DBUtil__DBUtil_androidKt$performSuspending$1
            if (r1 == 0) goto L16
            r1 = r0
            androidx.room.util.DBUtil__DBUtil_androidKt$performSuspending$1 r1 = (androidx.room.util.DBUtil__DBUtil_androidKt$performSuspending$1) r1
            int r2 = r1.label
            r3 = -2147483648(0xffffffff80000000, float:-0.0)
            r4 = r2 & r3
            if (r4 == 0) goto L16
            int r2 = r2 - r3
            r1.label = r2
        L14:
            r7 = r1
            goto L1c
        L16:
            androidx.room.util.DBUtil__DBUtil_androidKt$performSuspending$1 r1 = new androidx.room.util.DBUtil__DBUtil_androidKt$performSuspending$1
            r1.<init>(r0)
            goto L14
        L1c:
            java.lang.Object r0 = r7.result
            kotlin.coroutines.intrinsics.CoroutineSingletons r8 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r1 = r7.label
            r2 = 0
            r3 = 3
            r4 = 2
            r9 = 1
            if (r1 == 0) goto L4c
            if (r1 == r9) goto L48
            if (r1 == r4) goto L38
            if (r1 != r3) goto L32
            kotlin.ResultKt.throwOnFailure(r0)
            return r0
        L32:
            java.lang.String r15 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$1(r15)
            return r2
        L38:
            boolean r15 = r7.Z$1
            boolean r1 = r7.Z$0
            kotlin.jvm.functions.Function1 r4 = r7.L$1
            androidx.room.RoomDatabase r5 = r7.L$0
            kotlin.ResultKt.throwOnFailure(r0)
            r13 = r15
            r14 = r4
            r11 = r5
        L46:
            r12 = r1
            goto L97
        L48:
            kotlin.ResultKt.throwOnFailure(r0)
            return r0
        L4c:
            kotlin.ResultKt.throwOnFailure(r0)
            boolean r0 = r15.inCompatibilityMode()
            if (r0 == 0) goto L7b
            boolean r0 = r15.isOpenInternal$room_runtime()
            if (r0 == 0) goto L7b
            boolean r0 = r15.inTransaction()
            if (r0 == 0) goto L7b
            androidx.room.util.DBUtil__DBUtil_androidKt$performSuspending$lambda$1$$inlined$internalPerform$1 r0 = new androidx.room.util.DBUtil__DBUtil_androidKt$performSuspending$lambda$1$$inlined$internalPerform$1
            r4 = 0
            r6 = 0
            r3 = r15
            r2 = r16
            r1 = r17
            r5 = r18
            r0.<init>(r1, r2, r3, r4, r5, r6)
            r1 = r2
            r2 = r0
            r7.label = r9
            java.lang.Object r15 = r15.useConnection(r1, r2, r7)
            if (r15 != r8) goto L7a
            goto Lab
        L7a:
            return r15
        L7b:
            r1 = r16
            r5 = r17
            r7.L$0 = r15
            r6 = r18
            r7.L$1 = r6
            r7.Z$0 = r1
            r7.Z$1 = r5
            r7.label = r4
            kotlin.coroutines.CoroutineContext r4 = getCoroutineContext(r15, r5, r7)
            if (r4 != r8) goto L92
            goto Lab
        L92:
            r11 = r15
            r0 = r4
            r13 = r5
            r14 = r6
            goto L46
        L97:
            kotlin.coroutines.CoroutineContext r0 = (kotlin.coroutines.CoroutineContext) r0
            androidx.room.util.DBUtil__DBUtil_androidKt$performBlocking$1$1 r9 = new androidx.room.util.DBUtil__DBUtil_androidKt$performBlocking$1$1
            r10 = 0
            r9.<init>(r10, r11, r12, r13, r14)
            r7.L$0 = r2
            r7.L$1 = r2
            r7.label = r3
            java.lang.Object r15 = kotlinx.coroutines.AwaitKt.withContext(r0, r9, r7)
            if (r15 != r8) goto Lac
        Lab:
            return r8
        Lac:
            return r15
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.ExceptionsKt.performSuspending(androidx.room.RoomDatabase, boolean, boolean, kotlin.jvm.functions.Function1, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:142:0x02a8  */
    /* JADX WARN: Removed duplicated region for block: B:144:0x02ab  */
    /* JADX WARN: Removed duplicated region for block: B:148:0x02bf  */
    /* JADX WARN: Removed duplicated region for block: B:150:0x02d7  */
    /* JADX WARN: Removed duplicated region for block: B:152:0x02e0  */
    /* JADX WARN: Removed duplicated region for block: B:154:0x02eb  */
    /* JADX WARN: Removed duplicated region for block: B:161:0x030b  */
    /* JADX WARN: Removed duplicated region for block: B:164:0x0315  */
    /* JADX WARN: Removed duplicated region for block: B:176:0x0362 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:179:0x036a A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:183:0x0380  */
    /* JADX WARN: Removed duplicated region for block: B:186:0x0386  */
    /* JADX WARN: Removed duplicated region for block: B:193:0x03b9 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:198:0x03c8  */
    /* JADX WARN: Removed duplicated region for block: B:207:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:213:0x0325  */
    /* JADX WARN: Removed duplicated region for block: B:219:0x02c6  */
    /* JADX WARN: Removed duplicated region for block: B:224:0x02b2  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void populate(final android.view.ViewStructure r38, androidx.compose.ui.node.LayoutNode r39, android.view.autofill.AutofillId r40, java.lang.String r41, androidx.compose.ui.spatial.RectManager r42) {
        /*
            Method dump skipped, instructions count: 994
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.ExceptionsKt.populate(android.view.ViewStructure, androidx.compose.ui.node.LayoutNode, android.view.autofill.AutofillId, java.lang.String, androidx.compose.ui.spatial.RectManager):void");
    }

    public static final NavHostController rememberNavController(Navigator[] navigatorArr, GapComposer gapComposer) {
        Context context = (Context) gapComposer.consume(AndroidCompositionLocals_androidKt.LocalContext);
        Object[] copyOf = Arrays.copyOf(navigatorArr, navigatorArr.length);
        int i = 1;
        CardView.AnonymousClass1 anonymousClass1 = new CardView.AnonymousClass1(12, new SaversKt$$ExternalSyntheticLambda3(27), new HomeFeedSettingsNavHostKt$$ExternalSyntheticLambda0(context, i));
        boolean changedInstance = gapComposer.changedInstance(context);
        Object rememberedValue = gapComposer.rememberedValue();
        if (changedInstance || rememberedValue == Composer$Companion.Empty) {
            rememberedValue = new HomeFeedSettingsNavHostKt$$ExternalSyntheticLambda18(context, i);
            gapComposer.updateRememberedValue(rememberedValue);
        }
        NavHostController navHostController = (NavHostController) SaverKt.rememberSaveable(copyOf, anonymousClass1, (Function0) rememberedValue, gapComposer, 0, 4);
        for (Navigator navigator : navigatorArr) {
            navHostController.impl._navigatorProvider.addNavigator(navigator);
        }
        return navHostController;
    }

    public static final String render(Name name) {
        name.getClass();
        String asString = name.asString();
        asString.getClass();
        if (!KeywordStringsGenerated.KEYWORDS.contains(asString)) {
            for (int i = 0; i < asString.length(); i++) {
                char charAt = asString.charAt(i);
                if (Character.isLetterOrDigit(charAt) || charAt == '_') {
                }
            }
            String asString2 = name.asString();
            asString2.getClass();
            return asString2;
        }
        String asString3 = name.asString();
        asString3.getClass();
        return "`".concat(asString3).concat("`");
    }

    public static final String renderFqName(List list) {
        StringBuilder sb = new StringBuilder();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            Name name = (Name) it.next();
            if (sb.length() > 0) {
                sb.append(".");
            }
            sb.append(render(name));
        }
        return sb.toString();
    }

    public static final String replacePrefixesInTypeRepresentations(String str, String str2, String str3, String str4, String str5) {
        str.getClass();
        str3.getClass();
        if (!StringsKt__StringsJVMKt.startsWith(str, str2, false) || !StringsKt__StringsJVMKt.startsWith(str3, str4, false)) {
            return null;
        }
        String substring = str.substring(str2.length());
        String substring2 = str3.substring(str4.length());
        String concat = str5.concat(substring);
        if (substring.equals(substring2)) {
            return concat;
        }
        if (typeStringsDifferOnlyInNullability(substring, substring2)) {
            return concat.concat("!");
        }
        return null;
    }

    public static final KotlinType replaceTypeArguments(KotlinType kotlinType, ArrayList arrayList) {
        StarProjectionImpl starProjectionImpl;
        kotlinType.getArguments().size();
        arrayList.size();
        ArrayList arrayList2 = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(arrayList, 10));
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            TypeArgument typeArgument = (TypeArgument) it.next();
            typeArgument.getClass();
            KotlinType kotlinType2 = typeArgument.outProjection;
            KotlinType kotlinType3 = typeArgument.inProjection;
            TypeParameterDescriptor typeParameterDescriptor = typeArgument.typeParameter;
            KotlinTypeChecker.DEFAULT.isSubtypeOf(kotlinType3, kotlinType2);
            if (!Intrinsics.areEqual(kotlinType3, kotlinType2)) {
                Variance variance = typeParameterDescriptor.getVariance();
                Variance variance2 = Variance.IN_VARIANCE;
                if (variance != variance2) {
                    if (KotlinBuiltIns.isNothing(kotlinType3) && typeParameterDescriptor.getVariance() != variance2) {
                        Variance variance3 = Variance.OUT_VARIANCE;
                        if (variance3 == typeParameterDescriptor.getVariance()) {
                            variance3 = Variance.INVARIANT;
                        }
                        starProjectionImpl = new StarProjectionImpl(kotlinType2, variance3);
                    } else {
                        if (kotlinType2 == null) {
                            KotlinBuiltIns.$$$reportNull$$$0(140);
                            throw null;
                        }
                        if (KotlinBuiltIns.isAnyOrNullableAny(kotlinType2) && kotlinType2.isMarkedNullable()) {
                            if (variance2 == typeParameterDescriptor.getVariance()) {
                                variance2 = Variance.INVARIANT;
                            }
                            starProjectionImpl = new StarProjectionImpl(kotlinType3, variance2);
                        } else {
                            Variance variance4 = Variance.OUT_VARIANCE;
                            if (variance4 == typeParameterDescriptor.getVariance()) {
                                variance4 = Variance.INVARIANT;
                            }
                            starProjectionImpl = new StarProjectionImpl(kotlinType2, variance4);
                        }
                    }
                    arrayList2.add(starProjectionImpl);
                }
            }
            starProjectionImpl = new StarProjectionImpl(kotlinType3);
            arrayList2.add(starProjectionImpl);
        }
        return KotlinTypeKt.replace$default(kotlinType, arrayList2, (Annotations) null, 6);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0140  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x002d A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0073  */
    /* JADX WARN: Type inference failed for: r1v16 */
    /* JADX WARN: Type inference failed for: r1v24 */
    /* JADX WARN: Type inference failed for: r1v3, types: [int] */
    /* JADX WARN: Type inference failed for: r1v6, types: [androidx.compose.runtime.Composition] */
    /* JADX WARN: Type inference failed for: r1v7, types: [androidx.compose.runtime.Composition] */
    /* JADX WARN: Type inference failed for: r1v8 */
    /* JADX WARN: Type inference failed for: r2v0, types: [androidx.glance.appwidget.AppWidgetSession, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r2v11 */
    /* JADX WARN: Type inference failed for: r2v5, types: [androidx.compose.runtime.Recomposer] */
    /* JADX WARN: Type inference failed for: r2v6 */
    /* JADX WARN: Type inference failed for: r2v9 */
    /* JADX WARN: Type inference failed for: r3v0, types: [android.content.Context] */
    /* JADX WARN: Type inference failed for: r3v11 */
    /* JADX WARN: Type inference failed for: r3v5, types: [kotlinx.coroutines.Job] */
    /* JADX WARN: Type inference failed for: r3v6 */
    /* JADX WARN: Type inference failed for: r3v9 */
    /* JADX WARN: Type inference failed for: r4v18, types: [int] */
    /* JADX WARN: Type inference failed for: r4v19, types: [int] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object runSession(androidx.glance.session.TimerScopeKt$withTimer$2$1$blockScope$1 r18, android.content.Context r19, androidx.glance.appwidget.AppWidgetSession r20, androidx.glance.session.TimeoutOptions r21, androidx.glance.session.SessionWorker$doWork$2$2.AnonymousClass1 r22, kotlin.coroutines.jvm.internal.ContinuationImpl r23) {
        /*
            Method dump skipped, instructions count: 372
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.ExceptionsKt.runSession(androidx.glance.session.TimerScopeKt$withTimer$2$1$blockScope$1, android.content.Context, androidx.glance.appwidget.AppWidgetSession, androidx.glance.session.TimeoutOptions, androidx.glance.session.SessionWorker$doWork$2$2$1, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    public static final Object select(Set set, Enum r2, Enum r3, Enum r4, boolean z) {
        if (!z) {
            if (r4 != null) {
                set = CollectionsKt.toSet(UuidKt.plus(set, r4));
            }
            return CollectionsKt.singleOrNull(set);
        }
        Enum r1 = set.contains(r2) ? r2 : set.contains(r3) ? r3 : null;
        if (Intrinsics.areEqual(r1, r2) && Intrinsics.areEqual(r4, r3)) {
            return null;
        }
        return r4 == null ? r1 : r4;
    }

    public static void setActionProvider(MenuItem menuItem, ActionProvider actionProvider) {
        if (menuItem instanceof SupportMenuItem) {
            ((SupportMenuItem) menuItem).setSupportActionProvider(actionProvider);
        } else {
            Log.w("MenuItemCompat", "setActionProvider: item does not implement SupportMenuItem; ignoring");
        }
    }

    public static void setBlendMode(LPaint lPaint, BlendModeCompat blendModeCompat) {
        if (Build.VERSION.SDK_INT >= 29) {
            FileUtil.setBlendMode(lPaint, blendModeCompat != null ? FileUtil.obtainBlendModeFromCompat(blendModeCompat) : null);
        } else if (blendModeCompat == null) {
            lPaint.setXfermode(null);
        } else {
            PorterDuff.Mode obtainPorterDuffFromCompat = OperationKt.obtainPorterDuffFromCompat(blendModeCompat);
            lPaint.setXfermode(obtainPorterDuffFromCompat != null ? new PorterDuffXfermode(obtainPorterDuffFromCompat) : null);
        }
    }

    public static final void setCollectionItemInfo(SemanticsNode semanticsNode, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
        Object obj = semanticsNode.getConfig().props.get(SemanticsProperties.CollectionItemInfo);
        if (obj == null) {
            obj = null;
        }
        if (obj != null) {
            ContextsKt$$ExternalSyntheticBUOutline0.m$1();
            return;
        }
        SemanticsNode parent = semanticsNode.getParent();
        if (parent == null) {
            return;
        }
        Object obj2 = parent.getConfig().props.get(SemanticsProperties.SelectableGroup);
        if (obj2 == null) {
            obj2 = null;
        }
        if (obj2 != null) {
            Object obj3 = parent.getConfig().props.get(SemanticsProperties.CollectionInfo);
            CollectionInfo collectionInfo = (CollectionInfo) (obj3 != null ? obj3 : null);
            if (collectionInfo == null || (collectionInfo.rowCount >= 0 && collectionInfo.columnCount >= 0)) {
                if (semanticsNode.getConfig().props.containsKey(SemanticsProperties.Selected)) {
                    ArrayList arrayList = new ArrayList();
                    List children$ui$default = SemanticsNode.getChildren$ui$default(4, parent);
                    int size = children$ui$default.size();
                    int i = 0;
                    for (int i2 = 0; i2 < size; i2++) {
                        SemanticsNode semanticsNode2 = (SemanticsNode) children$ui$default.get(i2);
                        if (semanticsNode2.getConfig().props.containsKey(SemanticsProperties.Selected)) {
                            arrayList.add(semanticsNode2);
                            if (semanticsNode2.layoutNode.getPlaceOrder$ui() < semanticsNode.layoutNode.getPlaceOrder$ui()) {
                                i++;
                            }
                        }
                    }
                    if (arrayList.isEmpty()) {
                        return;
                    }
                    boolean calculateIfHorizontallyStacked = calculateIfHorizontallyStacked(arrayList);
                    int i3 = calculateIfHorizontallyStacked ? 0 : i;
                    int i4 = calculateIfHorizontallyStacked ? i : 0;
                    Object obj4 = semanticsNode.getConfig().props.get(SemanticsProperties.Selected);
                    if (obj4 == null) {
                        obj4 = Boolean.FALSE;
                    }
                    accessibilityNodeInfoCompat.setCollectionItemInfo(Extras.Key.obtain(((Boolean) obj4).booleanValue(), i3, 1, i4, 1));
                }
            }
        }
    }

    public static void setIconTintList(MenuItem menuItem, ColorStateList colorStateList) {
        if (menuItem instanceof SupportMenuItem) {
            ((SupportMenuItem) menuItem).setIconTintList(colorStateList);
        } else if (Build.VERSION.SDK_INT >= 26) {
            BitmapsKt.setIconTintList(menuItem, colorStateList);
        }
    }

    public static final Object startUndspatched(ScopeCoroutine scopeCoroutine, boolean z, Object obj, Function2 function2) {
        Object completedExceptionally;
        Object makeCompletingOnce$kotlinx_coroutines_core;
        try {
            if (function2 instanceof BaseContinuationImpl) {
                TypeIntrinsics.beforeCheckcastToFunctionOfArity(2, function2);
                completedExceptionally = function2.invoke(obj, scopeCoroutine);
            } else {
                completedExceptionally = wrapWithContinuationImpl(function2, obj, scopeCoroutine);
            }
        } catch (DispatchException e) {
            Throwable th = e.cause;
            scopeCoroutine.makeCompleting$kotlinx_coroutines_core(new CompletedExceptionally(th, false));
            throw th;
        } catch (Throwable th2) {
            completedExceptionally = new CompletedExceptionally(th2, false);
        }
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        if (completedExceptionally == coroutineSingletons || (makeCompletingOnce$kotlinx_coroutines_core = scopeCoroutine.makeCompletingOnce$kotlinx_coroutines_core(completedExceptionally)) == AwaitKt.COMPLETING_WAITING_CHILDREN) {
            return coroutineSingletons;
        }
        scopeCoroutine.afterCompletionUndispatched();
        if (!(makeCompletingOnce$kotlinx_coroutines_core instanceof CompletedExceptionally)) {
            return AwaitKt.unboxState(makeCompletingOnce$kotlinx_coroutines_core);
        }
        if (!z) {
            Throwable th3 = ((CompletedExceptionally) makeCompletingOnce$kotlinx_coroutines_core).cause;
            if ((th3 instanceof TimeoutCancellationException) && ((TimeoutCancellationException) th3).coroutine == scopeCoroutine) {
                if (completedExceptionally instanceof CompletedExceptionally) {
                    throw ((CompletedExceptionally) completedExceptionally).cause;
                }
                return completedExceptionally;
            }
        }
        throw ((CompletedExceptionally) makeCompletingOnce$kotlinx_coroutines_core).cause;
    }

    /* renamed from: takeMax-impl, reason: not valid java name */
    public static final int m810takeMaximpl(MutableIntList mutableIntList) {
        int i;
        int i2 = mutableIntList._size;
        int i3 = mutableIntList.get(0);
        while (mutableIntList._size != 0 && mutableIntList.get(0) == i3) {
            mutableIntList.set(0, mutableIntList.last());
            mutableIntList.removeAt(mutableIntList._size - 1);
            int i4 = mutableIntList._size;
            int i5 = i4 >>> 1;
            int i6 = 0;
            while (i6 < i5) {
                int i7 = mutableIntList.get(i6);
                int i8 = (i6 + 1) * 2;
                int i9 = i8 - 1;
                int i10 = mutableIntList.get(i9);
                if (i8 >= i4 || (i = mutableIntList.get(i8)) <= i10) {
                    if (i10 > i7) {
                        mutableIntList.set(i6, i10);
                        mutableIntList.set(i9, i7);
                        i6 = i9;
                    }
                } else if (i > i7) {
                    mutableIntList.set(i6, i);
                    mutableIntList.set(i8, i7);
                    i6 = i8;
                }
            }
        }
        return i3;
    }

    public static final List toImmutableList(List list) {
        int size = list.size();
        return size != 0 ? size != 1 ? DesugarCollections.unmodifiableList(new ArrayList(list)) : Collections.singletonList(CollectionsKt.first(list)) : EmptyList.INSTANCE;
    }

    public static final Map toImmutableMap(Map map) {
        int size = map.size();
        if (size == 0) {
            return EmptyMap.INSTANCE;
        }
        if (size != 1) {
            return DesugarCollections.unmodifiableMap(new LinkedHashMap(map));
        }
        Map.Entry entry = (Map.Entry) CollectionsKt.first(map.entrySet());
        return Collections.singletonMap(entry.getKey(), entry.getValue());
    }

    public static final LayoutProto$DimensionType toProto(Dimension dimension, Context context) {
        if (Build.VERSION.SDK_INT >= 31) {
            return WidgetLayoutImpl31.INSTANCE.toProto(dimension);
        }
        Dimension resolveDimension = LayoutSelectionKt.resolveDimension(dimension, context);
        if (resolveDimension instanceof Dimension.Dp) {
            return LayoutProto$DimensionType.EXACT;
        }
        if (resolveDimension instanceof Dimension.Wrap) {
            return LayoutProto$DimensionType.WRAP;
        }
        if (resolveDimension instanceof Dimension.Fill) {
            return LayoutProto$DimensionType.FILL;
        }
        if (resolveDimension instanceof Dimension.Expand) {
            return LayoutProto$DimensionType.EXPAND;
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m$1("After resolution, no other type should be present");
        return null;
    }

    /* renamed from: toProto-Je2gTW8, reason: not valid java name */
    public static final LayoutProto$VerticalAlignment m811toProtoJe2gTW8(int i) {
        if (i == 0) {
            return LayoutProto$VerticalAlignment.TOP;
        }
        if (i == 1) {
            return LayoutProto$VerticalAlignment.CENTER_VERTICALLY;
        }
        if (i == 2) {
            return LayoutProto$VerticalAlignment.BOTTOM;
        }
        ContextsKt$$ExternalSyntheticBUOutline0.m("unknown vertical alignment ", Alignment.Vertical.m748toStringimpl(i));
        return null;
    }

    /* renamed from: toProto-uMT2-20, reason: not valid java name */
    public static final LayoutProto$HorizontalAlignment m812toProtouMT220(int i) {
        if (i == 0) {
            return LayoutProto$HorizontalAlignment.START;
        }
        if (i == 1) {
            return LayoutProto$HorizontalAlignment.CENTER_HORIZONTALLY;
        }
        if (i == 2) {
            return LayoutProto$HorizontalAlignment.END;
        }
        ContextsKt$$ExternalSyntheticBUOutline0.m("unknown horizontal alignment ", Alignment.Horizontal.m746toStringimpl(i));
        return null;
    }

    /* renamed from: toSize-ozmzZPI, reason: not valid java name */
    public static final long m813toSizeozmzZPI(long j) {
        return (Float.floatToRawIntBits((int) (j & 4294967295L)) & 4294967295L) | (Float.floatToRawIntBits((int) (j >> 32)) << 32);
    }

    public static final boolean typeStringsDifferOnlyInNullability(String str, String str2) {
        str.getClass();
        str2.getClass();
        if (str.equals(StringsKt__StringsJVMKt.replace$default(str2, "?", ""))) {
            return true;
        }
        if (StringsKt__StringsJVMKt.endsWith(str2, "?", false) && str.concat("?").equals(str2)) {
            return true;
        }
        StringBuilder sb = new StringBuilder("(");
        sb.append(str);
        sb.append(")?");
        return sb.toString().equals(str2);
    }

    /* renamed from: updateRangeAfterDelete-pWDy79M, reason: not valid java name */
    public static final long m814updateRangeAfterDeletepWDy79M(long j, long j2) {
        int m642getLengthimpl;
        int m644getMinimpl = TextRange.m644getMinimpl(j);
        int m643getMaximpl = TextRange.m643getMaximpl(j);
        if ((TextRange.m644getMinimpl(j2) < TextRange.m643getMaximpl(j)) && (TextRange.m644getMinimpl(j) < TextRange.m643getMaximpl(j2))) {
            if ((TextRange.m644getMinimpl(j2) <= TextRange.m644getMinimpl(j)) && (TextRange.m643getMaximpl(j) <= TextRange.m643getMaximpl(j2))) {
                m644getMinimpl = TextRange.m644getMinimpl(j2);
                m643getMaximpl = m644getMinimpl;
            } else {
                if ((TextRange.m644getMinimpl(j) <= TextRange.m644getMinimpl(j2)) && (TextRange.m643getMaximpl(j2) <= TextRange.m643getMaximpl(j))) {
                    m642getLengthimpl = TextRange.m642getLengthimpl(j2);
                } else {
                    int m644getMinimpl2 = TextRange.m644getMinimpl(j2);
                    if (m644getMinimpl >= TextRange.m643getMaximpl(j2) || m644getMinimpl2 > m644getMinimpl) {
                        m643getMaximpl = TextRange.m644getMinimpl(j2);
                    } else {
                        m644getMinimpl = TextRange.m644getMinimpl(j2);
                        m642getLengthimpl = TextRange.m642getLengthimpl(j2);
                    }
                }
                m643getMaximpl -= m642getLengthimpl;
            }
        } else if (m643getMaximpl > TextRange.m644getMinimpl(j2)) {
            m644getMinimpl -= TextRange.m642getLengthimpl(j2);
            m642getLengthimpl = TextRange.m642getLengthimpl(j2);
            m643getMaximpl -= m642getLengthimpl;
        }
        return ParagraphKt.TextRange(m644getMinimpl, m643getMaximpl);
    }

    public static Object wrapWithContinuationImpl(Function2 function2, Object obj, Continuation continuation) {
        function2.getClass();
        CoroutineContext context = continuation.getContext();
        Object intrinsicsKt__IntrinsicsJvmKt$createSimpleCoroutineForSuspendFunction$1 = context == EmptyCoroutineContext.INSTANCE ? new IntrinsicsKt__IntrinsicsJvmKt$createSimpleCoroutineForSuspendFunction$1(continuation) : new IntrinsicsKt__IntrinsicsJvmKt$createSimpleCoroutineForSuspendFunction$2(continuation, context);
        TypeIntrinsics.beforeCheckcastToFunctionOfArity(2, function2);
        return function2.invoke(obj, intrinsicsKt__IntrinsicsJvmKt$createSimpleCoroutineForSuspendFunction$1);
    }

    public abstract Intent createIntent(AppCompatActivity appCompatActivity, Object obj);

    public Extras.Key getSynchronousResult(AppCompatActivity appCompatActivity, Object obj) {
        return null;
    }

    public abstract void onFontRetrievalFailed(int i);

    public abstract void onFontRetrieved(Typeface typeface, boolean z);

    public abstract Object parseResult(Intent intent, int i);
}
