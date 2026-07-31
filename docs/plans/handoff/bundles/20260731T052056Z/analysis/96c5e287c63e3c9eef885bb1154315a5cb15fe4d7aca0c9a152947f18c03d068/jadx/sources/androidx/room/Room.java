package androidx.room;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcelable;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.ViewPropertyAnimator;
import androidx.compose.animation.core.Animation;
import androidx.compose.foundation.lazy.staggeredgrid.LazyStaggeredGridMeasureContext;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.ui.text.android.selection.SegmentFinder;
import androidx.compose.ui.unit.DensityWithConverter;
import androidx.compose.ui.unit.LinearFontScaleConverter;
import androidx.compose.ui.unit.fontscaling.FontScaleConverter;
import androidx.compose.ui.unit.fontscaling.FontScaleConverterFactory;
import androidx.concurrent.futures.CallbackToFutureAdapter$Completer;
import androidx.concurrent.futures.CallbackToFutureAdapter$Resolver;
import androidx.concurrent.futures.CallbackToFutureAdapter$SafeFuture;
import androidx.concurrent.futures.ResolvableFuture;
import androidx.emoji2.text.flatbuffer.MetadataList;
import androidx.glance.Applier;
import androidx.glance.GlanceModifier;
import androidx.glance.layout.Alignment;
import androidx.glance.layout.BoxKt$Box$2$1;
import androidx.glance.layout.ColumnKt$Column$1;
import androidx.glance.layout.ColumnScopeImplInstance;
import androidx.lifecycle.ViewModelStore;
import androidx.lifecycle.viewmodel.CreationExtras;
import androidx.navigation.NavControllerViewModel;
import androidx.navigation.NavControllerViewModelKt;
import androidx.room.Room;
import androidx.room.RoomDatabase;
import androidx.work.Operation$State;
import androidx.work.impl.WorkerWrapper$launch$1$$ExternalSyntheticLambda0;
import coil3.ImageLoader$Builder;
import coil3.decode.ImageSource;
import coil3.gif.DecodeUtilsKt;
import coil3.gif.internal.FrameDelayRewritingSource;
import coil3.util.ContextsKt$$ExternalSyntheticBUOutline0;
import com.airbnb.lottie.LottieComposition;
import com.airbnb.lottie.LottieCompositionFactory;
import com.airbnb.lottie.LottieListener;
import com.airbnb.lottie.LottieTask;
import com.airbnb.lottie.compose.LottieCompositionSpec$Asset;
import com.airbnb.lottie.model.LottieCompositionCache;
import com.google.gson.Gson$$ExternalSyntheticBUOutline0;
import com.hcaptcha.sdk.HCaptchaCompat;
import java.lang.reflect.AccessibleObject;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.MappedByteBuffer;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.collections.ArrayAsCollection;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.CollectionsKt__IteratorsJVMKt;
import kotlin.collections.EmptyList;
import kotlin.collections.builders.ListBuilder;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.ranges.IntRange;
import kotlin.reflect.KCallable;
import kotlin.reflect.KClass;
import kotlin.reflect.KFunction;
import kotlin.reflect.KMutableProperty;
import kotlin.reflect.KProperty;
import kotlin.reflect.jvm.internal.KCallableImpl;
import kotlin.reflect.jvm.internal.KPropertyImpl;
import kotlin.reflect.jvm.internal.UtilKt;
import kotlin.reflect.jvm.internal.calls.Caller;
import kotlin.reflect.jvm.internal.impl.builtins.KotlinBuiltIns;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassKind;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassifierDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.FunctionDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ModuleDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.SourceElement;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotations;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.ModuleAwareClassDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.ValueParameterDescriptorImpl;
import kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure.Java8ParameterNamesLoader;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaStaticClassScope;
import kotlin.reflect.jvm.internal.impl.load.kotlin.JvmType;
import kotlin.reflect.jvm.internal.impl.metadata.deserialization.NameResolver;
import kotlin.reflect.jvm.internal.impl.name.ClassId;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.resolve.DescriptorUtils;
import kotlin.reflect.jvm.internal.impl.resolve.descriptorUtil.DescriptorUtilsKt;
import kotlin.reflect.jvm.internal.impl.resolve.jvm.JvmClassName;
import kotlin.reflect.jvm.internal.impl.resolve.jvm.JvmPrimitiveType;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.text.RegexKt;
import kotlin.text.StringsKt;
import kotlin.uuid.UuidKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import okhttp3.internal.http.StatusLine;
import okio.BufferedSource;
import okio.RealBufferedSource;
import org.jsoup.helper.ValidationException;
import org.wikipedia.R;
import org.wikipedia.talk.TalkTopicsViewModel;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class Room implements SegmentFinder {
    public static final float LeadingSpace = 24.0f;
    public static final float TrailingSpace = 24.0f;
    public static Java8ParameterNamesLoader.Cache _cache;
    public final /* synthetic */ int $r8$classId;

    public /* synthetic */ Room(int i) {
        this.$r8$classId = i;
    }

    /* renamed from: Column-K4GKKTE, reason: not valid java name */
    public static final void m758ColumnK4GKKTE(final GlanceModifier glanceModifier, int i, int i2, final ComposableLambdaImpl composableLambdaImpl, GapComposer gapComposer, final int i3, final int i4) {
        int i5;
        int i6;
        gapComposer.startRestartGroup(-1883910253);
        int i7 = (gapComposer.changed(glanceModifier) ? 4 : 2) | i3;
        int i8 = i4 & 2;
        if (i8 != 0) {
            i5 = i7 | 48;
        } else {
            i5 = i7 | (gapComposer.changed(i) ? 32 : 16);
        }
        int i9 = i4 & 4;
        if (i9 != 0) {
            i6 = i5 | 384;
        } else {
            i6 = i5 | (gapComposer.changed(i2) ? 256 : 128);
        }
        if ((i6 & 1171) == 1170 && gapComposer.getSkipping()) {
            gapComposer.skipToGroupEnd();
        } else {
            if (i8 != 0) {
                i = 0;
            }
            if (i9 != 0) {
                i2 = 0;
            }
            ColumnKt$Column$1 columnKt$Column$1 = ColumnKt$Column$1.INSTANCE;
            gapComposer.startReplaceableGroup(578571862);
            gapComposer.startReplaceableGroup(-548224868);
            if (!(gapComposer.applier instanceof Applier)) {
                Updater.invalidApplier();
                throw null;
            }
            gapComposer.startNode();
            if (gapComposer.inserting) {
                gapComposer.createNode(columnKt$Column$1);
            } else {
                gapComposer.useNode();
            }
            Updater.m327setimpl(gapComposer, glanceModifier, BoxKt$Box$2$1.INSTANCE$2);
            Updater.m327setimpl(gapComposer, new Alignment.Horizontal(i2), BoxKt$Box$2$1.INSTANCE$3);
            Updater.m327setimpl(gapComposer, new Alignment.Vertical(i), BoxKt$Box$2$1.INSTANCE$4);
            composableLambdaImpl.invoke((Object) ColumnScopeImplInstance.INSTANCE, (Object) gapComposer, (Object) 54);
            gapComposer.end(true);
            gapComposer.end(false);
            gapComposer.end(false);
        }
        final int i10 = i;
        final int i11 = i2;
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new Function2(i10, i11, composableLambdaImpl, i3, i4) { // from class: androidx.glance.layout.ColumnKt$Column$4
                public final /* synthetic */ int $$default;
                public final /* synthetic */ ComposableLambdaImpl $content;
                public final /* synthetic */ int $horizontalAlignment;
                public final /* synthetic */ int $verticalAlignment;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(2);
                    this.$$default = i4;
                }

                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    ((Number) obj2).intValue();
                    int i12 = this.$$default;
                    Room.m758ColumnK4GKKTE(GlanceModifier.this, this.$verticalAlignment, this.$horizontalAlignment, this.$content, (GapComposer) obj, 3073, i12);
                    return Unit.INSTANCE;
                }
            };
        }
    }

    public static final DensityWithConverter Density(Context context) {
        float f = context.getResources().getConfiguration().fontScale;
        float f2 = context.getResources().getDisplayMetrics().density;
        FontScaleConverter forScale = FontScaleConverterFactory.forScale(f);
        if (forScale == null) {
            forScale = new LinearFontScaleConverter(f);
        }
        return new DensityWithConverter(f2, f, forScale);
    }

    public static void appendElement(Appendable appendable, Object obj, Function1 function1) {
        if (function1 != null) {
            appendable.append((CharSequence) function1.invoke(obj));
            return;
        }
        if (obj == null ? true : obj instanceof CharSequence) {
            appendable.append((CharSequence) obj);
        } else if (obj instanceof Character) {
            appendable.append(((Character) obj).charValue());
        } else {
            appendable.append(obj.toString());
        }
    }

    public static final void appendPlaceholders(int i, StringBuilder sb) {
        for (int i2 = 0; i2 < i; i2++) {
            sb.append("?");
            if (i2 < i - 1) {
                sb.append(",");
            }
        }
    }

    public static ArrayList arrayListOf(Object... objArr) {
        return objArr.length == 0 ? new ArrayList() : new ArrayList(new ArrayAsCollection(objArr, true));
    }

    public static int binarySearch$default(ArrayList arrayList, Comparable comparable) {
        int size = arrayList.size();
        arrayList.getClass();
        rangeCheck$CollectionsKt__CollectionsKt(arrayList.size(), size);
        int i = size - 1;
        int i2 = 0;
        while (i2 <= i) {
            int i3 = (i2 + i) >>> 1;
            int compareValues = Operation$State.compareValues((Comparable) arrayList.get(i3), comparable);
            if (compareValues < 0) {
                i2 = i3 + 1;
            } else {
                if (compareValues <= 0) {
                    return i3;
                }
                i = i3 - 1;
            }
        }
        return -(i2 + 1);
    }

    public static final Object boxTypeIfNeeded(Object obj, boolean z) {
        JvmPrimitiveType jvmPrimitiveType;
        obj.getClass();
        if (z) {
            obj = (JvmType) obj;
            if ((obj instanceof JvmType.Primitive) && (jvmPrimitiveType = ((JvmType.Primitive) obj).jvmPrimitiveType) != null) {
                String internalName = JvmClassName.byFqNameWithoutInnerClasses(jvmPrimitiveType.getWrapperFqName()).getInternalName();
                internalName.getClass();
                return new JvmType.Object(internalName);
            }
        }
        return obj;
    }

    public static ListBuilder build(List list) {
        list.getClass();
        ListBuilder listBuilder = (ListBuilder) list;
        listBuilder.checkIsMutable$1();
        listBuilder.isReadOnly = true;
        return listBuilder.length > 0 ? listBuilder : ListBuilder.Empty;
    }

    public static final ArrayList copyValueParameters(ArrayList arrayList, List list, FunctionDescriptor functionDescriptor) {
        KotlinType kotlinType;
        list.getClass();
        arrayList.size();
        list.size();
        ArrayList zip = CollectionsKt.zip(arrayList, list);
        ArrayList arrayList2 = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(zip, 10));
        Iterator it = zip.iterator();
        while (it.hasNext()) {
            Pair pair = (Pair) it.next();
            KotlinType kotlinType2 = (KotlinType) pair.first;
            ValueParameterDescriptorImpl valueParameterDescriptorImpl = (ValueParameterDescriptorImpl) pair.second;
            int i = valueParameterDescriptorImpl.index;
            Annotations annotations = valueParameterDescriptorImpl.getAnnotations();
            Name name = valueParameterDescriptorImpl.getName();
            name.getClass();
            boolean declaresDefaultValue = valueParameterDescriptorImpl.declaresDefaultValue();
            boolean z = valueParameterDescriptorImpl.isCrossinline;
            boolean z2 = valueParameterDescriptorImpl.isNoinline;
            if (valueParameterDescriptorImpl.varargElementType != null) {
                int i2 = DescriptorUtilsKt.$r8$clinit;
                ModuleDescriptor containingModule = DescriptorUtils.getContainingModule(functionDescriptor);
                containingModule.getClass();
                kotlinType = containingModule.getBuiltIns().getArrayElementType(kotlinType2);
            } else {
                kotlinType = null;
            }
            KotlinType kotlinType3 = kotlinType;
            SourceElement source = valueParameterDescriptorImpl.getSource();
            source.getClass();
            arrayList2.add(new ValueParameterDescriptorImpl(functionDescriptor, null, i, annotations, name, kotlinType2, declaresDefaultValue, z, z2, kotlinType3, source));
        }
        return arrayList2;
    }

    public static ListBuilder createListBuilder() {
        return new ListBuilder(10);
    }

    public static final RoomDatabase.Builder databaseBuilder(Context context, Class cls, String str) {
        if (StringsKt.isBlank(str)) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m("Cannot build a database with null or empty name. If you are trying to create an in memory database, use Room.inMemoryDatabaseBuilder");
            return null;
        }
        if (!str.equals(":memory:")) {
            return new RoomDatabase.Builder(context, cls, str);
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m("Cannot build a database with the special name ':memory:'. If you are trying to create an in memory database, use Room.inMemoryDatabaseBuilder");
        return null;
    }

    public static View findChildViewById(View view, int i) {
        if (!(view instanceof ViewGroup)) {
            return null;
        }
        ViewGroup viewGroup = (ViewGroup) view;
        int childCount = viewGroup.getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            View findViewById = viewGroup.getChildAt(i2).findViewById(i);
            if (findViewById != null) {
                return findViewById;
            }
        }
        return null;
    }

    /* renamed from: getCenter-uvyYCjk, reason: not valid java name */
    public static final long m759getCenteruvyYCjk(long j) {
        float intBitsToFloat = Float.intBitsToFloat((int) (j >> 32)) / 2.0f;
        float intBitsToFloat2 = Float.intBitsToFloat((int) (j & 4294967295L)) / 2.0f;
        return (Float.floatToRawIntBits(intBitsToFloat2) & 4294967295L) | (Float.floatToRawIntBits(intBitsToFloat) << 32);
    }

    public static final ClassId getClassId(NameResolver nameResolver, int i) {
        nameResolver.getClass();
        return ClassId.fromString(nameResolver.getQualifiedClassName(i), nameResolver.isLocalClassName(i));
    }

    public static CallbackToFutureAdapter$SafeFuture getFuture(CallbackToFutureAdapter$Resolver callbackToFutureAdapter$Resolver) {
        CallbackToFutureAdapter$Completer callbackToFutureAdapter$Completer = new CallbackToFutureAdapter$Completer();
        callbackToFutureAdapter$Completer.cancellationFuture = new ResolvableFuture();
        CallbackToFutureAdapter$SafeFuture callbackToFutureAdapter$SafeFuture = new CallbackToFutureAdapter$SafeFuture(callbackToFutureAdapter$Completer);
        callbackToFutureAdapter$Completer.future = callbackToFutureAdapter$SafeFuture;
        callbackToFutureAdapter$Completer.tag = callbackToFutureAdapter$Resolver.getClass();
        try {
            Object attachCompleter = callbackToFutureAdapter$Resolver.attachCompleter(callbackToFutureAdapter$Completer);
            if (attachCompleter == null) {
                return callbackToFutureAdapter$SafeFuture;
            }
            callbackToFutureAdapter$Completer.tag = attachCompleter;
            return callbackToFutureAdapter$SafeFuture;
        } catch (Exception e) {
            callbackToFutureAdapter$SafeFuture.delegate.setException(e);
            return callbackToFutureAdapter$SafeFuture;
        }
    }

    public static IntRange getIndices(Collection collection) {
        collection.getClass();
        return new IntRange(0, collection.size() - 1, 1);
    }

    public static NavControllerViewModel getInstance(ViewModelStore viewModelStore) {
        TalkTopicsViewModel.Factory factory = NavControllerViewModelKt.FACTORY;
        CreationExtras.Empty empty = CreationExtras.Empty.INSTANCE;
        factory.getClass();
        empty.getClass();
        ImageLoader$Builder imageLoader$Builder = new ImageLoader$Builder(viewModelStore, factory, empty);
        KClass orCreateKotlinClass = Reflection.factory.getOrCreateKotlinClass(NavControllerViewModel.class);
        String qualifiedName = orCreateKotlinClass.getQualifiedName();
        if (qualifiedName != null) {
            return (NavControllerViewModel) imageLoader$Builder.getViewModel$lifecycle_viewmodel("androidx.lifecycle.ViewModelProvider.DefaultKey:".concat(qualifiedName), orCreateKotlinClass);
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m("Local and anonymous classes can not be ViewModels");
        return null;
    }

    public static int getLastIndex(List list) {
        list.getClass();
        return list.size() - 1;
    }

    public static final Name getName(NameResolver nameResolver, int i) {
        nameResolver.getClass();
        return Name.guessByFirstCharacter(nameResolver.getString(i));
    }

    public static Object getParcelable(Bundle bundle, String str, Class cls) {
        if (Build.VERSION.SDK_INT >= 34) {
            return HCaptchaCompat.getParcelable(bundle, str, cls);
        }
        Parcelable parcelable = bundle.getParcelable(str);
        if (cls.isInstance(parcelable)) {
            return parcelable;
        }
        return null;
    }

    public static ArrayList getParcelableArrayList(Bundle bundle, String str, Class cls) {
        return Build.VERSION.SDK_INT >= 34 ? HCaptchaCompat.getParcelableArrayList(bundle, str, cls) : bundle.getParcelableArrayList(str);
    }

    public static final LazyJavaStaticClassScope getParentJavaStaticClassScope(ModuleAwareClassDescriptor moduleAwareClassDescriptor) {
        ModuleAwareClassDescriptor moduleAwareClassDescriptor2;
        ClassifierDescriptor declarationDescriptor;
        moduleAwareClassDescriptor.getClass();
        int i = DescriptorUtilsKt.$r8$clinit;
        Iterator it = moduleAwareClassDescriptor.getDefaultType().getConstructor().getSupertypes().iterator();
        while (true) {
            if (!it.hasNext()) {
                moduleAwareClassDescriptor2 = null;
                break;
            }
            KotlinType kotlinType = (KotlinType) it.next();
            if (!KotlinBuiltIns.isAnyOrNullableAny(kotlinType)) {
                declarationDescriptor = kotlinType.getConstructor().getDeclarationDescriptor();
                if (DescriptorUtils.isKindOf(declarationDescriptor, ClassKind.CLASS) || DescriptorUtils.isKindOf(declarationDescriptor, ClassKind.ENUM_CLASS)) {
                    break;
                }
            }
        }
        declarationDescriptor.getClass();
        moduleAwareClassDescriptor2 = (ModuleAwareClassDescriptor) declarationDescriptor;
        if (moduleAwareClassDescriptor2 == null) {
            return null;
        }
        MemberScope staticScope = moduleAwareClassDescriptor2.getStaticScope();
        LazyJavaStaticClassScope lazyJavaStaticClassScope = staticScope instanceof LazyJavaStaticClassScope ? (LazyJavaStaticClassScope) staticScope : null;
        return lazyJavaStaticClassScope == null ? getParentJavaStaticClassScope(moduleAwareClassDescriptor2) : lazyJavaStaticClassScope;
    }

    public static final ViewParent getParentOrViewTreeDisjointParent(View view) {
        view.getClass();
        ViewParent parent = view.getParent();
        if (parent != null) {
            return parent;
        }
        Object tag = view.getTag(R.id.view_tree_disjoint_parent);
        if (tag instanceof ViewParent) {
            return (ViewParent) tag;
        }
        return null;
    }

    public static final int indexOfMaxValue(int[] iArr) {
        int length = iArr.length;
        int i = -1;
        int i2 = Integer.MIN_VALUE;
        for (int i3 = 0; i3 < length; i3++) {
            int i4 = iArr[i3];
            if (i2 < i4) {
                i = i3;
                i2 = i4;
            }
        }
        return i;
    }

    public static int indexOfMinValue$default(int[] iArr) {
        int length = iArr.length;
        int i = -1;
        int i2 = Integer.MAX_VALUE;
        for (int i3 = 0; i3 < length; i3++) {
            int i4 = iArr[i3];
            if (-2147483647 <= i4 && i4 < i2) {
                i = i3;
                i2 = i4;
            }
        }
        return i;
    }

    public static final int indexSegment(int i, int i2) {
        return (i >> i2) & 31;
    }

    public static final Object[] insertEntryAtIndex(Object[] objArr, int i, Object obj, Object obj2) {
        Object[] objArr2 = new Object[objArr.length + 2];
        ArraysKt___ArraysKt.copyInto$default(objArr, objArr2, 0, i, 6);
        ArraysKt___ArraysKt.copyInto(objArr, objArr2, i + 2, i, objArr.length);
        objArr2[i] = obj;
        objArr2[i + 1] = obj2;
        return objArr2;
    }

    public static final boolean isAccessible(KCallable kCallable) {
        Caller caller;
        Caller defaultCaller;
        if (kCallable instanceof KMutableProperty) {
            KProperty kProperty = (KProperty) kCallable;
            Field javaField = UuidKt.getJavaField(kProperty);
            if (!(javaField != null ? javaField.isAccessible() : true)) {
                return false;
            }
            Method javaMethod = UuidKt.getJavaMethod(kProperty.getGetter());
            if (!(javaMethod != null ? javaMethod.isAccessible() : true)) {
                return false;
            }
            Method javaMethod2 = UuidKt.getJavaMethod(((KMutableProperty) kCallable).getSetter());
            if (!(javaMethod2 != null ? javaMethod2.isAccessible() : true)) {
                return false;
            }
        } else if (kCallable instanceof KProperty) {
            KProperty kProperty2 = (KProperty) kCallable;
            Field javaField2 = UuidKt.getJavaField(kProperty2);
            if (!(javaField2 != null ? javaField2.isAccessible() : true)) {
                return false;
            }
            Method javaMethod3 = UuidKt.getJavaMethod(kProperty2.getGetter());
            if (!(javaMethod3 != null ? javaMethod3.isAccessible() : true)) {
                return false;
            }
        } else if (kCallable instanceof KPropertyImpl.Getter) {
            Field javaField3 = UuidKt.getJavaField(((KPropertyImpl.Getter) kCallable).getProperty());
            if (!(javaField3 != null ? javaField3.isAccessible() : true)) {
                return false;
            }
            Method javaMethod4 = UuidKt.getJavaMethod((KFunction) kCallable);
            if (!(javaMethod4 != null ? javaMethod4.isAccessible() : true)) {
                return false;
            }
        } else if (kCallable instanceof KPropertyImpl.Setter) {
            Field javaField4 = UuidKt.getJavaField(((KPropertyImpl.Setter) kCallable).getProperty());
            if (!(javaField4 != null ? javaField4.isAccessible() : true)) {
                return false;
            }
            Method javaMethod5 = UuidKt.getJavaMethod((KFunction) kCallable);
            if (!(javaMethod5 != null ? javaMethod5.isAccessible() : true)) {
                return false;
            }
        } else {
            if (!(kCallable instanceof KFunction)) {
                StringBuilder sb = new StringBuilder("Unknown callable: ");
                sb.append(kCallable);
                Class<?> cls = kCallable.getClass();
                sb.append(" (");
                sb.append(cls);
                sb.append(')');
                throw new UnsupportedOperationException(sb.toString());
            }
            KFunction kFunction = (KFunction) kCallable;
            Method javaMethod6 = UuidKt.getJavaMethod(kFunction);
            if (!(javaMethod6 != null ? javaMethod6.isAccessible() : true)) {
                return false;
            }
            KCallableImpl asKCallableImpl = UtilKt.asKCallableImpl(kCallable);
            Object member = (asKCallableImpl == null || (defaultCaller = asKCallableImpl.getDefaultCaller()) == null) ? null : defaultCaller.getMember();
            AccessibleObject accessibleObject = member instanceof AccessibleObject ? (AccessibleObject) member : null;
            if (!(accessibleObject != null ? accessibleObject.isAccessible() : true)) {
                return false;
            }
            KCallableImpl asKCallableImpl2 = UtilKt.asKCallableImpl(kFunction);
            Object member2 = (asKCallableImpl2 == null || (caller = asKCallableImpl2.getCaller()) == null) ? null : caller.getMember();
            Constructor constructor = member2 instanceof Constructor ? (Constructor) member2 : null;
            if (!(constructor != null ? constructor.isAccessible() : true)) {
                return false;
            }
        }
        return true;
    }

    public static void isTrue(boolean z) {
        if (!z) {
            throw new ValidationException("Must be true");
        }
    }

    public static List listOf(Object... objArr) {
        objArr.getClass();
        if (objArr.length <= 0) {
            return EmptyList.INSTANCE;
        }
        List asList = Arrays.asList(objArr);
        asList.getClass();
        return asList;
    }

    public static List listOfNotNull(Object obj) {
        return obj != null ? listOf(obj) : EmptyList.INSTANCE;
    }

    /* JADX WARN: Code restructure failed: missing block: B:32:0x00c8, code lost:
    
        if (r4 == r3) goto L28;
     */
    /* JADX WARN: Removed duplicated region for block: B:19:0x00e4  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0106 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:30:0x00cd  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00bb  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0062  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x002a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object lottieComposition(android.content.Context r16, com.airbnb.lottie.compose.LottieCompositionSpec$Asset r17, java.lang.String r18, java.lang.String r19, java.lang.String r20, java.lang.String r21, kotlin.coroutines.jvm.internal.ContinuationImpl r22) {
        /*
            Method dump skipped, instructions count: 263
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.room.Room.lottieComposition(android.content.Context, com.airbnb.lottie.compose.LottieCompositionSpec$Asset, java.lang.String, java.lang.String, java.lang.String, java.lang.String, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    public static final LottieTask lottieTask(Context context, LottieCompositionSpec$Asset lottieCompositionSpec$Asset, final String str) {
        LottieTask lottieTask;
        if (!(lottieCompositionSpec$Asset instanceof LottieCompositionSpec$Asset)) {
            ContextsKt$$ExternalSyntheticBUOutline0.m();
            return null;
        }
        final int i = 1;
        final int i2 = 0;
        if (Intrinsics.areEqual(str, "__LottieInternalDefaultCacheKey__")) {
            HashMap hashMap = LottieCompositionFactory.taskCache;
            final String str2 = "asset_lottie/explore_feed_building.lottie";
            WorkerWrapper$launch$1$$ExternalSyntheticLambda0 workerWrapper$launch$1$$ExternalSyntheticLambda0 = new WorkerWrapper$launch$1$$ExternalSyntheticLambda0(i, context.getApplicationContext(), str2);
            HashMap hashMap2 = LottieCompositionFactory.taskCache;
            LottieComposition lottieComposition = LottieCompositionCache.INSTANCE.get("asset_lottie/explore_feed_building.lottie");
            lottieTask = lottieComposition != null ? new LottieTask(lottieComposition) : null;
            if (hashMap2.containsKey("asset_lottie/explore_feed_building.lottie")) {
                lottieTask = (LottieTask) hashMap2.get("asset_lottie/explore_feed_building.lottie");
            }
            if (lottieTask != null) {
                return lottieTask;
            }
            LottieTask lottieTask2 = new LottieTask(workerWrapper$launch$1$$ExternalSyntheticLambda0);
            final AtomicBoolean atomicBoolean = new AtomicBoolean(false);
            lottieTask2.addListener(new LottieListener() { // from class: com.airbnb.lottie.LottieCompositionFactory$$ExternalSyntheticLambda1
                @Override // com.airbnb.lottie.LottieListener
                public final void onResult(Object obj) {
                    int i3 = i2;
                    AtomicBoolean atomicBoolean2 = atomicBoolean;
                    String str3 = str2;
                    switch (i3) {
                        case 0:
                            HashMap hashMap3 = LottieCompositionFactory.taskCache;
                            hashMap3.remove(str3);
                            atomicBoolean2.set(true);
                            if (hashMap3.size() == 0) {
                                LottieCompositionFactory.notifyTaskCacheIdleListeners();
                                break;
                            }
                            break;
                        default:
                            HashMap hashMap4 = LottieCompositionFactory.taskCache;
                            hashMap4.remove(str3);
                            atomicBoolean2.set(true);
                            if (hashMap4.size() == 0) {
                                LottieCompositionFactory.notifyTaskCacheIdleListeners();
                                break;
                            }
                            break;
                    }
                }
            });
            lottieTask2.addFailureListener(new LottieListener() { // from class: com.airbnb.lottie.LottieCompositionFactory$$ExternalSyntheticLambda1
                @Override // com.airbnb.lottie.LottieListener
                public final void onResult(Object obj) {
                    int i3 = i;
                    AtomicBoolean atomicBoolean2 = atomicBoolean;
                    String str3 = str2;
                    switch (i3) {
                        case 0:
                            HashMap hashMap3 = LottieCompositionFactory.taskCache;
                            hashMap3.remove(str3);
                            atomicBoolean2.set(true);
                            if (hashMap3.size() == 0) {
                                LottieCompositionFactory.notifyTaskCacheIdleListeners();
                                break;
                            }
                            break;
                        default:
                            HashMap hashMap4 = LottieCompositionFactory.taskCache;
                            hashMap4.remove(str3);
                            atomicBoolean2.set(true);
                            if (hashMap4.size() == 0) {
                                LottieCompositionFactory.notifyTaskCacheIdleListeners();
                                break;
                            }
                            break;
                    }
                }
            });
            if (!atomicBoolean.get()) {
                hashMap2.put("asset_lottie/explore_feed_building.lottie", lottieTask2);
                if (hashMap2.size() == 1) {
                    LottieCompositionFactory.notifyTaskCacheIdleListeners();
                }
            }
            return lottieTask2;
        }
        HashMap hashMap3 = LottieCompositionFactory.taskCache;
        WorkerWrapper$launch$1$$ExternalSyntheticLambda0 workerWrapper$launch$1$$ExternalSyntheticLambda02 = new WorkerWrapper$launch$1$$ExternalSyntheticLambda0(i, context.getApplicationContext(), str);
        HashMap hashMap4 = LottieCompositionFactory.taskCache;
        LottieComposition lottieComposition2 = str == null ? null : LottieCompositionCache.INSTANCE.get(str);
        lottieTask = lottieComposition2 != null ? new LottieTask(lottieComposition2) : null;
        if (str != null && hashMap4.containsKey(str)) {
            lottieTask = (LottieTask) hashMap4.get(str);
        }
        if (lottieTask != null) {
            return lottieTask;
        }
        LottieTask lottieTask3 = new LottieTask(workerWrapper$launch$1$$ExternalSyntheticLambda02);
        if (str != null) {
            final AtomicBoolean atomicBoolean2 = new AtomicBoolean(false);
            lottieTask3.addListener(new LottieListener() { // from class: com.airbnb.lottie.LottieCompositionFactory$$ExternalSyntheticLambda1
                @Override // com.airbnb.lottie.LottieListener
                public final void onResult(Object obj) {
                    int i3 = i2;
                    AtomicBoolean atomicBoolean22 = atomicBoolean2;
                    String str3 = str;
                    switch (i3) {
                        case 0:
                            HashMap hashMap32 = LottieCompositionFactory.taskCache;
                            hashMap32.remove(str3);
                            atomicBoolean22.set(true);
                            if (hashMap32.size() == 0) {
                                LottieCompositionFactory.notifyTaskCacheIdleListeners();
                                break;
                            }
                            break;
                        default:
                            HashMap hashMap42 = LottieCompositionFactory.taskCache;
                            hashMap42.remove(str3);
                            atomicBoolean22.set(true);
                            if (hashMap42.size() == 0) {
                                LottieCompositionFactory.notifyTaskCacheIdleListeners();
                                break;
                            }
                            break;
                    }
                }
            });
            lottieTask3.addFailureListener(new LottieListener() { // from class: com.airbnb.lottie.LottieCompositionFactory$$ExternalSyntheticLambda1
                @Override // com.airbnb.lottie.LottieListener
                public final void onResult(Object obj) {
                    int i3 = i;
                    AtomicBoolean atomicBoolean22 = atomicBoolean2;
                    String str3 = str;
                    switch (i3) {
                        case 0:
                            HashMap hashMap32 = LottieCompositionFactory.taskCache;
                            hashMap32.remove(str3);
                            atomicBoolean22.set(true);
                            if (hashMap32.size() == 0) {
                                LottieCompositionFactory.notifyTaskCacheIdleListeners();
                                break;
                            }
                            break;
                        default:
                            HashMap hashMap42 = LottieCompositionFactory.taskCache;
                            hashMap42.remove(str3);
                            atomicBoolean22.set(true);
                            if (hashMap42.size() == 0) {
                                LottieCompositionFactory.notifyTaskCacheIdleListeners();
                                break;
                            }
                            break;
                    }
                }
            });
            if (!atomicBoolean2.get()) {
                hashMap4.put(str, lottieTask3);
                if (hashMap4.size() == 1) {
                    LottieCompositionFactory.notifyTaskCacheIdleListeners();
                }
            }
        }
        return lottieTask3;
    }

    /* renamed from: maxInRange-jy6DScQ, reason: not valid java name */
    public static final int m760maxInRangejy6DScQ(long j, int[] iArr) {
        int i = (int) (j & 4294967295L);
        int i2 = Integer.MIN_VALUE;
        for (int i3 = (int) (j >> 32); i3 < i; i3++) {
            i2 = Math.max(i2, iArr[i3]);
        }
        return i2;
    }

    public static final ImageSource maybeWrapImageSourceToRewriteFrameDelay(ImageSource imageSource, boolean z) {
        if (!z) {
            return imageSource;
        }
        BufferedSource source = imageSource.source();
        return (source.rangeEquals(0L, DecodeUtilsKt.GIF_HEADER_89A) || source.rangeEquals(0L, DecodeUtilsKt.GIF_HEADER_87A)) ? RegexKt.ImageSource$default(new RealBufferedSource(new FrameDelayRewritingSource(imageSource.source())), imageSource.getFileSystem()) : imageSource;
    }

    /* JADX WARN: Code restructure failed: missing block: B:310:0x0639, code lost:
    
        if ((r4 != null ? r4.index : -1) > r11) goto L314;
     */
    /* JADX WARN: Code restructure failed: missing block: B:382:0x07b2, code lost:
    
        r3 = (androidx.compose.foundation.lazy.staggeredgrid.LazyStaggeredGridMeasuredItem) r9.get(r6);
     */
    /* JADX WARN: Code restructure failed: missing block: B:477:0x09e9, code lost:
    
        r11 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x0111, code lost:
    
        r0 = indexOfMaxValue(r10);
        r2 = r10[r0];
        r3 = r11.length;
        r6 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x0119, code lost:
    
        if (r6 >= r3) goto L558;
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x011b, code lost:
    
        r35 = r3;
        r37 = r6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x0123, code lost:
    
        if (r10[r6] == r10[r0]) goto L560;
     */
    /* JADX WARN: Code restructure failed: missing block: B:554:0x03ae, code lost:
    
        r0 = indexOfMinValue$default(r8);
        r1 = indexOfMaxValue(r43);
     */
    /* JADX WARN: Code restructure failed: missing block: B:555:0x03b8, code lost:
    
        if (r0 == r1) goto L201;
     */
    /* JADX WARN: Code restructure failed: missing block: B:557:0x03c0, code lost:
    
        if (r8[r0] != r8[r1]) goto L200;
     */
    /* JADX WARN: Code restructure failed: missing block: B:558:0x03c2, code lost:
    
        r0 = r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:559:0x03c5, code lost:
    
        r0 = r0;
        r35 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x0125, code lost:
    
        r3 = r11[r37];
        r6 = r11[r0];
     */
    /* JADX WARN: Code restructure failed: missing block: B:560:0x03c9, code lost:
    
        r1 = r43[r0];
        r40 = r14;
     */
    /* JADX WARN: Code restructure failed: missing block: B:561:0x03ce, code lost:
    
        if (r1 != (-1)) goto L204;
     */
    /* JADX WARN: Code restructure failed: missing block: B:562:0x03d0, code lost:
    
        r1 = r12;
     */
    /* JADX WARN: Code restructure failed: missing block: B:563:0x03d1, code lost:
    
        r1 = r7.findPreviousItemIndex(r1, r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:564:0x03d5, code lost:
    
        if (r1 >= 0) goto L222;
     */
    /* JADX WARN: Code restructure failed: missing block: B:565:0x041f, code lost:
    
        r42 = r3;
        r45 = r12;
        r44 = r13;
        r3 = r43;
        r43 = r15;
        r15 = r67;
        r12 = r66.m169getSpanRangelOCCd4c(r10, r1, r0);
        r46 = r9;
        r67 = r10;
        r0 = (int) (r12 & 4294967295L);
        r9 = (int) (r12 >> 32);
        r10 = r0 - r9;
     */
    /* JADX WARN: Code restructure failed: missing block: B:566:0x0440, code lost:
    
        if (r10 == 1) goto L225;
     */
    /* JADX WARN: Code restructure failed: missing block: B:567:0x0442, code lost:
    
        r9 = -2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:568:0x0446, code lost:
    
        r7.setLane(r1, r9);
        r9 = r5.m170getAndMeasurejy6DScQ(r12, r1);
        r12 = m760maxInRangejy6DScQ(r12, r8);
     */
    /* JADX WARN: Code restructure failed: missing block: B:569:0x0452, code lost:
    
        if (r10 == 1) goto L229;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x0129, code lost:
    
        if (r3 >= r6) goto L561;
     */
    /* JADX WARN: Code restructure failed: missing block: B:570:0x0454, code lost:
    
        r10 = r7.getGaps(r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:571:0x045b, code lost:
    
        r13 = r9;
     */
    /* JADX WARN: Code restructure failed: missing block: B:572:0x045d, code lost:
    
        if (r13 >= r0) goto L651;
     */
    /* JADX WARN: Code restructure failed: missing block: B:573:0x045f, code lost:
    
        r39 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:574:0x0463, code lost:
    
        if (r8[r13] == r12) goto L235;
     */
    /* JADX WARN: Code restructure failed: missing block: B:575:0x0465, code lost:
    
        r35 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:576:0x0467, code lost:
    
        r38[r13].addFirst(r9);
        r3[r13] = r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:577:0x046e, code lost:
    
        if (r10 != null) goto L238;
     */
    /* JADX WARN: Code restructure failed: missing block: B:578:0x0470, code lost:
    
        r47 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x012b, code lost:
    
        r11[r37] = r6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:580:0x0477, code lost:
    
        r8[r13] = (r9.mainAxisSizeWithSpacings + r12) + r47;
        r13 = r13 + 1;
        r0 = r39;
     */
    /* JADX WARN: Code restructure failed: missing block: B:581:0x0473, code lost:
    
        r47 = r10[r13];
     */
    /* JADX WARN: Code restructure failed: missing block: B:585:0x0459, code lost:
    
        r10 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:586:0x0444, code lost:
    
        r9 = r9;
     */
    /* JADX WARN: Code restructure failed: missing block: B:588:0x03d7, code lost:
    
        r14 = r66;
        r1 = r43;
     */
    /* JADX WARN: Code restructure failed: missing block: B:589:0x03db, code lost:
    
        if (r35 != false) goto L212;
     */
    /* JADX WARN: Code restructure failed: missing block: B:591:0x03e1, code lost:
    
        if (measure$lambda$0$misalignedStart(r1, r14, r8, r0) == false) goto L211;
     */
    /* JADX WARN: Code restructure failed: missing block: B:593:0x040d, code lost:
    
        r42 = r3;
        r43 = r15;
        r15 = r67;
        r3 = r1;
        r46 = r9;
        r67 = r10;
        r45 = r12;
        r44 = r13;
        r0 = r35;
     */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x012d, code lost:
    
        r6 = r37 + 1;
        r3 = r35;
     */
    /* JADX WARN: Code restructure failed: missing block: B:601:0x03e7, code lost:
    
        if (r70 == false) goto L211;
     */
    /* JADX WARN: Code restructure failed: missing block: B:602:0x03e9, code lost:
    
        r7.reset();
        r1 = r1.length;
        r2 = new int[r1];
        r3 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:603:0x03f0, code lost:
    
        if (r3 >= r1) goto L654;
     */
    /* JADX WARN: Code restructure failed: missing block: B:604:0x03f2, code lost:
    
        r2[r3] = -1;
        r3 = r3 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:606:0x03f8, code lost:
    
        r1 = r8.length;
        r3 = new int[r1];
        r4 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:607:0x03fc, code lost:
    
        if (r4 >= r1) goto L655;
     */
    /* JADX WARN: Code restructure failed: missing block: B:608:0x03fe, code lost:
    
        r3[r4] = r8[r0];
        r4 = r4 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:611:0x040c, code lost:
    
        return measure(r14, r67, r2, r3, false);
     */
    /* JADX WARN: Code restructure failed: missing block: B:63:0x0132, code lost:
    
        r2 = r7.findPreviousItemIndex(r2, r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x0136, code lost:
    
        if (r2 >= 0) goto L63;
     */
    /* JADX WARN: Code restructure failed: missing block: B:65:0x0141, code lost:
    
        r35 = r4;
        r3 = r1.m169getSpanRangelOCCd4c(r9, r2, r0);
        r0 = r8;
        r39 = r9;
        r6 = (int) (r3 & 4294967295L);
        r8 = (int) (r3 >> 32);
        r9 = r6 - r8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:66:0x0155, code lost:
    
        if (r9 == 1) goto L66;
     */
    /* JADX WARN: Code restructure failed: missing block: B:67:0x0157, code lost:
    
        r0 = -2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x015a, code lost:
    
        r7.setLane(r2, r0);
        r0 = r5.m170getAndMeasurejy6DScQ(r3, r2);
        r3 = m760maxInRangejy6DScQ(r3, r11);
     */
    /* JADX WARN: Code restructure failed: missing block: B:69:0x0166, code lost:
    
        if (r9 == 1) goto L70;
     */
    /* JADX WARN: Code restructure failed: missing block: B:70:0x0168, code lost:
    
        r31 = r7.getGaps(r2);
     */
    /* JADX WARN: Code restructure failed: missing block: B:71:0x016c, code lost:
    
        r4 = r69;
     */
    /* JADX WARN: Code restructure failed: missing block: B:72:0x016e, code lost:
    
        if (r8 >= r6) goto L562;
     */
    /* JADX WARN: Code restructure failed: missing block: B:73:0x0170, code lost:
    
        r10[r8] = r2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:74:0x0172, code lost:
    
        if (r31 != null) goto L76;
     */
    /* JADX WARN: Code restructure failed: missing block: B:75:0x0174, code lost:
    
        r9 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:76:0x0175, code lost:
    
        r37 = r2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:77:0x017b, code lost:
    
        r2 = (r0.mainAxisSizeWithSpacings + r3) + r9;
        r11[r8] = r2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:78:0x0182, code lost:
    
        if ((r2 + r14) > 0) goto L564;
     */
    /* JADX WARN: Code restructure failed: missing block: B:79:0x0184, code lost:
    
        r4 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:81:0x0185, code lost:
    
        r8 = r8 + 1;
        r2 = r37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:83:0x0178, code lost:
    
        r9 = r31[r8];
     */
    /* JADX WARN: Code restructure failed: missing block: B:86:0x0159, code lost:
    
        r0 = r8;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:401:0x0876  */
    /* JADX WARN: Removed duplicated region for block: B:440:0x08ff  */
    /* JADX WARN: Removed duplicated region for block: B:443:0x090e  */
    /* JADX WARN: Removed duplicated region for block: B:446:0x0930  */
    /* JADX WARN: Removed duplicated region for block: B:473:0x09ce  */
    /* JADX WARN: Removed duplicated region for block: B:480:0x09da A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:493:0x0a3d  */
    /* JADX WARN: Type inference failed for: r24v16, types: [java.util.ArrayList] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final androidx.compose.foundation.lazy.staggeredgrid.LazyStaggeredGridMeasureResult measure(androidx.compose.foundation.lazy.staggeredgrid.LazyStaggeredGridMeasureContext r66, int r67, int[] r68, int[] r69, boolean r70) {
        /*
            Method dump skipped, instructions count: 3018
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.room.Room.measure(androidx.compose.foundation.lazy.staggeredgrid.LazyStaggeredGridMeasureContext, int, int[], int[], boolean):androidx.compose.foundation.lazy.staggeredgrid.LazyStaggeredGridMeasureResult");
    }

    public static final boolean measure$lambda$0$misalignedStart(int[] iArr, LazyStaggeredGridMeasureContext lazyStaggeredGridMeasureContext, int[] iArr2, int i) {
        StatusLine statusLine = lazyStaggeredGridMeasureContext.laneInfo;
        int length = iArr.length;
        for (int i2 = 0; i2 < length; i2++) {
            if (statusLine.findPreviousItemIndex(iArr[i2], i2) == -1 && iArr2[i2] != iArr2[i]) {
                return true;
            }
        }
        int length2 = iArr.length;
        for (int i3 = 0; i3 < length2; i3++) {
            if (statusLine.findPreviousItemIndex(iArr[i3], i3) != -1 && iArr2[i3] >= iArr2[i]) {
                return true;
            }
        }
        int lane = statusLine.getLane(0);
        return (lane == 0 || lane == -1 || lane == -2) ? false : true;
    }

    public static ArrayList mutableListOf(Object... objArr) {
        return objArr.length == 0 ? new ArrayList() : new ArrayList(new ArrayAsCollection(objArr, true));
    }

    public static void notEmpty(String str) {
        if (str == null || str.length() == 0) {
            throw new ValidationException("String must not be empty");
        }
    }

    public static void notNull(Object obj) {
        if (obj == null) {
            throw new ValidationException("Object must not be null");
        }
    }

    public static final void offsetBy(int[] iArr, int i) {
        int length = iArr.length;
        for (int i2 = 0; i2 < length; i2++) {
            iArr[i2] = iArr[i2] + i;
        }
    }

    public static final List optimizeReadOnlyList(List list) {
        int size = list.size();
        return size != 0 ? size != 1 ? list : listOf(list.get(0)) : EmptyList.INSTANCE;
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x002e  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0022  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final kotlin.coroutines.intrinsics.CoroutineSingletons provideContent(androidx.compose.runtime.internal.ComposableLambdaImpl r5, kotlin.coroutines.jvm.internal.ContinuationImpl r6) {
        /*
            boolean r0 = r6 instanceof androidx.glance.appwidget.GlanceAppWidgetKt$provideContent$1
            if (r0 == 0) goto L13
            r0 = r6
            androidx.glance.appwidget.GlanceAppWidgetKt$provideContent$1 r0 = (androidx.glance.appwidget.GlanceAppWidgetKt$provideContent$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            androidx.glance.appwidget.GlanceAppWidgetKt$provideContent$1 r0 = new androidx.glance.appwidget.GlanceAppWidgetKt$provideContent$1
            r0.<init>(r6)
        L18:
            java.lang.Object r6 = r0.result
            kotlin.coroutines.intrinsics.CoroutineSingletons r1 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r2 = r0.label
            r3 = 0
            r4 = 1
            if (r2 == 0) goto L2e
            if (r2 == r4) goto L2a
            java.lang.String r5 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$1(r5)
            return r3
        L2a:
            kotlin.ResultKt.throwOnFailure(r6)
            goto L49
        L2e:
            kotlin.ResultKt.throwOnFailure(r6)
            kotlin.coroutines.CoroutineContext r6 = r0._context
            r6.getClass()
            androidx.glance.appwidget.ContentReceiver$Key r2 = androidx.glance.appwidget.ContentReceiver$Key.$$INSTANCE
            kotlin.coroutines.CoroutineContext$Element r6 = r6.get(r2)
            androidx.glance.appwidget.AppWidgetUtilsKt$runGlance$1$receiver$1 r6 = (androidx.glance.appwidget.AppWidgetUtilsKt$runGlance$1$receiver$1) r6
            if (r6 == 0) goto L4d
            r0.label = r4
            kotlin.coroutines.intrinsics.CoroutineSingletons r5 = r6.provideContent(r5, r0)
            if (r5 != r1) goto L49
            return r1
        L49:
            com.google.gson.Gson$$ExternalSyntheticBUOutline0.m$1()
            return r3
        L4d:
            java.lang.String r5 = "provideContent requires a ContentReceiver and should only be called from GlanceAppWidget.provideGlance"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$1(r5)
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.room.Room.provideContent(androidx.compose.runtime.internal.ComposableLambdaImpl, kotlin.coroutines.jvm.internal.ContinuationImpl):kotlin.coroutines.intrinsics.CoroutineSingletons");
    }

    public static final void rangeCheck$CollectionsKt__CollectionsKt(int i, int i2) {
        if (i2 < 0) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m(Animation.CC.m(i2, "fromIndex (0) is greater than toIndex (", ")."));
        } else {
            if (i2 <= i) {
                return;
            }
            Gson$$ExternalSyntheticBUOutline0.m(i2, i, ") is greater than size (", "toIndex (");
        }
    }

    public static MetadataList read(MappedByteBuffer mappedByteBuffer) {
        long j;
        ByteBuffer duplicate = mappedByteBuffer.duplicate();
        duplicate.order(ByteOrder.BIG_ENDIAN);
        duplicate.position(duplicate.position() + 4);
        int i = duplicate.getShort() & 65535;
        if (i > 100) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$2("Cannot read metadata.");
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
        _UtilJvmKt$$ExternalSyntheticLambda0.m$2("Cannot read metadata.");
        return null;
    }

    public static final Object[] removeEntryAtIndex(int i, Object[] objArr) {
        Object[] objArr2 = new Object[objArr.length - 2];
        ArraysKt___ArraysKt.copyInto$default(objArr, objArr2, 0, i, 6);
        ArraysKt___ArraysKt.copyInto(objArr, objArr2, i, i + 2, objArr.length);
        return objArr2;
    }

    public static final Object[] removeNodeAtIndex(int i, Object[] objArr) {
        Object[] objArr2 = new Object[objArr.length - 1];
        ArraysKt___ArraysKt.copyInto$default(objArr, objArr2, 0, i, 6);
        ArraysKt___ArraysKt.copyInto(objArr, objArr2, i, i + 1, objArr.length);
        return objArr2;
    }

    public static final /* synthetic */ Drawable resize(Drawable drawable, Context context, Integer num, Integer num2) {
        if (num == null || num2 == null) {
            return drawable;
        }
        Bitmap createBitmap = Bitmap.createBitmap(num.intValue(), num2.intValue(), Bitmap.Config.ARGB_8888);
        createBitmap.getClass();
        Canvas canvas = new Canvas(createBitmap);
        drawable.setBounds(0, 0, num.intValue(), num2.intValue());
        drawable.draw(canvas);
        return new BitmapDrawable(context.getResources(), createBitmap);
    }

    public static void throwCountOverflow() {
        throw new ArithmeticException("Count overflow has happened.");
    }

    public static void throwIndexOverflow() {
        throw new ArithmeticException("Index overflow has happened.");
    }

    public static final void tint(Drawable drawable, Integer num) {
        if (num != null) {
            drawable.setTintList(ColorStateList.valueOf(num.intValue()));
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:41:0x0055, code lost:
    
        if (r10 == r2) goto L32;
     */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0068  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0094 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:40:0x003f  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0023  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object updateAll(org.wikipedia.widgets.readingchallenge.ReadingChallengeWidget r8, android.content.Context r9, kotlin.coroutines.jvm.internal.ContinuationImpl r10) {
        /*
            boolean r0 = r10 instanceof androidx.glance.appwidget.GlanceAppWidgetKt$updateAll$1
            r1 = -2147483648(0xffffffff80000000, float:-0.0)
            if (r0 == 0) goto L13
            r0 = r10
            androidx.glance.appwidget.GlanceAppWidgetKt$updateAll$1 r0 = (androidx.glance.appwidget.GlanceAppWidgetKt$updateAll$1) r0
            int r2 = r0.label
            r3 = r2 & r1
            if (r3 == 0) goto L13
            int r2 = r2 - r1
            r0.label = r2
            goto L18
        L13:
            androidx.glance.appwidget.GlanceAppWidgetKt$updateAll$1 r0 = new androidx.glance.appwidget.GlanceAppWidgetKt$updateAll$1
            r0.<init>(r10)
        L18:
            java.lang.Object r10 = r0.result
            kotlin.coroutines.intrinsics.CoroutineSingletons r2 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r3 = r0.label
            r4 = 0
            r5 = 2
            r6 = 1
            if (r3 == 0) goto L3f
            if (r3 == r6) goto L37
            if (r3 != r5) goto L31
            java.util.Iterator r8 = r0.L$2
            android.content.Context r9 = r0.L$1
            org.wikipedia.widgets.readingchallenge.ReadingChallengeWidget r3 = r0.L$0
            kotlin.ResultKt.throwOnFailure(r10)
            goto L60
        L31:
            java.lang.String r8 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$1(r8)
            return r4
        L37:
            android.content.Context r9 = r0.L$1
            org.wikipedia.widgets.readingchallenge.ReadingChallengeWidget r8 = r0.L$0
            kotlin.ResultKt.throwOnFailure(r10)
            goto L58
        L3f:
            kotlin.ResultKt.throwOnFailure(r10)
            androidx.glance.appwidget.GlanceAppWidgetManager r10 = new androidx.glance.appwidget.GlanceAppWidgetManager
            r10.<init>(r9)
            java.lang.Class r3 = r8.getClass()
            r0.L$0 = r8
            r0.L$1 = r9
            r0.label = r6
            java.io.Serializable r10 = r10.getGlanceIds(r3, r0)
            if (r10 != r2) goto L58
            goto L8d
        L58:
            java.lang.Iterable r10 = (java.lang.Iterable) r10
            java.util.Iterator r10 = r10.iterator()
            r3 = r8
            r8 = r10
        L60:
            boolean r10 = r8.hasNext()
            kotlin.Unit r6 = kotlin.Unit.INSTANCE
            if (r10 == 0) goto L94
            java.lang.Object r10 = r8.next()
            androidx.glance.appwidget.AppWidgetId r10 = (androidx.glance.appwidget.AppWidgetId) r10
            r0.L$0 = r3
            r0.L$1 = r9
            r0.L$2 = r8
            r0.label = r5
            r3.getClass()
            if (r10 == 0) goto L8e
            int r10 = r10.appWidgetId
            if (r1 > r10) goto L82
            r7 = -1
            if (r10 < r7) goto L8e
        L82:
            java.lang.Object r10 = org.wikipedia.widgets.readingchallenge.ReadingChallengeWidget.update$glance_appwidget_release$default(r3, r9, r10, r0)
            kotlin.coroutines.intrinsics.CoroutineSingletons r7 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            if (r10 != r7) goto L8b
            r6 = r10
        L8b:
            if (r6 != r2) goto L60
        L8d:
            return r2
        L8e:
            java.lang.String r8 = "Invalid Glance ID"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m(r8)
            return r4
        L94:
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.room.Room.updateAll(org.wikipedia.widgets.readingchallenge.ReadingChallengeWidget, android.content.Context, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    public abstract int getSize(View view, ViewGroup.MarginLayoutParams marginLayoutParams);

    public abstract int getViewEdge();

    public abstract ViewPropertyAnimator getViewTranslationAnimator(View view, int i);

    public int hashCode() {
        switch (this.$r8$classId) {
            case 29:
                return toString().hashCode();
            default:
                return super.hashCode();
        }
    }

    public abstract int next(int i);

    @Override // androidx.compose.ui.text.android.selection.SegmentFinder
    public int nextEndBoundary(int i) {
        return next(i);
    }

    @Override // androidx.compose.ui.text.android.selection.SegmentFinder
    public int nextStartBoundary(int i) {
        int next = next(i);
        if (next == -1 || next(next) == -1) {
            return -1;
        }
        return next;
    }

    public abstract int previous(int i);

    @Override // androidx.compose.ui.text.android.selection.SegmentFinder
    public int previousEndBoundary(int i) {
        int previous = previous(i);
        if (previous == -1 || previous(previous) == -1) {
            return -1;
        }
        return previous;
    }

    @Override // androidx.compose.ui.text.android.selection.SegmentFinder
    public int previousStartBoundary(int i) {
        return previous(i);
    }

    public String toString() {
        switch (this.$r8$classId) {
            case 29:
                String simpleName = Reflection.factory.getOrCreateKotlinClass(getClass()).getSimpleName();
                simpleName.getClass();
                return simpleName;
            default:
                return super.toString();
        }
    }

    public static void isTrue(String str, boolean z) {
        if (!z) {
            throw new ValidationException(str);
        }
    }

    public static List listOf(Object obj) {
        List singletonList = Collections.singletonList(obj);
        singletonList.getClass();
        return singletonList;
    }

    public static void notEmpty(String str, String str2) {
        if (str.length() == 0) {
            throw new ValidationException(str2);
        }
    }
}
