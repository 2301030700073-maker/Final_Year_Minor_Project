package kotlin;

import android.content.ContentProviderClient;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.drm.DrmManagerClient;
import android.graphics.drawable.Drawable;
import android.media.MediaDrm;
import android.media.MediaMetadataRetriever;
import android.net.Uri;
import android.os.Build;
import android.os.ParcelFileDescriptor;
import android.os.Process;
import android.os.StrictMode;
import android.os.Trace;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import androidx.activity.ImmLeaksCleaner$$ExternalSyntheticLambda0;
import androidx.appcompat.widget.ResourceManagerInternal;
import androidx.cardview.widget.CardView;
import androidx.compose.animation.SplineBasedFloatDecayAnimationSpec_androidKt;
import androidx.compose.animation.core.Animation;
import androidx.compose.animation.core.DecayAnimationSpecImpl;
import androidx.compose.foundation.AndroidEdgeEffectOverscrollEffect;
import androidx.compose.foundation.OverscrollKt;
import androidx.compose.foundation.gestures.DefaultFlingBehavior;
import androidx.compose.foundation.gestures.FlingBehavior;
import androidx.compose.foundation.layout.Arrangement$End$1;
import androidx.compose.foundation.layout.Arrangement$Horizontal;
import androidx.compose.foundation.layout.Arrangement$Vertical;
import androidx.compose.foundation.layout.OffsetKt;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.foundation.layout.PaddingValuesImpl;
import androidx.compose.foundation.lazy.grid.GridCells$Fixed;
import androidx.compose.foundation.lazy.grid.GridSlotCache;
import androidx.compose.foundation.lazy.grid.LazyGridDslKt$$ExternalSyntheticLambda0;
import androidx.compose.foundation.lazy.grid.LazyGridMeasureResult;
import androidx.compose.foundation.lazy.grid.LazyGridState;
import androidx.compose.foundation.lazy.grid.LazyGridStateKt;
import androidx.compose.foundation.text.BasicTextKt;
import androidx.compose.runtime.Applier;
import androidx.compose.runtime.Composer$Companion;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.composer.gapbuffer.SlotWriter;
import androidx.compose.runtime.saveable.SaverKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.ColorKt;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.TextRange;
import androidx.compose.ui.text.input.TextFieldValue;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.content.res.ResourcesCompat;
import androidx.glance.action.ActionParameters$Pair;
import androidx.glance.action.MutableActionParameters;
import androidx.glance.appwidget.protobuf.ByteString$LiteralByteString;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.compose.LifecycleStartStopEffectScope;
import androidx.lifecycle.compose.LocalLifecycleOwnerKt;
import androidx.paging.HintHandler$$ExternalSyntheticLambda0;
import androidx.recyclerview.widget.RecyclerView;
import androidx.sqlite.SQLiteConnection;
import androidx.sqlite.SQLiteStatement;
import androidx.tracing.TraceApi29Impl;
import androidx.work.BackoffPolicy;
import androidx.work.Constraints;
import androidx.work.NetworkType;
import androidx.work.OutOfQuotaPolicy;
import androidx.work.WorkInfo;
import androidx.work.impl.model.WorkTypeConverters$WhenMappings;
import androidx.work.impl.utils.Api28Impl;
import androidx.work.impl.utils.NetworkRequestCompat;
import coil3.compose.internal.UtilsKt$$ExternalSyntheticLambda1;
import coil3.size.ViewSizeResolver$CC;
import coil3.util.ContextsKt$$ExternalSyntheticBUOutline0;
import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.ObjectInputStream;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.nio.MappedByteBuffer;
import java.nio.channels.FileChannel;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ExecutorService;
import kotlin.collections.CollectionsKt;
import kotlin.collections.CollectionsKt__IteratorsJVMKt;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.ReflectionFactory;
import kotlin.reflect.KClass;
import kotlin.reflect.KType;
import kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.ModuleAwareClassDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.runtime.components.ReflectJavaClassFinder;
import kotlin.reflect.jvm.internal.impl.descriptors.runtime.components.ReflectKotlinClass;
import kotlin.reflect.jvm.internal.impl.load.java.SpecialGenericSignatures$Companion$NameAndSignature;
import kotlin.reflect.jvm.internal.impl.metadata.jvm.deserialization.JvmMetadataVersion;
import kotlin.reflect.jvm.internal.impl.name.ClassId;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.ChainedMemberScope;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope;
import kotlin.reflect.jvm.internal.impl.types.SimpleType;
import kotlin.reflect.jvm.internal.impl.types.StarProjectionImpl;
import kotlin.reflect.jvm.internal.impl.types.StarProjectionImplKt$buildStarProjectionTypeByTypeParameters$1;
import kotlin.reflect.jvm.internal.impl.utils.SmartList;
import kotlin.text.RegexKt;
import kotlin.text.UStringsKt;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.SerializationException;
import kotlinx.serialization.internal.HashMapSerializer;
import kotlinx.serialization.internal.HashSetSerializer;
import kotlinx.serialization.internal.PairSerializer;
import kotlinx.serialization.internal.PrimitivesKt;
import kotlinx.serialization.internal.ReferenceArraySerializer;
import kotlinx.serialization.internal.TripleSerializer;
import okhttp3.ConnectionPool;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import okio.FileSystem;
import okio.Path;
import org.wikipedia.feed.HomeScreenKt$$ExternalSyntheticLambda27;
import org.wikipedia.login.LoginClient;
import org.wikipedia.settings.AboutActivityKt$$ExternalSyntheticLambda9;
import org.wikipedia.util.GeoUtil;
import org.wikipedia.util.GeoUtil$$ExternalSyntheticApiModelOutline0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class TuplesKt {
    public static Method sAsyncTraceBeginMethod;
    public static Method sAsyncTraceEndMethod;
    public static Method sIsTagEnabledMethod;
    public static long sTraceTagApp;

    public static final void LazyVerticalGrid(GridCells$Fixed gridCells$Fixed, Modifier modifier, LazyGridState lazyGridState, PaddingValues paddingValues, Arrangement$Vertical arrangement$Vertical, Arrangement$Horizontal arrangement$Horizontal, FlingBehavior flingBehavior, boolean z, AndroidEdgeEffectOverscrollEffect androidEdgeEffectOverscrollEffect, Function1 function1, GapComposer gapComposer, int i) {
        LazyGridState lazyGridState2;
        PaddingValues paddingValues2;
        Arrangement$Vertical arrangement$Vertical2;
        Arrangement$Horizontal arrangement$Horizontal2;
        FlingBehavior flingBehavior2;
        boolean z2;
        AndroidEdgeEffectOverscrollEffect androidEdgeEffectOverscrollEffect2;
        LazyGridState lazyGridState3;
        FlingBehavior flingBehavior3;
        Arrangement$Horizontal arrangement$Horizontal3;
        AndroidEdgeEffectOverscrollEffect rememberOverscrollEffect;
        boolean z3;
        Arrangement$Vertical arrangement$Vertical3;
        int i2;
        PaddingValues paddingValues3;
        int i3;
        boolean z4;
        gapComposer.startRestartGroup(-2072102870);
        int i4 = i | (gapComposer.changed(gridCells$Fixed) ? 4 : 2) | (gapComposer.changed(modifier) ? 32 : 16) | 374959232;
        int i5 = gapComposer.changedInstance(function1) ? 4 : 2;
        if (gapComposer.shouldExecute(i4 & 1, ((306783379 & i4) == 306783378 && (i5 & 3) == 2) ? false : true)) {
            gapComposer.startDefaults();
            int i6 = i & 1;
            Object obj = Composer$Companion.Empty;
            if (i6 == 0 || gapComposer.getDefaultsInvalid()) {
                LazyGridMeasureResult lazyGridMeasureResult = LazyGridStateKt.EmptyLazyGridLayoutInfo;
                Object[] objArr = new Object[0];
                CardView.AnonymousClass1 anonymousClass1 = LazyGridState.Saver;
                boolean changed = gapComposer.changed(0) | gapComposer.changed(0);
                Object rememberedValue = gapComposer.rememberedValue();
                if (changed || rememberedValue == obj) {
                    rememberedValue = new ImmLeaksCleaner$$ExternalSyntheticLambda0(11);
                    gapComposer.updateRememberedValue(rememberedValue);
                }
                lazyGridState3 = (LazyGridState) SaverKt.rememberSaveable(objArr, anonymousClass1, (Function0) rememberedValue, gapComposer, 0);
                PaddingValuesImpl paddingValuesImpl = new PaddingValuesImpl(RecyclerView.DECELERATION_RATE, RecyclerView.DECELERATION_RATE, RecyclerView.DECELERATION_RATE, RecyclerView.DECELERATION_RATE);
                Arrangement$End$1 arrangement$End$1 = OffsetKt.Top;
                Arrangement$End$1 arrangement$End$12 = OffsetKt.f5Start;
                DecayAnimationSpecImpl rememberSplineBasedDecay = SplineBasedFloatDecayAnimationSpec_androidKt.rememberSplineBasedDecay(gapComposer);
                boolean changed2 = gapComposer.changed(rememberSplineBasedDecay);
                Object rememberedValue2 = gapComposer.rememberedValue();
                if (changed2 || rememberedValue2 == obj) {
                    rememberedValue2 = new DefaultFlingBehavior(rememberSplineBasedDecay);
                    gapComposer.updateRememberedValue(rememberedValue2);
                }
                flingBehavior3 = (DefaultFlingBehavior) rememberedValue2;
                arrangement$Horizontal3 = arrangement$End$12;
                rememberOverscrollEffect = OverscrollKt.rememberOverscrollEffect(gapComposer);
                z3 = false;
                arrangement$Vertical3 = arrangement$End$1;
                i2 = i5;
                paddingValues3 = paddingValuesImpl;
                i3 = i4 & (-1908867969);
                z4 = true;
            } else {
                gapComposer.skipToGroupEnd();
                lazyGridState3 = lazyGridState;
                arrangement$Horizontal3 = arrangement$Horizontal;
                flingBehavior3 = flingBehavior;
                i3 = i4 & (-1908867969);
                i2 = i5;
                z3 = false;
                paddingValues3 = paddingValues;
                arrangement$Vertical3 = arrangement$Vertical;
                z4 = z;
                rememberOverscrollEffect = androidEdgeEffectOverscrollEffect;
            }
            gapComposer.endDefaults();
            int i7 = (i3 & 14) | 48;
            if ((((i7 & 14) ^ 6) > 4 && gapComposer.changed(gridCells$Fixed)) || (i7 & 6) == 4) {
                z3 = true;
            }
            Object rememberedValue3 = gapComposer.rememberedValue();
            if (z3 || rememberedValue3 == obj) {
                rememberedValue3 = new GridSlotCache(new HintHandler$$ExternalSyntheticLambda0(gridCells$Fixed, arrangement$Horizontal3));
                gapComposer.updateRememberedValue(rememberedValue3);
            }
            lazyGridState2 = lazyGridState3;
            boolean z5 = z4;
            UnsignedKt.LazyGrid(modifier, lazyGridState2, (GridSlotCache) rememberedValue3, paddingValues3, flingBehavior3, z5, rememberOverscrollEffect, arrangement$Vertical3, arrangement$Horizontal3, function1, gapComposer, ((i3 >> 3) & 14) | 12807168, 6 | ((i2 << 3) & 112));
            paddingValues2 = paddingValues3;
            arrangement$Vertical2 = arrangement$Vertical3;
            androidEdgeEffectOverscrollEffect2 = rememberOverscrollEffect;
            z2 = z5;
            flingBehavior2 = flingBehavior3;
            arrangement$Horizontal2 = arrangement$Horizontal3;
        } else {
            gapComposer.skipToGroupEnd();
            lazyGridState2 = lazyGridState;
            paddingValues2 = paddingValues;
            arrangement$Vertical2 = arrangement$Vertical;
            arrangement$Horizontal2 = arrangement$Horizontal;
            flingBehavior2 = flingBehavior;
            z2 = z;
            androidEdgeEffectOverscrollEffect2 = androidEdgeEffectOverscrollEffect;
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new LazyGridDslKt$$ExternalSyntheticLambda0(gridCells$Fixed, modifier, lazyGridState2, paddingValues2, arrangement$Vertical2, arrangement$Horizontal2, flingBehavior2, z2, androidEdgeEffectOverscrollEffect2, function1, i);
        }
    }

    public static final void LifecycleStartEffect(Boolean bool, Object obj, LifecycleOwner lifecycleOwner, Function1 function1, GapComposer gapComposer, int i) {
        int i2;
        gapComposer.startRestartGroup(696924721);
        if ((i & 6) == 0) {
            i2 = (gapComposer.changedInstance(bool) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            i2 |= gapComposer.changedInstance(obj) ? 32 : 16;
        }
        if ((i & 384) == 0) {
            i2 |= 128;
        }
        if ((i & 3072) == 0) {
            i2 |= gapComposer.changedInstance(function1) ? 2048 : 1024;
        }
        if (gapComposer.shouldExecute(i2 & 1, (i2 & 1171) != 1170)) {
            gapComposer.startDefaults();
            if ((i & 1) == 0 || gapComposer.getDefaultsInvalid()) {
                lifecycleOwner = (LifecycleOwner) gapComposer.consume(LocalLifecycleOwnerKt.LocalLifecycleOwner);
            } else {
                gapComposer.skipToGroupEnd();
            }
            int i3 = i2 & (-897);
            gapComposer.endDefaults();
            boolean changed = gapComposer.changed(bool) | gapComposer.changed(obj) | gapComposer.changed(lifecycleOwner);
            Object rememberedValue = gapComposer.rememberedValue();
            if (changed || rememberedValue == Composer$Companion.Empty) {
                rememberedValue = new LifecycleStartStopEffectScope(lifecycleOwner.getLifecycle());
                gapComposer.updateRememberedValue(rememberedValue);
            }
            LifecycleStartEffectImpl(lifecycleOwner, (LifecycleStartStopEffectScope) rememberedValue, function1, gapComposer, (i3 >> 3) & 896);
        } else {
            gapComposer.skipToGroupEnd();
        }
        LifecycleOwner lifecycleOwner2 = lifecycleOwner;
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new HomeScreenKt$$ExternalSyntheticLambda27(bool, obj, lifecycleOwner2, function1, i);
        }
    }

    public static final void LifecycleStartEffectImpl(LifecycleOwner lifecycleOwner, LifecycleStartStopEffectScope lifecycleStartStopEffectScope, Function1 function1, GapComposer gapComposer, int i) {
        int i2;
        gapComposer.startRestartGroup(228371534);
        if ((i & 6) == 0) {
            i2 = (gapComposer.changedInstance(lifecycleOwner) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            i2 |= gapComposer.changedInstance(lifecycleStartStopEffectScope) ? 32 : 16;
        }
        if ((i & 384) == 0) {
            i2 |= gapComposer.changedInstance(function1) ? 256 : 128;
        }
        if (gapComposer.shouldExecute(i2 & 1, (i2 & 147) != 146)) {
            boolean changedInstance = gapComposer.changedInstance(lifecycleStartStopEffectScope) | ((i2 & 896) == 256) | gapComposer.changedInstance(lifecycleOwner);
            Object rememberedValue = gapComposer.rememberedValue();
            if (changedInstance || rememberedValue == Composer$Companion.Empty) {
                rememberedValue = new UtilsKt$$ExternalSyntheticLambda1(lifecycleOwner, lifecycleStartStopEffectScope, function1, 15);
                gapComposer.updateRememberedValue(rememberedValue);
            }
            Updater.DisposableEffect(lifecycleOwner, lifecycleStartStopEffectScope, (Function1) rememberedValue, gapComposer);
        } else {
            gapComposer.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new AboutActivityKt$$ExternalSyntheticLambda9((Object) lifecycleOwner, (Object) lifecycleStartStopEffectScope, (Object) function1, i, 13);
        }
    }

    public static final LinkedHashSet byteArrayToSetOfTriggers(byte[] bArr) {
        bArr.getClass();
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        if (bArr.length == 0) {
            return linkedHashSet;
        }
        ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(bArr);
        try {
            try {
                ObjectInputStream objectInputStream = new ObjectInputStream(byteArrayInputStream);
                try {
                    int readInt = objectInputStream.readInt();
                    for (int i = 0; i < readInt; i++) {
                        Uri parse = Uri.parse(objectInputStream.readUTF());
                        boolean readBoolean = objectInputStream.readBoolean();
                        parse.getClass();
                        linkedHashSet.add(new Constraints.ContentUriTrigger(readBoolean, parse));
                    }
                    objectInputStream.close();
                } finally {
                }
            } catch (IOException e) {
                e.printStackTrace();
            }
            byteArrayInputStream.close();
            return linkedHashSet;
        } finally {
        }
    }

    public static final void closeFinally(AutoCloseable autoCloseable, Throwable th) {
        if (autoCloseable != null) {
            if (th != null) {
                try {
                    ViewSizeResolver$CC.m(autoCloseable);
                    return;
                } catch (Throwable th2) {
                    ExceptionsKt.addSuppressed(th, th2);
                    return;
                }
            }
            if (autoCloseable instanceof AutoCloseable) {
                autoCloseable.close();
                return;
            }
            if (autoCloseable instanceof ExecutorService) {
                GeoUtil$$ExternalSyntheticApiModelOutline0.m((ExecutorService) autoCloseable);
                return;
            }
            if (autoCloseable instanceof TypedArray) {
                ((TypedArray) autoCloseable).recycle();
                return;
            }
            if (autoCloseable instanceof MediaMetadataRetriever) {
                ((MediaMetadataRetriever) autoCloseable).release();
                return;
            }
            if (autoCloseable instanceof MediaDrm) {
                ((MediaDrm) autoCloseable).release();
                return;
            }
            if (autoCloseable instanceof DrmManagerClient) {
                ((DrmManagerClient) autoCloseable).release();
            } else if (autoCloseable instanceof ContentProviderClient) {
                ((ContentProviderClient) autoCloseable).release();
            } else {
                _UtilJvmKt$$ExternalSyntheticLambda0.m();
            }
        }
    }

    public static final long colorResource(int i, GapComposer gapComposer) {
        Context context = (Context) gapComposer.consume(AndroidCompositionLocals_androidKt.LocalContext);
        Resources resources = (Resources) gapComposer.consume(AndroidCompositionLocals_androidKt.LocalResources);
        Resources.Theme theme = context.getTheme();
        ThreadLocal threadLocal = ResourcesCompat.sTempTypedValue;
        return ColorKt.Color(resources.getColor(i, theme));
    }

    public static final Collection concat(Collection collection, Collection collection2) {
        collection2.getClass();
        if (collection2.isEmpty()) {
            return collection;
        }
        if (collection == null) {
            return collection2;
        }
        if (collection instanceof LinkedHashSet) {
            ((LinkedHashSet) collection).addAll(collection2);
            return collection;
        }
        LinkedHashSet linkedHashSet = new LinkedHashSet(collection);
        linkedHashSet.addAll(collection2);
        return linkedHashSet;
    }

    public static boolean copyToFile(File file, InputStream inputStream) {
        FileOutputStream fileOutputStream;
        StrictMode.ThreadPolicy allowThreadDiskWrites = StrictMode.allowThreadDiskWrites();
        FileOutputStream fileOutputStream2 = null;
        try {
            try {
                fileOutputStream = new FileOutputStream(file, false);
            } catch (IOException e) {
                e = e;
            }
        } catch (Throwable th) {
            th = th;
        }
        try {
            byte[] bArr = new byte[1024];
            while (true) {
                int read = inputStream.read(bArr);
                if (read != -1) {
                    fileOutputStream.write(bArr, 0, read);
                } else {
                    try {
                        break;
                    } catch (IOException unused) {
                    }
                }
            }
            fileOutputStream.close();
            StrictMode.setThreadPolicy(allowThreadDiskWrites);
            return true;
        } catch (IOException e2) {
            e = e2;
            fileOutputStream2 = fileOutputStream;
            Log.e("TypefaceCompatUtil", "Error copying resource contents to temp file: " + e.getMessage());
            if (fileOutputStream2 != null) {
                try {
                    fileOutputStream2.close();
                } catch (IOException unused2) {
                }
            }
            StrictMode.setThreadPolicy(allowThreadDiskWrites);
            return false;
        } catch (Throwable th2) {
            th = th2;
            fileOutputStream2 = fileOutputStream;
            if (fileOutputStream2 != null) {
                try {
                    fileOutputStream2.close();
                } catch (IOException unused3) {
                }
            }
            StrictMode.setThreadPolicy(allowThreadDiskWrites);
            throw th;
        }
    }

    public static MemberScope create(String str, List list) {
        MemberScope.Empty empty;
        SmartList smartList = new SmartList();
        Iterator it = list.iterator();
        while (true) {
            boolean hasNext = it.hasNext();
            empty = MemberScope.Empty.INSTANCE;
            if (!hasNext) {
                break;
            }
            MemberScope memberScope = (MemberScope) it.next();
            if (memberScope != empty) {
                if (memberScope instanceof ChainedMemberScope) {
                    MemberScope[] memberScopeArr = ((ChainedMemberScope) memberScope).scopes;
                    memberScopeArr.getClass();
                    List asList = Arrays.asList(memberScopeArr);
                    asList.getClass();
                    smartList.addAll(asList);
                } else {
                    smartList.add(memberScope);
                }
            }
        }
        int i = smartList.mySize;
        return i != 0 ? i != 1 ? new ChainedMemberScope(str, (MemberScope[]) smartList.toArray(new MemberScope[0])) : (MemberScope) smartList.get(0) : empty;
    }

    public static void createFile$default(FileSystem fileSystem, Path path) {
        if (fileSystem.exists(path)) {
            return;
        }
        try {
            fileSystem.sink(path, false).close();
        } catch (RuntimeException e) {
            throw e;
        } catch (Exception unused) {
        }
    }

    public static final StarProjectionImplKt$buildStarProjectionTypeByTypeParameters$1 createMappedTypeParametersSubstitution(ModuleAwareClassDescriptor moduleAwareClassDescriptor, ModuleAwareClassDescriptor moduleAwareClassDescriptor2) {
        moduleAwareClassDescriptor.getClass();
        moduleAwareClassDescriptor2.getClass();
        moduleAwareClassDescriptor.getDeclaredTypeParameters().size();
        moduleAwareClassDescriptor2.getDeclaredTypeParameters().size();
        List declaredTypeParameters = moduleAwareClassDescriptor.getDeclaredTypeParameters();
        declaredTypeParameters.getClass();
        ArrayList arrayList = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(declaredTypeParameters, 10));
        Iterator it = declaredTypeParameters.iterator();
        while (it.hasNext()) {
            arrayList.add(((TypeParameterDescriptor) it.next()).getTypeConstructor());
        }
        List declaredTypeParameters2 = moduleAwareClassDescriptor2.getDeclaredTypeParameters();
        declaredTypeParameters2.getClass();
        ArrayList arrayList2 = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(declaredTypeParameters2, 10));
        Iterator it2 = declaredTypeParameters2.iterator();
        while (it2.hasNext()) {
            SimpleType defaultType = ((TypeParameterDescriptor) it2.next()).getDefaultType();
            defaultType.getClass();
            arrayList2.add(new StarProjectionImpl(defaultType));
        }
        return new StarProjectionImplKt$buildStarProjectionTypeByTypeParameters$1(1, MapsKt__MapsKt.toMap(CollectionsKt.zip(arrayList, arrayList2)));
    }

    public static final void deleteContents(FileSystem fileSystem, Path path) {
        try {
            IOException iOException = null;
            for (Path path2 : fileSystem.list(path)) {
                try {
                    if (fileSystem.metadata(path2).isDirectory) {
                        deleteContents(fileSystem, path2);
                    }
                    fileSystem.delete(path2);
                } catch (IOException e) {
                    if (iOException == null) {
                        iOException = e;
                    }
                }
            }
            if (iOException != null) {
                throw iOException;
            }
        } catch (FileNotFoundException unused) {
        }
    }

    /* renamed from: equals-impl0, reason: not valid java name */
    public static final boolean m817equalsimpl0(long j, long j2) {
        return j == j2;
    }

    public static String escapeBytes(ByteString$LiteralByteString byteString$LiteralByteString) {
        StringBuilder sb = new StringBuilder(byteString$LiteralByteString.size());
        for (int i = 0; i < byteString$LiteralByteString.size(); i++) {
            byte byteAt = byteString$LiteralByteString.byteAt(i);
            if (byteAt == 34) {
                sb.append("\\\"");
            } else if (byteAt == 39) {
                sb.append("\\'");
            } else if (byteAt != 92) {
                switch (byteAt) {
                    case 7:
                        sb.append("\\a");
                        break;
                    case 8:
                        sb.append("\\b");
                        break;
                    case 9:
                        sb.append("\\t");
                        break;
                    case 10:
                        sb.append("\\n");
                        break;
                    case 11:
                        sb.append("\\v");
                        break;
                    case 12:
                        sb.append("\\f");
                        break;
                    case IMAGE_VALUE:
                        sb.append("\\r");
                        break;
                    default:
                        if (byteAt < 32 || byteAt > 126) {
                            sb.append('\\');
                            sb.append((char) (((byteAt >>> 6) & 3) + 48));
                            sb.append((char) (((byteAt >>> 3) & 7) + 48));
                            sb.append((char) ((byteAt & 7) + 48));
                            break;
                        } else {
                            sb.append((char) byteAt);
                            break;
                        }
                        break;
                }
            } else {
                sb.append("\\\\");
            }
        }
        return sb.toString();
    }

    /* renamed from: finalConstraints-tfFHcEY, reason: not valid java name */
    public static final long m818finalConstraintstfFHcEY(long j, boolean z, int i, float f) {
        int m681getMaxWidthimpl = ((z || i == 2 || i == 4 || i == 5) && androidx.compose.ui.unit.Constraints.m677getHasBoundedWidthimpl(j)) ? androidx.compose.ui.unit.Constraints.m681getMaxWidthimpl(j) : Integer.MAX_VALUE;
        if (androidx.compose.ui.unit.Constraints.m683getMinWidthimpl(j) != m681getMaxWidthimpl) {
            m681getMaxWidthimpl = RegexKt.coerceIn(BasicTextKt.ceilToIntPx(f), androidx.compose.ui.unit.Constraints.m683getMinWidthimpl(j), m681getMaxWidthimpl);
        }
        return UStringsKt.m843fitPrioritizingWidthZbe2FdA(0, m681getMaxWidthimpl, 0, androidx.compose.ui.unit.Constraints.m680getMaxHeightimpl(j));
    }

    public static final ReflectKotlinClass findKotlinClass(ReflectJavaClassFinder reflectJavaClassFinder, ClassId classId, JvmMetadataVersion jvmMetadataVersion) {
        classId.getClass();
        jvmMetadataVersion.getClass();
        ConnectionPool findKotlinClassOrContent = reflectJavaClassFinder.findKotlinClassOrContent(classId, jvmMetadataVersion);
        if (findKotlinClassOrContent != null) {
            return (ReflectKotlinClass) findKotlinClassOrContent.delegate;
        }
        return null;
    }

    public static Drawable getDrawable(Context context, int i) {
        return ResourceManagerInternal.get().getDrawable(context, i);
    }

    public static final AnnotatedString getSelectedText(TextFieldValue textFieldValue) {
        AnnotatedString annotatedString = textFieldValue.annotatedString;
        long j = textFieldValue.selection;
        annotatedString.getClass();
        return annotatedString.subSequence(TextRange.m644getMinimpl(j), TextRange.m643getMaximpl(j));
    }

    public static File getTempFile(Context context) {
        File cacheDir = context.getCacheDir();
        if (cacheDir == null) {
            return null;
        }
        String str = ".font" + Process.myPid() + "-" + Process.myTid() + "-";
        for (int i = 0; i < 100; i++) {
            File file = new File(cacheDir, Animation.CC.m(i, str));
            if (file.createNewFile()) {
                return file;
            }
        }
        return null;
    }

    public static final AnnotatedString getTextAfterSelection(TextFieldValue textFieldValue, int i) {
        AnnotatedString annotatedString = textFieldValue.annotatedString;
        AnnotatedString annotatedString2 = textFieldValue.annotatedString;
        long j = textFieldValue.selection;
        int m643getMaximpl = TextRange.m643getMaximpl(j);
        int m643getMaximpl2 = TextRange.m643getMaximpl(j);
        int i2 = m643getMaximpl2 + i;
        if (((i ^ i2) & (m643getMaximpl2 ^ i2)) < 0) {
            i2 = annotatedString2.text.length();
        }
        return annotatedString.subSequence(m643getMaximpl, Math.min(i2, annotatedString2.text.length()));
    }

    public static final AnnotatedString getTextBeforeSelection(TextFieldValue textFieldValue, int i) {
        AnnotatedString annotatedString = textFieldValue.annotatedString;
        long j = textFieldValue.selection;
        int m644getMinimpl = TextRange.m644getMinimpl(j);
        int i2 = m644getMinimpl - i;
        if (((m644getMinimpl ^ i2) & (i ^ m644getMinimpl)) < 0) {
            i2 = 0;
        }
        return annotatedString.subSequence(Math.max(0, i2), TextRange.m644getMinimpl(j));
    }

    public static final int getTotalChangedRows(SQLiteConnection sQLiteConnection) {
        sQLiteConnection.getClass();
        SQLiteStatement prepare = sQLiteConnection.prepare("SELECT changes()");
        try {
            prepare.step();
            int i = (int) prepare.getLong(0);
            closeFinally(prepare, null);
            return i;
        } finally {
        }
    }

    public static void handleException(String str, Exception exc) {
        if (exc instanceof InvocationTargetException) {
            Throwable cause = exc.getCause();
            if (cause instanceof RuntimeException) {
                throw ((RuntimeException) cause);
            }
            _UtilJvmKt$$ExternalSyntheticLambda0.m(cause);
            return;
        }
        Log.v("Trace", "Unable to call " + str + " via reflection", exc);
    }

    public static final BackoffPolicy intToBackoffPolicy(int i) {
        if (i == 0) {
            return BackoffPolicy.EXPONENTIAL;
        }
        if (i == 1) {
            return BackoffPolicy.LINEAR;
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m(Animation.CC.m(i, "Could not convert ", " to BackoffPolicy"));
        return null;
    }

    public static final NetworkType intToNetworkType(int i) {
        if (i == 0) {
            return NetworkType.NOT_REQUIRED;
        }
        if (i == 1) {
            return NetworkType.CONNECTED;
        }
        if (i == 2) {
            return NetworkType.UNMETERED;
        }
        if (i == 3) {
            return NetworkType.NOT_ROAMING;
        }
        if (i == 4) {
            return NetworkType.METERED;
        }
        if (Build.VERSION.SDK_INT >= 30 && i == 5) {
            return NetworkType.TEMPORARILY_UNMETERED;
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m(Animation.CC.m(i, "Could not convert ", " to NetworkType"));
        return null;
    }

    public static final OutOfQuotaPolicy intToOutOfQuotaPolicy(int i) {
        if (i == 0) {
            return OutOfQuotaPolicy.RUN_AS_NON_EXPEDITED_WORK_REQUEST;
        }
        if (i == 1) {
            return OutOfQuotaPolicy.DROP_WORK_REQUEST;
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m(Animation.CC.m(i, "Could not convert ", " to OutOfQuotaPolicy"));
        return null;
    }

    public static final WorkInfo.State intToState(int i) {
        if (i == 0) {
            return WorkInfo.State.ENQUEUED;
        }
        if (i == 1) {
            return WorkInfo.State.RUNNING;
        }
        if (i == 2) {
            return WorkInfo.State.SUCCEEDED;
        }
        if (i == 3) {
            return WorkInfo.State.FAILED;
        }
        if (i == 4) {
            return WorkInfo.State.BLOCKED;
        }
        if (i == 5) {
            return WorkInfo.State.CANCELLED;
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m(Animation.CC.m(i, "Could not convert ", " to State"));
        return null;
    }

    public static boolean isEnabled() {
        if (Build.VERSION.SDK_INT >= 29) {
            return TraceApi29Impl.isEnabled();
        }
        try {
            Method method = sIsTagEnabledMethod;
            if (method == null) {
                sTraceTagApp = Trace.class.getField("TRACE_TAG_APP").getLong(null);
                method = Trace.class.getMethod("isTagEnabled", Long.TYPE);
                sIsTagEnabledMethod = method;
            }
            return ((Boolean) method.invoke(null, Long.valueOf(sTraceTagApp))).booleanValue();
        } catch (Exception e) {
            handleException("isTagEnabled", e);
            return false;
        }
    }

    public static final SmartList listOfNonEmptyScopes(ArrayList arrayList) {
        SmartList smartList = new SmartList();
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            Object next = it.next();
            MemberScope memberScope = (MemberScope) next;
            if (memberScope != null && memberScope != MemberScope.Empty.INSTANCE) {
                smartList.add(next);
            }
        }
        return smartList;
    }

    public static float lookupAndInterpolate(float f, float[] fArr, float[] fArr2) {
        float f2;
        float f3;
        float f4;
        float f5;
        float abs = Math.abs(f);
        float signum = Math.signum(f);
        int binarySearch = Arrays.binarySearch(fArr, abs);
        if (binarySearch >= 0) {
            return signum * fArr2[binarySearch];
        }
        int i = -(binarySearch + 1);
        int i2 = i - 1;
        if (i2 >= fArr.length - 1) {
            float f6 = fArr[fArr.length - 1];
            return f6 == RecyclerView.DECELERATION_RATE ? RecyclerView.DECELERATION_RATE : (fArr2[fArr.length - 1] / f6) * f;
        }
        if (i2 == -1) {
            float f7 = fArr[0];
            f4 = fArr2[0];
            f5 = f7;
            f3 = 0.0f;
            f2 = 0.0f;
        } else {
            float f8 = fArr[i2];
            float f9 = fArr[i];
            f2 = fArr2[i2];
            f3 = f8;
            f4 = fArr2[i];
            f5 = f9;
        }
        return (((f4 - f2) * Math.max(RecyclerView.DECELERATION_RATE, Math.min(1.0f, f3 == f5 ? 0.0f : (abs - f3) / (f5 - f3)))) + f2) * signum;
    }

    public static SpecialGenericSignatures$Companion$NameAndSignature method(String str, String str2, String str3, String str4) {
        return new SpecialGenericSignatures$Companion$NameAndSignature(Name.identifier(str2), str + '.' + (str2 + '(' + str3 + ')' + str4));
    }

    public static MappedByteBuffer mmap(Context context, Uri uri) {
        ParcelFileDescriptor openFileDescriptor;
        try {
            openFileDescriptor = context.getContentResolver().openFileDescriptor(uri, "r", null);
        } catch (IOException unused) {
        }
        if (openFileDescriptor == null) {
            if (openFileDescriptor != null) {
                openFileDescriptor.close();
                return null;
            }
            return null;
        }
        try {
            FileInputStream fileInputStream = new FileInputStream(openFileDescriptor.getFileDescriptor());
            try {
                FileChannel channel = fileInputStream.getChannel();
                MappedByteBuffer map = channel.map(FileChannel.MapMode.READ_ONLY, 0L, channel.size());
                fileInputStream.close();
                openFileDescriptor.close();
                return map;
            } finally {
            }
        } finally {
        }
    }

    public static final MutableActionParameters mutableActionParametersOf(ActionParameters$Pair... actionParameters$PairArr) {
        ArrayList arrayList = new ArrayList(actionParameters$PairArr.length);
        if (actionParameters$PairArr.length > 0) {
            ActionParameters$Pair actionParameters$Pair = actionParameters$PairArr[0];
            throw null;
        }
        Pair[] pairArr = (Pair[]) arrayList.toArray(new Pair[0]);
        Pair[] pairArr2 = (Pair[]) Arrays.copyOf(pairArr, pairArr.length);
        LinkedHashMap linkedHashMap = new LinkedHashMap(MapsKt__MapsKt.mapCapacity(pairArr2.length));
        MapsKt__MapsKt.putAll(linkedHashMap, pairArr2);
        return new MutableActionParameters(linkedHashMap);
    }

    public static final KSerializer parametrizedSerializerOrNull(KClass kClass, ArrayList arrayList, Function0 function0) {
        KSerializer hashSetSerializer;
        KSerializer referenceArraySerializer;
        ReflectionFactory reflectionFactory = Reflection.factory;
        if (kClass.equals(reflectionFactory.getOrCreateKotlinClass(Collection.class)) || kClass.equals(reflectionFactory.getOrCreateKotlinClass(List.class)) || kClass.equals(reflectionFactory.getOrCreateKotlinClass(List.class)) || kClass.equals(reflectionFactory.getOrCreateKotlinClass(ArrayList.class))) {
            hashSetSerializer = new HashSetSerializer((KSerializer) arrayList.get(0), 1);
        } else if (kClass.equals(reflectionFactory.getOrCreateKotlinClass(HashSet.class))) {
            hashSetSerializer = new HashSetSerializer((KSerializer) arrayList.get(0), 0);
        } else if (kClass.equals(reflectionFactory.getOrCreateKotlinClass(Set.class)) || kClass.equals(reflectionFactory.getOrCreateKotlinClass(Set.class)) || kClass.equals(reflectionFactory.getOrCreateKotlinClass(LinkedHashSet.class))) {
            hashSetSerializer = new HashSetSerializer((KSerializer) arrayList.get(0), 2);
        } else if (kClass.equals(reflectionFactory.getOrCreateKotlinClass(HashMap.class))) {
            hashSetSerializer = new HashMapSerializer((KSerializer) arrayList.get(0), (KSerializer) arrayList.get(1), 0);
        } else if (kClass.equals(reflectionFactory.getOrCreateKotlinClass(Map.class)) || kClass.equals(reflectionFactory.getOrCreateKotlinClass(Map.class)) || kClass.equals(reflectionFactory.getOrCreateKotlinClass(LinkedHashMap.class))) {
            hashSetSerializer = new HashMapSerializer((KSerializer) arrayList.get(0), (KSerializer) arrayList.get(1), 1);
        } else {
            if (kClass.equals(reflectionFactory.getOrCreateKotlinClass(Map.Entry.class))) {
                KSerializer kSerializer = (KSerializer) arrayList.get(0);
                KSerializer kSerializer2 = (KSerializer) arrayList.get(1);
                kSerializer.getClass();
                kSerializer2.getClass();
                referenceArraySerializer = new PairSerializer(kSerializer, kSerializer2, 1);
            } else if (kClass.equals(reflectionFactory.getOrCreateKotlinClass(Pair.class))) {
                KSerializer kSerializer3 = (KSerializer) arrayList.get(0);
                KSerializer kSerializer4 = (KSerializer) arrayList.get(1);
                kSerializer3.getClass();
                kSerializer4.getClass();
                referenceArraySerializer = new PairSerializer(kSerializer3, kSerializer4, 0);
            } else if (kClass.equals(reflectionFactory.getOrCreateKotlinClass(Triple.class))) {
                KSerializer kSerializer5 = (KSerializer) arrayList.get(0);
                KSerializer kSerializer6 = (KSerializer) arrayList.get(1);
                KSerializer kSerializer7 = (KSerializer) arrayList.get(2);
                kSerializer5.getClass();
                kSerializer6.getClass();
                kSerializer7.getClass();
                hashSetSerializer = new TripleSerializer(kSerializer5, kSerializer6, kSerializer7);
            } else if (UnsignedKt.getJavaClass(kClass).isArray()) {
                Object invoke = function0.invoke();
                invoke.getClass();
                KSerializer kSerializer8 = (KSerializer) arrayList.get(0);
                kSerializer8.getClass();
                referenceArraySerializer = new ReferenceArraySerializer((KClass) invoke, kSerializer8);
            } else {
                hashSetSerializer = null;
            }
            hashSetSerializer = referenceArraySerializer;
        }
        if (hashSetSerializer != null) {
            return hashSetSerializer;
        }
        KSerializer[] kSerializerArr = (KSerializer[]) arrayList.toArray(new KSerializer[0]);
        KSerializer[] kSerializerArr2 = (KSerializer[]) Arrays.copyOf(kSerializerArr, kSerializerArr.length);
        return kotlinx.serialization.internal.TuplesKt.constructSerializerForGivenTypeArgs(UnsignedKt.getJavaClass(kClass), (KSerializer[]) Arrays.copyOf(kSerializerArr2, kSerializerArr2.length));
    }

    public static final void positionToParentOf(SlotWriter slotWriter, Applier applier, int i) {
        while (true) {
            int i2 = slotWriter.parent;
            if (i > i2 && i < slotWriter.currentGroupEnd) {
                return;
            }
            if (i2 == 0 && i == 0) {
                return;
            }
            slotWriter.skipToGroupEnd();
            if (slotWriter.isNode(slotWriter.parent)) {
                applier.up();
            }
            slotWriter.endGroup();
        }
    }

    public static final KSerializer serializer(KClass kClass) {
        kClass.getClass();
        KSerializer serializerOrNull = serializerOrNull(kClass);
        if (serializerOrNull != null) {
            return serializerOrNull;
        }
        throw new SerializationException(kotlinx.serialization.internal.TuplesKt.notRegisteredMessage(kClass));
    }

    /* JADX WARN: Removed duplicated region for block: B:30:0x00ba  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final kotlinx.serialization.KSerializer serializerByKTypeImpl$SerializersKt__SerializersKt(org.wikipedia.login.LoginClient r5, kotlin.reflect.KType r6, boolean r7) {
        /*
            kotlin.reflect.KClass r0 = kotlinx.serialization.internal.TuplesKt.kclass(r6)
            boolean r1 = r6.isMarkedNullable()
            java.util.List r6 = r6.getArguments()
            java.util.ArrayList r2 = new java.util.ArrayList
            r3 = 10
            int r3 = kotlin.collections.CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(r6, r3)
            r2.<init>(r3)
            java.util.Iterator r6 = r6.iterator()
        L1b:
            boolean r3 = r6.hasNext()
            r4 = 0
            if (r3 == 0) goto L39
            java.lang.Object r3 = r6.next()
            kotlin.reflect.KTypeProjection r3 = (kotlin.reflect.KTypeProjection) r3
            r3.getClass()
            kotlin.reflect.KType r3 = r3.type
            if (r3 == 0) goto L33
            r2.add(r3)
            goto L1b
        L33:
            java.lang.String r5 = "Star projections in type arguments are not allowed, but had "
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$3(r5, r3)
            return r4
        L39:
            boolean r6 = r2.isEmpty()
            if (r6 == 0) goto L5c
            java.lang.Class r6 = kotlin.UnsignedKt.getJavaClass(r0)
            r6.isInterface()
            kotlinx.serialization.internal.SerializerCache r6 = kotlinx.serialization.SerializersCacheKt.SERIALIZERS_CACHE
            if (r1 != 0) goto L55
            kotlinx.serialization.internal.SerializerCache r6 = kotlinx.serialization.SerializersCacheKt.SERIALIZERS_CACHE
            kotlinx.serialization.KSerializer r6 = r6.get(r0)
            if (r6 == 0) goto L53
            goto L74
        L53:
            r6 = r4
            goto L74
        L55:
            kotlinx.serialization.internal.SerializerCache r6 = kotlinx.serialization.SerializersCacheKt.SERIALIZERS_CACHE_NULLABLE
            kotlinx.serialization.KSerializer r6 = r6.get(r0)
            goto L74
        L5c:
            kotlinx.serialization.internal.SerializerCache r6 = kotlinx.serialization.SerializersCacheKt.SERIALIZERS_CACHE
            if (r1 != 0) goto L67
            kotlinx.serialization.internal.ParametrizedSerializerCache r6 = kotlinx.serialization.SerializersCacheKt.PARAMETRIZED_SERIALIZERS_CACHE
            java.lang.Object r6 = r6.mo870getgIAlus(r0, r2)
            goto L6d
        L67:
            kotlinx.serialization.internal.ParametrizedSerializerCache r6 = kotlinx.serialization.SerializersCacheKt.PARAMETRIZED_SERIALIZERS_CACHE_NULLABLE
            java.lang.Object r6 = r6.mo870getgIAlus(r0, r2)
        L6d:
            boolean r3 = r6 instanceof kotlin.Result.Failure
            if (r3 == 0) goto L72
            r6 = r4
        L72:
            kotlinx.serialization.KSerializer r6 = (kotlinx.serialization.KSerializer) r6
        L74:
            if (r6 == 0) goto L77
            return r6
        L77:
            boolean r6 = r2.isEmpty()
            if (r6 == 0) goto L95
            kotlinx.serialization.KSerializer r5 = serializerOrNull(r0)
            if (r5 != 0) goto Lb8
            java.lang.Class r5 = kotlin.UnsignedKt.getJavaClass(r0)
            boolean r5 = r5.isInterface()
            if (r5 == 0) goto L93
            kotlinx.serialization.PolymorphicSerializer r5 = new kotlinx.serialization.PolymorphicSerializer
            r5.<init>(r0)
            goto Lb8
        L93:
            r5 = r4
            goto Lb8
        L95:
            java.util.ArrayList r5 = serializersForParameters(r5, r2, r7)
            if (r5 != 0) goto L9c
            goto Lc1
        L9c:
            androidx.work.Worker$$ExternalSyntheticLambda0 r6 = new androidx.work.Worker$$ExternalSyntheticLambda0
            r7 = 24
            r6.<init>(r7, r2)
            kotlinx.serialization.KSerializer r5 = parametrizedSerializerOrNull(r0, r5, r6)
            if (r5 != 0) goto Lb8
            java.lang.Class r5 = kotlin.UnsignedKt.getJavaClass(r0)
            boolean r5 = r5.isInterface()
            if (r5 == 0) goto L93
            kotlinx.serialization.PolymorphicSerializer r5 = new kotlinx.serialization.PolymorphicSerializer
            r5.<init>(r0)
        Lb8:
            if (r5 == 0) goto Lc1
            if (r1 == 0) goto Lc0
            kotlinx.serialization.KSerializer r5 = kotlin.UnsignedKt.getNullable(r5)
        Lc0:
            return r5
        Lc1:
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.TuplesKt.serializerByKTypeImpl$SerializersKt__SerializersKt(org.wikipedia.login.LoginClient, kotlin.reflect.KType, boolean):kotlinx.serialization.KSerializer");
    }

    public static final KSerializer serializerOrNull(KClass kClass) {
        kClass.getClass();
        KSerializer constructSerializerForGivenTypeArgs = kotlinx.serialization.internal.TuplesKt.constructSerializerForGivenTypeArgs(UnsignedKt.getJavaClass(kClass), (KSerializer[]) Arrays.copyOf(new KSerializer[0], 0));
        return constructSerializerForGivenTypeArgs == null ? (KSerializer) PrimitivesKt.BUILTIN_SERIALIZERS.get(kClass) : constructSerializerForGivenTypeArgs;
    }

    public static final ArrayList serializersForParameters(LoginClient loginClient, List list, boolean z) {
        loginClient.getClass();
        if (!z) {
            ArrayList arrayList = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(list, 10));
            Iterator it = list.iterator();
            while (it.hasNext()) {
                KSerializer serializerOrNull = serializerOrNull(loginClient, (KType) it.next());
                if (serializerOrNull == null) {
                    return null;
                }
                arrayList.add(serializerOrNull);
            }
            return arrayList;
        }
        ArrayList arrayList2 = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(list, 10));
        Iterator it2 = list.iterator();
        while (it2.hasNext()) {
            KType kType = (KType) it2.next();
            kType.getClass();
            KSerializer serializerByKTypeImpl$SerializersKt__SerializersKt = serializerByKTypeImpl$SerializersKt__SerializersKt(loginClient, kType, true);
            if (serializerByKTypeImpl$SerializersKt__SerializersKt == null) {
                throw new SerializationException(kotlinx.serialization.internal.TuplesKt.notRegisteredMessage(kotlinx.serialization.internal.TuplesKt.kclass(kType)));
            }
            arrayList2.add(serializerByKTypeImpl$SerializersKt__SerializersKt);
        }
        return arrayList2;
    }

    public static void setDecorFitsSystemWindows(Window window, boolean z) {
        int i = Build.VERSION.SDK_INT;
        if (i >= 35) {
            window.setDecorFitsSystemWindows(z);
        } else {
            if (i >= 30) {
                GeoUtil.setDecorFitsSystemWindows(window, z);
                return;
            }
            View decorView = window.getDecorView();
            int systemUiVisibility = decorView.getSystemUiVisibility();
            decorView.setSystemUiVisibility(z ? systemUiVisibility & (-1793) : systemUiVisibility | 1792);
        }
    }

    public static final int stateToInt(WorkInfo.State state) {
        state.getClass();
        switch (WorkTypeConverters$WhenMappings.$EnumSwitchMapping$0[state.ordinal()]) {
            case 1:
                break;
            case 2:
                break;
            case 3:
                break;
            case 4:
                break;
            case 5:
                break;
            case 6:
                break;
            default:
                ContextsKt$$ExternalSyntheticBUOutline0.m();
                break;
        }
        return 0;
    }

    public static final Pair to(Object obj, Object obj2) {
        return new Pair(obj, obj2);
    }

    public static final NetworkRequestCompat toNetworkRequest$work_runtime_release(byte[] bArr) {
        bArr.getClass();
        if (Build.VERSION.SDK_INT < 28 || bArr.length == 0) {
            return new NetworkRequestCompat(null);
        }
        ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(bArr);
        try {
            ObjectInputStream objectInputStream = new ObjectInputStream(byteArrayInputStream);
            try {
                int readInt = objectInputStream.readInt();
                int[] iArr = new int[readInt];
                for (int i = 0; i < readInt; i++) {
                    iArr[i] = objectInputStream.readInt();
                }
                int readInt2 = objectInputStream.readInt();
                int[] iArr2 = new int[readInt2];
                for (int i2 = 0; i2 < readInt2; i2++) {
                    iArr2[i2] = objectInputStream.readInt();
                }
                NetworkRequestCompat createNetworkRequestCompat$work_runtime_release = Api28Impl.createNetworkRequestCompat$work_runtime_release(iArr2, iArr);
                objectInputStream.close();
                byteArrayInputStream.close();
                return createNetworkRequestCompat$work_runtime_release;
            } finally {
            }
        } finally {
        }
    }

    /* renamed from: toString-impl, reason: not valid java name */
    public static String m819toStringimpl(long j) {
        int i = (int) (j >> 32);
        int i2 = (int) (j & 4294967295L);
        if (Float.intBitsToFloat(i) == Float.intBitsToFloat(i2)) {
            return "CornerRadius.circular(" + UnsignedKt.toStringAsFixed(Float.intBitsToFloat(i)) + ')';
        }
        return "CornerRadius.elliptical(" + UnsignedKt.toStringAsFixed(Float.intBitsToFloat(i)) + ", " + UnsignedKt.toStringAsFixed(Float.intBitsToFloat(i2)) + ')';
    }

    public static String truncatedTraceSectionLabel(String str) {
        return str.length() <= 127 ? str : str.substring(0, 127);
    }

    public abstract int calculateInnerMargin(ViewGroup.MarginLayoutParams marginLayoutParams);

    public abstract float calculateSlideOffset(int i);

    public abstract int getCoplanarSiblingAdjacentMargin(ViewGroup.MarginLayoutParams marginLayoutParams);

    public abstract int getExpandedOffset();

    public abstract int getHiddenOffset();

    public abstract int getMaxViewPositionHorizontal();

    public abstract int getMinViewPositionHorizontal();

    public abstract int getOuterEdge(View view);

    public abstract int getParentInnerEdge(CoordinatorLayout coordinatorLayout);

    public abstract int getSheetEdge();

    public abstract float getValue(Object obj);

    public abstract boolean isExpandingOutwards(float f);

    public abstract boolean isReleasedCloseToInnerEdge(View view);

    public abstract boolean isSwipeSignificant(float f, float f2);

    public abstract void setValue(Object obj, float f);

    public abstract boolean shouldHide(View view, float f);

    public abstract void updateCoplanarSiblingAdjacentMargin(ViewGroup.MarginLayoutParams marginLayoutParams, int i);

    public abstract void updateCoplanarSiblingLayoutParams(ViewGroup.MarginLayoutParams marginLayoutParams, int i, int i2);

    public static final KSerializer serializerOrNull(LoginClient loginClient, KType kType) {
        loginClient.getClass();
        kType.getClass();
        return serializerByKTypeImpl$SerializersKt__SerializersKt(loginClient, kType, false);
    }

    public static boolean copyToFile(File file, Resources resources, int i) {
        InputStream inputStream;
        try {
            inputStream = resources.openRawResource(i);
        } catch (Throwable th) {
            th = th;
            inputStream = null;
        }
        try {
            boolean copyToFile = copyToFile(file, inputStream);
            if (inputStream != null) {
                try {
                    inputStream.close();
                } catch (IOException unused) {
                }
            }
            return copyToFile;
        } catch (Throwable th2) {
            th = th2;
            if (inputStream != null) {
                try {
                    inputStream.close();
                } catch (IOException unused2) {
                }
            }
            throw th;
        }
    }
}
