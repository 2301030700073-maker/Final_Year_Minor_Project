package androidx.customview.widget;

import android.graphics.Rect;
import android.os.Bundle;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityManager;
import android.view.accessibility.AccessibilityNodeInfo;
import androidx.camera.camera2.pipe.CameraDevices$CC;
import androidx.collection.ArraySetKt;
import androidx.collection.SparseArrayCompat;
import androidx.compose.ui.platform.AndroidComposeViewAccessibilityDelegateCompat;
import androidx.core.view.AccessibilityDelegateCompat;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.fragment.app.Fragment;
import androidx.room.util.DBUtil$$ExternalSyntheticBUOutline0;
import androidx.sqlite.SQLite;
import androidx.transition.Transition;
import coil3.UriKt$$ExternalSyntheticBUOutline0;
import com.bumptech.glide.load.Option;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.WeakHashMap;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class ExploreByTouchHelper extends AccessibilityDelegateCompat {
    public static final Rect INVALID_BOUNDS = new Rect(Integer.MAX_VALUE, Integer.MAX_VALUE, Integer.MIN_VALUE, Integer.MIN_VALUE);
    public static final Option.AnonymousClass1 NODE_ADAPTER = new Option.AnonymousClass1();
    public static final Transition.AnonymousClass1 SPARSE_VALUES_ADAPTER = new Transition.AnonymousClass1();
    public final View mHost;
    public final AccessibilityManager mManager;
    public MyNodeProvider mNodeProvider;
    public final Rect mTempScreenRect = new Rect();
    public final Rect mTempParentRect = new Rect();
    public final Rect mTempVisibleRect = new Rect();
    public final int[] mTempGlobalRect = new int[2];
    public int mAccessibilityFocusedVirtualViewId = Integer.MIN_VALUE;
    public int mKeyboardFocusedVirtualViewId = Integer.MIN_VALUE;
    public int mHoveredVirtualViewId = Integer.MIN_VALUE;

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class MyNodeProvider extends Fragment.AnonymousClass7 {
        public final /* synthetic */ int $r8$classId;
        public final /* synthetic */ AccessibilityDelegateCompat this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public /* synthetic */ MyNodeProvider(AccessibilityDelegateCompat accessibilityDelegateCompat, int i) {
            super(9);
            this.$r8$classId = i;
            this.this$0 = accessibilityDelegateCompat;
        }

        /* JADX WARN: Code restructure failed: missing block: B:389:0x0832, code lost:
        
            if (r5 == false) goto L419;
         */
        /* JADX WARN: Code restructure failed: missing block: B:57:0x0123, code lost:
        
            if (androidx.compose.ui.semantics.SemanticsNode.getChildren$ui$default(4, r5).isEmpty() != false) goto L62;
         */
        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Removed duplicated region for block: B:9:0x0ce8  */
        /* JADX WARN: Type inference failed for: r6v67, types: [kotlin.collections.EmptyList] */
        /* JADX WARN: Type inference failed for: r6v68, types: [java.util.Collection, java.util.List] */
        /* JADX WARN: Type inference failed for: r6v72, types: [java.util.ArrayList] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private final androidx.core.view.accessibility.AccessibilityNodeInfoCompat createAccessibilityNodeInfo$androidx$compose$ui$platform$AndroidComposeViewAccessibilityDelegateCompat$ComposeAccessibilityNodeProvider(int r47) {
            /*
                Method dump skipped, instructions count: 3344
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.customview.widget.ExploreByTouchHelper.MyNodeProvider.createAccessibilityNodeInfo$androidx$compose$ui$platform$AndroidComposeViewAccessibilityDelegateCompat$ComposeAccessibilityNodeProvider(int):androidx.core.view.accessibility.AccessibilityNodeInfoCompat");
        }

        @Override // androidx.fragment.app.Fragment.AnonymousClass7
        public void addExtraDataToAccessibilityNodeInfo(int i, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat, String str, Bundle bundle) {
            switch (this.$r8$classId) {
                case 1:
                    ((AndroidComposeViewAccessibilityDelegateCompat) this.this$0).addExtraDataToAccessibilityNodeInfoHelper(i, accessibilityNodeInfoCompat, str, bundle);
                    break;
            }
        }

        @Override // androidx.fragment.app.Fragment.AnonymousClass7
        public final AccessibilityNodeInfoCompat createAccessibilityNodeInfo(int i) {
            switch (this.$r8$classId) {
                case 0:
                    return new AccessibilityNodeInfoCompat(AccessibilityNodeInfo.obtain(((ExploreByTouchHelper) this.this$0).obtainAccessibilityNodeInfo(i).mInfo));
                default:
                    return createAccessibilityNodeInfo$androidx$compose$ui$platform$AndroidComposeViewAccessibilityDelegateCompat$ComposeAccessibilityNodeProvider(i);
            }
        }

        @Override // androidx.fragment.app.Fragment.AnonymousClass7
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
                        UriKt$$ExternalSyntheticBUOutline0.m(CameraDevices$CC.m("Unknown focus type: ", i));
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
        /* JADX WARN: Code restructure failed: missing block: B:15:0x0057, code lost:
        
            if (r6 == false) goto L8;
         */
        /* JADX WARN: Code restructure failed: missing block: B:375:0x01d0, code lost:
        
            r1 = null;
         */
        /* JADX WARN: Code restructure failed: missing block: B:532:0x077f, code lost:
        
            if (r1 != 16) goto L515;
         */
        /* JADX WARN: Removed duplicated region for block: B:330:0x028c  */
        /* JADX WARN: Removed duplicated region for block: B:333:0x02af  */
        /* JADX WARN: Removed duplicated region for block: B:338:0x02d6  */
        /* JADX WARN: Removed duplicated region for block: B:343:0x02fe  */
        /* JADX WARN: Removed duplicated region for block: B:354:0x0300  */
        /* JADX WARN: Removed duplicated region for block: B:364:0x02e5  */
        /* JADX WARN: Removed duplicated region for block: B:365:0x02be  */
        /* JADX WARN: Removed duplicated region for block: B:366:0x028f  */
        /* JADX WARN: Removed duplicated region for block: B:538:0x0831  */
        /* JADX WARN: Removed duplicated region for block: B:98:0x015a  */
        @Override // androidx.fragment.app.Fragment.AnonymousClass7
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final boolean performAction(int r27, int r28, android.os.Bundle r29) {
            /*
                Method dump skipped, instructions count: 2476
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.customview.widget.ExploreByTouchHelper.MyNodeProvider.performAction(int, int, android.os.Bundle):boolean");
        }
    }

    public ExploreByTouchHelper(View view) {
        this.mHost = view;
        this.mManager = (AccessibilityManager) view.getContext().getSystemService("accessibility");
        view.setFocusable(true);
        if (view.getImportantForAccessibility() == 0) {
            view.setImportantForAccessibility(1);
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

    public final AccessibilityEvent createEvent$1(int i, int i2) {
        View view = this.mHost;
        if (i == -1) {
            AccessibilityEvent obtain = AccessibilityEvent.obtain(i2);
            view.onInitializeAccessibilityEvent(obtain);
            return obtain;
        }
        AccessibilityEvent obtain2 = AccessibilityEvent.obtain(i2);
        AccessibilityNodeInfoCompat obtainAccessibilityNodeInfo = obtainAccessibilityNodeInfo(i);
        obtain2.getText().add(obtainAccessibilityNodeInfo.getText());
        AccessibilityNodeInfo accessibilityNodeInfo = obtainAccessibilityNodeInfo.mInfo;
        obtain2.setContentDescription(accessibilityNodeInfo.getContentDescription());
        obtain2.setScrollable(accessibilityNodeInfo.isScrollable());
        obtain2.setPassword(accessibilityNodeInfo.isPassword());
        obtain2.setEnabled(accessibilityNodeInfo.isEnabled());
        obtain2.setChecked(accessibilityNodeInfo.isChecked());
        onPopulateEventForVirtualView(i, obtain2);
        if (obtain2.getText().isEmpty() && obtain2.getContentDescription() == null) {
            DBUtil$$ExternalSyntheticBUOutline0.m("Callbacks must add text or a content description in populateEventForVirtualViewId()");
            return null;
        }
        obtain2.setClassName(accessibilityNodeInfo.getClassName());
        obtain2.setSource(view, i);
        obtain2.setPackageName(view.getContext().getPackageName());
        return obtain2;
    }

    public final AccessibilityNodeInfoCompat createNodeForChild(int i) {
        AccessibilityNodeInfoCompat obtain = AccessibilityNodeInfoCompat.obtain();
        AccessibilityNodeInfo accessibilityNodeInfo = obtain.mInfo;
        obtain.setEnabled(true);
        accessibilityNodeInfo.setFocusable(true);
        obtain.setClassName("android.view.View");
        Rect rect = INVALID_BOUNDS;
        obtain.setBoundsInParent(rect);
        obtain.setBoundsInScreen(rect);
        obtain.mParentVirtualDescendantId = -1;
        View view = this.mHost;
        accessibilityNodeInfo.setParent(view);
        onPopulateNodeForVirtualView(i, obtain);
        if (obtain.getText() == null && accessibilityNodeInfo.getContentDescription() == null) {
            DBUtil$$ExternalSyntheticBUOutline0.m("Callbacks must add text or a content description in populateNodeForVirtualViewId()");
            return null;
        }
        Rect rect2 = this.mTempParentRect;
        accessibilityNodeInfo.getBoundsInParent(rect2);
        Rect rect3 = this.mTempScreenRect;
        obtain.getBoundsInScreen(rect3);
        if (rect2.equals(rect) && rect3.equals(rect)) {
            DBUtil$$ExternalSyntheticBUOutline0.m("Callbacks must set parent bounds or screen bounds in populateNodeForVirtualViewId()");
            return null;
        }
        int actions = accessibilityNodeInfo.getActions();
        if ((actions & 64) != 0) {
            DBUtil$$ExternalSyntheticBUOutline0.m("Callbacks must not add ACTION_ACCESSIBILITY_FOCUS in populateNodeForVirtualViewId()");
            return null;
        }
        if ((actions & 128) != 0) {
            DBUtil$$ExternalSyntheticBUOutline0.m("Callbacks must not add ACTION_CLEAR_ACCESSIBILITY_FOCUS in populateNodeForVirtualViewId()");
            return null;
        }
        accessibilityNodeInfo.setPackageName(view.getContext().getPackageName());
        obtain.mVirtualDescendantId = i;
        accessibilityNodeInfo.setSource(view, i);
        if (this.mAccessibilityFocusedVirtualViewId == i) {
            accessibilityNodeInfo.setAccessibilityFocused(true);
            obtain.addAction(128);
        } else {
            accessibilityNodeInfo.setAccessibilityFocused(false);
            obtain.addAction(64);
        }
        boolean z = this.mKeyboardFocusedVirtualViewId == i;
        if (z) {
            obtain.addAction(2);
        } else if (accessibilityNodeInfo.isFocusable()) {
            obtain.addAction(1);
        }
        accessibilityNodeInfo.setFocused(z);
        int[] iArr = this.mTempGlobalRect;
        view.getLocationOnScreen(iArr);
        if (rect3.equals(rect)) {
            obtain.setBoundsInParent(rect2);
            Rect rect4 = new Rect();
            rect4.set(rect2);
            if (obtain.mParentVirtualDescendantId != -1) {
                AccessibilityNodeInfoCompat obtain2 = AccessibilityNodeInfoCompat.obtain();
                AccessibilityNodeInfo accessibilityNodeInfo2 = obtain2.mInfo;
                Rect rect5 = new Rect();
                for (int i2 = obtain.mParentVirtualDescendantId; i2 != -1; i2 = obtain2.mParentVirtualDescendantId) {
                    obtain2.mParentVirtualDescendantId = -1;
                    accessibilityNodeInfo2.setParent(view, -1);
                    obtain2.setBoundsInParent(rect);
                    onPopulateNodeForVirtualView(i2, obtain2);
                    accessibilityNodeInfo2.getBoundsInParent(rect5);
                    rect4.offset(rect5.left, rect5.top);
                }
            }
            view.getLocationOnScreen(iArr);
            rect4.offset(iArr[0] - view.getScrollX(), iArr[1] - view.getScrollY());
            obtain.setBoundsInScreen(rect4);
            obtain.getBoundsInScreen(rect3);
        }
        Rect rect6 = this.mTempVisibleRect;
        if (view.getLocalVisibleRect(rect6)) {
            rect6.offset(iArr[0] - view.getScrollX(), iArr[1] - view.getScrollY());
            if (rect3.intersect(rect6)) {
                obtain.setBoundsInScreen(rect3);
                if (!rect3.isEmpty() && view.getWindowVisibility() == 0) {
                    Object parent = view.getParent();
                    while (true) {
                        if (parent instanceof View) {
                            View view2 = (View) parent;
                            if (view2.getAlpha() <= 0.0f || view2.getVisibility() != 0) {
                                break;
                            }
                            parent = view2.getParent();
                        } else if (parent != null) {
                            obtain.setVisibleToUser(true);
                        }
                    }
                }
            }
        }
        return obtain;
    }

    public final boolean dispatchHoverEvent(MotionEvent motionEvent) {
        int i;
        AccessibilityManager accessibilityManager = this.mManager;
        if (!accessibilityManager.isEnabled() || !accessibilityManager.isTouchExplorationEnabled()) {
            return false;
        }
        int action = motionEvent.getAction();
        if (action == 7 || action == 9) {
            int virtualViewAt = getVirtualViewAt(motionEvent.getX(), motionEvent.getY());
            int i2 = this.mHoveredVirtualViewId;
            if (i2 != virtualViewAt) {
                this.mHoveredVirtualViewId = virtualViewAt;
                sendEventForVirtualView(virtualViewAt, 128);
                sendEventForVirtualView(i2, 256);
            }
            if (virtualViewAt == Integer.MIN_VALUE) {
                return false;
            }
        } else {
            if (action != 10 || (i = this.mHoveredVirtualViewId) == Integer.MIN_VALUE) {
                return false;
            }
            if (i != Integer.MIN_VALUE) {
                this.mHoveredVirtualViewId = Integer.MIN_VALUE;
                sendEventForVirtualView(Integer.MIN_VALUE, 128);
                sendEventForVirtualView(i, 256);
                return true;
            }
        }
        return true;
    }

    @Override // androidx.core.view.AccessibilityDelegateCompat
    public final Fragment.AnonymousClass7 getAccessibilityNodeProvider(View view) {
        if (this.mNodeProvider == null) {
            this.mNodeProvider = new MyNodeProvider(this, 0);
        }
        return this.mNodeProvider;
    }

    public abstract int getVirtualViewAt(float f, float f2);

    public abstract void getVisibleVirtualViews(ArrayList arrayList);

    public final void invalidateRoot() {
        View view;
        ViewParent parent;
        if (!this.mManager.isEnabled() || (parent = (view = this.mHost).getParent()) == null) {
            return;
        }
        AccessibilityEvent createEvent$1 = createEvent$1(-1, 2048);
        createEvent$1.setContentChangeTypes(1);
        parent.requestSendAccessibilityEvent(view, createEvent$1);
    }

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
        AccessibilityNodeInfoCompat accessibilityNodeInfoCompat2 = i4 == Integer.MIN_VALUE ? null : (AccessibilityNodeInfoCompat) sparseArrayCompat.get(i4);
        final Option.AnonymousClass1 anonymousClass1 = NODE_ADAPTER;
        Transition.AnonymousClass1 anonymousClass12 = SPARSE_VALUES_ADAPTER;
        View view = this.mHost;
        int i6 = -1;
        if (i == 1 || i == 2) {
            final boolean z = view.getLayoutDirection() == 1;
            anonymousClass12.getClass();
            int size = sparseArrayCompat.size();
            ArrayList arrayList2 = new ArrayList(size);
            for (int i7 = 0; i7 < size; i7++) {
                arrayList2.add((AccessibilityNodeInfoCompat) sparseArrayCompat.valueAt(i7));
            }
            Collections.sort(arrayList2, new Comparator(z, anonymousClass1) { // from class: androidx.customview.widget.FocusStrategy$SequentialComparator
                public final Option.AnonymousClass1 mAdapter;
                public final boolean mIsLayoutRtl;
                public final Rect mTemp1 = new Rect();
                public final Rect mTemp2 = new Rect();

                {
                    this.mIsLayoutRtl = z;
                    this.mAdapter = anonymousClass1;
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
                    UriKt$$ExternalSyntheticBUOutline0.m("direction must be one of {FOCUS_FORWARD, FOCUS_BACKWARD}.");
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
                UriKt$$ExternalSyntheticBUOutline0.m("direction must be one of {FOCUS_FORWARD, FOCUS_BACKWARD, FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}.");
                return false;
            }
            Rect rect2 = new Rect();
            int i9 = this.mKeyboardFocusedVirtualViewId;
            if (i9 != Integer.MIN_VALUE) {
                obtainAccessibilityNodeInfo(i9).getBoundsInScreen(rect2);
            } else if (rect != null) {
                rect2.set(rect);
            } else {
                int width = view.getWidth();
                int height = view.getHeight();
                if (i == 17) {
                    rect2.set(width, 0, width, height);
                } else if (i == 33) {
                    rect2.set(0, height, width, height);
                } else if (i == 66) {
                    rect2.set(-1, 0, -1, height);
                } else {
                    if (i != 130) {
                        UriKt$$ExternalSyntheticBUOutline0.m("direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}.");
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
                    UriKt$$ExternalSyntheticBUOutline0.m("direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}.");
                    return false;
                }
                rect3.offset(0, -(rect2.height() + 1));
            }
            anonymousClass12.getClass();
            int size4 = sparseArrayCompat.size();
            Rect rect4 = new Rect();
            accessibilityNodeInfoCompat = null;
            for (int i10 = 0; i10 < size4; i10++) {
                AccessibilityNodeInfoCompat accessibilityNodeInfoCompat3 = (AccessibilityNodeInfoCompat) sparseArrayCompat.valueAt(i10);
                if (accessibilityNodeInfoCompat3 != accessibilityNodeInfoCompat2) {
                    anonymousClass1.getClass();
                    accessibilityNodeInfoCompat3.getBoundsInScreen(rect4);
                    if (SQLite.isCandidate(i, rect2, rect4)) {
                        if (SQLite.isCandidate(i, rect2, rect3) && !SQLite.beamBeats(i, rect2, rect4, rect3)) {
                            if (!SQLite.beamBeats(i, rect2, rect3, rect4)) {
                                int majorAxisDistance = SQLite.majorAxisDistance(i, rect2, rect4);
                                int minorAxisDistance = SQLite.minorAxisDistance(i, rect2, rect4);
                                int i11 = (minorAxisDistance * minorAxisDistance) + (majorAxisDistance * 13 * majorAxisDistance);
                                int majorAxisDistance2 = SQLite.majorAxisDistance(i, rect2, rect3);
                                int minorAxisDistance2 = SQLite.minorAxisDistance(i, rect2, rect3);
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
        View view = this.mHost;
        AccessibilityNodeInfo obtain = AccessibilityNodeInfo.obtain(view);
        AccessibilityNodeInfoCompat accessibilityNodeInfoCompat = new AccessibilityNodeInfoCompat(obtain);
        WeakHashMap weakHashMap = ViewCompat.sViewPropertyAnimatorMap;
        view.onInitializeAccessibilityNodeInfo(obtain);
        ArrayList arrayList = new ArrayList();
        getVisibleVirtualViews(arrayList);
        if (obtain.getChildCount() > 0 && arrayList.size() > 0) {
            DBUtil$$ExternalSyntheticBUOutline0.m("Views cannot have both real and virtual children");
            return null;
        }
        int size = arrayList.size();
        for (int i2 = 0; i2 < size; i2++) {
            accessibilityNodeInfoCompat.mInfo.addChild(view, ((Integer) arrayList.get(i2)).intValue());
        }
        return accessibilityNodeInfoCompat;
    }

    @Override // androidx.core.view.AccessibilityDelegateCompat
    public void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
        this.mOriginalDelegate.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfoCompat.mInfo);
        onPopulateNodeForHost(accessibilityNodeInfoCompat);
    }

    public abstract boolean onPerformActionForVirtualView(int i, int i2);

    public abstract void onPopulateNodeForVirtualView(int i, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat);

    public final boolean requestKeyboardFocusForVirtualView(int i) {
        int i2;
        View view = this.mHost;
        if ((!view.isFocused() && !view.requestFocus()) || (i2 = this.mKeyboardFocusedVirtualViewId) == i) {
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
        if (i == Integer.MIN_VALUE || !this.mManager.isEnabled() || (parent = (view = this.mHost).getParent()) == null) {
            return;
        }
        parent.requestSendAccessibilityEvent(view, createEvent$1(i, i2));
    }

    public void onPopulateNodeForHost(AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
    }

    public void onPopulateEventForVirtualView(int i, AccessibilityEvent accessibilityEvent) {
    }

    public void onVirtualViewKeyboardFocusChanged(int i, boolean z) {
    }
}
