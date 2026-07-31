package com.google.android.material.bottomsheet;

import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseIntArray;
import android.util.TypedValue;
import android.view.AbsSavedState;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityNodeInfo;
import androidx.camera.camera2.pipe.CameraDevices$CC;
import androidx.compose.ui.unit.IntOffsetKt;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.view.AccessibilityDelegateCompat;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.core.widget.RemoteViewsCompat$RemoteCollectionItems;
import androidx.customview.view.AbsSavedState;
import androidx.customview.widget.ViewDragHelper;
import androidx.recyclerview.widget.ItemTouchHelper;
import coil3.UriKt$$ExternalSyntheticBUOutline0;
import com.bumptech.glide.load.engine.cache.MemorySizeCalculator;
import com.fsck.k9.R;
import com.fsck.k9.mailstore.LocalFolder;
import com.google.android.material.R$styleable;
import com.google.android.material.internal.ViewUtils;
import com.google.android.material.motion.MaterialSideContainerBackHelper;
import com.google.android.material.shape.MaterialShapeDrawable;
import com.google.android.material.shape.ShapeAppearanceModel;
import com.google.android.material.sidesheet.SideSheetBehavior;
import com.google.android.material.textfield.TextInputLayout;
import com.google.zxing.BinaryBitmap;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.WeakHashMap;
import okio.PriorityQueue;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public class BottomSheetBehavior<V extends View> extends CoordinatorLayout.Behavior {
    public int activePointerId;
    public final boolean autoExpandOnRequestChildRectangleOffscreen;
    public final ColorStateList backgroundTint;
    public final ArrayList callbacks;
    public int childHeight;
    public final SparseIntArray collapseActionIds;
    public int collapsedOffset;
    public WeakReference currentTouchedScrollChildRef;
    public final SideSheetBehavior.AnonymousClass1 dragCallback;
    public boolean draggable;
    public final boolean draggableOnNestedScroll;
    public boolean draggableOnNestedScrollLastDragIgnored;
    public final float elevation;
    public final SparseIntArray expandActionIds;
    public final SparseIntArray expandHalfwayActionIds;
    public boolean expandedCornersRemoved;
    public final int expandedOffset;
    public boolean fitToContents;
    public int fitToContentsOffset;
    public int gestureInsetBottom;
    public final boolean gestureInsetBottomIgnored;
    public int halfExpandedOffset;
    public final float halfExpandedRatio;
    public final float hideFriction;
    public boolean hideable;
    public boolean ignoreEvents;
    public HashMap importantForAccessibilityMap;
    public int initialY;
    public int insetBottom;
    public int insetTop;
    public final ValueAnimator interpolatorAnimator;
    public int lastNestedScrollDy;
    public final boolean marginLeftSystemWindowInsets;
    public final boolean marginRightSystemWindowInsets;
    public final boolean marginTopSystemWindowInsets;
    public final MaterialShapeDrawable materialShapeDrawable;
    public final int maxHeight;
    public final int maxWidth;
    public final float maximumVelocity;
    public final boolean multipleScrollingChildrenSupported;
    public boolean nestedScrolled;
    public final ArrayList nestedScrollingChildrenRef;
    public final boolean paddingBottomSystemWindowInsets;
    public final boolean paddingLeftSystemWindowInsets;
    public final boolean paddingRightSystemWindowInsets;
    public final boolean paddingTopSystemWindowInsets;
    public int parentHeight;
    public int parentWidth;
    public int peekHeight;
    public boolean peekHeightAuto;
    public final int peekHeightGestureInsetBuffer;
    public int peekHeightMin;
    public final int saveFlags;
    public final ShapeAppearanceModel shapeAppearanceModelDefault;
    public final Rect sheetRect;
    public final boolean shouldRemoveExpandedCorners;
    public final int significantVelocityThreshold;
    public boolean skipCollapsed;
    public int state;
    public final RemoteViewsCompat$RemoteCollectionItems stateSettlingTracker;
    public boolean touchingScrollingChild;
    public VelocityTracker velocityTracker;
    public ViewDragHelper viewDragHelper;
    public WeakReference viewRef;

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public abstract class BottomSheetCallback {
        public abstract void onSlide(View view);

        public abstract void onStateChanged(View view, int i);
    }

    public BottomSheetBehavior(Context context, AttributeSet attributeSet) {
        int i;
        this.saveFlags = 0;
        this.fitToContents = true;
        this.maxWidth = -1;
        this.maxHeight = -1;
        this.stateSettlingTracker = new RemoteViewsCompat$RemoteCollectionItems(this);
        this.halfExpandedRatio = 0.5f;
        this.elevation = -1.0f;
        this.draggable = true;
        this.draggableOnNestedScroll = true;
        this.autoExpandOnRequestChildRectangleOffscreen = true;
        int i2 = 4;
        this.state = 4;
        this.hideFriction = 0.1f;
        this.nestedScrollingChildrenRef = new ArrayList();
        this.callbacks = new ArrayList();
        this.initialY = -1;
        this.expandHalfwayActionIds = new SparseIntArray();
        this.expandActionIds = new SparseIntArray();
        this.collapseActionIds = new SparseIntArray();
        this.sheetRect = new Rect();
        this.dragCallback = new SideSheetBehavior.AnonymousClass1(this, 1);
        this.peekHeightGestureInsetBuffer = context.getResources().getDimensionPixelSize(R.dimen.mtrl_min_touch_target_size);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.BottomSheetBehavior_Layout);
        if (obtainStyledAttributes.hasValue(3)) {
            this.backgroundTint = IntOffsetKt.getColorStateList(context, obtainStyledAttributes, 3);
        }
        if (obtainStyledAttributes.hasValue(24)) {
            this.shapeAppearanceModelDefault = ShapeAppearanceModel.builder(context, attributeSet, R.attr.bottomSheetStyle, R.style.Widget_Design_BottomSheet_Modal).build();
        }
        ShapeAppearanceModel shapeAppearanceModel = this.shapeAppearanceModelDefault;
        if (shapeAppearanceModel != null) {
            MaterialShapeDrawable materialShapeDrawable = new MaterialShapeDrawable(shapeAppearanceModel);
            this.materialShapeDrawable = materialShapeDrawable;
            materialShapeDrawable.initializeElevationOverlay(context);
            ColorStateList colorStateList = this.backgroundTint;
            if (colorStateList != null) {
                this.materialShapeDrawable.setFillColor(colorStateList);
            } else {
                TypedValue typedValue = new TypedValue();
                context.getTheme().resolveAttribute(android.R.attr.colorBackground, typedValue, true);
                this.materialShapeDrawable.setTint(typedValue.data);
            }
        }
        ValueAnimator ofFloat = ValueAnimator.ofFloat(calculateInterpolationWithCornersRemoved(), 1.0f);
        this.interpolatorAnimator = ofFloat;
        ofFloat.setDuration(500L);
        this.interpolatorAnimator.addUpdateListener(new TextInputLayout.AnonymousClass4(i2, this));
        this.elevation = obtainStyledAttributes.getDimension(2, -1.0f);
        if (obtainStyledAttributes.hasValue(0)) {
            this.maxWidth = obtainStyledAttributes.getDimensionPixelSize(0, -1);
        }
        if (obtainStyledAttributes.hasValue(1)) {
            this.maxHeight = obtainStyledAttributes.getDimensionPixelSize(1, -1);
        }
        TypedValue peekValue = obtainStyledAttributes.peekValue(12);
        if (peekValue == null || (i = peekValue.data) != -1) {
            setPeekHeight(obtainStyledAttributes.getDimensionPixelSize(12, -1));
        } else {
            setPeekHeight(i);
        }
        boolean z = obtainStyledAttributes.getBoolean(10, false);
        if (this.hideable != z) {
            this.hideable = z;
            if (!z && this.state == 5) {
                setState(4);
            }
            updateAccessibilityActions();
        }
        this.gestureInsetBottomIgnored = obtainStyledAttributes.getBoolean(16, false);
        boolean z2 = obtainStyledAttributes.getBoolean(8, true);
        if (this.fitToContents != z2) {
            this.fitToContents = z2;
            if (this.viewRef != null) {
                calculateCollapsedOffset();
            }
            setStateInternal((this.fitToContents && this.state == 6) ? 3 : this.state);
            updateDrawableForTargetState(this.state, true);
            updateAccessibilityActions();
        }
        this.skipCollapsed = obtainStyledAttributes.getBoolean(15, false);
        this.draggable = obtainStyledAttributes.getBoolean(5, true);
        this.draggableOnNestedScroll = obtainStyledAttributes.getBoolean(6, true);
        this.saveFlags = obtainStyledAttributes.getInt(13, 0);
        float f = obtainStyledAttributes.getFloat(9, 0.5f);
        if (f <= 0.0f || f >= 1.0f) {
            UriKt$$ExternalSyntheticBUOutline0.m("ratio must be a float value between 0 and 1");
            throw null;
        }
        this.halfExpandedRatio = f;
        if (this.viewRef != null) {
            this.halfExpandedOffset = (int) ((1.0f - f) * this.parentHeight);
        }
        TypedValue peekValue2 = obtainStyledAttributes.peekValue(7);
        if (peekValue2 == null || peekValue2.type != 16) {
            int dimensionPixelOffset = obtainStyledAttributes.getDimensionPixelOffset(7, 0);
            if (dimensionPixelOffset < 0) {
                UriKt$$ExternalSyntheticBUOutline0.m("offset must be greater than or equal to 0");
                throw null;
            }
            this.expandedOffset = dimensionPixelOffset;
            updateDrawableForTargetState(this.state, true);
        } else {
            int i3 = peekValue2.data;
            if (i3 < 0) {
                UriKt$$ExternalSyntheticBUOutline0.m("offset must be greater than or equal to 0");
                throw null;
            }
            this.expandedOffset = i3;
            updateDrawableForTargetState(this.state, true);
        }
        this.significantVelocityThreshold = obtainStyledAttributes.getInt(14, 500);
        this.multipleScrollingChildrenSupported = obtainStyledAttributes.getBoolean(11, false);
        this.autoExpandOnRequestChildRectangleOffscreen = obtainStyledAttributes.getBoolean(4, true);
        this.paddingBottomSystemWindowInsets = obtainStyledAttributes.getBoolean(20, false);
        this.paddingLeftSystemWindowInsets = obtainStyledAttributes.getBoolean(21, false);
        this.paddingRightSystemWindowInsets = obtainStyledAttributes.getBoolean(22, false);
        this.paddingTopSystemWindowInsets = obtainStyledAttributes.getBoolean(23, true);
        this.marginLeftSystemWindowInsets = obtainStyledAttributes.getBoolean(17, false);
        this.marginRightSystemWindowInsets = obtainStyledAttributes.getBoolean(18, false);
        this.marginTopSystemWindowInsets = obtainStyledAttributes.getBoolean(19, false);
        this.shouldRemoveExpandedCorners = obtainStyledAttributes.getBoolean(26, true);
        obtainStyledAttributes.recycle();
        this.maximumVelocity = ViewConfiguration.get(context).getScaledMaximumFlingVelocity();
    }

    public static View findScrollingChild(View view) {
        if (view.getVisibility() != 0) {
            return null;
        }
        if (view.isNestedScrollingEnabled()) {
            return view;
        }
        if (!(view instanceof ViewGroup)) {
            return null;
        }
        ViewGroup viewGroup = (ViewGroup) view;
        int childCount = viewGroup.getChildCount();
        for (int i = 0; i < childCount; i++) {
            View findScrollingChild = findScrollingChild(viewGroup.getChildAt(i));
            if (findScrollingChild != null) {
                return findScrollingChild;
            }
        }
        return null;
    }

    public static int getChildMeasureSpec(int i, int i2, int i3, int i4) {
        int childMeasureSpec = ViewGroup.getChildMeasureSpec(i, i2, i4);
        if (i3 == -1) {
            return childMeasureSpec;
        }
        int mode = View.MeasureSpec.getMode(childMeasureSpec);
        int size = View.MeasureSpec.getSize(childMeasureSpec);
        if (mode == 1073741824) {
            return View.MeasureSpec.makeMeasureSpec(Math.min(size, i3), 1073741824);
        }
        if (size != 0) {
            i3 = Math.min(size, i3);
        }
        return View.MeasureSpec.makeMeasureSpec(i3, Integer.MIN_VALUE);
    }

    public final int addAccessibilityActionForState(View view, int i, int i2) {
        int i3;
        String string = view.getResources().getString(i);
        PriorityQueue priorityQueue = new PriorityQueue(i2, 13, this);
        ArrayList actionList = ViewCompat.getActionList(view);
        int i4 = 0;
        while (true) {
            if (i4 >= actionList.size()) {
                int i5 = 0;
                int i6 = -1;
                while (true) {
                    int[] iArr = ViewCompat.ACCESSIBILITY_ACTIONS_RESOURCE_IDS;
                    if (i5 >= 32 || i6 != -1) {
                        break;
                    }
                    int i7 = iArr[i5];
                    boolean z = true;
                    for (int i8 = 0; i8 < actionList.size(); i8++) {
                        z &= ((AccessibilityNodeInfoCompat.AccessibilityActionCompat) actionList.get(i8)).getId() != i7;
                    }
                    if (z) {
                        i6 = i7;
                    }
                    i5++;
                }
                i3 = i6;
            } else {
                if (TextUtils.equals(string, ((AccessibilityNodeInfo.AccessibilityAction) ((AccessibilityNodeInfoCompat.AccessibilityActionCompat) actionList.get(i4)).mAction).getLabel())) {
                    i3 = ((AccessibilityNodeInfoCompat.AccessibilityActionCompat) actionList.get(i4)).getId();
                    break;
                }
                i4++;
            }
        }
        if (i3 != -1) {
            AccessibilityNodeInfoCompat.AccessibilityActionCompat accessibilityActionCompat = new AccessibilityNodeInfoCompat.AccessibilityActionCompat(null, i3, string, priorityQueue, null);
            View.AccessibilityDelegate accessibilityDelegateInternal = ViewCompat.getAccessibilityDelegateInternal(view);
            AccessibilityDelegateCompat accessibilityDelegateCompat = accessibilityDelegateInternal == null ? null : accessibilityDelegateInternal instanceof AccessibilityDelegateCompat.AccessibilityDelegateAdapter ? ((AccessibilityDelegateCompat.AccessibilityDelegateAdapter) accessibilityDelegateInternal).mCompat : new AccessibilityDelegateCompat(accessibilityDelegateInternal);
            if (accessibilityDelegateCompat == null) {
                accessibilityDelegateCompat = new AccessibilityDelegateCompat();
            }
            ViewCompat.setAccessibilityDelegate(view, accessibilityDelegateCompat);
            ViewCompat.removeActionWithId(view, accessibilityActionCompat.getId());
            ViewCompat.getActionList(view).add(accessibilityActionCompat);
            ViewCompat.notifyViewAccessibilityStateChangedIfNeeded(view, 0);
        }
        return i3;
    }

    public final void calculateCollapsedOffset() {
        int calculatePeekHeight = calculatePeekHeight();
        boolean z = this.fitToContents;
        int i = this.parentHeight;
        if (z) {
            this.collapsedOffset = Math.max(i - calculatePeekHeight, this.fitToContentsOffset);
        } else {
            this.collapsedOffset = i - calculatePeekHeight;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x0048  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0064  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x004b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final float calculateInterpolationWithCornersRemoved() {
        /*
            r6 = this;
            r0 = 0
            com.google.android.material.shape.MaterialShapeDrawable r1 = r6.materialShapeDrawable
            if (r1 == 0) goto L78
            java.lang.ref.WeakReference r2 = r6.viewRef
            if (r2 == 0) goto L78
            java.lang.Object r2 = r2.get()
            if (r2 == 0) goto L78
            int r2 = android.os.Build.VERSION.SDK_INT
            r3 = 31
            if (r2 < r3) goto L78
            java.lang.ref.WeakReference r2 = r6.viewRef
            java.lang.Object r2 = r2.get()
            android.view.View r2 = (android.view.View) r2
            boolean r6 = r6.isAtTopOfScreen()
            if (r6 == 0) goto L78
            android.view.WindowInsets r6 = r2.getRootWindowInsets()
            if (r6 == 0) goto L78
            float r2 = r1.getTopLeftCornerResolvedSize()
            r3 = 0
            android.view.RoundedCorner r4 = r6.getRoundedCorner(r3)
            if (r4 == 0) goto L43
            int r4 = r4.getRadius()
            float r4 = (float) r4
            int r5 = (r4 > r0 ? 1 : (r4 == r0 ? 0 : -1))
            if (r5 <= 0) goto L43
            int r5 = (r2 > r0 ? 1 : (r2 == r0 ? 0 : -1))
            if (r5 <= 0) goto L43
            float r4 = r4 / r2
            goto L44
        L43:
            r4 = r0
        L44:
            float[] r2 = r1.springAnimatedCornerSizes
            if (r2 == 0) goto L4b
            r1 = r2[r3]
            goto L5d
        L4b:
            com.google.android.material.shape.MaterialShapeDrawable$MaterialShapeDrawableState r2 = r1.drawableState
            com.google.android.material.shape.ShapeAppearance r2 = r2.shapeAppearance
            com.google.android.material.shape.ShapeAppearanceModel r2 = r2.getDefaultShape()
            com.google.android.material.shape.CornerSize r2 = r2.topRightCornerSize
            android.graphics.RectF r1 = r1.getBoundsAsRectF()
            float r1 = r2.getCornerSize(r1)
        L5d:
            r2 = 1
            android.view.RoundedCorner r6 = r6.getRoundedCorner(r2)
            if (r6 == 0) goto L73
            int r6 = r6.getRadius()
            float r6 = (float) r6
            int r2 = (r6 > r0 ? 1 : (r6 == r0 ? 0 : -1))
            if (r2 <= 0) goto L73
            int r2 = (r1 > r0 ? 1 : (r1 == r0 ? 0 : -1))
            if (r2 <= 0) goto L73
            float r0 = r6 / r1
        L73:
            float r6 = java.lang.Math.max(r4, r0)
            return r6
        L78:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.bottomsheet.BottomSheetBehavior.calculateInterpolationWithCornersRemoved():float");
    }

    public final int calculatePeekHeight() {
        int i;
        int i2;
        int i3;
        if (this.peekHeightAuto) {
            i = Math.min(Math.max(this.peekHeightMin, this.parentHeight - ((this.parentWidth * 9) / 16)), this.childHeight);
            i2 = this.insetBottom;
        } else {
            if (!this.gestureInsetBottomIgnored && !this.paddingBottomSystemWindowInsets && (i3 = this.gestureInsetBottom) > 0) {
                return Math.max(this.peekHeight, i3 + this.peekHeightGestureInsetBuffer);
            }
            i = this.peekHeight;
            i2 = this.insetBottom;
        }
        return i + i2;
    }

    public final void dispatchOnSlide(int i) {
        View view = (View) this.viewRef.get();
        if (view != null) {
            ArrayList arrayList = this.callbacks;
            if (arrayList.isEmpty()) {
                return;
            }
            int i2 = this.collapsedOffset;
            if (i <= i2 && i2 != getExpandedOffset()) {
                getExpandedOffset();
            }
            for (int i3 = 0; i3 < arrayList.size(); i3++) {
                ((BottomSheetCallback) arrayList.get(i3)).onSlide(view);
            }
        }
    }

    public final int getExpandedOffset() {
        if (this.fitToContents) {
            return this.fitToContentsOffset;
        }
        return Math.max(this.expandedOffset, this.paddingTopSystemWindowInsets ? 0 : this.insetTop);
    }

    public final int getTopOffsetForState(int i) {
        if (i == 3) {
            return getExpandedOffset();
        }
        if (i == 4) {
            return this.collapsedOffset;
        }
        if (i == 5) {
            return this.parentHeight;
        }
        if (i == 6) {
            return this.halfExpandedOffset;
        }
        UriKt$$ExternalSyntheticBUOutline0.m(CameraDevices$CC.m("Invalid state to get top offset: ", i));
        return 0;
    }

    public final boolean isAtTopOfScreen() {
        WeakReference weakReference = this.viewRef;
        if (weakReference != null && weakReference.get() != null) {
            int[] iArr = new int[2];
            ((View) this.viewRef.get()).getLocationOnScreen(iArr);
            if (iArr[1] == 0) {
                return true;
            }
        }
        return false;
    }

    public final boolean isViewScrollingChild(View view) {
        Iterator it = this.nestedScrollingChildrenRef.iterator();
        while (it.hasNext()) {
            if (((WeakReference) it.next()).get() == view) {
                return true;
            }
        }
        return false;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public final void onAttachedToLayoutParams(CoordinatorLayout.LayoutParams layoutParams) {
        this.viewRef = null;
        this.viewDragHelper = null;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public final void onDetachedFromLayoutParams() {
        this.viewRef = null;
        this.viewDragHelper = null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:42:0x00fb, code lost:
    
        if (r1.get() != null) goto L85;
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x0121, code lost:
    
        if (r18.isPointInChildBounds(r6, (int) r20.getX(), (int) r20.getY()) != false) goto L85;
     */
    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean onInterceptTouchEvent(androidx.coordinatorlayout.widget.CoordinatorLayout r18, android.view.View r19, android.view.MotionEvent r20) {
        /*
            Method dump skipped, instructions count: 324
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.bottomsheet.BottomSheetBehavior.onInterceptTouchEvent(androidx.coordinatorlayout.widget.CoordinatorLayout, android.view.View, android.view.MotionEvent):boolean");
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public boolean onLayoutChild(CoordinatorLayout coordinatorLayout, View view, int i) {
        if (coordinatorLayout.getFitsSystemWindows() && !view.getFitsSystemWindows()) {
            view.setFitsSystemWindows(true);
        }
        int i2 = 0;
        if (this.viewRef == null) {
            this.peekHeightMin = coordinatorLayout.getResources().getDimensionPixelSize(R.dimen.design_bottom_sheet_peek_height_min);
            boolean z = (Build.VERSION.SDK_INT < 29 || this.gestureInsetBottomIgnored || this.peekHeightAuto) ? false : true;
            if (this.paddingBottomSystemWindowInsets || this.paddingLeftSystemWindowInsets || this.paddingRightSystemWindowInsets || this.marginLeftSystemWindowInsets || this.marginRightSystemWindowInsets || this.marginTopSystemWindowInsets || z) {
                LocalFolder.AnonymousClass8 anonymousClass8 = new LocalFolder.AnonymousClass8(10, this, z);
                int paddingStart = view.getPaddingStart();
                view.getPaddingTop();
                int paddingEnd = view.getPaddingEnd();
                int paddingBottom = view.getPaddingBottom();
                MemorySizeCalculator memorySizeCalculator = new MemorySizeCalculator();
                memorySizeCalculator.bitmapPoolSize = paddingStart;
                memorySizeCalculator.memoryCacheSize = paddingEnd;
                memorySizeCalculator.arrayPoolSize = paddingBottom;
                BinaryBitmap binaryBitmap = new BinaryBitmap(18, anonymousClass8, memorySizeCalculator);
                WeakHashMap weakHashMap = ViewCompat.sViewPropertyAnimatorMap;
                ViewCompat.Api21Impl.setOnApplyWindowInsetsListener(view, binaryBitmap);
                if (view.isAttachedToWindow()) {
                    view.requestApplyInsets();
                } else {
                    view.addOnAttachStateChangeListener(new ViewUtils.AnonymousClass3());
                }
            }
            ViewCompat.setWindowInsetsAnimationCallback(view, new InsetsAnimationCallback(view));
            this.viewRef = new WeakReference(view);
            new MaterialSideContainerBackHelper(view);
            Resources resources = view.getResources();
            resources.getDimension(R.dimen.m3_back_progress_bottom_container_max_scale_x_distance);
            resources.getDimension(R.dimen.m3_back_progress_bottom_container_max_scale_y_distance);
            MaterialShapeDrawable materialShapeDrawable = this.materialShapeDrawable;
            if (materialShapeDrawable != null) {
                view.setBackground(materialShapeDrawable);
                float f = this.elevation;
                if (f == -1.0f) {
                    f = view.getElevation();
                }
                materialShapeDrawable.setElevation(f);
            } else {
                ColorStateList colorStateList = this.backgroundTint;
                if (colorStateList != null) {
                    view.setBackgroundTintList(colorStateList);
                }
            }
            updateAccessibilityActions();
            if (view.getImportantForAccessibility() == 0) {
                view.setImportantForAccessibility(1);
            }
        }
        if (this.viewDragHelper == null) {
            this.viewDragHelper = new ViewDragHelper(coordinatorLayout.getContext(), coordinatorLayout, this.dragCallback);
        }
        int top = view.getTop();
        coordinatorLayout.onLayoutChild(view, i);
        this.parentWidth = coordinatorLayout.getWidth();
        this.parentHeight = coordinatorLayout.getHeight();
        int height = view.getHeight();
        this.childHeight = height;
        int i3 = this.parentHeight;
        int i4 = i3 - height;
        int i5 = this.insetTop;
        if (i4 < i5) {
            boolean z2 = this.paddingTopSystemWindowInsets;
            int i6 = this.maxHeight;
            if (z2) {
                if (i6 != -1) {
                    i3 = Math.min(i3, i6);
                }
                this.childHeight = i3;
            } else {
                int i7 = i3 - i5;
                if (i6 != -1) {
                    i7 = Math.min(i7, i6);
                }
                this.childHeight = i7;
            }
        }
        this.fitToContentsOffset = Math.max(0, this.parentHeight - this.childHeight);
        this.halfExpandedOffset = (int) ((1.0f - this.halfExpandedRatio) * this.parentHeight);
        calculateCollapsedOffset();
        int i8 = this.state;
        if (i8 == 3) {
            int expandedOffset = getExpandedOffset();
            WeakHashMap weakHashMap2 = ViewCompat.sViewPropertyAnimatorMap;
            view.offsetTopAndBottom(expandedOffset);
        } else if (i8 == 6) {
            int i9 = this.halfExpandedOffset;
            WeakHashMap weakHashMap3 = ViewCompat.sViewPropertyAnimatorMap;
            view.offsetTopAndBottom(i9);
        } else if (this.hideable && i8 == 5) {
            int i10 = this.parentHeight;
            WeakHashMap weakHashMap4 = ViewCompat.sViewPropertyAnimatorMap;
            view.offsetTopAndBottom(i10);
        } else if (i8 == 4) {
            int i11 = this.collapsedOffset;
            WeakHashMap weakHashMap5 = ViewCompat.sViewPropertyAnimatorMap;
            view.offsetTopAndBottom(i11);
        } else if (i8 == 1 || i8 == 2) {
            int top2 = top - view.getTop();
            WeakHashMap weakHashMap6 = ViewCompat.sViewPropertyAnimatorMap;
            view.offsetTopAndBottom(top2);
        }
        updateDrawableForTargetState(this.state, false);
        ArrayList arrayList = this.nestedScrollingChildrenRef;
        arrayList.clear();
        if (this.multipleScrollingChildrenSupported) {
            populateScrollingChildren(view);
        } else {
            arrayList.add(new WeakReference(findScrollingChild(view)));
        }
        while (true) {
            ArrayList arrayList2 = this.callbacks;
            if (i2 >= arrayList2.size()) {
                return true;
            }
            ((BottomSheetCallback) arrayList2.get(i2)).getClass();
            i2++;
        }
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public final boolean onMeasureChild(CoordinatorLayout coordinatorLayout, View view, int i, int i2, int i3) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        view.measure(getChildMeasureSpec(i, coordinatorLayout.getPaddingRight() + coordinatorLayout.getPaddingLeft() + marginLayoutParams.leftMargin + marginLayoutParams.rightMargin + i2, this.maxWidth, marginLayoutParams.width), getChildMeasureSpec(i3, coordinatorLayout.getPaddingBottom() + coordinatorLayout.getPaddingTop() + marginLayoutParams.topMargin + marginLayoutParams.bottomMargin, this.maxHeight, marginLayoutParams.height));
        return true;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public final boolean onNestedPreFling(View view) {
        Iterator it = this.nestedScrollingChildrenRef.iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            if (((WeakReference) it.next()).get() != null) {
                if (!isViewScrollingChild(view) || this.state == 3 || this.draggableOnNestedScrollLastDragIgnored) {
                    break;
                }
                return true;
            }
        }
        return false;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public final void onNestedPreScroll(CoordinatorLayout coordinatorLayout, View view, View view2, int i, int i2, int[] iArr, int i3) {
        boolean isViewScrollingChild;
        if (i3 != 1 && (isViewScrollingChild = isViewScrollingChild(view2))) {
            int top = view.getTop();
            int i4 = top - i2;
            boolean z = this.draggableOnNestedScroll;
            if (i2 > 0) {
                if (!this.nestedScrolled && !z && isViewScrollingChild && view2.canScrollVertically(1)) {
                    this.draggableOnNestedScrollLastDragIgnored = true;
                    return;
                }
                if (i4 < getExpandedOffset()) {
                    int expandedOffset = top - getExpandedOffset();
                    iArr[1] = expandedOffset;
                    WeakHashMap weakHashMap = ViewCompat.sViewPropertyAnimatorMap;
                    view.offsetTopAndBottom(-expandedOffset);
                    setStateInternal(3);
                } else {
                    if (!this.draggable) {
                        return;
                    }
                    iArr[1] = i2;
                    WeakHashMap weakHashMap2 = ViewCompat.sViewPropertyAnimatorMap;
                    view.offsetTopAndBottom(-i2);
                    setStateInternal(1);
                }
            } else if (i2 < 0) {
                boolean canScrollVertically = view2.canScrollVertically(-1);
                if (!this.nestedScrolled && !z && isViewScrollingChild && canScrollVertically) {
                    this.draggableOnNestedScrollLastDragIgnored = true;
                    return;
                }
                if (!canScrollVertically) {
                    int i5 = this.collapsedOffset;
                    if (i4 > i5 && !this.hideable) {
                        int i6 = top - i5;
                        iArr[1] = i6;
                        WeakHashMap weakHashMap3 = ViewCompat.sViewPropertyAnimatorMap;
                        view.offsetTopAndBottom(-i6);
                        setStateInternal(4);
                    } else {
                        if (!this.draggable) {
                            return;
                        }
                        iArr[1] = i2;
                        WeakHashMap weakHashMap4 = ViewCompat.sViewPropertyAnimatorMap;
                        view.offsetTopAndBottom(-i2);
                        setStateInternal(1);
                    }
                }
            }
            dispatchOnSlide(view.getTop());
            this.lastNestedScrollDy = i2;
            this.nestedScrolled = true;
            this.draggableOnNestedScrollLastDragIgnored = false;
        }
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public final boolean onRequestChildRectangleOnScreen(CoordinatorLayout coordinatorLayout, View view, Rect rect, boolean z) {
        if (!this.autoExpandOnRequestChildRectangleOffscreen || view.isInTouchMode()) {
            return false;
        }
        int i = this.state;
        if (i != 4 && i != 6) {
            return false;
        }
        Rect rect2 = this.sheetRect;
        if (view.getLocalVisibleRect(rect2)) {
            WeakHashMap weakHashMap = ViewCompat.sViewPropertyAnimatorMap;
            WindowInsetsCompat rootWindowInsets = ViewCompat.Api23Impl.getRootWindowInsets(view);
            if (rootWindowInsets != null) {
                rect2.bottom -= rootWindowInsets.mImpl.getInsets(519).bottom;
            }
            if (rect.top >= rect2.top && rect.bottom <= rect2.bottom) {
                return false;
            }
        }
        setState(3);
        return true;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public final void onRestoreInstanceState(View view, Parcelable parcelable) {
        SavedState savedState = (SavedState) parcelable;
        int i = this.saveFlags;
        if (i != 0) {
            if (i == -1 || (i & 1) == 1) {
                this.peekHeight = savedState.peekHeight;
            }
            if (i == -1 || (i & 2) == 2) {
                this.fitToContents = savedState.fitToContents;
            }
            if (i == -1 || (i & 4) == 4) {
                this.hideable = savedState.hideable;
            }
            if (i == -1 || (i & 8) == 8) {
                this.skipCollapsed = savedState.skipCollapsed;
            }
        }
        int i2 = savedState.state;
        if (i2 == 1 || i2 == 2) {
            this.state = 4;
        } else {
            this.state = i2;
        }
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public final Parcelable onSaveInstanceState(View view) {
        AbsSavedState absSavedState = View.BaseSavedState.EMPTY_STATE;
        return new SavedState(this);
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public final boolean onStartNestedScroll(CoordinatorLayout coordinatorLayout, View view, View view2, int i, int i2) {
        this.lastNestedScrollDy = 0;
        this.nestedScrolled = false;
        return (i & 2) != 0;
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x002c, code lost:
    
        if (r4.getTop() <= r2.halfExpandedOffset) goto L49;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x006d, code lost:
    
        if (java.lang.Math.abs(r3 - r2.fitToContentsOffset) < java.lang.Math.abs(r3 - r2.collapsedOffset)) goto L49;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x007c, code lost:
    
        if (r3 < java.lang.Math.abs(r3 - r2.collapsedOffset)) goto L49;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x008c, code lost:
    
        if (java.lang.Math.abs(r3 - r1) < java.lang.Math.abs(r3 - r2.collapsedOffset)) goto L48;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x00a8, code lost:
    
        if (java.lang.Math.abs(r3 - r2.halfExpandedOffset) < java.lang.Math.abs(r3 - r2.collapsedOffset)) goto L48;
     */
    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void onStopNestedScroll(androidx.coordinatorlayout.widget.CoordinatorLayout r3, android.view.View r4, android.view.View r5, int r6) {
        /*
            r2 = this;
            int r3 = r4.getTop()
            int r6 = r2.getExpandedOffset()
            r0 = 3
            if (r3 != r6) goto Lf
            r2.setStateInternal(r0)
            return
        Lf:
            boolean r3 = r2.isViewScrollingChild(r5)
            if (r3 == 0) goto Lb1
            boolean r3 = r2.nestedScrolled
            if (r3 != 0) goto L1b
            goto Lb1
        L1b:
            int r3 = r2.lastNestedScrollDy
            r5 = 6
            if (r3 <= 0) goto L30
            boolean r3 = r2.fitToContents
            if (r3 == 0) goto L26
            goto Lab
        L26:
            int r3 = r4.getTop()
            int r6 = r2.halfExpandedOffset
            if (r3 <= r6) goto Lab
            goto Laa
        L30:
            boolean r3 = r2.hideable
            if (r3 == 0) goto L51
            android.view.VelocityTracker r3 = r2.velocityTracker
            if (r3 != 0) goto L3a
            r3 = 0
            goto L49
        L3a:
            r6 = 1000(0x3e8, float:1.401E-42)
            float r1 = r2.maximumVelocity
            r3.computeCurrentVelocity(r6, r1)
            android.view.VelocityTracker r3 = r2.velocityTracker
            int r6 = r2.activePointerId
            float r3 = r3.getYVelocity(r6)
        L49:
            boolean r3 = r2.shouldHide(r4, r3)
            if (r3 == 0) goto L51
            r0 = 5
            goto Lab
        L51:
            int r3 = r2.lastNestedScrollDy
            r6 = 4
            if (r3 != 0) goto L8f
            int r3 = r4.getTop()
            boolean r1 = r2.fitToContents
            if (r1 == 0) goto L70
            int r5 = r2.fitToContentsOffset
            int r5 = r3 - r5
            int r5 = java.lang.Math.abs(r5)
            int r1 = r2.collapsedOffset
            int r3 = r3 - r1
            int r3 = java.lang.Math.abs(r3)
            if (r5 >= r3) goto L93
            goto Lab
        L70:
            int r1 = r2.halfExpandedOffset
            if (r3 >= r1) goto L7f
            int r6 = r2.collapsedOffset
            int r6 = r3 - r6
            int r6 = java.lang.Math.abs(r6)
            if (r3 >= r6) goto Laa
            goto Lab
        L7f:
            int r0 = r3 - r1
            int r0 = java.lang.Math.abs(r0)
            int r1 = r2.collapsedOffset
            int r3 = r3 - r1
            int r3 = java.lang.Math.abs(r3)
            if (r0 >= r3) goto L93
            goto Laa
        L8f:
            boolean r3 = r2.fitToContents
            if (r3 == 0) goto L95
        L93:
            r0 = r6
            goto Lab
        L95:
            int r3 = r4.getTop()
            int r0 = r2.halfExpandedOffset
            int r0 = r3 - r0
            int r0 = java.lang.Math.abs(r0)
            int r1 = r2.collapsedOffset
            int r3 = r3 - r1
            int r3 = java.lang.Math.abs(r3)
            if (r0 >= r3) goto L93
        Laa:
            r0 = r5
        Lab:
            r3 = 0
            r2.startSettling(r4, r0, r3)
            r2.nestedScrolled = r3
        Lb1:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.bottomsheet.BottomSheetBehavior.onStopNestedScroll(androidx.coordinatorlayout.widget.CoordinatorLayout, android.view.View, android.view.View, int):void");
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public final boolean onTouchEvent(CoordinatorLayout coordinatorLayout, View view, MotionEvent motionEvent) {
        if (!view.isShown()) {
            return false;
        }
        int actionMasked = motionEvent.getActionMasked();
        int i = this.state;
        if (i == 1 && actionMasked == 0) {
            return true;
        }
        ViewDragHelper viewDragHelper = this.viewDragHelper;
        if (viewDragHelper != null && (this.draggable || i == 1)) {
            viewDragHelper.processTouchEvent(motionEvent);
        }
        if (actionMasked == 0) {
            this.activePointerId = -1;
            this.initialY = -1;
            this.currentTouchedScrollChildRef = null;
            VelocityTracker velocityTracker = this.velocityTracker;
            if (velocityTracker != null) {
                velocityTracker.recycle();
                this.velocityTracker = null;
            }
        }
        if (this.velocityTracker == null) {
            this.velocityTracker = VelocityTracker.obtain();
        }
        this.velocityTracker.addMovement(motionEvent);
        if (this.viewDragHelper != null && ((this.draggable || this.state == 1) && actionMasked == 2 && !this.ignoreEvents)) {
            float abs = Math.abs(this.initialY - motionEvent.getY());
            ViewDragHelper viewDragHelper2 = this.viewDragHelper;
            if (abs > viewDragHelper2.mTouchSlop) {
                viewDragHelper2.captureChildView(view, motionEvent.getPointerId(motionEvent.getActionIndex()));
            }
        }
        return !this.ignoreEvents;
    }

    public final void populateScrollingChildren(View view) {
        if (view.getVisibility() != 0) {
            return;
        }
        if (view.isNestedScrollingEnabled()) {
            this.nestedScrollingChildrenRef.add(new WeakReference(view));
        } else if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            for (int i = 0; i < viewGroup.getChildCount(); i++) {
                populateScrollingChildren(viewGroup.getChildAt(i));
            }
        }
    }

    public final void setPeekHeight(int i) {
        boolean z = this.peekHeightAuto;
        if (i == -1) {
            if (z) {
                return;
            } else {
                this.peekHeightAuto = true;
            }
        } else {
            if (!z && this.peekHeight == i) {
                return;
            }
            this.peekHeightAuto = false;
            this.peekHeight = Math.max(0, i);
        }
        updatePeekHeight();
    }

    public final void setState(int i) {
        if (i == 1 || i == 2) {
            throw new IllegalArgumentException(CameraDevices$CC.m(new StringBuilder("STATE_"), i == 1 ? "DRAGGING" : "SETTLING", " should not be set externally."));
        }
        if (!this.hideable && i == 5) {
            Log.w("BottomSheetBehavior", "Cannot set state: " + i);
            return;
        }
        int i2 = 3;
        int i3 = (i == 6 && this.fitToContents && getTopOffsetForState(i) <= this.fitToContentsOffset) ? 3 : i;
        WeakReference weakReference = this.viewRef;
        if (weakReference == null || weakReference.get() == null) {
            setStateInternal(i);
            return;
        }
        View view = (View) this.viewRef.get();
        ItemTouchHelper.AnonymousClass4 anonymousClass4 = new ItemTouchHelper.AnonymousClass4(i3, i2, this, view);
        ViewParent parent = view.getParent();
        if (parent != null && parent.isLayoutRequested() && view.isAttachedToWindow()) {
            view.post(anonymousClass4);
        } else {
            anonymousClass4.run();
        }
    }

    public final void setStateInternal(int i) {
        View view;
        if (this.state == i) {
            return;
        }
        this.state = i;
        if (i != 4 && i != 3 && i != 6) {
            boolean z = this.hideable;
        }
        WeakReference weakReference = this.viewRef;
        if (weakReference == null || (view = (View) weakReference.get()) == null) {
            return;
        }
        int i2 = 0;
        if (i == 3) {
            updateImportantForAccessibility(true);
        } else if (i == 6 || i == 5 || i == 4) {
            updateImportantForAccessibility(false);
        }
        updateDrawableForTargetState(i, true);
        while (true) {
            ArrayList arrayList = this.callbacks;
            if (i2 >= arrayList.size()) {
                updateAccessibilityActions();
                return;
            } else {
                ((BottomSheetCallback) arrayList.get(i2)).onStateChanged(view, i);
                i2++;
            }
        }
    }

    public final boolean shouldHide(View view, float f) {
        if (this.skipCollapsed) {
            return true;
        }
        if (view.getTop() < this.collapsedOffset) {
            return false;
        }
        return Math.abs(((f * this.hideFriction) + ((float) view.getTop())) - ((float) this.collapsedOffset)) / ((float) calculatePeekHeight()) > 0.5f;
    }

    public final void startSettling(View view, int i, boolean z) {
        int topOffsetForState = getTopOffsetForState(i);
        ViewDragHelper viewDragHelper = this.viewDragHelper;
        if (viewDragHelper == null || (!z ? viewDragHelper.smoothSlideViewTo(view, view.getLeft(), topOffsetForState) : viewDragHelper.settleCapturedViewAt(view.getLeft(), topOffsetForState))) {
            setStateInternal(i);
            return;
        }
        setStateInternal(2);
        updateDrawableForTargetState(i, true);
        this.stateSettlingTracker.continueSettlingToState(i);
    }

    public final void updateAccessibilityActions() {
        View view;
        WeakReference weakReference = this.viewRef;
        if (weakReference == null || (view = (View) weakReference.get()) == null) {
            return;
        }
        ViewCompat.removeActionWithId(view, 1048576);
        ViewCompat.notifyViewAccessibilityStateChangedIfNeeded(view, 0);
        ViewCompat.removeActionWithId(view, 524288);
        ViewCompat.notifyViewAccessibilityStateChangedIfNeeded(view, 0);
        ViewCompat.removeActionWithId(view, 262144);
        ViewCompat.notifyViewAccessibilityStateChangedIfNeeded(view, 0);
        SparseIntArray sparseIntArray = this.expandActionIds;
        int i = sparseIntArray.get(0, -1);
        if (i != -1) {
            ViewCompat.removeActionWithId(view, i);
            ViewCompat.notifyViewAccessibilityStateChangedIfNeeded(view, 0);
            sparseIntArray.delete(0);
        }
        SparseIntArray sparseIntArray2 = this.expandHalfwayActionIds;
        int i2 = sparseIntArray2.get(0, -1);
        if (i2 != -1) {
            ViewCompat.removeActionWithId(view, i2);
            ViewCompat.notifyViewAccessibilityStateChangedIfNeeded(view, 0);
            sparseIntArray2.delete(0);
        }
        SparseIntArray sparseIntArray3 = this.collapseActionIds;
        int i3 = sparseIntArray3.get(0, -1);
        if (i3 != -1) {
            ViewCompat.removeActionWithId(view, i3);
            ViewCompat.notifyViewAccessibilityStateChangedIfNeeded(view, 0);
            sparseIntArray3.delete(0);
        }
        if (!this.fitToContents && this.state != 6) {
            sparseIntArray2.put(0, addAccessibilityActionForState(view, R.string.bottomsheet_action_expand_halfway, 6));
        }
        if (this.hideable) {
            int i4 = 5;
            if (this.state != 5) {
                ViewCompat.replaceAccessibilityAction(view, AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_DISMISS, new PriorityQueue(i4, 13, this));
            }
        }
        int i5 = this.state;
        if (i5 == 3) {
            if (this.skipCollapsed && this.hideable) {
                return;
            }
            sparseIntArray3.put(0, addAccessibilityActionForState(view, R.string.bottomsheet_action_collapse, 4));
            return;
        }
        if (i5 == 4) {
            sparseIntArray.put(0, addAccessibilityActionForState(view, R.string.bottomsheet_action_expand, 3));
        } else {
            if (i5 != 6) {
                return;
            }
            if (!this.skipCollapsed || !this.hideable) {
                sparseIntArray3.put(0, addAccessibilityActionForState(view, R.string.bottomsheet_action_collapse, 4));
            }
            sparseIntArray.put(0, addAccessibilityActionForState(view, R.string.bottomsheet_action_expand, 3));
        }
    }

    public final void updateDrawableForTargetState(int i, boolean z) {
        MaterialShapeDrawable materialShapeDrawable;
        if (i == 2) {
            return;
        }
        boolean z2 = this.state == 3 && (this.shouldRemoveExpandedCorners || isAtTopOfScreen());
        if (this.expandedCornersRemoved == z2 || (materialShapeDrawable = this.materialShapeDrawable) == null) {
            return;
        }
        this.expandedCornersRemoved = z2;
        ValueAnimator valueAnimator = this.interpolatorAnimator;
        if (!z || valueAnimator == null) {
            if (valueAnimator != null && valueAnimator.isRunning()) {
                valueAnimator.cancel();
            }
            materialShapeDrawable.setInterpolation(this.expandedCornersRemoved ? calculateInterpolationWithCornersRemoved() : 1.0f);
            return;
        }
        if (valueAnimator.isRunning()) {
            valueAnimator.reverse();
        } else {
            valueAnimator.setFloatValues(materialShapeDrawable.drawableState.interpolation, z2 ? calculateInterpolationWithCornersRemoved() : 1.0f);
            valueAnimator.start();
        }
    }

    public final void updateImportantForAccessibility(boolean z) {
        WeakReference weakReference = this.viewRef;
        if (weakReference == null) {
            return;
        }
        ViewParent parent = ((View) weakReference.get()).getParent();
        if (parent instanceof CoordinatorLayout) {
            CoordinatorLayout coordinatorLayout = (CoordinatorLayout) parent;
            int childCount = coordinatorLayout.getChildCount();
            if (z) {
                if (this.importantForAccessibilityMap != null) {
                    return;
                } else {
                    this.importantForAccessibilityMap = new HashMap(childCount);
                }
            }
            for (int i = 0; i < childCount; i++) {
                View childAt = coordinatorLayout.getChildAt(i);
                if (childAt != this.viewRef.get() && z) {
                    this.importantForAccessibilityMap.put(childAt, Integer.valueOf(childAt.getImportantForAccessibility()));
                }
            }
            if (z) {
                return;
            }
            this.importantForAccessibilityMap = null;
        }
    }

    public final void updatePeekHeight() {
        View view;
        if (this.viewRef != null) {
            calculateCollapsedOffset();
            if (this.state != 4 || (view = (View) this.viewRef.get()) == null) {
                return;
            }
            view.requestLayout();
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class SavedState extends androidx.customview.view.AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new AbsSavedState.AnonymousClass2(10);
        public final boolean fitToContents;
        public final boolean hideable;
        public final int peekHeight;
        public final boolean skipCollapsed;
        public final int state;

        public SavedState(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            this.state = parcel.readInt();
            this.peekHeight = parcel.readInt();
            this.fitToContents = parcel.readInt() == 1;
            this.hideable = parcel.readInt() == 1;
            this.skipCollapsed = parcel.readInt() == 1;
        }

        @Override // androidx.customview.view.AbsSavedState, android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeInt(this.state);
            parcel.writeInt(this.peekHeight);
            parcel.writeInt(this.fitToContents ? 1 : 0);
            parcel.writeInt(this.hideable ? 1 : 0);
            parcel.writeInt(this.skipCollapsed ? 1 : 0);
        }

        public SavedState(BottomSheetBehavior bottomSheetBehavior) {
            super(android.view.AbsSavedState.EMPTY_STATE);
            this.state = bottomSheetBehavior.state;
            this.peekHeight = bottomSheetBehavior.peekHeight;
            this.fitToContents = bottomSheetBehavior.fitToContents;
            this.hideable = bottomSheetBehavior.hideable;
            this.skipCollapsed = bottomSheetBehavior.skipCollapsed;
        }
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public final void onNestedScroll(CoordinatorLayout coordinatorLayout, View view, int i, int i2, int i3, int[] iArr) {
    }

    public BottomSheetBehavior() {
        this.saveFlags = 0;
        this.fitToContents = true;
        this.maxWidth = -1;
        this.maxHeight = -1;
        this.stateSettlingTracker = new RemoteViewsCompat$RemoteCollectionItems(this);
        this.halfExpandedRatio = 0.5f;
        this.elevation = -1.0f;
        this.draggable = true;
        this.draggableOnNestedScroll = true;
        this.autoExpandOnRequestChildRectangleOffscreen = true;
        this.state = 4;
        this.hideFriction = 0.1f;
        this.nestedScrollingChildrenRef = new ArrayList();
        this.callbacks = new ArrayList();
        this.initialY = -1;
        this.expandHalfwayActionIds = new SparseIntArray();
        this.expandActionIds = new SparseIntArray();
        this.collapseActionIds = new SparseIntArray();
        this.sheetRect = new Rect();
        this.dragCallback = new SideSheetBehavior.AnonymousClass1(this, 1);
    }
}
