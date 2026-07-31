package androidx.customview.widget;

import android.graphics.Rect;
import android.os.Bundle;
import android.view.View;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityManager;
import android.view.accessibility.AccessibilityNodeInfo;
import androidx.collection.ArraySetKt;
import androidx.collection.SparseArrayCompat;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.platform.AndroidComposeViewAccessibilityDelegateCompat;
import androidx.core.view.AccessibilityDelegateCompat;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.transition.Transition;
import androidx.work.OperationKt;
import coil3.memory.MemoryCacheService;
import com.google.android.exoplayer2.util.Log;
import com.google.android.material.chip.Chip;
import com.google.android.material.chip.ChipDrawable;
import io.noties.markwon.BlockHandlerDef;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.WeakHashMap;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;
import org.mozilla.javascript.Node$$ExternalSyntheticBUOutline0;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract class ExploreByTouchHelper extends AccessibilityDelegateCompat {
    public static final Rect INVALID_PARENT_BOUNDS = new Rect(Log.LOG_LEVEL_OFF, Log.LOG_LEVEL_OFF, Integer.MIN_VALUE, Integer.MIN_VALUE);
    public static final BlockHandlerDef NODE_ADAPTER = new BlockHandlerDef(9);
    public static final Transition.AnonymousClass1 SPARSE_VALUES_ADAPTER = new Transition.AnonymousClass1(10);
    public final Chip mHost;
    public final AccessibilityManager mManager;
    public MyNodeProvider mNodeProvider;
    public final Rect mTempScreenRect = new Rect();
    public final Rect mTempParentRect = new Rect();
    public final Rect mTempVisibleRect = new Rect();
    public final int[] mTempGlobalRect = new int[2];
    public int mAccessibilityFocusedVirtualViewId = Integer.MIN_VALUE;
    public int mKeyboardFocusedVirtualViewId = Integer.MIN_VALUE;
    public int mHoveredVirtualViewId = Integer.MIN_VALUE;

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class MyNodeProvider extends MemoryCacheService {
        public final /* synthetic */ int $r8$classId;
        public final /* synthetic */ AccessibilityDelegateCompat this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public /* synthetic */ MyNodeProvider(AccessibilityDelegateCompat accessibilityDelegateCompat, int i) {
            super(10);
            this.$r8$classId = i;
            this.this$0 = accessibilityDelegateCompat;
        }

        @Override // coil3.memory.MemoryCacheService
        public void addExtraDataToAccessibilityNodeInfo(int i, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat, String str, Bundle bundle) {
            switch (this.$r8$classId) {
                case 1:
                    ((AndroidComposeViewAccessibilityDelegateCompat) this.this$0).addExtraDataToAccessibilityNodeInfoHelper(i, accessibilityNodeInfoCompat, str, bundle);
                    break;
            }
        }

        /* JADX WARN: Code restructure failed: missing block: B:399:0x085c, code lost:
        
            if (r6 == false) goto L425;
         */
        /* JADX WARN: Code restructure failed: missing block: B:61:0x0138, code lost:
        
            if (androidx.compose.ui.semantics.SemanticsNode.getChildren$ui$default(4, r7).isEmpty() != false) goto L64;
         */
        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Removed duplicated region for block: B:11:0x0c81  */
        /* JADX WARN: Removed duplicated region for block: B:20:? A[RETURN, SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:305:0x0678  */
        /* JADX WARN: Removed duplicated region for block: B:308:0x068b  */
        /* JADX WARN: Removed duplicated region for block: B:311:0x0699  */
        /* JADX WARN: Removed duplicated region for block: B:313:0x069c  */
        /* JADX WARN: Removed duplicated region for block: B:611:0x0c8e  */
        /* JADX WARN: Removed duplicated region for block: B:613:0x0690  */
        /* JADX WARN: Removed duplicated region for block: B:614:0x0680  */
        /* JADX WARN: Type inference failed for: r2v22, types: [kotlin.collections.EmptyList] */
        /* JADX WARN: Type inference failed for: r2v23, types: [java.util.Collection, java.util.List] */
        /* JADX WARN: Type inference failed for: r2v24, types: [java.util.ArrayList] */
        @Override // coil3.memory.MemoryCacheService
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final androidx.core.view.accessibility.AccessibilityNodeInfoCompat createAccessibilityNodeInfo(int r48) {
            /*
                Method dump skipped, instructions count: 3272
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.customview.widget.ExploreByTouchHelper.MyNodeProvider.createAccessibilityNodeInfo(int):androidx.core.view.accessibility.AccessibilityNodeInfoCompat");
        }

        @Override // coil3.memory.MemoryCacheService
        public final AccessibilityNodeInfoCompat findFocus(int i) {
            int i2 = this.$r8$classId;
            AccessibilityDelegateCompat accessibilityDelegateCompat = this.this$0;
            switch (i2) {
                case 0:
                    ExploreByTouchHelper exploreByTouchHelper = (ExploreByTouchHelper) accessibilityDelegateCompat;
                    int i3 = i == 2 ? exploreByTouchHelper.mAccessibilityFocusedVirtualViewId : exploreByTouchHelper.mKeyboardFocusedVirtualViewId;
                    if (i3 == Integer.MIN_VALUE) {
                        return null;
                    }
                    return createAccessibilityNodeInfo(i3);
                default:
                    AndroidComposeViewAccessibilityDelegateCompat androidComposeViewAccessibilityDelegateCompat = (AndroidComposeViewAccessibilityDelegateCompat) accessibilityDelegateCompat;
                    if (i != 1) {
                        if (i == 2) {
                            return createAccessibilityNodeInfo(androidComposeViewAccessibilityDelegateCompat.accessibilityFocusedVirtualViewId);
                        }
                        _UtilJvmKt$$ExternalSyntheticLambda1.m$1(Modifier.CC.m(i, "Unknown focus type: "));
                        return null;
                    }
                    int i4 = androidComposeViewAccessibilityDelegateCompat.focusedVirtualViewId;
                    if (i4 == Integer.MIN_VALUE) {
                        return null;
                    }
                    return createAccessibilityNodeInfo(i4);
            }
        }

        /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
        /* JADX WARN: Code restructure failed: missing block: B:15:0x0054, code lost:
        
            if (r7 == false) goto L58;
         */
        /* JADX WARN: Code restructure failed: missing block: B:368:0x01bc, code lost:
        
            r1 = null;
         */
        /* JADX WARN: Code restructure failed: missing block: B:525:0x0762, code lost:
        
            if (r1 != 16) goto L513;
         */
        /* JADX WARN: Removed duplicated region for block: B:323:0x0276  */
        /* JADX WARN: Removed duplicated region for block: B:326:0x0298  */
        /* JADX WARN: Removed duplicated region for block: B:331:0x02bf  */
        /* JADX WARN: Removed duplicated region for block: B:336:0x02e5  */
        /* JADX WARN: Removed duplicated region for block: B:347:0x02e7  */
        /* JADX WARN: Removed duplicated region for block: B:357:0x02ce  */
        /* JADX WARN: Removed duplicated region for block: B:358:0x02a7  */
        /* JADX WARN: Removed duplicated region for block: B:359:0x0279  */
        /* JADX WARN: Removed duplicated region for block: B:531:0x0814  */
        /* JADX WARN: Removed duplicated region for block: B:92:0x0146  */
        @Override // coil3.memory.MemoryCacheService
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final boolean performAction(int r28, int r29, android.os.Bundle r30) {
            /*
                Method dump skipped, instructions count: 2480
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.customview.widget.ExploreByTouchHelper.MyNodeProvider.performAction(int, int, android.os.Bundle):boolean");
        }
    }

    public ExploreByTouchHelper(Chip chip) {
        this.mHost = chip;
        this.mManager = (AccessibilityManager) chip.getContext().getSystemService("accessibility");
        chip.setFocusable(true);
        WeakHashMap weakHashMap = ViewCompat.sViewPropertyAnimatorMap;
        if (chip.getImportantForAccessibility() == 0) {
            chip.setImportantForAccessibility(1);
        }
    }

    public final boolean clearKeyboardFocusForVirtualView(int i) {
        if (this.mKeyboardFocusedVirtualViewId != i) {
            return false;
        }
        this.mKeyboardFocusedVirtualViewId = Integer.MIN_VALUE;
        Chip.ChipTouchHelper chipTouchHelper = (Chip.ChipTouchHelper) this;
        if (i == 1) {
            Chip chip = Chip.this;
            chip.closeIconFocused = false;
            chip.refreshDrawableState();
        }
        sendEventForVirtualView(i, 8);
        return true;
    }

    public final AccessibilityNodeInfoCompat createNodeForChild(int i) {
        AccessibilityNodeInfo obtain = AccessibilityNodeInfo.obtain();
        AccessibilityNodeInfoCompat accessibilityNodeInfoCompat = new AccessibilityNodeInfoCompat(obtain);
        obtain.setEnabled(true);
        obtain.setFocusable(true);
        accessibilityNodeInfoCompat.setClassName("android.view.View");
        Rect rect = INVALID_PARENT_BOUNDS;
        obtain.setBoundsInParent(rect);
        obtain.setBoundsInScreen(rect);
        accessibilityNodeInfoCompat.mParentVirtualDescendantId = -1;
        Chip chip = this.mHost;
        obtain.setParent(chip);
        onPopulateNodeForVirtualView(i, accessibilityNodeInfoCompat);
        if (accessibilityNodeInfoCompat.getText() == null && obtain.getContentDescription() == null) {
            Node$$ExternalSyntheticBUOutline0.m811m("Callbacks must add text or a content description in populateNodeForVirtualViewId()");
            return null;
        }
        Rect rect2 = this.mTempParentRect;
        accessibilityNodeInfoCompat.getBoundsInParent(rect2);
        if (rect2.equals(rect)) {
            Node$$ExternalSyntheticBUOutline0.m811m("Callbacks must set parent bounds in populateNodeForVirtualViewId()");
            return null;
        }
        int actions = obtain.getActions();
        if ((actions & 64) != 0) {
            Node$$ExternalSyntheticBUOutline0.m811m("Callbacks must not add ACTION_ACCESSIBILITY_FOCUS in populateNodeForVirtualViewId()");
            return null;
        }
        if ((actions & 128) != 0) {
            Node$$ExternalSyntheticBUOutline0.m811m("Callbacks must not add ACTION_CLEAR_ACCESSIBILITY_FOCUS in populateNodeForVirtualViewId()");
            return null;
        }
        obtain.setPackageName(chip.getContext().getPackageName());
        accessibilityNodeInfoCompat.mVirtualDescendantId = i;
        obtain.setSource(chip, i);
        if (this.mAccessibilityFocusedVirtualViewId == i) {
            obtain.setAccessibilityFocused(true);
            accessibilityNodeInfoCompat.addAction(128);
        } else {
            obtain.setAccessibilityFocused(false);
            accessibilityNodeInfoCompat.addAction(64);
        }
        boolean z = this.mKeyboardFocusedVirtualViewId == i;
        if (z) {
            accessibilityNodeInfoCompat.addAction(2);
        } else if (obtain.isFocusable()) {
            accessibilityNodeInfoCompat.addAction(1);
        }
        obtain.setFocused(z);
        int[] iArr = this.mTempGlobalRect;
        chip.getLocationOnScreen(iArr);
        Rect rect3 = this.mTempScreenRect;
        obtain.getBoundsInScreen(rect3);
        if (rect3.equals(rect)) {
            accessibilityNodeInfoCompat.getBoundsInParent(rect3);
            if (accessibilityNodeInfoCompat.mParentVirtualDescendantId != -1) {
                AccessibilityNodeInfoCompat accessibilityNodeInfoCompat2 = new AccessibilityNodeInfoCompat(AccessibilityNodeInfo.obtain());
                for (int i2 = accessibilityNodeInfoCompat.mParentVirtualDescendantId; i2 != -1; i2 = accessibilityNodeInfoCompat2.mParentVirtualDescendantId) {
                    accessibilityNodeInfoCompat2.mParentVirtualDescendantId = -1;
                    AccessibilityNodeInfo accessibilityNodeInfo = accessibilityNodeInfoCompat2.mInfo;
                    accessibilityNodeInfo.setParent(chip, -1);
                    accessibilityNodeInfo.setBoundsInParent(rect);
                    onPopulateNodeForVirtualView(i2, accessibilityNodeInfoCompat2);
                    accessibilityNodeInfoCompat2.getBoundsInParent(rect2);
                    rect3.offset(rect2.left, rect2.top);
                }
            }
            rect3.offset(iArr[0] - chip.getScrollX(), iArr[1] - chip.getScrollY());
        }
        Rect rect4 = this.mTempVisibleRect;
        if (chip.getLocalVisibleRect(rect4)) {
            rect4.offset(iArr[0] - chip.getScrollX(), iArr[1] - chip.getScrollY());
            if (rect3.intersect(rect4)) {
                AccessibilityNodeInfo accessibilityNodeInfo2 = accessibilityNodeInfoCompat.mInfo;
                accessibilityNodeInfo2.setBoundsInScreen(rect3);
                if (!rect3.isEmpty() && chip.getWindowVisibility() == 0) {
                    Object parent = chip.getParent();
                    while (true) {
                        if (parent instanceof View) {
                            View view = (View) parent;
                            if (view.getAlpha() <= 0.0f || view.getVisibility() != 0) {
                                break;
                            }
                            parent = view.getParent();
                        } else if (parent != null) {
                            accessibilityNodeInfo2.setVisibleToUser(true);
                        }
                    }
                }
            }
        }
        return accessibilityNodeInfoCompat;
    }

    @Override // androidx.core.view.AccessibilityDelegateCompat
    public final MemoryCacheService getAccessibilityNodeProvider(View view) {
        if (this.mNodeProvider == null) {
            this.mNodeProvider = new MyNodeProvider(this, 0);
        }
        return this.mNodeProvider;
    }

    public abstract void getVisibleVirtualViews(ArrayList arrayList);

    public final boolean moveFocus(int i, Rect rect) {
        int i2;
        Object obj;
        AccessibilityNodeInfoCompat accessibilityNodeInfoCompat;
        ArrayList arrayList = new ArrayList();
        getVisibleVirtualViews(arrayList);
        SparseArrayCompat sparseArrayCompat = new SparseArrayCompat((Object) null);
        for (int i3 = 0; i3 < arrayList.size(); i3++) {
            sparseArrayCompat.put(((Integer) arrayList.get(i3)).intValue(), createNodeForChild(((Integer) arrayList.get(i3)).intValue()));
        }
        int i4 = this.mKeyboardFocusedVirtualViewId;
        int i5 = Integer.MIN_VALUE;
        AccessibilityNodeInfoCompat accessibilityNodeInfoCompat2 = i4 == Integer.MIN_VALUE ? null : (AccessibilityNodeInfoCompat) sparseArrayCompat.get(i4);
        final BlockHandlerDef blockHandlerDef = NODE_ADAPTER;
        Transition.AnonymousClass1 anonymousClass1 = SPARSE_VALUES_ADAPTER;
        int i6 = -1;
        Chip chip = this.mHost;
        if (i == 1 || i == 2) {
            WeakHashMap weakHashMap = ViewCompat.sViewPropertyAnimatorMap;
            final boolean z = chip.getLayoutDirection() == 1;
            anonymousClass1.getClass();
            int size = sparseArrayCompat.size();
            ArrayList arrayList2 = new ArrayList(size);
            for (int i7 = 0; i7 < size; i7++) {
                arrayList2.add((AccessibilityNodeInfoCompat) sparseArrayCompat.valueAt(i7));
            }
            Collections.sort(arrayList2, new Comparator(z, blockHandlerDef) { // from class: androidx.customview.widget.FocusStrategy$SequentialComparator
                public final BlockHandlerDef mAdapter;
                public final boolean mIsLayoutRtl;
                public final Rect mTemp1 = new Rect();
                public final Rect mTemp2 = new Rect();

                {
                    this.mIsLayoutRtl = z;
                    this.mAdapter = blockHandlerDef;
                }

                @Override // java.util.Comparator
                public final int compare(Object obj2, Object obj3) {
                    this.mAdapter.getClass();
                    Rect rect2 = this.mTemp1;
                    ((AccessibilityNodeInfoCompat) obj2).getBoundsInParent(rect2);
                    Rect rect3 = this.mTemp2;
                    ((AccessibilityNodeInfoCompat) obj3).getBoundsInParent(rect3);
                    int i8 = rect2.top;
                    int i9 = rect3.top;
                    if (i8 < i9) {
                        return -1;
                    }
                    if (i8 > i9) {
                        return 1;
                    }
                    int i10 = rect2.left;
                    int i11 = rect3.left;
                    boolean z2 = this.mIsLayoutRtl;
                    if (i10 < i11) {
                        return z2 ? 1 : -1;
                    }
                    if (i10 > i11) {
                        return z2 ? -1 : 1;
                    }
                    int i12 = rect2.bottom;
                    int i13 = rect3.bottom;
                    if (i12 < i13) {
                        return -1;
                    }
                    if (i12 > i13) {
                        return 1;
                    }
                    int i14 = rect2.right;
                    int i15 = rect3.right;
                    if (i14 < i15) {
                        return z2 ? 1 : -1;
                    }
                    if (i14 > i15) {
                        return z2 ? -1 : 1;
                    }
                    return 0;
                }
            });
            if (i == 1) {
                i2 = 0;
                int size2 = arrayList2.size();
                if (accessibilityNodeInfoCompat2 != null) {
                    size2 = arrayList2.indexOf(accessibilityNodeInfoCompat2);
                }
                int i8 = size2 - 1;
                obj = i8 >= 0 ? arrayList2.get(i8) : null;
            } else {
                if (i != 2) {
                    _UtilJvmKt$$ExternalSyntheticLambda1.m$1("direction must be one of {FOCUS_FORWARD, FOCUS_BACKWARD}.");
                    return false;
                }
                int size3 = arrayList2.size();
                int lastIndexOf = (accessibilityNodeInfoCompat2 == null ? -1 : arrayList2.lastIndexOf(accessibilityNodeInfoCompat2)) + 1;
                i2 = 0;
                obj = lastIndexOf < size3 ? arrayList2.get(lastIndexOf) : null;
            }
            accessibilityNodeInfoCompat = (AccessibilityNodeInfoCompat) obj;
        } else {
            if (i != 17 && i != 33 && i != 66 && i != 130) {
                _UtilJvmKt$$ExternalSyntheticLambda1.m$1("direction must be one of {FOCUS_FORWARD, FOCUS_BACKWARD, FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}.");
                return false;
            }
            Rect rect2 = new Rect();
            int i9 = this.mKeyboardFocusedVirtualViewId;
            if (i9 != Integer.MIN_VALUE) {
                obtainAccessibilityNodeInfo(i9).getBoundsInParent(rect2);
            } else if (rect != null) {
                rect2.set(rect);
            } else {
                int width = chip.getWidth();
                int height = chip.getHeight();
                if (i == 17) {
                    rect2.set(width, 0, width, height);
                } else if (i == 33) {
                    rect2.set(0, height, width, height);
                } else if (i == 66) {
                    rect2.set(-1, 0, -1, height);
                } else {
                    if (i != 130) {
                        _UtilJvmKt$$ExternalSyntheticLambda1.m$1("direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}.");
                        return false;
                    }
                    rect2.set(0, -1, width, -1);
                }
            }
            Rect rect3 = new Rect(rect2);
            if (i == 17) {
                rect3.offset(rect2.width() + 1, 0);
            } else if (i == 33) {
                rect3.offset(0, rect2.height() + 1);
            } else if (i == 66) {
                rect3.offset(-(rect2.width() + 1), 0);
            } else {
                if (i != 130) {
                    _UtilJvmKt$$ExternalSyntheticLambda1.m$1("direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}.");
                    return false;
                }
                rect3.offset(0, -(rect2.height() + 1));
            }
            anonymousClass1.getClass();
            int size4 = sparseArrayCompat.size();
            Rect rect4 = new Rect();
            accessibilityNodeInfoCompat = null;
            for (int i10 = 0; i10 < size4; i10++) {
                AccessibilityNodeInfoCompat accessibilityNodeInfoCompat3 = (AccessibilityNodeInfoCompat) sparseArrayCompat.valueAt(i10);
                if (accessibilityNodeInfoCompat3 != accessibilityNodeInfoCompat2) {
                    blockHandlerDef.getClass();
                    accessibilityNodeInfoCompat3.getBoundsInParent(rect4);
                    if (OperationKt.isCandidate(i, rect2, rect4)) {
                        if (OperationKt.isCandidate(i, rect2, rect3) && !OperationKt.beamBeats(i, rect2, rect4, rect3)) {
                            if (!OperationKt.beamBeats(i, rect2, rect3, rect4)) {
                                int majorAxisDistance = OperationKt.majorAxisDistance(i, rect2, rect4);
                                int minorAxisDistance = OperationKt.minorAxisDistance(i, rect2, rect4);
                                int i11 = (minorAxisDistance * minorAxisDistance) + (majorAxisDistance * 13 * majorAxisDistance);
                                int majorAxisDistance2 = OperationKt.majorAxisDistance(i, rect2, rect3);
                                int minorAxisDistance2 = OperationKt.minorAxisDistance(i, rect2, rect3);
                                if (i11 >= (minorAxisDistance2 * minorAxisDistance2) + (majorAxisDistance2 * 13 * majorAxisDistance2)) {
                                }
                            }
                        }
                        rect3.set(rect4);
                        accessibilityNodeInfoCompat = accessibilityNodeInfoCompat3;
                    }
                }
            }
            i2 = 0;
        }
        AccessibilityNodeInfoCompat accessibilityNodeInfoCompat4 = accessibilityNodeInfoCompat;
        if (accessibilityNodeInfoCompat4 != null) {
            if (sparseArrayCompat.garbage) {
                ArraySetKt.access$gc(sparseArrayCompat);
            }
            int i12 = sparseArrayCompat.size;
            int i13 = i2;
            while (true) {
                if (i13 >= i12) {
                    break;
                }
                if (sparseArrayCompat.values[i13] == accessibilityNodeInfoCompat4) {
                    i6 = i13;
                    break;
                }
                i13++;
            }
            i5 = sparseArrayCompat.keyAt(i6);
        }
        return requestKeyboardFocusForVirtualView(i5);
    }

    public final AccessibilityNodeInfoCompat obtainAccessibilityNodeInfo(int i) {
        if (i != -1) {
            return createNodeForChild(i);
        }
        Chip chip = this.mHost;
        AccessibilityNodeInfo obtain = AccessibilityNodeInfo.obtain(chip);
        AccessibilityNodeInfoCompat accessibilityNodeInfoCompat = new AccessibilityNodeInfoCompat(obtain);
        WeakHashMap weakHashMap = ViewCompat.sViewPropertyAnimatorMap;
        chip.onInitializeAccessibilityNodeInfo(obtain);
        ArrayList arrayList = new ArrayList();
        getVisibleVirtualViews(arrayList);
        if (obtain.getChildCount() > 0 && arrayList.size() > 0) {
            Node$$ExternalSyntheticBUOutline0.m811m("Views cannot have both real and virtual children");
            return null;
        }
        int size = arrayList.size();
        for (int i2 = 0; i2 < size; i2++) {
            accessibilityNodeInfoCompat.mInfo.addChild(chip, ((Integer) arrayList.get(i2)).intValue());
        }
        return accessibilityNodeInfoCompat;
    }

    @Override // androidx.core.view.AccessibilityDelegateCompat
    public final void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
        AccessibilityNodeInfo accessibilityNodeInfo = accessibilityNodeInfoCompat.mInfo;
        this.mOriginalDelegate.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfo);
        Chip chip = Chip.this;
        ChipDrawable chipDrawable = chip.chipDrawable;
        accessibilityNodeInfo.setCheckable(chipDrawable != null && chipDrawable.checkable);
        accessibilityNodeInfo.setClickable(chip.isClickable());
        accessibilityNodeInfoCompat.setClassName(chip.getAccessibilityClassName());
        accessibilityNodeInfoCompat.setText(chip.getText());
    }

    public abstract void onPopulateNodeForVirtualView(int i, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat);

    public final boolean requestKeyboardFocusForVirtualView(int i) {
        int i2;
        Chip chip = this.mHost;
        if ((!chip.isFocused() && !chip.requestFocus()) || (i2 = this.mKeyboardFocusedVirtualViewId) == i) {
            return false;
        }
        if (i2 != Integer.MIN_VALUE) {
            clearKeyboardFocusForVirtualView(i2);
        }
        if (i == Integer.MIN_VALUE) {
            return false;
        }
        this.mKeyboardFocusedVirtualViewId = i;
        Chip.ChipTouchHelper chipTouchHelper = (Chip.ChipTouchHelper) this;
        if (i == 1) {
            Chip chip2 = Chip.this;
            chip2.closeIconFocused = true;
            chip2.refreshDrawableState();
        }
        sendEventForVirtualView(i, 8);
        return true;
    }

    public final void sendEventForVirtualView(int i, int i2) {
        View view;
        ViewParent parent;
        AccessibilityEvent obtain;
        if (i == Integer.MIN_VALUE || !this.mManager.isEnabled() || (parent = (view = this.mHost).getParent()) == null) {
            return;
        }
        if (i != -1) {
            obtain = AccessibilityEvent.obtain(i2);
            AccessibilityNodeInfoCompat obtainAccessibilityNodeInfo = obtainAccessibilityNodeInfo(i);
            obtain.getText().add(obtainAccessibilityNodeInfo.getText());
            AccessibilityNodeInfo accessibilityNodeInfo = obtainAccessibilityNodeInfo.mInfo;
            obtain.setContentDescription(accessibilityNodeInfo.getContentDescription());
            obtain.setScrollable(accessibilityNodeInfo.isScrollable());
            obtain.setPassword(accessibilityNodeInfo.isPassword());
            obtain.setEnabled(accessibilityNodeInfo.isEnabled());
            obtain.setChecked(accessibilityNodeInfo.isChecked());
            if (obtain.getText().isEmpty() && obtain.getContentDescription() == null) {
                Node$$ExternalSyntheticBUOutline0.m811m("Callbacks must add text or a content description in populateEventForVirtualViewId()");
                return;
            } else {
                obtain.setClassName(accessibilityNodeInfo.getClassName());
                obtain.setSource(view, i);
                obtain.setPackageName(view.getContext().getPackageName());
            }
        } else {
            obtain = AccessibilityEvent.obtain(i2);
            view.onInitializeAccessibilityEvent(obtain);
        }
        parent.requestSendAccessibilityEvent(view, obtain);
    }
}
