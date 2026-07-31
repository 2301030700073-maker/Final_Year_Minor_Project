package androidx.work;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.util.TypedValue;
import android.view.View;
import android.widget.ImageView;
import android.widget.RemoteViews;
import androidx.activity.OnBackPressedDispatcherOwner;
import androidx.activity.compose.BackHandlerKt$$ExternalSyntheticLambda2;
import androidx.activity.compose.ComposePredictiveBackHandler;
import androidx.activity.compose.LocalOnBackPressedDispatcherOwner;
import androidx.activity.compose.PredictiveBackHandlerInfo;
import androidx.activity.compose.internal.BackHandlerDispatcherCompat;
import androidx.collection.MutableIntObjectMap;
import androidx.compose.animation.core.Animation;
import androidx.compose.foundation.gestures.Orientation;
import androidx.compose.foundation.interaction.MutableInteractionSourceImpl;
import androidx.compose.foundation.lazy.layout.LazyLayoutMeasureScopeImpl;
import androidx.compose.foundation.pager.MeasuredPage;
import androidx.compose.foundation.pager.PagerLazyLayoutItemProvider;
import androidx.compose.runtime.Composer$Companion;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.NeverEqualPolicy;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.Recomposer$$ExternalSyntheticLambda6;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.composer.gapbuffer.GapAnchor;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.ui.BiasAlignment;
import androidx.compose.ui.autofill.AndroidContentType;
import androidx.compose.ui.autofill.ContentType;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.text.SaversKt$$ExternalSyntheticLambda3;
import androidx.compose.ui.unit.IntRect;
import androidx.compose.ui.unit.LayoutDirection;
import androidx.concurrent.futures.CallbackToFutureAdapter$Completer;
import androidx.concurrent.futures.CallbackToFutureAdapter$SafeFuture;
import androidx.concurrent.futures.ResolvableFuture;
import androidx.core.graphics.BlendModeCompat;
import androidx.core.graphics.BlendModeUtils$1;
import androidx.datastore.core.SimpleActor$offer$2;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManagerImpl;
import androidx.glance.appwidget.TranslationContext;
import androidx.lifecycle.MutableLiveData;
import androidx.lifecycle.compose.LifecycleStartStopEffectScope;
import androidx.navigation.NavGraphBuilder;
import androidx.navigation.NavigatorProvider;
import androidx.navigation.compose.ComposeNavigator;
import androidx.navigation.compose.ComposeNavigatorDestinationBuilder;
import androidx.navigationevent.NavigationEventDispatcherOwner;
import androidx.navigationevent.compose.LocalNavigationEventDispatcherOwner;
import androidx.room.Room;
import androidx.sqlite.SQLiteConnection;
import androidx.sqlite.SQLiteStatement;
import androidx.work.Data;
import coil3.ImageLoader$Builder;
import coil3.request.ViewTargetRequestManager;
import coil3.util.ContextsKt;
import coil3.util.ContextsKt$$ExternalSyntheticBUOutline0;
import com.caverock.androidsvg.SVG;
import com.google.android.material.R$styleable;
import com.google.gson.Gson$$ExternalSyntheticBUOutline0;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.ListIterator;
import java.util.Set;
import java.util.concurrent.Executor;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.CollectionsKt__IteratorsJVMKt;
import kotlin.collections.IndexedValue;
import kotlin.collections.IndexingIterator;
import kotlin.collections.builders.ListBuilder;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.KClass;
import kotlin.reflect.jvm.internal.UtilKt;
import kotlin.reflect.jvm.internal.impl.builtins.KotlinBuiltIns;
import kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassKind;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassifierDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassifierDescriptorWithTypeParameters;
import kotlin.reflect.jvm.internal.impl.descriptors.ConstructorDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.PropertyDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.VariableDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotations;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.ModuleAwareClassDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.ReceiverParameterDescriptorImpl;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaTypeParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.types.JavaTypeAttributes;
import kotlin.reflect.jvm.internal.impl.name.ClassId;
import kotlin.reflect.jvm.internal.impl.resolve.InlineClassesUtilsKt;
import kotlin.reflect.jvm.internal.impl.resolve.descriptorUtil.DescriptorUtilsKt;
import kotlin.reflect.jvm.internal.impl.types.FlexibleType;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.KotlinTypeKt;
import kotlin.reflect.jvm.internal.impl.types.SimpleType;
import kotlin.reflect.jvm.internal.impl.types.StarProjectionImpl;
import kotlin.reflect.jvm.internal.impl.types.TypeAttributes;
import kotlin.reflect.jvm.internal.impl.types.TypeConstructor;
import kotlin.reflect.jvm.internal.impl.types.TypeProjectionBase;
import kotlin.reflect.jvm.internal.impl.types.TypeUsage;
import kotlin.reflect.jvm.internal.impl.types.TypeUtils;
import kotlin.reflect.jvm.internal.impl.types.UnwrappedType;
import kotlin.reflect.jvm.internal.impl.types.Variance;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlin.uuid.UuidKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutinesInternalError;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.wikipedia.R;
import org.wikipedia.feed.FeedComponentsKt$$ExternalSyntheticLambda1;
import org.wikipedia.util.FileUtil;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class OperationKt {
    public static boolean sActionBarFieldsFetched = false;
    public static Method sActionBarOnMenuKeyMethod = null;
    public static boolean sDialogFieldsFetched = false;
    public static Field sDialogKeyListenerField;

    public static final AndroidContentType ContentType(String str) {
        return new AndroidContentType(UuidKt.setOf(str));
    }

    /* renamed from: IntRect-VbeCjmY, reason: not valid java name */
    public static final IntRect m768IntRectVbeCjmY(long j, long j2) {
        int i = (int) (j >> 32);
        int i2 = (int) (j & 4294967295L);
        return new IntRect(i, i2, ((int) (j2 >> 32)) + i, ((int) (j2 & 4294967295L)) + i2);
    }

    public static final void PredictiveBackHandler(final boolean z, Function2 function2, GapComposer gapComposer, int i) {
        int i2;
        gapComposer.startRestartGroup(-642000585);
        int i3 = 2;
        if ((i & 6) == 0) {
            i2 = (gapComposer.changed(z) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            i2 |= gapComposer.changedInstance(function2) ? 32 : 16;
        }
        int i4 = 1;
        if (gapComposer.shouldExecute(i2 & 1, (i2 & 19) != 18)) {
            Object current = LocalNavigationEventDispatcherOwner.getCurrent(gapComposer);
            if (current == null) {
                gapComposer.startReplaceGroup(1512740606);
                current = LocalOnBackPressedDispatcherOwner.getCurrent(gapComposer);
            } else {
                gapComposer.startReplaceGroup(1512737723);
            }
            gapComposer.end(false);
            if (current == null) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m$1("No NavigationEventDispatcherOwner was provided via LocalNavigationEventDispatcherOwner and no OnBackPressedDispatcherOwner was provided via LocalOnBackPressedDispatcherOwner. Please provide one of the two.");
                return;
            }
            boolean changed = gapComposer.changed(current);
            Object rememberedValue = gapComposer.rememberedValue();
            Object obj = Composer$Companion.Empty;
            if (changed || rememberedValue == obj) {
                NavigationEventDispatcherOwner navigationEventDispatcherOwner = current instanceof NavigationEventDispatcherOwner ? (NavigationEventDispatcherOwner) current : null;
                ImageLoader$Builder navigationEventDispatcher = navigationEventDispatcherOwner != null ? navigationEventDispatcherOwner.getNavigationEventDispatcher() : null;
                OnBackPressedDispatcherOwner onBackPressedDispatcherOwner = current instanceof OnBackPressedDispatcherOwner ? (OnBackPressedDispatcherOwner) current : null;
                rememberedValue = new BackHandlerDispatcherCompat(navigationEventDispatcher, onBackPressedDispatcherOwner != null ? onBackPressedDispatcherOwner.getOnBackPressedDispatcher() : null);
                gapComposer.updateRememberedValue(rememberedValue);
            }
            Object obj2 = (BackHandlerDispatcherCompat) rememberedValue;
            Object rememberedValue2 = gapComposer.rememberedValue();
            if (rememberedValue2 == obj) {
                rememberedValue2 = Updater.createCompositionCoroutineScope(gapComposer);
                gapComposer.updateRememberedValue(rememberedValue2);
            }
            CoroutineScope coroutineScope = (CoroutineScope) rememberedValue2;
            long j = gapComposer.compositeKeyHashCode;
            boolean changed2 = gapComposer.changed(obj2) | gapComposer.changed(j);
            Object rememberedValue3 = gapComposer.rememberedValue();
            if (changed2 || rememberedValue3 == obj) {
                rememberedValue3 = new ComposePredictiveBackHandler(coroutineScope, new PredictiveBackHandlerInfo(j, current));
                gapComposer.updateRememberedValue(rememberedValue3);
            }
            final ComposePredictiveBackHandler composePredictiveBackHandler = (ComposePredictiveBackHandler) rememberedValue3;
            gapComposer.startReplaceGroup(-348514256);
            boolean changedInstance = gapComposer.changedInstance(composePredictiveBackHandler) | gapComposer.changedInstance(function2);
            Object rememberedValue4 = gapComposer.rememberedValue();
            if (changedInstance || rememberedValue4 == obj) {
                rememberedValue4 = new Recomposer$$ExternalSyntheticLambda6(i3, composePredictiveBackHandler, function2);
                gapComposer.updateRememberedValue(rememberedValue4);
            }
            Updater.SideEffect((Function0) rememberedValue4, gapComposer);
            int i5 = i2;
            Boolean valueOf = Boolean.valueOf(z);
            int i6 = i5 & 14;
            boolean changedInstance2 = (i6 == 4) | gapComposer.changedInstance(composePredictiveBackHandler);
            Object rememberedValue5 = gapComposer.rememberedValue();
            if (changedInstance2 || rememberedValue5 == obj) {
                rememberedValue5 = new Function1() { // from class: androidx.activity.compose.PredictiveBackHandlerKt$$ExternalSyntheticLambda1
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj3) {
                        ComposePredictiveBackHandler composePredictiveBackHandler2 = ComposePredictiveBackHandler.this;
                        composePredictiveBackHandler2.setBackEnabled(z);
                        return new BackHandlerKt$BackHandler$lambda$3$0$$inlined$onStopOrDispose$1((LifecycleStartStopEffectScope) obj3, composePredictiveBackHandler2, 1);
                    }
                };
                gapComposer.updateRememberedValue(rememberedValue5);
            }
            TuplesKt.LifecycleStartEffect(valueOf, composePredictiveBackHandler, null, (Function1) rememberedValue5, gapComposer, i6);
            boolean changedInstance3 = gapComposer.changedInstance(obj2) | gapComposer.changedInstance(composePredictiveBackHandler);
            Object rememberedValue6 = gapComposer.rememberedValue();
            if (changedInstance3 || rememberedValue6 == obj) {
                rememberedValue6 = new BackHandlerKt$$ExternalSyntheticLambda2(i4, obj2, composePredictiveBackHandler);
                gapComposer.updateRememberedValue(rememberedValue6);
            }
            Updater.DisposableEffect(obj2, composePredictiveBackHandler, (Function1) rememberedValue6, gapComposer);
            gapComposer.end(false);
        } else {
            gapComposer.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new FeedComponentsKt$$ExternalSyntheticLambda1(z, function2, i);
        }
    }

    public static final GapAnchor asGapAnchor(GapAnchor gapAnchor) {
        if (gapAnchor == null) {
            gapAnchor = null;
        }
        if (gapAnchor != null) {
            return gapAnchor;
        }
        ComposerKt.composeRuntimeError("Inconsistent composition");
        Gson$$ExternalSyntheticBUOutline0.m$1();
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0032  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0022  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object awaitClose(kotlinx.coroutines.channels.ProducerCoroutine r5, kotlin.jvm.functions.Function0 r6, kotlin.coroutines.jvm.internal.ContinuationImpl r7) {
        /*
            boolean r0 = r7 instanceof kotlinx.coroutines.channels.ProduceKt$awaitClose$1
            if (r0 == 0) goto L13
            r0 = r7
            kotlinx.coroutines.channels.ProduceKt$awaitClose$1 r0 = (kotlinx.coroutines.channels.ProduceKt$awaitClose$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            kotlinx.coroutines.channels.ProduceKt$awaitClose$1 r0 = new kotlinx.coroutines.channels.ProduceKt$awaitClose$1
            r0.<init>(r7)
        L18:
            java.lang.Object r7 = r0.result
            kotlin.coroutines.intrinsics.CoroutineSingletons r1 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r2 = r0.label
            r3 = 0
            r4 = 1
            if (r2 == 0) goto L32
            if (r2 != r4) goto L2c
            kotlin.jvm.functions.Function0 r6 = r0.L$1
            kotlin.ResultKt.throwOnFailure(r7)     // Catch: java.lang.Throwable -> L2a
            goto L63
        L2a:
            r5 = move-exception
            goto L69
        L2c:
            java.lang.String r5 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$1(r5)
            return r3
        L32:
            kotlin.ResultKt.throwOnFailure(r7)
            kotlin.coroutines.CoroutineContext r7 = r0._context
            r7.getClass()
            kotlinx.coroutines.Job$Key r2 = kotlinx.coroutines.Job.Key.$$INSTANCE
            kotlin.coroutines.CoroutineContext$Element r7 = r7.get(r2)
            if (r7 != r5) goto L6d
            r0.L$1 = r6     // Catch: java.lang.Throwable -> L2a
            r0.label = r4     // Catch: java.lang.Throwable -> L2a
            kotlinx.coroutines.CancellableContinuationImpl r7 = new kotlinx.coroutines.CancellableContinuationImpl     // Catch: java.lang.Throwable -> L2a
            kotlin.coroutines.Continuation r0 = kotlin.ExceptionsKt.intercepted(r0)     // Catch: java.lang.Throwable -> L2a
            r7.<init>(r4, r0)     // Catch: java.lang.Throwable -> L2a
            r7.initCancellability()     // Catch: java.lang.Throwable -> L2a
            coil3.network.okhttp.internal.CallsKt$await$2$1 r0 = new coil3.network.okhttp.internal.CallsKt$await$2$1     // Catch: java.lang.Throwable -> L2a
            r2 = 8
            r0.<init>(r2, r7)     // Catch: java.lang.Throwable -> L2a
            r5.invokeOnClose(r0)     // Catch: java.lang.Throwable -> L2a
            java.lang.Object r5 = r7.getResult()     // Catch: java.lang.Throwable -> L2a
            if (r5 != r1) goto L63
            return r1
        L63:
            r6.invoke()
            kotlin.Unit r5 = kotlin.Unit.INSTANCE
            return r5
        L69:
            r6.invoke()
            throw r5
        L6d:
            java.lang.String r5 = "awaitClose() can only be invoked from the producer context"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$1(r5)
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.work.OperationKt.awaitClose(kotlinx.coroutines.channels.ProducerCoroutine, kotlin.jvm.functions.Function0, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    public static final void checkZoomLevels(float f, float f2, float f3) {
        if (f >= f2) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m("Minimum zoom has to be less than Medium zoom. Call setMinimumZoom() with a more appropriate value");
        } else {
            if (f2 < f3) {
                return;
            }
            _UtilJvmKt$$ExternalSyntheticLambda0.m("Medium zoom has to be less than Maximum zoom. Call setMaximumZoom() with a more appropriate value");
        }
    }

    public static final Object coerceToExpectedReceiverType(Object obj, CallableMemberDescriptor callableMemberDescriptor) {
        KotlinType expectedReceiverType;
        Class inlineClass;
        return (((callableMemberDescriptor instanceof PropertyDescriptor) && InlineClassesUtilsKt.isUnderlyingPropertyOfInlineClass((VariableDescriptor) callableMemberDescriptor)) || (expectedReceiverType = getExpectedReceiverType(callableMemberDescriptor)) == null || (inlineClass = toInlineClass(expectedReceiverType)) == null) ? obj : getUnboxMethod(inlineClass, callableMemberDescriptor).invoke(obj, null);
    }

    public static final MutableState collectIsFocusedAsState(MutableInteractionSourceImpl mutableInteractionSourceImpl, GapComposer gapComposer, int i) {
        Object rememberedValue = gapComposer.rememberedValue();
        NeverEqualPolicy neverEqualPolicy = Composer$Companion.Empty;
        if (rememberedValue == neverEqualPolicy) {
            rememberedValue = Updater.mutableStateOf$default(Boolean.FALSE);
            gapComposer.updateRememberedValue(rememberedValue);
        }
        MutableState mutableState = (MutableState) rememberedValue;
        boolean z = (((i & 14) ^ 6) > 4 && gapComposer.changed(mutableInteractionSourceImpl)) || (i & 6) == 4;
        Object rememberedValue2 = gapComposer.rememberedValue();
        if (z || rememberedValue2 == neverEqualPolicy) {
            rememberedValue2 = new SimpleActor$offer$2(mutableInteractionSourceImpl, mutableState, null, 9);
            gapComposer.updateRememberedValue(rememberedValue2);
        }
        Updater.LaunchedEffect(gapComposer, mutableInteractionSourceImpl, (Function2) rememberedValue2);
        return mutableState;
    }

    public static final void composable(NavGraphBuilder navGraphBuilder, KClass kClass, ComposableLambdaImpl composableLambdaImpl) {
        NavigatorProvider navigatorProvider = navGraphBuilder.provider;
        navigatorProvider.getClass();
        navGraphBuilder.destinations.add(new ComposeNavigatorDestinationBuilder((ComposeNavigator) navigatorProvider.getNavigator(UuidKt.getNameForNavigator$navigation_common_release(ComposeNavigator.class)), kClass, composableLambdaImpl).build());
    }

    public static final boolean containsInclusive(Rect rect, float f, float f2) {
        float f3 = rect.left;
        if (f > rect.right || f3 > f) {
            return false;
        }
        return f2 <= rect.bottom && rect.top <= f2;
    }

    public static final boolean containsSelfTypeParameter(KotlinType kotlinType, TypeConstructor typeConstructor, Set set) {
        boolean containsSelfTypeParameter;
        if (Intrinsics.areEqual(kotlinType.getConstructor(), typeConstructor)) {
            return true;
        }
        ClassifierDescriptor declarationDescriptor = kotlinType.getConstructor().getDeclarationDescriptor();
        ClassifierDescriptorWithTypeParameters classifierDescriptorWithTypeParameters = declarationDescriptor instanceof ClassifierDescriptorWithTypeParameters ? (ClassifierDescriptorWithTypeParameters) declarationDescriptor : null;
        List declaredTypeParameters = classifierDescriptorWithTypeParameters != null ? classifierDescriptorWithTypeParameters.getDeclaredTypeParameters() : null;
        Iterable withIndex = CollectionsKt.withIndex(kotlinType.getArguments());
        if (!(withIndex instanceof Collection) || !((Collection) withIndex).isEmpty()) {
            Iterator it = withIndex.iterator();
            do {
                IndexingIterator indexingIterator = (IndexingIterator) it;
                if (indexingIterator.iterator.hasNext()) {
                    IndexedValue indexedValue = (IndexedValue) indexingIterator.next();
                    int i = indexedValue.index;
                    TypeProjectionBase typeProjectionBase = (TypeProjectionBase) indexedValue.value;
                    TypeParameterDescriptor typeParameterDescriptor = declaredTypeParameters != null ? (TypeParameterDescriptor) CollectionsKt.getOrNull(declaredTypeParameters, i) : null;
                    if ((typeParameterDescriptor == null || set == null || !set.contains(typeParameterDescriptor)) && !typeProjectionBase.isStarProjection()) {
                        KotlinType type = typeProjectionBase.getType();
                        type.getClass();
                        containsSelfTypeParameter = containsSelfTypeParameter(type, typeConstructor, set);
                    } else {
                        containsSelfTypeParameter = false;
                    }
                }
            } while (!containsSelfTypeParameter);
            return true;
        }
        return false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:4:0x0010, code lost:
    
        if (kotlin.reflect.jvm.internal.impl.resolve.InlineClassesUtilsKt.isUnderlyingPropertyOfInlineClass(((kotlin.reflect.jvm.internal.impl.descriptors.impl.PropertyGetterDescriptorImpl) r3).correspondingProperty) != false) goto L28;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final kotlin.reflect.jvm.internal.calls.Caller createInlineClassAwareCallerIfNeeded(kotlin.reflect.jvm.internal.calls.Caller r2, kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor r3, boolean r4) {
        /*
            r3.getClass()
            boolean r0 = r3 instanceof kotlin.reflect.jvm.internal.impl.descriptors.impl.PropertyGetterDescriptorImpl
            if (r0 == 0) goto L13
            r0 = r3
            kotlin.reflect.jvm.internal.impl.descriptors.impl.PropertyGetterDescriptorImpl r0 = (kotlin.reflect.jvm.internal.impl.descriptors.impl.PropertyGetterDescriptorImpl) r0
            kotlin.reflect.jvm.internal.impl.descriptors.PropertyDescriptor r0 = r0.correspondingProperty
            boolean r0 = kotlin.reflect.jvm.internal.impl.resolve.InlineClassesUtilsKt.isUnderlyingPropertyOfInlineClass(r0)
            if (r0 == 0) goto L15
            goto L5f
        L13:
            int r0 = kotlin.reflect.jvm.internal.impl.resolve.InlineClassesUtilsKt.$r8$clinit
        L15:
            java.util.List r0 = r3.getValueParameters()
            r0.getClass()
            boolean r1 = r0.isEmpty()
            if (r1 == 0) goto L23
            goto L41
        L23:
            java.util.Iterator r0 = r0.iterator()
        L27:
            boolean r1 = r0.hasNext()
            if (r1 == 0) goto L41
            java.lang.Object r1 = r0.next()
            kotlin.reflect.jvm.internal.impl.descriptors.impl.ValueParameterDescriptorImpl r1 = (kotlin.reflect.jvm.internal.impl.descriptors.impl.ValueParameterDescriptorImpl) r1
            kotlin.reflect.jvm.internal.impl.types.KotlinType r1 = r1.getType()
            r1.getClass()
            boolean r1 = kotlin.reflect.jvm.internal.impl.resolve.InlineClassesUtilsKt.isInlineClassType(r1)
            if (r1 == 0) goto L27
            goto L5f
        L41:
            kotlin.reflect.jvm.internal.impl.types.KotlinType r0 = r3.getReturnType()
            r1 = 1
            if (r0 == 0) goto L4f
            boolean r0 = kotlin.reflect.jvm.internal.impl.resolve.InlineClassesUtilsKt.isInlineClassType(r0)
            if (r0 != r1) goto L4f
            goto L5f
        L4f:
            boolean r0 = r2 instanceof kotlin.reflect.jvm.internal.calls.BoundCaller
            if (r0 != 0) goto L65
            kotlin.reflect.jvm.internal.impl.types.KotlinType r0 = getExpectedReceiverType(r3)
            if (r0 == 0) goto L65
            boolean r0 = kotlin.reflect.jvm.internal.impl.resolve.InlineClassesUtilsKt.isInlineClassType(r0)
            if (r0 != r1) goto L65
        L5f:
            kotlin.reflect.jvm.internal.calls.InlineClassAwareCaller r0 = new kotlin.reflect.jvm.internal.calls.InlineClassAwareCaller
            r0.<init>(r2, r3, r4)
            return r0
        L65:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.work.OperationKt.createInlineClassAwareCallerIfNeeded(kotlin.reflect.jvm.internal.calls.Caller, kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor, boolean):kotlin.reflect.jvm.internal.calls.Caller");
    }

    public static final StarProjectionImpl createProjection(KotlinType kotlinType, Variance variance, TypeParameterDescriptor typeParameterDescriptor) {
        kotlinType.getClass();
        variance.getClass();
        if ((typeParameterDescriptor != null ? typeParameterDescriptor.getVariance() : null) == variance) {
            variance = Variance.INVARIANT;
        }
        return new StarProjectionImpl(kotlinType, variance);
    }

    /* JADX WARN: Removed duplicated region for block: B:56:0x00bf  */
    /* JADX WARN: Removed duplicated region for block: B:63:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean dispatchKeyEvent(androidx.core.view.KeyEventDispatcher$Component r7, android.view.View r8, android.view.Window.Callback r9, android.view.KeyEvent r10) {
        /*
            r0 = 0
            if (r7 != 0) goto L5
            goto Le4
        L5:
            int r1 = android.os.Build.VERSION.SDK_INT
            r2 = 28
            if (r1 < r2) goto L10
            boolean r7 = r7.superDispatchKeyEvent(r10)
            return r7
        L10:
            boolean r1 = r9 instanceof android.app.Activity
            r2 = 0
            r3 = 1
            if (r1 == 0) goto L82
            android.app.Activity r9 = (android.app.Activity) r9
            r9.onUserInteraction()
            android.view.Window r7 = r9.getWindow()
            r8 = 8
            boolean r8 = r7.hasFeature(r8)
            if (r8 == 0) goto L65
            android.app.ActionBar r8 = r9.getActionBar()
            int r1 = r10.getKeyCode()
            r4 = 82
            if (r1 != r4) goto L65
            if (r8 == 0) goto L65
            boolean r1 = androidx.work.OperationKt.sActionBarFieldsFetched
            if (r1 != 0) goto L4d
            java.lang.Class r1 = r8.getClass()     // Catch: java.lang.NoSuchMethodException -> L4b
            java.lang.String r4 = "onMenuKeyEvent"
            java.lang.Class[] r5 = new java.lang.Class[r3]     // Catch: java.lang.NoSuchMethodException -> L4b
            java.lang.Class<android.view.KeyEvent> r6 = android.view.KeyEvent.class
            r5[r0] = r6     // Catch: java.lang.NoSuchMethodException -> L4b
            java.lang.reflect.Method r1 = r1.getMethod(r4, r5)     // Catch: java.lang.NoSuchMethodException -> L4b
            androidx.work.OperationKt.sActionBarOnMenuKeyMethod = r1     // Catch: java.lang.NoSuchMethodException -> L4b
        L4b:
            androidx.work.OperationKt.sActionBarFieldsFetched = r3
        L4d:
            java.lang.reflect.Method r1 = androidx.work.OperationKt.sActionBarOnMenuKeyMethod
            if (r1 == 0) goto L62
            java.lang.Object[] r4 = new java.lang.Object[r3]     // Catch: java.lang.Throwable -> L62
            r4[r0] = r10     // Catch: java.lang.Throwable -> L62
            java.lang.Object r8 = r1.invoke(r8, r4)     // Catch: java.lang.Throwable -> L62
            if (r8 != 0) goto L5c
            goto L62
        L5c:
            java.lang.Boolean r8 = (java.lang.Boolean) r8     // Catch: java.lang.Throwable -> L62
            boolean r0 = r8.booleanValue()     // Catch: java.lang.Throwable -> L62
        L62:
            if (r0 == 0) goto L65
            goto L81
        L65:
            boolean r8 = r7.superDispatchKeyEvent(r10)
            if (r8 == 0) goto L6c
            goto L81
        L6c:
            android.view.View r7 = r7.getDecorView()
            boolean r8 = androidx.core.view.ViewCompat.dispatchUnhandledKeyEventBeforeCallback(r7, r10)
            if (r8 == 0) goto L77
            goto L81
        L77:
            if (r7 == 0) goto L7d
            android.view.KeyEvent$DispatcherState r2 = r7.getKeyDispatcherState()
        L7d:
            boolean r3 = r10.dispatch(r9, r2, r9)
        L81:
            return r3
        L82:
            boolean r1 = r9 instanceof android.app.Dialog
            if (r1 == 0) goto Ld5
            android.app.Dialog r9 = (android.app.Dialog) r9
            boolean r7 = androidx.work.OperationKt.sDialogFieldsFetched
            if (r7 != 0) goto L9b
            java.lang.Class<android.app.Dialog> r7 = android.app.Dialog.class
            java.lang.String r8 = "mOnKeyListener"
            java.lang.reflect.Field r7 = r7.getDeclaredField(r8)     // Catch: java.lang.NoSuchFieldException -> L99
            androidx.work.OperationKt.sDialogKeyListenerField = r7     // Catch: java.lang.NoSuchFieldException -> L99
            r7.setAccessible(r3)     // Catch: java.lang.NoSuchFieldException -> L99
        L99:
            androidx.work.OperationKt.sDialogFieldsFetched = r3
        L9b:
            java.lang.reflect.Field r7 = androidx.work.OperationKt.sDialogKeyListenerField
            if (r7 == 0) goto La6
            java.lang.Object r7 = r7.get(r9)     // Catch: java.lang.IllegalAccessException -> La6
            android.content.DialogInterface$OnKeyListener r7 = (android.content.DialogInterface.OnKeyListener) r7     // Catch: java.lang.IllegalAccessException -> La6
            goto La7
        La6:
            r7 = r2
        La7:
            if (r7 == 0) goto Lb4
            int r8 = r10.getKeyCode()
            boolean r7 = r7.onKey(r9, r8, r10)
            if (r7 == 0) goto Lb4
            goto Ld4
        Lb4:
            android.view.Window r7 = r9.getWindow()
            boolean r8 = r7.superDispatchKeyEvent(r10)
            if (r8 == 0) goto Lbf
            goto Ld4
        Lbf:
            android.view.View r7 = r7.getDecorView()
            boolean r8 = androidx.core.view.ViewCompat.dispatchUnhandledKeyEventBeforeCallback(r7, r10)
            if (r8 == 0) goto Lca
            goto Ld4
        Lca:
            if (r7 == 0) goto Ld0
            android.view.KeyEvent$DispatcherState r2 = r7.getKeyDispatcherState()
        Ld0:
            boolean r3 = r10.dispatch(r9, r2, r9)
        Ld4:
            return r3
        Ld5:
            if (r8 == 0) goto Ldd
            boolean r8 = androidx.core.view.ViewCompat.dispatchUnhandledKeyEventBeforeCallback(r8, r10)
            if (r8 != 0) goto Le3
        Ldd:
            boolean r7 = r7.superDispatchKeyEvent(r10)
            if (r7 == 0) goto Le4
        Le3:
            return r3
        Le4:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.work.OperationKt.dispatchKeyEvent(androidx.core.view.KeyEventDispatcher$Component, android.view.View, android.view.Window$Callback, android.view.KeyEvent):boolean");
    }

    public static final void dropFtsSyncTriggers(SQLiteConnection sQLiteConnection) {
        sQLiteConnection.getClass();
        ListBuilder createListBuilder = Room.createListBuilder();
        SQLiteStatement prepare = sQLiteConnection.prepare("SELECT name FROM sqlite_master WHERE type = 'trigger'");
        while (prepare.step()) {
            try {
                createListBuilder.add(prepare.getText(0));
            } finally {
            }
        }
        TuplesKt.closeFinally(prepare, null);
        ListIterator listIterator = Room.build(createListBuilder).listIterator(0);
        while (true) {
            ListBuilder.Itr itr = (ListBuilder.Itr) listIterator;
            if (!itr.hasNext()) {
                return;
            }
            String str = (String) itr.next();
            if (StringsKt__StringsJVMKt.startsWith(str, "room_fts_content_sync_", false)) {
                ContextsKt.execSQL(sQLiteConnection, "DROP TRIGGER IF EXISTS ".concat(str));
            }
        }
    }

    public static final void extractTypeParametersFromUpperBounds(KotlinType kotlinType, SimpleType simpleType, LinkedHashSet linkedHashSet, Set set) {
        ClassifierDescriptor declarationDescriptor = kotlinType.getConstructor().getDeclarationDescriptor();
        if (declarationDescriptor instanceof TypeParameterDescriptor) {
            if (!Intrinsics.areEqual(kotlinType.getConstructor(), simpleType.getConstructor())) {
                linkedHashSet.add(declarationDescriptor);
                return;
            }
            for (KotlinType kotlinType2 : ((TypeParameterDescriptor) declarationDescriptor).getUpperBounds()) {
                kotlinType2.getClass();
                extractTypeParametersFromUpperBounds(kotlinType2, simpleType, linkedHashSet, set);
            }
            return;
        }
        ClassifierDescriptor declarationDescriptor2 = kotlinType.getConstructor().getDeclarationDescriptor();
        ClassifierDescriptorWithTypeParameters classifierDescriptorWithTypeParameters = declarationDescriptor2 instanceof ClassifierDescriptorWithTypeParameters ? (ClassifierDescriptorWithTypeParameters) declarationDescriptor2 : null;
        List declaredTypeParameters = classifierDescriptorWithTypeParameters != null ? classifierDescriptorWithTypeParameters.getDeclaredTypeParameters() : null;
        int i = 0;
        for (TypeProjectionBase typeProjectionBase : kotlinType.getArguments()) {
            int i2 = i + 1;
            TypeParameterDescriptor typeParameterDescriptor = declaredTypeParameters != null ? (TypeParameterDescriptor) CollectionsKt.getOrNull(declaredTypeParameters, i) : null;
            if ((typeParameterDescriptor == null || set == null || !set.contains(typeParameterDescriptor)) && !typeProjectionBase.isStarProjection() && !CollectionsKt.contains(linkedHashSet, typeProjectionBase.getType().getConstructor().getDeclarationDescriptor()) && !Intrinsics.areEqual(typeProjectionBase.getType().getConstructor(), simpleType.getConstructor())) {
                KotlinType type = typeProjectionBase.getType();
                type.getClass();
                extractTypeParametersFromUpperBounds(type, simpleType, linkedHashSet, set);
            }
            i = i2;
        }
    }

    public static CoroutineContext.Element get(CoroutineContext.Element element, CoroutineContext.Key key) {
        key.getClass();
        if (Intrinsics.areEqual(element.getKey(), key)) {
            return element;
        }
        return null;
    }

    /* renamed from: getAndMeasure-G5IdpRk, reason: not valid java name */
    public static final MeasuredPage m769getAndMeasureG5IdpRk(LazyLayoutMeasureScopeImpl lazyLayoutMeasureScopeImpl, int i, long j, PagerLazyLayoutItemProvider pagerLazyLayoutItemProvider, long j2, Orientation orientation, BiasAlignment.Vertical vertical, LayoutDirection layoutDirection, int i2, MutableIntObjectMap mutableIntObjectMap) {
        List list;
        Object key = pagerLazyLayoutItemProvider.getKey(i);
        List list2 = (List) mutableIntObjectMap.get(i);
        if (list2 != null) {
            list = list2;
        } else {
            List compose = lazyLayoutMeasureScopeImpl.compose(i);
            int size = compose.size();
            ArrayList arrayList = new ArrayList(size);
            for (int i3 = 0; i3 < size; i3++) {
                arrayList.add(((Measurable) compose.get(i3)).mo512measureBRTryo0(j));
            }
            mutableIntObjectMap.set(i, arrayList);
            list = arrayList;
        }
        return new MeasuredPage(i, i2, list, j2, key, orientation, vertical, layoutDirection);
    }

    public static final KotlinBuiltIns getBuiltIns(KotlinType kotlinType) {
        kotlinType.getClass();
        KotlinBuiltIns builtIns = kotlinType.getConstructor().getBuiltIns();
        builtIns.getClass();
        return builtIns;
    }

    public static ColorStateList getColorStateList(Context context, SVG svg, int i) {
        int resourceId;
        ColorStateList colorStateList;
        TypedArray typedArray = (TypedArray) svg.cssRules;
        return (!typedArray.hasValue(i) || (resourceId = typedArray.getResourceId(i, 0)) == 0 || (colorStateList = FileUtil.getColorStateList(context, resourceId)) == null) ? svg.getColorStateList(i) : colorStateList;
    }

    public static final String[] getContentHints(ContentType contentType) {
        contentType.getClass();
        return (String[]) ((AndroidContentType) contentType).androidAutofillHints.toArray(new String[0]);
    }

    public static int getDimensionPixelSize(Context context, TypedArray typedArray, int i, int i2) {
        TypedValue typedValue = new TypedValue();
        if (!typedArray.getValue(i, typedValue) || typedValue.type != 2) {
            return typedArray.getDimensionPixelSize(i, i2);
        }
        TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(new int[]{typedValue.data});
        int dimensionPixelSize = obtainStyledAttributes.getDimensionPixelSize(0, i2);
        obtainStyledAttributes.recycle();
        return dimensionPixelSize;
    }

    public static Drawable getDrawable(Context context, TypedArray typedArray, int i) {
        int resourceId;
        Drawable drawable;
        return (!typedArray.hasValue(i) || (resourceId = typedArray.getResourceId(i, 0)) == 0 || (drawable = TuplesKt.getDrawable(context, resourceId)) == null) ? typedArray.getDrawable(i) : drawable;
    }

    public static final KotlinType getExpectedReceiverType(CallableMemberDescriptor callableMemberDescriptor) {
        ReceiverParameterDescriptorImpl extensionReceiverParameter = callableMemberDescriptor.getExtensionReceiverParameter();
        ReceiverParameterDescriptorImpl dispatchReceiverParameter = callableMemberDescriptor.getDispatchReceiverParameter();
        if (extensionReceiverParameter != null) {
            return extensionReceiverParameter.getType();
        }
        if (dispatchReceiverParameter != null) {
            if (callableMemberDescriptor instanceof ConstructorDescriptor) {
                return dispatchReceiverParameter.getType();
            }
            DeclarationDescriptor containingDeclaration = callableMemberDescriptor.getContainingDeclaration();
            ModuleAwareClassDescriptor moduleAwareClassDescriptor = containingDeclaration instanceof ModuleAwareClassDescriptor ? (ModuleAwareClassDescriptor) containingDeclaration : null;
            if (moduleAwareClassDescriptor != null) {
                return moduleAwareClassDescriptor.getDefaultType();
            }
        }
        return null;
    }

    public static final KotlinType getRepresentativeUpperBound(TypeParameterDescriptor typeParameterDescriptor) {
        Object obj;
        List upperBounds = typeParameterDescriptor.getUpperBounds();
        upperBounds.getClass();
        upperBounds.isEmpty();
        List upperBounds2 = typeParameterDescriptor.getUpperBounds();
        upperBounds2.getClass();
        Iterator it = upperBounds2.iterator();
        while (true) {
            obj = null;
            if (!it.hasNext()) {
                break;
            }
            Object next = it.next();
            ClassifierDescriptor declarationDescriptor = ((KotlinType) next).getConstructor().getDeclarationDescriptor();
            ModuleAwareClassDescriptor moduleAwareClassDescriptor = declarationDescriptor instanceof ModuleAwareClassDescriptor ? (ModuleAwareClassDescriptor) declarationDescriptor : null;
            if (moduleAwareClassDescriptor != null && moduleAwareClassDescriptor.getKind() != ClassKind.INTERFACE && moduleAwareClassDescriptor.getKind() != ClassKind.ANNOTATION_CLASS) {
                obj = next;
                break;
            }
        }
        KotlinType kotlinType = (KotlinType) obj;
        if (kotlinType != null) {
            return kotlinType;
        }
        List upperBounds3 = typeParameterDescriptor.getUpperBounds();
        upperBounds3.getClass();
        Object first = CollectionsKt.first(upperBounds3);
        first.getClass();
        return (KotlinType) first;
    }

    public static final ViewTargetRequestManager getRequestManager(ImageView imageView) {
        ViewTargetRequestManager viewTargetRequestManager;
        Object tag = imageView.getTag(R.id.coil3_request_manager);
        ViewTargetRequestManager viewTargetRequestManager2 = tag instanceof ViewTargetRequestManager ? (ViewTargetRequestManager) tag : null;
        if (viewTargetRequestManager2 != null) {
            return viewTargetRequestManager2;
        }
        synchronized (imageView) {
            try {
                Object tag2 = imageView.getTag(R.id.coil3_request_manager);
                viewTargetRequestManager = tag2 instanceof ViewTargetRequestManager ? (ViewTargetRequestManager) tag2 : null;
                if (viewTargetRequestManager == null) {
                    viewTargetRequestManager = new ViewTargetRequestManager(imageView);
                    imageView.addOnAttachStateChangeListener(viewTargetRequestManager);
                    imageView.setTag(R.id.coil3_request_manager, viewTargetRequestManager);
                }
            } finally {
            }
        }
        return viewTargetRequestManager;
    }

    public static final Method getUnboxMethod(Class cls, CallableMemberDescriptor callableMemberDescriptor) {
        callableMemberDescriptor.getClass();
        try {
            Method declaredMethod = cls.getDeclaredMethod("unbox-impl", null);
            declaredMethod.getClass();
            return declaredMethod;
        } catch (NoSuchMethodException unused) {
            Gson$$ExternalSyntheticBUOutline0.m("No unbox method found in inline class: ", cls, " (calling ", callableMemberDescriptor);
            return null;
        }
    }

    public static int getUnscaledLineHeight(Context context, int i) {
        if (i == 0) {
            return 0;
        }
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(i, R$styleable.MaterialTextAppearance);
        TypedValue typedValue = new TypedValue();
        boolean value = obtainStyledAttributes.getValue(4, typedValue);
        if (!value) {
            value = obtainStyledAttributes.getValue(2, typedValue);
        }
        obtainStyledAttributes.recycle();
        if (!value) {
            return 0;
        }
        int complexUnit = typedValue.getComplexUnit();
        int i2 = typedValue.data;
        return complexUnit == 2 ? Math.round(TypedValue.complexToFloat(i2) * context.getResources().getDisplayMetrics().density) : TypedValue.complexToDimensionPixelSize(i2, context.getResources().getDisplayMetrics());
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0081 A[Catch: all -> 0x0031, TRY_LEAVE, TryCatch #0 {all -> 0x0031, blocks: (B:11:0x002d, B:12:0x0079, B:14:0x0081, B:15:0x0068, B:31:0x0062), top: B:7:0x0021, outer: #2 }] */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0078 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:19:0x008e A[Catch: all -> 0x0097, TRY_ENTER, TRY_LEAVE, TryCatch #2 {all -> 0x0097, blocks: (B:19:0x008e, B:40:0x009b, B:41:0x009e, B:11:0x002d, B:12:0x0079, B:14:0x0081, B:15:0x0068, B:31:0x0062, B:37:0x0099), top: B:7:0x0021, inners: #0, #3 }] */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0039  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0023  */
    /* JADX WARN: Type inference failed for: r6v4, types: [kotlinx.coroutines.channels.Channel] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:16:0x0076 -> B:12:0x0079). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object globalSnapshotMonitor(kotlin.coroutines.jvm.internal.ContinuationImpl r9) {
        /*
            boolean r0 = r9 instanceof androidx.glance.session.GlobalSnapshotManagerKt$globalSnapshotMonitor$1
            if (r0 == 0) goto L13
            r0 = r9
            androidx.glance.session.GlobalSnapshotManagerKt$globalSnapshotMonitor$1 r0 = (androidx.glance.session.GlobalSnapshotManagerKt$globalSnapshotMonitor$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            androidx.glance.session.GlobalSnapshotManagerKt$globalSnapshotMonitor$1 r0 = new androidx.glance.session.GlobalSnapshotManagerKt$globalSnapshotMonitor$1
            r0.<init>(r9)
        L18:
            java.lang.Object r9 = r0.result
            kotlin.coroutines.intrinsics.CoroutineSingletons r1 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r2 = r0.label
            r3 = 0
            r4 = 1
            r5 = 0
            if (r2 == 0) goto L39
            if (r2 != r4) goto L33
            kotlinx.coroutines.channels.BufferedChannel$BufferedChannelIterator r2 = r0.L$3
            kotlinx.coroutines.channels.Channel r6 = r0.L$2
            androidx.compose.runtime.snapshots.ObserverHandle r7 = r0.L$1
            java.util.concurrent.atomic.AtomicBoolean r8 = r0.L$0
            kotlin.ResultKt.throwOnFailure(r9)     // Catch: java.lang.Throwable -> L31
            goto L79
        L31:
            r9 = move-exception
            goto L99
        L33:
            java.lang.String r9 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$1(r9)
            return r5
        L39:
            kotlin.ResultKt.throwOnFailure(r9)
            r9 = 6
            kotlinx.coroutines.channels.BufferedChannel r6 = androidx.compose.ui.unit.DpKt.Channel$default(r4, r9, r5)
            java.util.concurrent.atomic.AtomicBoolean r9 = new java.util.concurrent.atomic.AtomicBoolean
            r9.<init>(r3)
            androidx.datastore.core.SimpleActor$1 r2 = new androidx.datastore.core.SimpleActor$1
            r7 = 12
            r2.<init>(r7, r9, r6)
            java.lang.Object r7 = androidx.compose.runtime.snapshots.SnapshotKt.lock
            monitor-enter(r7)
            java.util.List r8 = androidx.compose.runtime.snapshots.SnapshotKt.globalWriteObservers     // Catch: java.lang.Throwable -> La3
            java.util.ArrayList r8 = kotlin.collections.CollectionsKt.plus(r8, r2)     // Catch: java.lang.Throwable -> La3
            androidx.compose.runtime.snapshots.SnapshotKt.globalWriteObservers = r8     // Catch: java.lang.Throwable -> La3
            monitor-exit(r7)
            androidx.compose.runtime.snapshots.SnapshotKt.advanceGlobalSnapshot()
            androidx.activity.OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0 r7 = new androidx.activity.OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0
            r8 = 3
            r7.<init>(r8, r2)
            kotlinx.coroutines.channels.BufferedChannel$BufferedChannelIterator r2 = new kotlinx.coroutines.channels.BufferedChannel$BufferedChannelIterator     // Catch: java.lang.Throwable -> L31
            r2.<init>()     // Catch: java.lang.Throwable -> L31
            r8 = r9
        L68:
            r0.L$0 = r8     // Catch: java.lang.Throwable -> L31
            r0.L$1 = r7     // Catch: java.lang.Throwable -> L31
            r0.L$2 = r6     // Catch: java.lang.Throwable -> L31
            r0.L$3 = r2     // Catch: java.lang.Throwable -> L31
            r0.label = r4     // Catch: java.lang.Throwable -> L31
            java.lang.Object r9 = r2.hasNext(r0)     // Catch: java.lang.Throwable -> L31
            if (r9 != r1) goto L79
            return r1
        L79:
            java.lang.Boolean r9 = (java.lang.Boolean) r9     // Catch: java.lang.Throwable -> L31
            boolean r9 = r9.booleanValue()     // Catch: java.lang.Throwable -> L31
            if (r9 == 0) goto L8e
            java.lang.Object r9 = r2.next()     // Catch: java.lang.Throwable -> L31
            kotlin.Unit r9 = (kotlin.Unit) r9     // Catch: java.lang.Throwable -> L31
            r8.set(r3)     // Catch: java.lang.Throwable -> L31
            androidx.compose.runtime.snapshots.SnapshotId_jvmKt.sendApplyNotifications()     // Catch: java.lang.Throwable -> L31
            goto L68
        L8e:
            r6.cancel(r5)     // Catch: java.lang.Throwable -> L97
            r7.dispose()
            kotlin.Unit r9 = kotlin.Unit.INSTANCE
            return r9
        L97:
            r9 = move-exception
            goto L9f
        L99:
            throw r9     // Catch: java.lang.Throwable -> L9a
        L9a:
            r0 = move-exception
            androidx.work.Operation$State.cancelConsumed(r6, r9)     // Catch: java.lang.Throwable -> L97
            throw r0     // Catch: java.lang.Throwable -> L97
        L9f:
            r7.dispose()
            throw r9
        La3:
            r9 = move-exception
            monitor-exit(r7)
            throw r9
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.work.OperationKt.globalSnapshotMonitor(kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    public static final boolean hasTypeParameterRecursiveBounds(TypeParameterDescriptor typeParameterDescriptor, TypeConstructor typeConstructor, Set set) {
        typeParameterDescriptor.getClass();
        List<KotlinType> upperBounds = typeParameterDescriptor.getUpperBounds();
        upperBounds.getClass();
        if (upperBounds.isEmpty()) {
            return false;
        }
        for (KotlinType kotlinType : upperBounds) {
            kotlinType.getClass();
            if (containsSelfTypeParameter(kotlinType, typeParameterDescriptor.getDefaultType().getConstructor(), set) && (typeConstructor == null || Intrinsics.areEqual(kotlinType.getConstructor(), typeConstructor))) {
                return true;
            }
        }
        return false;
    }

    public static final int inflateViewStub(RemoteViews remoteViews, TranslationContext translationContext, int i, int i2, Integer num) {
        if (i == -1) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m("viewStubId must not be View.NO_ID");
            return 0;
        }
        int intValue = num != null ? num.intValue() : translationContext.lastViewId.incrementAndGet();
        if (intValue != -1) {
            remoteViews.setInt(i, "setInflatedId", intValue);
        }
        if (i2 != 0) {
            remoteViews.setInt(i, "setLayoutResource", i2);
        }
        remoteViews.setViewVisibility(i, 0);
        return intValue;
    }

    public static boolean isFontScaleAtLeast1_3(Context context) {
        return context.getResources().getConfiguration().fontScale >= 1.3f;
    }

    public static final Data.Builder launchOperation(SystemClock systemClock, String str, Executor executor, Function0 function0) {
        Unit unit = Unit.INSTANCE;
        systemClock.getClass();
        executor.getClass();
        MutableLiveData mutableLiveData = new MutableLiveData(Data.Builder.IN_PROGRESS);
        CallbackToFutureAdapter$Completer callbackToFutureAdapter$Completer = new CallbackToFutureAdapter$Completer();
        callbackToFutureAdapter$Completer.cancellationFuture = new ResolvableFuture();
        CallbackToFutureAdapter$SafeFuture callbackToFutureAdapter$SafeFuture = new CallbackToFutureAdapter$SafeFuture(callbackToFutureAdapter$Completer);
        callbackToFutureAdapter$Completer.future = callbackToFutureAdapter$SafeFuture;
        callbackToFutureAdapter$Completer.tag = Animation.CC.class;
        try {
            executor.execute(new OperationKt$$ExternalSyntheticLambda1(systemClock, str, function0, mutableLiveData, callbackToFutureAdapter$Completer, 0));
            callbackToFutureAdapter$Completer.tag = unit;
        } catch (Exception e) {
            callbackToFutureAdapter$SafeFuture.delegate.setException(e);
        }
        return new Data.Builder(mutableLiveData, callbackToFutureAdapter$SafeFuture);
    }

    public static CoroutineContext minusKey(CoroutineContext.Element element, CoroutineContext.Key key) {
        key.getClass();
        return Intrinsics.areEqual(element.getKey(), key) ? EmptyCoroutineContext.INSTANCE : element;
    }

    public static PorterDuff.Mode obtainPorterDuffFromCompat(BlendModeCompat blendModeCompat) {
        if (blendModeCompat == null) {
            return null;
        }
        switch (BlendModeUtils$1.$SwitchMap$androidx$core$graphics$BlendModeCompat[blendModeCompat.ordinal()]) {
        }
        return null;
    }

    public static CoroutineContext plus(CoroutineContext.Element element, CoroutineContext coroutineContext) {
        coroutineContext.getClass();
        return coroutineContext == EmptyCoroutineContext.INSTANCE ? element : (CoroutineContext) coroutineContext.fold(element, new SaversKt$$ExternalSyntheticLambda3(29));
    }

    /* renamed from: putStringList-impl, reason: not valid java name */
    public static final void m770putStringListimpl(Bundle bundle, String str, List list) {
        bundle.putStringArrayList(str, list instanceof ArrayList ? (ArrayList) list : new ArrayList<>(list));
    }

    public static final KotlinType replaceAnnotations(KotlinType kotlinType, Annotations annotations) {
        return (kotlinType.getAnnotations().isEmpty() && annotations.isEmpty()) ? kotlinType : kotlinType.unwrap().replaceAttributes(KotlinTypeKt.replaceAnnotations(kotlinType.getAttributes(), annotations));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v10, types: [kotlin.reflect.jvm.internal.impl.types.UnwrappedType] */
    public static final UnwrappedType replaceArgumentsWithStarProjections(KotlinType kotlinType) {
        SimpleType simpleType;
        kotlinType.getClass();
        UnwrappedType unwrap = kotlinType.unwrap();
        if (unwrap instanceof FlexibleType) {
            FlexibleType flexibleType = (FlexibleType) unwrap;
            SimpleType simpleType2 = flexibleType.lowerBound;
            if (!simpleType2.getConstructor().getParameters().isEmpty() && simpleType2.getConstructor().getDeclarationDescriptor() != null) {
                List parameters = simpleType2.getConstructor().getParameters();
                parameters.getClass();
                ArrayList arrayList = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(parameters, 10));
                Iterator it = parameters.iterator();
                while (it.hasNext()) {
                    arrayList.add(new StarProjectionImpl((TypeParameterDescriptor) it.next()));
                }
                simpleType2 = KotlinTypeKt.replace$default(simpleType2, arrayList, (TypeAttributes) null, 2);
            }
            SimpleType simpleType3 = flexibleType.upperBound;
            if (!simpleType3.getConstructor().getParameters().isEmpty() && simpleType3.getConstructor().getDeclarationDescriptor() != null) {
                List parameters2 = simpleType3.getConstructor().getParameters();
                parameters2.getClass();
                ArrayList arrayList2 = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(parameters2, 10));
                Iterator it2 = parameters2.iterator();
                while (it2.hasNext()) {
                    arrayList2.add(new StarProjectionImpl((TypeParameterDescriptor) it2.next()));
                }
                simpleType3 = KotlinTypeKt.replace$default(simpleType3, arrayList2, (TypeAttributes) null, 2);
            }
            simpleType = KotlinTypeKt.flexibleType(simpleType2, simpleType3);
        } else {
            if (!(unwrap instanceof SimpleType)) {
                ContextsKt$$ExternalSyntheticBUOutline0.m();
                return null;
            }
            SimpleType simpleType4 = (SimpleType) unwrap;
            boolean isEmpty = simpleType4.getConstructor().getParameters().isEmpty();
            simpleType = simpleType4;
            if (!isEmpty) {
                ClassifierDescriptor declarationDescriptor = simpleType4.getConstructor().getDeclarationDescriptor();
                simpleType = simpleType4;
                if (declarationDescriptor != null) {
                    List parameters3 = simpleType4.getConstructor().getParameters();
                    parameters3.getClass();
                    ArrayList arrayList3 = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(parameters3, 10));
                    Iterator it3 = parameters3.iterator();
                    while (it3.hasNext()) {
                        arrayList3.add(new StarProjectionImpl((TypeParameterDescriptor) it3.next()));
                    }
                    simpleType = KotlinTypeKt.replace$default(simpleType4, arrayList3, (TypeAttributes) null, 2);
                }
            }
        }
        return KotlinTypeKt.inheritEnhancement(simpleType, unwrap);
    }

    public static final IntRect roundToIntRect(Rect rect) {
        return new IntRect(Math.round(rect.left), Math.round(rect.top), Math.round(rect.right), Math.round(rect.bottom));
    }

    /* JADX WARN: Code restructure failed: missing block: B:8:0x002a, code lost:
    
        if (r0.charAt(r1.length()) == '.') goto L12;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final kotlin.reflect.jvm.internal.impl.name.FqName tail(kotlin.reflect.jvm.internal.impl.name.FqName r3, kotlin.reflect.jvm.internal.impl.name.FqName r4) {
        /*
            r3.getClass()
            boolean r0 = r3.equals(r4)
            if (r0 == 0) goto La
            goto L2c
        La:
            boolean r0 = r4.isRoot()
            if (r0 == 0) goto L11
            goto L2c
        L11:
            java.lang.String r0 = r3.asString()
            java.lang.String r1 = r4.asString()
            r2 = 0
            boolean r2 = kotlin.text.StringsKt__StringsJVMKt.startsWith(r0, r1, r2)
            if (r2 == 0) goto L57
            int r1 = r1.length()
            char r0 = r0.charAt(r1)
            r1 = 46
            if (r0 != r1) goto L57
        L2c:
            boolean r0 = r4.isRoot()
            if (r0 == 0) goto L33
            goto L57
        L33:
            boolean r0 = r3.equals(r4)
            if (r0 == 0) goto L3f
            kotlin.reflect.jvm.internal.impl.name.FqName r3 = kotlin.reflect.jvm.internal.impl.name.FqName.ROOT
            r3.getClass()
            return r3
        L3f:
            kotlin.reflect.jvm.internal.impl.name.FqName r0 = new kotlin.reflect.jvm.internal.impl.name.FqName
            java.lang.String r3 = r3.asString()
            java.lang.String r4 = r4.asString()
            int r4 = r4.length()
            int r4 = r4 + 1
            java.lang.String r3 = r3.substring(r4)
            r0.<init>(r3)
            return r0
        L57:
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.work.OperationKt.tail(kotlin.reflect.jvm.internal.impl.name.FqName, kotlin.reflect.jvm.internal.impl.name.FqName):kotlin.reflect.jvm.internal.impl.name.FqName");
    }

    public static JavaTypeAttributes toAttributes$default(TypeUsage typeUsage, boolean z, LazyJavaTypeParameterDescriptor lazyJavaTypeParameterDescriptor, int i) {
        boolean z2 = (i & 1) != 0 ? false : z;
        boolean z3 = (i & 2) == 0;
        if ((i & 4) != 0) {
            lazyJavaTypeParameterDescriptor = null;
        }
        typeUsage.getClass();
        return new JavaTypeAttributes(typeUsage, z3, z2, lazyJavaTypeParameterDescriptor != null ? UuidKt.setOf(lazyJavaTypeParameterDescriptor) : null, 34);
    }

    public static final Class toInlineClass(DeclarationDescriptor declarationDescriptor) {
        if (!(declarationDescriptor instanceof ModuleAwareClassDescriptor) || !InlineClassesUtilsKt.isInlineClass(declarationDescriptor)) {
            return null;
        }
        ModuleAwareClassDescriptor moduleAwareClassDescriptor = (ModuleAwareClassDescriptor) declarationDescriptor;
        Class javaClass = UtilKt.toJavaClass(moduleAwareClassDescriptor);
        if (javaClass != null) {
            return javaClass;
        }
        StringBuilder sb = new StringBuilder("Class object for the class ");
        sb.append(moduleAwareClassDescriptor.getName());
        ClassId classId = DescriptorUtilsKt.getClassId((ClassifierDescriptor) declarationDescriptor);
        sb.append(" cannot be found (classId=");
        sb.append(classId);
        sb.append(')');
        throw new CoroutinesInternalError(sb.toString());
    }

    public abstract int clampViewPositionHorizontal(View view, int i);

    public abstract int clampViewPositionVertical(View view, int i);

    public int getViewHorizontalDragRange(View view) {
        return 0;
    }

    public int getViewVerticalDragRange() {
        return 0;
    }

    public abstract void onViewDragStateChanged(int i);

    public abstract void onViewPositionChanged(View view, int i, int i2);

    public abstract void onViewReleased(View view, float f, float f2);

    public abstract boolean tryCaptureView(View view, int i);

    public void onEdgeTouched() {
    }

    public static ColorStateList getColorStateList(Context context, TypedArray typedArray, int i) {
        int resourceId;
        ColorStateList colorStateList;
        return (!typedArray.hasValue(i) || (resourceId = typedArray.getResourceId(i, 0)) == 0 || (colorStateList = FileUtil.getColorStateList(context, resourceId)) == null) ? typedArray.getColorStateList(i) : colorStateList;
    }

    public void onEdgeDragStarted(int i, int i2) {
    }

    public void onFragmentStarted(FragmentManagerImpl fragmentManagerImpl, Fragment fragment) {
    }

    public void onFragmentViewDestroyed(FragmentManagerImpl fragmentManagerImpl, Fragment fragment) {
    }

    public void onViewCaptured(View view, int i) {
    }

    public static final Class toInlineClass(KotlinType kotlinType) {
        SimpleType unsubstitutedUnderlyingType;
        kotlinType.getClass();
        Class inlineClass = toInlineClass(kotlinType.getConstructor().getDeclarationDescriptor());
        if (inlineClass == null) {
            return null;
        }
        if (TypeUtils.isNullableType(kotlinType) && ((unsubstitutedUnderlyingType = InlineClassesUtilsKt.unsubstitutedUnderlyingType(kotlinType)) == null || TypeUtils.isNullableType(unsubstitutedUnderlyingType) || KotlinBuiltIns.isPrimitiveType(unsubstitutedUnderlyingType))) {
            return null;
        }
        return inlineClass;
    }

    public void onFragmentViewCreated(FragmentManagerImpl fragmentManagerImpl, Fragment fragment, View view) {
    }
}
