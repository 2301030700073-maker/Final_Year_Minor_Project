package androidx.room;

import android.animation.ArgbEvaluator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.os.Build;
import android.os.Parcelable;
import android.os.Trace;
import android.util.Log;
import android.widget.TextView;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.composer.gapbuffer.GapAnchor;
import androidx.compose.runtime.composer.gapbuffer.SlotTableKt;
import androidx.compose.runtime.composer.gapbuffer.SlotWriter;
import androidx.compose.ui.draganddrop.DragAndDropNode;
import androidx.compose.ui.input.key.Key;
import androidx.compose.ui.node.HitTestResultKt;
import androidx.compose.ui.node.InnerNodeCoordinator;
import androidx.compose.ui.unit.DensityWithConverter;
import androidx.compose.ui.unit.LinearFontScaleConverter;
import androidx.compose.ui.unit.fontscaling.FontScaleConverter;
import androidx.compose.ui.unit.fontscaling.FontScaleConverterFactory;
import androidx.core.view.ViewPropertyAnimatorListener;
import androidx.interpolator.view.animation.FastOutSlowInInterpolator;
import androidx.preference.PreferenceManager;
import androidx.room.RoomDatabase;
import androidx.tracing.TraceApi29Impl;
import coil3.ComponentRegistry;
import coil3.decode.DecodeUtils$$ExternalSyntheticBUOutline0;
import coil3.util.ImmutableHardwareBitmapService;
import com.grack.nanojson.JsonArray;
import com.grack.nanojson.JsonObject;
import com.grack.nanojson.JsonParser;
import com.grack.nanojson.JsonStringWriter;
import java.io.Serializable;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import kotlin.Result;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.EmptyList;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.ClassReference;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import kotlinx.serialization.json.Json;
import kotlinx.serialization.json.JsonBuilder;
import kotlinx.serialization.json.JsonConfiguration;
import kotlinx.serialization.json.JsonImpl;
import kotlinx.serialization.modules.SerializersModuleKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;
import org.jsoup.Jsoup;
import org.koin.core.definition.BeanDefinition;
import org.koin.core.definition.Kind;
import org.koin.core.definition.KoinDefinition;
import org.koin.core.instance.FactoryInstanceFactory;
import org.koin.core.instance.InstanceFactory;
import org.koin.core.instance.ScopedInstanceFactory;
import org.koin.core.instance.SingleInstanceFactory;
import org.koin.core.module.Module;
import org.koin.core.qualifier.Qualifier;
import org.koin.core.qualifier.StringQualifier;
import org.koin.core.qualifier.TypeQualifier;
import org.koin.core.registry.ScopeRegistry;
import org.koin.ext.KClassExtKt;
import org.mozilla.javascript.Token;
import org.schabi.newpipe.MainActivity;
import org.schabi.newpipe.R;
import org.schabi.newpipe.extractor.ServiceList;
import org.schabi.newpipe.extractor.services.peertube.PeertubeInstance;
import org.schabi.newpipe.ktx.TextViewUtils$animateTextColor$$inlined$addListener$default$1;
import org.schabi.newpipe.ktx.ViewUtils$$ExternalSyntheticLambda0;
import org.schabi.newpipe.util.ZipHelper;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract class Room implements ViewPropertyAnimatorListener {
    public static Method sAsyncTraceBeginMethod;
    public static Method sAsyncTraceEndMethod;
    public static Method sIsTagEnabledMethod;
    public static long sTraceTagApp;

    public static final DensityWithConverter Density(Context context) {
        float f = context.getResources().getConfiguration().fontScale;
        float f2 = context.getResources().getDisplayMetrics().density;
        FontScaleConverter forScale = FontScaleConverterFactory.forScale(f);
        if (forScale == null) {
            forScale = new LinearFontScaleConverter(f);
        }
        return new DensityWithConverter(f2, f, forScale);
    }

    public static JsonImpl Json$default(Function1 function1) {
        Json.Default r0 = Json.Default;
        r0.getClass();
        JsonBuilder jsonBuilder = new JsonBuilder();
        JsonConfiguration jsonConfiguration = r0.configuration;
        jsonBuilder.encodeDefaults = jsonConfiguration.encodeDefaults;
        jsonBuilder.explicitNulls = jsonConfiguration.explicitNulls;
        jsonBuilder.ignoreUnknownKeys = jsonConfiguration.ignoreUnknownKeys;
        jsonBuilder.prettyPrint = jsonConfiguration.prettyPrint;
        String str = jsonConfiguration.prettyPrintIndent;
        jsonBuilder.prettyPrintIndent = str;
        jsonBuilder.coerceInputValues = jsonConfiguration.coerceInputValues;
        jsonBuilder.classDiscriminator = jsonConfiguration.classDiscriminator;
        jsonBuilder.classDiscriminatorMode = jsonConfiguration.classDiscriminatorMode;
        jsonBuilder.useAlternativeNames = jsonConfiguration.useAlternativeNames;
        jsonBuilder.serializersModule = r0.serializersModule;
        jsonBuilder.exceptionsWithDebugInfo = jsonConfiguration.exceptionsWithDebugInfo;
        function1.invoke(jsonBuilder);
        if (jsonBuilder.prettyPrint) {
            if (!Intrinsics.areEqual(str, "    ")) {
                for (int i = 0; i < str.length(); i++) {
                    char charAt = str.charAt(i);
                    if (charAt != ' ' && charAt != '\t' && charAt != '\r' && charAt != '\n') {
                        _UtilJvmKt$$ExternalSyntheticLambda1.m$1((Object) "Only whitespace, tab, newline and carriage return are allowed as pretty print symbols. Had ".concat(str));
                        return null;
                    }
                }
            }
        } else if (!Intrinsics.areEqual(str, "    ")) {
            _UtilJvmKt$$ExternalSyntheticLambda1.m$1("Indent should not be specified when default printing mode is used");
            return null;
        }
        JsonConfiguration jsonConfiguration2 = new JsonConfiguration(jsonBuilder.encodeDefaults, jsonBuilder.ignoreUnknownKeys, jsonBuilder.prettyPrint, jsonBuilder.explicitNulls, jsonBuilder.prettyPrintIndent, jsonBuilder.coerceInputValues, jsonBuilder.classDiscriminator, jsonBuilder.useAlternativeNames, jsonBuilder.classDiscriminatorMode, jsonBuilder.exceptionsWithDebugInfo);
        ComponentRegistry.Builder builder = jsonBuilder.serializersModule;
        builder.getClass();
        JsonImpl jsonImpl = new JsonImpl(jsonConfiguration2, builder);
        if (builder != SerializersModuleKt.EmptySerializersModule) {
            builder.dumpTo(new ImmutableHardwareBitmapService(jsonConfiguration2));
        }
        return jsonImpl;
    }

    public static final long Key(int i) {
        long j = i << 32;
        int i2 = Key.$r8$clinit;
        return j;
    }

    /* JADX WARN: Code restructure failed: missing block: B:160:0x02bb, code lost:
    
        if (r6.changed(1) != false) goto L189;
     */
    /* JADX WARN: Code restructure failed: missing block: B:190:0x0347, code lost:
    
        if (r6.changed(0) == false) goto L237;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:189:0x0342  */
    /* JADX WARN: Removed duplicated region for block: B:194:0x035e A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:198:0x0389  */
    /* JADX WARN: Removed duplicated region for block: B:203:0x03a2 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:206:0x03b0  */
    /* JADX WARN: Removed duplicated region for block: B:209:0x03ba  */
    /* JADX WARN: Removed duplicated region for block: B:212:0x03c5 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:215:0x03ea  */
    /* JADX WARN: Removed duplicated region for block: B:218:0x0402 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:221:0x0417  */
    /* JADX WARN: Removed duplicated region for block: B:236:0x0488  */
    /* JADX WARN: Removed duplicated region for block: B:244:0x0496  */
    /* JADX WARN: Removed duplicated region for block: B:252:0x0468  */
    /* JADX WARN: Removed duplicated region for block: B:254:0x03ed  */
    /* JADX WARN: Removed duplicated region for block: B:256:0x03bd  */
    /* JADX WARN: Removed duplicated region for block: B:257:0x03b3  */
    /* JADX WARN: Removed duplicated region for block: B:265:0x0351  */
    /* JADX WARN: Removed duplicated region for block: B:266:0x034a  */
    /* JADX WARN: Type inference failed for: r11v38 */
    /* JADX WARN: Type inference failed for: r11v39, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r11v40 */
    /* renamed from: Pager-eLwUrMk, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void m466PagereLwUrMk(androidx.compose.ui.Modifier r43, final androidx.compose.foundation.pager.DefaultPagerState r44, final androidx.compose.foundation.layout.PaddingValues r45, final androidx.compose.foundation.gestures.snapping.SnapFlingBehavior r46, final boolean r47, final androidx.compose.foundation.AndroidEdgeEffectOverscrollEffect r48, final androidx.compose.foundation.pager.PageSize$Fill r49, androidx.compose.ui.input.nestedscroll.NestedScrollConnection r50, final androidx.compose.ui.Alignment.Vertical r51, final androidx.compose.foundation.gestures.snapping.SnapPosition$Start r52, final androidx.compose.runtime.internal.ComposableLambdaImpl r53, androidx.compose.runtime.Composer r54, final int r55, final int r56) {
        /*
            Method dump skipped, instructions count: 1270
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.room.Room.m466PagereLwUrMk(androidx.compose.ui.Modifier, androidx.compose.foundation.pager.DefaultPagerState, androidx.compose.foundation.layout.PaddingValues, androidx.compose.foundation.gestures.snapping.SnapFlingBehavior, boolean, androidx.compose.foundation.AndroidEdgeEffectOverscrollEffect, androidx.compose.foundation.pager.PageSize$Fill, androidx.compose.ui.input.nestedscroll.NestedScrollConnection, androidx.compose.ui.Alignment$Vertical, androidx.compose.foundation.gestures.snapping.SnapPosition$Start, androidx.compose.runtime.internal.ComposableLambdaImpl, androidx.compose.runtime.Composer, int, int):void");
    }

    /* renamed from: access$contains-Uv8p0NA, reason: not valid java name */
    public static final boolean m467access$containsUv8p0NA(DragAndDropNode dragAndDropNode, long j) {
        if (!dragAndDropNode.node.isAttached) {
            return false;
        }
        InnerNodeCoordinator innerNodeCoordinator = HitTestResultKt.requireLayoutNode(dragAndDropNode).nodes.innerCoordinator;
        if (!innerNodeCoordinator.tail.isAttached) {
            return false;
        }
        long m349localToRootMKHz9U = innerNodeCoordinator.m349localToRootMKHz9U(0L);
        float intBitsToFloat = Float.intBitsToFloat((int) (m349localToRootMKHz9U >> 32));
        float intBitsToFloat2 = Float.intBitsToFloat((int) (m349localToRootMKHz9U & 4294967295L));
        long j2 = dragAndDropNode.size;
        float f = ((int) (j2 >> 32)) + intBitsToFloat;
        float f2 = ((int) (j2 & 4294967295L)) + intBitsToFloat2;
        float intBitsToFloat3 = Float.intBitsToFloat((int) (j >> 32));
        if (intBitsToFloat > intBitsToFloat3 || intBitsToFloat3 > f) {
            return false;
        }
        float intBitsToFloat4 = Float.intBitsToFloat((int) (j & 4294967295L));
        return intBitsToFloat2 <= intBitsToFloat4 && intBitsToFloat4 <= f2;
    }

    public static final boolean access$isCaseSensitive(String str) {
        for (int i = 0; i < str.length(); i++) {
            char charAt = str.charAt(i);
            if (charAt >= 128 || Character.isLetter(charAt)) {
                return true;
            }
        }
        return false;
    }

    public static final void animateTextColor(TextView textView, long j, int i, int i2) {
        int i3 = MainActivity.$r8$clinit;
        ValueAnimator ofObject = ValueAnimator.ofObject(new ArgbEvaluator(), Integer.valueOf(i), Integer.valueOf(i2));
        ofObject.setInterpolator(new FastOutSlowInInterpolator(0));
        ofObject.setDuration(j);
        ofObject.addUpdateListener(new ViewUtils$$ExternalSyntheticLambda0(textView, 3));
        ofObject.addListener(new TextViewUtils$animateTextColor$$inlined$addListener$default$1(textView, i2, textView, i2));
        ofObject.start();
    }

    public static final void bind(KoinDefinition koinDefinition, ClassReference classReference) {
        String str;
        InstanceFactory instanceFactory = koinDefinition.factory;
        BeanDefinition beanDefinition = instanceFactory.beanDefinition;
        beanDefinition._secondaryTypes.add(classReference);
        Module module = koinDefinition.module;
        module.getClass();
        Iterator it = beanDefinition._secondaryTypes.iterator();
        while (it.hasNext()) {
            ClassReference classReference2 = (ClassReference) it.next();
            TypeQualifier typeQualifier = beanDefinition.qualifier;
            Qualifier qualifier = beanDefinition.scopeQualifier;
            StringBuilder sb = new StringBuilder();
            sb.append(KClassExtKt.getFullName(classReference2));
            sb.append(':');
            if (typeQualifier == null || (str = typeQualifier.value) == null) {
                str = "";
            }
            sb.append(str);
            sb.append(':');
            sb.append(qualifier);
            module.mappings.put(sb.toString(), instanceFactory);
        }
    }

    public static KoinDefinition buildSingle$default(Module module, ClassReference classReference, Function2 function2) {
        module.getClass();
        return createDefinition$default(classReference, function2, Kind.Singleton, module, 8);
    }

    public static int compareValues(Comparable comparable, Comparable comparable2) {
        if (comparable == null) {
            return comparable2 == null ? 0 : -1;
        }
        if (comparable2 == null) {
            return 1;
        }
        return comparable.compareTo(comparable2);
    }

    public static KoinDefinition createDefinition$default(ClassReference classReference, Function2 function2, Kind kind, Module module, int i) {
        InstanceFactory singleInstanceFactory;
        StringQualifier stringQualifier = ScopeRegistry.rootScopeQualifier;
        stringQualifier.getClass();
        module.getClass();
        BeanDefinition beanDefinition = new BeanDefinition(stringQualifier, classReference, null, function2, kind);
        int ordinal = kind.ordinal();
        if (ordinal == 0) {
            singleInstanceFactory = new SingleInstanceFactory(beanDefinition);
        } else if (ordinal == 1) {
            singleInstanceFactory = new FactoryInstanceFactory(beanDefinition);
        } else {
            if (ordinal != 2) {
                DecodeUtils$$ExternalSyntheticBUOutline0.m();
                return null;
            }
            singleInstanceFactory = new ScopedInstanceFactory(beanDefinition);
        }
        module.indexPrimaryType(singleInstanceFactory);
        return new KoinDefinition(module, singleInstanceFactory);
    }

    public static final RoomDatabase.Builder databaseBuilder(Context context, Class cls, String str) {
        if (StringsKt.isBlank(str)) {
            _UtilJvmKt$$ExternalSyntheticLambda1.m$1("Cannot build a database with null or empty name. If you are trying to create an in memory database, use Room.inMemoryDatabaseBuilder");
            return null;
        }
        if (!str.equals(":memory:")) {
            return new RoomDatabase.Builder(context, cls, str);
        }
        _UtilJvmKt$$ExternalSyntheticLambda1.m$1("Cannot build a database with the special name ':memory:'. If you are trying to create an in memory database, use Room.inMemoryDatabaseBuilder");
        return null;
    }

    /*  JADX ERROR: NullPointerException in pass: LoopRegionVisitor
        java.lang.NullPointerException: Cannot invoke "jadx.core.dex.instructions.args.SSAVar.use(jadx.core.dex.instructions.args.RegisterArg)" because "ssaVar" is null
        	at jadx.core.dex.nodes.InsnNode.rebindArgs(InsnNode.java:493)
        	at jadx.core.dex.instructions.mods.TernaryInsn.rebindArgs(TernaryInsn.java:92)
        	at jadx.core.dex.visitors.regions.TernaryMod.replaceWithTernary(TernaryMod.java:340)
        	at jadx.core.dex.visitors.regions.TernaryMod.processOneBranchTernary(TernaryMod.java:272)
        	at jadx.core.dex.visitors.regions.TernaryMod.makeTernaryInsn(TernaryMod.java:77)
        	at jadx.core.dex.visitors.regions.TernaryMod.processRegion(TernaryMod.java:62)
        	at jadx.core.dex.visitors.regions.TernaryMod.enterRegion(TernaryMod.java:45)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:67)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1596)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1596)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1596)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1596)
        	at java.base/java.util.Collections$UnmodifiableCollection.forEach(Collections.java:1117)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1596)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1596)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1596)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverse(DepthRegionTraversal.java:19)
        	at jadx.core.dex.visitors.regions.TernaryMod.process(TernaryMod.java:35)
        	at jadx.core.dex.visitors.regions.IfRegionVisitor.process(IfRegionVisitor.java:34)
        	at jadx.core.dex.visitors.regions.LoopRegionVisitor.visit(LoopRegionVisitor.java:57)
        */
    public static boolean equalsIgnoreCase(java.lang.String r6, java.lang.String r7) {
        /*
            int r0 = r6.length()
            if (r6 != r7) goto L7
            goto L31
        L7:
            int r1 = r7.length()
            r2 = 0
            if (r0 == r1) goto Lf
            goto L30
        Lf:
            r1 = r2
        L10:
            if (r1 >= r0) goto L31
            char r3 = r6.charAt(r1)
            char r4 = r7.charAt(r1)
            if (r3 != r4) goto L1d
            goto L2d
        L1d:
            r3 = r3 | 32
            int r3 = r3 + (-97)
            char r3 = (char) r3
            r5 = 26
            if (r3 >= r5) goto L30
            r4 = r4 | 32
            int r4 = r4 + (-97)
            char r4 = (char) r4
            if (r3 != r4) goto L30
        L2d:
            int r1 = r1 + 1
            goto L10
        L30:
            return r2
        L31:
            r6 = 1
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.room.Room.equalsIgnoreCase(java.lang.String, java.lang.String):boolean");
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

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r6v13, types: [java.util.ArrayList] */
    /* JADX WARN: Type inference failed for: r6v4 */
    /* JADX WARN: Type inference failed for: r6v5 */
    public static final List getInstanceList(Context context) {
        ?? failure;
        context.getClass();
        SharedPreferences sharedPreferences = context.getSharedPreferences(PreferenceManager.getDefaultSharedPreferencesName(context), 0);
        String string = context.getString(R.string.peertube_instance_list_key);
        string.getClass();
        String string2 = sharedPreferences.getString(string, null);
        if (string2 == null) {
            PeertubeInstance peertubeInstance = ServiceList.PeerTube.instance;
            peertubeInstance.getClass();
            return Jsoup.listOf(peertubeInstance);
        }
        try {
            JsonArray array = ((JsonObject) JsonParser.object().from(string2)).getArray("instances");
            ArrayList arrayList = new ArrayList();
            Iterator it = array.iterator();
            while (it.hasNext()) {
                Object next = it.next();
                if (next instanceof JsonObject) {
                    arrayList.add(next);
                }
            }
            failure = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(arrayList, 10));
            Iterator it2 = arrayList.iterator();
            while (it2.hasNext()) {
                JsonObject jsonObject = (JsonObject) it2.next();
                failure.add(new PeertubeInstance(jsonObject.getString("url", null), jsonObject.getString("name", null)));
            }
        } catch (Throwable th) {
            failure = new Result.Failure(th);
        }
        PeertubeInstance peertubeInstance2 = ServiceList.PeerTube.instance;
        peertubeInstance2.getClass();
        List listOf = Jsoup.listOf(peertubeInstance2);
        boolean z = failure instanceof Result.Failure;
        List list = failure;
        if (z) {
            list = listOf;
        }
        return list;
    }

    public static Object getParcelableExtra(Intent intent, String str, Class cls) {
        if (Build.VERSION.SDK_INT >= 34) {
            return ZipHelper.getParcelableExtra(intent, str, cls);
        }
        Parcelable parcelableExtra = intent.getParcelableExtra(str);
        if (cls.isInstance(parcelableExtra)) {
            return parcelableExtra;
        }
        return null;
    }

    public static void handleException(String str, Exception exc) {
        if (exc instanceof InvocationTargetException) {
            Throwable cause = exc.getCause();
            if (cause instanceof RuntimeException) {
                throw ((RuntimeException) cause);
            }
            _UtilJvmKt$$ExternalSyntheticLambda1.m(cause);
            return;
        }
        Log.v("Trace", "Unable to call " + str + " via reflection", exc);
    }

    public static boolean isEnabled() {
        if (Build.VERSION.SDK_INT >= 29) {
            return TraceApi29Impl.isEnabled();
        }
        try {
            if (sIsTagEnabledMethod == null) {
                sTraceTagApp = Trace.class.getField("TRACE_TAG_APP").getLong(null);
                sIsTagEnabledMethod = Trace.class.getMethod("isTagEnabled", Long.TYPE);
            }
            return ((Boolean) sIsTagEnabledMethod.invoke(null, Long.valueOf(sTraceTagApp))).booleanValue();
        } catch (Exception e) {
            handleException("isTagEnabled", e);
            return false;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static List moveGroup(SlotWriter slotWriter, int i, SlotWriter slotWriter2, boolean z, boolean z2, boolean z3) {
        EmptyList emptyList;
        boolean z4;
        int i2;
        int i3;
        int groupSize = slotWriter.groupSize(i);
        int i4 = i + groupSize;
        int dataIndex = slotWriter.dataIndex(i);
        int dataIndex2 = slotWriter.dataIndex(i4);
        int i5 = dataIndex2 - dataIndex;
        boolean z5 = i >= 0 && (slotWriter.groups[(slotWriter.groupIndexToAddress(i) * 5) + 1] & 201326592) != 0;
        slotWriter2.insertGroups(groupSize);
        slotWriter2.insertSlots(i5, slotWriter2.currentGroup);
        if (slotWriter.groupGapStart < i4) {
            slotWriter.moveGroupGapTo(i4);
        }
        if (slotWriter.slotsGapStart < dataIndex2) {
            slotWriter.moveSlotGapTo(dataIndex2, i4);
        }
        int[] iArr = slotWriter2.groups;
        int i6 = slotWriter2.currentGroup;
        int i7 = i6 * 5;
        ArraysKt.copyInto(i7, i * 5, i4 * 5, slotWriter.groups, iArr);
        Object[] objArr = slotWriter2.slots;
        int i8 = slotWriter2.currentSlot;
        System.arraycopy(slotWriter.slots, dataIndex, objArr, i8, i5);
        int i9 = slotWriter2.parent;
        iArr[i7 + 2] = i9;
        int i10 = i6 - i;
        int i11 = i6 + groupSize;
        int dataIndex3 = i8 - slotWriter2.dataIndex(iArr, i6);
        int i12 = slotWriter2.slotsGapOwner;
        int i13 = slotWriter2.slotsGapLen;
        int length = objArr.length;
        boolean z6 = z5;
        int i14 = i12;
        int i15 = i6;
        while (i15 < i11) {
            if (i15 != i6) {
                int i16 = (i15 * 5) + 2;
                iArr[i16] = iArr[i16] + i10;
            }
            int[] iArr2 = iArr;
            int dataIndex4 = slotWriter2.dataIndex(iArr, i15) + dataIndex3;
            if (i14 < i15) {
                i2 = i6;
                i3 = 0;
            } else {
                i2 = i6;
                i3 = slotWriter2.slotsGapStart;
            }
            iArr2[(i15 * 5) + 4] = SlotWriter.dataIndexToDataAnchor(dataIndex4, i3, i13, length);
            if (i15 == i14) {
                i14++;
            }
            i15++;
            i6 = i2;
            iArr = iArr2;
        }
        int[] iArr3 = iArr;
        slotWriter2.slotsGapOwner = i14;
        int access$locationOf = SlotTableKt.access$locationOf(slotWriter.anchors, i, slotWriter.getSize$runtime());
        int access$locationOf2 = SlotTableKt.access$locationOf(slotWriter.anchors, i4, slotWriter.getSize$runtime());
        if (access$locationOf < access$locationOf2) {
            ArrayList arrayList = slotWriter.anchors;
            ArrayList arrayList2 = new ArrayList(access$locationOf2 - access$locationOf);
            for (int i17 = access$locationOf; i17 < access$locationOf2; i17++) {
                GapAnchor gapAnchor = (GapAnchor) arrayList.get(i17);
                gapAnchor.location += i10;
                arrayList2.add(gapAnchor);
            }
            slotWriter2.anchors.addAll(SlotTableKt.access$locationOf(slotWriter2.anchors, slotWriter2.currentGroup, slotWriter2.getSize$runtime()), arrayList2);
            arrayList.subList(access$locationOf, access$locationOf2).clear();
            emptyList = arrayList2;
        } else {
            emptyList = EmptyList.INSTANCE;
        }
        if (!emptyList.isEmpty()) {
            HashMap hashMap = slotWriter.sourceInformationMap;
            HashMap hashMap2 = slotWriter2.sourceInformationMap;
            if (hashMap != null && hashMap2 != null) {
                int size = emptyList.size();
                for (int i18 = 0; i18 < size; i18++) {
                }
            }
        }
        int i19 = slotWriter2.parent;
        slotWriter2.sourceInformationOf$runtime(i9);
        int parent = slotWriter.parent(slotWriter.groups, i);
        if (!z3) {
            z4 = false;
        } else if (z) {
            boolean z7 = parent >= 0;
            if (z7) {
                slotWriter.startGroup();
                slotWriter.advanceBy(parent - slotWriter.currentGroup);
                slotWriter.startGroup();
            }
            slotWriter.advanceBy(i - slotWriter.currentGroup);
            boolean removeGroup = slotWriter.removeGroup();
            if (z7) {
                slotWriter.skipToGroupEnd();
                slotWriter.endGroup();
                slotWriter.skipToGroupEnd();
                slotWriter.endGroup();
            }
            z4 = removeGroup;
        } else {
            boolean removeGroups = slotWriter.removeGroups(i, groupSize);
            slotWriter.removeSlots(dataIndex, i5, i - 1);
            z4 = removeGroups;
        }
        if (z4) {
            ComposerKt.composeImmediateRuntimeError("Unexpectedly removed anchors");
        }
        int i20 = slotWriter2.nodeCount;
        int i21 = iArr3[i7 + 1];
        slotWriter2.nodeCount = i20 + ((1073741824 & i21) != 0 ? 1 : i21 & 67108863);
        if (z2) {
            slotWriter2.currentGroup = i11;
            slotWriter2.currentSlot = i8 + i5;
        }
        if (z6) {
            slotWriter2.updateContainsMark(i9);
        }
        return emptyList;
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0060  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x009c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.grack.nanojson.JsonParser parse(java.lang.String r8) {
        /*
            java.lang.String r0 = "HTTP/1."
            r1 = 0
            boolean r0 = kotlin.text.StringsKt__StringsJVMKt.startsWith(r8, r0, r1)
            okhttp3.Protocol r2 = okhttp3.Protocol.HTTP_1_0
            okhttp3.Protocol r3 = okhttp3.Protocol.HTTP_1_1
            r4 = 4
            r5 = 32
            java.lang.String r6 = "Unexpected status line: "
            if (r0 == 0) goto L43
            int r0 = r8.length()
            r1 = 9
            if (r0 < r1) goto L39
            r0 = 8
            char r0 = r8.charAt(r0)
            if (r0 != r5) goto L39
            r0 = 7
            char r0 = r8.charAt(r0)
            int r0 = r0 + (-48)
            if (r0 == 0) goto L58
            r2 = 1
            if (r0 != r2) goto L2f
            goto L57
        L2f:
            java.net.ProtocolException r0 = new java.net.ProtocolException
            java.lang.String r8 = r6.concat(r8)
            r0.<init>(r8)
            throw r0
        L39:
            java.net.ProtocolException r0 = new java.net.ProtocolException
            java.lang.String r8 = r6.concat(r8)
            r0.<init>(r8)
            throw r0
        L43:
            java.lang.String r0 = "ICY "
            boolean r0 = kotlin.text.StringsKt__StringsJVMKt.startsWith(r8, r0, r1)
            if (r0 == 0) goto L4d
            r1 = r4
            goto L58
        L4d:
            java.lang.String r0 = "SOURCETABLE "
            boolean r0 = kotlin.text.StringsKt__StringsJVMKt.startsWith(r8, r0, r1)
            if (r0 == 0) goto La6
            r1 = 12
        L57:
            r2 = r3
        L58:
            int r0 = r8.length()
            int r3 = r1 + 3
            if (r0 < r3) goto L9c
            java.lang.String r0 = r8.substring(r1, r3)
            java.lang.Integer r0 = kotlin.text.StringsKt__StringsJVMKt.toIntOrNull(r0)
            if (r0 == 0) goto L92
            int r0 = r0.intValue()
            int r7 = r8.length()
            if (r7 <= r3) goto L8a
            char r3 = r8.charAt(r3)
            if (r3 != r5) goto L80
            int r1 = r1 + r4
            java.lang.String r8 = r8.substring(r1)
            goto L8c
        L80:
            java.net.ProtocolException r0 = new java.net.ProtocolException
            java.lang.String r8 = r6.concat(r8)
            r0.<init>(r8)
            throw r0
        L8a:
            java.lang.String r8 = ""
        L8c:
            com.grack.nanojson.JsonParser r1 = new com.grack.nanojson.JsonParser
            r1.<init>(r2, r0, r8)
            return r1
        L92:
            java.net.ProtocolException r0 = new java.net.ProtocolException
            java.lang.String r8 = r6.concat(r8)
            r0.<init>(r8)
            throw r0
        L9c:
            java.net.ProtocolException r0 = new java.net.ProtocolException
            java.lang.String r8 = r6.concat(r8)
            r0.<init>(r8)
            throw r0
        La6:
            java.net.ProtocolException r0 = new java.net.ProtocolException
            java.lang.String r8 = r6.concat(r8)
            r0.<init>(r8)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.room.Room.parse(java.lang.String):com.grack.nanojson.JsonParser");
    }

    public static final void selectInstance(PeertubeInstance peertubeInstance, Context context) {
        context.getClass();
        SharedPreferences sharedPreferences = context.getSharedPreferences(PreferenceManager.getDefaultSharedPreferencesName(context), 0);
        String string = context.getString(R.string.peertube_selected_instance_key);
        string.getClass();
        JsonStringWriter jsonStringWriter = new JsonStringWriter();
        jsonStringWriter.object();
        jsonStringWriter.value("name", peertubeInstance.name);
        jsonStringWriter.value("url", peertubeInstance.url);
        jsonStringWriter.end();
        String done = jsonStringWriter.done();
        sharedPreferences.getClass();
        SharedPreferences.Editor edit = sharedPreferences.edit();
        edit.getClass();
        edit.putString(string, done);
        edit.apply();
        ServiceList.PeerTube.instance = peertubeInstance;
    }

    public static String toLowerCase(String str) {
        int length = str.length();
        int i = 0;
        while (i < length) {
            char charAt = str.charAt(i);
            if (charAt >= 'A' && charAt <= 'Z') {
                char[] charArray = str.toCharArray();
                while (i < length) {
                    char c = charArray[i];
                    if (c >= 'A' && c <= 'Z') {
                        charArray[i] = (char) (c ^ ' ');
                    }
                    i++;
                }
                return String.valueOf(charArray);
            }
            i++;
        }
        return str;
    }

    public static String toUpperCase(String str) {
        int length = str.length();
        int i = 0;
        while (i < length) {
            char charAt = str.charAt(i);
            if (charAt >= 'a' && charAt <= 'z') {
                char[] charArray = str.toCharArray();
                while (i < length) {
                    char c = charArray[i];
                    if (c >= 'a' && c <= 'z') {
                        charArray[i] = (char) (c ^ ' ');
                    }
                    i++;
                }
                return String.valueOf(charArray);
            }
            i++;
        }
        return str;
    }

    public static String truncatedTraceSectionLabel(String str) {
        return str.length() <= 127 ? str : str.substring(0, Token.SWITCH);
    }

    public abstract Room append(Serializable serializable);

    @Override // androidx.core.view.ViewPropertyAnimatorListener
    public void onAnimationCancel() {
    }

    @Override // androidx.core.view.ViewPropertyAnimatorListener
    public void onAnimationStart() {
    }
}
