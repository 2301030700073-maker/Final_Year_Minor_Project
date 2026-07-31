package kotlin.uuid;

import android.content.ContentValues;
import android.content.res.ColorStateList;
import android.content.res.Configuration;
import android.graphics.Bitmap;
import android.graphics.Paint;
import android.graphics.Point;
import android.os.Build;
import android.text.Layout;
import android.text.TextDirectionHeuristic;
import android.text.TextDirectionHeuristics;
import android.text.TextPaint;
import android.text.method.PasswordTransformationMethod;
import android.view.ActionMode;
import android.view.View;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.collection.MutableIntObjectMap;
import androidx.collection.MutableObjectList;
import androidx.compose.animation.core.Animation;
import androidx.compose.foundation.gestures.Orientation;
import androidx.compose.foundation.lazy.grid.LazyGridMeasuredItem;
import androidx.compose.runtime.Composer$Companion;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.CompositionContext;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.GapRememberObserverHolder;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.composer.gapbuffer.GapAnchor;
import androidx.compose.runtime.composer.gapbuffer.SlotReader;
import androidx.compose.runtime.composer.gapbuffer.SlotWriter;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.tooling.ReaderTraceBuilder;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.AndroidImageBitmap;
import androidx.compose.ui.graphics.painter.BitmapPainter;
import androidx.compose.ui.text.android.TextLayout_androidKt;
import androidx.compose.ui.text.android.style.IndentationFixSpan_androidKt$WhenMappings;
import androidx.compose.ui.unit.DensityImpl;
import androidx.compose.ui.unit.DpKt;
import androidx.core.os.HandlerCompat$Api28Impl;
import androidx.core.os.LocaleListCompat;
import androidx.core.os.LocaleListPlatformWrapper;
import androidx.core.text.PrecomputedTextCompat;
import androidx.core.widget.AutoSizeableTextView;
import androidx.core.widget.TextViewCompat$OreoCallback;
import androidx.core.widget.TintableCompoundDrawablesView;
import androidx.glance.Applier;
import androidx.glance.Emittable;
import androidx.glance.EmittableWithChildren;
import androidx.glance.GlanceModifier;
import androidx.glance.action.Action;
import androidx.glance.action.ActionModifier;
import androidx.glance.action.LambdaAction;
import androidx.glance.appwidget.EmittableSizeBox;
import androidx.glance.appwidget.RadioButtonKt$isSelectableGroup$1;
import androidx.glance.appwidget.RemoteViewsRoot;
import androidx.glance.appwidget.SizeBoxKt$SizeBox$1$2$1;
import androidx.glance.layout.Alignment;
import androidx.glance.layout.BoxKt$Box$2$1;
import androidx.glance.layout.EmittableBox;
import androidx.glance.layout.HeightModifier;
import androidx.glance.layout.RowKt$Row$1;
import androidx.glance.layout.RowScopeImplInstance;
import androidx.glance.layout.WidthModifier;
import androidx.glance.unit.Dimension;
import androidx.navigation.Navigator;
import androidx.navigation.NavigatorProvider;
import androidx.recyclerview.widget.RecyclerView;
import androidx.room.Room;
import androidx.work.Data;
import androidx.work.Data_Kt;
import androidx.work.Logger$LogcatLogger;
import androidx.work.Operation$State;
import coil3.network.NetworkHeaders;
import coil3.network.NetworkResponse;
import coil3.util.BitmapsKt;
import coil3.util.ContextsKt$$ExternalSyntheticBUOutline0;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import java.lang.annotation.Annotation;
import java.lang.reflect.Field;
import java.lang.reflect.Member;
import java.lang.reflect.Method;
import java.util.AbstractCollection;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.UnsignedKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.collections.builders.MapBuilder;
import kotlin.collections.builders.SetBuilder;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.ReflectionFactory;
import kotlin.reflect.KClass;
import kotlin.reflect.KFunction;
import kotlin.reflect.KProperty;
import kotlin.reflect.jvm.internal.KCallableImpl;
import kotlin.reflect.jvm.internal.KPropertyImpl;
import kotlin.reflect.jvm.internal.UtilKt;
import kotlin.reflect.jvm.internal.calls.Caller;
import kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure.ReflectClassUtilKt;
import kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure.ReflectJavaAnnotation;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.LazyJavaAnnotations;
import kotlin.reflect.jvm.internal.impl.load.java.structure.JavaAnnotationOwner;
import kotlin.reflect.jvm.internal.impl.name.FqName;
import kotlin.reflect.jvm.internal.impl.protobuf.FieldSet;
import kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite;
import kotlin.reflect.jvm.internal.impl.protobuf.SmallSortedMap$1;
import kotlin.text.HexExtensionsKt;
import kotlin.text.StringsKt;
import kotlin.text.StringsKt__IndentKt;
import kotlin.uuid.UuidKt;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.SerializationException;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.internal.PrimitiveArrayDescriptor;
import okhttp3.Request;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import okio.RealBufferedSink;
import okio.RealBufferedSource;
import org.wikipedia.language.LanguageUtil;
import org.wikipedia.login.LoginClient;

/* loaded from: classes.dex */
public abstract class UuidKt {
    public static final float DisabledOpacity = 0.38f;

    /* renamed from: BitmapPainter-QZhYCtY$default, reason: not valid java name */
    public static BitmapPainter m857BitmapPainterQZhYCtY$default(AndroidImageBitmap androidImageBitmap) {
        Bitmap bitmap = androidImageBitmap.bitmap;
        BitmapPainter bitmapPainter = new BitmapPainter(androidImageBitmap, (bitmap.getWidth() << 32) | (bitmap.getHeight() & 4294967295L));
        bitmapPainter.filterQuality = 1;
        return bitmapPainter;
    }

    public static DensityImpl Density$default() {
        return new DensityImpl(1.0f, 1.0f);
    }

    public static float EOCF_sRGB(float f) {
        return f <= 0.04045f ? f / 12.92f : (float) Math.pow((f + 0.055f) / 1.055f, 2.4000000953674316d);
    }

    public static float OECF_sRGB(float f) {
        return f <= 0.0031308f ? f * 12.92f : (float) ((Math.pow(f, 0.4166666567325592d) * 1.0549999475479126d) - 0.054999999701976776d);
    }

    /* JADX WARN: Code restructure failed: missing block: B:158:0x02ba, code lost:
    
        if (r57.changed(false) != false) goto L186;
     */
    /* JADX WARN: Removed duplicated region for block: B:201:0x03a0  */
    /* JADX WARN: Removed duplicated region for block: B:212:0x03cf  */
    /* JADX WARN: Removed duplicated region for block: B:215:0x03d8  */
    /* JADX WARN: Removed duplicated region for block: B:221:0x0406  */
    /* JADX WARN: Removed duplicated region for block: B:227:0x0432  */
    /* JADX WARN: Removed duplicated region for block: B:243:0x04a6  */
    /* JADX WARN: Removed duplicated region for block: B:245:0x04ab  */
    /* JADX WARN: Removed duplicated region for block: B:253:0x04bb  */
    /* JADX WARN: Removed duplicated region for block: B:254:0x04a8  */
    /* JADX WARN: Removed duplicated region for block: B:262:0x0485  */
    /* JADX WARN: Removed duplicated region for block: B:264:0x0408  */
    /* JADX WARN: Removed duplicated region for block: B:266:0x03da  */
    /* JADX WARN: Removed duplicated region for block: B:267:0x03d1  */
    /* JADX WARN: Removed duplicated region for block: B:272:0x03a2  */
    /* renamed from: Pager-eLwUrMk, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void m858PagereLwUrMk(androidx.compose.ui.Modifier r44, androidx.compose.foundation.pager.PagerState r45, final androidx.compose.foundation.layout.PaddingValues r46, final androidx.compose.foundation.gestures.Orientation r47, final androidx.compose.foundation.gestures.snapping.SnapFlingBehavior r48, final boolean r49, final androidx.compose.foundation.AndroidEdgeEffectOverscrollEffect r50, int r51, final androidx.compose.foundation.pager.PageSize$Fill r52, androidx.compose.ui.input.nestedscroll.NestedScrollConnection r53, final androidx.compose.ui.BiasAlignment.Vertical r54, final androidx.compose.foundation.gestures.snapping.SnapPosition$Start r55, final androidx.compose.runtime.internal.ComposableLambdaImpl r56, androidx.compose.runtime.GapComposer r57, final int r58, final int r59) {
        /*
            Method dump skipped, instructions count: 1318
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.uuid.UuidKt.m858PagereLwUrMk(androidx.compose.ui.Modifier, androidx.compose.foundation.pager.PagerState, androidx.compose.foundation.layout.PaddingValues, androidx.compose.foundation.gestures.Orientation, androidx.compose.foundation.gestures.snapping.SnapFlingBehavior, boolean, androidx.compose.foundation.AndroidEdgeEffectOverscrollEffect, int, androidx.compose.foundation.pager.PageSize$Fill, androidx.compose.ui.input.nestedscroll.NestedScrollConnection, androidx.compose.ui.BiasAlignment$Vertical, androidx.compose.foundation.gestures.snapping.SnapPosition$Start, androidx.compose.runtime.internal.ComposableLambdaImpl, androidx.compose.runtime.GapComposer, int, int):void");
    }

    /* renamed from: Row-lMAjyxE, reason: not valid java name */
    public static final void m859RowlMAjyxE(GlanceModifier glanceModifier, int i, int i2, final ComposableLambdaImpl composableLambdaImpl, GapComposer gapComposer, final int i3, final int i4) {
        int i5;
        gapComposer.startRestartGroup(-1618370649);
        int i6 = i4 & 1;
        if (i6 != 0) {
            i5 = i3 | 6;
        } else if ((i3 & 6) == 0) {
            i5 = (gapComposer.changed(glanceModifier) ? 4 : 2) | i3;
        } else {
            i5 = i3;
        }
        int i7 = i4 & 2;
        if (i7 != 0) {
            i5 |= 48;
        } else if ((i3 & 48) == 0) {
            i5 |= gapComposer.changed(i) ? 32 : 16;
        }
        int i8 = i4 & 4;
        if (i8 != 0) {
            i5 |= 384;
        } else if ((i3 & 384) == 0) {
            i5 |= gapComposer.changed(i2) ? 256 : 128;
        }
        if ((i3 & 3072) == 0) {
            i5 |= gapComposer.changed(composableLambdaImpl) ? 2048 : 1024;
        }
        if ((i5 & 1171) == 1170 && gapComposer.getSkipping()) {
            gapComposer.skipToGroupEnd();
        } else {
            if (i6 != 0) {
                glanceModifier = GlanceModifier.Companion.$$INSTANCE;
            }
            if (i7 != 0) {
                i = 0;
            }
            if (i8 != 0) {
                i2 = 0;
            }
            RowKt$Row$1 rowKt$Row$1 = RowKt$Row$1.INSTANCE;
            gapComposer.startReplaceableGroup(578571862);
            gapComposer.startReplaceableGroup(-548224868);
            if (!(gapComposer.applier instanceof Applier)) {
                Updater.invalidApplier();
                throw null;
            }
            gapComposer.startNode();
            if (gapComposer.inserting) {
                gapComposer.createNode(rowKt$Row$1);
            } else {
                gapComposer.useNode();
            }
            Updater.m327setimpl(gapComposer, glanceModifier, BoxKt$Box$2$1.INSTANCE$5);
            Updater.m327setimpl(gapComposer, new Alignment.Vertical(i2), BoxKt$Box$2$1.INSTANCE$6);
            Updater.m327setimpl(gapComposer, new Alignment.Horizontal(i), BoxKt$Box$2$1.INSTANCE$7);
            composableLambdaImpl.invoke(RowScopeImplInstance.INSTANCE, gapComposer, Integer.valueOf(((i5 >> 6) & 112) | 6));
            gapComposer.end(true);
            gapComposer.end(false);
            gapComposer.end(false);
        }
        final GlanceModifier glanceModifier2 = glanceModifier;
        final int i9 = i;
        final int i10 = i2;
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new Function2() { // from class: androidx.glance.layout.RowKt$Row$4
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(2);
                }

                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    ((Number) obj2).intValue();
                    UuidKt.m859RowlMAjyxE(GlanceModifier.this, i9, i10, composableLambdaImpl, (GapComposer) obj, i3 | 1, i4);
                    return Unit.INSTANCE;
                }
            };
        }
    }

    public static SetBuilder build(SetBuilder setBuilder) {
        MapBuilder mapBuilder = setBuilder.backing;
        mapBuilder.build();
        return mapBuilder.size > 0 ? setBuilder : SetBuilder.Empty;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v2, types: [androidx.compose.runtime.tooling.ComposeStackTraceBuilder, androidx.compose.runtime.tooling.ReaderTraceBuilder] */
    /* JADX WARN: Type inference failed for: r6v0, types: [java.lang.Integer] */
    /* JADX WARN: Type inference failed for: r6v1 */
    /* JADX WARN: Type inference failed for: r6v2, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r6v3, types: [androidx.compose.runtime.composer.gapbuffer.GapAnchor] */
    /* JADX WARN: Type inference failed for: r6v7, types: [java.lang.Integer] */
    public static final List buildTrace(SlotWriter slotWriter, Integer num, int i, Integer num2) {
        int i2;
        int groupKey;
        MutableObjectList mutableObjectList;
        if (slotWriter.closed || slotWriter.getSize$runtime() == 0) {
            return EmptyList.INSTANCE;
        }
        ?? readerTraceBuilder = new ReaderTraceBuilder(slotWriter);
        if (num2 != null) {
            i2 = num2.intValue();
        } else {
            i2 = slotWriter.parent;
            if (i2 < 0) {
                i2 = slotWriter.parent(slotWriter.groups, i);
            }
        }
        if (num == 0) {
            int slotIndex = slotWriter.currentSlot - slotWriter.slotIndex(slotWriter.groups, slotWriter.groupIndexToAddress(i));
            MutableIntObjectMap mutableIntObjectMap = slotWriter.deferredSlotWrites;
            num = Integer.valueOf(slotIndex + ((mutableIntObjectMap == null || (mutableObjectList = (MutableObjectList) mutableIntObjectMap.get(i)) == null) ? 0 : mutableObjectList._size));
        }
        int groupIndexToAddress = slotWriter.groupIndexToAddress(i) * 5;
        int[] iArr = slotWriter.groups;
        if (groupIndexToAddress < iArr.length) {
            groupKey = slotWriter.groupKey(i);
        } else {
            int parent = i2 >= 0 ? slotWriter.parent(iArr, i2) : i2;
            groupKey = slotWriter.groupKey(i2);
            int i3 = i2;
            i2 = parent;
            i = i3;
        }
        while (i >= 0) {
            readerTraceBuilder.processEdge(groupKey, (slotWriter.groups[(slotWriter.groupIndexToAddress(i) * 5) + 1] & 536870912) != 0 ? slotWriter.groupObjectKey(i) : Composer$Companion.Empty, slotWriter.sourceInformationOf$runtime(i), num);
            num = slotWriter.anchor(i);
            if (i2 >= 0) {
                int parent2 = slotWriter.parent(slotWriter.groups, i2);
                groupKey = slotWriter.groupKey(i2);
                int i4 = i2;
                i2 = parent2;
                i = i4;
            } else {
                i = i2;
            }
        }
        return readerTraceBuilder._trace;
    }

    public static final ContentValues contentValuesOf(Pair... pairArr) {
        ContentValues contentValues = new ContentValues(pairArr.length);
        for (Pair pair : pairArr) {
            String str = (String) pair.first;
            Object obj = pair.second;
            if (obj == null) {
                contentValues.putNull(str);
            } else if (obj instanceof String) {
                contentValues.put(str, (String) obj);
            } else if (obj instanceof Integer) {
                contentValues.put(str, (Integer) obj);
            } else if (obj instanceof Long) {
                contentValues.put(str, (Long) obj);
            } else if (obj instanceof Boolean) {
                contentValues.put(str, (Boolean) obj);
            } else if (obj instanceof Float) {
                contentValues.put(str, (Float) obj);
            } else if (obj instanceof Double) {
                contentValues.put(str, (Double) obj);
            } else if (obj instanceof byte[]) {
                contentValues.put(str, (byte[]) obj);
            } else if (obj instanceof Byte) {
                contentValues.put(str, (Byte) obj);
            } else {
                if (!(obj instanceof Short)) {
                    _UtilJvmKt$$ExternalSyntheticLambda0.m(Modifier.CC.m("Illegal value type ", obj.getClass().getCanonicalName(), " for key \"", str, "\""));
                    return null;
                }
                contentValues.put(str, (Short) obj);
            }
        }
        return contentValues;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static long[] convertToLongArray(Serializable serializable) {
        if (!(serializable instanceof int[])) {
            if (serializable instanceof long[]) {
                return (long[]) serializable;
            }
            return null;
        }
        int[] iArr = (int[]) serializable;
        long[] jArr = new long[iArr.length];
        for (int i = 0; i < iArr.length; i++) {
            jArr[i] = iArr[i];
        }
        return jArr;
    }

    /* JADX WARN: Code restructure failed: missing block: B:27:0x0022, code lost:
    
        if (r1 <= r2) goto L10;
     */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0056  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x005f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static kotlin.reflect.jvm.internal.impl.serialization.deserialization.builtins.BuiltInsPackageFragmentImpl create(kotlin.reflect.jvm.internal.impl.name.FqName r7, kotlin.reflect.jvm.internal.impl.storage.LockBasedStorageManager r8, kotlin.reflect.jvm.internal.impl.descriptors.ModuleDescriptor r9, java.io.InputStream r10) {
        /*
            r7.getClass()
            r9.getClass()
            kotlin.reflect.jvm.internal.impl.metadata.builtins.BuiltInsBinaryVersion r0 = kotlin.reflect.jvm.internal.impl.metadata.builtins.BuiltInsBinaryVersion.INSTANCE     // Catch: java.lang.Throwable -> L4c
            kotlin.reflect.jvm.internal.impl.metadata.builtins.BuiltInsBinaryVersion r6 = kotlin.text.UStringsKt.readFrom(r10)     // Catch: java.lang.Throwable -> L4c
            kotlin.reflect.jvm.internal.impl.metadata.builtins.BuiltInsBinaryVersion r0 = kotlin.reflect.jvm.internal.impl.metadata.builtins.BuiltInsBinaryVersion.INSTANCE     // Catch: java.lang.Throwable -> L4c
            int r1 = r6.minor     // Catch: java.lang.Throwable -> L4c
            r0.getClass()     // Catch: java.lang.Throwable -> L4c
            int r2 = r0.minor     // Catch: java.lang.Throwable -> L4c
            int r3 = r6.major     // Catch: java.lang.Throwable -> L4c
            int r4 = r0.major     // Catch: java.lang.Throwable -> L4c
            if (r3 != 0) goto L20
            if (r4 != 0) goto L4f
            if (r1 != r2) goto L4f
            goto L24
        L20:
            if (r3 != r4) goto L4f
            if (r1 > r2) goto L4f
        L24:
            kotlin.reflect.jvm.internal.impl.protobuf.ExtensionRegistryLite r1 = new kotlin.reflect.jvm.internal.impl.protobuf.ExtensionRegistryLite     // Catch: java.lang.Throwable -> L4c
            r1.<init>()     // Catch: java.lang.Throwable -> L4c
            kotlin.reflect.jvm.internal.impl.metadata.builtins.BuiltInsProtoBuf.registerAllExtensions(r1)     // Catch: java.lang.Throwable -> L4c
            kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Type$1 r2 = kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$PackageFragment.PARSER     // Catch: java.lang.Throwable -> L4c
            r2.getClass()     // Catch: java.lang.Throwable -> L4c
            kotlin.reflect.jvm.internal.impl.protobuf.CodedInputStream r3 = new kotlin.reflect.jvm.internal.impl.protobuf.CodedInputStream     // Catch: java.lang.Throwable -> L4c
            r3.<init>(r10)     // Catch: java.lang.Throwable -> L4c
            java.lang.Object r1 = r2.parsePartialFrom(r3, r1)     // Catch: java.lang.Throwable -> L4c
            kotlin.reflect.jvm.internal.impl.protobuf.AbstractMessageLite r1 = (kotlin.reflect.jvm.internal.impl.protobuf.AbstractMessageLite) r1     // Catch: java.lang.Throwable -> L4c
            r2 = 0
            r3.checkLastTagWas(r2)     // Catch: kotlin.reflect.jvm.internal.impl.protobuf.InvalidProtocolBufferException -> L47 java.lang.Throwable -> L4c
            kotlin.reflect.jvm.internal.impl.protobuf.AbstractParser.checkMessageInitialized(r1)     // Catch: java.lang.Throwable -> L4c
            kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$PackageFragment r1 = (kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$PackageFragment) r1     // Catch: java.lang.Throwable -> L4c
        L45:
            r5 = r1
            goto L51
        L47:
            r0 = move-exception
            r7 = r0
            r7.unfinishedMessage = r1     // Catch: java.lang.Throwable -> L4c
            throw r7     // Catch: java.lang.Throwable -> L4c
        L4c:
            r0 = move-exception
            r7 = r0
            goto L80
        L4f:
            r1 = 0
            goto L45
        L51:
            r10.close()
            if (r5 == 0) goto L5f
            kotlin.reflect.jvm.internal.impl.serialization.deserialization.builtins.BuiltInsPackageFragmentImpl r1 = new kotlin.reflect.jvm.internal.impl.serialization.deserialization.builtins.BuiltInsPackageFragmentImpl
            r2 = r7
            r3 = r8
            r4 = r9
            r1.<init>(r2, r3, r4, r5, r6)
            return r1
        L5f:
            java.lang.UnsupportedOperationException r7 = new java.lang.UnsupportedOperationException
            java.lang.StringBuilder r8 = new java.lang.StringBuilder
            java.lang.String r9 = "Kotlin built-in definition format version is not supported: expected "
            r8.<init>(r9)
            r8.append(r0)
            java.lang.String r9 = ", actual "
            r8.append(r9)
            r8.append(r6)
            java.lang.String r9 = ". Please update Kotlin"
            r8.append(r9)
            java.lang.String r8 = r8.toString()
            r7.<init>(r8)
            throw r7
        L80:
            throw r7     // Catch: java.lang.Throwable -> L81
        L81:
            r0 = move-exception
            r8 = r0
            kotlin.ResultKt.closeFinally(r10, r7)
            throw r8
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.uuid.UuidKt.create(kotlin.reflect.jvm.internal.impl.name.FqName, kotlin.reflect.jvm.internal.impl.storage.LockBasedStorageManager, kotlin.reflect.jvm.internal.impl.descriptors.ModuleDescriptor, java.io.InputStream):kotlin.reflect.jvm.internal.impl.serialization.deserialization.builtins.BuiltInsPackageFragmentImpl");
    }

    public static final long currentThreadId() {
        return Thread.currentThread().getId();
    }

    public static final boolean defaultValueEqualsCommon(String str, String str2) {
        str.getClass();
        if (str.equals(str2)) {
            return true;
        }
        if (str.length() != 0) {
            int i = 0;
            int i2 = 0;
            int i3 = 0;
            while (true) {
                if (i < str.length()) {
                    char charAt = str.charAt(i);
                    int i4 = i3 + 1;
                    if (i3 == 0 && charAt != '(') {
                        break;
                    }
                    if (charAt == '(') {
                        i2++;
                    } else if (charAt == ')' && i2 - 1 == 0 && i3 != str.length() - 1) {
                        break;
                    }
                    i++;
                    i3 = i4;
                } else if (i2 == 0) {
                    return Intrinsics.areEqual(StringsKt.trim(str.substring(1, str.length() - 1)).toString(), str2);
                }
            }
        }
        return false;
    }

    public static int evaluate(int i, float f, int i2) {
        if (i == i2 || f <= RecyclerView.DECELERATION_RATE) {
            return i;
        }
        if (f >= 1.0f) {
            return i2;
        }
        float f2 = ((i >> 24) & 255) / 255.0f;
        float f3 = ((i2 >> 24) & 255) / 255.0f;
        float EOCF_sRGB = EOCF_sRGB(((i >> 16) & 255) / 255.0f);
        float EOCF_sRGB2 = EOCF_sRGB(((i >> 8) & 255) / 255.0f);
        float EOCF_sRGB3 = EOCF_sRGB((i & 255) / 255.0f);
        float EOCF_sRGB4 = EOCF_sRGB(((i2 >> 16) & 255) / 255.0f);
        float EOCF_sRGB5 = EOCF_sRGB(((i2 >> 8) & 255) / 255.0f);
        float EOCF_sRGB6 = EOCF_sRGB((i2 & 255) / 255.0f);
        float m = Animation.CC.m(f3, f2, f, f2);
        float m2 = Animation.CC.m(EOCF_sRGB4, EOCF_sRGB, f, EOCF_sRGB);
        float m3 = Animation.CC.m(EOCF_sRGB5, EOCF_sRGB2, f, EOCF_sRGB2);
        float m4 = Animation.CC.m(EOCF_sRGB6, EOCF_sRGB3, f, EOCF_sRGB3);
        float OECF_sRGB = OECF_sRGB(m2) * 255.0f;
        float OECF_sRGB2 = OECF_sRGB(m3) * 255.0f;
        return Math.round(OECF_sRGB(m4) * 255.0f) | (Math.round(OECF_sRGB) << 16) | (Math.round(m * 255.0f) << 24) | (Math.round(OECF_sRGB2) << 8);
    }

    public static final ReflectJavaAnnotation findAnnotation(Annotation[] annotationArr, FqName fqName) {
        Annotation annotation;
        annotationArr.getClass();
        fqName.getClass();
        int length = annotationArr.length;
        int i = 0;
        while (true) {
            if (i >= length) {
                annotation = null;
                break;
            }
            annotation = annotationArr[i];
            if (ReflectClassUtilKt.getClassId(UnsignedKt.getJavaClass(UnsignedKt.getAnnotationClass(annotation))).asSingleFqName().equals(fqName)) {
                break;
            }
            i++;
        }
        if (annotation != null) {
            return new ReflectJavaAnnotation(annotation);
        }
        return null;
    }

    public static final Integer findSubcompositionContextGroup$lambda$0$scanGroup(SlotReader slotReader, CompositionContext compositionContext, int i, int i2) {
        Integer findSubcompositionContextGroup$lambda$0$scanGroup;
        int[] iArr = slotReader.groups;
        while (true) {
            if (i >= i2) {
                return null;
            }
            int i3 = iArr[(i * 5) + 3] + i;
            if (slotReader.hasMark(i) && slotReader.groupKey(i) == 206 && Intrinsics.areEqual(slotReader.objectKey(iArr, i), ComposerKt.reference)) {
                Object groupGet = slotReader.groupGet(i, 0);
                GapRememberObserverHolder gapRememberObserverHolder = groupGet instanceof GapRememberObserverHolder ? (GapRememberObserverHolder) groupGet : null;
                Object obj = gapRememberObserverHolder != null ? gapRememberObserverHolder.wrapped : null;
                GapComposer.CompositionContextHolder compositionContextHolder = obj instanceof GapComposer.CompositionContextHolder ? (GapComposer.CompositionContextHolder) obj : null;
                if (compositionContextHolder != null && compositionContextHolder.ref == compositionContext) {
                    return Integer.valueOf(i);
                }
            }
            if (slotReader.containsMark(i) && (findSubcompositionContextGroup$lambda$0$scanGroup = findSubcompositionContextGroup$lambda$0$scanGroup(slotReader, compositionContext, i + 1, i3)) != null) {
                return Integer.valueOf(findSubcompositionContextGroup$lambda$0$scanGroup.intValue());
            }
            i = i3;
        }
    }

    public static final void formatBytesInto(long j, byte[] bArr, int i, int i2, int i3) {
        int i4 = 7 - i2;
        int i5 = 8 - i3;
        if (i5 > i4) {
            return;
        }
        while (true) {
            int i6 = HexExtensionsKt.BYTE_TO_LOWER_CASE_HEX_DIGITS[(int) ((j >> (i4 << 3)) & 255)];
            int i7 = i + 1;
            bArr[i] = (byte) (i6 >> 8);
            i += 2;
            bArr[i7] = (byte) i6;
            if (i4 == i5) {
                return;
            } else {
                i4--;
            }
        }
    }

    public static final String formatString(Collection collection) {
        return !collection.isEmpty() ? StringsKt__IndentKt.prependIndent(CollectionsKt.joinToString$default(collection, ",\n", "\n", "\n", null, 56), "    ").concat("},") : " }";
    }

    public static Data fromByteArray(byte[] bArr) {
        bArr.getClass();
        if (bArr.length > 10240) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$1("Data cannot occupy more than 10240 bytes when serialized");
            return null;
        }
        if (bArr.length == 0) {
            return Data.EMPTY;
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        try {
            ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(bArr);
            byte[] bArr2 = new byte[2];
            byteArrayInputStream.read(bArr2);
            int i = 0;
            boolean z = bArr2[0] == -84 && bArr2[1] == -19;
            byteArrayInputStream.reset();
            if (z) {
                ObjectInputStream objectInputStream = new ObjectInputStream(byteArrayInputStream);
                try {
                    int readInt = objectInputStream.readInt();
                    while (i < readInt) {
                        linkedHashMap.put(objectInputStream.readUTF(), objectInputStream.readObject());
                        i++;
                    }
                    objectInputStream.close();
                } finally {
                }
            } else {
                DataInputStream dataInputStream = new DataInputStream(byteArrayInputStream);
                try {
                    short readShort = dataInputStream.readShort();
                    if (readShort == -21521) {
                        short readShort2 = dataInputStream.readShort();
                        if (readShort2 != 1) {
                            ContextsKt$$ExternalSyntheticBUOutline0.m791m((Object) Animation.CC.m(readShort2, "Unsupported version number: "));
                        }
                    } else {
                        ContextsKt$$ExternalSyntheticBUOutline0.m791m((Object) Animation.CC.m(readShort, "Magic number doesn't match: "));
                    }
                    int readInt2 = dataInputStream.readInt();
                    while (i < readInt2) {
                        linkedHashMap.put(dataInputStream.readUTF(), fromByteArray$readValue(dataInputStream, dataInputStream.readByte()));
                        i++;
                    }
                    dataInputStream.close();
                } finally {
                }
            }
        } catch (IOException e) {
            Logger$LogcatLogger.get().error(Data_Kt.TAG, "Error in Data#fromByteArray: ", e);
        } catch (ClassNotFoundException e2) {
            Logger$LogcatLogger.get().error(Data_Kt.TAG, "Error in Data#fromByteArray: ", e2);
        }
        return new Data(linkedHashMap);
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [java.io.Serializable, java.lang.Double[]] */
    /* JADX WARN: Type inference failed for: r0v2, types: [java.io.Serializable, java.lang.Float[]] */
    /* JADX WARN: Type inference failed for: r0v3, types: [java.io.Serializable, java.lang.Long[]] */
    /* JADX WARN: Type inference failed for: r0v4, types: [java.io.Serializable, java.lang.Integer[]] */
    /* JADX WARN: Type inference failed for: r0v5, types: [java.io.Serializable, java.lang.Byte[]] */
    /* JADX WARN: Type inference failed for: r0v6, types: [java.io.Serializable, java.lang.Boolean[]] */
    /* JADX WARN: Type inference failed for: r1v14, types: [java.io.Serializable, java.lang.String[]] */
    public static final Serializable fromByteArray$readValue(DataInputStream dataInputStream, byte b) {
        if (b == 0) {
            return null;
        }
        if (b == 1) {
            return Boolean.valueOf(dataInputStream.readBoolean());
        }
        if (b == 2) {
            return Byte.valueOf(dataInputStream.readByte());
        }
        if (b == 3) {
            return Integer.valueOf(dataInputStream.readInt());
        }
        if (b == 4) {
            return Long.valueOf(dataInputStream.readLong());
        }
        if (b == 5) {
            return Float.valueOf(dataInputStream.readFloat());
        }
        if (b == 6) {
            return Double.valueOf(dataInputStream.readDouble());
        }
        if (b == 7) {
            return dataInputStream.readUTF();
        }
        int i = 0;
        if (b == 8) {
            int readInt = dataInputStream.readInt();
            ?? r0 = new Boolean[readInt];
            while (i < readInt) {
                r0[i] = Boolean.valueOf(dataInputStream.readBoolean());
                i++;
            }
            return r0;
        }
        if (b == 9) {
            int readInt2 = dataInputStream.readInt();
            ?? r02 = new Byte[readInt2];
            while (i < readInt2) {
                r02[i] = Byte.valueOf(dataInputStream.readByte());
                i++;
            }
            return r02;
        }
        if (b == 10) {
            int readInt3 = dataInputStream.readInt();
            ?? r03 = new Integer[readInt3];
            while (i < readInt3) {
                r03[i] = Integer.valueOf(dataInputStream.readInt());
                i++;
            }
            return r03;
        }
        if (b == 11) {
            int readInt4 = dataInputStream.readInt();
            ?? r04 = new Long[readInt4];
            while (i < readInt4) {
                r04[i] = Long.valueOf(dataInputStream.readLong());
                i++;
            }
            return r04;
        }
        if (b == 12) {
            int readInt5 = dataInputStream.readInt();
            ?? r05 = new Float[readInt5];
            while (i < readInt5) {
                r05[i] = Float.valueOf(dataInputStream.readFloat());
                i++;
            }
            return r05;
        }
        if (b == 13) {
            int readInt6 = dataInputStream.readInt();
            ?? r06 = new Double[readInt6];
            while (i < readInt6) {
                r06[i] = Double.valueOf(dataInputStream.readDouble());
                i++;
            }
            return r06;
        }
        if (b != 14) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$1(Animation.CC.m(b, "Unsupported type "));
            return null;
        }
        int readInt7 = dataInputStream.readInt();
        ?? r1 = new String[readInt7];
        while (i < readInt7) {
            String readUTF = dataInputStream.readUTF();
            if (Intrinsics.areEqual(readUTF, "androidx.work.Data-95ed6082-b8e9-46e8-a73f-ff56f00f5d9d")) {
                readUTF = null;
            }
            r1[i] = readUTF;
            i++;
        }
        return r1;
    }

    public static final ArrayList getAnnotations(Annotation[] annotationArr) {
        annotationArr.getClass();
        ArrayList arrayList = new ArrayList(annotationArr.length);
        for (Annotation annotation : annotationArr) {
            arrayList.add(new ReflectJavaAnnotation(annotation));
        }
        return arrayList;
    }

    public static final float getEllipsizedLeftPadding(Layout layout, int i, Paint paint) {
        float abs;
        float width;
        float lineLeft = layout.getLineLeft(i);
        ThreadLocal threadLocal = TextLayout_androidKt.SharedTextAndroidCanvas;
        if (layout.getEllipsisCount(i) <= 0 || layout.getParagraphDirection(i) != 1 || lineLeft >= RecyclerView.DECELERATION_RATE) {
            return RecyclerView.DECELERATION_RATE;
        }
        float measureText = paint.measureText("…") + (layout.getPrimaryHorizontal(layout.getEllipsisStart(i) + layout.getLineStart(i)) - lineLeft);
        Layout.Alignment paragraphAlignment = layout.getParagraphAlignment(i);
        if ((paragraphAlignment == null ? -1 : IndentationFixSpan_androidKt$WhenMappings.$EnumSwitchMapping$0[paragraphAlignment.ordinal()]) == 1) {
            abs = Math.abs(lineLeft);
            width = (layout.getWidth() - measureText) / 2.0f;
        } else {
            abs = Math.abs(lineLeft);
            width = layout.getWidth() - measureText;
        }
        return width + abs;
    }

    public static final float getEllipsizedRightPadding(Layout layout, int i, Paint paint) {
        float width;
        float width2;
        ThreadLocal threadLocal = TextLayout_androidKt.SharedTextAndroidCanvas;
        if (layout.getEllipsisCount(i) <= 0) {
            return RecyclerView.DECELERATION_RATE;
        }
        if (layout.getParagraphDirection(i) != -1 || layout.getWidth() >= layout.getLineRight(i)) {
            return RecyclerView.DECELERATION_RATE;
        }
        float measureText = paint.measureText("…") + (layout.getLineRight(i) - layout.getPrimaryHorizontal(layout.getEllipsisStart(i) + layout.getLineStart(i)));
        Layout.Alignment paragraphAlignment = layout.getParagraphAlignment(i);
        if ((paragraphAlignment != null ? IndentationFixSpan_androidKt$WhenMappings.$EnumSwitchMapping$0[paragraphAlignment.ordinal()] : -1) == 1) {
            width = layout.getWidth() - layout.getLineRight(i);
            width2 = (layout.getWidth() - measureText) / 2.0f;
        } else {
            width = layout.getWidth() - layout.getLineRight(i);
            width2 = layout.getWidth() - measureText;
        }
        return width - width2;
    }

    public static final Object getExtensionOrNull(GeneratedMessageLite.ExtendableMessage extendableMessage, GeneratedMessageLite.GeneratedExtension generatedExtension, int i) {
        extendableMessage.getClass();
        extendableMessage.verifyExtensionContainingType(generatedExtension);
        FieldSet fieldSet = extendableMessage.extensions;
        GeneratedMessageLite.ExtensionDescriptor extensionDescriptor = generatedExtension.descriptor;
        fieldSet.getClass();
        SmallSortedMap$1 smallSortedMap$1 = fieldSet.fields;
        if (!extensionDescriptor.isRepeated) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m("getRepeatedField() can only be called on repeated fields.");
            return null;
        }
        Object obj = smallSortedMap$1.get(extensionDescriptor);
        if (i < (obj == null ? 0 : ((List) obj).size())) {
            extendableMessage.verifyExtensionContainingType(generatedExtension);
            if (extensionDescriptor.isRepeated) {
                Object obj2 = smallSortedMap$1.get(extensionDescriptor);
                if (obj2 != null) {
                    return generatedExtension.singularFromFieldSetType(((List) obj2).get(i));
                }
                throw new IndexOutOfBoundsException();
            }
            _UtilJvmKt$$ExternalSyntheticLambda0.m("getRepeatedField() can only be called on repeated fields.");
        }
        return null;
    }

    public static final Field getJavaField(KProperty kProperty) {
        kProperty.getClass();
        KPropertyImpl asKPropertyImpl = UtilKt.asKPropertyImpl(kProperty);
        if (asKPropertyImpl != null) {
            return (Field) asKPropertyImpl._javaField.getValue();
        }
        return null;
    }

    public static final Method getJavaMethod(KFunction kFunction) {
        Caller caller;
        kFunction.getClass();
        KCallableImpl asKCallableImpl = UtilKt.asKCallableImpl(kFunction);
        Member member = (asKCallableImpl == null || (caller = asKCallableImpl.getCaller()) == null) ? null : caller.getMember();
        if (member instanceof Method) {
            return (Method) member;
        }
        return null;
    }

    public static LocaleListCompat getLocales(Configuration configuration) {
        return Build.VERSION.SDK_INT >= 24 ? new LocaleListCompat(new LocaleListPlatformWrapper(LanguageUtil.getLocales(configuration))) : LocaleListCompat.create(configuration.locale);
    }

    public static String getNameForNavigator$navigation_common_release(Class cls) {
        LinkedHashMap linkedHashMap = NavigatorProvider.annotationNames;
        String str = (String) linkedHashMap.get(cls);
        if (str == null) {
            Navigator.Name name = (Navigator.Name) cls.getAnnotation(Navigator.Name.class);
            str = name != null ? name.value() : null;
            if (str == null || str.length() <= 0) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m((Object) "No @Navigator.Name annotation found for ".concat(cls.getSimpleName()));
                return null;
            }
            linkedHashMap.put(cls, str);
        }
        str.getClass();
        return str;
    }

    public static PrecomputedTextCompat.Params getTextMetricsParams(AppCompatTextView appCompatTextView) {
        int i = Build.VERSION.SDK_INT;
        if (i >= 28) {
            return new PrecomputedTextCompat.Params(HandlerCompat$Api28Impl.getTextMetricsParams(appCompatTextView));
        }
        TextPaint textPaint = new TextPaint(appCompatTextView.getPaint());
        TextDirectionHeuristic textDirectionHeuristic = TextDirectionHeuristics.FIRSTSTRONG_LTR;
        int breakStrategy = appCompatTextView.getBreakStrategy();
        int hyphenationFrequency = appCompatTextView.getHyphenationFrequency();
        if (appCompatTextView.getTransformationMethod() instanceof PasswordTransformationMethod) {
            textDirectionHeuristic = TextDirectionHeuristics.LTR;
        } else {
            if (i < 28 || (appCompatTextView.getInputType() & 15) != 3) {
                boolean z = appCompatTextView.getLayoutDirection() == 1;
                switch (appCompatTextView.getTextDirection()) {
                    case 2:
                        textDirectionHeuristic = TextDirectionHeuristics.ANYRTL_LTR;
                        break;
                    case 3:
                        textDirectionHeuristic = TextDirectionHeuristics.LTR;
                        break;
                    case 4:
                        textDirectionHeuristic = TextDirectionHeuristics.RTL;
                        break;
                    case 5:
                        textDirectionHeuristic = TextDirectionHeuristics.LOCALE;
                        break;
                    case 6:
                        break;
                    case 7:
                        textDirectionHeuristic = TextDirectionHeuristics.FIRSTSTRONG_RTL;
                        break;
                    default:
                        if (z) {
                            textDirectionHeuristic = TextDirectionHeuristics.FIRSTSTRONG_RTL;
                            break;
                        }
                        break;
                }
            } else {
                byte directionality = Character.getDirectionality(HandlerCompat$Api28Impl.getDigitStrings(LanguageUtil.getInstance(appCompatTextView.getTextLocale()))[0].codePointAt(0));
                textDirectionHeuristic = (directionality == 1 || directionality == 2) ? TextDirectionHeuristics.RTL : TextDirectionHeuristics.LTR;
            }
        }
        return new PrecomputedTextCompat.Params(textPaint, textDirectionHeuristic, breakStrategy, hyphenationFrequency);
    }

    public static final /* synthetic */ Point getViewPointOnScreen(View view) {
        view.getClass();
        int[] iArr = {0, 0};
        view.getLocationOnScreen(iArr);
        return new Point(iArr[0] + ((int) view.getTranslationX()), iArr[1] + ((int) view.getTranslationY()));
    }

    public static final String joinToStringEndWithIndent(Collection collection) {
        return StringsKt__IndentKt.prependIndent(CollectionsKt.joinToString$default(collection, ",", null, null, null, 62), "    ").concat(StringsKt__IndentKt.prependIndent(" }", "    "));
    }

    public static final String joinToStringMiddleWithIndent(Collection collection) {
        return StringsKt__IndentKt.prependIndent(CollectionsKt.joinToString$default(collection, ",", null, null, null, 62), "    ").concat(StringsKt__IndentKt.prependIndent("},", "    "));
    }

    public static float lerp(float f, float f2, float f3) {
        return (f3 * f2) + ((1.0f - f3) * f);
    }

    public static Set minus(Set set, AbstractCollection abstractCollection) {
        Collection<?> convertToListIfNotCollection = CollectionsKt.convertToListIfNotCollection(abstractCollection);
        if (convertToListIfNotCollection.isEmpty()) {
            return CollectionsKt.toSet(set);
        }
        if (!(convertToListIfNotCollection instanceof Set)) {
            LinkedHashSet linkedHashSet = new LinkedHashSet(set);
            linkedHashSet.removeAll(convertToListIfNotCollection);
            return linkedHashSet;
        }
        LinkedHashSet linkedHashSet2 = new LinkedHashSet();
        for (Object obj : set) {
            if (!((Set) convertToListIfNotCollection).contains(obj)) {
                linkedHashSet2.add(obj);
            }
        }
        return linkedHashSet2;
    }

    public static final void normalizeCompositionTree(RemoteViewsRoot remoteViewsRoot) {
        ArrayList arrayList = remoteViewsRoot.children;
        if (!arrayList.isEmpty()) {
            if (!arrayList.isEmpty()) {
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    if (!(((Emittable) it.next()) instanceof EmittableSizeBox)) {
                    }
                }
            }
            Iterator it2 = arrayList.iterator();
            while (it2.hasNext()) {
                Emittable emittable = (Emittable) it2.next();
                emittable.getClass();
                ArrayList arrayList2 = ((EmittableSizeBox) emittable).children;
                if (arrayList2.size() != 1) {
                    EmittableBox emittableBox = new EmittableBox();
                    CollectionsKt.addAll(emittableBox.children, arrayList2);
                    arrayList2.clear();
                    arrayList2.add(emittableBox);
                }
            }
            normalizeSizes(remoteViewsRoot);
            transformTree(remoteViewsRoot);
        }
        if (arrayList.size() != 1) {
            EmittableBox emittableBox2 = new EmittableBox();
            CollectionsKt.addAll(emittableBox2.children, arrayList);
            arrayList.clear();
            arrayList.add(emittableBox2);
        }
        normalizeSizes(remoteViewsRoot);
        transformTree(remoteViewsRoot);
    }

    public static final void normalizeSizes(EmittableWithChildren emittableWithChildren) {
        ArrayList arrayList = emittableWithChildren.children;
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            Emittable emittable = (Emittable) it.next();
            if (emittable instanceof EmittableWithChildren) {
                normalizeSizes((EmittableWithChildren) emittable);
            }
        }
        HeightModifier heightModifier = (HeightModifier) emittableWithChildren.getModifier().foldIn(null, SizeBoxKt$SizeBox$1$2$1.INSTANCE$12);
        Dimension dimension = Dimension.Wrap.INSTANCE;
        if (((heightModifier != null ? heightModifier.height : dimension) instanceof Dimension.Wrap) && !arrayList.isEmpty()) {
            Iterator it2 = arrayList.iterator();
            while (true) {
                if (!it2.hasNext()) {
                    break;
                }
                HeightModifier heightModifier2 = (HeightModifier) ((Emittable) it2.next()).getModifier().foldIn(null, SizeBoxKt$SizeBox$1$2$1.INSTANCE$14);
                if ((heightModifier2 != null ? heightModifier2.height : null) instanceof Dimension.Fill) {
                    emittableWithChildren.setModifier(emittableWithChildren.getModifier().then(new HeightModifier(Dimension.Fill.INSTANCE)));
                    break;
                }
            }
        }
        WidthModifier widthModifier = (WidthModifier) emittableWithChildren.getModifier().foldIn(null, SizeBoxKt$SizeBox$1$2$1.INSTANCE$13);
        if (widthModifier != null) {
            dimension = widthModifier.width;
        }
        if (!(dimension instanceof Dimension.Wrap) || arrayList.isEmpty()) {
            return;
        }
        Iterator it3 = arrayList.iterator();
        while (it3.hasNext()) {
            WidthModifier widthModifier2 = (WidthModifier) ((Emittable) it3.next()).getModifier().foldIn(null, SizeBoxKt$SizeBox$1$2$1.INSTANCE$15);
            if ((widthModifier2 != null ? widthModifier2.width : null) instanceof Dimension.Fill) {
                emittableWithChildren.setModifier(DpKt.fillMaxWidth(emittableWithChildren.getModifier()));
                return;
            }
        }
    }

    public static final int offsetOnMainAxis(LazyGridMeasuredItem lazyGridMeasuredItem, Orientation orientation) {
        return (int) (orientation == Orientation.Vertical ? lazyGridMeasuredItem.offset & 4294967295L : lazyGridMeasuredItem.offset >> 32);
    }

    public static LinkedHashSet plus(Set set, Iterable iterable) {
        set.getClass();
        iterable.getClass();
        Integer valueOf = iterable instanceof Collection ? Integer.valueOf(((Collection) iterable).size()) : null;
        LinkedHashSet linkedHashSet = new LinkedHashSet(MapsKt__MapsKt.mapCapacity(valueOf != null ? set.size() + valueOf.intValue() : set.size() * 2));
        linkedHashSet.addAll(set);
        CollectionsKt.addAll(linkedHashSet, iterable);
        return linkedHashSet;
    }

    public static NetworkResponse readFrom(RealBufferedSource realBufferedSource) {
        int parseInt = Integer.parseInt(realBufferedSource.readUtf8LineStrict(Long.MAX_VALUE));
        long parseLong = Long.parseLong(realBufferedSource.readUtf8LineStrict(Long.MAX_VALUE));
        long parseLong2 = Long.parseLong(realBufferedSource.readUtf8LineStrict(Long.MAX_VALUE));
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        int parseInt2 = Integer.parseInt(realBufferedSource.readUtf8LineStrict(Long.MAX_VALUE));
        for (int i = 0; i < parseInt2; i++) {
            String readUtf8LineStrict = realBufferedSource.readUtf8LineStrict(Long.MAX_VALUE);
            int indexOf$default = StringsKt.indexOf$default(readUtf8LineStrict, ':', 0, 6);
            if (indexOf$default == -1) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m((Object) "Unexpected header: ".concat(readUtf8LineStrict));
                return null;
            }
            String obj = StringsKt.trim(readUtf8LineStrict.substring(0, indexOf$default)).toString();
            String substring = readUtf8LineStrict.substring(indexOf$default + 1);
            String lowerCase = obj.toLowerCase(Locale.ROOT);
            lowerCase.getClass();
            Object obj2 = linkedHashMap.get(lowerCase);
            if (obj2 == null) {
                obj2 = new ArrayList();
                linkedHashMap.put(lowerCase, obj2);
            }
            ((List) obj2).add(substring);
        }
        return new NetworkResponse(parseInt, parseLong, parseLong2, new NetworkHeaders(MapsKt__MapsKt.toMap(linkedHashMap)), null, null);
    }

    public static final LazyJavaAnnotations resolveAnnotations(Request.Builder builder, JavaAnnotationOwner javaAnnotationOwner) {
        builder.getClass();
        javaAnnotationOwner.getClass();
        return new LazyJavaAnnotations(builder, javaAnnotationOwner, false);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static void setAutoSizeTextTypeUniformWithConfiguration(TextView textView, int i, int i2, int i3) {
        if (Build.VERSION.SDK_INT >= 27) {
            BitmapsKt.setAutoSizeTextTypeUniformWithConfiguration(textView, i, i2, i3);
        } else if (textView instanceof AutoSizeableTextView) {
            ((AutoSizeableTextView) textView).setAutoSizeTextTypeUniformWithConfiguration(i, i2, 1, i3);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static void setCompoundDrawableTintList(TextView textView, ColorStateList colorStateList) {
        textView.getClass();
        if (Build.VERSION.SDK_INT >= 24) {
            textView.setCompoundDrawableTintList(colorStateList);
        } else if (textView instanceof TintableCompoundDrawablesView) {
            ((TintableCompoundDrawablesView) textView).setSupportCompoundDrawablesTintList(colorStateList);
        }
    }

    public static void setFirstBaselineToTopHeight(TextView textView, int i) {
        Operation$State.checkArgumentNonnegative(i);
        if (Build.VERSION.SDK_INT >= 28) {
            HandlerCompat$Api28Impl.setFirstBaselineToTopHeight(textView, i);
            return;
        }
        Paint.FontMetricsInt fontMetricsInt = textView.getPaint().getFontMetricsInt();
        int i2 = textView.getIncludeFontPadding() ? fontMetricsInt.top : fontMetricsInt.ascent;
        if (i > Math.abs(i2)) {
            textView.setPadding(textView.getPaddingLeft(), i + i2, textView.getPaddingRight(), textView.getPaddingBottom());
        }
    }

    public static void setLastBaselineToBottomHeight(TextView textView, int i) {
        Operation$State.checkArgumentNonnegative(i);
        Paint.FontMetricsInt fontMetricsInt = textView.getPaint().getFontMetricsInt();
        int i2 = textView.getIncludeFontPadding() ? fontMetricsInt.bottom : fontMetricsInt.descent;
        if (i > Math.abs(i2)) {
            textView.setPadding(textView.getPaddingLeft(), textView.getPaddingTop(), textView.getPaddingRight(), i - i2);
        }
    }

    public static void setLineHeight(TextView textView, int i) {
        Operation$State.checkArgumentNonnegative(i);
        if (i != textView.getPaint().getFontMetricsInt(null)) {
            textView.setLineSpacing(i - r0, 1.0f);
        }
    }

    public static Set setOf(Object obj) {
        Set singleton = Collections.singleton(obj);
        singleton.getClass();
        return singleton;
    }

    public static boolean startsWith(byte[] bArr, byte[] bArr2) {
        if (bArr2 != null && bArr.length >= bArr2.length) {
            for (int i = 0; i < bArr2.length; i++) {
                if (bArr[i] == bArr2[i]) {
                }
            }
            return true;
        }
        return false;
    }

    public static byte[] toByteArrayInternalV1(Data data) {
        data.getClass();
        HashMap hashMap = data.values;
        try {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            DataOutputStream dataOutputStream = new DataOutputStream(byteArrayOutputStream);
            try {
                dataOutputStream.writeShort(-21521);
                dataOutputStream.writeShort(1);
                dataOutputStream.writeInt(hashMap.size());
                for (Map.Entry entry : hashMap.entrySet()) {
                    toByteArrayInternalV1$writeEntry(dataOutputStream, (String) entry.getKey(), entry.getValue());
                }
                dataOutputStream.flush();
                if (dataOutputStream.size() > 10240) {
                    throw new IllegalStateException("Data cannot occupy more than 10240 bytes when serialized");
                }
                byte[] byteArray = byteArrayOutputStream.toByteArray();
                dataOutputStream.close();
                byteArray.getClass();
                return byteArray;
            } finally {
            }
        } catch (IOException e) {
            Logger$LogcatLogger.get().error(Data_Kt.TAG, "Error in Data#toByteArray: ", e);
            return new byte[0];
        }
    }

    public static final void toByteArrayInternalV1$writeEntry(DataOutputStream dataOutputStream, String str, Object obj) {
        int i;
        if (obj == null) {
            dataOutputStream.writeByte(0);
        } else if (obj instanceof Boolean) {
            dataOutputStream.writeByte(1);
            dataOutputStream.writeBoolean(((Boolean) obj).booleanValue());
        } else if (obj instanceof Byte) {
            dataOutputStream.writeByte(2);
            dataOutputStream.writeByte(((Number) obj).byteValue());
        } else if (obj instanceof Integer) {
            dataOutputStream.writeByte(3);
            dataOutputStream.writeInt(((Number) obj).intValue());
        } else if (obj instanceof Long) {
            dataOutputStream.writeByte(4);
            dataOutputStream.writeLong(((Number) obj).longValue());
        } else if (obj instanceof Float) {
            dataOutputStream.writeByte(5);
            dataOutputStream.writeFloat(((Number) obj).floatValue());
        } else if (obj instanceof Double) {
            dataOutputStream.writeByte(6);
            dataOutputStream.writeDouble(((Number) obj).doubleValue());
        } else if (obj instanceof String) {
            dataOutputStream.writeByte(7);
            dataOutputStream.writeUTF((String) obj);
        } else {
            if (!(obj instanceof Object[])) {
                ContextsKt$$ExternalSyntheticBUOutline0.m$2("Unsupported value type ", Reflection.factory.getOrCreateKotlinClass(obj.getClass()).getSimpleName());
                return;
            }
            Object[] objArr = (Object[]) obj;
            Class<?> cls = objArr.getClass();
            ReflectionFactory reflectionFactory = Reflection.factory;
            KClass orCreateKotlinClass = reflectionFactory.getOrCreateKotlinClass(cls);
            if (orCreateKotlinClass.equals(reflectionFactory.getOrCreateKotlinClass(Boolean[].class))) {
                i = 8;
            } else if (orCreateKotlinClass.equals(reflectionFactory.getOrCreateKotlinClass(Byte[].class))) {
                i = 9;
            } else if (orCreateKotlinClass.equals(reflectionFactory.getOrCreateKotlinClass(Integer[].class))) {
                i = 10;
            } else if (orCreateKotlinClass.equals(reflectionFactory.getOrCreateKotlinClass(Long[].class))) {
                i = 11;
            } else if (orCreateKotlinClass.equals(reflectionFactory.getOrCreateKotlinClass(Float[].class))) {
                i = 12;
            } else if (orCreateKotlinClass.equals(reflectionFactory.getOrCreateKotlinClass(Double[].class))) {
                i = 13;
            } else {
                if (!orCreateKotlinClass.equals(reflectionFactory.getOrCreateKotlinClass(String[].class))) {
                    ContextsKt$$ExternalSyntheticBUOutline0.m$2("Unsupported value type ", reflectionFactory.getOrCreateKotlinClass(objArr.getClass()).getQualifiedName());
                    return;
                }
                i = 14;
            }
            dataOutputStream.writeByte(i);
            dataOutputStream.writeInt(objArr.length);
            for (Object obj2 : objArr) {
                if (i == 8) {
                    Boolean bool = obj2 instanceof Boolean ? (Boolean) obj2 : null;
                    dataOutputStream.writeBoolean(bool != null ? bool.booleanValue() : false);
                } else if (i == 9) {
                    Byte b = obj2 instanceof Byte ? (Byte) obj2 : null;
                    dataOutputStream.writeByte(b != null ? b.byteValue() : (byte) 0);
                } else if (i == 10) {
                    Integer num = obj2 instanceof Integer ? (Integer) obj2 : null;
                    dataOutputStream.writeInt(num != null ? num.intValue() : 0);
                } else if (i == 11) {
                    Long l = obj2 instanceof Long ? (Long) obj2 : null;
                    dataOutputStream.writeLong(l != null ? l.longValue() : 0L);
                } else if (i == 12) {
                    Float f = obj2 instanceof Float ? (Float) obj2 : null;
                    dataOutputStream.writeFloat(f != null ? f.floatValue() : RecyclerView.DECELERATION_RATE);
                } else if (i == 13) {
                    Double d = obj2 instanceof Double ? (Double) obj2 : null;
                    dataOutputStream.writeDouble(d != null ? d.doubleValue() : 0.0d);
                } else if (i == 14) {
                    String str2 = obj2 instanceof String ? (String) obj2 : null;
                    if (str2 == null) {
                        str2 = "androidx.work.Data-95ed6082-b8e9-46e8-a73f-ff56f00f5d9d";
                    }
                    dataOutputStream.writeUTF(str2);
                }
            }
        }
        dataOutputStream.writeUTF(str);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0, types: [androidx.compose.runtime.tooling.ComposeStackTraceBuilder, androidx.compose.runtime.tooling.ReaderTraceBuilder] */
    /* JADX WARN: Type inference failed for: r9v0, types: [java.lang.Integer] */
    /* JADX WARN: Type inference failed for: r9v1, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r9v3 */
    /* JADX WARN: Type inference failed for: r9v4 */
    /* JADX WARN: Type inference failed for: r9v5 */
    public static final ArrayList traceForGroup(SlotReader slotReader, int i, Integer num) {
        ?? readerTraceBuilder = new ReaderTraceBuilder(slotReader);
        int parent = slotReader.parent(i);
        GapAnchor anchor = slotReader.anchor(i);
        while (i >= 0) {
            readerTraceBuilder.processEdge(slotReader.groupKey(i), slotReader.hasObjectKey(i) ? slotReader.objectKey(slotReader.groups, i) : Composer$Companion.Empty, slotReader.table.sourceInformationOf(i), num);
            if (parent >= 0) {
                GapAnchor gapAnchor = anchor;
                anchor = slotReader.anchor(parent);
                i = parent;
                parent = slotReader.parent(parent);
                num = gapAnchor;
            } else {
                i = parent;
                num = anchor;
            }
        }
        return readerTraceBuilder._trace;
    }

    public static final void transformTree(EmittableWithChildren emittableWithChildren) {
        RadioButtonKt$isSelectableGroup$1 radioButtonKt$isSelectableGroup$1 = RadioButtonKt$isSelectableGroup$1.INSTANCE$3;
        Iterator it = emittableWithChildren.children.iterator();
        int i = 0;
        while (it.hasNext()) {
            Object next = it.next();
            int i2 = i + 1;
            if (i < 0) {
                Room.throwIndexOverflow();
                throw null;
            }
            Emittable emittable = (Emittable) radioButtonKt$isSelectableGroup$1.invoke((Emittable) next);
            emittableWithChildren.children.set(i, emittable);
            if (emittable instanceof EmittableWithChildren) {
                transformTree((EmittableWithChildren) emittable);
            }
            i = i2;
        }
    }

    public static ActionMode.Callback unwrapCustomSelectionActionModeCallback(ActionMode.Callback callback) {
        return (!(callback instanceof TextViewCompat$OreoCallback) || Build.VERSION.SDK_INT < 26) ? callback : ((TextViewCompat$OreoCallback) callback).mCallback;
    }

    public static final LinkedHashMap updateLambdaActionKeys(EmittableWithChildren emittableWithChildren) {
        ArrayList arrayList = emittableWithChildren.children;
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        Iterator it = arrayList.iterator();
        int i = 0;
        while (it.hasNext()) {
            Object next = it.next();
            int i2 = i + 1;
            if (i < 0) {
                Room.throwIndexOverflow();
                throw null;
            }
            Emittable emittable = (Emittable) next;
            GlanceModifier modifier = emittable.getModifier();
            Pair pair = modifier.any(RadioButtonKt$isSelectableGroup$1.INSTANCE$1) ? (Pair) modifier.foldIn(new Pair(null, GlanceModifier.Companion.$$INSTANCE), SizeBoxKt$SizeBox$1$2$1.INSTANCE$10) : new Pair(null, modifier);
            ActionModifier actionModifier = (ActionModifier) pair.first;
            GlanceModifier glanceModifier = (GlanceModifier) pair.second;
            Action action = actionModifier != null ? actionModifier.action : null;
            Pair pair2 = action instanceof LambdaAction ? new Pair(action, glanceModifier) : new Pair(null, glanceModifier);
            if (emittable instanceof EmittableWithChildren) {
                for (Map.Entry entry : updateLambdaActionKeys((EmittableWithChildren) emittable).entrySet()) {
                    String str = (String) entry.getKey();
                    List list = (List) entry.getValue();
                    Object obj = linkedHashMap.get(str);
                    if (obj == null) {
                        obj = new ArrayList();
                        linkedHashMap.put(str, obj);
                    }
                    ((List) obj).addAll(list);
                }
            }
            i = i2;
        }
        return linkedHashMap;
    }

    public static final void uuidThrowUnexpectedCharacterException(int i, String str, String str2) {
        throw new IllegalArgumentException("Expected " + str2 + " at index " + i + ", but was '" + str.charAt(i) + '\'');
    }

    public static ActionMode.Callback wrapCustomSelectionActionModeCallback(ActionMode.Callback callback, TextView textView) {
        int i = Build.VERSION.SDK_INT;
        return (i < 26 || i > 27 || (callback instanceof TextViewCompat$OreoCallback) || callback == null) ? callback : new TextViewCompat$OreoCallback(callback, textView);
    }

    public static void writeTo(NetworkResponse networkResponse, RealBufferedSink realBufferedSink) {
        realBufferedSink.writeDecimalLong(networkResponse.code);
        realBufferedSink.writeByte(10);
        realBufferedSink.writeDecimalLong(networkResponse.requestMillis);
        realBufferedSink.writeByte(10);
        realBufferedSink.writeDecimalLong(networkResponse.responseMillis);
        realBufferedSink.writeByte(10);
        Set<Map.Entry> entrySet = networkResponse.headers.data.entrySet();
        Iterator it = entrySet.iterator();
        int i = 0;
        while (it.hasNext()) {
            i += ((List) ((Map.Entry) it.next()).getValue()).size();
        }
        realBufferedSink.writeDecimalLong(i);
        realBufferedSink.writeByte(10);
        for (Map.Entry entry : entrySet) {
            for (String str : (List) entry.getValue()) {
                realBufferedSink.writeUtf8((String) entry.getKey());
                realBufferedSink.writeUtf8(":");
                realBufferedSink.writeUtf8(str);
                realBufferedSink.writeByte(10);
            }
        }
    }

    public UuidKt beginStructure(SerialDescriptor serialDescriptor) {
        serialDescriptor.getClass();
        return this;
    }

    public void encodeBoolean(boolean z) {
        encodeValue(Boolean.valueOf(z));
    }

    public void encodeBooleanElement(SerialDescriptor serialDescriptor, int i, boolean z) {
        serialDescriptor.getClass();
        encodeElement(serialDescriptor, i);
        encodeBoolean(z);
    }

    public void encodeByte(byte b) {
        encodeValue(Byte.valueOf(b));
    }

    public void encodeChar(char c) {
        encodeValue(Character.valueOf(c));
    }

    public void encodeDouble(double d) {
        encodeValue(Double.valueOf(d));
    }

    public void encodeDoubleElement(SerialDescriptor serialDescriptor, int i, double d) {
        serialDescriptor.getClass();
        encodeElement(serialDescriptor, i);
        encodeDouble(d);
    }

    public abstract void encodeElement(SerialDescriptor serialDescriptor, int i);

    public void encodeEnum(SerialDescriptor serialDescriptor, int i) {
        serialDescriptor.getClass();
        encodeValue(Integer.valueOf(i));
    }

    public void encodeFloat(float f) {
        encodeValue(Float.valueOf(f));
    }

    public void encodeFloatElement(SerialDescriptor serialDescriptor, int i, float f) {
        serialDescriptor.getClass();
        encodeElement(serialDescriptor, i);
        encodeFloat(f);
    }

    public abstract UuidKt encodeInline(SerialDescriptor serialDescriptor);

    public UuidKt encodeInlineElement(PrimitiveArrayDescriptor primitiveArrayDescriptor, int i) {
        encodeElement(primitiveArrayDescriptor, i);
        return encodeInline(primitiveArrayDescriptor.getElementDescriptor(i));
    }

    public void encodeInt(int i) {
        encodeValue(Integer.valueOf(i));
    }

    public void encodeIntElement(int i, int i2, SerialDescriptor serialDescriptor) {
        serialDescriptor.getClass();
        encodeElement(serialDescriptor, i);
        encodeInt(i2);
    }

    public void encodeLong(long j) {
        encodeValue(Long.valueOf(j));
    }

    public void encodeLongElement(SerialDescriptor serialDescriptor, int i, long j) {
        serialDescriptor.getClass();
        encodeElement(serialDescriptor, i);
        encodeLong(j);
    }

    public abstract void encodeNull();

    public void encodeNullableSerializableElement(SerialDescriptor serialDescriptor, int i, KSerializer kSerializer, Object obj) {
        serialDescriptor.getClass();
        kSerializer.getClass();
        encodeElement(serialDescriptor, i);
        if (kSerializer.getDescriptor().isNullable()) {
            encodeSerializableValue(kSerializer, obj);
        } else if (obj == null) {
            encodeNull();
        } else {
            encodeSerializableValue(kSerializer, obj);
        }
    }

    public void encodeSerializableElement(SerialDescriptor serialDescriptor, int i, KSerializer kSerializer, Object obj) {
        serialDescriptor.getClass();
        kSerializer.getClass();
        encodeElement(serialDescriptor, i);
        encodeSerializableValue(kSerializer, obj);
    }

    public abstract void encodeSerializableValue(KSerializer kSerializer, Object obj);

    public void encodeShort(short s) {
        encodeValue(Short.valueOf(s));
    }

    public void encodeString(String str) {
        str.getClass();
        encodeValue(str);
    }

    public void encodeStringElement(SerialDescriptor serialDescriptor, int i, String str) {
        serialDescriptor.getClass();
        str.getClass();
        encodeElement(serialDescriptor, i);
        encodeString(str);
    }

    public void encodeValue(Object obj) {
        StringBuilder sb = new StringBuilder("Non-serializable ");
        Class<?> cls = obj.getClass();
        ReflectionFactory reflectionFactory = Reflection.factory;
        sb.append(reflectionFactory.getOrCreateKotlinClass(cls));
        sb.append(" is not supported by ");
        sb.append(reflectionFactory.getOrCreateKotlinClass(getClass()));
        sb.append(" encoder");
        throw new SerializationException(sb.toString());
    }

    public void endStructure(SerialDescriptor serialDescriptor) {
        serialDescriptor.getClass();
    }

    public abstract LoginClient getSerializersModule();

    public boolean shouldEncodeElementDefault(SerialDescriptor serialDescriptor) {
        serialDescriptor.getClass();
        return true;
    }

    public static LinkedHashSet plus(Set set, Object obj) {
        set.getClass();
        LinkedHashSet linkedHashSet = new LinkedHashSet(MapsKt__MapsKt.mapCapacity(set.size() + 1));
        linkedHashSet.addAll(set);
        linkedHashSet.add(obj);
        return linkedHashSet;
    }

    public static LinkedHashSet minus(Set set, Object obj) {
        set.getClass();
        LinkedHashSet linkedHashSet = new LinkedHashSet(MapsKt__MapsKt.mapCapacity(set.size()));
        boolean z = false;
        for (Object obj2 : set) {
            boolean z2 = true;
            if (!z && Intrinsics.areEqual(obj2, obj)) {
                z = true;
                z2 = false;
            }
            if (z2) {
                linkedHashSet.add(obj2);
            }
        }
        return linkedHashSet;
    }

    public static final Object getExtensionOrNull(GeneratedMessageLite.ExtendableMessage extendableMessage, GeneratedMessageLite.GeneratedExtension generatedExtension) {
        extendableMessage.getClass();
        if (extendableMessage.hasExtension(generatedExtension)) {
            return extendableMessage.getExtension(generatedExtension);
        }
        return null;
    }
}
