package coil3.util;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.PorterDuff;
import android.graphics.drawable.Icon;
import android.net.Uri;
import android.os.Build;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.widget.RemoteViews;
import android.widget.TextView;
import androidx.compose.animation.core.Animation;
import androidx.compose.runtime.Composer$Companion;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.PersistentCompositionLocalHashMap;
import androidx.compose.ui.AbsoluteAlignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.ColorKt;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.node.LayoutNode$Companion$Constructor$1;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.AnnotatedStringKt;
import androidx.compose.ui.text.LinkAnnotation;
import androidx.compose.ui.window.AndroidPopup_androidKt$SimpleStack$1$1;
import androidx.core.graphics.drawable.IconCompat;
import androidx.core.os.HandlerCompat$Api28Impl;
import androidx.glance.GlanceThemeKt$GlanceTheme$1;
import androidx.glance.appwidget.ApplyModifiersApi31Impl;
import androidx.glance.appwidget.LayoutSelectionKt;
import androidx.glance.layout.HeightModifier;
import androidx.glance.layout.WidthModifier;
import androidx.glance.session.TimeSource$Companion$$ExternalSyntheticLambda0;
import androidx.glance.unit.Dimension;
import androidx.lifecycle.ViewModel;
import androidx.room.Room;
import androidx.sqlite.SQLiteConnection;
import androidx.sqlite.SQLiteStatement;
import coil3.Image;
import coil3.ImageLoader$Builder;
import coil3.request.ErrorResult;
import coil3.request.ImageRequest;
import coil3.request.NullRequestDataException;
import coil3.svg.internal.AndroidSvg;
import com.fasterxml.jackson.databind.BeanProperty;
import com.fasterxml.jackson.databind.JsonSerializer;
import com.fasterxml.jackson.databind.SerializerProvider;
import com.fasterxml.jackson.databind.type.TypeBase;
import com.google.gson.Gson$$ExternalSyntheticBUOutline0;
import java.lang.annotation.Annotation;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Type;
import java.util.AbstractCollection;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import kotlin.ResultKt;
import kotlin.TuplesKt;
import kotlin.UnsignedKt;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.CollectionsKt__IteratorsJVMKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.random.AbstractPlatformRandom;
import kotlin.random.Random;
import kotlin.ranges.IntRange;
import kotlin.reflect.GenericArrayTypeImpl;
import kotlin.reflect.KClass;
import kotlin.reflect.KClassifier;
import kotlin.reflect.KType;
import kotlin.reflect.KTypeProjection;
import kotlin.reflect.KVariance;
import kotlin.reflect.ObsoleteFallbackTypeVariableImpl;
import kotlin.reflect.ParameterizedTypeImpl;
import kotlin.reflect.TypesJVMKt$WhenMappings;
import kotlin.reflect.TypesJVMKt$typeToString$unwrap$1;
import kotlin.reflect.WildcardTypeImpl;
import kotlin.reflect.jvm.internal.KTypeParameterImpl;
import kotlin.reflect.jvm.internal.impl.builtins.PrimitiveType;
import kotlin.reflect.jvm.internal.impl.builtins.StandardNames;
import kotlin.reflect.jvm.internal.impl.builtins.jvm.JavaToKotlinClassMap;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.ClassConstructorDescriptorImpl;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.ModuleAwareClassDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.ValueParameterDescriptorImpl;
import kotlin.reflect.jvm.internal.impl.descriptors.runtime.components.ReflectAnnotationSource;
import kotlin.reflect.jvm.internal.impl.descriptors.runtime.components.ReflectKotlinClassKt;
import kotlin.reflect.jvm.internal.impl.descriptors.runtime.components.RuntimeErrorReporter;
import kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure.ReflectClassUtilKt;
import kotlin.reflect.jvm.internal.impl.load.java.components.DescriptorResolverUtils$1;
import kotlin.reflect.jvm.internal.impl.load.kotlin.JvmTypeFactoryImpl;
import kotlin.reflect.jvm.internal.impl.load.kotlin.KotlinJvmBinaryClass$AnnotationArgumentVisitor;
import kotlin.reflect.jvm.internal.impl.load.kotlin.KotlinJvmBinaryClass$AnnotationArrayArgumentVisitor;
import kotlin.reflect.jvm.internal.impl.load.kotlin.KotlinJvmBinaryClass$AnnotationVisitor;
import kotlin.reflect.jvm.internal.impl.name.ClassId;
import kotlin.reflect.jvm.internal.impl.name.FqNameUnsafe;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.resolve.OverridingUtil;
import kotlin.reflect.jvm.internal.impl.resolve.constants.ClassLiteralValue;
import kotlin.reflect.jvm.internal.impl.resolve.descriptorUtil.DescriptorUtilsKt;
import kotlin.reflect.jvm.internal.impl.resolve.jvm.JvmClassName;
import kotlin.reflect.jvm.internal.impl.resolve.jvm.JvmPrimitiveType;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.DescriptorKindFilter;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope$Companion$ALL_NAME_FILTER$1;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.ErrorReporter;
import kotlin.sequences.Sequence;
import kotlin.sequences.SequencesKt;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlinx.serialization.descriptors.ContextDescriptor;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.internal.SerialDescriptorForNullable;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.wikipedia.util.FileUtil;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class UtilsKt {
    public static boolean sTryHiddenSuppressLayout = true;

    public static /* synthetic */ void $$$reportNull$$$0(int i) {
        String str = i != 18 ? "Argument for @NotNull parameter '%s' of %s.%s must not be null" : "@NotNull method %s.%s must not return null";
        Object[] objArr = new Object[i != 18 ? 3 : 2];
        switch (i) {
            case 1:
            case 7:
            case IMAGE_VALUE:
                objArr[0] = "membersFromSupertypes";
                break;
            case 2:
            case 8:
            case LINEAR_PROGRESS_INDICATOR_VALUE:
                objArr[0] = "membersFromCurrent";
                break;
            case 3:
            case 9:
            case 15:
                objArr[0] = "classDescriptor";
                break;
            case 4:
            case 10:
            case LAZY_VERTICAL_GRID_VALUE:
                objArr[0] = "errorReporter";
                break;
            case 5:
            case 11:
            case VERTICAL_GRID_ITEM_VALUE:
                objArr[0] = "overridingUtil";
                break;
            case 6:
            case 12:
            case RADIO_BUTTON_VALUE:
            default:
                objArr[0] = "name";
                break;
            case RADIO_GROUP_VALUE:
                objArr[0] = "kotlin/reflect/jvm/internal/impl/load/java/components/DescriptorResolverUtils";
                break;
            case RADIO_ROW_VALUE:
                objArr[0] = "annotationClass";
                break;
        }
        if (i != 18) {
            objArr[1] = "kotlin/reflect/jvm/internal/impl/load/java/components/DescriptorResolverUtils";
        } else {
            objArr[1] = "resolveOverrides";
        }
        switch (i) {
            case 6:
            case 7:
            case 8:
            case 9:
            case 10:
            case 11:
                objArr[2] = "resolveOverridesForStaticMembers";
                break;
            case 12:
            case IMAGE_VALUE:
            case LINEAR_PROGRESS_INDICATOR_VALUE:
            case 15:
            case LAZY_VERTICAL_GRID_VALUE:
            case VERTICAL_GRID_ITEM_VALUE:
                objArr[2] = "resolveOverrides";
                break;
            case RADIO_GROUP_VALUE:
                break;
            case RADIO_BUTTON_VALUE:
            case RADIO_ROW_VALUE:
                objArr[2] = "getAnnotationParameterByName";
                break;
            default:
                objArr[2] = "resolveOverridesForNonStaticMembers";
                break;
        }
        String format = String.format(str, objArr);
        if (i == 18) {
            throw new IllegalStateException(format);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0040  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0055  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0060  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x015a  */
    /* JADX WARN: Removed duplicated region for block: B:51:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:57:0x0150  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x0057  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void Dialog(kotlin.jvm.functions.Function0 r18, androidx.compose.ui.window.DialogProperties r19, androidx.compose.runtime.internal.ComposableLambdaImpl r20, androidx.compose.runtime.GapComposer r21, int r22, int r23) {
        /*
            Method dump skipped, instructions count: 360
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: coil3.util.UtilsKt.Dialog(kotlin.jvm.functions.Function0, androidx.compose.ui.window.DialogProperties, androidx.compose.runtime.internal.ComposableLambdaImpl, androidx.compose.runtime.GapComposer, int, int):void");
    }

    public static final void DialogLayout(int i, GapComposer gapComposer, Modifier modifier, Function2 function2) {
        gapComposer.startRestartGroup(1090521195);
        int i2 = 4;
        int i3 = (gapComposer.changed(modifier) ? 4 : 2) | i | (gapComposer.changedInstance(function2) ? 32 : 16);
        if (gapComposer.shouldExecute(i3 & 1, (i3 & 19) != 18)) {
            Object rememberedValue = gapComposer.rememberedValue();
            if (rememberedValue == Composer$Companion.Empty) {
                rememberedValue = AndroidPopup_androidKt$SimpleStack$1$1.INSTANCE$1;
                gapComposer.updateRememberedValue(rememberedValue);
            }
            MeasurePolicy measurePolicy = (MeasurePolicy) rememberedValue;
            long j = gapComposer.compositeKeyHashCode;
            int i4 = (int) ((j >>> 32) ^ j);
            PersistentCompositionLocalHashMap currentCompositionLocalScope = gapComposer.currentCompositionLocalScope();
            Modifier materializeModifier = AbsoluteAlignment.materializeModifier(gapComposer, modifier);
            ComposeUiNode.Companion.getClass();
            LayoutNode$Companion$Constructor$1 layoutNode$Companion$Constructor$1 = ComposeUiNode.Companion.Constructor;
            int i5 = (((((i3 << 3) & 112) | (((i3 >> 3) & 14) | 384)) << 6) & 896) | 6;
            gapComposer.startReusableNode();
            if (gapComposer.inserting) {
                gapComposer.createNode(layoutNode$Companion$Constructor$1);
            } else {
                gapComposer.useNode();
            }
            Updater.m327setimpl(gapComposer, measurePolicy, ComposeUiNode.Companion.SetMeasurePolicy);
            Updater.m327setimpl(gapComposer, currentCompositionLocalScope, ComposeUiNode.Companion.SetResolvedCompositionLocals);
            Updater.m327setimpl(gapComposer, Integer.valueOf(i4), ComposeUiNode.Companion.SetCompositeKeyHash);
            Updater.m326reconcileimpl(gapComposer, ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion);
            Updater.m327setimpl(gapComposer, materializeModifier, ComposeUiNode.Companion.SetModifier);
            function2.invoke(gapComposer, Integer.valueOf((i5 >> 6) & 14));
            gapComposer.end(true);
        } else {
            gapComposer.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new GlanceThemeKt$GlanceTheme$1(i, i2, modifier, function2);
        }
    }

    public static final ErrorResult ErrorResult(ImageRequest imageRequest, Throwable th) {
        Image image;
        if (th instanceof NullRequestDataException) {
            Function1 function1 = imageRequest.fallbackFactory;
            ImageRequest.Defaults defaults = imageRequest.defaults;
            image = (Image) function1.invoke(imageRequest);
            if (image == null) {
                image = (Image) defaults.fallbackFactory.invoke(imageRequest);
            }
            if (image == null && (image = (Image) imageRequest.errorFactory.invoke(imageRequest)) == null) {
                image = (Image) defaults.errorFactory.invoke(imageRequest);
            }
        } else {
            image = (Image) imageRequest.errorFactory.invoke(imageRequest);
            if (image == null) {
                image = (Image) imageRequest.defaults.errorFactory.invoke(imageRequest);
            }
        }
        return new ErrorResult(image, imageRequest, th);
    }

    /* JADX WARN: Removed duplicated region for block: B:101:0x01cc  */
    /* JADX WARN: Removed duplicated region for block: B:103:0x00a4  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x006a  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x007b  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x008c  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x0097  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x00a2  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x00c5  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x01dc  */
    /* JADX WARN: Removed duplicated region for block: B:82:? A[RETURN, SYNTHETIC] */
    /* renamed from: LazyVerticalStaggeredGrid-6qCrX9Q, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void m792LazyVerticalStaggeredGrid6qCrX9Q(final androidx.compose.foundation.lazy.staggeredgrid.StaggeredGridCells$Adaptive r24, final androidx.compose.ui.Modifier r25, final androidx.compose.foundation.lazy.staggeredgrid.LazyStaggeredGridState r26, androidx.compose.foundation.layout.PaddingValues r27, final float r28, final androidx.compose.foundation.layout.Arrangement$Horizontal r29, androidx.compose.foundation.gestures.FlingBehavior r30, boolean r31, androidx.compose.foundation.AndroidEdgeEffectOverscrollEffect r32, final kotlin.jvm.functions.Function1 r33, androidx.compose.runtime.GapComposer r34, final int r35, final int r36) {
        /*
            Method dump skipped, instructions count: 496
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: coil3.util.UtilsKt.m792LazyVerticalStaggeredGrid6qCrX9Q(androidx.compose.foundation.lazy.staggeredgrid.StaggeredGridCells$Adaptive, androidx.compose.ui.Modifier, androidx.compose.foundation.lazy.staggeredgrid.LazyStaggeredGridState, androidx.compose.foundation.layout.PaddingValues, float, androidx.compose.foundation.layout.Arrangement$Horizontal, androidx.compose.foundation.gestures.FlingBehavior, boolean, androidx.compose.foundation.AndroidEdgeEffectOverscrollEffect, kotlin.jvm.functions.Function1, androidx.compose.runtime.GapComposer, int, int):void");
    }

    /* renamed from: Rect-tz77jQw, reason: not valid java name */
    public static final Rect m793Recttz77jQw(long j, long j2) {
        int i = (int) (j >> 32);
        int i2 = (int) (j & 4294967295L);
        return new Rect(Float.intBitsToFloat(i), Float.intBitsToFloat(i2), Float.intBitsToFloat((int) (j2 >> 32)) + Float.intBitsToFloat(i), Float.intBitsToFloat((int) (j2 & 4294967295L)) + Float.intBitsToFloat(i2));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:10:0x017a  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x01b7  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x01ce  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x024d  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x0289  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:22:0x01a0 -> B:17:0x01b1). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void applyModifiers(final androidx.glance.appwidget.TranslationContext r23, final android.widget.RemoteViews r24, androidx.glance.GlanceModifier r25, final androidx.glance.appwidget.InsertedViewInfo r26) {
        /*
            Method dump skipped, instructions count: 667
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: coil3.util.UtilsKt.applyModifiers(androidx.glance.appwidget.TranslationContext, android.widget.RemoteViews, androidx.glance.GlanceModifier, androidx.glance.appwidget.InsertedViewInfo):void");
    }

    public static final void applySimpleHeightModifier(Context context, RemoteViews remoteViews, HeightModifier heightModifier, int i) {
        Dimension dimension = heightModifier.height;
        int i2 = Build.VERSION.SDK_INT;
        Dimension.Expand expand = Dimension.Expand.INSTANCE;
        Dimension.Wrap wrap = Dimension.Wrap.INSTANCE;
        if (i2 < 31) {
            if (Room.listOf((Object[]) new Dimension[]{wrap, Dimension.Fill.INSTANCE, expand}).contains(LayoutSelectionKt.resolveDimension(dimension, context))) {
                return;
            }
            ContextsKt$$ExternalSyntheticBUOutline0.m$1(dimension, " requires a complex layout before API 31", "Using a height of ");
        } else if (i2 >= 33 || !Room.listOf((Object[]) new Dimension[]{wrap, expand}).contains(dimension)) {
            ApplyModifiersApi31Impl.INSTANCE.setViewHeight(remoteViews, i, dimension);
        }
    }

    public static final void applySimpleWidthModifier(Context context, RemoteViews remoteViews, WidthModifier widthModifier, int i) {
        Dimension dimension = widthModifier.width;
        int i2 = Build.VERSION.SDK_INT;
        Dimension.Expand expand = Dimension.Expand.INSTANCE;
        Dimension.Wrap wrap = Dimension.Wrap.INSTANCE;
        if (i2 < 31) {
            if (Room.listOf((Object[]) new Dimension[]{wrap, Dimension.Fill.INSTANCE, expand}).contains(LayoutSelectionKt.resolveDimension(dimension, context))) {
                return;
            }
            ContextsKt$$ExternalSyntheticBUOutline0.m$1(dimension, " requires a complex layout before API 31", "Using a width of ");
        } else if (i2 >= 33 || !Room.listOf((Object[]) new Dimension[]{wrap, expand}).contains(dimension)) {
            ApplyModifiersApi31Impl.INSTANCE.setViewWidth(remoteViews, i, dimension);
        }
    }

    public static void checkBoundsIndexes$kotlin_stdlib(int i, int i2, int i3) {
        if (i < 0 || i2 > i3) {
            TimeSource$Companion$$ExternalSyntheticLambda0.m(i3, Animation.CC.m(i, i2, "startIndex: ", ", endIndex: ", ", size: "));
        } else {
            if (i <= i2) {
                return;
            }
            _UtilJvmKt$$ExternalSyntheticLambda0.m(Modifier.CC.m(i, i2, "startIndex: ", " > endIndex: "));
        }
    }

    public static void checkRadix(int i) {
        if (2 > i || i >= 37) {
            Gson$$ExternalSyntheticBUOutline0.m$1(Animation.CC.m20m(i, "radix ", " was not in valid range "), new IntRange(2, 36, 1));
        }
    }

    public static void checkRangeIndexes$kotlin_stdlib(int i, int i2, int i3) {
        if (i < 0 || i2 > i3) {
            TimeSource$Companion$$ExternalSyntheticLambda0.m(i3, Animation.CC.m(i, i2, "fromIndex: ", ", toIndex: ", ", size: "));
        } else {
            if (i <= i2) {
                return;
            }
            _UtilJvmKt$$ExternalSyntheticLambda0.m(Modifier.CC.m(i, i2, "fromIndex: ", " > toIndex: "));
        }
    }

    public static ClassLiteralValue classLiteralValue(Class cls) {
        int i = 0;
        while (cls.isArray()) {
            i++;
            cls = cls.getComponentType();
            cls.getClass();
        }
        if (cls.isPrimitive()) {
            if (cls.equals(Void.TYPE)) {
                return new ClassLiteralValue(ClassId.topLevel(StandardNames.FqNames.unit.toSafe()), i);
            }
            PrimitiveType primitiveType = JvmPrimitiveType.get(cls.getName()).getPrimitiveType();
            primitiveType.getClass();
            return i > 0 ? new ClassLiteralValue(ClassId.topLevel(primitiveType.getArrayTypeFqName()), i - 1) : new ClassLiteralValue(ClassId.topLevel(primitiveType.getTypeFqName()), i);
        }
        ClassId classId = ReflectClassUtilKt.getClassId(cls);
        String str = JavaToKotlinClassMap.NUMBERED_FUNCTION_PREFIX;
        ClassId mapJavaToKotlin = JavaToKotlinClassMap.mapJavaToKotlin(classId.asSingleFqName());
        if (mapJavaToKotlin != null) {
            classId = mapJavaToKotlin;
        }
        return new ClassLiteralValue(classId, i);
    }

    public static final int columnIndexOf(SQLiteStatement sQLiteStatement, String str) {
        sQLiteStatement.getClass();
        int columnCount = sQLiteStatement.getColumnCount();
        int i = 0;
        while (true) {
            if (i >= columnCount) {
                i = -1;
                break;
            }
            if (str.equals(sQLiteStatement.getColumnName(i))) {
                break;
            }
            i++;
        }
        if (i >= 0) {
            return i;
        }
        String m = Animation.CC.m('`', "`", str);
        int columnCount2 = sQLiteStatement.getColumnCount();
        int i2 = 0;
        while (true) {
            if (i2 >= columnCount2) {
                i2 = -1;
                break;
            }
            if (m.equals(sQLiteStatement.getColumnName(i2))) {
                break;
            }
            i2++;
        }
        if (i2 >= 0) {
            return i2;
        }
        if (Build.VERSION.SDK_INT <= 25 && str.length() != 0) {
            int columnCount3 = sQLiteStatement.getColumnCount();
            String concat = ".".concat(str);
            String m2 = Animation.CC.m('`', ".", str);
            for (int i3 = 0; i3 < columnCount3; i3++) {
                String columnName = sQLiteStatement.getColumnName(i3);
                if (columnName.length() >= str.length() + 2 && (StringsKt__StringsJVMKt.endsWith(columnName, concat, false) || (columnName.charAt(0) == '`' && StringsKt__StringsJVMKt.endsWith(columnName, m2, false)))) {
                    return i3;
                }
            }
        }
        return -1;
    }

    public static final Type computeJavaType(KType kType, boolean z) {
        KClassifier classifier = kType.getClassifier();
        if (classifier instanceof KTypeParameterImpl) {
            return new ObsoleteFallbackTypeVariableImpl((KTypeParameterImpl) classifier);
        }
        if (!(classifier instanceof KClass)) {
            Gson$$ExternalSyntheticBUOutline0.m$5("Unsupported type classifier: ", kType);
            return null;
        }
        KClass kClass = (KClass) classifier;
        Class javaObjectType = z ? UnsignedKt.getJavaObjectType(kClass) : UnsignedKt.getJavaClass(kClass);
        List arguments = kType.getArguments();
        if (arguments.isEmpty()) {
            return javaObjectType;
        }
        if (!javaObjectType.isArray()) {
            return createPossiblyInnerType(javaObjectType, arguments);
        }
        if (javaObjectType.getComponentType().isPrimitive()) {
            return javaObjectType;
        }
        KTypeProjection kTypeProjection = (KTypeProjection) CollectionsKt.singleOrNull(arguments);
        if (kTypeProjection == null) {
            Gson$$ExternalSyntheticBUOutline0.m("kotlin.Array must have exactly one type argument: ", kType);
            return null;
        }
        KVariance kVariance = kTypeProjection.variance;
        KType kType2 = kTypeProjection.type;
        int i = kVariance == null ? -1 : TypesJVMKt$WhenMappings.$EnumSwitchMapping$0[kVariance.ordinal()];
        if (i == -1 || i == 1) {
            return javaObjectType;
        }
        if (i != 2 && i != 3) {
            ContextsKt$$ExternalSyntheticBUOutline0.m();
            return null;
        }
        kType2.getClass();
        Type computeJavaType = computeJavaType(kType2, false);
        return computeJavaType instanceof Class ? javaObjectType : new GenericArrayTypeImpl(computeJavaType);
    }

    public static IconCompat createFromIconInner(Icon icon) {
        icon.getClass();
        int type = getType(icon);
        if (type == 2) {
            return IconCompat.createWithResource(null, getResPackage(icon), getResId(icon));
        }
        if (type == 4) {
            Uri uri = getUri(icon);
            PorterDuff.Mode mode = IconCompat.DEFAULT_TINT_MODE;
            uri.getClass();
            String uri2 = uri.toString();
            uri2.getClass();
            IconCompat iconCompat = new IconCompat(4);
            iconCompat.mObj1 = uri2;
            return iconCompat;
        }
        if (type != 6) {
            IconCompat iconCompat2 = new IconCompat(-1);
            iconCompat2.mObj1 = icon;
            return iconCompat2;
        }
        Uri uri3 = getUri(icon);
        PorterDuff.Mode mode2 = IconCompat.DEFAULT_TINT_MODE;
        uri3.getClass();
        String uri4 = uri3.toString();
        uri4.getClass();
        IconCompat iconCompat3 = new IconCompat(6);
        iconCompat3.mObj1 = uri4;
        return iconCompat3;
    }

    public static final ParameterizedTypeImpl createPossiblyInnerType(Class cls, List list) {
        Class<?> declaringClass = cls.getDeclaringClass();
        if (declaringClass == null) {
            ArrayList arrayList = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(list, 10));
            Iterator it = list.iterator();
            while (it.hasNext()) {
                arrayList.add(getJavaType((KTypeProjection) it.next()));
            }
            return new ParameterizedTypeImpl(cls, null, arrayList);
        }
        if (java.lang.reflect.Modifier.isStatic(cls.getModifiers())) {
            ArrayList arrayList2 = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(list, 10));
            Iterator it2 = list.iterator();
            while (it2.hasNext()) {
                arrayList2.add(getJavaType((KTypeProjection) it2.next()));
            }
            return new ParameterizedTypeImpl(cls, declaringClass, arrayList2);
        }
        int length = cls.getTypeParameters().length;
        ParameterizedTypeImpl createPossiblyInnerType = createPossiblyInnerType(declaringClass, list.subList(length, list.size()));
        List subList = list.subList(0, length);
        ArrayList arrayList3 = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(subList, 10));
        Iterator it3 = subList.iterator();
        while (it3.hasNext()) {
            arrayList3.add(getJavaType((KTypeProjection) it3.next()));
        }
        return new ParameterizedTypeImpl(cls, createPossiblyInnerType, arrayList3);
    }

    public static ViewModel createViewModel(Class cls) {
        try {
            Constructor declaredConstructor = cls.getDeclaredConstructor(null);
            if (!java.lang.reflect.Modifier.isPublic(declaredConstructor.getModifiers())) {
                throw new RuntimeException("Cannot create an instance of " + cls);
            }
            try {
                Object newInstance = declaredConstructor.newInstance(null);
                newInstance.getClass();
                return (ViewModel) newInstance;
            } catch (IllegalAccessException e) {
                TimeSource$Companion$$ExternalSyntheticLambda0.m("Cannot create an instance of ", cls, e);
                return null;
            } catch (InstantiationException e2) {
                TimeSource$Companion$$ExternalSyntheticLambda0.m("Cannot create an instance of ", cls, e2);
                return null;
            }
        } catch (NoSuchMethodException e3) {
            TimeSource$Companion$$ExternalSyntheticLambda0.m("Cannot create an instance of ", cls, e3);
            return null;
        }
    }

    public static final boolean equals(char c, char c2, boolean z) {
        if (c == c2) {
            return true;
        }
        if (!z) {
            return false;
        }
        char upperCase = Character.toUpperCase(c);
        char upperCase2 = Character.toUpperCase(c2);
        return upperCase == upperCase2 || Character.toLowerCase(upperCase) == Character.toLowerCase(upperCase2);
    }

    public static ValueParameterDescriptorImpl getAnnotationParameterByName(Name name, ModuleAwareClassDescriptor moduleAwareClassDescriptor) {
        if (name == null) {
            $$$reportNull$$$0(19);
            throw null;
        }
        if (moduleAwareClassDescriptor == null) {
            $$$reportNull$$$0(20);
            throw null;
        }
        Collection constructors = moduleAwareClassDescriptor.getConstructors();
        if (constructors.size() != 1) {
            return null;
        }
        for (ValueParameterDescriptorImpl valueParameterDescriptorImpl : ((ClassConstructorDescriptorImpl) constructors.iterator().next()).getValueParameters()) {
            if (valueParameterDescriptorImpl.getName().equals(name)) {
                return valueParameterDescriptorImpl;
            }
        }
        return null;
    }

    public static final KClass getCapturedKClass(SerialDescriptor serialDescriptor) {
        serialDescriptor.getClass();
        if (serialDescriptor instanceof ContextDescriptor) {
            return ((ContextDescriptor) serialDescriptor).kClass;
        }
        if (serialDescriptor instanceof SerialDescriptorForNullable) {
            return getCapturedKClass(((SerialDescriptorForNullable) serialDescriptor).original);
        }
        return null;
    }

    public static Collection getContributedDescriptors$default(MemberScope memberScope, DescriptorKindFilter descriptorKindFilter, int i) {
        if ((i & 1) != 0) {
            descriptorKindFilter = DescriptorKindFilter.ALL;
        }
        MemberScope.Companion.getClass();
        return memberScope.getContributedDescriptors(descriptorKindFilter, MemberScope$Companion$ALL_NAME_FILTER$1.INSTANCE);
    }

    public static final Type getJavaType(KTypeProjection kTypeProjection) {
        KVariance kVariance = kTypeProjection.variance;
        if (kVariance == null) {
            return WildcardTypeImpl.STAR;
        }
        KType kType = kTypeProjection.type;
        kType.getClass();
        int i = TypesJVMKt$WhenMappings.$EnumSwitchMapping$0[kVariance.ordinal()];
        if (i == 1) {
            return new WildcardTypeImpl(null, computeJavaType(kType, true));
        }
        if (i == 2) {
            return computeJavaType(kType, true);
        }
        if (i == 3) {
            return new WildcardTypeImpl(computeJavaType(kType, true), null);
        }
        ContextsKt$$ExternalSyntheticBUOutline0.m();
        return null;
    }

    public static int getResId(Object obj) {
        if (Build.VERSION.SDK_INT >= 28) {
            return HandlerCompat$Api28Impl.getResId(obj);
        }
        try {
            return ((Integer) obj.getClass().getMethod("getResId", null).invoke(obj, null)).intValue();
        } catch (IllegalAccessException e) {
            Log.e("IconCompat", "Unable to get icon resource", e);
            return 0;
        } catch (NoSuchMethodException e2) {
            Log.e("IconCompat", "Unable to get icon resource", e2);
            return 0;
        } catch (InvocationTargetException e3) {
            Log.e("IconCompat", "Unable to get icon resource", e3);
            return 0;
        }
    }

    public static String getResPackage(Object obj) {
        if (Build.VERSION.SDK_INT >= 28) {
            return HandlerCompat$Api28Impl.getResPackage(obj);
        }
        try {
            return (String) obj.getClass().getMethod("getResPackage", null).invoke(obj, null);
        } catch (IllegalAccessException e) {
            Log.e("IconCompat", "Unable to get icon package", e);
            return null;
        } catch (NoSuchMethodException e2) {
            Log.e("IconCompat", "Unable to get icon package", e2);
            return null;
        } catch (InvocationTargetException e3) {
            Log.e("IconCompat", "Unable to get icon package", e3);
            return null;
        }
    }

    public static int getType(Object obj) {
        if (Build.VERSION.SDK_INT >= 28) {
            return HandlerCompat$Api28Impl.getType(obj);
        }
        try {
            return ((Integer) obj.getClass().getMethod("getType", null).invoke(obj, null)).intValue();
        } catch (IllegalAccessException e) {
            Log.e("IconCompat", "Unable to get icon type " + obj, e);
            return -1;
        } catch (NoSuchMethodException e2) {
            Log.e("IconCompat", "Unable to get icon type " + obj, e2);
            return -1;
        } catch (InvocationTargetException e3) {
            Log.e("IconCompat", "Unable to get icon type " + obj, e3);
            return -1;
        }
    }

    public static Uri getUri(Object obj) {
        if (Build.VERSION.SDK_INT >= 28) {
            return HandlerCompat$Api28Impl.getUri(obj);
        }
        try {
            return (Uri) obj.getClass().getMethod("getUri", null).invoke(obj, null);
        } catch (IllegalAccessException e) {
            Log.e("IconCompat", "Unable to get icon uri", e);
            return null;
        } catch (NoSuchMethodException e2) {
            Log.e("IconCompat", "Unable to get icon uri", e2);
            return null;
        } catch (InvocationTargetException e3) {
            Log.e("IconCompat", "Unable to get icon uri", e3);
            return null;
        }
    }

    public static final boolean hasLinks(AnnotatedString annotatedString) {
        int length = annotatedString.text.length();
        List list = annotatedString.annotations;
        if (list != null) {
            int size = list.size();
            for (int i = 0; i < size; i++) {
                AnnotatedString.Range range = (AnnotatedString.Range) list.get(i);
                if ((range.item instanceof LinkAnnotation) && AnnotatedStringKt.intersect(0, length, range.start, range.end)) {
                    return true;
                }
            }
        }
        return false;
    }

    public static final boolean isFixed(Dimension dimension) {
        if (dimension instanceof Dimension.Dp ? true : dimension instanceof Dimension.Resource) {
            return true;
        }
        if ((Intrinsics.areEqual(dimension, Dimension.Expand.INSTANCE) ? true : Intrinsics.areEqual(dimension, Dimension.Fill.INSTANCE) ? true : Intrinsics.areEqual(dimension, Dimension.Wrap.INSTANCE)) || dimension == null) {
            return false;
        }
        ContextsKt$$ExternalSyntheticBUOutline0.m();
        return false;
    }

    public static boolean isWhitespace(char c) {
        return Character.isWhitespace(c) || Character.isSpaceChar(c);
    }

    /* renamed from: modulate-DxMtmZc, reason: not valid java name */
    public static final long m794modulateDxMtmZc(float f, long j) {
        long Color;
        if (Float.isNaN(f) || f >= 1.0f) {
            return j;
        }
        Color = ColorKt.Color(Color.m433getRedimpl(j), Color.m432getGreenimpl(j), Color.m430getBlueimpl(j), Color.m429getAlphaimpl(j) * f, Color.m431getColorSpaceimpl(j));
        return Color;
    }

    public static final int nextInt(IntRange intRange) {
        AbstractPlatformRandom abstractPlatformRandom = Random.defaultRandom;
        if (intRange.isEmpty()) {
            Gson$$ExternalSyntheticBUOutline0.m("Cannot get random in empty range: ", intRange);
            return 0;
        }
        int i = intRange.last;
        int i2 = intRange.first;
        if (i < Integer.MAX_VALUE) {
            return Random.defaultRandom.nextInt(i2, i + 1);
        }
        if (i2 <= Integer.MIN_VALUE) {
            return Random.defaultRandom.nextInt();
        }
        return Random.defaultRandom.nextInt(i2 - 1, i) + 1;
    }

    public static void onCreateInputConnection(InputConnection inputConnection, EditorInfo editorInfo, TextView textView) {
        if (inputConnection == null || editorInfo.hintText != null) {
            return;
        }
        for (ViewParent parent = textView.getParent(); parent instanceof View; parent = parent.getParent()) {
        }
    }

    public static final String pluralStringResource(int i, int i2, Object[] objArr, GapComposer gapComposer) {
        return ((Resources) gapComposer.consume(AndroidCompositionLocals_androidKt.LocalResources)).getQuantityString(i, i2, Arrays.copyOf(objArr, objArr.length));
    }

    public static void processAnnotation(KotlinJvmBinaryClass$AnnotationVisitor kotlinJvmBinaryClass$AnnotationVisitor, Annotation annotation) {
        Class javaClass = UnsignedKt.getJavaClass(UnsignedKt.getAnnotationClass(annotation));
        KotlinJvmBinaryClass$AnnotationArgumentVisitor visitAnnotation = kotlinJvmBinaryClass$AnnotationVisitor.visitAnnotation(ReflectClassUtilKt.getClassId(javaClass), new ReflectAnnotationSource(annotation));
        if (visitAnnotation != null) {
            processAnnotationArguments(visitAnnotation, annotation, javaClass);
        }
    }

    public static void processAnnotationArguments(KotlinJvmBinaryClass$AnnotationArgumentVisitor kotlinJvmBinaryClass$AnnotationArgumentVisitor, Annotation annotation, Class cls) {
        Method[] declaredMethods = cls.getDeclaredMethods();
        declaredMethods.getClass();
        for (Method method : declaredMethods) {
            try {
                Object invoke = method.invoke(annotation, null);
                invoke.getClass();
                Name identifier = Name.identifier(method.getName());
                Class<?> cls2 = invoke.getClass();
                if (cls2.equals(Class.class)) {
                    kotlinJvmBinaryClass$AnnotationArgumentVisitor.visitClassLiteral(identifier, classLiteralValue((Class) invoke));
                } else if (ReflectKotlinClassKt.TYPES_ELIGIBLE_FOR_SIMPLE_VISIT.contains(cls2)) {
                    kotlinJvmBinaryClass$AnnotationArgumentVisitor.visit(identifier, invoke);
                } else {
                    List list = ReflectClassUtilKt.PRIMITIVE_CLASSES;
                    if (Enum.class.isAssignableFrom(cls2)) {
                        if (!cls2.isEnum()) {
                            cls2 = cls2.getEnclosingClass();
                        }
                        cls2.getClass();
                        kotlinJvmBinaryClass$AnnotationArgumentVisitor.visitEnum(identifier, ReflectClassUtilKt.getClassId(cls2), Name.identifier(((Enum) invoke).name()));
                    } else if (Annotation.class.isAssignableFrom(cls2)) {
                        Class<?>[] interfaces = cls2.getInterfaces();
                        interfaces.getClass();
                        Class cls3 = (Class) ArraysKt___ArraysKt.single(interfaces);
                        cls3.getClass();
                        KotlinJvmBinaryClass$AnnotationArgumentVisitor visitAnnotation = kotlinJvmBinaryClass$AnnotationArgumentVisitor.visitAnnotation(ReflectClassUtilKt.getClassId(cls3), identifier);
                        if (visitAnnotation != null) {
                            processAnnotationArguments(visitAnnotation, (Annotation) invoke, cls3);
                        }
                    } else {
                        if (!cls2.isArray()) {
                            throw new UnsupportedOperationException("Unsupported annotation argument value (" + cls2 + "): " + invoke);
                        }
                        KotlinJvmBinaryClass$AnnotationArrayArgumentVisitor visitArray = kotlinJvmBinaryClass$AnnotationArgumentVisitor.visitArray(identifier);
                        if (visitArray != null) {
                            Class<?> componentType = cls2.getComponentType();
                            if (componentType.isEnum()) {
                                ClassId classId = ReflectClassUtilKt.getClassId(componentType);
                                for (Object obj : (Object[]) invoke) {
                                    obj.getClass();
                                    visitArray.visitEnum(classId, Name.identifier(((Enum) obj).name()));
                                }
                            } else if (componentType.equals(Class.class)) {
                                for (Object obj2 : (Object[]) invoke) {
                                    obj2.getClass();
                                    visitArray.visitClassLiteral(classLiteralValue((Class) obj2));
                                }
                            } else if (Annotation.class.isAssignableFrom(componentType)) {
                                for (Object obj3 : (Object[]) invoke) {
                                    KotlinJvmBinaryClass$AnnotationArgumentVisitor visitAnnotation2 = visitArray.visitAnnotation(ReflectClassUtilKt.getClassId(componentType));
                                    if (visitAnnotation2 != null) {
                                        obj3.getClass();
                                        processAnnotationArguments(visitAnnotation2, (Annotation) obj3, componentType);
                                    }
                                }
                            } else {
                                for (Object obj4 : (Object[]) invoke) {
                                    visitArray.visit(obj4);
                                }
                            }
                            visitArray.visitEnd();
                        }
                    }
                }
            } catch (IllegalAccessException unused) {
            }
        }
        kotlinJvmBinaryClass$AnnotationArgumentVisitor.visitEnd();
    }

    public static LinkedHashSet resolveOverrides(Name name, Collection collection, Collection collection2, ModuleAwareClassDescriptor moduleAwareClassDescriptor, ErrorReporter errorReporter, OverridingUtil overridingUtil, boolean z) {
        if (collection == null) {
            $$$reportNull$$$0(13);
            throw null;
        }
        if (moduleAwareClassDescriptor == null) {
            $$$reportNull$$$0(15);
            throw null;
        }
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        overridingUtil.generateOverridesInFunctionGroup(name, collection, collection2, moduleAwareClassDescriptor, new DescriptorResolverUtils$1(errorReporter, linkedHashSet, z));
        return linkedHashSet;
    }

    public static LinkedHashSet resolveOverridesForNonStaticMembers(Name name, AbstractCollection abstractCollection, Collection collection, ModuleAwareClassDescriptor moduleAwareClassDescriptor, ErrorReporter errorReporter, OverridingUtil overridingUtil) {
        if (moduleAwareClassDescriptor != null) {
            return resolveOverrides(name, abstractCollection, collection, moduleAwareClassDescriptor, errorReporter, overridingUtil, false);
        }
        $$$reportNull$$$0(3);
        throw null;
    }

    public static LinkedHashSet resolveOverridesForStaticMembers(Name name, Collection collection, AbstractCollection abstractCollection, ModuleAwareClassDescriptor moduleAwareClassDescriptor, OverridingUtil overridingUtil) {
        RuntimeErrorReporter runtimeErrorReporter = RuntimeErrorReporter.INSTANCE;
        if (collection == null) {
            $$$reportNull$$$0(7);
            throw null;
        }
        if (moduleAwareClassDescriptor != null) {
            return resolveOverrides(name, collection, abstractCollection, moduleAwareClassDescriptor, runtimeErrorReporter, overridingUtil, true);
        }
        $$$reportNull$$$0(9);
        throw null;
    }

    public static final String signature(ModuleAwareClassDescriptor moduleAwareClassDescriptor, String str) {
        String computeInternalName;
        String str2 = JavaToKotlinClassMap.NUMBERED_FUNCTION_PREFIX;
        FqNameUnsafe unsafe = DescriptorUtilsKt.getFqNameSafe(moduleAwareClassDescriptor).toUnsafe();
        unsafe.getClass();
        ClassId mapKotlinToJava = JavaToKotlinClassMap.mapKotlinToJava(unsafe);
        if (mapKotlinToJava != null) {
            computeInternalName = JvmClassName.byClassId(mapKotlinToJava).getInternalName();
            computeInternalName.getClass();
        } else {
            computeInternalName = ResultKt.computeInternalName(moduleAwareClassDescriptor, JvmTypeFactoryImpl.INSTANCE$2);
        }
        return computeInternalName + '.' + str;
    }

    public static final String stringResource(int i, Object[] objArr, GapComposer gapComposer) {
        return ((Resources) gapComposer.consume(AndroidCompositionLocals_androidKt.LocalResources)).getString(i, Arrays.copyOf(objArr, objArr.length));
    }

    public static void suppressLayout(ViewGroup viewGroup, boolean z) {
        if (Build.VERSION.SDK_INT >= 29) {
            FileUtil.suppressLayout(viewGroup, z);
        } else if (sTryHiddenSuppressLayout) {
            try {
                FileUtil.suppressLayout(viewGroup, z);
            } catch (NoSuchMethodError unused) {
                sTryHiddenSuppressLayout = false;
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x007c  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0098  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static android.graphics.drawable.Icon toIcon(androidx.core.graphics.drawable.IconCompat r7, android.content.Context r8) {
        /*
            Method dump skipped, instructions count: 322
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: coil3.util.UtilsKt.toIcon(androidx.core.graphics.drawable.IconCompat, android.content.Context):android.graphics.drawable.Icon");
    }

    public static final String typeToString(Type type) {
        if (!(type instanceof Class)) {
            return type.toString();
        }
        Class cls = (Class) type;
        if (!cls.isArray()) {
            return cls.getName();
        }
        Sequence generateSequence = SequencesKt.generateSequence(type, TypesJVMKt$typeToString$unwrap$1.INSTANCE);
        return ((Class) SequencesKt.last(generateSequence)).getName() + StringsKt__StringsJVMKt.repeat(SequencesKt.count(generateSequence), "[]");
    }

    public abstract void bind(SQLiteStatement sQLiteStatement, Object obj);

    public abstract String createQuery();

    public abstract String decodeUtf8(byte[] bArr, int i, int i2);

    public abstract int encodeUtf8(String str, byte[] bArr, int i, int i2);

    public AndroidSvg findAndAddSecondarySerializer(TypeBase typeBase, SerializerProvider serializerProvider, BeanProperty beanProperty) {
        JsonSerializer findContentValueSerializer = serializerProvider.findContentValueSerializer(typeBase, beanProperty);
        return new AndroidSvg(findContentValueSerializer, newWith(typeBase._class, findContentValueSerializer));
    }

    public abstract Method getAccessor(Class cls, Field field);

    public abstract Constructor getCanonicalRecordConstructor(Class cls);

    public abstract String[] getRecordComponentNames(Class cls);

    public void handle(SQLiteConnection sQLiteConnection, Object obj) {
        sQLiteConnection.getClass();
        if (obj == null) {
            return;
        }
        SQLiteStatement prepare = sQLiteConnection.prepare(createQuery());
        try {
            bind(prepare, obj);
            prepare.step();
            TuplesKt.closeFinally(prepare, null);
            TuplesKt.getTotalChangedRows(sQLiteConnection);
        } finally {
        }
    }

    public void handleMultiple(SQLiteConnection sQLiteConnection, Iterable iterable) {
        if (iterable == null) {
            return;
        }
        SQLiteStatement prepare = sQLiteConnection.prepare(createQuery());
        try {
            for (Object obj : iterable) {
                if (obj != null) {
                    bind(prepare, obj);
                    prepare.step();
                    prepare.reset();
                    TuplesKt.getTotalChangedRows(sQLiteConnection);
                }
            }
            TuplesKt.closeFinally(prepare, null);
        } finally {
        }
    }

    public abstract void hide();

    public abstract boolean isAppearanceLightStatusBars();

    public abstract boolean isRecord(Class cls);

    public abstract UtilsKt newWith(Class cls, JsonSerializer jsonSerializer);

    public abstract void onFailed(Throwable th);

    public abstract void onLoaded(ImageLoader$Builder imageLoader$Builder);

    public abstract JsonSerializer serializerFor(Class cls);

    public abstract void setAppearanceLightStatusBars(boolean z);

    public abstract void show();

    public static final String pluralStringResource(int i, int i2, GapComposer gapComposer) {
        return ((Resources) gapComposer.consume(AndroidCompositionLocals_androidKt.LocalResources)).getQuantityString(i, i2);
    }

    public static final String stringResource(int i, GapComposer gapComposer) {
        return ((Resources) gapComposer.consume(AndroidCompositionLocals_androidKt.LocalResources)).getString(i);
    }

    public void setAppearanceLightNavigationBars(boolean z) {
    }
}
