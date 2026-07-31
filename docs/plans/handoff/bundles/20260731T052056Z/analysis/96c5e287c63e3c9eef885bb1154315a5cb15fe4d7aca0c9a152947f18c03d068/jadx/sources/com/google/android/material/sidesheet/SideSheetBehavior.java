package com.google.android.material.sidesheet;

import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.Log;
import android.util.Property;
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
import androidx.compose.animation.core.Animation;
import androidx.compose.ui.Modifier;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.core.view.accessibility.AccessibilityViewCommand;
import androidx.core.widget.RemoteViewsCompat$RemoteCollectionItems;
import androidx.customview.view.AbsSavedState;
import androidx.customview.widget.ViewDragHelper;
import androidx.recyclerview.widget.RecyclerView;
import androidx.work.OperationKt;
import coil3.util.ContextsKt$$ExternalSyntheticBUOutline0;
import com.google.android.material.R$styleable;
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
import kotlin.TuplesKt;
import kotlin.text.RegexKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.wikipedia.R;
import org.wikipedia.databinding.ItemNotificationBinding;
import org.wikipedia.talk.TalkTopicActivity$$ExternalSyntheticLambda10;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
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
    public TuplesKt sheetDelegate;
    public MaterialSideContainerBackHelper sideContainerBackHelper;
    public int state;
    public final RemoteViewsCompat$RemoteCollectionItems stateSettlingTracker;
    public VelocityTracker velocityTracker;
    public ViewDragHelper viewDragHelper;
    public WeakReference viewRef;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    /* renamed from: com.google.android.material.sidesheet.SideSheetBehavior$1, reason: invalid class name */
    public final class AnonymousClass1 extends OperationKt {
        public final /* synthetic */ int $r8$classId;
        public final /* synthetic */ CoordinatorLayout.Behavior this$0;

        public /* synthetic */ AnonymousClass1(CoordinatorLayout.Behavior behavior, int i) {
            this.$r8$classId = i;
            this.this$0 = behavior;
        }

        @Override // androidx.work.OperationKt
        public final int clampViewPositionHorizontal(View view, int i) {
            switch (this.$r8$classId) {
                case 0:
                    SideSheetBehavior sideSheetBehavior = (SideSheetBehavior) this.this$0;
                    return RegexKt.clamp(i, sideSheetBehavior.sheetDelegate.getMinViewPositionHorizontal(), sideSheetBehavior.sheetDelegate.getMaxViewPositionHorizontal());
                default:
                    return view.getLeft();
            }
        }

        @Override // androidx.work.OperationKt
        public final int clampViewPositionVertical(View view, int i) {
            switch (this.$r8$classId) {
                case 0:
                    return view.getTop();
                default:
                    return RegexKt.clamp(i, ((BottomSheetBehavior) this.this$0).getExpandedOffset(), getViewVerticalDragRange());
            }
        }

        @Override // androidx.work.OperationKt
        public int getViewHorizontalDragRange(View view) {
            switch (this.$r8$classId) {
                case 0:
                    SideSheetBehavior sideSheetBehavior = (SideSheetBehavior) this.this$0;
                    return sideSheetBehavior.childWidth + sideSheetBehavior.innerMargin;
                default:
                    return super.getViewHorizontalDragRange(view);
            }
        }

        @Override // androidx.work.OperationKt
        public int getViewVerticalDragRange() {
            switch (this.$r8$classId) {
                case 1:
                    BottomSheetBehavior bottomSheetBehavior = (BottomSheetBehavior) this.this$0;
                    return bottomSheetBehavior.hideable ? bottomSheetBehavior.parentHeight : bottomSheetBehavior.collapsedOffset;
                default:
                    return super.getViewVerticalDragRange();
            }
        }

        @Override // androidx.work.OperationKt
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

        @Override // androidx.work.OperationKt
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
                        throw Modifier.CC.m(it);
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
        /* JADX WARN: Code restructure failed: missing block: B:56:0x0103, code lost:
        
            if (r6.sheetDelegate.isReleasedCloseToInnerEdge(r7) == false) goto L58;
         */
        /* JADX WARN: Code restructure failed: missing block: B:62:0x0132, code lost:
        
            if (java.lang.Math.abs(r8 - r6.sheetDelegate.getExpandedOffset()) < java.lang.Math.abs(r8 - r6.sheetDelegate.getHiddenOffset())) goto L58;
         */
        @Override // androidx.work.OperationKt
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void onViewReleased(android.view.View r7, float r8, float r9) {
            /*
                Method dump skipped, instructions count: 320
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.sidesheet.SideSheetBehavior.AnonymousClass1.onViewReleased(android.view.View, float, float):void");
        }

        /* JADX WARN: Code restructure failed: missing block: B:18:0x0049, code lost:
        
            if (r0.canScrollVertically(-1) != false) goto L31;
         */
        @Override // androidx.work.OperationKt
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
            this.backgroundTint = OperationKt.getColorStateList(context, obtainStyledAttributes, 3);
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

    @Override // com.google.android.material.motion.MaterialBackHandler
    public final void cancelBackProgress() {
        MaterialSideContainerBackHelper materialSideContainerBackHelper = this.sideContainerBackHelper;
        if (materialSideContainerBackHelper == null) {
            return;
        }
        View view = materialSideContainerBackHelper.view;
        if (materialSideContainerBackHelper.backEvent == null) {
            Log.w("MaterialBackHelper", "Must call startBackProgress() and updateBackProgress() before cancelBackProgress()");
        }
        BackEventCompat backEventCompat = materialSideContainerBackHelper.backEvent;
        materialSideContainerBackHelper.backEvent = null;
        if (backEventCompat == null) {
            return;
        }
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.playTogether(ObjectAnimator.ofFloat(view, (Property<View, Float>) View.SCALE_X, 1.0f), ObjectAnimator.ofFloat(view, (Property<View, Float>) View.SCALE_Y, 1.0f));
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            for (int i = 0; i < viewGroup.getChildCount(); i++) {
                animatorSet.playTogether(ObjectAnimator.ofFloat(viewGroup.getChildAt(i), (Property<View, Float>) View.SCALE_Y, 1.0f));
            }
        }
        animatorSet.setDuration(materialSideContainerBackHelper.cancelDuration);
        animatorSet.start();
    }

    /*  JADX ERROR: JadxRuntimeException in pass: ProcessVariables
        jadx.core.utils.exceptions.JadxRuntimeException: Method arg registers not loaded: com.google.android.material.motion.MaterialSideContainerBackHelper.1.<init>(com.google.android.material.motion.MaterialSideContainerBackHelper, boolean, int):void, class status: GENERATED_AND_UNLOADED
        	at jadx.core.dex.nodes.MethodNode.getArgRegs(MethodNode.java:290)
        	at jadx.core.dex.visitors.regions.variables.ProcessVariables$1.isArgUnused(ProcessVariables.java:146)
        	at jadx.core.dex.visitors.regions.variables.ProcessVariables$1.lambda$isVarUnused$0(ProcessVariables.java:131)
        	at jadx.core.utils.ListUtils.allMatch(ListUtils.java:193)
        	at jadx.core.dex.visitors.regions.variables.ProcessVariables$1.isVarUnused(ProcessVariables.java:131)
        	at jadx.core.dex.visitors.regions.variables.ProcessVariables$1.processBlock(ProcessVariables.java:82)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:64)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1596)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1596)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1596)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1596)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1596)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverse(DepthRegionTraversal.java:19)
        	at jadx.core.dex.visitors.regions.variables.ProcessVariables.removeUnusedResults(ProcessVariables.java:73)
        	at jadx.core.dex.visitors.regions.variables.ProcessVariables.visit(ProcessVariables.java:48)
        */
    @Override // com.google.android.material.motion.MaterialBackHandler
    public final void handleBackInvoked() {
        /*
            r12 = this;
            com.google.android.material.motion.MaterialSideContainerBackHelper r0 = r12.sideContainerBackHelper
            if (r0 != 0) goto L5
            return
        L5:
            androidx.activity.BackEventCompat r1 = r0.backEvent
            r2 = 0
            r0.backEvent = r2
            r3 = 5
            if (r1 == 0) goto Lbc
            int r4 = android.os.Build.VERSION.SDK_INT
            r5 = 34
            if (r4 >= r5) goto L15
            goto Lbc
        L15:
            kotlin.TuplesKt r4 = r12.sheetDelegate
            r5 = 3
            if (r4 == 0) goto L22
            int r4 = r4.getSheetEdge()
            if (r4 != 0) goto L21
            goto L22
        L21:
            r3 = r5
        L22:
            androidx.transition.Transition$3 r4 = new androidx.transition.Transition$3
            r6 = 9
            r4.<init>(r6, r12)
            java.lang.ref.WeakReference r6 = r12.coplanarSiblingViewRef
            if (r6 == 0) goto L34
            java.lang.Object r6 = r6.get()
            android.view.View r6 = (android.view.View) r6
            goto L35
        L34:
            r6 = r2
        L35:
            if (r6 != 0) goto L38
            goto L4d
        L38:
            android.view.ViewGroup$LayoutParams r7 = r6.getLayoutParams()
            android.view.ViewGroup$MarginLayoutParams r7 = (android.view.ViewGroup.MarginLayoutParams) r7
            if (r7 != 0) goto L41
            goto L4d
        L41:
            kotlin.TuplesKt r2 = r12.sheetDelegate
            int r2 = r2.getCoplanarSiblingAdjacentMargin(r7)
            com.google.android.material.sidesheet.SideSheetBehavior$$ExternalSyntheticLambda2 r8 = new com.google.android.material.sidesheet.SideSheetBehavior$$ExternalSyntheticLambda2
            r8.<init>()
            r2 = r8
        L4d:
            android.view.View r12 = r0.view
            int r6 = r1.swipeEdge
            r7 = 1
            r8 = 0
            if (r6 != 0) goto L57
            r6 = r7
            goto L58
        L57:
            r6 = r8
        L58:
            int r9 = r12.getLayoutDirection()
            int r9 = android.view.Gravity.getAbsoluteGravity(r3, r9)
            r9 = r9 & r5
            if (r9 != r5) goto L65
            r5 = r7
            goto L66
        L65:
            r5 = r8
        L66:
            int r9 = r12.getWidth()
            float r9 = (float) r9
            float r10 = r12.getScaleX()
            float r10 = r10 * r9
            android.view.ViewGroup$LayoutParams r9 = r12.getLayoutParams()
            boolean r11 = r9 instanceof android.view.ViewGroup.MarginLayoutParams
            if (r11 == 0) goto L82
            android.view.ViewGroup$MarginLayoutParams r9 = (android.view.ViewGroup.MarginLayoutParams) r9
            if (r5 == 0) goto L7f
            int r9 = r9.leftMargin
            goto L83
        L7f:
            int r9 = r9.rightMargin
            goto L83
        L82:
            r9 = r8
        L83:
            float r9 = (float) r9
            float r10 = r10 + r9
            android.util.Property r9 = android.view.View.TRANSLATION_X
            if (r5 == 0) goto L8a
            float r10 = -r10
        L8a:
            float[] r5 = new float[r7]
            r5[r8] = r10
            android.animation.ObjectAnimator r12 = android.animation.ObjectAnimator.ofFloat(r12, r9, r5)
            if (r2 == 0) goto L97
            r12.addUpdateListener(r2)
        L97:
            androidx.interpolator.view.animation.FastOutSlowInInterpolator r2 = new androidx.interpolator.view.animation.FastOutSlowInInterpolator
            r2.<init>(r8)
            r12.setInterpolator(r2)
            int r2 = r0.hideDurationMax
            int r5 = r0.hideDurationMin
            float r1 = r1.progress
            int r1 = com.google.android.material.animation.AnimationUtils.lerp(r2, r1, r5)
            long r1 = (long) r1
            r12.setDuration(r1)
            com.google.android.material.motion.MaterialSideContainerBackHelper$1 r1 = new com.google.android.material.motion.MaterialSideContainerBackHelper$1
            r1.<init>()
            r12.addListener(r1)
            r12.addListener(r4)
            r12.start()
            return
        Lbc:
            r12.setState(r3)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.sidesheet.SideSheetBehavior.handleBackInvoked():void");
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
        VelocityTracker velocityTracker2 = this.velocityTracker;
        if (velocityTracker2 == null) {
            velocityTracker2 = VelocityTracker.obtain();
            this.velocityTracker = velocityTracker2;
        }
        velocityTracker2.addMovement(motionEvent);
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
        TuplesKt tuplesKt = this.sheetDelegate;
        if (tuplesKt == null || tuplesKt.getSheetEdge() != i6) {
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
                        ItemNotificationBinding builder = shapeAppearanceModel.toBuilder();
                        builder.notificationTitle = new AbsoluteCornerSize(RecyclerView.DECELERATION_RATE);
                        builder.notificationItemImage = new AbsoluteCornerSize(RecyclerView.DECELERATION_RATE);
                        ShapeAppearanceModel build = builder.build();
                        if (materialShapeDrawable != null) {
                            materialShapeDrawable.setShapeAppearanceModel(build);
                        }
                    }
                }
            } else {
                if (i6 != 1) {
                    _UtilJvmKt$$ExternalSyntheticLambda0.m(Animation.CC.m(i6, "Invalid sheet edge position value: ", ". Must be 0 or 1."));
                    return false;
                }
                this.sheetDelegate = new LeftSheetDelegate(this, i4);
                if (shapeAppearanceModel != null) {
                    WeakReference weakReference3 = this.viewRef;
                    if (weakReference3 != null && (view2 = (View) weakReference3.get()) != null && (view2.getLayoutParams() instanceof CoordinatorLayout.LayoutParams)) {
                        layoutParams = (CoordinatorLayout.LayoutParams) view2.getLayoutParams();
                    }
                    if (layoutParams == null || ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin <= 0) {
                        ItemNotificationBinding builder2 = shapeAppearanceModel.toBuilder();
                        builder2.notificationTime = new AbsoluteCornerSize(RecyclerView.DECELERATION_RATE);
                        builder2.notificationItemSelectedImage = new AbsoluteCornerSize(RecyclerView.DECELERATION_RATE);
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
                _UtilJvmKt$$ExternalSyntheticLambda0.m$2(this.state, "Unexpected value: ");
                return false;
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
                ContextsKt$$ExternalSyntheticBUOutline0.m$1();
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
        VelocityTracker velocityTracker2 = this.velocityTracker;
        if (velocityTracker2 == null) {
            velocityTracker2 = VelocityTracker.obtain();
            this.velocityTracker = velocityTracker2;
        }
        velocityTracker2.addMovement(motionEvent);
        if (shouldHandleDraggingWithHelper$1() && actionMasked == 2 && !this.ignoreEvents && shouldHandleDraggingWithHelper$1()) {
            float abs = Math.abs(this.initialX - motionEvent.getX());
            ViewDragHelper viewDragHelper = this.viewDragHelper;
            if (abs > viewDragHelper.mTouchSlop) {
                viewDragHelper.captureChildView(view, motionEvent.getPointerId(motionEvent.getActionIndex()));
            }
        }
        return !this.ignoreEvents;
    }

    public final void setState(int i) {
        if (i == 1 || i == 2) {
            throw new IllegalArgumentException(Animation.CC.m(new StringBuilder("STATE_"), i == 1 ? "DRAGGING" : "SETTLING", " should not be set externally."));
        }
        WeakReference weakReference = this.viewRef;
        if (weakReference == null || weakReference.get() == null) {
            setStateInternal(i);
            return;
        }
        View view = (View) this.viewRef.get();
        TalkTopicActivity$$ExternalSyntheticLambda10 talkTopicActivity$$ExternalSyntheticLambda10 = new TalkTopicActivity$$ExternalSyntheticLambda10(i, 4, this);
        ViewParent parent = view.getParent();
        if (parent != null && parent.isLayoutRequested() && view.isAttachedToWindow()) {
            view.post(talkTopicActivity$$ExternalSyntheticLambda10);
        } else {
            talkTopicActivity$$ExternalSyntheticLambda10.run();
        }
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
            throw Modifier.CC.m(it);
        }
        updateAccessibilityActions$1();
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
                _UtilJvmKt$$ExternalSyntheticLambda0.m(Animation.CC.m(i, "Invalid state to get outer edge offset: "));
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
            ViewCompat.replaceAccessibilityAction(view, AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_DISMISS, new AccessibilityViewCommand() { // from class: com.google.android.material.sidesheet.SideSheetBehavior$$ExternalSyntheticLambda1
                @Override // androidx.core.view.accessibility.AccessibilityViewCommand
                public final boolean perform(View view2) {
                    SideSheetBehavior.this.setState(i);
                    return true;
                }
            });
        }
        final int i2 = 3;
        if (this.state != 3) {
            ViewCompat.replaceAccessibilityAction(view, AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_EXPAND, new AccessibilityViewCommand() { // from class: com.google.android.material.sidesheet.SideSheetBehavior$$ExternalSyntheticLambda1
                @Override // androidx.core.view.accessibility.AccessibilityViewCommand
                public final boolean perform(View view2) {
                    SideSheetBehavior.this.setState(i2);
                    return true;
                }
            });
        }
    }

    @Override // com.google.android.material.motion.MaterialBackHandler
    public final void updateBackProgress(BackEventCompat backEventCompat) {
        ViewGroup.MarginLayoutParams marginLayoutParams;
        MaterialSideContainerBackHelper materialSideContainerBackHelper = this.sideContainerBackHelper;
        if (materialSideContainerBackHelper == null) {
            return;
        }
        TuplesKt tuplesKt = this.sheetDelegate;
        int i = (tuplesKt == null || tuplesKt.getSheetEdge() == 0) ? 5 : 3;
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

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class SavedState extends androidx.customview.view.AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new AbsSavedState.AnonymousClass2(14);
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
