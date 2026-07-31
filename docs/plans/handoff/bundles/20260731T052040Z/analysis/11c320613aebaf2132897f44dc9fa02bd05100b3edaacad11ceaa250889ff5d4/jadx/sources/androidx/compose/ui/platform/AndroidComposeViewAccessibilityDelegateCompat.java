package androidx.compose.ui.platform;

import android.accessibilityservice.AccessibilityServiceInfo;
import android.content.res.Resources;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Region;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Parcelable;
import android.os.SystemClock;
import android.os.Trace;
import android.text.Layout;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityManager;
import android.view.accessibility.AccessibilityNodeInfo;
import androidx.collection.ArraySet;
import androidx.collection.IntIntMapKt;
import androidx.collection.IntListKt;
import androidx.collection.IntObjectMap;
import androidx.collection.IntObjectMapKt;
import androidx.collection.IntSetKt;
import androidx.collection.MutableIntIntMap;
import androidx.collection.MutableIntList;
import androidx.collection.MutableIntObjectMap;
import androidx.collection.MutableIntSet;
import androidx.collection.MutableScatterMap;
import androidx.collection.SparseArrayCompat;
import androidx.compose.foundation.lazy.layout.LazyLayoutSemanticsModifierNode$$ExternalSyntheticLambda1;
import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.RoundRect;
import androidx.compose.ui.graphics.AndroidPath;
import androidx.compose.ui.graphics.Brush;
import androidx.compose.ui.graphics.Outline$Generic;
import androidx.compose.ui.graphics.Outline$Rectangle;
import androidx.compose.ui.graphics.Outline$Rounded;
import androidx.compose.ui.graphics.Shape;
import androidx.compose.ui.layout.RulerKt;
import androidx.compose.ui.node.DelegatableNode;
import androidx.compose.ui.node.DelegatingNode;
import androidx.compose.ui.node.HitTestResultKt;
import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.node.NodeCoordinator;
import androidx.compose.ui.node.OwnerSnapshotObserver;
import androidx.compose.ui.node.SemanticsModifierNode;
import androidx.compose.ui.semantics.AccessibilityAction;
import androidx.compose.ui.semantics.ScrollAxisRange;
import androidx.compose.ui.semantics.SemanticsActions;
import androidx.compose.ui.semantics.SemanticsConfiguration;
import androidx.compose.ui.semantics.SemanticsNode;
import androidx.compose.ui.semantics.SemanticsNodeKt;
import androidx.compose.ui.semantics.SemanticsNodeWithAdjustedBounds;
import androidx.compose.ui.semantics.SemanticsProperties;
import androidx.compose.ui.semantics.SemanticsPropertyKey;
import androidx.compose.ui.semantics.SemanticsSortKt;
import androidx.compose.ui.text.AndroidParagraph;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.MultiParagraph;
import androidx.compose.ui.text.ParagraphInfo;
import androidx.compose.ui.text.ParagraphKt;
import androidx.compose.ui.text.TextLayoutResult;
import androidx.compose.ui.text.TextRange;
import androidx.compose.ui.text.android.TextLayout;
import androidx.compose.ui.text.internal.InlineClassHelperKt;
import androidx.compose.ui.unit.IntRect;
import androidx.compose.ui.util.ListUtilsKt;
import androidx.core.view.AccessibilityDelegateCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.core.widget.TextViewCompat$Api34Impl;
import androidx.customview.widget.ExploreByTouchHelper;
import coil3.ComponentRegistry;
import coil3.decode.DecodeUtils$$ExternalSyntheticBUOutline0;
import coil3.memory.MemoryCacheService;
import com.google.android.exoplayer2.audio.AacUtil;
import com.google.android.exoplayer2.util.Log;
import com.google.common.collect.CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import kotlin.Unit;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.channels.BufferedChannel;
import kotlinx.coroutines.channels.ProduceKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;
import org.acra.builder.ReportExecutor$$ExternalSyntheticLambda0;
import org.acra.util.ProcessFinisher;
import org.jsoup.Jsoup;
import org.schabi.newpipe.R;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class AndroidComposeViewAccessibilityDelegateCompat extends AccessibilityDelegateCompat implements View.OnAttachStateChangeListener, AccessibilityManager.AccessibilityStateChangeListener, AccessibilityManager.TouchExplorationStateChangeListener {
    public static final MutableIntList AccessibilityActionsResourceIds;
    public final String ExtraDataTestTraversalAfterVal;
    public final String ExtraDataTestTraversalBeforeVal;
    public long SendRecurringAccessibilityEventsIntervalMillis;
    public List _enabledServices;
    public int accessibilityCursorPosition;
    public int accessibilityFocusedVirtualViewId;
    public final android.view.accessibility.AccessibilityManager accessibilityManager;
    public final SparseArrayCompat actionIdToLabel;
    public final BufferedChannel boundsUpdateChannel;
    public boolean checkingForSemanticsChanges;
    public MutableIntObjectMap currentSemanticsNodes;
    public boolean currentSemanticsNodesInvalidated;
    public AccessibilityNodeInfoCompat currentlyAccessibilityFocusedANI;
    public AccessibilityNodeInfoCompat currentlyFocusedANI;
    public final MutableIntIntMap drawingOrder;
    public int focusedVirtualViewId;
    public final MutableIntIntMap idToAfterMap;
    public final MutableIntIntMap idToBeforeMap;
    public final SparseArrayCompat labelToActionId;
    public final ExploreByTouchHelper.MyNodeProvider nodeProvider;
    public final MutableIntSet paneDisplayed;
    public final MutableIntObjectMap pendingHorizontalScrollEvents;
    public PendingTextTraversedEvent pendingTextTraversedEvent;
    public final MutableIntObjectMap pendingVerticalScrollEvents;
    public final MutableIntObjectMap previousSemanticsNodes;
    public SemanticsNodeCopy previousSemanticsRoot;
    public Integer previousTraversedNode;
    public final AndroidComposeViewAccessibilityDelegateCompat$scheduleScrollEventIfNeededLambda$1 scheduleScrollEventIfNeededLambda;
    public final ArrayList scrollObservationScopes;
    public final ReportExecutor$$ExternalSyntheticLambda0 semanticsChangeChecker;
    public boolean sendingFocusAffectingEvent;
    public final ArraySet subtreeChangedLayoutNodes;
    public final ProcessFinisher urlSpanCache;
    public final AndroidComposeView view;
    public int hoveredVirtualViewId = Integer.MIN_VALUE;
    public final AndroidComposeViewAccessibilityDelegateCompat$onSendAccessibilityEvent$1 onSendAccessibilityEvent = new AndroidComposeViewAccessibilityDelegateCompat$onSendAccessibilityEvent$1(this);

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class PendingTextTraversedEvent {
        public final int action;
        public final int fromIndex;
        public final int granularity;
        public final SemanticsNode node;
        public final int toIndex;
        public final long traverseTime;

        public PendingTextTraversedEvent(SemanticsNode semanticsNode, int i, int i2, int i3, int i4, long j) {
            this.node = semanticsNode;
            this.action = i;
            this.granularity = i2;
            this.fromIndex = i3;
            this.toIndex = i4;
            this.traverseTime = j;
        }
    }

    static {
        int[] iArr = {R.id.accessibility_custom_action_0, R.id.accessibility_custom_action_1, R.id.accessibility_custom_action_2, R.id.accessibility_custom_action_3, R.id.accessibility_custom_action_4, R.id.accessibility_custom_action_5, R.id.accessibility_custom_action_6, R.id.accessibility_custom_action_7, R.id.accessibility_custom_action_8, R.id.accessibility_custom_action_9, R.id.accessibility_custom_action_10, R.id.accessibility_custom_action_11, R.id.accessibility_custom_action_12, R.id.accessibility_custom_action_13, R.id.accessibility_custom_action_14, R.id.accessibility_custom_action_15, R.id.accessibility_custom_action_16, R.id.accessibility_custom_action_17, R.id.accessibility_custom_action_18, R.id.accessibility_custom_action_19, R.id.accessibility_custom_action_20, R.id.accessibility_custom_action_21, R.id.accessibility_custom_action_22, R.id.accessibility_custom_action_23, R.id.accessibility_custom_action_24, R.id.accessibility_custom_action_25, R.id.accessibility_custom_action_26, R.id.accessibility_custom_action_27, R.id.accessibility_custom_action_28, R.id.accessibility_custom_action_29, R.id.accessibility_custom_action_30, R.id.accessibility_custom_action_31};
        MutableIntList mutableIntList = IntListKt.EmptyIntList;
        MutableIntList mutableIntList2 = new MutableIntList(32);
        int i = mutableIntList2._size;
        if (i < 0) {
            CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0.m("");
            return;
        }
        int i2 = i + 32;
        int[] iArr2 = mutableIntList2.content;
        if (iArr2.length < i2) {
            mutableIntList2.content = Arrays.copyOf(iArr2, Math.max(i2, (iArr2.length * 3) / 2));
        }
        int[] iArr3 = mutableIntList2.content;
        int i3 = mutableIntList2._size;
        if (i != i3) {
            ArraysKt.copyInto(i2, i, i3, iArr3, iArr3);
        }
        ArraysKt.copyInto$default(i, 0, 12, iArr, iArr3);
        mutableIntList2._size += 32;
        AccessibilityActionsResourceIds = mutableIntList2;
    }

    /* JADX WARN: Type inference failed for: r5v3, types: [androidx.compose.ui.platform.AndroidComposeViewAccessibilityDelegateCompat$scheduleScrollEventIfNeededLambda$1] */
    public AndroidComposeViewAccessibilityDelegateCompat(AndroidComposeView androidComposeView) {
        this.view = androidComposeView;
        Object systemService = androidComposeView.getContext().getSystemService("accessibility");
        systemService.getClass();
        this.accessibilityManager = (android.view.accessibility.AccessibilityManager) systemService;
        this.SendRecurringAccessibilityEventsIntervalMillis = 100L;
        new Handler(Looper.getMainLooper());
        this.nodeProvider = new ExploreByTouchHelper.MyNodeProvider(this, 1);
        this.accessibilityFocusedVirtualViewId = Integer.MIN_VALUE;
        this.focusedVirtualViewId = Integer.MIN_VALUE;
        this.pendingHorizontalScrollEvents = new MutableIntObjectMap();
        this.pendingVerticalScrollEvents = new MutableIntObjectMap();
        Object obj = null;
        this.actionIdToLabel = new SparseArrayCompat(obj);
        this.labelToActionId = new SparseArrayCompat(obj);
        this.accessibilityCursorPosition = -1;
        this.subtreeChangedLayoutNodes = new ArraySet(0);
        this.boundsUpdateChannel = ProduceKt.Channel$default(1, 6, null);
        this.currentSemanticsNodesInvalidated = true;
        MutableIntObjectMap mutableIntObjectMap = IntObjectMapKt.EmptyIntObjectMap;
        mutableIntObjectMap.getClass();
        this.currentSemanticsNodes = mutableIntObjectMap;
        this.paneDisplayed = new MutableIntSet();
        this.idToBeforeMap = new MutableIntIntMap();
        this.idToAfterMap = new MutableIntIntMap();
        this.ExtraDataTestTraversalBeforeVal = "android.view.accessibility.extra.EXTRA_DATA_TEST_TRAVERSALBEFORE_VAL";
        this.ExtraDataTestTraversalAfterVal = "android.view.accessibility.extra.EXTRA_DATA_TEST_TRAVERSALAFTER_VAL";
        this.urlSpanCache = new ProcessFinisher(14);
        this.previousSemanticsNodes = new MutableIntObjectMap();
        this.previousSemanticsRoot = new SemanticsNodeCopy(androidComposeView.getSemanticsOwner().getUnmergedRootSemanticsNode(), mutableIntObjectMap);
        int i = IntIntMapKt.$r8$clinit;
        this.drawingOrder = new MutableIntIntMap();
        androidComposeView.addOnAttachStateChangeListener(this);
        this.semanticsChangeChecker = new ReportExecutor$$ExternalSyntheticLambda0(this, 6);
        this.scrollObservationScopes = new ArrayList();
        this.scheduleScrollEventIfNeededLambda = new Function1() { // from class: androidx.compose.ui.platform.AndroidComposeViewAccessibilityDelegateCompat$scheduleScrollEventIfNeededLambda$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj2) {
                ScrollObservationScope scrollObservationScope = (ScrollObservationScope) obj2;
                AndroidComposeViewAccessibilityDelegateCompat androidComposeViewAccessibilityDelegateCompat = AndroidComposeViewAccessibilityDelegateCompat.this;
                androidComposeViewAccessibilityDelegateCompat.getClass();
                if (scrollObservationScope.allScopes.contains(scrollObservationScope)) {
                    OwnerSnapshotObserver snapshotObserver = androidComposeViewAccessibilityDelegateCompat.view.getSnapshotObserver();
                    snapshotObserver.observer.observeReads(scrollObservationScope, androidComposeViewAccessibilityDelegateCompat.scheduleScrollEventIfNeededLambda, new AndroidComposeViewAccessibilityDelegateCompat$scheduleScrollEventIfNeeded$1(scrollObservationScope, androidComposeViewAccessibilityDelegateCompat));
                }
                return Unit.INSTANCE;
            }
        };
    }

    public static String getIterableTextForAccessibility(SemanticsNode semanticsNode) {
        AnnotatedString annotatedString;
        if (semanticsNode != null) {
            SemanticsConfiguration semanticsConfiguration = semanticsNode.unmergedConfig;
            MutableScatterMap mutableScatterMap = semanticsConfiguration.props;
            SemanticsPropertyKey semanticsPropertyKey = SemanticsProperties.ContentDescription;
            if (mutableScatterMap.containsKey(semanticsPropertyKey)) {
                return ListUtilsKt.fastJoinToString$default((List) semanticsConfiguration.get(semanticsPropertyKey), ",", null, 62);
            }
            SemanticsPropertyKey semanticsPropertyKey2 = SemanticsProperties.EditableText;
            if (mutableScatterMap.containsKey(semanticsPropertyKey2)) {
                Object obj = mutableScatterMap.get(semanticsPropertyKey2);
                if (obj == null) {
                    obj = null;
                }
                AnnotatedString annotatedString2 = (AnnotatedString) obj;
                if (annotatedString2 != null) {
                    return annotatedString2.text;
                }
            } else {
                Object obj2 = mutableScatterMap.get(SemanticsProperties.Text);
                if (obj2 == null) {
                    obj2 = null;
                }
                List list = (List) obj2;
                if (list != null && (annotatedString = (AnnotatedString) CollectionsKt.firstOrNull(list)) != null) {
                    return annotatedString.text;
                }
            }
        }
        return null;
    }

    public static final boolean performActionHelper$canScroll(ScrollAxisRange scrollAxisRange, float f) {
        LazyLayoutSemanticsModifierNode$$ExternalSyntheticLambda1 lazyLayoutSemanticsModifierNode$$ExternalSyntheticLambda1 = scrollAxisRange.value;
        if (f >= 0.0f || ((Number) lazyLayoutSemanticsModifierNode$$ExternalSyntheticLambda1.invoke()).floatValue() <= 0.0f) {
            return f > 0.0f && ((Number) lazyLayoutSemanticsModifierNode$$ExternalSyntheticLambda1.invoke()).floatValue() < ((Number) scrollAxisRange.maxValue.invoke()).floatValue();
        }
        return true;
    }

    public static final boolean populateAccessibilityNodeInfoProperties$canScrollBackward(ScrollAxisRange scrollAxisRange) {
        LazyLayoutSemanticsModifierNode$$ExternalSyntheticLambda1 lazyLayoutSemanticsModifierNode$$ExternalSyntheticLambda1 = scrollAxisRange.value;
        if (((Number) lazyLayoutSemanticsModifierNode$$ExternalSyntheticLambda1.invoke()).floatValue() > 0.0f) {
            return true;
        }
        ((Number) lazyLayoutSemanticsModifierNode$$ExternalSyntheticLambda1.invoke()).floatValue();
        ((Number) scrollAxisRange.maxValue.invoke()).floatValue();
        return false;
    }

    public static final boolean populateAccessibilityNodeInfoProperties$canScrollForward(ScrollAxisRange scrollAxisRange) {
        LazyLayoutSemanticsModifierNode$$ExternalSyntheticLambda1 lazyLayoutSemanticsModifierNode$$ExternalSyntheticLambda1 = scrollAxisRange.value;
        if (((Number) lazyLayoutSemanticsModifierNode$$ExternalSyntheticLambda1.invoke()).floatValue() < ((Number) scrollAxisRange.maxValue.invoke()).floatValue()) {
            return true;
        }
        ((Number) lazyLayoutSemanticsModifierNode$$ExternalSyntheticLambda1.invoke()).floatValue();
        return false;
    }

    public static /* synthetic */ void sendEventForVirtualView$default(AndroidComposeViewAccessibilityDelegateCompat androidComposeViewAccessibilityDelegateCompat, int i, int i2, Integer num, int i3) {
        if ((i3 & 4) != 0) {
            num = null;
        }
        androidComposeViewAccessibilityDelegateCompat.sendEventForVirtualView(i, i2, num, null);
    }

    public static Rect toAndroidRect(Brush brush, float f, float f2) {
        if (!(brush instanceof Outline$Rectangle) && !(brush instanceof Outline$Rounded)) {
            return null;
        }
        androidx.compose.ui.geometry.Rect bounds = brush.getBounds();
        return new Rect((int) (bounds.left + f), (int) (bounds.top + f2), (int) (bounds.right + f), (int) (bounds.bottom + f2));
    }

    public static float[] toCornerArray(Brush brush) {
        if (!(brush instanceof Outline$Rounded)) {
            return null;
        }
        RoundRect roundRect = ((Outline$Rounded) brush).roundRect;
        long j = roundRect.bottomLeftCornerRadius;
        long j2 = roundRect.bottomRightCornerRadius;
        long j3 = roundRect.topRightCornerRadius;
        long j4 = roundRect.topLeftCornerRadius;
        return new float[]{Float.intBitsToFloat((int) (j4 >> 32)), Float.intBitsToFloat((int) (j4 & 4294967295L)), Float.intBitsToFloat((int) (j3 >> 32)), Float.intBitsToFloat((int) (j3 & 4294967295L)), Float.intBitsToFloat((int) (j2 >> 32)), Float.intBitsToFloat((int) (j2 & 4294967295L)), Float.intBitsToFloat((int) (j >> 32)), Float.intBitsToFloat((int) (j & 4294967295L))};
    }

    public static Region toRegion(Brush brush, float f, float f2) {
        if (brush instanceof Outline$Generic) {
            Outline$Generic outline$Generic = (Outline$Generic) brush;
            androidx.compose.ui.geometry.Rect translate = outline$Generic.getBounds().translate(f, f2);
            Region region = new Region(new Rect((int) (translate.left + 0.0f), (int) (translate.top + 0.0f), (int) (translate.right + 0.0f), (int) (translate.bottom + 0.0f)));
            Region region2 = new Region();
            AndroidPath androidPath = outline$Generic.path;
            if (androidPath instanceof AndroidPath) {
                Path path = androidPath.internalPath;
                path.offset(f, f2);
                region2.setPath(path, region);
                return region2;
            }
            _UtilJvmKt$$ExternalSyntheticLambda1.m("Unable to obtain android.graphics.Path");
        }
        return null;
    }

    public static CharSequence trimToSize(CharSequence charSequence) {
        if (charSequence.length() != 0) {
            int length = charSequence.length();
            int i = AacUtil.AAC_LC_MAX_RATE_BYTES_PER_SECOND;
            if (length > 100000) {
                if (Character.isHighSurrogate(charSequence.charAt(99999)) && Character.isLowSurrogate(charSequence.charAt(AacUtil.AAC_LC_MAX_RATE_BYTES_PER_SECOND))) {
                    i = 99999;
                }
                CharSequence subSequence = charSequence.subSequence(0, i);
                subSequence.getClass();
                return subSequence;
            }
        }
        return charSequence;
    }

    public final void addExtraDataToAccessibilityNodeInfoHelper(int i, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat, String str, Bundle bundle) {
        SemanticsNode semanticsNode;
        int i2;
        float secondaryHorizontal;
        float secondaryHorizontal2;
        float primaryHorizontal;
        float primaryHorizontal2;
        int i3;
        AndroidComposeView androidComposeView;
        RectF rectF;
        AccessibilityNodeInfo accessibilityNodeInfo = accessibilityNodeInfoCompat.mInfo;
        SemanticsNodeWithAdjustedBounds semanticsNodeWithAdjustedBounds = (SemanticsNodeWithAdjustedBounds) getCurrentSemanticsNodes().get(i);
        if (semanticsNodeWithAdjustedBounds == null || (semanticsNode = semanticsNodeWithAdjustedBounds.semanticsNode) == null) {
            return;
        }
        LayoutNode layoutNode = semanticsNode.layoutNode;
        SemanticsConfiguration semanticsConfiguration = semanticsNode.unmergedConfig;
        MutableScatterMap mutableScatterMap = semanticsConfiguration.props;
        String iterableTextForAccessibility = getIterableTextForAccessibility(semanticsNode);
        if (Intrinsics.areEqual(str, this.ExtraDataTestTraversalBeforeVal)) {
            int orDefault = this.idToBeforeMap.getOrDefault(i);
            if (orDefault != -1) {
                accessibilityNodeInfo.getExtras().putInt(str, orDefault);
                return;
            }
            return;
        }
        if (Intrinsics.areEqual(str, this.ExtraDataTestTraversalAfterVal)) {
            int orDefault2 = this.idToAfterMap.getOrDefault(i);
            if (orDefault2 != -1) {
                accessibilityNodeInfo.getExtras().putInt(str, orDefault2);
                return;
            }
            return;
        }
        boolean containsKey = mutableScatterMap.containsKey(SemanticsActions.GetTextLayoutResult);
        AndroidComposeView androidComposeView2 = this.view;
        boolean z = false;
        if (!containsKey || bundle == null || !Intrinsics.areEqual(str, "android.view.accessibility.extra.DATA_TEXT_CHARACTER_LOCATION_KEY")) {
            SemanticsPropertyKey semanticsPropertyKey = SemanticsProperties.TestTag;
            if (mutableScatterMap.containsKey(semanticsPropertyKey) && bundle != null && Intrinsics.areEqual(str, "androidx.compose.ui.semantics.testTag")) {
                Object obj = mutableScatterMap.get(semanticsPropertyKey);
                String str2 = (String) (obj == null ? null : obj);
                if (str2 != null) {
                    accessibilityNodeInfo.getExtras().putCharSequence(str, str2);
                    return;
                }
                return;
            }
            if (Intrinsics.areEqual(str, "androidx.compose.ui.semantics.id")) {
                accessibilityNodeInfo.getExtras().putInt(str, semanticsNode.id);
                return;
            }
            if (Intrinsics.areEqual(str, "androidx.compose.ui.semantics.shapeType")) {
                Object obj2 = mutableScatterMap.get(SemanticsProperties.Shape);
                Shape shape = (Shape) (obj2 == null ? null : obj2);
                if (shape != null) {
                    Rect rect = new Rect();
                    accessibilityNodeInfo.getBoundsInScreen(rect);
                    androidx.compose.ui.geometry.Rect shapeBounds = getShapeBounds(semanticsNode, rect, shape);
                    float f = shapeBounds.top;
                    float f2 = shapeBounds.left;
                    Brush mo35createOutlinePq9zytI = shape.mo35createOutlinePq9zytI(shapeBounds.m204getSizeNHjbRc(), layoutNode.layoutDirection, androidComposeView2.getDensity());
                    if (mo35createOutlinePq9zytI instanceof Outline$Rectangle) {
                        accessibilityNodeInfo.getExtras().putInt("androidx.compose.ui.semantics.shapeType", 0);
                        accessibilityNodeInfo.getExtras().putParcelable("androidx.compose.ui.semantics.shapeRect", toAndroidRect(mo35createOutlinePq9zytI, f2, f));
                        return;
                    } else if (mo35createOutlinePq9zytI instanceof Outline$Rounded) {
                        accessibilityNodeInfo.getExtras().putInt("androidx.compose.ui.semantics.shapeType", 1);
                        accessibilityNodeInfo.getExtras().putParcelable("androidx.compose.ui.semantics.shapeRect", toAndroidRect(mo35createOutlinePq9zytI, f2, f));
                        accessibilityNodeInfo.getExtras().putFloatArray("androidx.compose.ui.semantics.shapeCorners", toCornerArray(mo35createOutlinePq9zytI));
                        return;
                    } else if (!(mo35createOutlinePq9zytI instanceof Outline$Generic)) {
                        DecodeUtils$$ExternalSyntheticBUOutline0.m();
                        return;
                    } else {
                        accessibilityNodeInfo.getExtras().putInt("androidx.compose.ui.semantics.shapeType", 2);
                        accessibilityNodeInfo.getExtras().putParcelable("androidx.compose.ui.semantics.shapeRegion", toRegion(mo35createOutlinePq9zytI, f2, f));
                        return;
                    }
                }
                return;
            }
            if (Intrinsics.areEqual(str, "androidx.compose.ui.semantics.shapeRect")) {
                Object obj3 = mutableScatterMap.get(SemanticsProperties.Shape);
                Shape shape2 = (Shape) (obj3 == null ? null : obj3);
                if (shape2 != null) {
                    Rect rect2 = new Rect();
                    accessibilityNodeInfo.getBoundsInScreen(rect2);
                    androidx.compose.ui.geometry.Rect shapeBounds2 = getShapeBounds(semanticsNode, rect2, shape2);
                    Rect androidRect = toAndroidRect(shape2.mo35createOutlinePq9zytI(shapeBounds2.m204getSizeNHjbRc(), layoutNode.layoutDirection, androidComposeView2.getDensity()), shapeBounds2.left, shapeBounds2.top);
                    if (androidRect != null) {
                        accessibilityNodeInfo.getExtras().putParcelable("androidx.compose.ui.semantics.shapeRect", androidRect);
                        return;
                    }
                    return;
                }
                return;
            }
            if (Intrinsics.areEqual(str, "androidx.compose.ui.semantics.shapeCorners")) {
                Object obj4 = mutableScatterMap.get(SemanticsProperties.Shape);
                Shape shape3 = (Shape) (obj4 == null ? null : obj4);
                if (shape3 != null) {
                    Rect rect3 = new Rect();
                    accessibilityNodeInfo.getBoundsInScreen(rect3);
                    float[] cornerArray = toCornerArray(shape3.mo35createOutlinePq9zytI(getShapeBounds(semanticsNode, rect3, shape3).m204getSizeNHjbRc(), layoutNode.layoutDirection, androidComposeView2.getDensity()));
                    if (cornerArray != null) {
                        accessibilityNodeInfo.getExtras().putFloatArray("androidx.compose.ui.semantics.shapeCorners", cornerArray);
                        return;
                    }
                    return;
                }
                return;
            }
            if (Intrinsics.areEqual(str, "androidx.compose.ui.semantics.shapeRegion")) {
                Object obj5 = mutableScatterMap.get(SemanticsProperties.Shape);
                Shape shape4 = (Shape) (obj5 == null ? null : obj5);
                if (shape4 != null) {
                    Rect rect4 = new Rect();
                    accessibilityNodeInfo.getBoundsInScreen(rect4);
                    androidx.compose.ui.geometry.Rect shapeBounds3 = getShapeBounds(semanticsNode, rect4, shape4);
                    Region region = toRegion(shape4.mo35createOutlinePq9zytI(shapeBounds3.m204getSizeNHjbRc(), layoutNode.layoutDirection, androidComposeView2.getDensity()), shapeBounds3.left, shapeBounds3.top);
                    if (region != null) {
                        accessibilityNodeInfo.getExtras().putParcelable("androidx.compose.ui.semantics.shapeRegion", region);
                        return;
                    }
                    return;
                }
                return;
            }
            return;
        }
        int i4 = bundle.getInt("android.view.accessibility.extra.DATA_TEXT_CHARACTER_LOCATION_ARG_START_INDEX", -1);
        int i5 = bundle.getInt("android.view.accessibility.extra.DATA_TEXT_CHARACTER_LOCATION_ARG_LENGTH", -1);
        if (i5 > 0 && i4 >= 0) {
            if (i4 < (iterableTextForAccessibility != null ? iterableTextForAccessibility.length() : Log.LOG_LEVEL_OFF)) {
                TextLayoutResult textLayoutResult = TestTagKt.getTextLayoutResult(semanticsConfiguration);
                if (textLayoutResult == null) {
                    return;
                }
                ArrayList arrayList = new ArrayList();
                int i6 = 0;
                while (i6 < i5) {
                    int i7 = i4 + i6;
                    if (i7 >= textLayoutResult.layoutInput.text.text.length()) {
                        arrayList.add(z);
                        i2 = i4;
                        i3 = i5;
                        androidComposeView = androidComposeView2;
                    } else {
                        MultiParagraph multiParagraph = textLayoutResult.multiParagraph;
                        AnnotatedString annotatedString = (AnnotatedString) ((ComponentRegistry.Builder) multiParagraph.intrinsics).mappers;
                        if (i7 < 0 || i7 >= annotatedString.text.length()) {
                            StringBuilder m179m = Modifier.CC.m179m("offset(", i7, ") is out of bounds [0, ");
                            m179m.append(annotatedString.text.length());
                            m179m.append(')');
                            InlineClassHelperKt.throwIllegalArgumentException(m179m.toString());
                        }
                        ArrayList arrayList2 = (ArrayList) multiParagraph.paragraphInfoList;
                        ParagraphInfo paragraphInfo = (ParagraphInfo) arrayList2.get(ParagraphKt.findParagraphByIndex(i7, arrayList2));
                        AndroidParagraph androidParagraph = paragraphInfo.paragraph;
                        int localIndex = paragraphInfo.toLocalIndex(i7);
                        CharSequence charSequence = androidParagraph.charSequence;
                        if (localIndex < 0 || localIndex >= charSequence.length()) {
                            StringBuilder m179m2 = Modifier.CC.m179m("offset(", localIndex, ") is out of bounds [0,");
                            m179m2.append(charSequence.length());
                            m179m2.append(')');
                            InlineClassHelperKt.throwIllegalArgumentException(m179m2.toString());
                        }
                        TextLayout textLayout = androidParagraph.layout;
                        Layout layout = textLayout.layout;
                        int lineForOffset = layout.getLineForOffset(localIndex);
                        float lineTop = textLayout.getLineTop(lineForOffset);
                        float lineBottom = textLayout.getLineBottom(lineForOffset);
                        i2 = i4;
                        boolean z2 = layout.getParagraphDirection(lineForOffset) == 1;
                        boolean isRtlCharAt = layout.isRtlCharAt(localIndex);
                        if (!z2 || isRtlCharAt) {
                            if (z2 && isRtlCharAt) {
                                primaryHorizontal = textLayout.getSecondaryHorizontal(localIndex, false);
                                primaryHorizontal2 = textLayout.getSecondaryHorizontal(localIndex + 1, true);
                            } else if (isRtlCharAt) {
                                primaryHorizontal = textLayout.getPrimaryHorizontal(localIndex, false);
                                primaryHorizontal2 = textLayout.getPrimaryHorizontal(localIndex + 1, true);
                            } else {
                                secondaryHorizontal = textLayout.getSecondaryHorizontal(localIndex, false);
                                secondaryHorizontal2 = textLayout.getSecondaryHorizontal(localIndex + 1, true);
                            }
                            float f3 = primaryHorizontal;
                            secondaryHorizontal = primaryHorizontal2;
                            secondaryHorizontal2 = f3;
                        } else {
                            secondaryHorizontal = textLayout.getPrimaryHorizontal(localIndex, false);
                            secondaryHorizontal2 = textLayout.getPrimaryHorizontal(localIndex + 1, true);
                        }
                        RectF rectF2 = new RectF(secondaryHorizontal, lineTop, secondaryHorizontal2, lineBottom);
                        float f4 = rectF2.left;
                        float f5 = rectF2.top;
                        float f6 = rectF2.right;
                        float f7 = rectF2.bottom;
                        i3 = i5;
                        long floatToRawIntBits = (Float.floatToRawIntBits(paragraphInfo.top) & 4294967295L) | (Float.floatToRawIntBits(0.0f) << 32);
                        androidComposeView = androidComposeView2;
                        int i8 = (int) (floatToRawIntBits >> 32);
                        int i9 = (int) (floatToRawIntBits & 4294967295L);
                        androidx.compose.ui.geometry.Rect rect5 = new androidx.compose.ui.geometry.Rect(Float.intBitsToFloat(i8) + f4, Float.intBitsToFloat(i9) + f5, Float.intBitsToFloat(i8) + f6, Float.intBitsToFloat(i9) + f7);
                        NodeCoordinator findCoordinatorToGetBounds$ui = semanticsNode.findCoordinatorToGetBounds$ui();
                        long j = 0;
                        if (findCoordinatorToGetBounds$ui != null) {
                            if (!findCoordinatorToGetBounds$ui.getTail().isAttached) {
                                findCoordinatorToGetBounds$ui = null;
                            }
                            if (findCoordinatorToGetBounds$ui != null) {
                                j = findCoordinatorToGetBounds$ui.m349localToRootMKHz9U(0L);
                            }
                        }
                        androidx.compose.ui.geometry.Rect m205translatek4lQ0M = rect5.m205translatek4lQ0M(j);
                        androidx.compose.ui.geometry.Rect boundsInRoot = semanticsNode.getBoundsInRoot();
                        if ((((((m205translatek4lQ0M.left > boundsInRoot.right ? 1 : (m205translatek4lQ0M.left == boundsInRoot.right ? 0 : -1)) < 0) & ((boundsInRoot.left > m205translatek4lQ0M.right ? 1 : (boundsInRoot.left == m205translatek4lQ0M.right ? 0 : -1)) < 0)) & ((m205translatek4lQ0M.top > boundsInRoot.bottom ? 1 : (m205translatek4lQ0M.top == boundsInRoot.bottom ? 0 : -1)) < 0)) & ((boundsInRoot.top > m205translatek4lQ0M.bottom ? 1 : (boundsInRoot.top == m205translatek4lQ0M.bottom ? 0 : -1)) < 0) ? m205translatek4lQ0M.intersect(boundsInRoot) : null) != null) {
                            long m374localToScreenMKHz9U = androidComposeView.m374localToScreenMKHz9U((Float.floatToRawIntBits(r0.left) << 32) | (Float.floatToRawIntBits(r0.top) & 4294967295L));
                            long m374localToScreenMKHz9U2 = androidComposeView.m374localToScreenMKHz9U((Float.floatToRawIntBits(r0.bottom) & 4294967295L) | (Float.floatToRawIntBits(r0.right) << 32));
                            int i10 = (int) (m374localToScreenMKHz9U >> 32);
                            int i11 = (int) (m374localToScreenMKHz9U2 >> 32);
                            int i12 = (int) (m374localToScreenMKHz9U & 4294967295L);
                            int i13 = (int) (m374localToScreenMKHz9U2 & 4294967295L);
                            rectF = new RectF(Math.min(Float.intBitsToFloat(i10), Float.intBitsToFloat(i11)), Math.min(Float.intBitsToFloat(i12), Float.intBitsToFloat(i13)), Math.max(Float.intBitsToFloat(i10), Float.intBitsToFloat(i11)), Math.max(Float.intBitsToFloat(i12), Float.intBitsToFloat(i13)));
                        } else {
                            rectF = null;
                        }
                        arrayList.add(rectF);
                    }
                    i6++;
                    i4 = i2;
                    i5 = i3;
                    androidComposeView2 = androidComposeView;
                    z = false;
                }
                accessibilityNodeInfo.getExtras().putParcelableArray(str, (Parcelable[]) arrayList.toArray(new RectF[0]));
                return;
            }
        }
        android.util.Log.e("AccessibilityDelegate", "Invalid arguments for accessibility character locations");
    }

    public final Rect boundsInScreen(SemanticsNodeWithAdjustedBounds semanticsNodeWithAdjustedBounds) {
        IntRect intRect = semanticsNodeWithAdjustedBounds.adjustedBounds;
        return toBoundsInScreen(intRect.left, intRect.top, intRect.right, intRect.bottom);
    }

    /* JADX WARN: Code restructure failed: missing block: B:33:0x00c3, code lost:
    
        if (kotlinx.coroutines.JobKt.delay(r7, r0) == r5) goto L41;
     */
    /* JADX WARN: Removed duplicated region for block: B:16:0x006a  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x006b  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0077 A[Catch: all -> 0x0036, TryCatch #0 {all -> 0x0036, blocks: (B:12:0x0030, B:14:0x005e, B:20:0x006f, B:22:0x0077, B:24:0x0080, B:26:0x0085, B:28:0x0094, B:31:0x00a3, B:32:0x00aa, B:40:0x0048, B:42:0x004f), top: B:7:0x0022 }] */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00c6  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x004c  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0024  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:32:0x00c3 -> B:13:0x0033). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object boundsUpdatesEventLoop$ui(kotlin.coroutines.jvm.internal.ContinuationImpl r11) {
        /*
            Method dump skipped, instructions count: 208
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.ui.platform.AndroidComposeViewAccessibilityDelegateCompat.boundsUpdatesEventLoop$ui(kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    /* renamed from: canScroll-0AR0LA0$ui, reason: not valid java name */
    public final boolean m386canScroll0AR0LA0$ui(long j, int i, boolean z) {
        SemanticsPropertyKey semanticsPropertyKey;
        int i2;
        if (Intrinsics.areEqual(Looper.getMainLooper().getThread(), Thread.currentThread())) {
            IntObjectMap currentSemanticsNodes = getCurrentSemanticsNodes();
            if (!Offset.m196equalsimpl0(j, 9205357640488583168L) && (((9223372034707292159L & j) + 36028792732385279L) & (-9223372034707292160L)) == 0) {
                if (z) {
                    semanticsPropertyKey = SemanticsProperties.VerticalScrollAxisRange;
                } else {
                    if (z) {
                        DecodeUtils$$ExternalSyntheticBUOutline0.m();
                        return false;
                    }
                    semanticsPropertyKey = SemanticsProperties.HorizontalScrollAxisRange;
                }
                Object[] objArr = currentSemanticsNodes.values;
                long[] jArr = currentSemanticsNodes.metadata;
                int length = jArr.length - 2;
                if (length >= 0) {
                    int i3 = 0;
                    boolean z2 = false;
                    while (true) {
                        long j2 = jArr[i3];
                        if ((((~j2) << 7) & j2 & (-9187201950435737472L)) != -9187201950435737472L) {
                            int i4 = 8;
                            int i5 = 8 - ((~(i3 - length)) >>> 31);
                            int i6 = 0;
                            while (i6 < i5) {
                                if ((255 & j2) < 128) {
                                    SemanticsNodeWithAdjustedBounds semanticsNodeWithAdjustedBounds = (SemanticsNodeWithAdjustedBounds) objArr[(i3 << 3) + i6];
                                    IntRect intRect = semanticsNodeWithAdjustedBounds.adjustedBounds;
                                    float f = intRect.left;
                                    i2 = i4;
                                    float f2 = intRect.top;
                                    float f3 = intRect.right;
                                    float f4 = intRect.bottom;
                                    float intBitsToFloat = Float.intBitsToFloat((int) (j >> 32));
                                    float intBitsToFloat2 = Float.intBitsToFloat((int) (j & 4294967295L));
                                    if ((intBitsToFloat2 < f4) & (intBitsToFloat >= f) & (intBitsToFloat < f3) & (intBitsToFloat2 >= f2)) {
                                        Object obj = semanticsNodeWithAdjustedBounds.semanticsNode.unmergedConfig.props.get(semanticsPropertyKey);
                                        if (obj == null) {
                                            obj = null;
                                        }
                                        ScrollAxisRange scrollAxisRange = (ScrollAxisRange) obj;
                                        if (scrollAxisRange != null) {
                                            LazyLayoutSemanticsModifierNode$$ExternalSyntheticLambda1 lazyLayoutSemanticsModifierNode$$ExternalSyntheticLambda1 = scrollAxisRange.value;
                                            if (i < 0) {
                                                if (((Number) lazyLayoutSemanticsModifierNode$$ExternalSyntheticLambda1.invoke()).floatValue() <= 0.0f) {
                                                }
                                                z2 = true;
                                            } else {
                                                if (((Number) lazyLayoutSemanticsModifierNode$$ExternalSyntheticLambda1.invoke()).floatValue() >= ((Number) scrollAxisRange.maxValue.invoke()).floatValue()) {
                                                }
                                                z2 = true;
                                            }
                                        }
                                    }
                                } else {
                                    i2 = i4;
                                }
                                j2 >>= i2;
                                i6++;
                                i4 = i2;
                            }
                            if (i5 != i4) {
                                return z2;
                            }
                        }
                        if (i3 == length) {
                            return z2;
                        }
                        i3++;
                    }
                }
            }
        }
        return false;
    }

    public final void checkForSemanticsChanges() {
        Trace.beginSection("sendAccessibilitySemanticsStructureChangeEvents");
        try {
            if (isEnabled$ui()) {
                sendAccessibilitySemanticsStructureChangeEvents(this.view.getSemanticsOwner().getUnmergedRootSemanticsNode(), this.previousSemanticsRoot);
            }
            Trace.endSection();
            Trace.beginSection("sendSemanticsPropertyChangeEvents");
            try {
                sendSemanticsPropertyChangeEvents(getCurrentSemanticsNodes());
                Trace.endSection();
                Trace.beginSection("updateSemanticsNodesCopyAndPanes");
                try {
                    updateSemanticsNodesCopyAndPanes();
                } finally {
                }
            } finally {
            }
        } finally {
        }
    }

    public final AccessibilityEvent createEvent(int i, int i2) {
        SemanticsNodeWithAdjustedBounds semanticsNodeWithAdjustedBounds;
        AccessibilityEvent obtain = AccessibilityEvent.obtain(i2);
        obtain.setEnabled(true);
        obtain.setClassName("android.view.View");
        AndroidComposeView androidComposeView = this.view;
        obtain.setPackageName(androidComposeView.getContext().getPackageName());
        obtain.setSource(androidComposeView, i);
        if (isEnabled$ui() && (semanticsNodeWithAdjustedBounds = (SemanticsNodeWithAdjustedBounds) getCurrentSemanticsNodes().get(i)) != null) {
            SemanticsNode semanticsNode = semanticsNodeWithAdjustedBounds.semanticsNode;
            obtain.setPassword(semanticsNode.unmergedConfig.props.containsKey(SemanticsProperties.Password));
            Object obj = semanticsNode.unmergedConfig.props.get(SemanticsProperties.IsSensitiveData);
            if (obj == null) {
                obj = null;
            }
            boolean areEqual = Intrinsics.areEqual(obj, Boolean.TRUE);
            if (Build.VERSION.SDK_INT >= 34) {
                TextViewCompat$Api34Impl.setAccessibilityDataSensitive(obtain, areEqual);
            }
        }
        return obtain;
    }

    public final AccessibilityEvent createTextSelectionChangedEvent(int i, Integer num, Integer num2, Integer num3, CharSequence charSequence) {
        AccessibilityEvent createEvent = createEvent(i, 8192);
        if (num != null) {
            createEvent.setFromIndex(num.intValue());
        }
        if (num2 != null) {
            createEvent.setToIndex(num2.intValue());
        }
        if (num3 != null) {
            createEvent.setItemCount(num3.intValue());
        }
        if (charSequence != null) {
            createEvent.getText().add(charSequence);
        }
        return createEvent;
    }

    @Override // androidx.core.view.AccessibilityDelegateCompat
    public final MemoryCacheService getAccessibilityNodeProvider(View view) {
        return this.nodeProvider;
    }

    public final int getAccessibilitySelectionEnd(SemanticsNode semanticsNode) {
        SemanticsConfiguration semanticsConfiguration = semanticsNode.unmergedConfig;
        if (!semanticsConfiguration.props.containsKey(SemanticsProperties.ContentDescription)) {
            SemanticsPropertyKey semanticsPropertyKey = SemanticsProperties.TextSelectionRange;
            if (semanticsConfiguration.props.containsKey(semanticsPropertyKey)) {
                return (int) (((TextRange) semanticsConfiguration.get(semanticsPropertyKey)).packedValue & 4294967295L);
            }
        }
        return this.accessibilityCursorPosition;
    }

    public final int getAccessibilitySelectionStart(SemanticsNode semanticsNode) {
        SemanticsConfiguration semanticsConfiguration = semanticsNode.unmergedConfig;
        if (!semanticsConfiguration.props.containsKey(SemanticsProperties.ContentDescription)) {
            SemanticsPropertyKey semanticsPropertyKey = SemanticsProperties.TextSelectionRange;
            if (semanticsConfiguration.props.containsKey(semanticsPropertyKey)) {
                return (int) (((TextRange) semanticsConfiguration.get(semanticsPropertyKey)).packedValue >> 32);
            }
        }
        return this.accessibilityCursorPosition;
    }

    public final IntObjectMap getCurrentSemanticsNodes() {
        if (this.currentSemanticsNodesInvalidated) {
            this.currentSemanticsNodesInvalidated = false;
            AndroidComposeView androidComposeView = this.view;
            this.currentSemanticsNodes = SemanticsNodeKt.getAllUncoveredSemanticsNodesToIntObjectMap(androidComposeView.getSemanticsOwner(), AndroidComposeView$getFocusedRect$1.INSTANCE$1);
            if (isEnabled$ui()) {
                MutableIntObjectMap mutableIntObjectMap = this.currentSemanticsNodes;
                Resources resources = androidComposeView.getContext().getResources();
                MutableIntIntMap mutableIntIntMap = this.idToBeforeMap;
                mutableIntIntMap.clear();
                MutableIntIntMap mutableIntIntMap2 = this.idToAfterMap;
                mutableIntIntMap2.clear();
                SemanticsNodeWithAdjustedBounds semanticsNodeWithAdjustedBounds = (SemanticsNodeWithAdjustedBounds) mutableIntObjectMap.get(-1);
                SemanticsNode semanticsNode = semanticsNodeWithAdjustedBounds != null ? semanticsNodeWithAdjustedBounds.semanticsNode : null;
                semanticsNode.getClass();
                ArrayList subtreeSortedByGeometryGrouping = SemanticsSortKt.subtreeSortedByGeometryGrouping(semanticsNode, new AndroidComposeViewAccessibilityDelegateCompat_androidKt$setTraversalValues$semanticsOrderList$1(mutableIntObjectMap), new AndroidComposeViewAccessibilityDelegateCompat_androidKt$setTraversalValues$semanticsOrderList$2(resources), Jsoup.listOf(semanticsNode));
                int i = 1;
                int size = subtreeSortedByGeometryGrouping.size() - 1;
                if (1 <= size) {
                    while (true) {
                        int i2 = ((SemanticsNode) subtreeSortedByGeometryGrouping.get(i - 1)).id;
                        int i3 = ((SemanticsNode) subtreeSortedByGeometryGrouping.get(i)).id;
                        mutableIntIntMap.set(i2, i3);
                        mutableIntIntMap2.set(i3, i2);
                        if (i == size) {
                            break;
                        }
                        i++;
                    }
                }
            }
        }
        return this.currentSemanticsNodes;
    }

    public final androidx.compose.ui.geometry.Rect getShapeBounds(SemanticsNode semanticsNode, Rect rect, Shape shape) {
        AndroidComposeViewAccessibilityDelegateCompat$getShapeBounds$shapeNodeMatcher$1 androidComposeViewAccessibilityDelegateCompat$getShapeBounds$shapeNodeMatcher$1 = new AndroidComposeViewAccessibilityDelegateCompat$getShapeBounds$shapeNodeMatcher$1(shape);
        LayoutNode layoutNode = semanticsNode.layoutNode;
        Modifier.Node node = layoutNode.nodes.head;
        DelegatableNode delegatableNode = null;
        if ((node.aggregateChildKindSet & 8) != 0) {
            loop0: while (true) {
                if (node == null) {
                    break;
                }
                if ((node.kindSet & 8) != 0) {
                    Modifier.Node node2 = node;
                    MutableVector mutableVector = null;
                    while (node2 != null) {
                        if (node2 instanceof SemanticsModifierNode) {
                            ((SemanticsModifierNode) node2).applySemantics(androidComposeViewAccessibilityDelegateCompat$getShapeBounds$shapeNodeMatcher$1);
                            if (androidComposeViewAccessibilityDelegateCompat$getShapeBounds$shapeNodeMatcher$1.hasMatchedShape) {
                                delegatableNode = node2;
                                break loop0;
                            }
                        } else if ((node2.kindSet & 8) != 0 && (node2 instanceof DelegatingNode)) {
                            int i = 0;
                            for (Modifier.Node node3 = ((DelegatingNode) node2).delegate; node3 != null; node3 = node3.child) {
                                if ((node3.kindSet & 8) != 0) {
                                    i++;
                                    if (i == 1) {
                                        node2 = node3;
                                    } else {
                                        if (mutableVector == null) {
                                            mutableVector = new MutableVector(new Modifier.Node[16]);
                                        }
                                        if (node2 != null) {
                                            mutableVector.add(node2);
                                            node2 = null;
                                        }
                                        mutableVector.add(node3);
                                    }
                                }
                            }
                            if (i == 1) {
                            }
                        }
                        node2 = HitTestResultKt.access$pop(mutableVector);
                    }
                }
                if ((node.aggregateChildKindSet & 8) == 0) {
                    break;
                }
                node = node.child;
            }
        }
        DelegatableNode delegatableNode2 = (SemanticsModifierNode) delegatableNode;
        if (delegatableNode2 == null || !((Modifier.Node) delegatableNode2).node.isAttached) {
            return RulerKt.boundsInWindow(layoutNode.nodes.outerCoordinator, false);
        }
        NodeCoordinator requireLayoutCoordinates = HitTestResultKt.requireLayoutCoordinates(delegatableNode2);
        androidx.compose.ui.geometry.Rect localBoundingBoxOf = RulerKt.findRootCoordinates(requireLayoutCoordinates).localBoundingBoxOf(requireLayoutCoordinates, false);
        Rect boundsInScreen = toBoundsInScreen(localBoundingBoxOf.left, localBoundingBoxOf.top, localBoundingBoxOf.right, localBoundingBoxOf.bottom);
        float f = boundsInScreen.left - rect.left;
        float f2 = boundsInScreen.top - rect.top;
        return new androidx.compose.ui.geometry.Rect(f, f2, boundsInScreen.width() + f, boundsInScreen.height() + f2);
    }

    public final boolean isEnabled$ui() {
        android.view.accessibility.AccessibilityManager accessibilityManager = this.accessibilityManager;
        if (!accessibilityManager.isEnabled()) {
            return false;
        }
        List<AccessibilityServiceInfo> list = this._enabledServices;
        if (list == null) {
            list = accessibilityManager.getEnabledAccessibilityServiceList(-1);
            this._enabledServices = list;
        }
        return !list.isEmpty();
    }

    public final void notifySubtreeAccessibilityStateChangedIfNeeded(LayoutNode layoutNode) {
        if (this.subtreeChangedLayoutNodes.add(layoutNode)) {
            this.boundsUpdateChannel.mo691trySendJP2dKIU(Unit.INSTANCE);
        }
    }

    @Override // android.view.accessibility.AccessibilityManager.AccessibilityStateChangeListener
    public final void onAccessibilityStateChanged(boolean z) {
        this._enabledServices = null;
    }

    @Override // android.view.accessibility.AccessibilityManager.TouchExplorationStateChangeListener
    public final void onTouchExplorationStateChanged(boolean z) {
        this._enabledServices = null;
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewAttachedToWindow(View view) {
        android.view.accessibility.AccessibilityManager accessibilityManager = this.accessibilityManager;
        if (accessibilityManager.isEnabled()) {
            this._enabledServices = null;
        }
        accessibilityManager.addAccessibilityStateChangeListener(this);
        accessibilityManager.addTouchExplorationStateChangeListener(this);
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewDetachedFromWindow(View view) {
        Handler handler = this.view.getHandler();
        handler.getClass();
        handler.removeCallbacks(this.semanticsChangeChecker);
        android.view.accessibility.AccessibilityManager accessibilityManager = this.accessibilityManager;
        accessibilityManager.removeAccessibilityStateChangeListener(this);
        accessibilityManager.removeTouchExplorationStateChangeListener(this);
    }

    public final int semanticsNodeIdToAccessibilityVirtualNodeId(int i) {
        if (i == this.view.getSemanticsOwner().getUnmergedRootSemanticsNode().id) {
            return -1;
        }
        return i;
    }

    public final void sendAccessibilitySemanticsStructureChangeEvents(SemanticsNode semanticsNode, SemanticsNodeCopy semanticsNodeCopy) {
        int[] iArr = IntSetKt.EmptyIntArray;
        MutableIntSet mutableIntSet = new MutableIntSet();
        List children$ui$default = SemanticsNode.getChildren$ui$default(4, semanticsNode);
        LayoutNode layoutNode = semanticsNode.layoutNode;
        int size = children$ui$default.size();
        for (int i = 0; i < size; i++) {
            SemanticsNode semanticsNode2 = (SemanticsNode) children$ui$default.get(i);
            IntObjectMap currentSemanticsNodes = getCurrentSemanticsNodes();
            int i2 = semanticsNode2.id;
            if (currentSemanticsNodes.containsKey(i2)) {
                if (!semanticsNodeCopy.children.contains(i2)) {
                    notifySubtreeAccessibilityStateChangedIfNeeded(layoutNode);
                    return;
                }
                mutableIntSet.add(i2);
            }
        }
        MutableIntSet mutableIntSet2 = semanticsNodeCopy.children;
        int[] iArr2 = mutableIntSet2.elements;
        long[] jArr = mutableIntSet2.metadata;
        int length = jArr.length - 2;
        if (length >= 0) {
            int i3 = 0;
            while (true) {
                long j = jArr[i3];
                if ((((~j) << 7) & j & (-9187201950435737472L)) != -9187201950435737472L) {
                    int i4 = 8 - ((~(i3 - length)) >>> 31);
                    for (int i5 = 0; i5 < i4; i5++) {
                        if ((255 & j) < 128 && !mutableIntSet.contains(iArr2[(i3 << 3) + i5])) {
                            notifySubtreeAccessibilityStateChangedIfNeeded(layoutNode);
                            return;
                        }
                        j >>= 8;
                    }
                    if (i4 != 8) {
                        break;
                    }
                }
                if (i3 == length) {
                    break;
                } else {
                    i3++;
                }
            }
        }
        List children$ui$default2 = SemanticsNode.getChildren$ui$default(4, semanticsNode);
        int size2 = children$ui$default2.size();
        for (int i6 = 0; i6 < size2; i6++) {
            SemanticsNode semanticsNode3 = (SemanticsNode) children$ui$default2.get(i6);
            SemanticsNodeCopy semanticsNodeCopy2 = (SemanticsNodeCopy) this.previousSemanticsNodes.get(semanticsNode3.id);
            if (semanticsNodeCopy2 != null && getCurrentSemanticsNodes().containsKey(semanticsNode3.id)) {
                sendAccessibilitySemanticsStructureChangeEvents(semanticsNode3, semanticsNodeCopy2);
            }
        }
    }

    public final boolean sendEvent(AccessibilityEvent accessibilityEvent) {
        if (!isEnabled$ui()) {
            return false;
        }
        if (accessibilityEvent.getEventType() == 2048 || accessibilityEvent.getEventType() == 32768) {
            this.sendingFocusAffectingEvent = true;
        }
        try {
            return ((Boolean) this.onSendAccessibilityEvent.invoke(accessibilityEvent)).booleanValue();
        } finally {
            this.sendingFocusAffectingEvent = false;
        }
    }

    public final boolean sendEventForVirtualView(int i, int i2, Integer num, List list) {
        if (i == Integer.MIN_VALUE || !isEnabled$ui()) {
            return false;
        }
        AccessibilityEvent createEvent = createEvent(i, i2);
        if (num != null) {
            createEvent.setContentChangeTypes(num.intValue());
        }
        if (list != null) {
            createEvent.setContentDescription(ListUtilsKt.fastJoinToString$default(list, ",", null, 62));
        }
        return sendEvent(createEvent);
    }

    public final void sendPaneChangeEvents(int i, int i2, String str) {
        AccessibilityEvent createEvent = createEvent(semanticsNodeIdToAccessibilityVirtualNodeId(i), 32);
        createEvent.setContentChangeTypes(i2);
        if (str != null) {
            createEvent.getText().add(str);
        }
        sendEvent(createEvent);
    }

    public final void sendPendingTextTraversedAtGranularityEvent(int i) {
        PendingTextTraversedEvent pendingTextTraversedEvent = this.pendingTextTraversedEvent;
        if (pendingTextTraversedEvent != null) {
            SemanticsNode semanticsNode = pendingTextTraversedEvent.node;
            if (i != semanticsNode.id) {
                return;
            }
            if (SystemClock.uptimeMillis() - pendingTextTraversedEvent.traverseTime <= 1000) {
                AccessibilityEvent createEvent = createEvent(semanticsNodeIdToAccessibilityVirtualNodeId(semanticsNode.id), 131072);
                createEvent.setFromIndex(pendingTextTraversedEvent.fromIndex);
                createEvent.setToIndex(pendingTextTraversedEvent.toIndex);
                createEvent.setAction(pendingTextTraversedEvent.action);
                createEvent.setMovementGranularity(pendingTextTraversedEvent.granularity);
                createEvent.getText().add(getIterableTextForAccessibility(semanticsNode));
                sendEvent(createEvent);
            }
        }
        this.pendingTextTraversedEvent = null;
    }

    /*  JADX ERROR: Type inference failed
        jadx.core.utils.exceptions.JadxOverflowException: Type inference error: updates count limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:77)
        */
    public final void sendSemanticsPropertyChangeEvents(androidx.collection.IntObjectMap r57) {
        /*
            Method dump skipped, instructions count: 1658
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.ui.platform.AndroidComposeViewAccessibilityDelegateCompat.sendSemanticsPropertyChangeEvents(androidx.collection.IntObjectMap):void");
    }

    public final void sendSubtreeChangeAccessibilityEvents(LayoutNode layoutNode, MutableIntSet mutableIntSet) {
        SemanticsConfiguration semanticsConfiguration;
        if (layoutNode.isAttached() && !this.view.getAndroidViewsHandler$ui().getLayoutNodeToHolder().containsKey(layoutNode)) {
            LayoutNode layoutNode2 = null;
            if (!layoutNode.nodes.m339hasH91voCI$ui(8)) {
                layoutNode = layoutNode.getParent$ui();
                while (true) {
                    if (layoutNode == null) {
                        layoutNode = null;
                        break;
                    } else if (layoutNode.nodes.m339hasH91voCI$ui(8)) {
                        break;
                    } else {
                        layoutNode = layoutNode.getParent$ui();
                    }
                }
            }
            if (layoutNode == null || (semanticsConfiguration = layoutNode.getSemanticsConfiguration()) == null) {
                return;
            }
            if (!semanticsConfiguration.isMergingSemanticsOfDescendants) {
                LayoutNode parent$ui = layoutNode.getParent$ui();
                while (true) {
                    if (parent$ui != null) {
                        SemanticsConfiguration semanticsConfiguration2 = parent$ui.getSemanticsConfiguration();
                        if (semanticsConfiguration2 != null && semanticsConfiguration2.isMergingSemanticsOfDescendants) {
                            layoutNode2 = parent$ui;
                            break;
                        }
                        parent$ui = parent$ui.getParent$ui();
                    } else {
                        break;
                    }
                }
                if (layoutNode2 != null) {
                    layoutNode = layoutNode2;
                }
            }
            int i = layoutNode.semanticsId;
            if (mutableIntSet.add(i)) {
                sendEventForVirtualView$default(this, semanticsNodeIdToAccessibilityVirtualNodeId(i), 2048, 1, 8);
            }
        }
    }

    public final void sendTypeViewScrolledAccessibilityEvent(LayoutNode layoutNode) {
        if (layoutNode.isAttached() && !this.view.getAndroidViewsHandler$ui().getLayoutNodeToHolder().containsKey(layoutNode)) {
            int i = layoutNode.semanticsId;
            ScrollAxisRange scrollAxisRange = (ScrollAxisRange) this.pendingHorizontalScrollEvents.get(i);
            ScrollAxisRange scrollAxisRange2 = (ScrollAxisRange) this.pendingVerticalScrollEvents.get(i);
            if (scrollAxisRange == null && scrollAxisRange2 == null) {
                return;
            }
            AccessibilityEvent createEvent = createEvent(i, 4096);
            if (scrollAxisRange != null) {
                createEvent.setScrollX((int) ((Number) scrollAxisRange.value.invoke()).floatValue());
                createEvent.setMaxScrollX((int) ((Number) scrollAxisRange.maxValue.invoke()).floatValue());
            }
            if (scrollAxisRange2 != null) {
                createEvent.setScrollY((int) ((Number) scrollAxisRange2.value.invoke()).floatValue());
                createEvent.setMaxScrollY((int) ((Number) scrollAxisRange2.maxValue.invoke()).floatValue());
            }
            sendEvent(createEvent);
        }
    }

    public final boolean setAccessibilitySelection(SemanticsNode semanticsNode, int i, int i2, boolean z) {
        String iterableTextForAccessibility;
        SemanticsConfiguration semanticsConfiguration = semanticsNode.unmergedConfig;
        int i3 = semanticsNode.id;
        SemanticsPropertyKey semanticsPropertyKey = SemanticsActions.SetSelection;
        if (semanticsConfiguration.props.containsKey(semanticsPropertyKey) && TestTagKt.access$enabled(semanticsNode)) {
            Function3 function3 = (Function3) ((AccessibilityAction) semanticsNode.unmergedConfig.get(semanticsPropertyKey)).action;
            if (function3 != null) {
                return ((Boolean) function3.invoke(Integer.valueOf(i), Integer.valueOf(i2), Boolean.valueOf(z))).booleanValue();
            }
        } else if ((i != i2 || i2 != this.accessibilityCursorPosition) && (iterableTextForAccessibility = getIterableTextForAccessibility(semanticsNode)) != null) {
            if (i < 0 || i != i2 || i2 > iterableTextForAccessibility.length()) {
                i = -1;
            }
            this.accessibilityCursorPosition = i;
            boolean z2 = iterableTextForAccessibility.length() > 0;
            sendEvent(createTextSelectionChangedEvent(semanticsNodeIdToAccessibilityVirtualNodeId(i3), z2 ? Integer.valueOf(this.accessibilityCursorPosition) : null, z2 ? Integer.valueOf(this.accessibilityCursorPosition) : null, z2 ? Integer.valueOf(iterableTextForAccessibility.length()) : null, iterableTextForAccessibility));
            sendPendingTextTraversedAtGranularityEvent(i3);
            return true;
        }
        return false;
    }

    public final Rect toBoundsInScreen(float f, float f2, float f3, float f4) {
        long floatToRawIntBits = Float.floatToRawIntBits(f);
        AndroidComposeView androidComposeView = this.view;
        long m374localToScreenMKHz9U = androidComposeView.m374localToScreenMKHz9U((Float.floatToRawIntBits(f2) & 4294967295L) | (floatToRawIntBits << 32));
        long m374localToScreenMKHz9U2 = androidComposeView.m374localToScreenMKHz9U((Float.floatToRawIntBits(f4) & 4294967295L) | (Float.floatToRawIntBits(f3) << 32));
        int i = (int) (m374localToScreenMKHz9U >> 32);
        int i2 = (int) (m374localToScreenMKHz9U2 >> 32);
        int i3 = (int) (m374localToScreenMKHz9U & 4294967295L);
        int i4 = (int) (m374localToScreenMKHz9U2 & 4294967295L);
        return new Rect((int) Math.floor(Math.min(Float.intBitsToFloat(i), Float.intBitsToFloat(i2))), (int) Math.floor(Math.min(Float.intBitsToFloat(i3), Float.intBitsToFloat(i4))), (int) Math.ceil(Math.max(Float.intBitsToFloat(i), Float.intBitsToFloat(i2))), (int) Math.ceil(Math.max(Float.intBitsToFloat(i3), Float.intBitsToFloat(i4))));
    }

    /* JADX WARN: Code restructure failed: missing block: B:59:0x013b, code lost:
    
        r28 = r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x0145, code lost:
    
        if (((r7 & ((~r7) << 6)) & r20) == 0) goto L57;
     */
    /* JADX WARN: Code restructure failed: missing block: B:63:0x0147, code lost:
    
        r25 = -1;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void updateSemanticsNodesCopyAndPanes() {
        /*
            Method dump skipped, instructions count: 526
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.ui.platform.AndroidComposeViewAccessibilityDelegateCompat.updateSemanticsNodesCopyAndPanes():void");
    }
}
