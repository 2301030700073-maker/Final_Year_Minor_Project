package okio;

import android.os.Parcel;
import android.os.Parcelable;
import android.view.View;
import androidx.appcompat.widget.PopupMenu$1;
import androidx.collection.MutableIntObjectMap;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.FillElement;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.layout.SpacerKt;
import androidx.compose.foundation.lazy.layout.LazyLayoutMeasureScopeImpl;
import androidx.compose.foundation.pager.MeasuredPage;
import androidx.compose.foundation.pager.PagerLazyLayoutItemProvider;
import androidx.compose.material3.BadgeKt;
import androidx.compose.material3.MaterialTheme$Values;
import androidx.compose.material3.MaterialThemeKt;
import androidx.compose.material3.TabKt$$ExternalSyntheticLambda1;
import androidx.compose.material3.TextKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.StaticProvidableCompositionLocal;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.runtime.composer.gapbuffer.changelist.Operations;
import androidx.compose.runtime.internal.Expect_jvmKt;
import androidx.compose.runtime.internal.PersistentCompositionLocalHashMap;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.focus.CustomDestinationResult;
import androidx.compose.ui.focus.FocusOwnerImpl;
import androidx.compose.ui.focus.FocusPropertiesImpl;
import androidx.compose.ui.focus.FocusRequester;
import androidx.compose.ui.focus.FocusStateImpl;
import androidx.compose.ui.focus.FocusTargetNode;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.input.pointer.HistoricalChange;
import androidx.compose.ui.input.pointer.PointerInputChange;
import androidx.compose.ui.input.pointer.util.VelocityTracker1D;
import androidx.compose.ui.internal.InlineClassHelperKt;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.node.DelegatingNode;
import androidx.compose.ui.node.HitTestResultKt;
import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.node.LayoutNode$Companion$Constructor$1;
import androidx.compose.ui.node.NodeChain;
import androidx.compose.ui.platform.AndroidComposeView;
import androidx.compose.ui.unit.LayoutDirection;
import androidx.core.graphics.PathParser$PathDataNode;
import coil3.decode.DecodeUtils$$ExternalSyntheticBUOutline0;
import coil3.decode.StaticImageDecoderKt;
import coil3.memory.RealStrongMemoryCache;
import coil3.request.ViewTargetRequestManager;
import com.google.common.collect.CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.Observer;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.functions.Supplier;
import io.reactivex.rxjava3.internal.disposables.EmptyDisposable;
import io.reactivex.rxjava3.internal.operators.observable.ObservableScalarXMap$ScalarDisposable;
import j$.util.Objects;
import java.io.InputStream;
import java.io.Serializable;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.List;
import kotlin.collections.ArraysKt;
import kotlin.collections.EmptyList;
import kotlin.enums.EnumEntriesList;
import kotlin.jvm.functions.Function0;
import kotlin.ranges.RangesKt;
import kotlin.text.HexExtensionsKt;
import net.newpipe.app.AppKt;
import net.newpipe.app.model.Link;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;
import okio.Options;
import org.koin.compose.KoinApplicationKt$$ExternalSyntheticLambda2;
import org.mozilla.classfile.ConstantPool;
import org.mozilla.javascript.Token;
import org.schabi.newpipe.R;
import org.schabi.newpipe.extractor.exceptions.ContentNotAvailableException;
import org.schabi.newpipe.extractor.stream.StreamType;

/* loaded from: classes.dex */
public abstract class Okio {
    public static boolean sTryHiddenTransitionAlpha = true;
    public static Field sViewFlagsField;
    public static boolean sViewFlagsFieldFetched;

    /* renamed from: DpSize-YgX7TsA, reason: not valid java name */
    public static final long m718DpSizeYgX7TsA(float f, float f2) {
        return (Float.floatToRawIntBits(f2) & 4294967295L) | (Float.floatToRawIntBits(f) << 32);
    }

    public static final void LinkListItem(Modifier modifier, Link link, Function0 function0, Composer composer, int i) {
        Modifier modifier2;
        link.getClass();
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(1982665713);
        int i2 = i | 6 | (gapComposer.changed(link) ? 32 : 16) | (gapComposer.changedInstance(function0) ? 256 : 128);
        if (gapComposer.shouldExecute(i2 & 1, (i2 & Token.EXPR_VOID) != 146)) {
            FillElement fillElement = SizeKt.FillWholeMaxWidth;
            Modifier m98padding3ABfNKs = SpacerKt.m98padding3ABfNKs(fillElement, 10.0f);
            ColumnMeasurePolicy columnMeasurePolicy = ColumnKt.columnMeasurePolicy(SpacerKt.Top, Alignment.Companion.Start, gapComposer, 0);
            long j = gapComposer.compositeKeyHashCode;
            int i3 = (int) (j ^ (j >>> 32));
            PersistentCompositionLocalHashMap currentCompositionLocalScope = gapComposer.currentCompositionLocalScope();
            Modifier materializeModifier = RangesKt.materializeModifier(gapComposer, m98padding3ABfNKs);
            ComposeUiNode.Companion.getClass();
            LayoutNode$Companion$Constructor$1 layoutNode$Companion$Constructor$1 = ComposeUiNode.Companion.Constructor;
            gapComposer.startReusableNode();
            if (gapComposer.inserting) {
                gapComposer.createNode(layoutNode$Companion$Constructor$1);
            } else {
                gapComposer.useNode();
            }
            Updater.m170setimpl(gapComposer, columnMeasurePolicy, ComposeUiNode.Companion.SetMeasurePolicy);
            Updater.m170setimpl(gapComposer, currentCompositionLocalScope, ComposeUiNode.Companion.SetResolvedCompositionLocals);
            Updater.m170setimpl(gapComposer, Integer.valueOf(i3), ComposeUiNode.Companion.SetCompositeKeyHash);
            Updater.m169reconcileimpl(gapComposer, ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion);
            Updater.m170setimpl(gapComposer, materializeModifier, ComposeUiNode.Companion.SetModifier);
            String str = link.title;
            StaticProvidableCompositionLocal staticProvidableCompositionLocal = MaterialThemeKt._localMaterialTheme;
            TextKt.m164TextNvy7gAk(str, null, 0L, 0L, 0L, null, 0L, 0, false, 0, 0, ((MaterialTheme$Values) gapComposer.consume(staticProvidableCompositionLocal)).typography.titleMedium, gapComposer, 0, 131070);
            TextKt.m164TextNvy7gAk(link.description, null, 0L, 0L, 0L, null, 0L, 0, false, 0, 0, ((MaterialTheme$Values) gapComposer.consume(staticProvidableCompositionLocal)).typography.bodyMedium, gapComposer, 0, 131070);
            gapComposer = gapComposer;
            BadgeKt.TextButton(function0, SizeKt.wrapContentWidth$default(fillElement), false, null, null, null, Expect_jvmKt.rememberComposableLambda(470653540, new TabKt$$ExternalSyntheticLambda1(link, 10), gapComposer), gapComposer, ((i2 >> 6) & 14) | 805306416, 508);
            gapComposer.end(true);
            modifier2 = Modifier.Companion.$$INSTANCE;
        } else {
            gapComposer.skipToGroupEnd();
            modifier2 = modifier;
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new KoinApplicationKt$$ExternalSyntheticLambda2(modifier2, link, function0, i, 5);
        }
    }

    public static final int OBJECT(int i) {
        return ((i & 65535) << 8) | 7;
    }

    public static Object access$000(Parcel parcel, Parcelable.Creator creator) {
        if (parcel.readInt() != 0) {
            return creator.createFromParcel(parcel);
        }
        return null;
    }

    /* renamed from: addPointerInputChange-0AR0LA0, reason: not valid java name */
    public static final void m719addPointerInputChange0AR0LA0(PopupMenu$1 popupMenu$1, PointerInputChange pointerInputChange, long j) {
        RealStrongMemoryCache realStrongMemoryCache = (RealStrongMemoryCache) popupMenu$1.this$0;
        realStrongMemoryCache.getClass();
        VelocityTracker1D velocityTracker1D = (VelocityTracker1D) realStrongMemoryCache.cache;
        VelocityTracker1D velocityTracker1D2 = (VelocityTracker1D) realStrongMemoryCache.weakMemoryCache;
        boolean changedToDownIgnoreConsumed = AppKt.changedToDownIgnoreConsumed(pointerInputChange);
        long j2 = pointerInputChange.uptimeMillis;
        if (changedToDownIgnoreConsumed) {
            ArraysKt.fill(0, r6.length, null, velocityTracker1D2.samples);
            velocityTracker1D2.index = 0;
            ArraysKt.fill(0, r6.length, null, velocityTracker1D.samples);
            velocityTracker1D.index = 0;
            realStrongMemoryCache.initialMaxSize = 0L;
        }
        if (!AppKt.changedToUpIgnoreConsumed(pointerInputChange)) {
            List list = pointerInputChange._historical;
            if (list == null) {
                list = EmptyList.INSTANCE;
            }
            int i = 0;
            for (int size = list.size(); i < size; size = size) {
                HistoricalChange historicalChange = (HistoricalChange) list.get(i);
                realStrongMemoryCache.m477addPositionUv8p0NA(historicalChange.uptimeMillis, Offset.m200plusMKHz9U(historicalChange.originalEventPosition, j));
                i++;
            }
            realStrongMemoryCache.m477addPositionUv8p0NA(j2, Offset.m200plusMKHz9U(pointerInputChange.originalEventPosition, j));
        }
        if (AppKt.changedToUpIgnoreConsumed(pointerInputChange) && j2 - realStrongMemoryCache.initialMaxSize > 40) {
            ArraysKt.fill(0, r0.length, null, velocityTracker1D2.samples);
            velocityTracker1D2.index = 0;
            ArraysKt.fill(0, r2.length, null, velocityTracker1D.samples);
            velocityTracker1D.index = 0;
            realStrongMemoryCache.initialMaxSize = 0L;
        }
        realStrongMemoryCache.initialMaxSize = j2;
    }

    public static String badPositionIndex(int i, int i2, String str) {
        if (i < 0) {
            return Options.Companion.lenientFormat("%s (%s) must not be negative", str, Integer.valueOf(i));
        }
        if (i2 >= 0) {
            return Options.Companion.lenientFormat("%s (%s) must not be greater than size (%s)", str, Integer.valueOf(i), Integer.valueOf(i2));
        }
        _UtilJvmKt$$ExternalSyntheticLambda1.m$1(Modifier.CC.m(i2, "negative size: "));
        return null;
    }

    public static boolean canMorph(PathParser$PathDataNode[] pathParser$PathDataNodeArr, PathParser$PathDataNode[] pathParser$PathDataNodeArr2) {
        if (pathParser$PathDataNodeArr == null || pathParser$PathDataNodeArr2 == null || pathParser$PathDataNodeArr.length != pathParser$PathDataNodeArr2.length) {
            return false;
        }
        for (int i = 0; i < pathParser$PathDataNodeArr.length; i++) {
            PathParser$PathDataNode pathParser$PathDataNode = pathParser$PathDataNodeArr[i];
            char c = pathParser$PathDataNode.mType;
            PathParser$PathDataNode pathParser$PathDataNode2 = pathParser$PathDataNodeArr2[i];
            if (c != pathParser$PathDataNode2.mType || pathParser$PathDataNode.mParams.length != pathParser$PathDataNode2.mParams.length) {
                return false;
            }
        }
        return true;
    }

    public static void checkArgument(boolean z, String str, long j) {
        if (z) {
            return;
        }
        _UtilJvmKt$$ExternalSyntheticLambda1.m$1(Options.Companion.lenientFormat(str, Long.valueOf(j)));
    }

    public static void checkElementIndex(int i, int i2) {
        String lenientFormat;
        if (i < 0 || i >= i2) {
            if (i < 0) {
                lenientFormat = Options.Companion.lenientFormat("%s (%s) must not be negative", "index", Integer.valueOf(i));
            } else {
                if (i2 < 0) {
                    _UtilJvmKt$$ExternalSyntheticLambda1.m$1(Modifier.CC.m(i2, "negative size: "));
                    return;
                }
                lenientFormat = Options.Companion.lenientFormat("%s (%s) must be less than size (%s)", "index", Integer.valueOf(i), Integer.valueOf(i2));
            }
            throw new IndexOutOfBoundsException(lenientFormat);
        }
    }

    public static void checkNotNull(Object obj, String str) {
        if (obj != null) {
            return;
        }
        CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0.m$1(str);
    }

    public static void checkPositionIndex(int i, int i2) {
        if (i < 0 || i > i2) {
            CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0.m(badPositionIndex(i, i2, "index"));
        }
    }

    public static void checkPositionIndexes(int i, int i2, int i3) {
        if (i < 0 || i2 < i || i2 > i3) {
            throw new IndexOutOfBoundsException((i < 0 || i > i3) ? badPositionIndex(i, i3, "start index") : (i2 < 0 || i2 > i3) ? badPositionIndex(i2, i3, "end index") : Options.Companion.lenientFormat("end index (%s) must not be less than start index (%s)", Integer.valueOf(i2), Integer.valueOf(i)));
        }
    }

    public static void checkState(String str, boolean z) {
        if (z) {
            return;
        }
        _UtilJvmKt$$ExternalSyntheticLambda1.m$2(str);
    }

    public static final boolean clearFocus(FocusTargetNode focusTargetNode, boolean z) {
        int ordinal = focusTargetNode.getFocusState().ordinal();
        if (ordinal != 0) {
            if (ordinal == 1) {
                FocusTargetNode activeChild = Options.Companion.getActiveChild(focusTargetNode);
                if (!(activeChild != null ? clearFocus(activeChild, z) : true)) {
                    return false;
                }
                focusTargetNode.dispatchFocusCallbacks$ui(FocusStateImpl.ActiveParent, FocusStateImpl.Inactive);
                return true;
            }
            if (ordinal == 2) {
                return z;
            }
            if (ordinal != 3) {
                DecodeUtils$$ExternalSyntheticBUOutline0.m();
                return false;
            }
        }
        return true;
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

    public static float[] copyOfRange(float[] fArr, int i) {
        if (i < 0) {
            _UtilJvmKt$$ExternalSyntheticLambda1.m$1();
            return null;
        }
        int length = fArr.length;
        if (length < 0) {
            throw new ArrayIndexOutOfBoundsException();
        }
        int min = Math.min(i, length);
        float[] fArr2 = new float[i];
        System.arraycopy(fArr, 0, fArr2, 0, min);
        return fArr2;
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0042  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0096 A[Catch: NumberFormatException -> 0x00aa, LOOP:3: B:25:0x0068->B:35:0x0096, LOOP_END, TryCatch #0 {NumberFormatException -> 0x00aa, blocks: (B:22:0x0054, B:25:0x0068, B:27:0x006e, B:31:0x007a, B:35:0x0096, B:39:0x009c, B:44:0x00b1, B:56:0x00b4), top: B:21:0x0054 }] */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0095 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:39:0x009c A[Catch: NumberFormatException -> 0x00aa, TryCatch #0 {NumberFormatException -> 0x00aa, blocks: (B:22:0x0054, B:25:0x0068, B:27:0x006e, B:31:0x007a, B:35:0x0096, B:39:0x009c, B:44:0x00b1, B:56:0x00b4), top: B:21:0x0054 }] */
    /* JADX WARN: Removed duplicated region for block: B:41:0x00ae  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x00b1 A[Catch: NumberFormatException -> 0x00aa, TryCatch #0 {NumberFormatException -> 0x00aa, blocks: (B:22:0x0054, B:25:0x0068, B:27:0x006e, B:31:0x007a, B:35:0x0096, B:39:0x009c, B:44:0x00b1, B:56:0x00b4), top: B:21:0x0054 }] */
    /* JADX WARN: Removed duplicated region for block: B:68:0x00d6 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static androidx.core.graphics.PathParser$PathDataNode[] createNodesFromPathData(java.lang.String r17) {
        /*
            Method dump skipped, instructions count: 268
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: okio.Okio.createNodesFromPathData(java.lang.String):androidx.core.graphics.PathParser$PathDataNode[]");
    }

    public static final long currentThreadId() {
        return Thread.currentThread().getId();
    }

    public static PathParser$PathDataNode[] deepCopyNodes(PathParser$PathDataNode[] pathParser$PathDataNodeArr) {
        PathParser$PathDataNode[] pathParser$PathDataNodeArr2 = new PathParser$PathDataNode[pathParser$PathDataNodeArr.length];
        for (int i = 0; i < pathParser$PathDataNodeArr.length; i++) {
            pathParser$PathDataNodeArr2[i] = new PathParser$PathDataNode(pathParser$PathDataNodeArr[i]);
        }
        return pathParser$PathDataNodeArr2;
    }

    public static final float dot(float[] fArr, float[] fArr2) {
        int length = fArr.length;
        float f = 0.0f;
        for (int i = 0; i < length; i++) {
            f += fArr[i] * fArr2[i];
        }
        return f;
    }

    public static final EnumEntriesList enumEntries(Enum[] enumArr) {
        enumArr.getClass();
        return new EnumEntriesList(enumArr);
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

    public static final int fromType(String str, ConstantPool constantPool) {
        if (str.length() != 1) {
            return OBJECT(constantPool.addClass(str));
        }
        char charAt = str.charAt(0);
        if (charAt == 'F') {
            return 2;
        }
        if (charAt != 'S' && charAt != 'Z' && charAt != 'I') {
            if (charAt == 'J') {
                return 4;
            }
            switch (charAt) {
                case Token.ENUM_INIT_VALUES_IN_ORDER /* 66 */:
                case 'C':
                    break;
                case Token.ENUM_ID /* 68 */:
                    return 3;
                default:
                    _UtilJvmKt$$ExternalSyntheticLambda1.m$1("bad type");
                    return 0;
            }
        }
        return 1;
    }

    /* renamed from: getAndMeasure-G5IdpRk, reason: not valid java name */
    public static final MeasuredPage m720getAndMeasureG5IdpRk(LazyLayoutMeasureScopeImpl lazyLayoutMeasureScopeImpl, int i, long j, PagerLazyLayoutItemProvider pagerLazyLayoutItemProvider, long j2, Alignment.Vertical vertical, LayoutDirection layoutDirection, int i2, MutableIntObjectMap mutableIntObjectMap) {
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
                arrayList.add(((Measurable) compose.get(i3)).mo292measureBRTryo0(j));
            }
            mutableIntObjectMap.set(i, arrayList);
            list = arrayList;
        }
        return new MeasuredPage(i, i2, list, j2, key, vertical, layoutDirection);
    }

    public static final long getLongAt(int i, byte[] bArr) {
        return (bArr[i + 7] & 255) | ((bArr[i] & 255) << 56) | ((bArr[i + 1] & 255) << 48) | ((bArr[i + 2] & 255) << 40) | ((bArr[i + 3] & 255) << 32) | ((bArr[i + 4] & 255) << 24) | ((bArr[i + 5] & 255) << 16) | ((bArr[i + 6] & 255) << 8);
    }

    public static final String getPayloadAsType(int i, ConstantPool constantPool) {
        if ((i & 255) == 7) {
            return (String) constantPool.getConstantData(i >>> 8);
        }
        _UtilJvmKt$$ExternalSyntheticLambda1.m$1("expecting object type");
        return null;
    }

    public static final ViewTargetRequestManager getRequestManager(View view) {
        ViewTargetRequestManager viewTargetRequestManager;
        Object tag = view.getTag(R.id.coil3_request_manager);
        ViewTargetRequestManager viewTargetRequestManager2 = tag instanceof ViewTargetRequestManager ? (ViewTargetRequestManager) tag : null;
        if (viewTargetRequestManager2 != null) {
            return viewTargetRequestManager2;
        }
        synchronized (view) {
            try {
                Object tag2 = view.getTag(R.id.coil3_request_manager);
                viewTargetRequestManager = tag2 instanceof ViewTargetRequestManager ? (ViewTargetRequestManager) tag2 : null;
                if (viewTargetRequestManager == null) {
                    viewTargetRequestManager = new ViewTargetRequestManager(view);
                    view.addOnAttachStateChangeListener(viewTargetRequestManager);
                    view.setTag(R.id.coil3_request_manager, viewTargetRequestManager);
                }
            } finally {
            }
        }
        return viewTargetRequestManager;
    }

    public static final boolean isLiveStream(StreamType streamType) {
        streamType.getClass();
        return streamType == StreamType.LIVE_STREAM || streamType == StreamType.AUDIO_LIVE_STREAM;
    }

    public static boolean isTwoWords(int i) {
        return i == 3 || i == 4;
    }

    public static final ContentNotAvailableException parseError(String str) {
        str.getClass();
        return new ContentNotAvailableException("Failed to parse media ID ".concat(str));
    }

    /* renamed from: performCustomClearFocus-Mxy_nc0, reason: not valid java name */
    public static final CustomDestinationResult m721performCustomClearFocusMxy_nc0(FocusTargetNode focusTargetNode) {
        int ordinal = focusTargetNode.getFocusState().ordinal();
        CustomDestinationResult customDestinationResult = CustomDestinationResult.None;
        if (ordinal != 0) {
            CustomDestinationResult customDestinationResult2 = CustomDestinationResult.Cancelled;
            if (ordinal == 1) {
                FocusTargetNode activeChild = Options.Companion.getActiveChild(focusTargetNode);
                if (activeChild == null) {
                    _UtilJvmKt$$ExternalSyntheticLambda1.m$1("ActiveParent with no focused child");
                    return null;
                }
                CustomDestinationResult m721performCustomClearFocusMxy_nc0 = m721performCustomClearFocusMxy_nc0(activeChild);
                CustomDestinationResult customDestinationResult3 = m721performCustomClearFocusMxy_nc0 != customDestinationResult ? m721performCustomClearFocusMxy_nc0 : null;
                if (customDestinationResult3 != null) {
                    return customDestinationResult3;
                }
                if (focusTargetNode.isProcessingCustomExit) {
                    return customDestinationResult;
                }
                focusTargetNode.isProcessingCustomExit = true;
                try {
                    FocusPropertiesImpl fetchFocusProperties$ui = focusTargetNode.fetchFocusProperties$ui();
                    FocusOwnerImpl focusOwnerImpl = (FocusOwnerImpl) ((AndroidComposeView) HitTestResultKt.requireOwner(focusTargetNode)).getFocusOwner();
                    FocusTargetNode activeFocusTargetNode = focusOwnerImpl.getActiveFocusTargetNode();
                    fetchFocusProperties$ui.onExit.getClass();
                    FocusTargetNode activeFocusTargetNode2 = focusOwnerImpl.getActiveFocusTargetNode();
                    return (activeFocusTargetNode == activeFocusTargetNode2 || activeFocusTargetNode2 == null) ? customDestinationResult : FocusRequester.Redirect == FocusRequester.Cancel ? customDestinationResult2 : CustomDestinationResult.Redirected;
                } finally {
                    focusTargetNode.isProcessingCustomExit = false;
                }
            }
            if (ordinal == 2) {
                return customDestinationResult2;
            }
            if (ordinal != 3) {
                DecodeUtils$$ExternalSyntheticBUOutline0.m();
                return null;
            }
        }
        return customDestinationResult;
    }

    /* renamed from: performCustomEnter-Mxy_nc0, reason: not valid java name */
    public static final CustomDestinationResult m722performCustomEnterMxy_nc0(FocusTargetNode focusTargetNode) {
        if (!focusTargetNode.isProcessingCustomEnter) {
            focusTargetNode.isProcessingCustomEnter = true;
            try {
                FocusPropertiesImpl fetchFocusProperties$ui = focusTargetNode.fetchFocusProperties$ui();
                FocusOwnerImpl focusOwnerImpl = (FocusOwnerImpl) ((AndroidComposeView) HitTestResultKt.requireOwner(focusTargetNode)).getFocusOwner();
                FocusTargetNode activeFocusTargetNode = focusOwnerImpl.getActiveFocusTargetNode();
                fetchFocusProperties$ui.onEnter.getClass();
                FocusTargetNode activeFocusTargetNode2 = focusOwnerImpl.getActiveFocusTargetNode();
                if (activeFocusTargetNode != activeFocusTargetNode2 && activeFocusTargetNode2 != null) {
                    return FocusRequester.Redirect == FocusRequester.Cancel ? CustomDestinationResult.Cancelled : CustomDestinationResult.Redirected;
                }
            } finally {
                focusTargetNode.isProcessingCustomEnter = false;
            }
        }
        return CustomDestinationResult.None;
    }

    /* renamed from: performCustomRequestFocus-Mxy_nc0, reason: not valid java name */
    public static final CustomDestinationResult m723performCustomRequestFocusMxy_nc0(FocusTargetNode focusTargetNode) {
        Modifier.Node node;
        NodeChain nodeChain;
        int ordinal = focusTargetNode.getFocusState().ordinal();
        CustomDestinationResult customDestinationResult = CustomDestinationResult.None;
        if (ordinal != 0) {
            if (ordinal == 1) {
                FocusTargetNode activeChild = Options.Companion.getActiveChild(focusTargetNode);
                if (activeChild != null) {
                    return m721performCustomClearFocusMxy_nc0(activeChild);
                }
                _UtilJvmKt$$ExternalSyntheticLambda1.m$1("ActiveParent with no focused child");
                return null;
            }
            if (ordinal != 2) {
                if (ordinal != 3) {
                    DecodeUtils$$ExternalSyntheticBUOutline0.m();
                    return null;
                }
                if (!focusTargetNode.node.isAttached) {
                    InlineClassHelperKt.throwIllegalStateException("visitAncestors called on an unattached node");
                }
                Modifier.Node node2 = focusTargetNode.node.parent;
                LayoutNode requireLayoutNode = HitTestResultKt.requireLayoutNode(focusTargetNode);
                loop0: while (true) {
                    if (requireLayoutNode == null) {
                        node = null;
                        break;
                    }
                    if ((requireLayoutNode.nodes.head.aggregateChildKindSet & 1024) != 0) {
                        while (node2 != null) {
                            if ((node2.kindSet & 1024) != 0) {
                                node = node2;
                                MutableVector mutableVector = null;
                                while (node != null) {
                                    if (node instanceof FocusTargetNode) {
                                        break loop0;
                                    }
                                    if ((node.kindSet & 1024) != 0 && (node instanceof DelegatingNode)) {
                                        int i = 0;
                                        for (Modifier.Node node3 = ((DelegatingNode) node).delegate; node3 != null; node3 = node3.child) {
                                            if ((node3.kindSet & 1024) != 0) {
                                                i++;
                                                if (i == 1) {
                                                    node = node3;
                                                } else {
                                                    if (mutableVector == null) {
                                                        mutableVector = new MutableVector(new Modifier.Node[16]);
                                                    }
                                                    if (node != null) {
                                                        mutableVector.add(node);
                                                        node = null;
                                                    }
                                                    mutableVector.add(node3);
                                                }
                                            }
                                        }
                                        if (i == 1) {
                                        }
                                    }
                                    node = HitTestResultKt.access$pop(mutableVector);
                                }
                            }
                            node2 = node2.parent;
                        }
                    }
                    requireLayoutNode = requireLayoutNode.getParent$ui();
                    node2 = (requireLayoutNode == null || (nodeChain = requireLayoutNode.nodes) == null) ? null : nodeChain.tail;
                }
                FocusTargetNode focusTargetNode2 = (FocusTargetNode) node;
                if (focusTargetNode2 == null) {
                    return customDestinationResult;
                }
                int ordinal2 = focusTargetNode2.getFocusState().ordinal();
                if (ordinal2 == 0) {
                    return m722performCustomEnterMxy_nc0(focusTargetNode2);
                }
                if (ordinal2 == 1) {
                    return m723performCustomRequestFocusMxy_nc0(focusTargetNode2);
                }
                if (ordinal2 == 2) {
                    return CustomDestinationResult.Cancelled;
                }
                if (ordinal2 != 3) {
                    DecodeUtils$$ExternalSyntheticBUOutline0.m();
                    return null;
                }
                CustomDestinationResult m723performCustomRequestFocusMxy_nc0 = m723performCustomRequestFocusMxy_nc0(focusTargetNode2);
                CustomDestinationResult customDestinationResult2 = m723performCustomRequestFocusMxy_nc0 != customDestinationResult ? m723performCustomRequestFocusMxy_nc0 : null;
                return customDestinationResult2 == null ? m722performCustomEnterMxy_nc0(focusTargetNode2) : customDestinationResult2;
            }
        }
        return customDestinationResult;
    }

    public static final void polyFitLeastSquares(float[] fArr, float[] fArr2, int i, float[] fArr3) {
        if (i == 0) {
            InlineClassHelperKt.throwIllegalArgumentException("At least one point must be provided");
        }
        int i2 = 2 >= i ? i - 1 : 2;
        int i3 = i2 + 1;
        float[][] fArr4 = new float[i3][];
        for (int i4 = 0; i4 < i3; i4++) {
            fArr4[i4] = new float[i];
        }
        for (int i5 = 0; i5 < i; i5++) {
            fArr4[0][i5] = 1.0f;
            for (int i6 = 1; i6 < i3; i6++) {
                fArr4[i6][i5] = fArr4[i6 - 1][i5] * fArr[i5];
            }
        }
        float[][] fArr5 = new float[i3][];
        for (int i7 = 0; i7 < i3; i7++) {
            fArr5[i7] = new float[i];
        }
        float[][] fArr6 = new float[i3][];
        for (int i8 = 0; i8 < i3; i8++) {
            fArr6[i8] = new float[i3];
        }
        int i9 = 0;
        while (i9 < i3) {
            float[] fArr7 = fArr5[i9];
            float[] fArr8 = fArr4[i9];
            fArr8.getClass();
            fArr7.getClass();
            System.arraycopy(fArr8, 0, fArr7, 0, i);
            for (int i10 = 0; i10 < i9; i10++) {
                float[] fArr9 = fArr5[i10];
                float dot = dot(fArr7, fArr9);
                for (int i11 = 0; i11 < i; i11++) {
                    fArr7[i11] = fArr7[i11] - (fArr9[i11] * dot);
                }
            }
            float sqrt = (float) Math.sqrt(dot(fArr7, fArr7));
            if (sqrt < 1.0E-6f) {
                sqrt = 1.0E-6f;
            }
            float f = 1.0f / sqrt;
            for (int i12 = 0; i12 < i; i12++) {
                fArr7[i12] = fArr7[i12] * f;
            }
            float[] fArr10 = fArr6[i9];
            int i13 = 0;
            while (i13 < i3) {
                fArr10[i13] = i13 < i9 ? 0.0f : dot(fArr7, fArr4[i13]);
                i13++;
            }
            i9++;
        }
        for (int i14 = i2; -1 < i14; i14--) {
            float dot2 = dot(fArr5[i14], fArr2);
            float[] fArr11 = fArr6[i14];
            int i15 = i14 + 1;
            if (i15 <= i2) {
                int i16 = i2;
                while (true) {
                    dot2 -= fArr11[i16] * fArr3[i16];
                    if (i16 != i15) {
                        i16--;
                    }
                }
            }
            fArr3[i14] = dot2 / fArr11[i14];
        }
    }

    /* renamed from: setObject-sGr0YRc, reason: not valid java name */
    public static final void m724setObjectsGr0YRc(Operations operations, int i, Object obj) {
        operations.objectArgs[(operations.objectArgsSize - operations.opCodes[operations.opCodesSize - 1].objects) + i] = obj;
    }

    /* renamed from: setObjects-EsEZvaA, reason: not valid java name */
    public static final void m725setObjectsEsEZvaA(Operations operations, int i, Object obj, int i2, Object obj2) {
        int i3 = operations.objectArgsSize - operations.opCodes[operations.opCodesSize - 1].objects;
        Object[] objArr = operations.objectArgs;
        objArr[i + i3] = obj;
        objArr[i3 + i2] = obj2;
    }

    /* renamed from: setObjects-JOGOPjs, reason: not valid java name */
    public static final void m726setObjectsJOGOPjs(Operations operations, Object obj, Object obj2, Object obj3) {
        int i = operations.objectArgsSize - operations.opCodes[operations.opCodesSize - 1].objects;
        Object[] objArr = operations.objectArgs;
        objArr[i] = obj;
        objArr[i + 1] = obj2;
        objArr[i + 2] = obj3;
    }

    public static final InputStreamSource source(InputStream inputStream) {
        inputStream.getClass();
        return new InputStreamSource(inputStream, new Timeout());
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

    public static String toString(int i, ConstantPool constantPool) {
        int i2 = i & 255;
        switch (i2) {
            case 0:
                return "top";
            case 1:
                return "int";
            case 2:
                return "float";
            case 3:
                return "double";
            case 4:
                return "long";
            case 5:
                return "null";
            case 6:
                return "uninitialized_this";
            default:
                if (i2 == 7) {
                    return getPayloadAsType(i, constantPool);
                }
                if (i2 == 8) {
                    return "uninitialized";
                }
                _UtilJvmKt$$ExternalSyntheticLambda1.m$1("bad type");
                return null;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static boolean tryScalarXMapSubscribe(Observable observable, Observer observer, Function function) {
        Disposable disposable = EmptyDisposable.INSTANCE;
        if (!(observable instanceof Supplier)) {
            return false;
        }
        try {
            Object obj = ((Supplier) observable).get();
            if (obj == null) {
                observer.onSubscribe(disposable);
                observer.onComplete();
                return true;
            }
            try {
                Object apply = function.apply(obj);
                Objects.requireNonNull(apply, "The mapper returned a null ObservableSource");
                Observable observable2 = (Observable) apply;
                if (!(observable2 instanceof Supplier)) {
                    observable2.subscribe(observer);
                    return true;
                }
                try {
                    Object obj2 = ((Supplier) observable2).get();
                    if (obj2 == null) {
                        observer.onSubscribe(disposable);
                        observer.onComplete();
                        return true;
                    }
                    ObservableScalarXMap$ScalarDisposable observableScalarXMap$ScalarDisposable = new ObservableScalarXMap$ScalarDisposable(observer, obj2);
                    observer.onSubscribe(observableScalarXMap$ScalarDisposable);
                    observableScalarXMap$ScalarDisposable.run();
                    return true;
                } catch (Throwable th) {
                    AppKt.throwIfFatal(th);
                    observer.onSubscribe(disposable);
                    observer.onError(th);
                    return true;
                }
            } catch (Throwable th2) {
                AppKt.throwIfFatal(th2);
                observer.onSubscribe(disposable);
                observer.onError(th2);
                return true;
            }
        } catch (Throwable th3) {
            AppKt.throwIfFatal(th3);
            observer.onSubscribe(disposable);
            observer.onError(th3);
            return true;
        }
    }

    public static final void uuidThrowUnexpectedCharacterException(String str, int i, String str2) {
        throw new IllegalArgumentException("Expected " + str2 + " at index " + i + ", but was '" + str.charAt(i) + '\'');
    }

    public float getTransitionAlpha(View view) {
        if (sTryHiddenTransitionAlpha) {
            try {
                return StaticImageDecoderKt.getTransitionAlpha(view);
            } catch (NoSuchMethodError unused) {
                sTryHiddenTransitionAlpha = false;
            }
        }
        return view.getAlpha();
    }

    public abstract void setAppearanceLightStatusBars(boolean z);

    public void setTransitionAlpha(View view, float f) {
        if (sTryHiddenTransitionAlpha) {
            try {
                StaticImageDecoderKt.setTransitionAlpha(view, f);
                return;
            } catch (NoSuchMethodError unused) {
                sTryHiddenTransitionAlpha = false;
            }
        }
        view.setAlpha(f);
    }

    public static void checkArgument(boolean z) {
        if (z) {
            return;
        }
        _UtilJvmKt$$ExternalSyntheticLambda1.m$1();
    }

    public void setAppearanceLightNavigationBars(boolean z) {
    }
}
