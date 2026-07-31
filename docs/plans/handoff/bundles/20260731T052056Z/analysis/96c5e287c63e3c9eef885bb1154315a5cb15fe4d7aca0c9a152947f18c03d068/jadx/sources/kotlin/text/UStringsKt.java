package kotlin.text;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Color;
import android.graphics.drawable.Drawable;
import android.media.Image;
import android.os.Build;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcelable;
import android.text.InputFilter;
import android.text.method.TransformationMethod;
import android.util.Size;
import android.util.SizeF;
import android.util.TypedValue;
import android.widget.EdgeEffect;
import android.widget.TextView;
import androidx.activity.ImmLeaksCleaner$$ExternalSyntheticLambda0;
import androidx.cardview.widget.CardView;
import androidx.cardview.widget.RoundRectDrawable;
import androidx.cardview.widget.RoundRectDrawableWithShadow;
import androidx.compose.animation.core.Animation;
import androidx.compose.foundation.lazy.staggeredgrid.LazyStaggeredGridState;
import androidx.compose.runtime.Composer$Companion;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.saveable.SaverKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.ColorKt;
import androidx.compose.ui.node.NodeChainKt$fillVector$1;
import androidx.compose.ui.unit.ConstraintsKt;
import androidx.concurrent.futures.AbstractResolvableFuture;
import androidx.concurrent.futures.DirectExecutor;
import androidx.core.graphics.ColorUtils;
import androidx.core.widget.EdgeEffectCompat$Api31Impl;
import androidx.glance.Applier;
import androidx.glance.Emittable;
import androidx.glance.EmittableWithChildren;
import androidx.glance.GlanceModifier;
import androidx.glance.appwidget.CompositionLocalsKt$LocalAppWidgetOptions$1;
import androidx.glance.appwidget.EmittableIgnoreResult;
import androidx.glance.appwidget.IgnoreResultKt$IgnoreResult$1;
import androidx.glance.appwidget.SizeBoxKt$SizeBox$1$2$1;
import androidx.glance.layout.PaddingDimension;
import androidx.glance.layout.PaddingModifier;
import androidx.glance.session.TimeSource$Companion$$ExternalSyntheticLambda0;
import androidx.navigation.NavDestination;
import androidx.navigation.internal.NavContext;
import androidx.paging.PagingSource$$ExternalSyntheticLambda0;
import androidx.recyclerview.widget.RecyclerView;
import androidx.room.PooledConnection;
import androidx.room.Room;
import androidx.work.Data$$ExternalSyntheticLambda0;
import androidx.work.Operation$State;
import androidx.work.impl.ToContinuation;
import coil3.ImageLoader$Builder;
import coil3.network.HttpException;
import coil3.util.ContextsKt;
import coil3.util.UtilsKt;
import com.airbnb.lottie.LottieComposition;
import com.airbnb.lottie.model.animatable.AnimatableFloatValue;
import com.airbnb.lottie.model.animatable.AnimatableTextFrame;
import com.airbnb.lottie.model.content.GradientColor;
import com.airbnb.lottie.parser.GradientColorParser;
import com.airbnb.lottie.parser.KeyframesParser;
import com.airbnb.lottie.parser.PathParser;
import com.airbnb.lottie.parser.moshi.JsonReader;
import com.airbnb.lottie.parser.moshi.JsonUtf8Reader;
import com.airbnb.lottie.utils.Utils;
import com.airbnb.lottie.value.Keyframe;
import com.google.common.util.concurrent.ListenableFuture;
import com.google.gson.Gson$$ExternalSyntheticBUOutline0;
import com.skydoves.balloon.vectortext.VectorTextViewParams;
import java.io.DataInputStream;
import java.io.InputStream;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;
import kotlin.ExceptionsKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.UInt;
import kotlin.ULong;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.CollectionsKt__IteratorsJVMKt;
import kotlin.collections.IntIterator;
import kotlin.collections.MutableMapWithDefaultImpl;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.ranges.IntProgressionIterator;
import kotlin.ranges.IntRange;
import kotlin.reflect.KClass;
import kotlin.reflect.KClassifier;
import kotlin.reflect.KProperty;
import kotlin.reflect.KType;
import kotlin.reflect.jvm.internal.KTypeImpl;
import kotlin.reflect.jvm.internal.KTypeImpl$arguments$2;
import kotlin.reflect.jvm.internal.KTypeParameterImpl;
import kotlin.reflect.jvm.internal.ReflectProperties$LazySoftVal;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassKind;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassOrPackageFragmentDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassifierDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.DescriptorVisibilities;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotations;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.ModuleAwareClassDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure.ReflectJavaClass;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.TypeParameterResolver;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Visibility;
import kotlin.reflect.jvm.internal.impl.metadata.builtins.BuiltInsBinaryVersion;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.ProtoEnumFlagsUtilsKt$WhenMappings;
import kotlin.sequences.Sequence;
import kotlin.sequences.SequencesKt;
import kotlinx.coroutines.CancellableContinuationImpl;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.SerializationException;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeDecoder;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.internal.PrimitiveArrayDescriptor;
import okhttp3.Dispatcher;
import okhttp3.Request;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.wikipedia.databinding.ActivityPageBinding;
import org.wikipedia.feed.ForYouCardKt$$ExternalSyntheticLambda1;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class UStringsKt implements Decoder, CompositeDecoder {
    public static final float ContainerLeadingSpace = 16.0f;
    public static final float ContainerTrailingSpace = 16.0f;
    public static ImageLoader$Builder _cache;
    public static volatile boolean strictModeEnabled;

    public static final void IgnoreResult(int i, GapComposer gapComposer) {
        gapComposer.startRestartGroup(1257244356);
        if (i == 0 && gapComposer.getSkipping()) {
            gapComposer.skipToGroupEnd();
        } else {
            int i2 = IgnoreResultKt$IgnoreResult$1.$r8$clinit;
            gapComposer.startReplaceableGroup(-1115894518);
            gapComposer.startReplaceableGroup(1886828752);
            if (!(gapComposer.applier instanceof Applier)) {
                Updater.invalidApplier();
                throw null;
            }
            gapComposer.startNode();
            int i3 = 1;
            int i4 = 0;
            if (gapComposer.inserting) {
                gapComposer.createNode(new CompositionLocalsKt$LocalAppWidgetOptions$1(i4, i3));
            } else {
                gapComposer.useNode();
            }
            Modifier.CC.m(gapComposer, true, false, false);
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new SizeBoxKt$SizeBox$1$2$1(i);
        }
    }

    public static final void applyDrawable(TextView textView, VectorTextViewParams vectorTextViewParams) {
        Drawable drawable;
        Drawable drawable2;
        Drawable drawable3;
        Drawable drawable4;
        Drawable drawable5;
        Drawable drawable6;
        Drawable drawable7;
        vectorTextViewParams.getClass();
        Integer num = vectorTextViewParams.squareSizeRes;
        Integer num2 = vectorTextViewParams.tintColor;
        Integer num3 = vectorTextViewParams.iconHeight;
        Drawable drawable8 = null;
        if (num3 == null) {
            Integer num4 = vectorTextViewParams.heightRes;
            if (num4 != null) {
                num3 = Integer.valueOf(textView.getContext().getResources().getDimensionPixelSize(num4.intValue()));
            } else {
                num3 = null;
            }
            if (num3 == null) {
                if (num != null) {
                    num3 = Integer.valueOf(textView.getContext().getResources().getDimensionPixelSize(num.intValue()));
                } else {
                    num3 = null;
                }
            }
        }
        Integer num5 = vectorTextViewParams.iconWidth;
        if (num5 == null) {
            Integer num6 = vectorTextViewParams.widthRes;
            if (num6 != null) {
                num5 = Integer.valueOf(textView.getContext().getResources().getDimensionPixelSize(num6.intValue()));
            } else {
                num5 = null;
            }
            if (num5 == null) {
                if (num != null) {
                    num5 = Integer.valueOf(textView.getContext().getResources().getDimensionPixelSize(num.intValue()));
                } else {
                    num5 = null;
                }
            }
        }
        Integer num7 = vectorTextViewParams.drawableStartRes;
        if (num7 != null) {
            drawable = TuplesKt.getDrawable(textView.getContext(), num7.intValue());
        } else {
            drawable = null;
        }
        if (drawable != null) {
            Context context = textView.getContext();
            context.getClass();
            drawable2 = Room.resize(drawable, context, num5, num3);
            Room.tint(drawable2, num2);
        } else {
            drawable2 = null;
        }
        Integer num8 = vectorTextViewParams.drawableEndRes;
        if (num8 != null) {
            drawable3 = TuplesKt.getDrawable(textView.getContext(), num8.intValue());
        } else {
            drawable3 = null;
        }
        if (drawable3 != null) {
            Context context2 = textView.getContext();
            context2.getClass();
            drawable4 = Room.resize(drawable3, context2, num5, num3);
            Room.tint(drawable4, num2);
        } else {
            drawable4 = null;
        }
        Integer num9 = vectorTextViewParams.drawableBottomRes;
        if (num9 != null) {
            drawable5 = TuplesKt.getDrawable(textView.getContext(), num9.intValue());
        } else {
            drawable5 = null;
        }
        if (drawable5 != null) {
            Context context3 = textView.getContext();
            context3.getClass();
            drawable6 = Room.resize(drawable5, context3, num5, num3);
            Room.tint(drawable6, num2);
        } else {
            drawable6 = null;
        }
        Integer num10 = vectorTextViewParams.drawableTopRes;
        if (num10 != null) {
            drawable7 = TuplesKt.getDrawable(textView.getContext(), num10.intValue());
        } else {
            drawable7 = null;
        }
        if (drawable7 != null) {
            Context context4 = textView.getContext();
            context4.getClass();
            drawable8 = Room.resize(drawable7, context4, num5, num3);
            Room.tint(drawable8, num2);
        }
        if (vectorTextViewParams.isRtlLayout) {
            textView.setCompoundDrawablesWithIntrinsicBounds(drawable4, drawable8, drawable2, drawable6);
        } else {
            textView.setCompoundDrawablesWithIntrinsicBounds(drawable2, drawable8, drawable4, drawable6);
        }
        Integer num11 = vectorTextViewParams.compoundDrawablePadding;
        if (num11 != null) {
            textView.setCompoundDrawablePadding(num11.intValue());
        } else {
            Integer num12 = vectorTextViewParams.compoundDrawablePaddingRes;
            if (num12 != null) {
                textView.setCompoundDrawablePadding(textView.getContext().getResources().getDimensionPixelSize(num12.intValue()));
            }
        }
        textView.setContentDescription(vectorTextViewParams.contentDescription);
    }

    public static final Object await(ListenableFuture listenableFuture, ContinuationImpl continuationImpl) {
        try {
            if (listenableFuture.isDone()) {
                return AbstractResolvableFuture.getUninterruptibly(listenableFuture);
            }
            CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(1, ExceptionsKt.intercepted(continuationImpl));
            listenableFuture.addListener(new ToContinuation(listenableFuture, cancellableContinuationImpl, 1), DirectExecutor.INSTANCE);
            cancellableContinuationImpl.invokeOnCancellation(new NodeChainKt$fillVector$1(27, listenableFuture));
            return cancellableContinuationImpl.getResult();
        } catch (ExecutionException e) {
            Throwable cause = e.getCause();
            if (cause != null) {
                throw cause;
            }
            Intrinsics.throwNpe();
            throw null;
        }
    }

    public static final Bundle bundleOf(Pair... pairArr) {
        Bundle bundle = new Bundle(pairArr.length);
        for (Pair pair : pairArr) {
            String str = (String) pair.first;
            Object obj = pair.second;
            if (obj == null) {
                bundle.putString(str, null);
            } else if (obj instanceof Boolean) {
                bundle.putBoolean(str, ((Boolean) obj).booleanValue());
            } else if (obj instanceof Byte) {
                bundle.putByte(str, ((Number) obj).byteValue());
            } else if (obj instanceof Character) {
                bundle.putChar(str, ((Character) obj).charValue());
            } else if (obj instanceof Double) {
                bundle.putDouble(str, ((Number) obj).doubleValue());
            } else if (obj instanceof Float) {
                bundle.putFloat(str, ((Number) obj).floatValue());
            } else if (obj instanceof Integer) {
                bundle.putInt(str, ((Number) obj).intValue());
            } else if (obj instanceof Long) {
                bundle.putLong(str, ((Number) obj).longValue());
            } else if (obj instanceof Short) {
                bundle.putShort(str, ((Number) obj).shortValue());
            } else if (obj instanceof Bundle) {
                bundle.putBundle(str, (Bundle) obj);
            } else if (obj instanceof CharSequence) {
                bundle.putCharSequence(str, (CharSequence) obj);
            } else if (obj instanceof Parcelable) {
                bundle.putParcelable(str, (Parcelable) obj);
            } else if (obj instanceof boolean[]) {
                bundle.putBooleanArray(str, (boolean[]) obj);
            } else if (obj instanceof byte[]) {
                bundle.putByteArray(str, (byte[]) obj);
            } else if (obj instanceof char[]) {
                bundle.putCharArray(str, (char[]) obj);
            } else if (obj instanceof double[]) {
                bundle.putDoubleArray(str, (double[]) obj);
            } else if (obj instanceof float[]) {
                bundle.putFloatArray(str, (float[]) obj);
            } else if (obj instanceof int[]) {
                bundle.putIntArray(str, (int[]) obj);
            } else if (obj instanceof long[]) {
                bundle.putLongArray(str, (long[]) obj);
            } else if (obj instanceof short[]) {
                bundle.putShortArray(str, (short[]) obj);
            } else if (obj instanceof Object[]) {
                Class<?> componentType = obj.getClass().getComponentType();
                componentType.getClass();
                if (Parcelable.class.isAssignableFrom(componentType)) {
                    bundle.putParcelableArray(str, (Parcelable[]) obj);
                } else if (String.class.isAssignableFrom(componentType)) {
                    bundle.putStringArray(str, (String[]) obj);
                } else if (CharSequence.class.isAssignableFrom(componentType)) {
                    bundle.putCharSequenceArray(str, (CharSequence[]) obj);
                } else {
                    if (!Serializable.class.isAssignableFrom(componentType)) {
                        _UtilJvmKt$$ExternalSyntheticLambda0.m(Modifier.CC.m("Illegal value array type ", componentType.getCanonicalName(), " for key \"", str, "\""));
                        return null;
                    }
                    bundle.putSerializable(str, (Serializable) obj);
                }
            } else if (obj instanceof Serializable) {
                bundle.putSerializable(str, (Serializable) obj);
            } else if (obj instanceof IBinder) {
                bundle.putBinder(str, (IBinder) obj);
            } else if (obj instanceof Size) {
                bundle.putSize(str, (Size) obj);
            } else {
                if (!(obj instanceof SizeF)) {
                    _UtilJvmKt$$ExternalSyntheticLambda0.m(Modifier.CC.m("Illegal value type ", obj.getClass().getCanonicalName(), " for key \"", str, "\""));
                    return null;
                }
                bundle.putSizeF(str, (SizeF) obj);
            }
        }
        return bundle;
    }

    public static final void checkElementIndex$runtime(int i, int i2) {
        if (i < 0 || i >= i2) {
            Gson$$ExternalSyntheticBUOutline0.m$2(Modifier.CC.m(i, i2, "index: ", ", size: "));
        }
    }

    public static final void checkPositionIndex$runtime(int i, int i2) {
        if (i < 0 || i > i2) {
            Gson$$ExternalSyntheticBUOutline0.m$2(Modifier.CC.m(i, i2, "index: ", ", size: "));
        }
    }

    public static final void checkRangeIndexes$runtime(int i, int i2, int i3) {
        if (i < 0 || i2 > i3) {
            TimeSource$Companion$$ExternalSyntheticLambda0.m(i3, Animation.CC.m(i, i2, "fromIndex: ", ", toIndex: ", ", size: "));
        } else {
            if (i <= i2) {
                return;
            }
            _UtilJvmKt$$ExternalSyntheticLambda0.m(Modifier.CC.m(i, i2, "fromIndex: ", " > toIndex: "));
        }
    }

    public static Request.Builder childForClassOrPackage$default(Request.Builder builder, ClassOrPackageFragmentDescriptor classOrPackageFragmentDescriptor, ReflectJavaClass reflectJavaClass, int i) {
        if ((i & 2) != 0) {
            reflectJavaClass = null;
        }
        builder.getClass();
        return new Request.Builder((ActivityPageBinding) builder.url, reflectJavaClass != null ? new Dispatcher(builder, classOrPackageFragmentDescriptor, reflectJavaClass, 0) : (TypeParameterResolver) builder.method, ContextsKt.lazy(LazyThreadSafetyMode.NONE, new KTypeImpl$arguments$2(20, builder, classOrPackageFragmentDescriptor)));
    }

    public static int compositeARGBWithAlpha(int i, int i2) {
        return ColorUtils.setAlphaComponent(i, (Color.alpha(i) * i2) / 255);
    }

    public static final Request.Builder copyWithNewDefaultTypeQualifiers(Request.Builder builder, Annotations annotations) {
        builder.getClass();
        annotations.getClass();
        return annotations.isEmpty() ? builder : new Request.Builder((ActivityPageBinding) builder.url, (TypeParameterResolver) builder.method, ContextsKt.lazy(LazyThreadSafetyMode.NONE, new KTypeImpl$arguments$2(21, builder, annotations)));
    }

    public static final ExecutorService createDefaultExecutor(final boolean z) {
        ExecutorService newFixedThreadPool = Executors.newFixedThreadPool(Math.max(2, Math.min(Runtime.getRuntime().availableProcessors() - 1, 4)), new ThreadFactory() { // from class: androidx.work.ConfigurationKt$createDefaultExecutor$factory$1
            public final AtomicInteger threadCount = new AtomicInteger(0);

            @Override // java.util.concurrent.ThreadFactory
            public final Thread newThread(Runnable runnable) {
                runnable.getClass();
                return new Thread(runnable, (z ? "WM.task-" : "androidx.work-") + this.threadCount.incrementAndGet());
            }
        });
        newFixedThreadPool.getClass();
        return newFixedThreadPool;
    }

    public static final DescriptorVisibilities.AnonymousClass1 descriptorVisibility(ProtoBuf$Visibility protoBuf$Visibility) {
        switch (protoBuf$Visibility == null ? -1 : ProtoEnumFlagsUtilsKt$WhenMappings.$EnumSwitchMapping$2[protoBuf$Visibility.ordinal()]) {
            case 1:
                DescriptorVisibilities.AnonymousClass1 anonymousClass1 = DescriptorVisibilities.INTERNAL;
                anonymousClass1.getClass();
                return anonymousClass1;
            case 2:
                DescriptorVisibilities.AnonymousClass1 anonymousClass12 = DescriptorVisibilities.PRIVATE;
                anonymousClass12.getClass();
                return anonymousClass12;
            case 3:
                DescriptorVisibilities.AnonymousClass1 anonymousClass13 = DescriptorVisibilities.PRIVATE_TO_THIS;
                anonymousClass13.getClass();
                return anonymousClass13;
            case 4:
                DescriptorVisibilities.AnonymousClass1 anonymousClass14 = DescriptorVisibilities.PROTECTED;
                anonymousClass14.getClass();
                return anonymousClass14;
            case 5:
                DescriptorVisibilities.AnonymousClass1 anonymousClass15 = DescriptorVisibilities.PUBLIC;
                anonymousClass15.getClass();
                return anonymousClass15;
            case 6:
                DescriptorVisibilities.AnonymousClass1 anonymousClass16 = DescriptorVisibilities.LOCAL;
                anonymousClass16.getClass();
                return anonymousClass16;
            default:
                DescriptorVisibilities.AnonymousClass1 anonymousClass17 = DescriptorVisibilities.PRIVATE;
                anonymousClass17.getClass();
                return anonymousClass17;
        }
    }

    public static final Object execSQL(PooledConnection pooledConnection, String str, ContinuationImpl continuationImpl) {
        Object usePrepared = pooledConnection.usePrepared(str, new Data$$ExternalSyntheticLambda0(2), continuationImpl);
        return usePrepared == CoroutineSingletons.COROUTINE_SUSPENDED ? usePrepared : Unit.INSTANCE;
    }

    /* renamed from: fitPrioritizingHeight-Zbe2FdA, reason: not valid java name */
    public static long m842fitPrioritizingHeightZbe2FdA(int i, int i2, int i3, int i4) {
        int i5 = 262142;
        int min = Math.min(i3, 262142);
        int min2 = i4 == Integer.MAX_VALUE ? Integer.MAX_VALUE : Math.min(i4, 262142);
        int i6 = min2 == Integer.MAX_VALUE ? min : min2;
        if (i6 >= 8191) {
            if (i6 < 32767) {
                i5 = 65534;
            } else if (i6 < 65535) {
                i5 = 32766;
            } else {
                if (i6 >= 262143) {
                    ConstraintsKt.throwInvalidConstraintsSizeException(i6);
                    Gson$$ExternalSyntheticBUOutline0.m$1();
                    return 0L;
                }
                i5 = 8190;
            }
        }
        return ConstraintsKt.Constraints(Math.min(i5, i), i2 != Integer.MAX_VALUE ? Math.min(i5, i2) : Integer.MAX_VALUE, min, min2);
    }

    /* renamed from: fitPrioritizingWidth-Zbe2FdA, reason: not valid java name */
    public static long m843fitPrioritizingWidthZbe2FdA(int i, int i2, int i3, int i4) {
        int i5 = 262142;
        int min = Math.min(i, 262142);
        int min2 = i2 == Integer.MAX_VALUE ? Integer.MAX_VALUE : Math.min(i2, 262142);
        int i6 = min2 == Integer.MAX_VALUE ? min : min2;
        if (i6 >= 8191) {
            if (i6 < 32767) {
                i5 = 65534;
            } else if (i6 < 65535) {
                i5 = 32766;
            } else {
                if (i6 >= 262143) {
                    ConstraintsKt.throwInvalidConstraintsSizeException(i6);
                    Gson$$ExternalSyntheticBUOutline0.m$1();
                    return 0L;
                }
                i5 = 8190;
            }
        }
        return ConstraintsKt.Constraints(min, min2, Math.min(i5, i3), i4 != Integer.MAX_VALUE ? Math.min(i5, i4) : Integer.MAX_VALUE);
    }

    public static Integer getColorOrNull(Context context, int i) {
        TypedValue resolve = Operation$State.resolve(context.getTheme(), i);
        if (resolve != null) {
            return Integer.valueOf(resolveColor(context, resolve));
        }
        return null;
    }

    public static String getDisplayName(NavContext navContext, int i) {
        navContext.getClass();
        if (i <= 16777215) {
            return String.valueOf(i);
        }
        try {
            Context context = navContext.context;
            context.getClass();
            String resourceName = context.getResources().getResourceName(i);
            resourceName.getClass();
            return resourceName;
        } catch (Resources.NotFoundException unused) {
            return String.valueOf(i);
        }
    }

    public static float getDistance(EdgeEffect edgeEffect) {
        return Build.VERSION.SDK_INT >= 31 ? EdgeEffectCompat$Api31Impl.getDistance(edgeEffect) : RecyclerView.DECELERATION_RATE;
    }

    public static Sequence getHierarchy(NavDestination navDestination) {
        navDestination.getClass();
        return SequencesKt.generateSequence(navDestination, new PagingSource$$ExternalSyntheticLambda0(21));
    }

    public static final KClass getJvmErasure(KClassifier kClassifier) {
        if (kClassifier instanceof KClass) {
            return (KClass) kClassifier;
        }
        Object obj = null;
        if (!(kClassifier instanceof KTypeParameterImpl)) {
            Gson$$ExternalSyntheticBUOutline0.m$6("Cannot calculate JVM erasure for type: ", kClassifier);
            return null;
        }
        ReflectProperties$LazySoftVal reflectProperties$LazySoftVal = ((KTypeParameterImpl) kClassifier).upperBounds$delegate;
        KProperty kProperty = KTypeParameterImpl.$$delegatedProperties[0];
        Object invoke = reflectProperties$LazySoftVal.invoke();
        invoke.getClass();
        List list = (List) invoke;
        Iterator it = list.iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            Object next = it.next();
            KType kType = (KType) next;
            kType.getClass();
            ClassifierDescriptor declarationDescriptor = ((KTypeImpl) kType).type.getConstructor().getDeclarationDescriptor();
            ModuleAwareClassDescriptor moduleAwareClassDescriptor = declarationDescriptor instanceof ModuleAwareClassDescriptor ? (ModuleAwareClassDescriptor) declarationDescriptor : null;
            if (moduleAwareClassDescriptor != null && moduleAwareClassDescriptor.getKind() != ClassKind.INTERFACE && moduleAwareClassDescriptor.getKind() != ClassKind.ANNOTATION_CLASS) {
                obj = next;
                break;
            }
        }
        KType kType2 = (KType) obj;
        if (kType2 == null) {
            kType2 = (KType) CollectionsKt.firstOrNull(list);
        }
        return kType2 != null ? getJvmErasure(kType2) : Reflection.factory.getOrCreateKotlinClass(Object.class);
    }

    public static boolean isColorLight(int i) {
        return i != 0 && ColorUtils.calculateLuminance(i) > 0.5d;
    }

    public static boolean isPunctuation$ui_text(int i) {
        int type = Character.getType(i);
        return type == 23 || type == 20 || type == 22 || type == 30 || type == 29 || type == 24 || type == 21;
    }

    public static int layer(int i, float f, int i2) {
        return ColorUtils.compositeColors(ColorUtils.setAlphaComponent(i2, Math.round(Color.alpha(i2) * f)), i);
    }

    public static float onPullDistance(EdgeEffect edgeEffect, float f, float f2) {
        if (Build.VERSION.SDK_INT >= 31) {
            return EdgeEffectCompat$Api31Impl.onPullDistance(edgeEffect, f, f2);
        }
        edgeEffect.onPull(f, f2);
        return f;
    }

    /* renamed from: padding-VpY3zN4, reason: not valid java name */
    public static final GlanceModifier m844paddingVpY3zN4(GlanceModifier glanceModifier) {
        return glanceModifier.then(new PaddingModifier(m846toPadding0680j_4(16.0f), m846toPadding0680j_4(12.0f), m846toPadding0680j_4(16.0f), m846toPadding0680j_4(12.0f)));
    }

    /* renamed from: padding-qDBjuR0$default, reason: not valid java name */
    public static GlanceModifier m845paddingqDBjuR0$default(GlanceModifier glanceModifier, float f, int i) {
        if ((i & 2) != 0) {
            f = 0.0f;
        }
        return glanceModifier.then(new PaddingModifier(m846toPadding0680j_4(RecyclerView.DECELERATION_RATE), m846toPadding0680j_4(f), m846toPadding0680j_4((i & 4) != 0 ? 0.0f : 24.0f), m846toPadding0680j_4((i & 8) != 0 ? 0.0f : 32.0f)));
    }

    public static AnimatableTextFrame parseColor(JsonUtf8Reader jsonUtf8Reader, LottieComposition lottieComposition) {
        return new AnimatableTextFrame(KeyframesParser.parse(jsonUtf8Reader, lottieComposition, 1.0f, PathParser.INSTANCE$1, false), 1);
    }

    public static AnimatableFloatValue parseFloat(JsonReader jsonReader, LottieComposition lottieComposition, boolean z) {
        return new AnimatableFloatValue(5, KeyframesParser.parse(jsonReader, lottieComposition, z ? Utils.dpScale() : 1.0f, PathParser.INSTANCE$2, false));
    }

    public static AnimatableTextFrame parseGradientColor(JsonUtf8Reader jsonUtf8Reader, LottieComposition lottieComposition, int i) {
        GradientColorParser gradientColorParser = new GradientColorParser();
        gradientColorParser.colorPoints = i;
        ArrayList parse = KeyframesParser.parse(jsonUtf8Reader, lottieComposition, 1.0f, gradientColorParser, false);
        for (int i2 = 0; i2 < parse.size(); i2++) {
            Keyframe keyframe = (Keyframe) parse.get(i2);
            GradientColor gradientColor = (GradientColor) keyframe.startValue;
            GradientColor gradientColor2 = (GradientColor) keyframe.endValue;
            if (gradientColor != null && gradientColor2 != null) {
                float[] fArr = gradientColor.positions;
                int length = fArr.length;
                float[] fArr2 = gradientColor2.positions;
                if (length != fArr2.length) {
                    int length2 = fArr.length + fArr2.length;
                    float[] fArr3 = new float[length2];
                    System.arraycopy(fArr, 0, fArr3, 0, fArr.length);
                    System.arraycopy(fArr2, 0, fArr3, fArr.length, fArr2.length);
                    Arrays.sort(fArr3);
                    float f = Float.NaN;
                    int i3 = 0;
                    for (int i4 = 0; i4 < length2; i4++) {
                        float f2 = fArr3[i4];
                        if (f2 != f) {
                            fArr3[i3] = f2;
                            i3++;
                            f = fArr3[i4];
                        }
                    }
                    float[] copyOfRange = Arrays.copyOfRange(fArr3, 0, i3);
                    keyframe = new Keyframe(gradientColor.copyWithPositions(copyOfRange), gradientColor2.copyWithPositions(copyOfRange));
                }
            }
            parse.set(i2, keyframe);
        }
        return new AnimatableTextFrame(parse, 2);
    }

    public static AnimatableTextFrame parseInteger(JsonReader jsonReader, LottieComposition lottieComposition) {
        return new AnimatableTextFrame(KeyframesParser.parse(jsonReader, lottieComposition, 1.0f, PathParser.INSTANCE$3, false), 3);
    }

    public static AnimatableTextFrame parsePoint(JsonUtf8Reader jsonUtf8Reader, LottieComposition lottieComposition) {
        return new AnimatableTextFrame(KeyframesParser.parse(jsonUtf8Reader, lottieComposition, Utils.dpScale(), PathParser.INSTANCE$4, true), 4);
    }

    /* JADX WARN: Code restructure failed: missing block: B:69:0x01db, code lost:
    
        r0 = kotlin.uuid.UuidKt.build(r8);
     */
    /* JADX WARN: Code restructure failed: missing block: B:70:0x01df, code lost:
    
        kotlin.TuplesKt.closeFinally(r2, null);
        r10 = r0;
     */
    /* JADX WARN: Finally extract failed */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static androidx.room.util.TableInfo read(androidx.sqlite.SQLiteConnection r29, java.lang.String r30) {
        /*
            Method dump skipped, instructions count: 513
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.text.UStringsKt.read(androidx.sqlite.SQLiteConnection, java.lang.String):androidx.room.util.TableInfo");
    }

    public static BuiltInsBinaryVersion readFrom(InputStream inputStream) {
        DataInputStream dataInputStream = new DataInputStream(inputStream);
        IntRange intRange = new IntRange(1, dataInputStream.readInt(), 1);
        ArrayList arrayList = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(intRange, 10));
        Iterator it = intRange.iterator();
        while (((IntProgressionIterator) it).hasNext) {
            ((IntIterator) it).nextInt();
            arrayList.add(Integer.valueOf(dataInputStream.readInt()));
        }
        int[] intArray = CollectionsKt.toIntArray(arrayList);
        int[] copyOf = Arrays.copyOf(intArray, intArray.length);
        return new BuiltInsBinaryVersion(Arrays.copyOf(copyOf, copyOf.length));
    }

    public static final LazyStaggeredGridState rememberLazyStaggeredGridState(GapComposer gapComposer) {
        Object[] objArr = new Object[0];
        CardView.AnonymousClass1 anonymousClass1 = LazyStaggeredGridState.Saver;
        boolean changed = gapComposer.changed(0) | gapComposer.changed(0);
        Object rememberedValue = gapComposer.rememberedValue();
        if (changed || rememberedValue == Composer$Companion.Empty) {
            rememberedValue = new ImmLeaksCleaner$$ExternalSyntheticLambda0(12);
            gapComposer.updateRememberedValue(rememberedValue);
        }
        return (LazyStaggeredGridState) SaverKt.rememberSaveable(objArr, anonymousClass1, (Function0) rememberedValue, gapComposer, 0);
    }

    public static int resolveColor(Context context, TypedValue typedValue) {
        int i = typedValue.resourceId;
        return i != 0 ? context.getColor(i) : typedValue.data;
    }

    public static void setMaxElevation(CardView.AnonymousClass1 anonymousClass1, float f) {
        RoundRectDrawable roundRectDrawable = (RoundRectDrawable) anonymousClass1.mCardBackground;
        CardView cardView = (CardView) anonymousClass1.this$0;
        boolean useCompatPadding = cardView.getUseCompatPadding();
        boolean preventCornerOverlap = cardView.getPreventCornerOverlap();
        if (f != roundRectDrawable.mPadding || roundRectDrawable.mInsetForPadding != useCompatPadding || roundRectDrawable.mInsetForRadius != preventCornerOverlap) {
            roundRectDrawable.mPadding = f;
            roundRectDrawable.mInsetForPadding = useCompatPadding;
            roundRectDrawable.mInsetForRadius = preventCornerOverlap;
            roundRectDrawable.updateBounds(null);
            roundRectDrawable.invalidateSelf();
        }
        if (!cardView.getUseCompatPadding()) {
            anonymousClass1.setShadowPadding(0, 0, 0, 0);
            return;
        }
        RoundRectDrawable roundRectDrawable2 = (RoundRectDrawable) anonymousClass1.mCardBackground;
        float f2 = roundRectDrawable2.mPadding;
        float f3 = roundRectDrawable2.mRadius;
        int ceil = (int) Math.ceil(RoundRectDrawableWithShadow.calculateHorizontalPadding(f2, f3, cardView.getPreventCornerOverlap()));
        int ceil2 = (int) Math.ceil(RoundRectDrawableWithShadow.calculateVerticalPadding(f2, f3, cardView.getPreventCornerOverlap()));
        anonymousClass1.setShadowPadding(ceil, ceil2, ceil, ceil2);
    }

    public static final boolean shouldIgnoreResult(Emittable emittable) {
        if (emittable instanceof EmittableIgnoreResult) {
            return true;
        }
        if (!(emittable instanceof EmittableWithChildren)) {
            return false;
        }
        ArrayList arrayList = ((EmittableWithChildren) emittable).children;
        if (arrayList.isEmpty()) {
            return false;
        }
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            if (shouldIgnoreResult((Emittable) it.next())) {
                return true;
            }
        }
        return false;
    }

    public static void strictModeViolation(String str, Throwable th) {
        if (strictModeEnabled) {
            throw new HttpException(String.format("%s - %s", str, th));
        }
    }

    public static final Bitmap toBitmap(Image image) {
        Image.Plane[] planes = image.getPlanes();
        planes.getClass();
        Image.Plane plane = planes[0];
        int height = image.getHeight() * image.getWidth();
        int[] iArr = new int[height];
        plane.getBuffer().asIntBuffer().get(iArr);
        for (int i = 0; i < height; i++) {
            int i2 = iArr[i];
            iArr[i] = ColorKt.m444toArgb8_81llA(ColorKt.Color(i2 & 255, (i2 >> 8) & 255, (i2 >> 16) & 255, (i2 >> 24) & 255));
        }
        return Bitmap.createBitmap(iArr, image.getWidth(), image.getHeight(), Bitmap.Config.ARGB_8888);
    }

    public static final float toDp(List list, Resources resources) {
        Iterator it = list.iterator();
        float f = RecyclerView.DECELERATION_RATE;
        while (it.hasNext()) {
            f += resources.getDimension(((Number) it.next()).intValue()) / resources.getDisplayMetrics().density;
        }
        return f;
    }

    /* renamed from: toPadding-0680j_4, reason: not valid java name */
    public static final PaddingDimension m846toPadding0680j_4(float f) {
        return new PaddingDimension(2, f);
    }

    public static final UInt toUIntOrNull(String str) {
        int i;
        UtilsKt.checkRadix(10);
        int length = str.length();
        if (length == 0) {
            return null;
        }
        int i2 = 0;
        char charAt = str.charAt(0);
        if (Intrinsics.compare((int) charAt, 48) < 0) {
            i = 1;
            if (length == 1 || charAt != '+') {
                return null;
            }
        } else {
            i = 0;
        }
        int i3 = 119304647;
        while (i < length) {
            int digit = Character.digit((int) str.charAt(i), 10);
            if (digit < 0) {
                return null;
            }
            int i4 = i2 ^ Integer.MIN_VALUE;
            if (Integer.compare(i4, i3 ^ Integer.MIN_VALUE) > 0) {
                if (i3 != 119304647 || Integer.compare(i4, -1717986919) > 0) {
                    return null;
                }
                i3 = 429496729;
            }
            int i5 = i2 * 10;
            int i6 = digit + i5;
            if (Integer.compare(i6 ^ Integer.MIN_VALUE, i5 ^ Integer.MIN_VALUE) < 0) {
                return null;
            }
            i++;
            i2 = i6;
        }
        return new UInt(i2);
    }

    public static final ULong toULongOrNull(String str) {
        str.getClass();
        int i = 10;
        UtilsKt.checkRadix(10);
        int length = str.length();
        if (length == 0) {
            return null;
        }
        int i2 = 0;
        char charAt = str.charAt(0);
        if (Intrinsics.compare((int) charAt, 48) < 0) {
            i2 = 1;
            if (length == 1 || charAt != '+') {
                return null;
            }
        }
        long j = 0;
        long j2 = 512409557603043100L;
        while (i2 < length) {
            int digit = Character.digit((int) str.charAt(i2), i);
            if (digit < 0) {
                return null;
            }
            long j3 = j ^ Long.MIN_VALUE;
            int i3 = length;
            if (Long.compare(j3, j2 ^ Long.MIN_VALUE) > 0) {
                if (j2 != 512409557603043100L || Long.compare(j3, -7378697629483820647L) > 0) {
                    return null;
                }
                j2 = 1844674407370955161L;
            }
            long j4 = j * 10;
            long j5 = (digit & 4294967295L) + j4;
            if (Long.compare(j5 ^ Long.MIN_VALUE, j4 ^ Long.MIN_VALUE) < 0) {
                return null;
            }
            i2++;
            j = j5;
            length = i3;
            i = 10;
        }
        return new ULong(j);
    }

    /* JADX WARN: Code restructure failed: missing block: B:101:0x008c, code lost:
    
        if (kotlin.collections.ArraysKt___ArraysKt.contains(r11, coil3.util.Utils_androidKt.VALID_TRANSFORMATION_CONFIGS) != false) goto L34;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:12:0x00d0  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x01e4  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x0205  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x023d  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x01f8  */
    /* JADX WARN: Removed duplicated region for block: B:84:0x02db  */
    /* JADX WARN: Removed duplicated region for block: B:88:0x0050  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x002b  */
    /* JADX WARN: Type inference failed for: r9v0 */
    /* JADX WARN: Type inference failed for: r9v1, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r9v16 */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:28:0x02bd -> B:10:0x02c2). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object transform(coil3.intercept.EngineInterceptor.ExecuteResult r22, coil3.request.ImageRequest r23, coil3.request.Options r24, coil3.EventListener$Companion$NONE$1 r25, kotlin.coroutines.jvm.internal.ContinuationImpl r26) {
        /*
            Method dump skipped, instructions count: 760
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.text.UStringsKt.transform(coil3.intercept.EngineInterceptor$ExecuteResult, coil3.request.ImageRequest, coil3.request.Options, coil3.EventListener$Companion$NONE$1, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    public static Map withDefaultMutable(LinkedHashMap linkedHashMap, ForYouCardKt$$ExternalSyntheticLambda1 forYouCardKt$$ExternalSyntheticLambda1) {
        return new MutableMapWithDefaultImpl(linkedHashMap, forYouCardKt$$ExternalSyntheticLambda1);
    }

    @Override // kotlinx.serialization.encoding.Decoder
    public CompositeDecoder beginStructure(SerialDescriptor serialDescriptor) {
        serialDescriptor.getClass();
        return this;
    }

    @Override // kotlinx.serialization.encoding.Decoder
    public boolean decodeBoolean() {
        decodeValue();
        throw null;
    }

    @Override // kotlinx.serialization.encoding.CompositeDecoder
    public boolean decodeBooleanElement(SerialDescriptor serialDescriptor, int i) {
        serialDescriptor.getClass();
        return decodeBoolean();
    }

    @Override // kotlinx.serialization.encoding.Decoder
    public abstract byte decodeByte();

    @Override // kotlinx.serialization.encoding.CompositeDecoder
    public byte decodeByteElement(PrimitiveArrayDescriptor primitiveArrayDescriptor, int i) {
        return decodeByte();
    }

    @Override // kotlinx.serialization.encoding.Decoder
    public char decodeChar() {
        decodeValue();
        throw null;
    }

    @Override // kotlinx.serialization.encoding.CompositeDecoder
    public char decodeCharElement(PrimitiveArrayDescriptor primitiveArrayDescriptor, int i) {
        return decodeChar();
    }

    @Override // kotlinx.serialization.encoding.Decoder
    public double decodeDouble() {
        decodeValue();
        throw null;
    }

    @Override // kotlinx.serialization.encoding.CompositeDecoder
    public double decodeDoubleElement(SerialDescriptor serialDescriptor, int i) {
        serialDescriptor.getClass();
        return decodeDouble();
    }

    @Override // kotlinx.serialization.encoding.Decoder
    public int decodeEnum(SerialDescriptor serialDescriptor) {
        serialDescriptor.getClass();
        decodeValue();
        throw null;
    }

    @Override // kotlinx.serialization.encoding.Decoder
    public float decodeFloat() {
        decodeValue();
        throw null;
    }

    @Override // kotlinx.serialization.encoding.CompositeDecoder
    public float decodeFloatElement(SerialDescriptor serialDescriptor, int i) {
        serialDescriptor.getClass();
        return decodeFloat();
    }

    @Override // kotlinx.serialization.encoding.Decoder
    public Decoder decodeInline(SerialDescriptor serialDescriptor) {
        serialDescriptor.getClass();
        return this;
    }

    @Override // kotlinx.serialization.encoding.CompositeDecoder
    public Decoder decodeInlineElement(PrimitiveArrayDescriptor primitiveArrayDescriptor, int i) {
        return decodeInline(primitiveArrayDescriptor.getElementDescriptor(i));
    }

    @Override // kotlinx.serialization.encoding.Decoder
    public abstract int decodeInt();

    @Override // kotlinx.serialization.encoding.CompositeDecoder
    public int decodeIntElement(SerialDescriptor serialDescriptor, int i) {
        serialDescriptor.getClass();
        return decodeInt();
    }

    @Override // kotlinx.serialization.encoding.Decoder
    public abstract long decodeLong();

    @Override // kotlinx.serialization.encoding.CompositeDecoder
    public long decodeLongElement(SerialDescriptor serialDescriptor, int i) {
        serialDescriptor.getClass();
        return decodeLong();
    }

    @Override // kotlinx.serialization.encoding.Decoder
    public boolean decodeNotNullMark() {
        return true;
    }

    @Override // kotlinx.serialization.encoding.CompositeDecoder
    public Object decodeNullableSerializableElement(SerialDescriptor serialDescriptor, int i, KSerializer kSerializer, Object obj) {
        serialDescriptor.getClass();
        kSerializer.getClass();
        if (kSerializer.getDescriptor().isNullable() || decodeNotNullMark()) {
            return decodeSerializableValue$1(kSerializer);
        }
        return null;
    }

    @Override // kotlinx.serialization.encoding.CompositeDecoder
    public Object decodeSerializableElement(SerialDescriptor serialDescriptor, int i, KSerializer kSerializer, Object obj) {
        serialDescriptor.getClass();
        kSerializer.getClass();
        return decodeSerializableValue$1(kSerializer);
    }

    @Override // kotlinx.serialization.encoding.Decoder
    public Object decodeSerializableValue$1(KSerializer kSerializer) {
        kSerializer.getClass();
        return kSerializer.deserialize(this);
    }

    @Override // kotlinx.serialization.encoding.Decoder
    public abstract short decodeShort();

    @Override // kotlinx.serialization.encoding.CompositeDecoder
    public short decodeShortElement(PrimitiveArrayDescriptor primitiveArrayDescriptor, int i) {
        return decodeShort();
    }

    @Override // kotlinx.serialization.encoding.Decoder
    public String decodeString() {
        decodeValue();
        throw null;
    }

    @Override // kotlinx.serialization.encoding.CompositeDecoder
    public String decodeStringElement(SerialDescriptor serialDescriptor, int i) {
        serialDescriptor.getClass();
        return decodeString();
    }

    public void decodeValue() {
        throw new SerializationException(Reflection.factory.getOrCreateKotlinClass(getClass()) + " can't retrieve untyped values");
    }

    @Override // kotlinx.serialization.encoding.CompositeDecoder
    public void endStructure(SerialDescriptor serialDescriptor) {
        serialDescriptor.getClass();
    }

    public abstract InputFilter[] getFilters(InputFilter[] inputFilterArr);

    public abstract boolean isEnabled();

    public abstract void setAllCaps(boolean z);

    public abstract void setEnabled(boolean z);

    public abstract TransformationMethod wrapTransformationMethod(TransformationMethod transformationMethod);

    public static void strictModeViolation(Exception exc) {
        if (strictModeEnabled) {
            throw new HttpException(String.format("%s", exc));
        }
    }

    public static final KClass getJvmErasure(KType kType) {
        KClass jvmErasure;
        KClassifier classifier = kType.getClassifier();
        if (classifier != null && (jvmErasure = getJvmErasure(classifier)) != null) {
            return jvmErasure;
        }
        Gson$$ExternalSyntheticBUOutline0.m$6("Cannot calculate JVM erasure for type: ", kType);
        return null;
    }
}
