package com.google.android.material.sidesheet;

import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.Log;
import android.util.TypedValue;
import android.view.AbsSavedState;
import android.view.Gravity;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import androidx.activity.BackEventCompat;
import androidx.compose.ui.Modifier;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.content.res.ResourcesCompat$FontCallback$$ExternalSyntheticLambda1;
import androidx.core.os.BundleKt;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.customview.view.AbsSavedState;
import androidx.customview.widget.ViewDragHelper;
import androidx.sqlite.SQLite;
import androidx.transition.Transition;
import com.google.android.exoplayer2.source.ProgressiveMediaSource;
import com.google.android.material.R$styleable;
import com.google.android.material.animation.AnimationUtils;
import com.google.android.material.bottomsheet.BottomSheetBehavior;
import com.google.android.material.motion.MaterialBackHandler;
import com.google.android.material.motion.MaterialSideContainerBackHelper;
import com.google.android.material.shape.AbsoluteCornerSize;
import com.google.android.material.shape.MaterialShapeDrawable;
import com.google.android.material.shape.ShapeAppearanceModel;
import java.lang.ref.WeakReference;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.WeakHashMap;
import okhttp3.Cookie;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;
import org.jsoup.Jsoup;
import org.schabi.newpipe.R;
import org.schabi.newpipe.databinding.FragmentChannelBinding;
import org.schabi.newpipe.streams.SrtFromTtmlWriter;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public class SideSheetBehavior<V extends View> extends CoordinatorLayout.Behavior implements MaterialBackHandler {
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
    public SQLite sheetDelegate;
    public MaterialSideContainerBackHelper sideContainerBackHelper;
    public int state;
    public final SrtFromTtmlWriter stateSettlingTracker;
    public VelocityTracker velocityTracker;
    public ViewDragHelper viewDragHelper;
    public WeakReference viewRef;

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    /* renamed from: com.google.android.material.sidesheet.SideSheetBehavior$1, reason: invalid class name */
    public final class AnonymousClass1 extends Jsoup {
        public final /* synthetic */ int $r8$classId;
        public final /* synthetic */ CoordinatorLayout.Behavior this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public /* synthetic */ AnonymousClass1(CoordinatorLayout.Behavior behavior, int i) {
            super(9);
            this.$r8$classId = i;
            this.this$0 = behavior;
        }

        @Override // org.jsoup.Jsoup
        public final int clampViewPositionHorizontal(int i, View view) {
            switch (this.$r8$classId) {
                case 0:
                    SideSheetBehavior sideSheetBehavior = (SideSheetBehavior) this.this$0;
                    return Cookie.Companion.clamp(i, sideSheetBehavior.sheetDelegate.getMinViewPositionHorizontal(), sideSheetBehavior.sheetDelegate.getMaxViewPositionHorizontal());
                default:
                    return view.getLeft();
            }
        }

        @Override // org.jsoup.Jsoup
        public final int clampViewPositionVertical(int i, View view) {
            switch (this.$r8$classId) {
                case 0:
                    return view.getTop();
                default:
                    return Cookie.Companion.clamp(i, ((BottomSheetBehavior) this.this$0).getExpandedOffset(), getViewVerticalDragRange());
            }
        }

        @Override // org.jsoup.Jsoup
        public int getViewHorizontalDragRange(View view) {
            switch (this.$r8$classId) {
                case 0:
                    SideSheetBehavior sideSheetBehavior = (SideSheetBehavior) this.this$0;
                    return sideSheetBehavior.childWidth + sideSheetBehavior.innerMargin;
                default:
                    return super.getViewHorizontalDragRange(view);
            }
        }

        @Override // org.jsoup.Jsoup
        public int getViewVerticalDragRange() {
            switch (this.$r8$classId) {
                case 1:
                    BottomSheetBehavior bottomSheetBehavior = (BottomSheetBehavior) this.this$0;
                    return bottomSheetBehavior.hideable ? bottomSheetBehavior.parentHeight : bottomSheetBehavior.collapsedOffset;
                default:
                    return super.getViewVerticalDragRange();
            }
        }

        @Override // org.jsoup.Jsoup
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

        @Override // org.jsoup.Jsoup
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
                    if (!linkedHashSet.isEmpty()) {
                        sideSheetBehavior.sheetDelegate.calculateSlideOffset(i);
                        Iterator it = linkedHashSet.iterator();
                        if (it.hasNext()) {
                            it.next().getClass();
                            _UtilJvmKt$$ExternalSyntheticLambda1.m$2();
                            break;
                        }
                    }
                    break;
                default:
                    ((BottomSheetBehavior) behavior).dispatchOnSlide(i2);
                    break;
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
        @Override // org.jsoup.Jsoup
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

        /* JADX WARN: Code restructure failed: missing block: B:16:0x002f, code lost:
        
            if (r5.canScrollVertically(-1) != false) goto L27;
         */
        @Override // org.jsoup.Jsoup
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final boolean tryCaptureView(int r5, android.view.View r6) {
            /*
                r4 = this;
                int r0 = r4.$r8$classId
                r1 = 1
                androidx.coordinatorlayout.widget.CoordinatorLayout$Behavior r4 = r4.this$0
                r2 = 0
                switch(r0) {
                    case 0: goto L42;
                    default: goto L9;
                }
            L9:
                com.google.android.material.bottomsheet.BottomSheetBehavior r4 = (com.google.android.material.bottomsheet.BottomSheetBehavior) r4
                int r0 = r4.state
                if (r0 != r1) goto L10
                goto L40
            L10:
                boolean r3 = r4.touchingScrollingChild
                if (r3 == 0) goto L15
                goto L40
            L15:
                r3 = 3
                if (r0 != r3) goto L32
                int r0 = r4.activePointerId
                if (r0 != r5) goto L32
                java.lang.ref.WeakReference r5 = r4.nestedScrollingChildRef
                if (r5 == 0) goto L27
                java.lang.Object r5 = r5.get()
                android.view.View r5 = (android.view.View) r5
                goto L28
            L27:
                r5 = 0
            L28:
                if (r5 == 0) goto L32
                r0 = -1
                boolean r5 = r5.canScrollVertically(r0)
                if (r5 == 0) goto L32
                goto L40
            L32:
                java.lang.System.currentTimeMillis()
                java.lang.ref.WeakReference r4 = r4.viewRef
                if (r4 == 0) goto L40
                java.lang.Object r4 = r4.get()
                if (r4 != r6) goto L40
                goto L41
            L40:
                r1 = r2
            L41:
                return r1
            L42:
                com.google.android.material.sidesheet.SideSheetBehavior r4 = (com.google.android.material.sidesheet.SideSheetBehavior) r4
                int r5 = r4.state
                if (r5 != r1) goto L49
                goto L54
            L49:
                java.lang.ref.WeakReference r4 = r4.viewRef
                if (r4 == 0) goto L54
                java.lang.Object r4 = r4.get()
                if (r4 != r6) goto L54
                goto L55
            L54:
                r1 = r2
            L55:
                return r1
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.sidesheet.SideSheetBehavior.AnonymousClass1.tryCaptureView(int, android.view.View):boolean");
        }
    }

    public SideSheetBehavior(Context context, AttributeSet attributeSet) {
        this.stateSettlingTracker = new SrtFromTtmlWriter(this);
        this.draggable = true;
        this.state = 5;
        this.hideFriction = 0.1f;
        this.coplanarSiblingViewId = -1;
        this.callbacks = new LinkedHashSet();
        this.dragCallback = new AnonymousClass1(this, 0);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.SideSheetBehavior_Layout);
        if (obtainStyledAttributes.hasValue(3)) {
            this.backgroundTint = BundleKt.getColorStateList(context, obtainStyledAttributes, 3);
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
                if (resourceId != -1) {
                    WeakHashMap weakHashMap = ViewCompat.sViewPropertyAnimatorMap;
                    if (view.isLaidOut()) {
                        view.requestLayout();
                    }
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

    @Override // com.google.android.material.motion.MaterialBackHandler
    public final void cancelBackProgress() {
        MaterialSideContainerBackHelper materialSideContainerBackHelper = this.sideContainerBackHelper;
        if (materialSideContainerBackHelper == null) {
            return;
        }
        materialSideContainerBackHelper.cancelBackProgress();
    }

    @Override // com.google.android.material.motion.MaterialBackHandler
    public final void handleBackInvoked() {
        final ViewGroup.MarginLayoutParams marginLayoutParams;
        MaterialSideContainerBackHelper materialSideContainerBackHelper = this.sideContainerBackHelper;
        if (materialSideContainerBackHelper == null) {
            return;
        }
        BackEventCompat backEventCompat = materialSideContainerBackHelper.backEvent;
        ValueAnimator.AnimatorUpdateListener animatorUpdateListener = null;
        materialSideContainerBackHelper.backEvent = null;
        int i = 5;
        if (backEventCompat == null || Build.VERSION.SDK_INT < 34) {
            setState(5);
            return;
        }
        SQLite sQLite = this.sheetDelegate;
        if (sQLite != null && sQLite.getSheetEdge() != 0) {
            i = 3;
        }
        Transition.AnonymousClass3 anonymousClass3 = new Transition.AnonymousClass3(this, 7);
        WeakReference weakReference = this.coplanarSiblingViewRef;
        final View view = weakReference != null ? (View) weakReference.get() : null;
        if (view != null && (marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams()) != null) {
            final int coplanarSiblingAdjacentMargin = this.sheetDelegate.getCoplanarSiblingAdjacentMargin(marginLayoutParams);
            animatorUpdateListener = new ValueAnimator.AnimatorUpdateListener() { // from class: com.google.android.material.sidesheet.SideSheetBehavior$$ExternalSyntheticLambda2
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                    SideSheetBehavior.this.sheetDelegate.updateCoplanarSiblingAdjacentMargin(marginLayoutParams, AnimationUtils.lerp(valueAnimator.getAnimatedFraction(), coplanarSiblingAdjacentMargin, 0));
                    view.requestLayout();
                }
            };
        }
        materialSideContainerBackHelper.finishBackProgress(backEventCompat, i, anonymousClass3, animatorUpdateListener);
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public final void onAttachedToLayoutParams(CoordinatorLayout.LayoutParams layoutParams) {
        this.viewRef = null;
        this.viewDragHelper = null;
        this.sideContainerBackHelper = null;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public final void onDetachedFromLayoutParams() {
        this.viewRef = null;
        this.viewDragHelper = null;
        this.sideContainerBackHelper = null;
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
        WeakHashMap weakHashMap = ViewCompat.sViewPropertyAnimatorMap;
        int i3 = 1;
        if (coordinatorLayout.getFitsSystemWindows() && !view.getFitsSystemWindows()) {
            view.setFitsSystemWindows(true);
        }
        WeakReference weakReference = this.viewRef;
        MaterialShapeDrawable materialShapeDrawable = this.materialShapeDrawable;
        int i4 = 0;
        if (weakReference == null) {
            this.viewRef = new WeakReference(view);
            this.sideContainerBackHelper = new MaterialSideContainerBackHelper(view);
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
        SQLite sQLite = this.sheetDelegate;
        if (sQLite == null || sQLite.getSheetEdge() != i6) {
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
                        FragmentChannelBinding builder = shapeAppearanceModel.toBuilder();
                        builder.channelSubscriberView = new AbsoluteCornerSize(0.0f);
                        builder.channelTitleView = new AbsoluteCornerSize(0.0f);
                        ShapeAppearanceModel build = builder.build();
                        if (materialShapeDrawable != null) {
                            materialShapeDrawable.setShapeAppearanceModel(build);
                        }
                    }
                }
            } else {
                if (i6 != 1) {
                    _UtilJvmKt$$ExternalSyntheticLambda1.m$1(Modifier.CC.m("Invalid sheet edge position value: ", i6, ". Must be 0 or 1."));
                    return false;
                }
                this.sheetDelegate = new LeftSheetDelegate(this, i4);
                if (shapeAppearanceModel != null) {
                    WeakReference weakReference3 = this.viewRef;
                    if (weakReference3 != null && (view2 = (View) weakReference3.get()) != null && (view2.getLayoutParams() instanceof CoordinatorLayout.LayoutParams)) {
                        layoutParams = (CoordinatorLayout.LayoutParams) view2.getLayoutParams();
                    }
                    if (layoutParams == null || ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin <= 0) {
                        FragmentChannelBinding builder2 = shapeAppearanceModel.toBuilder();
                        builder2.channelKaomoji = new AbsoluteCornerSize(0.0f);
                        builder2.errorContentNotSupported = new AbsoluteCornerSize(0.0f);
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
        coordinatorLayout.onLayoutChild(i, view);
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
                _UtilJvmKt$$ExternalSyntheticLambda1.m$2(this.state, "Unexpected value: ");
                return false;
            }
            outerEdge = this.sheetDelegate.getHiddenOffset();
        }
        view.offsetLeftAndRight(outerEdge);
        if (this.coplanarSiblingViewRef == null && (i2 = this.coplanarSiblingViewId) != -1 && (findViewById = coordinatorLayout.findViewById(i2)) != null) {
            this.coplanarSiblingViewRef = new WeakReference(findViewById);
        }
        Iterator it = this.callbacks.iterator();
        while (it.hasNext()) {
            if (it.next() != null) {
                _UtilJvmKt$$ExternalSyntheticLambda1.m$2();
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
                viewDragHelper.captureChildView(motionEvent.getPointerId(motionEvent.getActionIndex()), view);
            }
        }
        return !this.ignoreEvents;
    }

    public final void setState(int i) {
        if (i == 1 || i == 2) {
            throw new IllegalArgumentException(Modifier.CC.m(new StringBuilder("STATE_"), i == 1 ? "DRAGGING" : "SETTLING", " should not be set externally."));
        }
        WeakReference weakReference = this.viewRef;
        if (weakReference == null || weakReference.get() == null) {
            setStateInternal(i);
            return;
        }
        View view = (View) this.viewRef.get();
        ResourcesCompat$FontCallback$$ExternalSyntheticLambda1 resourcesCompat$FontCallback$$ExternalSyntheticLambda1 = new ResourcesCompat$FontCallback$$ExternalSyntheticLambda1(this, i, 1);
        ViewParent parent = view.getParent();
        if (parent != null && parent.isLayoutRequested()) {
            WeakHashMap weakHashMap = ViewCompat.sViewPropertyAnimatorMap;
            if (view.isAttachedToWindow()) {
                view.post(resourcesCompat$FontCallback$$ExternalSyntheticLambda1);
                return;
            }
        }
        resourcesCompat$FontCallback$$ExternalSyntheticLambda1.run();
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
        if (!it.hasNext()) {
            updateAccessibilityActions$1();
        } else {
            it.next().getClass();
            _UtilJvmKt$$ExternalSyntheticLambda1.m$2();
        }
    }

    public final boolean shouldHandleDraggingWithHelper$1() {
        if (this.viewDragHelper != null) {
            return this.draggable || this.state == 1;
        }
        return false;
    }

    @Override // com.google.android.material.motion.MaterialBackHandler
    public final void startBackProgress(BackEventCompat backEventCompat) {
        MaterialSideContainerBackHelper materialSideContainerBackHelper = this.sideContainerBackHelper;
        if (materialSideContainerBackHelper == null) {
            return;
        }
        materialSideContainerBackHelper.backEvent = backEventCompat;
    }

    public final void startSettling$1(View view, int i, boolean z) {
        int expandedOffset;
        if (i == 3) {
            expandedOffset = this.sheetDelegate.getExpandedOffset();
        } else {
            if (i != 5) {
                _UtilJvmKt$$ExternalSyntheticLambda1.m$1(Modifier.CC.m(i, "Invalid state to get outer edge offset: "));
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
        ViewCompat.removeActionWithId(262144, view);
        ViewCompat.notifyViewAccessibilityStateChangedIfNeeded(0, view);
        ViewCompat.removeActionWithId(ProgressiveMediaSource.DEFAULT_LOADING_CHECK_INTERVAL_BYTES, view);
        ViewCompat.notifyViewAccessibilityStateChangedIfNeeded(0, view);
        if (this.state != 5) {
            ViewCompat.replaceAccessibilityAction(view, AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_DISMISS, new SideSheetBehavior$$ExternalSyntheticLambda1(this, 5, 0));
        }
        if (this.state != 3) {
            ViewCompat.replaceAccessibilityAction(view, AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_EXPAND, new SideSheetBehavior$$ExternalSyntheticLambda1(this, 3, 0));
        }
    }

    @Override // com.google.android.material.motion.MaterialBackHandler
    public final void updateBackProgress(BackEventCompat backEventCompat) {
        ViewGroup.MarginLayoutParams marginLayoutParams;
        MaterialSideContainerBackHelper materialSideContainerBackHelper = this.sideContainerBackHelper;
        if (materialSideContainerBackHelper == null) {
            return;
        }
        SQLite sQLite = this.sheetDelegate;
        int i = (sQLite == null || sQLite.getSheetEdge() == 0) ? 5 : 3;
        if (materialSideContainerBackHelper.backEvent == null) {
            Log.w("MaterialBackHelper", "Must call startBackProgress() before updateBackProgress()");
        }
        BackEventCompat backEventCompat2 = materialSideContainerBackHelper.backEvent;
        materialSideContainerBackHelper.backEvent = backEventCompat;
        if (backEventCompat2 != null) {
            materialSideContainerBackHelper.updateBackProgress(backEventCompat.progress, i, backEventCompat.swipeEdge == 0);
        }
        WeakReference weakReference = this.viewRef;
        if (weakReference == null || weakReference.get() == null) {
            return;
        }
        View view = (View) this.viewRef.get();
        WeakReference weakReference2 = this.coplanarSiblingViewRef;
        View view2 = weakReference2 != null ? (View) weakReference2.get() : null;
        if (view2 == null || (marginLayoutParams = (ViewGroup.MarginLayoutParams) view2.getLayoutParams()) == null) {
            return;
        }
        this.sheetDelegate.updateCoplanarSiblingAdjacentMargin(marginLayoutParams, (int) ((view.getScaleX() * this.childWidth) + this.innerMargin));
        view2.requestLayout();
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
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
        this.stateSettlingTracker = new SrtFromTtmlWriter(this);
        this.draggable = true;
        this.state = 5;
        this.hideFriction = 0.1f;
        this.coplanarSiblingViewId = -1;
        this.callbacks = new LinkedHashSet();
        this.dragCallback = new AnonymousClass1(this, 0);
    }
}
