package com.google.android.material.sidesheet;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.AbsSavedState;
import android.view.Gravity;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import androidx.camera.camera2.impl.CameraCallbackMap$$ExternalSyntheticLambda3;
import androidx.camera.camera2.pipe.CameraDevices$CC;
import androidx.camera.core.impl.Config;
import androidx.compose.ui.unit.IntOffsetKt;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.core.view.accessibility.AccessibilityViewCommand;
import androidx.core.widget.RemoteViewsCompat$RemoteCollectionItems;
import androidx.customview.view.AbsSavedState;
import androidx.customview.widget.ViewDragHelper;
import androidx.room.util.DBUtil$$ExternalSyntheticBUOutline0;
import coil3.UriKt$$ExternalSyntheticBUOutline0;
import com.fsck.k9.R;
import com.google.android.material.R$styleable;
import com.google.android.material.bottomsheet.BottomSheetBehavior;
import com.google.android.material.motion.MaterialSideContainerBackHelper;
import com.google.android.material.shape.AbsoluteCornerSize;
import com.google.android.material.shape.MaterialShapeDrawable;
import com.google.android.material.shape.ShapeAppearanceModel;
import java.lang.ref.WeakReference;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.WeakHashMap;
import org.jsoup.helper.Validate;
import org.slf4j.helpers.Util;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public class SideSheetBehavior<V extends View> extends CoordinatorLayout.Behavior {
    public final ColorStateList backgroundTint;
    public final LinkedHashSet callbacks;
    public int childWidth;
    public final int coplanarSiblingViewId;
    public WeakReference coplanarSiblingViewRef;
    public final AnonymousClass1 dragCallback;
    public final boolean draggable;
    public final float elevation;
    public final float hideFriction;
    public boolean ignoreEvents;
    public int initialX;
    public int innerMargin;
    public final MaterialShapeDrawable materialShapeDrawable;
    public int parentInnerEdge;
    public int parentWidth;
    public final ShapeAppearanceModel shapeAppearanceModel;
    public Util sheetDelegate;
    public int state;
    public final RemoteViewsCompat$RemoteCollectionItems stateSettlingTracker;
    public VelocityTracker velocityTracker;
    public ViewDragHelper viewDragHelper;
    public WeakReference viewRef;

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    /* renamed from: com.google.android.material.sidesheet.SideSheetBehavior$1, reason: invalid class name */
    public final class AnonymousClass1 extends Util {
        public final /* synthetic */ int $r8$classId;
        public final /* synthetic */ CoordinatorLayout.Behavior this$0;

        public /* synthetic */ AnonymousClass1(CoordinatorLayout.Behavior behavior, int i) {
            this.$r8$classId = i;
            this.this$0 = behavior;
        }

        @Override // org.slf4j.helpers.Util
        public final int clampViewPositionHorizontal(View view, int i) {
            switch (this.$r8$classId) {
                case 0:
                    SideSheetBehavior sideSheetBehavior = (SideSheetBehavior) this.this$0;
                    return Validate.clamp(i, sideSheetBehavior.sheetDelegate.getMinViewPositionHorizontal(), sideSheetBehavior.sheetDelegate.getMaxViewPositionHorizontal());
                default:
                    return view.getLeft();
            }
        }

        @Override // org.slf4j.helpers.Util
        public final int clampViewPositionVertical(View view, int i) {
            switch (this.$r8$classId) {
                case 0:
                    return view.getTop();
                default:
                    return Validate.clamp(i, ((BottomSheetBehavior) this.this$0).getExpandedOffset(), getViewVerticalDragRange());
            }
        }

        @Override // org.slf4j.helpers.Util
        public int getViewHorizontalDragRange(View view) {
            switch (this.$r8$classId) {
                case 0:
                    SideSheetBehavior sideSheetBehavior = (SideSheetBehavior) this.this$0;
                    return sideSheetBehavior.childWidth + sideSheetBehavior.innerMargin;
                default:
                    return super.getViewHorizontalDragRange(view);
            }
        }

        @Override // org.slf4j.helpers.Util
        public int getViewVerticalDragRange() {
            switch (this.$r8$classId) {
                case 1:
                    BottomSheetBehavior bottomSheetBehavior = (BottomSheetBehavior) this.this$0;
                    return bottomSheetBehavior.hideable ? bottomSheetBehavior.parentHeight : bottomSheetBehavior.collapsedOffset;
                default:
                    return super.getViewVerticalDragRange();
            }
        }

        @Override // org.slf4j.helpers.Util
        public final void onViewDragStateChanged(int i) {
            int i2 = this.$r8$classId;
            CoordinatorLayout.Behavior behavior = this.this$0;
            switch (i2) {
                case 0:
                    if (i == 1) {
                        SideSheetBehavior sideSheetBehavior = (SideSheetBehavior) behavior;
                        if (sideSheetBehavior.draggable) {
                            sideSheetBehavior.setStateInternal(1);
                            break;
                        }
                    }
                    break;
                default:
                    if (i == 1) {
                        BottomSheetBehavior bottomSheetBehavior = (BottomSheetBehavior) behavior;
                        if (bottomSheetBehavior.draggable) {
                            bottomSheetBehavior.setStateInternal(1);
                            break;
                        }
                    }
                    break;
            }
        }

        @Override // org.slf4j.helpers.Util
        public final void onViewPositionChanged(View view, int i, int i2) {
            ViewGroup.MarginLayoutParams marginLayoutParams;
            int i3 = this.$r8$classId;
            CoordinatorLayout.Behavior behavior = this.this$0;
            switch (i3) {
                case 0:
                    SideSheetBehavior sideSheetBehavior = (SideSheetBehavior) behavior;
                    WeakReference weakReference = sideSheetBehavior.coplanarSiblingViewRef;
                    View view2 = weakReference != null ? (View) weakReference.get() : null;
                    if (view2 != null && (marginLayoutParams = (ViewGroup.MarginLayoutParams) view2.getLayoutParams()) != null) {
                        sideSheetBehavior.sheetDelegate.updateCoplanarSiblingLayoutParams(marginLayoutParams, view.getLeft(), view.getRight());
                        view2.setLayoutParams(marginLayoutParams);
                    }
                    LinkedHashSet linkedHashSet = sideSheetBehavior.callbacks;
                    if (linkedHashSet.isEmpty()) {
                        return;
                    }
                    sideSheetBehavior.sheetDelegate.calculateSlideOffset(i);
                    Iterator it = linkedHashSet.iterator();
                    if (it.hasNext()) {
                        throw Config.CC.m(it);
                    }
                    return;
                default:
                    ((BottomSheetBehavior) behavior).dispatchOnSlide(i2);
                    return;
            }
        }

        /* JADX WARN: Code restructure failed: missing block: B:12:0x0022, code lost:
        
            if (r8 > r6.halfExpandedOffset) goto L29;
         */
        /* JADX WARN: Code restructure failed: missing block: B:27:0x0070, code lost:
        
            if (java.lang.Math.abs(r7.getTop() - r6.getExpandedOffset()) < java.lang.Math.abs(r7.getTop() - r6.halfExpandedOffset)) goto L8;
         */
        /* JADX WARN: Code restructure failed: missing block: B:35:0x009f, code lost:
        
            if (java.lang.Math.abs(r8 - r6.halfExpandedOffset) < java.lang.Math.abs(r8 - r6.collapsedOffset)) goto L29;
         */
        /* JADX WARN: Code restructure failed: missing block: B:39:0x00b9, code lost:
        
            if (java.lang.Math.abs(r8 - r6.fitToContentsOffset) < java.lang.Math.abs(r8 - r6.collapsedOffset)) goto L8;
         */
        /* JADX WARN: Code restructure failed: missing block: B:43:0x00c9, code lost:
        
            if (r8 < java.lang.Math.abs(r8 - r6.collapsedOffset)) goto L8;
         */
        /* JADX WARN: Code restructure failed: missing block: B:45:0x00da, code lost:
        
            if (java.lang.Math.abs(r8 - r9) < java.lang.Math.abs(r8 - r6.collapsedOffset)) goto L29;
         */
        /* JADX WARN: Code restructure failed: missing block: B:53:0x0102, code lost:
        
            if (r6.sheetDelegate.isReleasedCloseToInnerEdge(r7) == false) goto L73;
         */
        /* JADX WARN: Code restructure failed: missing block: B:61:0x0131, code lost:
        
            if (java.lang.Math.abs(r8 - r6.sheetDelegate.getExpandedOffset()) < java.lang.Math.abs(r8 - r6.sheetDelegate.getHiddenOffset())) goto L73;
         */
        @Override // org.slf4j.helpers.Util
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void onViewReleased(android.view.View r7, float r8, float r9) {
            /*
                Method dump skipped, instructions count: 318
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.sidesheet.SideSheetBehavior.AnonymousClass1.onViewReleased(android.view.View, float, float):void");
        }

        /* JADX WARN: Code restructure failed: missing block: B:18:0x0049, code lost:
        
            if (r0.canScrollVertically(-1) != false) goto L31;
         */
        @Override // org.slf4j.helpers.Util
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final boolean tryCaptureView(android.view.View r5, int r6) {
            /*
                r4 = this;
                int r0 = r4.$r8$classId
                r1 = 1
                androidx.coordinatorlayout.widget.CoordinatorLayout$Behavior r4 = r4.this$0
                r2 = 0
                switch(r0) {
                    case 0: goto L5c;
                    default: goto L9;
                }
            L9:
                com.google.android.material.bottomsheet.BottomSheetBehavior r4 = (com.google.android.material.bottomsheet.BottomSheetBehavior) r4
                int r0 = r4.state
                if (r0 != r1) goto L10
                goto L5a
            L10:
                boolean r3 = r4.touchingScrollingChild
                if (r3 == 0) goto L15
                goto L5a
            L15:
                r3 = 3
                if (r0 != r3) goto L4c
                int r0 = r4.activePointerId
                if (r0 != r6) goto L4c
                boolean r6 = r4.multipleScrollingChildrenSupported
                r0 = 0
                if (r6 == 0) goto L2d
                java.lang.ref.WeakReference r6 = r4.currentTouchedScrollChildRef
                if (r6 == 0) goto L42
                java.lang.Object r6 = r6.get()
                r0 = r6
                android.view.View r0 = (android.view.View) r0
                goto L42
            L2d:
                java.util.ArrayList r6 = r4.nestedScrollingChildrenRef
                boolean r3 = r6.isEmpty()
                if (r3 != 0) goto L42
                java.lang.Object r6 = r6.get(r2)
                java.lang.ref.WeakReference r6 = (java.lang.ref.WeakReference) r6
                java.lang.Object r6 = r6.get()
                r0 = r6
                android.view.View r0 = (android.view.View) r0
            L42:
                if (r0 == 0) goto L4c
                r6 = -1
                boolean r6 = r0.canScrollVertically(r6)
                if (r6 == 0) goto L4c
                goto L5a
            L4c:
                android.os.SystemClock.uptimeMillis()
                java.lang.ref.WeakReference r4 = r4.viewRef
                if (r4 == 0) goto L5a
                java.lang.Object r4 = r4.get()
                if (r4 != r5) goto L5a
                goto L5b
            L5a:
                r1 = r2
            L5b:
                return r1
            L5c:
                com.google.android.material.sidesheet.SideSheetBehavior r4 = (com.google.android.material.sidesheet.SideSheetBehavior) r4
                int r6 = r4.state
                if (r6 != r1) goto L63
                goto L6e
            L63:
                java.lang.ref.WeakReference r4 = r4.viewRef
                if (r4 == 0) goto L6e
                java.lang.Object r4 = r4.get()
                if (r4 != r5) goto L6e
                goto L6f
            L6e:
                r1 = r2
            L6f:
                return r1
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.sidesheet.SideSheetBehavior.AnonymousClass1.tryCaptureView(android.view.View, int):boolean");
        }
    }

    public SideSheetBehavior(Context context, AttributeSet attributeSet) {
        this.stateSettlingTracker = new RemoteViewsCompat$RemoteCollectionItems(this);
        this.draggable = true;
        this.state = 5;
        this.hideFriction = 0.1f;
        this.coplanarSiblingViewId = -1;
        this.callbacks = new LinkedHashSet();
        this.dragCallback = new AnonymousClass1(this, 0);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.SideSheetBehavior_Layout);
        if (obtainStyledAttributes.hasValue(3)) {
            this.backgroundTint = IntOffsetKt.getColorStateList(context, obtainStyledAttributes, 3);
        }
        if (obtainStyledAttributes.hasValue(6)) {
            this.shapeAppearanceModel = ShapeAppearanceModel.builder(context, attributeSet, 0, R.style.Widget_Material3_SideSheet).build();
        }
        if (obtainStyledAttributes.hasValue(5)) {
            int resourceId = obtainStyledAttributes.getResourceId(5, -1);
            this.coplanarSiblingViewId = resourceId;
            WeakReference weakReference = this.coplanarSiblingViewRef;
            if (weakReference != null) {
                weakReference.clear();
            }
            this.coplanarSiblingViewRef = null;
            WeakReference weakReference2 = this.viewRef;
            if (weakReference2 != null) {
                View view = (View) weakReference2.get();
                if (resourceId != -1 && view.isLaidOut()) {
                    view.requestLayout();
                }
            }
        }
        ShapeAppearanceModel shapeAppearanceModel = this.shapeAppearanceModel;
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
        this.elevation = obtainStyledAttributes.getDimension(2, -1.0f);
        this.draggable = obtainStyledAttributes.getBoolean(4, true);
        obtainStyledAttributes.recycle();
        ViewConfiguration.get(context).getScaledMaximumFlingVelocity();
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

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public final boolean onInterceptTouchEvent(CoordinatorLayout coordinatorLayout, View view, MotionEvent motionEvent) {
        ViewDragHelper viewDragHelper;
        VelocityTracker velocityTracker;
        if ((!view.isShown() && ViewCompat.getAccessibilityPaneTitle(view) == null) || !this.draggable) {
            this.ignoreEvents = true;
            return false;
        }
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0 && (velocityTracker = this.velocityTracker) != null) {
            velocityTracker.recycle();
            this.velocityTracker = null;
        }
        if (this.velocityTracker == null) {
            this.velocityTracker = VelocityTracker.obtain();
        }
        this.velocityTracker.addMovement(motionEvent);
        if (actionMasked == 0) {
            this.initialX = (int) motionEvent.getX();
        } else if ((actionMasked == 1 || actionMasked == 3) && this.ignoreEvents) {
            this.ignoreEvents = false;
            return false;
        }
        return (this.ignoreEvents || (viewDragHelper = this.viewDragHelper) == null || !viewDragHelper.shouldInterceptTouchEvent(motionEvent)) ? false : true;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public final boolean onLayoutChild(CoordinatorLayout coordinatorLayout, View view, int i) {
        View view2;
        View view3;
        int outerEdge;
        int i2;
        View findViewById;
        int i3 = 1;
        if (coordinatorLayout.getFitsSystemWindows() && !view.getFitsSystemWindows()) {
            view.setFitsSystemWindows(true);
        }
        WeakReference weakReference = this.viewRef;
        MaterialShapeDrawable materialShapeDrawable = this.materialShapeDrawable;
        int i4 = 0;
        if (weakReference == null) {
            this.viewRef = new WeakReference(view);
            new MaterialSideContainerBackHelper(view);
            Resources resources = view.getResources();
            resources.getDimension(R.dimen.m3_back_progress_side_container_max_scale_x_distance_shrink);
            resources.getDimension(R.dimen.m3_back_progress_side_container_max_scale_x_distance_grow);
            resources.getDimension(R.dimen.m3_back_progress_side_container_max_scale_y_distance);
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
                    WeakHashMap weakHashMap = ViewCompat.sViewPropertyAnimatorMap;
                    view.setBackgroundTintList(colorStateList);
                }
            }
            int i5 = this.state == 5 ? 4 : 0;
            if (view.getVisibility() != i5) {
                view.setVisibility(i5);
            }
            updateAccessibilityActions$1();
            if (view.getImportantForAccessibility() == 0) {
                view.setImportantForAccessibility(1);
            }
            if (ViewCompat.getAccessibilityPaneTitle(view) == null) {
                ViewCompat.setAccessibilityPaneTitle(view, view.getResources().getString(R.string.side_sheet_accessibility_pane_title));
            }
        }
        int i6 = Gravity.getAbsoluteGravity(((CoordinatorLayout.LayoutParams) view.getLayoutParams()).gravity, i) == 3 ? 1 : 0;
        Util util = this.sheetDelegate;
        if (util == null || util.getSheetEdge() != i6) {
            CoordinatorLayout.LayoutParams layoutParams = null;
            ShapeAppearanceModel shapeAppearanceModel = this.shapeAppearanceModel;
            if (i6 == 0) {
                this.sheetDelegate = new LeftSheetDelegate(this, i3);
                if (shapeAppearanceModel != null) {
                    WeakReference weakReference2 = this.viewRef;
                    if (weakReference2 != null && (view3 = (View) weakReference2.get()) != null && (view3.getLayoutParams() instanceof CoordinatorLayout.LayoutParams)) {
                        layoutParams = (CoordinatorLayout.LayoutParams) view3.getLayoutParams();
                    }
                    if (layoutParams == null || ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin <= 0) {
                        ShapeAppearanceModel.Builder builder = shapeAppearanceModel.toBuilder();
                        builder.topRightCornerSize = new AbsoluteCornerSize(0.0f);
                        builder.bottomRightCornerSize = new AbsoluteCornerSize(0.0f);
                        ShapeAppearanceModel build = builder.build();
                        if (materialShapeDrawable != null) {
                            materialShapeDrawable.setShapeAppearanceModel(build);
                        }
                    }
                }
            } else {
                if (i6 != 1) {
                    UriKt$$ExternalSyntheticBUOutline0.m(CameraDevices$CC.m(i6, "Invalid sheet edge position value: ", ". Must be 0 or 1."));
                    return false;
                }
                this.sheetDelegate = new LeftSheetDelegate(this, i4);
                if (shapeAppearanceModel != null) {
                    WeakReference weakReference3 = this.viewRef;
                    if (weakReference3 != null && (view2 = (View) weakReference3.get()) != null && (view2.getLayoutParams() instanceof CoordinatorLayout.LayoutParams)) {
                        layoutParams = (CoordinatorLayout.LayoutParams) view2.getLayoutParams();
                    }
                    if (layoutParams == null || ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin <= 0) {
                        ShapeAppearanceModel.Builder builder2 = shapeAppearanceModel.toBuilder();
                        builder2.topLeftCornerSize = new AbsoluteCornerSize(0.0f);
                        builder2.bottomLeftCornerSize = new AbsoluteCornerSize(0.0f);
                        ShapeAppearanceModel build2 = builder2.build();
                        if (materialShapeDrawable != null) {
                            materialShapeDrawable.setShapeAppearanceModel(build2);
                        }
                    }
                }
            }
        }
        if (this.viewDragHelper == null) {
            this.viewDragHelper = new ViewDragHelper(coordinatorLayout.getContext(), coordinatorLayout, this.dragCallback);
        }
        int outerEdge2 = this.sheetDelegate.getOuterEdge(view);
        coordinatorLayout.onLayoutChild(view, i);
        this.parentWidth = coordinatorLayout.getWidth();
        this.parentInnerEdge = this.sheetDelegate.getParentInnerEdge(coordinatorLayout);
        this.childWidth = view.getWidth();
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        this.innerMargin = marginLayoutParams != null ? this.sheetDelegate.calculateInnerMargin(marginLayoutParams) : 0;
        int i7 = this.state;
        if (i7 == 1 || i7 == 2) {
            outerEdge = outerEdge2 - this.sheetDelegate.getOuterEdge(view);
        } else if (i7 == 3) {
            outerEdge = 0;
        } else {
            if (i7 != 5) {
                throw new IllegalStateException("Unexpected value: " + this.state);
            }
            outerEdge = this.sheetDelegate.getHiddenOffset();
        }
        WeakHashMap weakHashMap2 = ViewCompat.sViewPropertyAnimatorMap;
        view.offsetLeftAndRight(outerEdge);
        if (this.coplanarSiblingViewRef == null && (i2 = this.coplanarSiblingViewId) != -1 && (findViewById = coordinatorLayout.findViewById(i2)) != null) {
            this.coplanarSiblingViewRef = new WeakReference(findViewById);
        }
        Iterator it = this.callbacks.iterator();
        while (it.hasNext()) {
            if (it.next() != null) {
                DBUtil$$ExternalSyntheticBUOutline0.m();
                return false;
            }
        }
        return true;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public final boolean onMeasureChild(CoordinatorLayout coordinatorLayout, View view, int i, int i2, int i3) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        view.measure(ViewGroup.getChildMeasureSpec(i, coordinatorLayout.getPaddingRight() + coordinatorLayout.getPaddingLeft() + marginLayoutParams.leftMargin + marginLayoutParams.rightMargin + i2, marginLayoutParams.width), ViewGroup.getChildMeasureSpec(i3, coordinatorLayout.getPaddingBottom() + coordinatorLayout.getPaddingTop() + marginLayoutParams.topMargin + marginLayoutParams.bottomMargin, marginLayoutParams.height));
        return true;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public final void onRestoreInstanceState(View view, Parcelable parcelable) {
        int i = ((SavedState) parcelable).state;
        if (i == 1 || i == 2) {
            i = 5;
        }
        this.state = i;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public final Parcelable onSaveInstanceState(View view) {
        AbsSavedState absSavedState = View.BaseSavedState.EMPTY_STATE;
        return new SavedState(this);
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public final boolean onTouchEvent(CoordinatorLayout coordinatorLayout, View view, MotionEvent motionEvent) {
        VelocityTracker velocityTracker;
        if (!view.isShown()) {
            return false;
        }
        int actionMasked = motionEvent.getActionMasked();
        if (this.state == 1 && actionMasked == 0) {
            return true;
        }
        if (shouldHandleDraggingWithHelper$1()) {
            this.viewDragHelper.processTouchEvent(motionEvent);
        }
        if (actionMasked == 0 && (velocityTracker = this.velocityTracker) != null) {
            velocityTracker.recycle();
            this.velocityTracker = null;
        }
        if (this.velocityTracker == null) {
            this.velocityTracker = VelocityTracker.obtain();
        }
        this.velocityTracker.addMovement(motionEvent);
        if (shouldHandleDraggingWithHelper$1() && actionMasked == 2 && !this.ignoreEvents && shouldHandleDraggingWithHelper$1()) {
            float abs = Math.abs(this.initialX - motionEvent.getX());
            ViewDragHelper viewDragHelper = this.viewDragHelper;
            if (abs > viewDragHelper.mTouchSlop) {
                viewDragHelper.captureChildView(view, motionEvent.getPointerId(motionEvent.getActionIndex()));
            }
        }
        return !this.ignoreEvents;
    }

    public final void setStateInternal(int i) {
        View view;
        if (this.state == i) {
            return;
        }
        this.state = i;
        WeakReference weakReference = this.viewRef;
        if (weakReference == null || (view = (View) weakReference.get()) == null) {
            return;
        }
        int i2 = this.state == 5 ? 4 : 0;
        if (view.getVisibility() != i2) {
            view.setVisibility(i2);
        }
        Iterator it = this.callbacks.iterator();
        if (it.hasNext()) {
            throw Config.CC.m(it);
        }
        updateAccessibilityActions$1();
    }

    public final boolean shouldHandleDraggingWithHelper$1() {
        if (this.viewDragHelper != null) {
            return this.draggable || this.state == 1;
        }
        return false;
    }

    public final void startSettling$1(View view, int i, boolean z) {
        int expandedOffset;
        if (i == 3) {
            expandedOffset = this.sheetDelegate.getExpandedOffset();
        } else {
            if (i != 5) {
                UriKt$$ExternalSyntheticBUOutline0.m(CameraDevices$CC.m("Invalid state to get outer edge offset: ", i));
                return;
            }
            expandedOffset = this.sheetDelegate.getHiddenOffset();
        }
        ViewDragHelper viewDragHelper = this.viewDragHelper;
        if (viewDragHelper == null || (!z ? viewDragHelper.smoothSlideViewTo(view, expandedOffset, view.getTop()) : viewDragHelper.settleCapturedViewAt(expandedOffset, view.getTop()))) {
            setStateInternal(i);
        } else {
            setStateInternal(2);
            this.stateSettlingTracker.continueSettlingToState(i);
        }
    }

    public final void updateAccessibilityActions$1() {
        View view;
        WeakReference weakReference = this.viewRef;
        if (weakReference == null || (view = (View) weakReference.get()) == null) {
            return;
        }
        ViewCompat.removeActionWithId(view, 262144);
        ViewCompat.notifyViewAccessibilityStateChangedIfNeeded(view, 0);
        ViewCompat.removeActionWithId(view, 1048576);
        ViewCompat.notifyViewAccessibilityStateChangedIfNeeded(view, 0);
        final int i = 5;
        if (this.state != 5) {
            ViewCompat.replaceAccessibilityAction(view, AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_DISMISS, new AccessibilityViewCommand() { // from class: com.google.android.material.sidesheet.SideSheetBehavior$$ExternalSyntheticLambda0
                @Override // androidx.core.view.accessibility.AccessibilityViewCommand
                public final boolean perform(View view2) {
                    int i2 = i;
                    if (i2 == 1 || i2 == 2) {
                        throw new IllegalArgumentException(CameraDevices$CC.m(new StringBuilder("STATE_"), i2 == 1 ? "DRAGGING" : "SETTLING", " should not be set externally."));
                    }
                    SideSheetBehavior sideSheetBehavior = SideSheetBehavior.this;
                    WeakReference weakReference2 = sideSheetBehavior.viewRef;
                    if (weakReference2 == null || weakReference2.get() == null) {
                        sideSheetBehavior.setStateInternal(i2);
                        return true;
                    }
                    View view3 = (View) sideSheetBehavior.viewRef.get();
                    CameraCallbackMap$$ExternalSyntheticLambda3 cameraCallbackMap$$ExternalSyntheticLambda3 = new CameraCallbackMap$$ExternalSyntheticLambda3(i2, 4, sideSheetBehavior);
                    ViewParent parent = view3.getParent();
                    if (parent != null && parent.isLayoutRequested() && view3.isAttachedToWindow()) {
                        view3.post(cameraCallbackMap$$ExternalSyntheticLambda3);
                        return true;
                    }
                    cameraCallbackMap$$ExternalSyntheticLambda3.run();
                    return true;
                }
            });
        }
        final int i2 = 3;
        if (this.state != 3) {
            ViewCompat.replaceAccessibilityAction(view, AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_EXPAND, new AccessibilityViewCommand() { // from class: com.google.android.material.sidesheet.SideSheetBehavior$$ExternalSyntheticLambda0
                @Override // androidx.core.view.accessibility.AccessibilityViewCommand
                public final boolean perform(View view2) {
                    int i22 = i2;
                    if (i22 == 1 || i22 == 2) {
                        throw new IllegalArgumentException(CameraDevices$CC.m(new StringBuilder("STATE_"), i22 == 1 ? "DRAGGING" : "SETTLING", " should not be set externally."));
                    }
                    SideSheetBehavior sideSheetBehavior = SideSheetBehavior.this;
                    WeakReference weakReference2 = sideSheetBehavior.viewRef;
                    if (weakReference2 == null || weakReference2.get() == null) {
                        sideSheetBehavior.setStateInternal(i22);
                        return true;
                    }
                    View view3 = (View) sideSheetBehavior.viewRef.get();
                    CameraCallbackMap$$ExternalSyntheticLambda3 cameraCallbackMap$$ExternalSyntheticLambda3 = new CameraCallbackMap$$ExternalSyntheticLambda3(i22, 4, sideSheetBehavior);
                    ViewParent parent = view3.getParent();
                    if (parent != null && parent.isLayoutRequested() && view3.isAttachedToWindow()) {
                        view3.post(cameraCallbackMap$$ExternalSyntheticLambda3);
                        return true;
                    }
                    cameraCallbackMap$$ExternalSyntheticLambda3.run();
                    return true;
                }
            });
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class SavedState extends androidx.customview.view.AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new AbsSavedState.AnonymousClass2(13);
        public final int state;

        public SavedState(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            this.state = parcel.readInt();
        }

        @Override // androidx.customview.view.AbsSavedState, android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeInt(this.state);
        }

        public SavedState(SideSheetBehavior sideSheetBehavior) {
            super(android.view.AbsSavedState.EMPTY_STATE);
            this.state = sideSheetBehavior.state;
        }
    }

    public SideSheetBehavior() {
        this.stateSettlingTracker = new RemoteViewsCompat$RemoteCollectionItems(this);
        this.draggable = true;
        this.state = 5;
        this.hideFriction = 0.1f;
        this.coplanarSiblingViewId = -1;
        this.callbacks = new LinkedHashSet();
        this.dragCallback = new AnonymousClass1(this, 0);
    }
}
