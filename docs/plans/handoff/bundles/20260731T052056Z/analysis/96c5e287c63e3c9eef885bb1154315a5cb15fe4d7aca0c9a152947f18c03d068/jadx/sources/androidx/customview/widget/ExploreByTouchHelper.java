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
import androidx.collection.internal.Lock;
import androidx.compose.animation.core.Animation;
import androidx.compose.ui.platform.AndroidComposeViewAccessibilityDelegateCompat;
import androidx.core.view.AccessibilityDelegateCompat;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.paging.HintHandler;
import androidx.recyclerview.widget.RecyclerView;
import androidx.transition.Transition;
import androidx.work.Operation$State;
import com.google.android.material.chip.Chip;
import com.google.android.material.chip.ChipDrawable;
import com.google.gson.Gson$$ExternalSyntheticBUOutline0;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.WeakHashMap;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class ExploreByTouchHelper extends AccessibilityDelegateCompat {
    public static final Rect INVALID_BOUNDS = new Rect(Integer.MAX_VALUE, Integer.MAX_VALUE, Integer.MIN_VALUE, Integer.MIN_VALUE);
    public static final Lock NODE_ADAPTER = new Lock(6);
    public static final Transition.AnonymousClass1 SPARSE_VALUES_ADAPTER = new Transition.AnonymousClass1(7, false);
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

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class MyNodeProvider extends HintHandler {
        public final /* synthetic */ int $r8$classId;
        public final /* synthetic */ AccessibilityDelegateCompat this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public /* synthetic */ MyNodeProvider(AccessibilityDelegateCompat accessibilityDelegateCompat, int i) {
            super(17);
            this.$r8$classId = i;
            this.this$0 = accessibilityDelegateCompat;
        }

        @Override // androidx.paging.HintHandler
        public void addExtraDataToAccessibilityNodeInfo(int i, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat, String str, Bundle bundle) {
            switch (this.$r8$classId) {
                case 1:
                    ((AndroidComposeViewAccessibilityDelegateCompat) this.this$0).addExtraDataToAccessibilityNodeInfoHelper(i, accessibilityNodeInfoCompat, str, bundle);
                    break;
            }
        }

        /* JADX WARN: Code restructure failed: missing block: B:401:0x084b, code lost:
        
            if (r6 == false) goto L428;
         */
        /* JADX WARN: Code restructure failed: missing block: B:61:0x0131, code lost:
        
            if (androidx.compose.ui.semantics.SemanticsNode.getChildren$ui$default(4, r5).isEmpty() != false) goto L64;
         */
        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Removed duplicated region for block: B:11:0x0c42  */
        /* JADX WARN: Removed duplicated region for block: B:20:? A[RETURN, SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:293:0x065d  */
        /* JADX WARN: Removed duplicated region for block: B:296:0x0670  */
        /* JADX WARN: Removed duplicated region for block: B:299:0x067c  */
        /* JADX WARN: Removed duplicated region for block: B:302:0x0682  */
        /* JADX WARN: Removed duplicated region for block: B:311:0x069b  */
        /* JADX WARN: Removed duplicated region for block: B:314:0x06a1  */
        /* JADX WARN: Removed duplicated region for block: B:338:0x06f4  */
        /* JADX WARN: Removed duplicated region for block: B:341:0x06fa  */
        /* JADX WARN: Removed duplicated region for block: B:346:0x071a  */
        /* JADX WARN: Removed duplicated region for block: B:349:0x072c  */
        /* JADX WARN: Removed duplicated region for block: B:374:0x07c9  */
        /* JADX WARN: Removed duplicated region for block: B:387:0x0816  */
        /* JADX WARN: Removed duplicated region for block: B:395:0x0835  */
        /* JADX WARN: Removed duplicated region for block: B:408:0x0831 A[SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:410:0x07cc  */
        /* JADX WARN: Removed duplicated region for block: B:413:0x085d  */
        /* JADX WARN: Removed duplicated region for block: B:429:0x08b8  */
        /* JADX WARN: Removed duplicated region for block: B:462:0x0939  */
        /* JADX WARN: Removed duplicated region for block: B:465:0x093f  */
        /* JADX WARN: Removed duplicated region for block: B:471:0x09d9  */
        /* JADX WARN: Removed duplicated region for block: B:473:0x09dd  */
        /* JADX WARN: Removed duplicated region for block: B:480:0x0a05  */
        /* JADX WARN: Removed duplicated region for block: B:483:0x0a0f  */
        /* JADX WARN: Removed duplicated region for block: B:503:0x0a60  */
        /* JADX WARN: Removed duplicated region for block: B:505:0x0a64  */
        /* JADX WARN: Removed duplicated region for block: B:512:0x0a8c  */
        /* JADX WARN: Removed duplicated region for block: B:515:0x0a96  */
        /* JADX WARN: Removed duplicated region for block: B:523:0x0aba  */
        /* JADX WARN: Removed duplicated region for block: B:526:0x0ace  */
        /* JADX WARN: Removed duplicated region for block: B:573:0x0bf4  */
        /* JADX WARN: Removed duplicated region for block: B:584:0x0c3a  */
        /* JADX WARN: Removed duplicated region for block: B:587:0x0c11  */
        /* JADX WARN: Removed duplicated region for block: B:588:0x094e  */
        /* JADX WARN: Removed duplicated region for block: B:612:0x0665  */
        /* JADX WARN: Type inference failed for: r4v13, types: [kotlin.collections.EmptyList] */
        /* JADX WARN: Type inference failed for: r4v14, types: [java.util.Collection, java.util.List] */
        /* JADX WARN: Type inference failed for: r4v18, types: [java.util.ArrayList] */
        @Override // androidx.paging.HintHandler
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final androidx.core.view.accessibility.AccessibilityNodeInfoCompat createAccessibilityNodeInfo(int r46) {
            /*
                Method dump skipped, instructions count: 3204
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.customview.widget.ExploreByTouchHelper.MyNodeProvider.createAccessibilityNodeInfo(int):androidx.core.view.accessibility.AccessibilityNodeInfoCompat");
        }

        @Override // androidx.paging.HintHandler
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
                        _UtilJvmKt$$ExternalSyntheticLambda0.m(Animation.CC.m(i, "Unknown focus type: "));
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
        /* JADX WARN: Code restructure failed: missing block: B:369:0x01bd, code lost:
        
            r1 = null;
         */
        /* JADX WARN: Code restructure failed: missing block: B:526:0x0763, code lost:
        
            if (r1 != 16) goto L513;
         */
        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Removed duplicated region for block: B:324:0x0276  */
        /* JADX WARN: Removed duplicated region for block: B:327:0x0298  */
        /* JADX WARN: Removed duplicated region for block: B:332:0x02bf  */
        /* JADX WARN: Removed duplicated region for block: B:337:0x02e4  */
        /* JADX WARN: Removed duplicated region for block: B:348:0x02e6  */
        /* JADX WARN: Removed duplicated region for block: B:358:0x02ce  */
        /* JADX WARN: Removed duplicated region for block: B:359:0x02a7  */
        /* JADX WARN: Removed duplicated region for block: B:360:0x0279  */
        /* JADX WARN: Removed duplicated region for block: B:532:0x0800  */
        /* JADX WARN: Removed duplicated region for block: B:92:0x0149  */
        /* JADX WARN: Type inference failed for: r13v14, types: [androidx.appcompat.view.menu.BaseMenuWrapper, androidx.compose.ui.platform.AccessibilityIterators$PageTextSegmentIterator] */
        /* JADX WARN: Type inference failed for: r13v15, types: [androidx.appcompat.view.menu.BaseMenuWrapper, androidx.compose.ui.platform.AccessibilityIterators$LineTextSegmentIterator] */
        /* JADX WARN: Type inference failed for: r4v31, types: [androidx.compose.ui.platform.AccessibilityIterators$ParagraphTextSegmentIterator] */
        /* JADX WARN: Type inference failed for: r4v32 */
        /* JADX WARN: Type inference failed for: r4v33, types: [androidx.appcompat.view.menu.BaseMenuWrapper, androidx.compose.ui.platform.AccessibilityIterators$ParagraphTextSegmentIterator] */
        @Override // androidx.paging.HintHandler
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final boolean performAction(int r28, int r29, android.os.Bundle r30) {
            /*
                Method dump skipped, instructions count: 2458
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.customview.widget.ExploreByTouchHelper.MyNodeProvider.performAction(int, int, android.os.Bundle):boolean");
        }
    }

    public ExploreByTouchHelper(Chip chip) {
        this.mHost = chip;
        this.mManager = (AccessibilityManager) chip.getContext().getSystemService("accessibility");
        chip.setFocusable(true);
        if (chip.getImportantForAccessibility() == 0) {
            chip.setImportantForAccessibility(1);
        }
    }

    public final boolean clearKeyboardFocusForVirtualView(int i) {
        if (this.mKeyboardFocusedVirtualViewId != i) {
            return false;
        }
        this.mKeyboardFocusedVirtualViewId = Integer.MIN_VALUE;
        onVirtualViewKeyboardFocusChanged(i, false);
        sendEventForVirtualView(i, 8);
        return true;
    }

    public final AccessibilityNodeInfoCompat createNodeForChild(int i) {
        AccessibilityNodeInfo obtain = AccessibilityNodeInfo.obtain();
        AccessibilityNodeInfoCompat accessibilityNodeInfoCompat = new AccessibilityNodeInfoCompat(obtain);
        obtain.setEnabled(true);
        obtain.setFocusable(true);
        accessibilityNodeInfoCompat.setClassName("android.view.View");
        Rect rect = INVALID_BOUNDS;
        obtain.setBoundsInParent(rect);
        accessibilityNodeInfoCompat.setBoundsInScreen(rect);
        accessibilityNodeInfoCompat.mParentVirtualDescendantId = -1;
        Chip chip = this.mHost;
        obtain.setParent(chip);
        onPopulateNodeForVirtualView(i, accessibilityNodeInfoCompat);
        if (accessibilityNodeInfoCompat.getText() == null && obtain.getContentDescription() == null) {
            Gson$$ExternalSyntheticBUOutline0.m$1("Callbacks must add text or a content description in populateNodeForVirtualViewId()");
            return null;
        }
        Rect rect2 = this.mTempParentRect;
        obtain.getBoundsInParent(rect2);
        Rect rect3 = this.mTempScreenRect;
        accessibilityNodeInfoCompat.getBoundsInScreen(rect3);
        if (rect2.equals(rect) && rect3.equals(rect)) {
            Gson$$ExternalSyntheticBUOutline0.m$1("Callbacks must set parent bounds or screen bounds in populateNodeForVirtualViewId()");
            return null;
        }
        int actions = obtain.getActions();
        if ((actions & 64) != 0) {
            Gson$$ExternalSyntheticBUOutline0.m$1("Callbacks must not add ACTION_ACCESSIBILITY_FOCUS in populateNodeForVirtualViewId()");
            return null;
        }
        if ((actions & 128) != 0) {
            Gson$$ExternalSyntheticBUOutline0.m$1("Callbacks must not add ACTION_CLEAR_ACCESSIBILITY_FOCUS in populateNodeForVirtualViewId()");
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
        if (rect3.equals(rect)) {
            obtain.setBoundsInParent(rect2);
            Rect rect4 = new Rect();
            rect4.set(rect2);
            if (accessibilityNodeInfoCompat.mParentVirtualDescendantId != -1) {
                AccessibilityNodeInfoCompat accessibilityNodeInfoCompat2 = new AccessibilityNodeInfoCompat(AccessibilityNodeInfo.obtain());
                Rect rect5 = new Rect();
                for (int i2 = accessibilityNodeInfoCompat.mParentVirtualDescendantId; i2 != -1; i2 = accessibilityNodeInfoCompat2.mParentVirtualDescendantId) {
                    accessibilityNodeInfoCompat2.mParentVirtualDescendantId = -1;
                    AccessibilityNodeInfo accessibilityNodeInfo = accessibilityNodeInfoCompat2.mInfo;
                    accessibilityNodeInfo.setParent(chip, -1);
                    accessibilityNodeInfo.setBoundsInParent(rect);
                    onPopulateNodeForVirtualView(i2, accessibilityNodeInfoCompat2);
                    accessibilityNodeInfo.getBoundsInParent(rect5);
                    rect4.offset(rect5.left, rect5.top);
                }
            }
            chip.getLocationOnScreen(iArr);
            rect4.offset(iArr[0] - chip.getScrollX(), iArr[1] - chip.getScrollY());
            accessibilityNodeInfoCompat.setBoundsInScreen(rect4);
            accessibilityNodeInfoCompat.getBoundsInScreen(rect3);
        }
        Rect rect6 = this.mTempVisibleRect;
        if (chip.getLocalVisibleRect(rect6)) {
            rect6.offset(iArr[0] - chip.getScrollX(), iArr[1] - chip.getScrollY());
            if (rect3.intersect(rect6)) {
                accessibilityNodeInfoCompat.setBoundsInScreen(rect3);
                if (!rect3.isEmpty() && chip.getWindowVisibility() == 0) {
                    Object parent = chip.getParent();
                    while (true) {
                        if (parent instanceof View) {
                            View view = (View) parent;
                            if (view.getAlpha() <= RecyclerView.DECELERATION_RATE || view.getVisibility() != 0) {
                                break;
                            }
                            parent = view.getParent();
                        } else if (parent != null) {
                            accessibilityNodeInfoCompat.mInfo.setVisibleToUser(true);
                        }
                    }
                }
            }
        }
        return accessibilityNodeInfoCompat;
    }

    @Override // androidx.core.view.AccessibilityDelegateCompat
    public final HintHandler getAccessibilityNodeProvider(View view) {
        MyNodeProvider myNodeProvider = this.mNodeProvider;
        if (myNodeProvider != null) {
            return myNodeProvider;
        }
        MyNodeProvider myNodeProvider2 = new MyNodeProvider(this, 0);
        this.mNodeProvider = myNodeProvider2;
        return myNodeProvider2;
    }

    public abstract void getVisibleVirtualViews(ArrayList arrayList);

    public final boolean moveFocus(int i, Rect rect) {
        int i2;
        Object obj;
        AccessibilityNodeInfoCompat accessibilityNodeInfoCompat;
        ArrayList arrayList = new ArrayList();
        getVisibleVirtualViews(arrayList);
        SparseArrayCompat sparseArrayCompat = new SparseArrayCompat(0);
        for (int i3 = 0; i3 < arrayList.size(); i3++) {
            sparseArrayCompat.put(((Integer) arrayList.get(i3)).intValue(), createNodeForChild(((Integer) arrayList.get(i3)).intValue()));
        }
        int i4 = this.mKeyboardFocusedVirtualViewId;
        int i5 = Integer.MIN_VALUE;
        AccessibilityNodeInfoCompat accessibilityNodeInfoCompat2 = i4 == Integer.MIN_VALUE ? null : (AccessibilityNodeInfoCompat) ArraySetKt.commonGet(sparseArrayCompat, i4);
        final Lock lock = NODE_ADAPTER;
        Transition.AnonymousClass1 anonymousClass1 = SPARSE_VALUES_ADAPTER;
        Chip chip = this.mHost;
        int i6 = -1;
        if (i == 1 || i == 2) {
            final boolean z = chip.getLayoutDirection() == 1;
            anonymousClass1.getClass();
            int size = sparseArrayCompat.size();
            ArrayList arrayList2 = new ArrayList(size);
            for (int i7 = 0; i7 < size; i7++) {
                arrayList2.add((AccessibilityNodeInfoCompat) sparseArrayCompat.valueAt(i7));
            }
            Collections.sort(arrayList2, new Comparator(z, lock) { // from class: androidx.customview.widget.FocusStrategy$SequentialComparator
                public final Lock mAdapter;
                public final boolean mIsLayoutRtl;
                public final Rect mTemp1 = new Rect();
                public final Rect mTemp2 = new Rect();

                {
                    this.mIsLayoutRtl = z;
                    this.mAdapter = lock;
                }

                @Override // java.util.Comparator
                public final int compare(Object obj2, Object obj3) {
                    this.mAdapter.getClass();
                    Rect rect2 = this.mTemp1;
                    ((AccessibilityNodeInfoCompat) obj2).getBoundsInScreen(rect2);
                    Rect rect3 = this.mTemp2;
                    ((AccessibilityNodeInfoCompat) obj3).getBoundsInScreen(rect3);
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
                    _UtilJvmKt$$ExternalSyntheticLambda0.m("direction must be one of {FOCUS_FORWARD, FOCUS_BACKWARD}.");
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
                _UtilJvmKt$$ExternalSyntheticLambda0.m("direction must be one of {FOCUS_FORWARD, FOCUS_BACKWARD, FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}.");
                return false;
            }
            Rect rect2 = new Rect();
            int i9 = this.mKeyboardFocusedVirtualViewId;
            if (i9 != Integer.MIN_VALUE) {
                obtainAccessibilityNodeInfo(i9).getBoundsInScreen(rect2);
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
                        _UtilJvmKt$$ExternalSyntheticLambda0.m("direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}.");
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
                    _UtilJvmKt$$ExternalSyntheticLambda0.m("direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}.");
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
                    lock.getClass();
                    accessibilityNodeInfoCompat3.getBoundsInScreen(rect4);
                    if (Operation$State.isCandidate(i, rect2, rect4)) {
                        if (Operation$State.isCandidate(i, rect2, rect3) && !Operation$State.beamBeats(i, rect2, rect4, rect3)) {
                            if (!Operation$State.beamBeats(i, rect2, rect3, rect4)) {
                                int majorAxisDistance = Operation$State.majorAxisDistance(i, rect2, rect4);
                                int minorAxisDistance = Operation$State.minorAxisDistance(i, rect2, rect4);
                                int i11 = (minorAxisDistance * minorAxisDistance) + (majorAxisDistance * 13 * majorAxisDistance);
                                int majorAxisDistance2 = Operation$State.majorAxisDistance(i, rect2, rect3);
                                int minorAxisDistance2 = Operation$State.minorAxisDistance(i, rect2, rect3);
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
                ArraySetKt.gc(sparseArrayCompat);
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
            Gson$$ExternalSyntheticBUOutline0.m$1("Views cannot have both real and virtual children");
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

    public abstract void onVirtualViewKeyboardFocusChanged(int i, boolean z);

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
        onVirtualViewKeyboardFocusChanged(i, true);
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
                Gson$$ExternalSyntheticBUOutline0.m$1("Callbacks must add text or a content description in populateEventForVirtualViewId()");
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
