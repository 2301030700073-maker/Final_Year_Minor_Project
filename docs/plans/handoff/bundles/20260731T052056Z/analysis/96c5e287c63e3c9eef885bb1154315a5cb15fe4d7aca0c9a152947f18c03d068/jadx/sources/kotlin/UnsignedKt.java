package kotlin;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.text.Spannable;
import android.text.style.AbsoluteSizeSpan;
import android.text.style.ForegroundColorSpan;
import android.text.style.LocaleSpan;
import android.text.style.RelativeSizeSpan;
import android.widget.EditText;
import androidx.appcompat.view.ActionMode;
import androidx.compose.animation.core.Animation;
import androidx.compose.foundation.text.modifiers.MinLinesConstrainer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.composer.gapbuffer.changelist.Operations;
import androidx.compose.ui.graphics.ColorKt;
import androidx.compose.ui.text.ParagraphKt;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.font.FontFamily;
import androidx.compose.ui.text.intl.Locale;
import androidx.compose.ui.text.intl.LocaleList;
import androidx.compose.ui.text.intl.PlatformLocaleKt;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.DensityImpl;
import androidx.compose.ui.unit.LayoutDirection;
import androidx.compose.ui.unit.TextUnit;
import androidx.compose.ui.unit.TextUnitType;
import androidx.lifecycle.HasDefaultViewModelProviderFactory;
import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelProvider$Factory;
import androidx.lifecycle.ViewModelStore;
import androidx.lifecycle.ViewModelStoreOwner;
import androidx.lifecycle.viewmodel.CreationExtras;
import androidx.lifecycle.viewmodel.internal.DefaultViewModelProviderFactory;
import androidx.recyclerview.widget.RecyclerView;
import androidx.sqlite.SQLiteStatement;
import androidx.work.Operation$State;
import coil3.ImageLoader$Builder;
import coil3.decode.DecodeUtils$WhenMappings;
import coil3.size.Dimension;
import coil3.size.Scale;
import coil3.size.Size;
import coil3.util.ContextsKt$$ExternalSyntheticBUOutline0;
import coil3.util.UtilsKt;
import com.fasterxml.jackson.databind.JsonSerializer;
import com.fasterxml.jackson.databind.SerializationConfig;
import com.fasterxml.jackson.databind.SerializerProvider;
import com.fasterxml.jackson.databind.jsontype.impl.TypeSerializerBase;
import com.fasterxml.jackson.databind.type.TypeBase;
import java.lang.annotation.Annotation;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import kotlin.collections.CollectionsKt;
import kotlin.collections.CollectionsKt__IteratorsJVMKt;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.ClassBasedDeclarationContainer;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KClass;
import kotlin.reflect.jvm.internal.impl.descriptors.DescriptorVisibilities;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.AnnotationDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotations;
import kotlin.reflect.jvm.internal.impl.load.java.JavaDescriptorVisibilities;
import kotlin.reflect.jvm.internal.impl.load.kotlin.MemberSignature;
import kotlin.reflect.jvm.internal.impl.metadata.jvm.deserialization.JvmMemberSignature$Field;
import kotlin.reflect.jvm.internal.impl.metadata.jvm.deserialization.JvmMemberSignature$Method;
import kotlin.reflect.jvm.internal.impl.name.FqName;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope;
import kotlin.sequences.SequenceBuilderIterator;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.internal.NullableSerializer;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.wikipedia.talk.TalkTopicsViewModel;
import org.wikipedia.util.GeoUtil$$ExternalSyntheticApiModelOutline0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class UnsignedKt {
    /* JADX WARN: Code restructure failed: missing block: B:143:0x0273, code lost:
    
        if (r50.changed(false) != false) goto L177;
     */
    /* JADX WARN: Removed duplicated region for block: B:166:0x02fa  */
    /* JADX WARN: Removed duplicated region for block: B:185:0x0330  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void LazyGrid(final androidx.compose.ui.Modifier r40, final androidx.compose.foundation.lazy.grid.LazyGridState r41, final androidx.compose.foundation.lazy.grid.GridSlotCache r42, final androidx.compose.foundation.layout.PaddingValues r43, final androidx.compose.foundation.gestures.FlingBehavior r44, final boolean r45, final androidx.compose.foundation.AndroidEdgeEffectOverscrollEffect r46, final androidx.compose.foundation.layout.Arrangement$Vertical r47, final androidx.compose.foundation.layout.Arrangement$Horizontal r48, final kotlin.jvm.functions.Function1 r49, androidx.compose.runtime.GapComposer r50, final int r51, final int r52) {
        /*
            Method dump skipped, instructions count: 919
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.UnsignedKt.LazyGrid(androidx.compose.ui.Modifier, androidx.compose.foundation.lazy.grid.LazyGridState, androidx.compose.foundation.lazy.grid.GridSlotCache, androidx.compose.foundation.layout.PaddingValues, androidx.compose.foundation.gestures.FlingBehavior, boolean, androidx.compose.foundation.AndroidEdgeEffectOverscrollEffect, androidx.compose.foundation.layout.Arrangement$Vertical, androidx.compose.foundation.layout.Arrangement$Horizontal, kotlin.jvm.functions.Function1, androidx.compose.runtime.GapComposer, int, int):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0074  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0083  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0036  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0023  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object awaitStarted(androidx.lifecycle.LifecycleRegistry r6, kotlin.coroutines.jvm.internal.ContinuationImpl r7) {
        /*
            boolean r0 = r7 instanceof coil3.util.LifecyclesKt$awaitStarted$1
            if (r0 == 0) goto L13
            r0 = r7
            coil3.util.LifecyclesKt$awaitStarted$1 r0 = (coil3.util.LifecyclesKt$awaitStarted$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            coil3.util.LifecyclesKt$awaitStarted$1 r0 = new coil3.util.LifecyclesKt$awaitStarted$1
            r0.<init>(r7)
        L18:
            java.lang.Object r7 = r0.result
            kotlin.coroutines.intrinsics.CoroutineSingletons r1 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r2 = r0.label
            kotlin.Unit r3 = kotlin.Unit.INSTANCE
            r4 = 1
            if (r2 == 0) goto L36
            if (r2 != r4) goto L2f
            kotlin.jvm.internal.Ref$ObjectRef r6 = r0.L$1
            androidx.lifecycle.LifecycleRegistry r0 = r0.L$0
            kotlin.ResultKt.throwOnFailure(r7)     // Catch: java.lang.Throwable -> L2d
            goto L6e
        L2d:
            r7 = move-exception
            goto L7d
        L2f:
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$1(r6)
            r6 = 0
            return r6
        L36:
            kotlin.ResultKt.throwOnFailure(r7)
            androidx.lifecycle.Lifecycle$State r7 = r6.state
            androidx.lifecycle.Lifecycle$State r2 = androidx.lifecycle.Lifecycle$State.STARTED
            boolean r7 = r7.isAtLeast(r2)
            if (r7 == 0) goto L44
            goto L77
        L44:
            kotlin.jvm.internal.Ref$ObjectRef r7 = new kotlin.jvm.internal.Ref$ObjectRef
            r7.<init>()
            r0.L$0 = r6     // Catch: java.lang.Throwable -> L78
            r0.L$1 = r7     // Catch: java.lang.Throwable -> L78
            r0.label = r4     // Catch: java.lang.Throwable -> L78
            kotlinx.coroutines.CancellableContinuationImpl r2 = new kotlinx.coroutines.CancellableContinuationImpl     // Catch: java.lang.Throwable -> L78
            kotlin.coroutines.Continuation r0 = kotlin.ExceptionsKt.intercepted(r0)     // Catch: java.lang.Throwable -> L78
            r2.<init>(r4, r0)     // Catch: java.lang.Throwable -> L78
            r2.initCancellability()     // Catch: java.lang.Throwable -> L78
            coil3.util.LifecyclesKt$awaitStarted$2$1 r0 = new coil3.util.LifecyclesKt$awaitStarted$2$1     // Catch: java.lang.Throwable -> L78
            r0.<init>(r2)     // Catch: java.lang.Throwable -> L78
            r7.element = r0     // Catch: java.lang.Throwable -> L78
            r6.addObserver(r0)     // Catch: java.lang.Throwable -> L78
            java.lang.Object r0 = r2.getResult()     // Catch: java.lang.Throwable -> L78
            if (r0 != r1) goto L6c
            return r1
        L6c:
            r0 = r6
            r6 = r7
        L6e:
            java.lang.Object r6 = r6.element
            androidx.lifecycle.LifecycleObserver r6 = (androidx.lifecycle.LifecycleObserver) r6
            if (r6 == 0) goto L77
            r0.removeObserver(r6)
        L77:
            return r3
        L78:
            r0 = move-exception
            r5 = r0
            r0 = r6
            r6 = r7
            r7 = r5
        L7d:
            java.lang.Object r6 = r6.element
            androidx.lifecycle.LifecycleObserver r6 = (androidx.lifecycle.LifecycleObserver) r6
            if (r6 == 0) goto L86
            r0.removeObserver(r6)
        L86:
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.UnsignedKt.awaitStarted(androidx.lifecycle.LifecycleRegistry, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    /* renamed from: computeDstSize-sEdh43o, reason: not valid java name */
    public static final long m821computeDstSizesEdh43o(int i, int i2, Size size, Scale scale, Size size2) {
        int i3;
        int i4;
        if (!Intrinsics.areEqual(size, Size.ORIGINAL)) {
            i = toPx(size.width, scale);
            i2 = toPx(size.height, scale);
        }
        Dimension dimension = size2.width;
        Dimension dimension2 = size2.height;
        if ((dimension instanceof Dimension.Pixels) && i != Integer.MIN_VALUE && i != Integer.MAX_VALUE && i > (i4 = ((Dimension.Pixels) dimension).px)) {
            i = i4;
        }
        if ((dimension2 instanceof Dimension.Pixels) && i2 != Integer.MIN_VALUE && i2 != Integer.MAX_VALUE && i2 > (i3 = ((Dimension.Pixels) dimension2).px)) {
            i2 = i3;
        }
        return (i2 & 4294967295L) | (i << 32);
    }

    public static final double computeSizeMultiplier(int i, int i2, int i3, int i4, Scale scale, Size size) {
        double max;
        double d = i;
        double d2 = i3 / d;
        double d3 = i2;
        double d4 = i4 / d3;
        int i5 = DecodeUtils$WhenMappings.$EnumSwitchMapping$0[scale.ordinal()];
        if (i5 == 1) {
            max = Math.max(d2, d4);
        } else {
            if (i5 != 2) {
                ContextsKt$$ExternalSyntheticBUOutline0.m();
                return 0.0d;
            }
            max = Math.min(d2, d4);
        }
        if (size.width instanceof Dimension.Pixels) {
            double d5 = ((Dimension.Pixels) r9).px / d;
            if (max > d5) {
                max = d5;
            }
        }
        if (size.height instanceof Dimension.Pixels) {
            double d6 = ((Dimension.Pixels) r9).px / d3;
            if (max > d6) {
                return d6;
            }
        }
        return max;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0081  */
    /* JADX WARN: Removed duplicated region for block: B:22:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static androidx.emoji2.text.FontRequestEmojiCompatConfig create(android.content.Context r13) {
        /*
            int r0 = android.os.Build.VERSION.SDK_INT
            r1 = 28
            r2 = 8
            r3 = 0
            if (r0 < r1) goto Lf
            androidx.emoji2.text.DefaultEmojiCompatConfig$DefaultEmojiCompatConfigHelper_API28 r0 = new androidx.emoji2.text.DefaultEmojiCompatConfig$DefaultEmojiCompatConfigHelper_API28
            r0.<init>(r2, r3)
            goto L14
        Lf:
            androidx.transition.Transition$1 r0 = new androidx.transition.Transition$1
            r0.<init>(r2, r3)
        L14:
            android.content.pm.PackageManager r1 = r13.getPackageManager()
            java.lang.String r2 = "Package manager required to locate emoji font provider"
            androidx.work.Operation$State.checkNotNull(r2, r1)
            android.content.Intent r2 = new android.content.Intent
            java.lang.String r4 = "androidx.content.action.LOAD_EMOJI_FONT"
            r2.<init>(r4)
            java.util.List r2 = r1.queryIntentContentProviders(r2, r3)
            java.util.Iterator r2 = r2.iterator()
        L2c:
            boolean r4 = r2.hasNext()
            r5 = 0
            if (r4 == 0) goto L48
            java.lang.Object r4 = r2.next()
            android.content.pm.ResolveInfo r4 = (android.content.pm.ResolveInfo) r4
            android.content.pm.ProviderInfo r4 = r4.providerInfo
            if (r4 == 0) goto L2c
            android.content.pm.ApplicationInfo r6 = r4.applicationInfo
            if (r6 == 0) goto L2c
            int r6 = r6.flags
            r7 = 1
            r6 = r6 & r7
            if (r6 != r7) goto L2c
            goto L49
        L48:
            r4 = r5
        L49:
            if (r4 != 0) goto L4d
        L4b:
            r6 = r5
            goto L7e
        L4d:
            java.lang.String r7 = r4.authority     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L77
            java.lang.String r8 = r4.packageName     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L77
            android.content.pm.Signature[] r0 = r0.getSigningSignatures(r1, r8)     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L77
            java.util.ArrayList r1 = new java.util.ArrayList     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L77
            r1.<init>()     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L77
            int r2 = r0.length     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L77
        L5b:
            if (r3 >= r2) goto L69
            r4 = r0[r3]     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L77
            byte[] r4 = r4.toByteArray()     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L77
            r1.add(r4)     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L77
            int r3 = r3 + 1
            goto L5b
        L69:
            java.util.List r10 = java.util.Collections.singletonList(r1)     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L77
            androidx.core.provider.FontRequest r6 = new androidx.core.provider.FontRequest     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L77
            java.lang.String r9 = "emojicompat-emoji-font"
            r11 = 0
            r12 = 0
            r6.<init>(r7, r8, r9, r10, r11, r12)     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L77
            goto L7e
        L77:
            r0 = move-exception
            java.lang.String r1 = "emoji2.text.DefaultEmojiConfig"
            android.util.Log.wtf(r1, r0)
            goto L4b
        L7e:
            if (r6 != 0) goto L81
            goto L8b
        L81:
            androidx.emoji2.text.FontRequestEmojiCompatConfig r5 = new androidx.emoji2.text.FontRequestEmojiCompatConfig
            androidx.emoji2.text.FontRequestEmojiCompatConfig$FontRequestMetadataLoader r0 = new androidx.emoji2.text.FontRequestEmojiCompatConfig$FontRequestMetadataLoader
            r0.<init>(r13, r6)
            r5.<init>(r0)
        L8b:
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.UnsignedKt.create(android.content.Context):androidx.emoji2.text.FontRequestEmojiCompatConfig");
    }

    public static final String createUniqueRemoteUiName(int i) {
        return Animation.CC.m(i, "appWidget-");
    }

    public static final float fastCbrt(float f) {
        float intBitsToFloat = Float.intBitsToFloat(((int) ((Float.floatToRawIntBits(f) & 8589934591L) / 3)) + 709952852);
        float f2 = intBitsToFloat - ((intBitsToFloat - (f / (intBitsToFloat * intBitsToFloat))) * 0.33333334f);
        return f2 - ((f2 - (f / (f2 * f2))) * 0.33333334f);
    }

    public static AnnotationDescriptor findAnnotation(Annotations annotations, FqName fqName) {
        Object obj;
        fqName.getClass();
        Iterator it = annotations.iterator();
        while (true) {
            if (!it.hasNext()) {
                obj = null;
                break;
            }
            obj = it.next();
            if (Intrinsics.areEqual(((AnnotationDescriptor) obj).getFqName(), fqName)) {
                break;
            }
        }
        return (AnnotationDescriptor) obj;
    }

    public static final HashSet flatMapClassifierNamesOrNull(Iterable iterable) {
        HashSet hashSet = new HashSet();
        Iterator it = iterable.iterator();
        while (it.hasNext()) {
            Set classifierNames = ((MemberScope) it.next()).getClassifierNames();
            if (classifierNames == null) {
                return null;
            }
            CollectionsKt.addAll(hashSet, classifierNames);
        }
        return hashSet;
    }

    public static MinLinesConstrainer from(MinLinesConstrainer minLinesConstrainer, LayoutDirection layoutDirection, TextStyle textStyle, Density density, FontFamily.Resolver resolver) {
        if (minLinesConstrainer != null && layoutDirection == minLinesConstrainer.layoutDirection && ParagraphKt.resolveDefaults(textStyle, layoutDirection).equals(minLinesConstrainer.inputTextStyle) && density.getDensity() == minLinesConstrainer.density.density && resolver == minLinesConstrainer.fontFamilyResolver) {
            return minLinesConstrainer;
        }
        MinLinesConstrainer minLinesConstrainer2 = MinLinesConstrainer.last;
        if (minLinesConstrainer2 != null && layoutDirection == minLinesConstrainer2.layoutDirection && ParagraphKt.resolveDefaults(textStyle, layoutDirection).equals(minLinesConstrainer2.inputTextStyle) && density.getDensity() == minLinesConstrainer2.density.density && resolver == minLinesConstrainer2.fontFamilyResolver) {
            return minLinesConstrainer2;
        }
        MinLinesConstrainer minLinesConstrainer3 = new MinLinesConstrainer(layoutDirection, ParagraphKt.resolveDefaults(textStyle, layoutDirection), new DensityImpl(density.getDensity(), density.getFontScale()), resolver);
        MinLinesConstrainer.last = minLinesConstrainer3;
        return minLinesConstrainer3;
    }

    public static MemberSignature fromJvmMemberSignature(Operation$State operation$State) {
        if (operation$State instanceof JvmMemberSignature$Method) {
            JvmMemberSignature$Method jvmMemberSignature$Method = (JvmMemberSignature$Method) operation$State;
            String str = jvmMemberSignature$Method.name;
            String str2 = jvmMemberSignature$Method.desc;
            str.getClass();
            str2.getClass();
            return new MemberSignature(str.concat(str2));
        }
        if (!(operation$State instanceof JvmMemberSignature$Field)) {
            ContextsKt$$ExternalSyntheticBUOutline0.m();
            return null;
        }
        JvmMemberSignature$Field jvmMemberSignature$Field = (JvmMemberSignature$Field) operation$State;
        String str3 = jvmMemberSignature$Field.name;
        String str4 = jvmMemberSignature$Field.desc;
        str3.getClass();
        str4.getClass();
        return new MemberSignature(str3 + '#' + str4);
    }

    public static final KClass getAnnotationClass(Annotation annotation) {
        annotation.getClass();
        Class<? extends Annotation> annotationType = annotation.annotationType();
        annotationType.getClass();
        return Reflection.factory.getOrCreateKotlinClass(annotationType);
    }

    public static final int getColumnIndexOrThrow(SQLiteStatement sQLiteStatement, String str) {
        sQLiteStatement.getClass();
        int columnIndexOf = UtilsKt.columnIndexOf(sQLiteStatement, str);
        if (columnIndexOf >= 0) {
            return columnIndexOf;
        }
        int columnCount = sQLiteStatement.getColumnCount();
        ArrayList arrayList = new ArrayList(columnCount);
        for (int i = 0; i < columnCount; i++) {
            arrayList.add(sQLiteStatement.getColumnName(i));
        }
        throw new IllegalArgumentException("Column '" + str + "' does not exist. Available columns: [" + CollectionsKt.joinToString$default(arrayList, null, null, null, null, 63) + ']');
    }

    public static final Class getJavaClass(KClass kClass) {
        kClass.getClass();
        Class jClass = ((ClassBasedDeclarationContainer) kClass).getJClass();
        jClass.getClass();
        return jClass;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue
    java.lang.NullPointerException: Cannot invoke "java.util.List.iterator()" because the return value of "jadx.core.dex.visitors.regions.SwitchOverStringVisitor$SwitchData.getNewCases()" is null
    	at jadx.core.dex.visitors.regions.SwitchOverStringVisitor.restoreSwitchOverString(SwitchOverStringVisitor.java:109)
    	at jadx.core.dex.visitors.regions.SwitchOverStringVisitor.visitRegion(SwitchOverStringVisitor.java:66)
    	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseIterativeStepInternal(DepthRegionTraversal.java:77)
    	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseIterativeStepInternal(DepthRegionTraversal.java:82)
     */
    public static final Class getJavaObjectType(KClass kClass) {
        kClass.getClass();
        Class jClass = ((ClassBasedDeclarationContainer) kClass).getJClass();
        if (jClass.isPrimitive()) {
            String name = jClass.getName();
            switch (name.hashCode()) {
                case -1325958191:
                    if (name.equals("double")) {
                        return Double.class;
                    }
                    break;
                case 104431:
                    if (name.equals("int")) {
                        return Integer.class;
                    }
                    break;
                case 3039496:
                    if (name.equals("byte")) {
                        return Byte.class;
                    }
                    break;
                case 3052374:
                    if (name.equals("char")) {
                        return Character.class;
                    }
                    break;
                case 3327612:
                    if (name.equals("long")) {
                        return Long.class;
                    }
                    break;
                case 3625364:
                    if (name.equals("void")) {
                        return Void.class;
                    }
                    break;
                case 64711720:
                    if (name.equals("boolean")) {
                        return Boolean.class;
                    }
                    break;
                case 97526364:
                    if (name.equals("float")) {
                        return Float.class;
                    }
                    break;
                case 109413500:
                    if (name.equals("short")) {
                        return Short.class;
                    }
                    break;
            }
        }
        return jClass;
    }

    public static final Class getJavaPrimitiveType(KClass kClass) {
        kClass.getClass();
        Class jClass = ((ClassBasedDeclarationContainer) kClass).getJClass();
        if (jClass.isPrimitive()) {
            return jClass;
        }
        String name = jClass.getName();
        switch (name.hashCode()) {
            case -2056817302:
                if (name.equals("java.lang.Integer")) {
                    return Integer.TYPE;
                }
                return null;
            case -527879800:
                if (name.equals("java.lang.Float")) {
                    return Float.TYPE;
                }
                return null;
            case -515992664:
                if (name.equals("java.lang.Short")) {
                    return Short.TYPE;
                }
                return null;
            case 155276373:
                if (name.equals("java.lang.Character")) {
                    return Character.TYPE;
                }
                return null;
            case 344809556:
                if (name.equals("java.lang.Boolean")) {
                    return Boolean.TYPE;
                }
                return null;
            case 398507100:
                if (name.equals("java.lang.Byte")) {
                    return Byte.TYPE;
                }
                return null;
            case 398795216:
                if (name.equals("java.lang.Long")) {
                    return Long.TYPE;
                }
                return null;
            case 399092968:
                if (name.equals("java.lang.Void")) {
                    return Void.TYPE;
                }
                return null;
            case 761287205:
                if (name.equals("java.lang.Double")) {
                    return Double.TYPE;
                }
                return null;
            default:
                return null;
        }
    }

    public static final KSerializer getNullable(KSerializer kSerializer) {
        kSerializer.getClass();
        return kSerializer.getDescriptor().isNullable() ? kSerializer : new NullableSerializer(kSerializer);
    }

    public static boolean hasAnnotation(Annotations annotations, FqName fqName) {
        fqName.getClass();
        return annotations.findAnnotation(fqName) != null;
    }

    public static int indexOf(int i) {
        if (i == 1) {
            return 0;
        }
        if (i == 2) {
            return 1;
        }
        if (i == 4) {
            return 2;
        }
        if (i == 8) {
            return 3;
        }
        if (i == 16) {
            return 4;
        }
        if (i == 32) {
            return 5;
        }
        if (i == 64) {
            return 6;
        }
        if (i == 128) {
            return 7;
        }
        if (i == 256) {
            return 8;
        }
        if (i == 512) {
            return 9;
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m(Animation.CC.m(i, "type needs to be >= FIRST and <= LAST, type="));
        return 0;
    }

    public static boolean isEditable(EditText editText) {
        return editText.getInputType() != 0;
    }

    public static boolean isNotTrailingByte(byte b) {
        return b > -65;
    }

    public static SequenceBuilderIterator iterator(Function2 function2) {
        SequenceBuilderIterator sequenceBuilderIterator = new SequenceBuilderIterator();
        sequenceBuilderIterator.nextStep = ExceptionsKt.createCoroutineUnintercepted(sequenceBuilderIterator, sequenceBuilderIterator, function2);
        return sequenceBuilderIterator;
    }

    public static final int lerp(int i, float f, int i2) {
        return i + ((int) Math.round((i2 - i) * f));
    }

    /* JADX WARN: Removed duplicated region for block: B:110:0x0237  */
    /* JADX WARN: Removed duplicated region for block: B:153:0x037f  */
    /* JADX WARN: Removed duplicated region for block: B:156:0x0393  */
    /* JADX WARN: Removed duplicated region for block: B:163:0x03f1  */
    /* JADX WARN: Removed duplicated region for block: B:166:0x040e  */
    /* JADX WARN: Removed duplicated region for block: B:171:0x0433  */
    /* JADX WARN: Removed duplicated region for block: B:175:0x0451  */
    /* JADX WARN: Removed duplicated region for block: B:178:0x045a  */
    /* JADX WARN: Removed duplicated region for block: B:180:0x0454  */
    /* JADX WARN: Removed duplicated region for block: B:182:0x0439  */
    /* JADX WARN: Removed duplicated region for block: B:184:0x0441  */
    /* JADX WARN: Removed duplicated region for block: B:186:0x0414  */
    /* JADX WARN: Removed duplicated region for block: B:187:0x041c  */
    /* JADX WARN: Removed duplicated region for block: B:188:0x03f6  */
    /* JADX WARN: Removed duplicated region for block: B:191:0x03a3  */
    /* JADX WARN: Removed duplicated region for block: B:192:0x0383  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x0518  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x0522  */
    /* JADX WARN: Removed duplicated region for block: B:90:0x01b4  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final androidx.compose.ui.graphics.painter.Painter painterResource(int r63, int r64, androidx.compose.runtime.GapComposer r65) {
        /*
            Method dump skipped, instructions count: 1934
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.UnsignedKt.painterResource(int, int, androidx.compose.runtime.GapComposer):androidx.compose.ui.graphics.painter.Painter");
    }

    /* renamed from: resolveBulletTextUnitToPx-o2QH7mI, reason: not valid java name */
    public static final float m822resolveBulletTextUnitToPxo2QH7mI(long j, float f, Density density) {
        if (TextUnit.m723equalsimpl0(j, TextUnit.Unspecified)) {
            return f;
        }
        long m724getTypeUIouoOA = TextUnit.m724getTypeUIouoOA(j);
        if (TextUnitType.m728equalsimpl0(m724getTypeUIouoOA, 4294967296L)) {
            return density.mo86toPxR2X_6o(j);
        }
        if (TextUnitType.m728equalsimpl0(m724getTypeUIouoOA, 8589934592L)) {
            return TextUnit.m725getValueimpl(j) * f;
        }
        return Float.NaN;
    }

    /* renamed from: resolveLineHeightInPx-o2QH7mI, reason: not valid java name */
    public static final float m823resolveLineHeightInPxo2QH7mI(long j, float f, Density density) {
        float m725getValueimpl;
        long m724getTypeUIouoOA = TextUnit.m724getTypeUIouoOA(j);
        if (TextUnitType.m728equalsimpl0(m724getTypeUIouoOA, 4294967296L)) {
            if (density.getFontScale() <= 1.05d) {
                return density.mo86toPxR2X_6o(j);
            }
            m725getValueimpl = TextUnit.m725getValueimpl(j) / TextUnit.m725getValueimpl(density.mo89toSpkPz2Gy4(f));
        } else {
            if (!TextUnitType.m728equalsimpl0(m724getTypeUIouoOA, 8589934592L)) {
                return Float.NaN;
            }
            m725getValueimpl = TextUnit.m725getValueimpl(j);
        }
        return m725getValueimpl * f;
    }

    public static int roundToInt(double d) {
        if (Double.isNaN(d)) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m("Cannot round NaN value.");
            return 0;
        }
        if (d > 2.147483647E9d) {
            return Integer.MAX_VALUE;
        }
        if (d < -2.147483648E9d) {
            return Integer.MIN_VALUE;
        }
        return (int) Math.round(d);
    }

    public static long roundToLong(double d) {
        if (!Double.isNaN(d)) {
            return Math.round(d);
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m("Cannot round NaN value.");
        return 0L;
    }

    /* renamed from: setColor-RPmYEkk, reason: not valid java name */
    public static final void m824setColorRPmYEkk(Spannable spannable, long j, int i, int i2) {
        if (j != 16) {
            spannable.setSpan(new ForegroundColorSpan(ColorKt.m444toArgb8_81llA(j)), i, i2, 33);
        }
    }

    /* renamed from: setFontSize-KmRG4DE, reason: not valid java name */
    public static final void m825setFontSizeKmRG4DE(Spannable spannable, long j, Density density, int i, int i2) {
        long m724getTypeUIouoOA = TextUnit.m724getTypeUIouoOA(j);
        if (TextUnitType.m728equalsimpl0(m724getTypeUIouoOA, 4294967296L)) {
            spannable.setSpan(new AbsoluteSizeSpan(roundToInt(density.mo86toPxR2X_6o(j)), false), i, i2, 33);
        } else if (TextUnitType.m728equalsimpl0(m724getTypeUIouoOA, 8589934592L)) {
            spannable.setSpan(new RelativeSizeSpan(TextUnit.m725getValueimpl(j)), i, i2, 33);
        }
    }

    public static final void setLocaleList(Spannable spannable, LocaleList localeList, int i, int i2) {
        LocaleSpan localeSpan;
        if (localeList != null) {
            List list = localeList.localeList;
            if (Build.VERSION.SDK_INT >= 24) {
                ArrayList arrayList = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(localeList, 10));
                Iterator it = list.iterator();
                while (it.hasNext()) {
                    arrayList.add(((Locale) it.next()).platformLocale);
                }
                java.util.Locale[] localeArr = (java.util.Locale[]) arrayList.toArray(new java.util.Locale[0]);
                localeSpan = GeoUtil$$ExternalSyntheticApiModelOutline0.m(GeoUtil$$ExternalSyntheticApiModelOutline0.m((java.util.Locale[]) Arrays.copyOf(localeArr, localeArr.length)));
            } else {
                localeSpan = new LocaleSpan((list.isEmpty() ? PlatformLocaleKt.platformLocaleDelegate.getCurrent().get() : localeList.get()).platformLocale);
            }
            spannable.setSpan(localeSpan, i, i2, 33);
        }
    }

    /* renamed from: setObject-sGr0YRc, reason: not valid java name */
    public static final void m826setObjectsGr0YRc(Operations operations, int i, Object obj) {
        operations.objectArgs[(operations.objectArgsSize - operations.opCodes[operations.opCodesSize - 1].objects) + i] = obj;
    }

    /* renamed from: setObjects-EsEZvaA, reason: not valid java name */
    public static final void m827setObjectsEsEZvaA(Operations operations, int i, Object obj, int i2, Object obj2) {
        int i3 = operations.objectArgsSize - operations.opCodes[operations.opCodesSize - 1].objects;
        Object[] objArr = operations.objectArgs;
        objArr[i + i3] = obj;
        objArr[i3 + i2] = obj2;
    }

    public static Bitmap toBitmap$default(Drawable drawable) {
        int intrinsicWidth = drawable.getIntrinsicWidth();
        int intrinsicHeight = drawable.getIntrinsicHeight();
        if (drawable instanceof BitmapDrawable) {
            BitmapDrawable bitmapDrawable = (BitmapDrawable) drawable;
            if (bitmapDrawable.getBitmap() == null) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m("bitmap is null");
                return null;
            }
            if (intrinsicWidth == bitmapDrawable.getBitmap().getWidth() && intrinsicHeight == bitmapDrawable.getBitmap().getHeight()) {
                Bitmap bitmap = bitmapDrawable.getBitmap();
                bitmap.getClass();
                return bitmap;
            }
            Bitmap createScaledBitmap = Bitmap.createScaledBitmap(bitmapDrawable.getBitmap(), intrinsicWidth, intrinsicHeight, true);
            createScaledBitmap.getClass();
            return createScaledBitmap;
        }
        Rect bounds = drawable.getBounds();
        bounds.getClass();
        int i = bounds.left;
        int i2 = bounds.top;
        int i3 = bounds.right;
        int i4 = bounds.bottom;
        Bitmap createBitmap = Bitmap.createBitmap(intrinsicWidth, intrinsicHeight, Bitmap.Config.ARGB_8888);
        createBitmap.getClass();
        drawable.setBounds(0, 0, intrinsicWidth, intrinsicHeight);
        drawable.draw(new Canvas(createBitmap));
        drawable.setBounds(i, i2, i3, i4);
        return createBitmap;
    }

    public static final DescriptorVisibilities.AnonymousClass1 toDescriptorVisibility(ActionMode actionMode) {
        actionMode.getClass();
        DescriptorVisibilities.AnonymousClass1 anonymousClass1 = (DescriptorVisibilities.AnonymousClass1) JavaDescriptorVisibilities.visibilitiesMapping.get(actionMode);
        return anonymousClass1 == null ? DescriptorVisibilities.toDescriptorVisibility(actionMode) : anonymousClass1;
    }

    public static int toPx(Dimension dimension, Scale scale) {
        if (dimension instanceof Dimension.Pixels) {
            return ((Dimension.Pixels) dimension).px;
        }
        int i = DecodeUtils$WhenMappings.$EnumSwitchMapping$0[scale.ordinal()];
        if (i == 1) {
            return Integer.MIN_VALUE;
        }
        if (i == 2) {
            return Integer.MAX_VALUE;
        }
        ContextsKt$$ExternalSyntheticBUOutline0.m();
        return 0;
    }

    public static final String toStringAsFixed(float f) {
        if (Float.isNaN(f)) {
            return "NaN";
        }
        if (Float.isInfinite(f)) {
            return f < RecyclerView.DECELERATION_RATE ? "-Infinity" : "Infinity";
        }
        int max = Math.max(1, 0);
        float pow = (float) Math.pow(10.0d, max);
        float f2 = f * pow;
        int i = (int) f2;
        if (f2 - i >= 0.5f) {
            i++;
        }
        float f3 = i / pow;
        return max > 0 ? String.valueOf(f3) : String.valueOf((int) f3);
    }

    public static final double ulongToDouble(long j) {
        return ((j >>> 11) * 2048.0d) + (j & 2047);
    }

    public static final String ulongToString(long j, int i) {
        if (j >= 0) {
            UtilsKt.checkRadix(i);
            String l = Long.toString(j, i);
            l.getClass();
            return l;
        }
        long j2 = i;
        long j3 = ((j >>> 1) / j2) << 1;
        long j4 = j - (j3 * j2);
        if (j4 >= j2) {
            j4 -= j2;
            j3++;
        }
        UtilsKt.checkRadix(i);
        String l2 = Long.toString(j3, i);
        l2.getClass();
        UtilsKt.checkRadix(i);
        String l3 = Long.toString(j4, i);
        l3.getClass();
        return l2.concat(l3);
    }

    public static final ViewModel viewModel(KClass kClass, ViewModelStoreOwner viewModelStoreOwner, TalkTopicsViewModel.Factory factory, CreationExtras creationExtras, GapComposer gapComposer) {
        ViewModelProvider$Factory viewModelProvider$Factory = factory;
        if (factory == null) {
            viewModelProvider$Factory = viewModelStoreOwner instanceof HasDefaultViewModelProviderFactory ? ((HasDefaultViewModelProviderFactory) viewModelStoreOwner).getDefaultViewModelProviderFactory() : DefaultViewModelProviderFactory.INSTANCE;
        }
        viewModelProvider$Factory.getClass();
        creationExtras.getClass();
        ViewModelStore viewModelStore = viewModelStoreOwner.getViewModelStore();
        viewModelStore.getClass();
        ImageLoader$Builder imageLoader$Builder = new ImageLoader$Builder(viewModelStore, viewModelProvider$Factory, creationExtras);
        kClass.getClass();
        String qualifiedName = kClass.getQualifiedName();
        if (qualifiedName != null) {
            return imageLoader$Builder.getViewModel$lifecycle_viewmodel("androidx.lifecycle.ViewModelProvider.DefaultKey:".concat(qualifiedName), kClass);
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m("Local and anonymous classes can not be ViewModels");
        return null;
    }

    public boolean canReverse() {
        return false;
    }

    public abstract JsonSerializer createKeySerializer(SerializerProvider serializerProvider, TypeBase typeBase);

    public abstract TypeSerializerBase createTypeSerializer(SerializationConfig serializationConfig, TypeBase typeBase);

    public abstract void start();

    public abstract void stop();

    public static final float lerp(float f, float f2, float f3) {
        return (f3 * f2) + ((1.0f - f3) * f);
    }

    public void reverse() {
    }

    public static int roundToInt(float f) {
        if (!Float.isNaN(f)) {
            return Math.round(f);
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m("Cannot round NaN value.");
        return 0;
    }
}
