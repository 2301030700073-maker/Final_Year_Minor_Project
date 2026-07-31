package org.jsoup;

import android.app.Activity;
import android.content.Context;
import android.view.View;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;
import androidx.collection.MutableScatterMap;
import androidx.collection.MutableScatterSet;
import androidx.collection.ScatterMapKt;
import androidx.compose.material3.TabKt$$ExternalSyntheticLambda1;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.DynamicProvidableCompositionLocal;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.GapComposer$$ExternalSyntheticLambda0;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.internal.Expect_jvmKt;
import androidx.compose.runtime.internal.PersistentCompositionLocalHashMap;
import androidx.compose.runtime.snapshots.SnapshotStateMap;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.BiasAlignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.geometry.RoundRect;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.node.LayoutNode$Companion$Constructor$1;
import androidx.compose.ui.node.Owner;
import androidx.compose.ui.node.RulerTrackingMap;
import androidx.compose.ui.text.SaversKt$$ExternalSyntheticLambda3;
import androidx.compose.ui.text.SaversKt$$ExternalSyntheticLambda4;
import androidx.compose.ui.text.font.FontWeight;
import androidx.compose.ui.window.AndroidDialog_androidKt$DialogLayout$1$1;
import androidx.core.os.BundleKt;
import androidx.navigation3.runtime.NavEntry;
import androidx.navigation3.runtime.NavEntryDecorator;
import androidx.navigation3.scene.OverlayScene;
import androidx.navigation3.scene.Scene;
import androidx.navigation3.scene.SceneInfo;
import androidx.navigation3.scene.SceneSetupNavEntryDecorator;
import androidx.navigation3.scene.SceneSetupNavEntryDecoratorKt;
import androidx.navigation3.scene.SceneState;
import androidx.navigation3.scene.SceneStateKt;
import androidx.navigation3.scene.SinglePaneSceneStrategy;
import androidx.navigationevent.compose.NavigationEventState;
import androidx.room.Room;
import androidx.savedstate.SavedStateRegistryOwner;
import androidx.work.Logger$LogcatLogger;
import androidx.work.impl.WorkDatabasePathHelperKt;
import coil3.disk.DiskLruCache$$ExternalSyntheticLambda0;
import com.google.android.exoplayer2.RendererCapabilities;
import com.google.android.exoplayer2.source.ProgressiveMediaSource;
import com.google.android.material.shape.ShapePath;
import com.google.common.collect.CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0;
import com.grack.nanojson.JsonBuilder;
import com.grack.nanojson.JsonObject;
import com.grack.nanojson.JsonStringWriter;
import j$.util.DesugarCollections;
import j$.util.Objects;
import java.io.File;
import java.io.StringReader;
import java.nio.charset.StandardCharsets;
import java.util.AbstractMap;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.RandomAccess;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.collections.ArrayAsCollection;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.EmptyList;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.collections.builders.ListBuilder;
import kotlin.io.CloseableKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.ranges.RangesKt;
import kotlin.text.CharsKt;
import kotlin.text.StringsKt;
import okhttp3.Dispatcher;
import okhttp3.Headers;
import okhttp3.internal._UtilCommonKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;
import okhttp3.internal.connection.ConnectPlan$$ExternalSyntheticLambda0;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.parser.HtmlTreeBuilder;
import org.jsoup.parser.TokenData;
import org.mozilla.javascript.Token;
import org.schabi.newpipe.R;
import org.schabi.newpipe.extractor.localization.ContentCountry;
import org.schabi.newpipe.extractor.localization.Localization;
import org.schabi.newpipe.extractor.services.youtube.YoutubeParsingHelper;
import org.schabi.newpipe.extractor.utils.JavaScript;
import org.schabi.newpipe.extractor.utils.Parser;
import us.shandian.giga.util.Utility;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract class Jsoup {
    public final /* synthetic */ int $r8$classId;

    public /* synthetic */ Jsoup(int i) {
        this.$r8$classId = i;
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x003f  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0053  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x005e  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x014c  */
    /* JADX WARN: Removed duplicated region for block: B:50:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:57:0x0142  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x0055  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void Dialog(final kotlin.jvm.functions.Function0 r16, androidx.compose.ui.window.DialogProperties r17, final kotlin.jvm.functions.Function2 r18, androidx.compose.runtime.Composer r19, final int r20, final int r21) {
        /*
            Method dump skipped, instructions count: 344
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.jsoup.Jsoup.Dialog(kotlin.jvm.functions.Function0, androidx.compose.ui.window.DialogProperties, kotlin.jvm.functions.Function2, androidx.compose.runtime.Composer, int, int):void");
    }

    /* JADX WARN: Code restructure failed: missing block: B:156:0x05a9, code lost:
    
        if (r11.changed(r41) == false) goto L254;
     */
    /* JADX WARN: Code restructure failed: missing block: B:161:0x05cd, code lost:
    
        if (r11.changed(r9) == false) goto L264;
     */
    /* JADX WARN: Code restructure failed: missing block: B:166:0x05ea, code lost:
    
        if (r11.changed(r10) == false) goto L274;
     */
    /* JADX WARN: Code restructure failed: missing block: B:167:0x05f3, code lost:
    
        r7 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:168:0x05f4, code lost:
    
        r0 = r0 | r7;
        r7 = r11.rememberedValue();
     */
    /* JADX WARN: Code restructure failed: missing block: B:169:0x05f9, code lost:
    
        if (r0 != false) goto L280;
     */
    /* JADX WARN: Code restructure failed: missing block: B:170:0x05fb, code lost:
    
        if (r7 != r6) goto L281;
     */
    /* JADX WARN: Code restructure failed: missing block: B:171:0x05ff, code lost:
    
        r12 = r6;
        r0 = r19;
        r2 = r25;
     */
    /* JADX WARN: Code restructure failed: missing block: B:172:0x0616, code lost:
    
        r7 = (kotlin.jvm.functions.Function1) r7;
        r3 = new kotlin.jvm.internal.Ref$ObjectRef();
        r4 = (r11.changed(r7) | r11.changed(r2)) | r11.changedInstance(null);
        r5 = r11.rememberedValue();
     */
    /* JADX WARN: Code restructure failed: missing block: B:173:0x0630, code lost:
    
        if (r4 != false) goto L286;
     */
    /* JADX WARN: Code restructure failed: missing block: B:174:0x0632, code lost:
    
        if (r5 != r12) goto L287;
     */
    /* JADX WARN: Code restructure failed: missing block: B:175:0x063d, code lost:
    
        r5 = (kotlin.jvm.functions.Function1) r5;
        r2 = r11.rememberedValue();
     */
    /* JADX WARN: Code restructure failed: missing block: B:176:0x0643, code lost:
    
        if (r2 != r12) goto L290;
     */
    /* JADX WARN: Code restructure failed: missing block: B:177:0x0645, code lost:
    
        r2 = new androidx.compose.ui.text.SaversKt$$ExternalSyntheticLambda4(27);
        r11.updateRememberedValue(r2);
     */
    /* JADX WARN: Code restructure failed: missing block: B:178:0x064f, code lost:
    
        r13 = r33;
        r9 = r11;
        androidx.compose.animation.AnimatedContentKt.AnimatedContent(r15, r37, r5, r38, (kotlin.jvm.functions.Function1) r2, androidx.compose.runtime.internal.Expect_jvmKt.rememberComposableLambda(-1167420988, new androidx.navigation3.ui.NavDisplayKt__NavDisplayKt$$ExternalSyntheticLambda6(r15, r13, r3, r1), r11), r9, (((r0 >> 3) & org.mozilla.javascript.Token.ASSIGN_MOD) | 221184) | (r0 & 7168), 0);
        r7 = r28;
        r0 = r9.changed(r15) | r9.changedInstance(r7);
        r1 = r9.rememberedValue();
     */
    /* JADX WARN: Code restructure failed: missing block: B:179:0x0685, code lost:
    
        if (r0 != false) goto L293;
     */
    /* JADX WARN: Code restructure failed: missing block: B:180:0x0687, code lost:
    
        if (r1 != r12) goto L294;
     */
    /* JADX WARN: Code restructure failed: missing block: B:181:0x0694, code lost:
    
        androidx.compose.runtime.Updater.LaunchedEffect(r9, r15, (kotlin.jvm.functions.Function2) r1);
        r0 = r13.size() - 1;
        r9 = r9;
     */
    /* JADX WARN: Code restructure failed: missing block: B:182:0x069f, code lost:
    
        if (r0 < 0) goto L317;
     */
    /* JADX WARN: Code restructure failed: missing block: B:184:0x06a5, code lost:
    
        if (r13.get(r0) != null) goto L307;
     */
    /* JADX WARN: Code restructure failed: missing block: B:185:0x06a7, code lost:
    
        r0 = r9.rememberedValue();
     */
    /* JADX WARN: Code restructure failed: missing block: B:186:0x06ab, code lost:
    
        if (r0 != r12) goto L301;
     */
    /* JADX WARN: Code restructure failed: missing block: B:187:0x06ad, code lost:
    
        r0 = androidx.compose.runtime.Updater.createCompositionCoroutineScope(r9);
        r9.updateRememberedValue(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:188:0x06b4, code lost:
    
        r0 = (kotlinx.coroutines.CoroutineScope) r0;
        r9.startMovableGroup(43488072, null);
     */
    /* JADX WARN: Code restructure failed: missing block: B:189:0x06c5, code lost:
    
        if (kotlin.jvm.internal.Intrinsics.areEqual(kotlin.collections.CollectionsKt.firstOrNull(r9), null) == false) goto L304;
     */
    /* JADX WARN: Code restructure failed: missing block: B:190:0x06c7, code lost:
    
        r0 = androidx.lifecycle.Lifecycle.State.RESUMED;
     */
    /* JADX WARN: Code restructure failed: missing block: B:191:0x06cc, code lost:
    
        okhttp3.Cookie.Companion.rememberLifecycleOwner(r0, r9);
        androidx.lifecycle.compose.LocalLifecycleOwnerKt.LocalLifecycleOwner.getClass();
        r0 = androidx.navigation3.scene.SceneSetupNavEntryDecoratorKt.LocalEntriesToExcludeFromCurrentScene;
     */
    /* JADX WARN: Code restructure failed: missing block: B:192:0x06d6, code lost:
    
        throw null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:194:0x06ca, code lost:
    
        r0 = androidx.lifecycle.Lifecycle.State.STARTED;
     */
    /* JADX WARN: Code restructure failed: missing block: B:195:0x06d7, code lost:
    
        okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1.m$2();
     */
    /* JADX WARN: Code restructure failed: missing block: B:196:0x06da, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:202:0x0689, code lost:
    
        r1 = new androidx.navigation3.ui.NavDisplayKt__NavDisplayKt$NavDisplay$16$1(r15, r24, r7, null);
        r9.updateRememberedValue(r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:203:0x0634, code lost:
    
        r5 = new androidx.compose.material3.TabIndicatorOffsetNode$$ExternalSyntheticLambda0(r7, r2, 2);
        r11.updateRememberedValue(r5);
     */
    /* JADX WARN: Code restructure failed: missing block: B:204:0x05fd, code lost:
    
        r5 = r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:205:0x0605, code lost:
    
        r12 = r6;
        r0 = r19;
        r6 = r2;
        r2 = r25;
        r3 = new androidx.navigation3.ui.NavDisplayKt__NavDisplayKt$$ExternalSyntheticLambda3(r4, r5, r6, r41, r8, r9, r10);
        r11.updateRememberedValue(r3);
        r7 = r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:207:0x05f1, code lost:
    
        if ((r19 & 196608) != 131072) goto L277;
     */
    /* JADX WARN: Removed duplicated region for block: B:117:0x02b7  */
    /* JADX WARN: Removed duplicated region for block: B:120:0x02c8  */
    /* JADX WARN: Removed duplicated region for block: B:123:0x02f2  */
    /* JADX WARN: Removed duplicated region for block: B:133:0x033f  */
    /* JADX WARN: Removed duplicated region for block: B:144:0x04fd  */
    /* JADX WARN: Removed duplicated region for block: B:146:0x050c  */
    /* JADX WARN: Removed duplicated region for block: B:155:0x05a3  */
    /* JADX WARN: Removed duplicated region for block: B:160:0x05c7  */
    /* JADX WARN: Removed duplicated region for block: B:165:0x05e4  */
    /* JADX WARN: Removed duplicated region for block: B:208:0x05ed  */
    /* JADX WARN: Removed duplicated region for block: B:211:0x05d8  */
    /* JADX WARN: Removed duplicated region for block: B:212:0x05d0  */
    /* JADX WARN: Removed duplicated region for block: B:215:0x05b4  */
    /* JADX WARN: Removed duplicated region for block: B:216:0x05ac  */
    /* JADX WARN: Removed duplicated region for block: B:219:0x055d  */
    /* JADX WARN: Removed duplicated region for block: B:224:0x0504  */
    /* JADX WARN: Removed duplicated region for block: B:228:0x03ca A[LOOP:2: B:226:0x03c4->B:228:0x03ca, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:233:0x03e4  */
    /* JADX WARN: Removed duplicated region for block: B:243:0x0410  */
    /* JADX WARN: Removed duplicated region for block: B:276:0x04df  */
    /* JADX WARN: Removed duplicated region for block: B:281:0x031c  */
    /* JADX WARN: Removed duplicated region for block: B:282:0x031f  */
    /* JADX WARN: Removed duplicated region for block: B:287:0x02f9  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void NavDisplay(androidx.navigation3.scene.SceneState r35, androidx.navigationevent.compose.NavigationEventState r36, androidx.compose.ui.Modifier r37, androidx.compose.ui.Alignment r38, kotlin.jvm.functions.Function1 r39, kotlin.jvm.functions.Function1 r40, final kotlin.jvm.functions.Function2 r41, androidx.compose.runtime.Composer r42, int r43) {
        /*
            Method dump skipped, instructions count: 1802
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.jsoup.Jsoup.NavDisplay(androidx.navigation3.scene.SceneState, androidx.navigationevent.compose.NavigationEventState, androidx.compose.ui.Modifier, androidx.compose.ui.Alignment, kotlin.jvm.functions.Function1, kotlin.jvm.functions.Function1, kotlin.jvm.functions.Function2, androidx.compose.runtime.Composer, int):void");
    }

    /* renamed from: RoundRect-gG7oq9Y, reason: not valid java name */
    public static final RoundRect m731RoundRectgG7oq9Y(float f, float f2, float f3, float f4, long j) {
        float intBitsToFloat = Float.intBitsToFloat((int) (j >> 32));
        float intBitsToFloat2 = Float.intBitsToFloat((int) (j & 4294967295L));
        long floatToRawIntBits = (Float.floatToRawIntBits(intBitsToFloat) << 32) | (4294967295L & Float.floatToRawIntBits(intBitsToFloat2));
        return new RoundRect(f, f2, f3, f4, floatToRawIntBits, floatToRawIntBits, floatToRawIntBits, floatToRawIntBits);
    }

    public static final void access$DialogLayout(final Modifier modifier, final Function2 function2, Composer composer, final int i, final int i2) {
        int i3;
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(1090521195);
        int i4 = i2 & 1;
        if (i4 != 0) {
            i3 = i | 6;
        } else if ((i & 6) == 0) {
            i3 = (gapComposer.changed(modifier) ? 4 : 2) | i;
        } else {
            i3 = i;
        }
        if ((i & 48) == 0) {
            i3 |= gapComposer.changedInstance(function2) ? 32 : 16;
        }
        if (gapComposer.shouldExecute(i3 & 1, (i3 & 19) != 18)) {
            if (i4 != 0) {
                modifier = Modifier.Companion.$$INSTANCE;
            }
            Object rememberedValue = gapComposer.rememberedValue();
            if (rememberedValue == Composer.Companion.Empty) {
                rememberedValue = AndroidDialog_androidKt$DialogLayout$1$1.INSTANCE;
                gapComposer.updateRememberedValue(rememberedValue);
            }
            MeasurePolicy measurePolicy = (MeasurePolicy) rememberedValue;
            int i5 = ((i3 << 3) & Token.ASSIGN_MOD) | ((i3 >> 3) & 14) | RendererCapabilities.MODE_SUPPORT_MASK;
            long j = gapComposer.compositeKeyHashCode;
            int i6 = (int) ((j >>> 32) ^ j);
            PersistentCompositionLocalHashMap currentCompositionLocalScope = gapComposer.currentCompositionLocalScope();
            Modifier materializeModifier = RangesKt.materializeModifier(gapComposer, modifier);
            ComposeUiNode.Companion.getClass();
            LayoutNode$Companion$Constructor$1 layoutNode$Companion$Constructor$1 = ComposeUiNode.Companion.Constructor;
            int i7 = ((i5 << 6) & 896) | 6;
            gapComposer.startReusableNode();
            if (gapComposer.inserting) {
                gapComposer.createNode(layoutNode$Companion$Constructor$1);
            } else {
                gapComposer.useNode();
            }
            Updater.m170setimpl(gapComposer, measurePolicy, ComposeUiNode.Companion.SetMeasurePolicy);
            Updater.m170setimpl(gapComposer, currentCompositionLocalScope, ComposeUiNode.Companion.SetResolvedCompositionLocals);
            Updater.m170setimpl(gapComposer, Integer.valueOf(i6), ComposeUiNode.Companion.SetCompositeKeyHash);
            Updater.m169reconcileimpl(gapComposer, ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion);
            Updater.m170setimpl(gapComposer, materializeModifier, ComposeUiNode.Companion.SetModifier);
            function2.invoke(gapComposer, Integer.valueOf((i7 >> 6) & 14));
            gapComposer.end(true);
        } else {
            gapComposer.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new Function2() { // from class: androidx.compose.ui.window.AndroidDialog_androidKt$DialogLayout$2
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(2);
                }

                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    ((Number) obj2).intValue();
                    Jsoup.access$DialogLayout(Modifier.this, function2, (Composer) obj, Updater.updateChangedFlags(i | 1), i2);
                    return Unit.INSTANCE;
                }
            };
        }
    }

    /* renamed from: add-impl, reason: not valid java name */
    public static final void m732addimpl(MutableScatterMap mutableScatterMap, Object obj, Object obj2) {
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

    public static void addVideoIdCpnAndOkChecks(JsonBuilder jsonBuilder, String str, String str2) {
        jsonBuilder.value(str, "videoId");
        if (str2 != null) {
            jsonBuilder.value(str2, "cpn");
        }
        jsonBuilder.value("contentCheckOk", true);
        jsonBuilder.value("racyCheckOk", true);
    }

    public static ArrayList arrayListOf(Object... objArr) {
        return objArr.length == 0 ? new ArrayList() : new ArrayList(new ArrayAsCollection(objArr, true));
    }

    public static int binarySearch$default(ArrayList arrayList, Comparable comparable) {
        int size = arrayList.size();
        arrayList.getClass();
        int size2 = arrayList.size();
        int i = 0;
        if (size < 0) {
            throw new IllegalArgumentException("fromIndex (0) is greater than toIndex (" + size + ").");
        }
        if (size > size2) {
            CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0.m("toIndex (", size, ") is greater than size (", size2, ").");
            return 0;
        }
        int i2 = size - 1;
        while (i <= i2) {
            int i3 = (i + i2) >>> 1;
            int compareValues = Room.compareValues((Comparable) arrayList.get(i3), comparable);
            if (compareValues < 0) {
                i = i3 + 1;
            } else {
                if (compareValues <= 0) {
                    return i3;
                }
                i2 = i3 - 1;
            }
        }
        return -(i + 1);
    }

    public static void buildShortClassTag(Object obj, StringBuilder sb) {
        int lastIndexOf;
        if (obj == null) {
            sb.append("null");
            return;
        }
        String simpleName = obj.getClass().getSimpleName();
        if (simpleName.length() <= 0 && (lastIndexOf = (simpleName = obj.getClass().getName()).lastIndexOf(46)) > 0) {
            simpleName = simpleName.substring(lastIndexOf + 1);
        }
        sb.append(simpleName);
        sb.append('{');
        sb.append(Integer.toHexString(System.identityHashCode(obj)));
    }

    public static final void commonAddLenient(Headers.Builder builder, String str, String str2) {
        str.getClass();
        str2.getClass();
        ArrayList arrayList = builder.namesAndValues;
        arrayList.add(str);
        arrayList.add(StringsKt.trim(str2).toString());
    }

    /* renamed from: constructor-impl$default, reason: not valid java name */
    public static MutableScatterMap m733constructorimpl$default() {
        long[] jArr = ScatterMapKt.EmptyGroup;
        return new MutableScatterMap();
    }

    public static ListBuilder createListBuilder() {
        return new ListBuilder(10);
    }

    public static final SavedStateRegistryOwner get(View view) {
        view.getClass();
        while (view != null) {
            Object tag = view.getTag(R.id.view_tree_saved_state_registry_owner);
            SavedStateRegistryOwner savedStateRegistryOwner = tag instanceof SavedStateRegistryOwner ? (SavedStateRegistryOwner) tag : null;
            if (savedStateRegistryOwner != null) {
                return savedStateRegistryOwner;
            }
            Object parentOrViewTreeDisjointParent = CloseableKt.getParentOrViewTreeDisjointParent(view);
            view = parentOrViewTreeDisjointParent instanceof View ? (View) parentOrViewTreeDisjointParent : null;
        }
        return null;
    }

    /* renamed from: getAndroidTypefaceStyle-FO1MlWM, reason: not valid java name */
    public static final int m734getAndroidTypefaceStyleFO1MlWM(FontWeight fontWeight, int i) {
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

    public static int getLastIndex(List list) {
        list.getClass();
        return list.size() - 1;
    }

    public static Map getMobileClientHeaders(String str) {
        Object[] objArr = {str};
        ArrayList arrayList = new ArrayList(1);
        Object obj = objArr[0];
        List m = Owner.CC.m(obj, arrayList, obj, arrayList);
        ArrayList arrayList2 = new ArrayList(1);
        Object obj2 = new Object[]{"2"}[0];
        Map.Entry[] entryArr = {new AbstractMap.SimpleEntry("User-Agent", m), new AbstractMap.SimpleEntry("X-Goog-Api-Format-Version", Owner.CC.m(obj2, arrayList2, obj2, arrayList2))};
        HashMap hashMap = new HashMap(2);
        for (int i = 0; i < 2; i++) {
            Map.Entry entry = entryArr[i];
            Object key = entry.getKey();
            Objects.requireNonNull(key);
            Object value = entry.getValue();
            Objects.requireNonNull(value);
            if (hashMap.put(key, value) != null) {
                _UtilJvmKt$$ExternalSyntheticLambda1.m$1(Modifier.CC.m(key, "duplicate key: "));
                return null;
            }
        }
        return DesugarCollections.unmodifiableMap(hashMap);
    }

    public static JsonObject getVisionOsPlayerResponse(String str, String str2, ContentCountry contentCountry, Localization localization) {
        Dispatcher dispatcher = new Dispatcher("VISIONOS", "1.02", "101", "WATCH");
        TokenData tokenData = new TokenData(dispatcher, new RulerTrackingMap(-1, "MOBILE", "Apple", "RealityDevice14,1", "visionOS", "25.6.0.23O471"), 12);
        Map mobileClientHeaders = getMobileClientHeaders(YoutubeParsingHelper.getVisionOsUserAgent(localization));
        dispatcher.runningSyncCalls = YoutubeParsingHelper.getVisitorDataFromInnertube(tokenData, localization, contentCountry, mobileClientHeaders, "https://www.youtube.com/youtubei/v1/");
        JsonBuilder prepareJsonBuilder = YoutubeParsingHelper.prepareJsonBuilder(localization, contentCountry, tokenData);
        addVideoIdCpnAndOkChecks(prepareJsonBuilder, str, str2);
        byte[] bytes = string((JsonObject) prepareJsonBuilder.root).getBytes(StandardCharsets.UTF_8);
        return Parser.toJsonObject(YoutubeParsingHelper.getValidJsonResponseBody(Utility.downloader.postWithContentTypeJson(Owner.CC.m("https://youtubei.googleapis.com/youtubei/v1/player?prettyPrint=false&t=", JavaScript.generate(12, YoutubeParsingHelper.numberGenerator), "&id=", str), mobileClientHeaders, bytes, localization)));
    }

    public static JsonObject getWebMetadataPlayerResponse(Localization localization, ContentCountry contentCountry, String str) {
        TokenData ofWebClient = TokenData.ofWebClient();
        Dispatcher dispatcher = (Dispatcher) ofWebClient.value;
        dispatcher.readyAsyncCalls = YoutubeParsingHelper.getClientVersion();
        HashMap youTubeHeaders = YoutubeParsingHelper.getYouTubeHeaders();
        dispatcher.runningSyncCalls = YoutubeParsingHelper.getVisitorDataFromInnertube(ofWebClient, localization, contentCountry, youTubeHeaders, "https://www.youtube.com/youtubei/v1/");
        JsonBuilder prepareJsonBuilder = YoutubeParsingHelper.prepareJsonBuilder(localization, contentCountry, ofWebClient);
        addVideoIdCpnAndOkChecks(prepareJsonBuilder, str, null);
        return Parser.toJsonObject(YoutubeParsingHelper.getValidJsonResponseBody(Utility.downloader.postWithContentTypeJson("https://www.youtube.com/youtubei/v1/player?prettyPrint=false&$fields=microformat,videoDetails.thumbnail.thumbnails,videoDetails.videoId", youTubeHeaders, string((JsonObject) prepareJsonBuilder.root).getBytes(StandardCharsets.UTF_8), localization)));
    }

    public static final void headersCheckName(String str) {
        str.getClass();
        if (str.length() <= 0) {
            _UtilJvmKt$$ExternalSyntheticLambda1.m$1("name is empty");
            return;
        }
        int length = str.length();
        for (int i = 0; i < length; i++) {
            char charAt = str.charAt(i);
            if ('!' > charAt || charAt >= 127) {
                StringBuilder sb = new StringBuilder("Unexpected char 0x");
                CharsKt.checkRadix(16);
                String num = Integer.toString(charAt, 16);
                num.getClass();
                if (num.length() < 2) {
                    num = "0".concat(num);
                }
                sb.append(num);
                sb.append(" at ");
                sb.append(i);
                sb.append(" in header name: ");
                sb.append(str);
                throw new IllegalArgumentException(sb.toString().toString());
            }
        }
    }

    public static final void headersCheckValue(String str, String str2) {
        str.getClass();
        str2.getClass();
        int length = str.length();
        for (int i = 0; i < length; i++) {
            char charAt = str.charAt(i);
            if (charAt != '\t' && (' ' > charAt || charAt >= 127)) {
                StringBuilder sb = new StringBuilder("Unexpected char 0x");
                CharsKt.checkRadix(16);
                String num = Integer.toString(charAt, 16);
                num.getClass();
                if (num.length() < 2) {
                    num = "0".concat(num);
                }
                sb.append(num);
                sb.append(" at ");
                sb.append(i);
                sb.append(" in ");
                sb.append(str2);
                sb.append(" value");
                sb.append(_UtilCommonKt.isSensitiveHeader(str2) ? "" : ": ".concat(str));
                throw new IllegalArgumentException(sb.toString().toString());
            }
        }
    }

    public static final boolean isSimple(RoundRect roundRect) {
        long j = roundRect.topLeftCornerRadius;
        return (j >>> 32) == (4294967295L & j) && j == roundRect.topRightCornerRadius && j == roundRect.bottomRightCornerRadius && j == roundRect.bottomLeftCornerRadius;
    }

    public static List listOf(Object... objArr) {
        if (objArr.length <= 0) {
            return EmptyList.INSTANCE;
        }
        List asList = Arrays.asList(objArr);
        asList.getClass();
        return asList;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r10v7, types: [java.util.Map] */
    public static final void migrateDatabase(Context context) {
        LinkedHashMap linkedHashMap;
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
            LinkedHashMap linkedHashMap2 = new LinkedHashMap(mapCapacity);
            for (String str : strArr) {
                Pair pair = new Pair(new File(databasePath2.getPath() + str), new File(noBackupFilesDir.getPath() + str));
                linkedHashMap2.put(pair.getFirst(), pair.getSecond());
            }
            Pair pair2 = new Pair(databasePath2, noBackupFilesDir);
            if (linkedHashMap2.isEmpty()) {
                linkedHashMap = MapsKt__MapsKt.mapOf(pair2);
            } else {
                LinkedHashMap linkedHashMap3 = new LinkedHashMap(linkedHashMap2);
                linkedHashMap3.put(pair2.getFirst(), pair2.getSecond());
                linkedHashMap = linkedHashMap3;
            }
            for (Map.Entry entry : linkedHashMap.entrySet()) {
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

    public static ArrayList mutableListOf(Object... objArr) {
        return objArr.length == 0 ? new ArrayList() : new ArrayList(new ArrayAsCollection(objArr, true));
    }

    public static final List optimizeReadOnlyList(List list) {
        int size = list.size();
        return size != 0 ? size != 1 ? list : listOf(list.get(0)) : EmptyList.INSTANCE;
    }

    public static Document parse(String str) {
        HtmlTreeBuilder htmlTreeBuilder = new HtmlTreeBuilder();
        htmlTreeBuilder.initialiseParse(new StringReader(str), new org.jsoup.parser.Parser(htmlTreeBuilder));
        htmlTreeBuilder.runParser();
        return htmlTreeBuilder.doc;
    }

    /* renamed from: remove-impl, reason: not valid java name */
    public static final boolean m735removeimpl(MutableScatterMap mutableScatterMap, Object obj, Object obj2) {
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
    public static final void m736removeScopeimpl(MutableScatterMap mutableScatterMap, Object obj) {
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

    public static void showKeyboard(Activity activity, EditText editText) {
        if (activity == null || editText == null || !editText.requestFocus()) {
            return;
        }
        InputMethodManager inputMethodManager = (InputMethodManager) activity.getSystemService(InputMethodManager.class);
        if (inputMethodManager.showSoftInput(editText, 2)) {
            return;
        }
        editText.clearFocus();
        editText.requestFocus();
        inputMethodManager.showSoftInput(editText, 2);
    }

    public static String string(Object obj) {
        JsonStringWriter jsonStringWriter = new JsonStringWriter();
        jsonStringWriter.value(obj);
        return jsonStringWriter.done();
    }

    public static void throwIndexOverflow() {
        throw new ArithmeticException("Index overflow has happened.");
    }

    public abstract int clampViewPositionHorizontal(int i, View view);

    public abstract int clampViewPositionVertical(int i, View view);

    public abstract void getCornerPath(ShapePath shapePath, float f, float f2);

    public int getViewHorizontalDragRange(View view) {
        return 0;
    }

    public int getViewVerticalDragRange() {
        return 0;
    }

    public int hashCode() {
        switch (this.$r8$classId) {
            case 17:
                return toString().hashCode();
            default:
                return super.hashCode();
        }
    }

    public abstract void onViewDragStateChanged(int i);

    public abstract void onViewPositionChanged(View view, int i, int i2);

    public abstract void onViewReleased(View view, float f, float f2);

    public String toString() {
        switch (this.$r8$classId) {
            case 17:
                String simpleName = Reflection.getOrCreateKotlinClass(getClass()).getSimpleName();
                simpleName.getClass();
                return simpleName;
            default:
                return super.toString();
        }
    }

    public abstract boolean tryCaptureView(int i, View view);

    public static List listOf(Object obj) {
        List singletonList = Collections.singletonList(obj);
        singletonList.getClass();
        return singletonList;
    }

    public void onEdgeTouched() {
    }

    public void onEdgeDragStarted(int i, int i2) {
    }

    public void onViewCaptured(int i, View view) {
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final void NavDisplay(final ArrayList arrayList, final Modifier modifier, final Alignment alignment, final List list, final List list2, final Function1 function1, final Function1 function12, final Function2 function2, final Function0 function0, Composer composer, final int i, final int i2) {
        int i3;
        int i4;
        int i5;
        List list3 = list;
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(-1914095277);
        if ((i & 6) == 0) {
            i3 = (gapComposer.changedInstance(arrayList) ? 4 : 2) | i;
        } else {
            i3 = i;
        }
        if ((i & 48) == 0) {
            i3 |= gapComposer.changed(modifier) ? 32 : 16;
        }
        if ((i & RendererCapabilities.MODE_SUPPORT_MASK) == 0) {
            i3 |= gapComposer.changed(alignment) ? 256 : 128;
        }
        if ((i & 3072) == 0) {
            i3 |= gapComposer.changedInstance(list3) ? 2048 : 1024;
        }
        if ((i & 24576) == 0) {
            i3 |= gapComposer.changedInstance(list2) ? 16384 : 8192;
        }
        if ((196608 & i) == 0) {
            i3 |= gapComposer.changed((Object) null) ? 131072 : 65536;
        }
        if ((1572864 & i) == 0) {
            i3 |= gapComposer.changedInstance(null) ? ProgressiveMediaSource.DEFAULT_LOADING_CHECK_INTERVAL_BYTES : 524288;
        }
        if ((12582912 & i) == 0) {
            i3 |= gapComposer.changedInstance(function1) ? 8388608 : 4194304;
        }
        if ((100663296 & i) == 0) {
            i3 |= gapComposer.changedInstance(function12) ? 67108864 : 33554432;
        }
        if ((805306368 & i) == 0) {
            i3 |= gapComposer.changedInstance(function2) ? 536870912 : 268435456;
        }
        if ((i2 & 6) == 0) {
            i4 = i2 | (gapComposer.changedInstance(function0) ? 4 : 2);
        } else {
            i4 = i2;
        }
        if (gapComposer.shouldExecute(i3 & 1, ((i3 & 306783379) == 306783378 && (i4 & 3) == 2) ? false : true)) {
            gapComposer.startDefaults();
            if ((i & 1) != 0 && !gapComposer.getDefaultsInvalid()) {
                gapComposer.skipToGroupEnd();
            }
            gapComposer.endDefaults();
            if (!arrayList.isEmpty()) {
                int i6 = i3 >> 6;
                int i7 = (i6 & 896) | (i3 & 14) | (i6 & Token.ASSIGN_MOD) | (i6 & 7168) | ((i4 << 12) & 57344);
                Updater.rememberUpdatedState(function0, gapComposer);
                gapComposer.startReplaceGroup(-984503628);
                gapComposer.end(false);
                DynamicProvidableCompositionLocal dynamicProvidableCompositionLocal = SceneSetupNavEntryDecoratorKt.LocalEntriesToExcludeFromCurrentScene;
                Object rememberedValue = gapComposer.rememberedValue();
                int i8 = i3;
                Object obj = Composer.Companion.Empty;
                if (rememberedValue == obj) {
                    i5 = i7;
                    SnapshotStateMap snapshotStateMap = new SnapshotStateMap();
                    rememberedValue = new SceneSetupNavEntryDecorator(new DiskLruCache$$ExternalSyntheticLambda0(snapshotStateMap, 24), new ComposableLambdaImpl(-1714993007, true, new TabKt$$ExternalSyntheticLambda1(snapshotStateMap, 6)));
                    gapComposer.updateRememberedValue(rememberedValue);
                } else {
                    i5 = i7;
                }
                ArrayList rememberDecoratedNavEntries = BundleKt.rememberDecoratedNavEntries(arrayList, ArraysKt.filterNotNull(new NavEntryDecorator[]{null, (SceneSetupNavEntryDecorator) rememberedValue, new NavEntryDecorator(new SaversKt$$ExternalSyntheticLambda4(26), Expect_jvmKt.rememberComposableLambda(1077673004, new TabKt$$ExternalSyntheticLambda1(Updater.rememberUpdatedState(arrayList, gapComposer), 5), gapComposer))}), gapComposer, i5 & 14);
                boolean changed = gapComposer.changed(CollectionsKt.toList(list3)) | gapComposer.changed(rememberDecoratedNavEntries);
                Object rememberedValue2 = gapComposer.rememberedValue();
                if (changed || rememberedValue2 == obj) {
                    ArrayList mutableListOf = mutableListOf(SceneStateKt.provideScene(rememberDecoratedNavEntries, list3, list2));
                    CollectionsKt.last(mutableListOf);
                    List dropLast = CollectionsKt.dropLast(mutableListOf);
                    ArrayList arrayList2 = new ArrayList(dropLast.size());
                    int size = dropLast.size();
                    int i9 = 0;
                    while (i9 < size) {
                        Scene scene = (Scene) dropLast.get(i9);
                        scene.getClass();
                        arrayList2.add((OverlayScene) scene);
                        i9++;
                        mutableListOf = mutableListOf;
                    }
                    ArrayList arrayList3 = mutableListOf;
                    Scene scene2 = (Scene) CollectionsKt.last(arrayList3);
                    ArrayList mutableListOf2 = mutableListOf(CollectionsKt.first((List) arrayList3));
                    while (true) {
                        Scene scene3 = (Scene) CollectionsKt.firstOrNull(mutableListOf2);
                        List previousEntries = scene3 != null ? scene3.getPreviousEntries() : null;
                        if (previousEntries != null && !previousEntries.isEmpty()) {
                            mutableListOf2.add(0, SceneStateKt.provideScene(previousEntries, list3, list2));
                        }
                        if (previousEntries == null || previousEntries.isEmpty()) {
                            break;
                        } else {
                            list3 = list;
                        }
                    }
                    mutableListOf2.remove(scene2);
                    rememberedValue2 = new SceneState(rememberDecoratedNavEntries, arrayList2, scene2, mutableListOf2);
                    gapComposer.updateRememberedValue(rememberedValue2);
                }
                SceneState sceneState = (SceneState) rememberedValue2;
                Scene scene4 = sceneState.currentScene;
                SceneInfo sceneInfo = new SceneInfo(scene4);
                ArrayList arrayList4 = sceneState.previousScenes;
                ArrayList arrayList5 = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(arrayList4, 10));
                Iterator it = arrayList4.iterator();
                while (it.hasNext()) {
                    arrayList5.add(new SceneInfo((Scene) it.next()));
                }
                Object rememberedValue3 = gapComposer.rememberedValue();
                EmptyList emptyList = EmptyList.INSTANCE;
                if (rememberedValue3 == obj) {
                    rememberedValue3 = new NavigationEventState(sceneInfo, arrayList5, emptyList);
                    gapComposer.updateRememberedValue(rememberedValue3);
                }
                NavigationEventState navigationEventState = (NavigationEventState) rememberedValue3;
                boolean changedInstance = gapComposer.changedInstance(sceneInfo) | gapComposer.changedInstance(arrayList5) | gapComposer.changedInstance(emptyList);
                Object rememberedValue4 = gapComposer.rememberedValue();
                if (changedInstance || rememberedValue4 == obj) {
                    rememberedValue4 = new GapComposer$$ExternalSyntheticLambda0(navigationEventState, sceneInfo, arrayList5, emptyList, 1);
                    gapComposer.updateRememberedValue(rememberedValue4);
                }
                Updater.SideEffect((Function0) rememberedValue4, gapComposer);
                boolean z = !scene4.getPreviousEntries().isEmpty();
                boolean changedInstance2 = gapComposer.changedInstance(arrayList) | gapComposer.changed(scene4) | ((i4 & 14) == 4);
                Object rememberedValue5 = gapComposer.rememberedValue();
                if (changedInstance2 || rememberedValue5 == obj) {
                    rememberedValue5 = new ConnectPlan$$ExternalSyntheticLambda0(7, arrayList, scene4, function0);
                    gapComposer.updateRememberedValue(rememberedValue5);
                }
                RangesKt.NavigationBackHandler(navigationEventState, z, null, (Function0) rememberedValue5, gapComposer, 0);
                NavDisplay(sceneState, navigationEventState, modifier, alignment, function1, function12, function2, gapComposer, ((i8 << 3) & 8064) | (i6 & 57344) | (458752 & i6) | (3670016 & i6) | (i6 & 29360128));
                gapComposer = gapComposer;
            } else {
                _UtilJvmKt$$ExternalSyntheticLambda1.m$1("NavDisplay entries cannot be empty");
                return;
            }
        } else {
            gapComposer.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new Function2() { // from class: androidx.navigation3.ui.NavDisplayKt__NavDisplayKt$$ExternalSyntheticLambda2
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj2, Object obj3) {
                    ((Integer) obj3).getClass();
                    Jsoup.NavDisplay(arrayList, modifier, alignment, list, list2, function1, function12, function2, function0, (Composer) obj2, Updater.updateChangedFlags(i | 1), Updater.updateChangedFlags(i2));
                    return Unit.INSTANCE;
                }
            };
        }
    }

    public static final void NavDisplay(final List list, Modifier modifier, Alignment alignment, final Function0 function0, final List list2, List list3, List list4, Function1 function1, Function1 function12, Function2 function2, final DiskLruCache$$ExternalSyntheticLambda0 diskLruCache$$ExternalSyntheticLambda0, Composer composer, final int i) {
        GapComposer gapComposer;
        final Modifier modifier2;
        final Alignment alignment2;
        final List list5;
        final List list6;
        final Function1 function13;
        final Function1 function14;
        final Function2 function22;
        int i2;
        int i3;
        Modifier modifier3;
        Function1 function15;
        List list7;
        Function1 function16;
        Function2 function23;
        List list8;
        Alignment alignment3;
        ArrayList arrayList;
        GapComposer gapComposer2 = (GapComposer) composer;
        gapComposer2.startRestartGroup(1398581072);
        int i4 = i | (gapComposer2.changedInstance(list) ? 4 : 2) | 432 | (gapComposer2.changedInstance(function0) ? 2048 : 1024) | (gapComposer2.changedInstance(list2) ? 16384 : 8192) | 383320064;
        int i5 = (gapComposer2.changedInstance(diskLruCache$$ExternalSyntheticLambda0) ? 256 : 128) | 18;
        if (gapComposer2.shouldExecute(i4 & 1, ((306783379 & i4) == 306783378 && (i5 & Token.EXPR_VOID) == 146) ? false : true)) {
            gapComposer2.startDefaults();
            if ((i & 1) != 0 && !gapComposer2.getDefaultsInvalid()) {
                gapComposer2.skipToGroupEnd();
                i2 = i4 & (-1879506945);
                i3 = i5 & (-127);
                modifier3 = modifier;
                alignment3 = alignment;
                list7 = list3;
                list8 = list4;
                function16 = function1;
                function15 = function12;
                function23 = function2;
            } else {
                BiasAlignment biasAlignment = Alignment.Companion.TopStart;
                List listOf = listOf(new SinglePaneSceneStrategy());
                SaversKt$$ExternalSyntheticLambda4 saversKt$$ExternalSyntheticLambda4 = new SaversKt$$ExternalSyntheticLambda4(28);
                i2 = i4 & (-1879506945);
                SaversKt$$ExternalSyntheticLambda4 saversKt$$ExternalSyntheticLambda42 = new SaversKt$$ExternalSyntheticLambda4(29);
                SaversKt$$ExternalSyntheticLambda3 saversKt$$ExternalSyntheticLambda3 = new SaversKt$$ExternalSyntheticLambda3(20);
                i3 = i5 & (-127);
                modifier3 = Modifier.Companion.$$INSTANCE;
                function15 = saversKt$$ExternalSyntheticLambda42;
                list7 = listOf;
                function16 = saversKt$$ExternalSyntheticLambda4;
                function23 = saversKt$$ExternalSyntheticLambda3;
                list8 = EmptyList.INSTANCE;
                alignment3 = biasAlignment;
            }
            gapComposer2.endDefaults();
            if (!list.isEmpty()) {
                int i6 = i2 & 14;
                int i7 = i2 >> 9;
                int i8 = (i3 & 896) | i6 | (i7 & Token.ASSIGN_MOD);
                boolean changed = gapComposer2.changed(CollectionsKt.toList(list));
                Object rememberedValue = gapComposer2.rememberedValue();
                if (changed || rememberedValue == Composer.Companion.Empty) {
                    if (list instanceof RandomAccess) {
                        arrayList = new ArrayList(list.size());
                        int size = list.size();
                        for (int i9 = 0; i9 < size; i9++) {
                            arrayList.add((NavEntry) diskLruCache$$ExternalSyntheticLambda0.invoke(list.get(i9)));
                        }
                    } else {
                        arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10));
                        Iterator it = list.iterator();
                        while (it.hasNext()) {
                            arrayList.add((NavEntry) diskLruCache$$ExternalSyntheticLambda0.invoke(it.next()));
                        }
                    }
                    rememberedValue = arrayList;
                    gapComposer2.updateRememberedValue(rememberedValue);
                }
                gapComposer = gapComposer2;
                NavDisplay(BundleKt.rememberDecoratedNavEntries((List) rememberedValue, list2, gapComposer2, i8 & Token.ASSIGN_MOD), modifier3, alignment3, list7, list8, function16, function15, function23, function0, gapComposer, 1794480, i7 & 14);
                modifier2 = modifier3;
                alignment2 = alignment3;
                list5 = list7;
                list6 = list8;
                function13 = function16;
                function14 = function15;
                function22 = function23;
            } else {
                _UtilJvmKt$$ExternalSyntheticLambda1.m$1("NavDisplay backstack cannot be empty");
                return;
            }
        } else {
            gapComposer = gapComposer2;
            gapComposer.skipToGroupEnd();
            modifier2 = modifier;
            alignment2 = alignment;
            list5 = list3;
            list6 = list4;
            function13 = function1;
            function14 = function12;
            function22 = function2;
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new Function2(list, modifier2, alignment2, function0, list2, list5, list6, function13, function14, function22, diskLruCache$$ExternalSyntheticLambda0, i) { // from class: androidx.navigation3.ui.NavDisplayKt__NavDisplayKt$$ExternalSyntheticLambda0
                public final /* synthetic */ List f$0;
                public final /* synthetic */ Modifier f$1;
                public final /* synthetic */ Function1 f$10;
                public final /* synthetic */ Function2 f$11;
                public final /* synthetic */ DiskLruCache$$ExternalSyntheticLambda0 f$12;
                public final /* synthetic */ Alignment f$2;
                public final /* synthetic */ Function0 f$3;
                public final /* synthetic */ List f$4;
                public final /* synthetic */ List f$5;
                public final /* synthetic */ List f$6;
                public final /* synthetic */ Function1 f$9;

                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    ((Integer) obj2).getClass();
                    int updateChangedFlags = Updater.updateChangedFlags(1);
                    Jsoup.NavDisplay(this.f$0, this.f$1, this.f$2, this.f$3, this.f$4, this.f$5, this.f$6, this.f$9, this.f$10, this.f$11, this.f$12, (Composer) obj, updateChangedFlags);
                    return Unit.INSTANCE;
                }
            };
        }
    }
}
