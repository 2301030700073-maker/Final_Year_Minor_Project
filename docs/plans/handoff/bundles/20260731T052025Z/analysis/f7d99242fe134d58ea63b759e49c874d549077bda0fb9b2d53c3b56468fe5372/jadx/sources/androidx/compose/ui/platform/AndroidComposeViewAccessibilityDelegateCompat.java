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
import android.util.Log;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityManager;
import android.view.accessibility.AccessibilityNodeInfo;
import androidx.camera.camera2.compat.Api34Compat;
import androidx.camera.core.Preview$$ExternalSyntheticLambda0;
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
import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.RoundRect;
import androidx.compose.ui.graphics.AndroidPath;
import androidx.compose.ui.graphics.ColorKt;
import androidx.compose.ui.graphics.Outline$Generic;
import androidx.compose.ui.graphics.Outline$Rectangle;
import androidx.compose.ui.graphics.Outline$Rounded;
import androidx.compose.ui.graphics.Shape;
import androidx.compose.ui.layout.RulerKt;
import androidx.compose.ui.node.DelegatableNode;
import androidx.compose.ui.node.DelegatingNode;
import androidx.compose.ui.node.HitTestResultKt;
import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.node.NodeChainKt$fillVector$1;
import androidx.compose.ui.node.NodeCoordinator;
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
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.TextLayoutResult;
import androidx.compose.ui.text.TextRange;
import androidx.compose.ui.unit.IntOffsetKt;
import androidx.compose.ui.unit.IntRect;
import androidx.compose.ui.util.ListUtilsKt;
import androidx.core.view.AccessibilityDelegateCompat;
import androidx.core.view.MenuHostHelper;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.customview.widget.ExploreByTouchHelper;
import androidx.fragment.app.Fragment;
import coil3.UriKt$$ExternalSyntheticBUOutline0;
import com.fsck.k9.R;
import java.util.ArrayList;
import java.util.List;
import kotlin.Unit;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.channels.BufferedChannel;
import okhttp3.Cookie;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
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
    public final AndroidComposeViewAccessibilityDelegateCompat$onSendAccessibilityEvent$1 scheduleScrollEventIfNeededLambda;
    public final ArrayList scrollObservationScopes;
    public final Preview$$ExternalSyntheticLambda0 semanticsChangeChecker;
    public boolean sendingFocusAffectingEvent;
    public final ArraySet subtreeChangedLayoutNodes;
    public final MenuHostHelper urlSpanCache;
    public final AndroidComposeView view;
    public int hoveredVirtualViewId = Integer.MIN_VALUE;
    public final AndroidComposeViewAccessibilityDelegateCompat$onSendAccessibilityEvent$1 onSendAccessibilityEvent = new AndroidComposeViewAccessibilityDelegateCompat$onSendAccessibilityEvent$1(this, 0);

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
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
            _UtilJvmKt$$ExternalSyntheticLambda0.m$1("");
            return;
        }
        int i2 = i + 32;
        mutableIntList2.ensureCapacity(i2);
        int[] iArr2 = mutableIntList2.content;
        int i3 = mutableIntList2._size;
        if (i != i3) {
            ArraysKt___ArraysKt.copyInto(i2, i, i3, iArr2, iArr2);
        }
        ArraysKt___ArraysKt.copyInto$default(i, 0, 12, iArr, iArr2);
        mutableIntList2._size += 32;
        AccessibilityActionsResourceIds = mutableIntList2;
    }

    public AndroidComposeViewAccessibilityDelegateCompat(AndroidComposeView androidComposeView) {
        this.view = androidComposeView;
        Object systemService = androidComposeView.getContext().getSystemService("accessibility");
        systemService.getClass();
        this.accessibilityManager = (android.view.accessibility.AccessibilityManager) systemService;
        this.SendRecurringAccessibilityEventsIntervalMillis = 100L;
        new Handler(Looper.getMainLooper());
        int i = 1;
        this.nodeProvider = new ExploreByTouchHelper.MyNodeProvider(this, i);
        this.accessibilityFocusedVirtualViewId = Integer.MIN_VALUE;
        this.focusedVirtualViewId = Integer.MIN_VALUE;
        this.pendingHorizontalScrollEvents = new MutableIntObjectMap();
        this.pendingVerticalScrollEvents = new MutableIntObjectMap();
        this.actionIdToLabel = new SparseArrayCompat(0);
        this.labelToActionId = new SparseArrayCompat(0);
        this.accessibilityCursorPosition = -1;
        this.subtreeChangedLayoutNodes = new ArraySet(0);
        this.boundsUpdateChannel = Cookie.Companion.Channel$default(1, null, null, 6);
        this.currentSemanticsNodesInvalidated = true;
        MutableIntObjectMap mutableIntObjectMap = IntObjectMapKt.EmptyIntObjectMap;
        mutableIntObjectMap.getClass();
        this.currentSemanticsNodes = mutableIntObjectMap;
        this.paneDisplayed = new MutableIntSet();
        this.idToBeforeMap = new MutableIntIntMap();
        this.idToAfterMap = new MutableIntIntMap();
        this.ExtraDataTestTraversalBeforeVal = "android.view.accessibility.extra.EXTRA_DATA_TEST_TRAVERSALBEFORE_VAL";
        this.ExtraDataTestTraversalAfterVal = "android.view.accessibility.extra.EXTRA_DATA_TEST_TRAVERSALAFTER_VAL";
        this.urlSpanCache = new MenuHostHelper(24);
        this.previousSemanticsNodes = new MutableIntObjectMap();
        this.previousSemanticsRoot = new SemanticsNodeCopy(androidComposeView.getSemanticsOwner().getUnmergedRootSemanticsNode(), mutableIntObjectMap);
        int i2 = IntIntMapKt.$r8$clinit;
        this.drawingOrder = new MutableIntIntMap();
        androidComposeView.addOnAttachStateChangeListener(this);
        this.semanticsChangeChecker = new Preview$$ExternalSyntheticLambda0(23, this);
        this.scrollObservationScopes = new ArrayList();
        this.scheduleScrollEventIfNeededLambda = new AndroidComposeViewAccessibilityDelegateCompat$onSendAccessibilityEvent$1(this, i);
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
        Function0 function0 = scrollAxisRange.value;
        if (f >= 0.0f || ((Number) function0.invoke()).floatValue() <= 0.0f) {
            return f > 0.0f && ((Number) function0.invoke()).floatValue() < ((Number) scrollAxisRange.maxValue.invoke()).floatValue();
        }
        return true;
    }

    public static final boolean populateAccessibilityNodeInfoProperties$canScrollBackward(ScrollAxisRange scrollAxisRange) {
        Function0 function0 = scrollAxisRange.value;
        if (((Number) function0.invoke()).floatValue() > 0.0f) {
            return true;
        }
        ((Number) function0.invoke()).floatValue();
        ((Number) scrollAxisRange.maxValue.invoke()).floatValue();
        return false;
    }

    public static final boolean populateAccessibilityNodeInfoProperties$canScrollForward(ScrollAxisRange scrollAxisRange) {
        Function0 function0 = scrollAxisRange.value;
        if (((Number) function0.invoke()).floatValue() < ((Number) scrollAxisRange.maxValue.invoke()).floatValue()) {
            return true;
        }
        ((Number) function0.invoke()).floatValue();
        return false;
    }

    public static /* synthetic */ void sendEventForVirtualView$default(AndroidComposeViewAccessibilityDelegateCompat androidComposeViewAccessibilityDelegateCompat, int i, int i2, Integer num, int i3) {
        if ((i3 & 4) != 0) {
            num = null;
        }
        androidComposeViewAccessibilityDelegateCompat.sendEventForVirtualView(i, i2, num, null);
    }

    public static Rect toAndroidRect(ColorKt colorKt, float f, float f2) {
        if (!(colorKt instanceof Outline$Rectangle) && !(colorKt instanceof Outline$Rounded)) {
            return null;
        }
        androidx.compose.ui.geometry.Rect bounds = colorKt.getBounds();
        return new Rect((int) (bounds.left + f), (int) (bounds.top + f2), (int) (bounds.right + f), (int) (bounds.bottom + f2));
    }

    public static float[] toCornerArray(ColorKt colorKt) {
        if (!(colorKt instanceof Outline$Rounded)) {
            return null;
        }
        RoundRect roundRect = ((Outline$Rounded) colorKt).roundRect;
        long j = roundRect.bottomLeftCornerRadius;
        long j2 = roundRect.bottomRightCornerRadius;
        long j3 = roundRect.topRightCornerRadius;
        long j4 = roundRect.topLeftCornerRadius;
        return new float[]{Float.intBitsToFloat((int) (j4 >> 32)), Float.intBitsToFloat((int) (j4 & 4294967295L)), Float.intBitsToFloat((int) (j3 >> 32)), Float.intBitsToFloat((int) (j3 & 4294967295L)), Float.intBitsToFloat((int) (j2 >> 32)), Float.intBitsToFloat((int) (j2 & 4294967295L)), Float.intBitsToFloat((int) (j >> 32)), Float.intBitsToFloat((int) (j & 4294967295L))};
    }

    public static Region toRegion(ColorKt colorKt, float f, float f2) {
        if (colorKt instanceof Outline$Generic) {
            Outline$Generic outline$Generic = (Outline$Generic) colorKt;
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
            _UtilJvmKt$$ExternalSyntheticLambda0.m$3("Unable to obtain android.graphics.Path");
        }
        return null;
    }

    public static CharSequence trimToSize(CharSequence charSequence) {
        if (charSequence.length() != 0) {
            int i = 100000;
            if (charSequence.length() > 100000) {
                if (Character.isHighSurrogate(charSequence.charAt(99999)) && Character.isLowSurrogate(charSequence.charAt(100000))) {
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
        int i3;
        int i4;
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
        if (containsKey && bundle != null && Intrinsics.areEqual(str, "android.view.accessibility.extra.DATA_TEXT_CHARACTER_LOCATION_KEY")) {
            int i5 = bundle.getInt("android.view.accessibility.extra.DATA_TEXT_CHARACTER_LOCATION_ARG_START_INDEX", -1);
            int i6 = bundle.getInt("android.view.accessibility.extra.DATA_TEXT_CHARACTER_LOCATION_ARG_LENGTH", -1);
            if (i6 > 0 && i5 >= 0) {
                if (i5 < (iterableTextForAccessibility != null ? iterableTextForAccessibility.length() : Integer.MAX_VALUE)) {
                    TextLayoutResult textLayoutResult = TestTagKt.getTextLayoutResult(semanticsConfiguration);
                    if (textLayoutResult == null) {
                        return;
                    }
                    ArrayList arrayList = new ArrayList();
                    int i7 = 0;
                    while (i7 < i6) {
                        int i8 = i5 + i7;
                        if (i8 >= textLayoutResult.layoutInput.text.text.length()) {
                            arrayList.add(z);
                            i2 = i5;
                            i3 = i6;
                            i4 = i7;
                            androidComposeView = androidComposeView2;
                        } else {
                            androidx.compose.ui.geometry.Rect boundingBox = textLayoutResult.getBoundingBox(i8);
                            NodeCoordinator findCoordinatorToGetBounds$ui = semanticsNode.findCoordinatorToGetBounds$ui();
                            long j = 0;
                            if (findCoordinatorToGetBounds$ui != null) {
                                if (!findCoordinatorToGetBounds$ui.getTail().isAttached) {
                                    findCoordinatorToGetBounds$ui = null;
                                }
                                if (findCoordinatorToGetBounds$ui != null) {
                                    j = findCoordinatorToGetBounds$ui.mo579localToRootMKHz9U(0L);
                                }
                            }
                            androidx.compose.ui.geometry.Rect m448translatek4lQ0M = boundingBox.m448translatek4lQ0M(j);
                            androidx.compose.ui.geometry.Rect boundsInRoot = semanticsNode.getBoundsInRoot();
                            androidx.compose.ui.geometry.Rect intersect = m448translatek4lQ0M.overlaps(boundsInRoot) ? m448translatek4lQ0M.intersect(boundsInRoot) : null;
                            if (intersect != null) {
                                float f = intersect.left;
                                float f2 = intersect.top;
                                long floatToRawIntBits = Float.floatToRawIntBits(f);
                                int floatToRawIntBits2 = Float.floatToRawIntBits(f2);
                                AndroidComposeView androidComposeView3 = androidComposeView2;
                                long m648localToScreenMKHz9U = androidComposeView3.m648localToScreenMKHz9U((floatToRawIntBits2 & 4294967295L) | (floatToRawIntBits << 32));
                                long m648localToScreenMKHz9U2 = androidComposeView3.m648localToScreenMKHz9U((Float.floatToRawIntBits(intersect.bottom) & 4294967295L) | (Float.floatToRawIntBits(intersect.right) << 32));
                                int i9 = (int) (m648localToScreenMKHz9U >> 32);
                                i2 = i5;
                                i3 = i6;
                                int i10 = (int) (m648localToScreenMKHz9U2 >> 32);
                                float min = Math.min(Float.intBitsToFloat(i9), Float.intBitsToFloat(i10));
                                i4 = i7;
                                int i11 = (int) (m648localToScreenMKHz9U & 4294967295L);
                                androidComposeView = androidComposeView3;
                                int i12 = (int) (m648localToScreenMKHz9U2 & 4294967295L);
                                rectF = new RectF(min, Math.min(Float.intBitsToFloat(i11), Float.intBitsToFloat(i12)), Math.max(Float.intBitsToFloat(i9), Float.intBitsToFloat(i10)), Math.max(Float.intBitsToFloat(i11), Float.intBitsToFloat(i12)));
                            } else {
                                i2 = i5;
                                i3 = i6;
                                i4 = i7;
                                androidComposeView = androidComposeView2;
                                rectF = null;
                            }
                            arrayList.add(rectF);
                        }
                        i7 = i4 + 1;
                        i6 = i3;
                        i5 = i2;
                        androidComposeView2 = androidComposeView;
                        z = false;
                    }
                    accessibilityNodeInfo.getExtras().putParcelableArray(str, (Parcelable[]) arrayList.toArray(new RectF[0]));
                    return;
                }
            }
            Log.e("AccessibilityDelegate", "Invalid arguments for accessibility character locations");
            return;
        }
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
                accessibilityNodeInfoCompat.getBoundsInScreen(rect);
                androidx.compose.ui.geometry.Rect shapeBounds = getShapeBounds(semanticsNode, rect, shape);
                float f3 = shapeBounds.top;
                float f4 = shapeBounds.left;
                ColorKt mo147createOutlinePq9zytI = shape.mo147createOutlinePq9zytI(shapeBounds.m446getSizeNHjbRc(), layoutNode.layoutDirection, androidComposeView2.getDensity());
                if (mo147createOutlinePq9zytI instanceof Outline$Rectangle) {
                    accessibilityNodeInfo.getExtras().putInt("androidx.compose.ui.semantics.shapeType", 0);
                    accessibilityNodeInfo.getExtras().putParcelable("androidx.compose.ui.semantics.shapeRect", toAndroidRect(mo147createOutlinePq9zytI, f4, f3));
                    return;
                } else if (mo147createOutlinePq9zytI instanceof Outline$Rounded) {
                    accessibilityNodeInfo.getExtras().putInt("androidx.compose.ui.semantics.shapeType", 1);
                    accessibilityNodeInfo.getExtras().putParcelable("androidx.compose.ui.semantics.shapeRect", toAndroidRect(mo147createOutlinePq9zytI, f4, f3));
                    accessibilityNodeInfo.getExtras().putFloatArray("androidx.compose.ui.semantics.shapeCorners", toCornerArray(mo147createOutlinePq9zytI));
                    return;
                } else if (!(mo147createOutlinePq9zytI instanceof Outline$Generic)) {
                    UriKt$$ExternalSyntheticBUOutline0.m857m();
                    return;
                } else {
                    accessibilityNodeInfo.getExtras().putInt("androidx.compose.ui.semantics.shapeType", 2);
                    accessibilityNodeInfo.getExtras().putParcelable("androidx.compose.ui.semantics.shapeRegion", toRegion(mo147createOutlinePq9zytI, f4, f3));
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
                accessibilityNodeInfoCompat.getBoundsInScreen(rect2);
                androidx.compose.ui.geometry.Rect shapeBounds2 = getShapeBounds(semanticsNode, rect2, shape2);
                Rect androidRect = toAndroidRect(shape2.mo147createOutlinePq9zytI(shapeBounds2.m446getSizeNHjbRc(), layoutNode.layoutDirection, androidComposeView2.getDensity()), shapeBounds2.left, shapeBounds2.top);
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
                accessibilityNodeInfoCompat.getBoundsInScreen(rect3);
                float[] cornerArray = toCornerArray(shape3.mo147createOutlinePq9zytI(getShapeBounds(semanticsNode, rect3, shape3).m446getSizeNHjbRc(), layoutNode.layoutDirection, androidComposeView2.getDensity()));
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
                accessibilityNodeInfoCompat.getBoundsInScreen(rect4);
                androidx.compose.ui.geometry.Rect shapeBounds3 = getShapeBounds(semanticsNode, rect4, shape4);
                Region region = toRegion(shape4.mo147createOutlinePq9zytI(shapeBounds3.m446getSizeNHjbRc(), layoutNode.layoutDirection, androidComposeView2.getDensity()), shapeBounds3.left, shapeBounds3.top);
                if (region != null) {
                    accessibilityNodeInfo.getExtras().putParcelable("androidx.compose.ui.semantics.shapeRegion", region);
                }
            }
        }
    }

    public final Rect boundsInScreen(SemanticsNodeWithAdjustedBounds semanticsNodeWithAdjustedBounds) {
        IntRect intRect = semanticsNodeWithAdjustedBounds.adjustedBounds;
        return toBoundsInScreen(intRect.left, intRect.top, intRect.right, intRect.bottom);
    }

    /* JADX WARN: Code restructure failed: missing block: B:40:0x00f7, code lost:
    
        if (kotlinx.coroutines.JobKt.delay(r4, r2) == r7) goto L50;
     */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0068  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x006a  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0076 A[Catch: all -> 0x0037, TryCatch #0 {all -> 0x0037, blocks: (B:12:0x0030, B:15:0x005c, B:21:0x006e, B:23:0x0076, B:25:0x007f, B:27:0x0085, B:29:0x0094, B:31:0x009c, B:54:0x0046, B:56:0x004d), top: B:7:0x0026 }] */
    /* JADX WARN: Removed duplicated region for block: B:48:0x0100  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x004a  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0028  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:39:0x00f7 -> B:14:0x00fa). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object boundsUpdatesEventLoop$ui(kotlin.coroutines.jvm.internal.ContinuationImpl r17) {
        /*
            Method dump skipped, instructions count: 267
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.ui.platform.AndroidComposeViewAccessibilityDelegateCompat.boundsUpdatesEventLoop$ui(kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    /* renamed from: canScroll-0AR0LA0$ui, reason: not valid java name */
    public final boolean m661canScroll0AR0LA0$ui(boolean z, int i, long j) {
        SemanticsPropertyKey semanticsPropertyKey;
        int i2;
        if (Intrinsics.areEqual(Looper.getMainLooper().getThread(), Thread.currentThread())) {
            IntObjectMap currentSemanticsNodes = getCurrentSemanticsNodes();
            if (!Offset.m437equalsimpl0(j, 9205357640488583168L) && (((9223372034707292159L & j) + 36028792732385279L) & (-9223372034707292160L)) == 0) {
                if (z) {
                    semanticsPropertyKey = SemanticsProperties.VerticalScrollAxisRange;
                } else {
                    if (z) {
                        UriKt$$ExternalSyntheticBUOutline0.m857m();
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
                                            Function0 function0 = scrollAxisRange.value;
                                            if (i < 0) {
                                                if (((Number) function0.invoke()).floatValue() <= 0.0f) {
                                                }
                                                z2 = true;
                                            } else {
                                                if (((Number) function0.invoke()).floatValue() >= ((Number) scrollAxisRange.maxValue.invoke()).floatValue()) {
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
                Api34Compat.setAccessibilityDataSensitive(obtain, areEqual);
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
    public final Fragment.AnonymousClass7 getAccessibilityNodeProvider(View view) {
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
                ArrayList subtreeSortedByGeometryGrouping = SemanticsSortKt.subtreeSortedByGeometryGrouping(semanticsNode, new NodeChainKt$fillVector$1(16, mutableIntObjectMap), new NodeChainKt$fillVector$1(17, resources), IntOffsetKt.listOf(semanticsNode));
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
        Modifier.Node node = (Modifier.Node) layoutNode.nodes.head;
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
            return RulerKt.boundsInWindow((NodeCoordinator) layoutNode.nodes.outerCoordinator, false);
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
            this.boundsUpdateChannel.mo1016trySendJP2dKIU(Unit.INSTANCE);
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

    public final void sendPaneChangeEvents(int i, String str, int i2) {
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

    /* JADX WARN: Code restructure failed: missing block: B:196:0x04c8, code lost:
    
        if (r1.isEmpty() == false) goto L210;
     */
    /* JADX WARN: Code restructure failed: missing block: B:210:0x04f8, code lost:
    
        if (r4 != null) goto L210;
     */
    /* JADX WARN: Code restructure failed: missing block: B:212:0x04fd, code lost:
    
        if (r4 == null) goto L210;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x0127, code lost:
    
        if (kotlin.jvm.internal.Intrinsics.areEqual(r1, r13) != false) goto L51;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void sendSemanticsPropertyChangeEvents(androidx.collection.IntObjectMap r57) {
        /*
            Method dump skipped, instructions count: 1654
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.ui.platform.AndroidComposeViewAccessibilityDelegateCompat.sendSemanticsPropertyChangeEvents(androidx.collection.IntObjectMap):void");
    }

    public final void sendSubtreeChangeAccessibilityEvents(LayoutNode layoutNode, MutableIntSet mutableIntSet) {
        SemanticsConfiguration semanticsConfiguration;
        if (layoutNode.isAttached$1() && !this.view.getAndroidViewsHandler$ui().getLayoutNodeToHolder().containsKey(layoutNode)) {
            LayoutNode layoutNode2 = null;
            if (!layoutNode.nodes.m623hasH91voCI$ui(8)) {
                layoutNode = layoutNode.getParent$ui();
                while (true) {
                    if (layoutNode == null) {
                        layoutNode = null;
                        break;
                    } else if (layoutNode.nodes.m623hasH91voCI$ui(8)) {
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
        if (layoutNode.isAttached$1() && !this.view.getAndroidViewsHandler$ui().getLayoutNodeToHolder().containsKey(layoutNode)) {
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
        long m648localToScreenMKHz9U = androidComposeView.m648localToScreenMKHz9U((Float.floatToRawIntBits(f2) & 4294967295L) | (floatToRawIntBits << 32));
        long m648localToScreenMKHz9U2 = androidComposeView.m648localToScreenMKHz9U((Float.floatToRawIntBits(f4) & 4294967295L) | (Float.floatToRawIntBits(f3) << 32));
        int i = (int) (m648localToScreenMKHz9U >> 32);
        int i2 = (int) (m648localToScreenMKHz9U2 >> 32);
        int i3 = (int) (m648localToScreenMKHz9U & 4294967295L);
        int i4 = (int) (m648localToScreenMKHz9U2 & 4294967295L);
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
