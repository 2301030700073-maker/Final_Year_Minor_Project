package app.k9mail.ui.utils.bottomsheet;

import android.content.res.ColorStateList;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.FrameLayout;
import androidx.activity.OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0;
import androidx.appcompat.app.AppCompatDialog;
import androidx.appcompat.widget.Toolbar;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsControllerCompat$Impl23;
import androidx.core.view.WindowInsetsControllerCompat$Impl26;
import androidx.core.view.WindowInsetsControllerCompat$Impl30;
import androidx.core.view.WindowInsetsControllerCompat$Impl35;
import androidx.fragment.app.Fragment;
import androidx.viewpager.widget.ViewPager;
import androidx.work.Data;
import coil3.UriKt$$ExternalSyntheticBUOutline0;
import com.fsck.k9.R;
import com.fsck.k9.activity.AlternateRecipientAdapter$$ExternalSyntheticLambda0;
import com.google.android.material.bottomsheet.BottomSheetBehavior;
import com.google.android.material.shape.MaterialShapeDrawable;
import java.util.ArrayList;
import java.util.LinkedHashSet;
import java.util.WeakHashMap;
import kotlin.math.MathKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class ToolbarBottomSheetDialog extends AppCompatDialog {
    public static final /* synthetic */ int $r8$clinit = 0;
    public FrameLayout bottomSheet;
    public final ToolbarBottomSheetDialog$cancelDialogCallback$1 cancelDialogCallback;
    public FrameLayout container;
    public CoordinatorLayout coordinator;
    public LayoutAwareBottomSheetBehavior internalBehavior;
    public boolean isDismissWithAnimation;
    public Toolbar toolbar;
    public ToolbarVisibilityCallback toolbarVisibilityCallback;

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class ToolbarVisibilityCallback extends BottomSheetBehavior.BottomSheetCallback {
        public final BottomSheetBehavior behavior;
        public final boolean lightStatusBar;
        public final boolean lightToolbar;
        public final Toolbar toolbar;
        public final int topInset;
        public final Fragment.AnonymousClass7 windowInsetsController;

        public ToolbarVisibilityCallback(Fragment.AnonymousClass7 anonymousClass7, Toolbar toolbar, int i, BottomSheetBehavior bottomSheetBehavior) {
            ColorStateList backgroundTintList;
            toolbar.getClass();
            bottomSheetBehavior.getClass();
            this.windowInsetsController = anonymousClass7;
            this.toolbar = toolbar;
            this.topInset = i;
            this.behavior = bottomSheetBehavior;
            boolean isAppearanceLightStatusBars = ((MathKt) anonymousClass7.this$0).isAppearanceLightStatusBars();
            this.lightStatusBar = isAppearanceLightStatusBars;
            Drawable background = toolbar.getBackground();
            if (background instanceof MaterialShapeDrawable) {
                backgroundTintList = ((MaterialShapeDrawable) background).drawableState.fillColor;
            } else {
                WeakHashMap weakHashMap = ViewCompat.sViewPropertyAnimatorMap;
                backgroundTintList = toolbar.getBackgroundTintList();
            }
            if (backgroundTintList != null) {
                isAppearanceLightStatusBars = Data.Companion.isColorLight(backgroundTintList.getDefaultColor());
            } else if (toolbar.getBackground() instanceof ColorDrawable) {
                Drawable background2 = toolbar.getBackground();
                background2.getClass();
                isAppearanceLightStatusBars = Data.Companion.isColorLight(((ColorDrawable) background2).getColor());
            }
            this.lightToolbar = isAppearanceLightStatusBars;
        }

        /* JADX WARN: Removed duplicated region for block: B:22:0x0086  */
        /* JADX WARN: Removed duplicated region for block: B:25:0x008c  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void handleToolbarVisibility(android.view.View r12) {
            /*
                r11 = this;
                int r0 = r12.getTop()
                android.view.ViewParent r1 = r12.getParent()
                r1.getClass()
                android.view.View r1 = (android.view.View) r1
                int r1 = r1.getHeight()
                int r1 = r1 / 2
                int r2 = r11.topInset
                r3 = 4
                androidx.appcompat.widget.Toolbar r4 = r11.toolbar
                r5 = 0
                if (r0 >= r1) goto L76
                com.google.android.material.bottomsheet.BottomSheetBehavior r6 = r11.behavior
                int r7 = r6.getExpandedOffset()
                if (r7 <= 0) goto L24
                goto L76
            L24:
                int r7 = r4.getHeight()
                int r8 = r4.getPaddingTop()
                int r7 = r7 - r8
                int r8 = r7 + r2
                int r9 = r1 - r0
                float r9 = (float) r9
                int r10 = r6.getExpandedOffset()
                int r1 = r1 - r10
                float r1 = (float) r1
                float r9 = r9 / r1
                r1 = 1065353216(0x3f800000, float:1.0)
                int r10 = (r9 > r1 ? 1 : (r9 == r1 ? 0 : -1))
                if (r10 <= 0) goto L40
                r9 = r1
            L40:
                float r1 = (float) r8
                float r1 = r1 * r9
                int r1 = (int) r1
                if (r1 >= 0) goto L46
                r1 = r5
            L46:
                r12.setPadding(r5, r1, r5, r5)
                int r0 = r7 - r0
                float r0 = (float) r0
                int r6 = r6.getExpandedOffset()
                int r6 = r7 - r6
                float r6 = (float) r6
                float r0 = r0 / r6
                r6 = 0
                int r8 = (r0 > r6 ? 1 : (r0 == r6 ? 0 : -1))
                if (r8 >= 0) goto L5a
                r0 = r6
            L5a:
                int r6 = (r0 > r6 ? 1 : (r0 == r6 ? 0 : -1))
                if (r6 <= 0) goto L72
                r4.setVisibility(r5)
                int r3 = r1 - r7
                if (r3 >= 0) goto L66
                r3 = r5
            L66:
                r4.setPadding(r5, r3, r5, r5)
                float r1 = (float) r1
                float r1 = -r1
                r4.setTranslationY(r1)
                r4.setAlpha(r0)
                goto L7c
            L72:
                r4.setVisibility(r3)
                goto L7c
            L76:
                r4.setVisibility(r3)
                r12.setPadding(r5, r5, r5, r5)
            L7c:
                int r2 = r2 / 2
                int r0 = r12.getTop()
                androidx.fragment.app.Fragment$7 r1 = r11.windowInsetsController
                if (r0 >= r2) goto L8c
                boolean r11 = r11.lightToolbar
                r1.setAppearanceLightStatusBars(r11)
                return
            L8c:
                int r12 = r12.getTop()
                if (r12 == 0) goto L97
                boolean r11 = r11.lightStatusBar
                r1.setAppearanceLightStatusBars(r11)
            L97:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: app.k9mail.ui.utils.bottomsheet.ToolbarBottomSheetDialog.ToolbarVisibilityCallback.handleToolbarVisibility(android.view.View):void");
        }

        @Override // com.google.android.material.bottomsheet.BottomSheetBehavior.BottomSheetCallback
        public final void onSlide(View view) {
            handleToolbarVisibility(view);
        }

        @Override // com.google.android.material.bottomsheet.BottomSheetBehavior.BottomSheetCallback
        public final void onStateChanged(View view, int i) {
            handleToolbarVisibility(view);
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public ToolbarBottomSheetDialog(android.content.Context r4, int r5) {
        /*
            r3 = this;
            r0 = 1
            if (r5 == 0) goto L4
            goto L18
        L4:
            android.util.TypedValue r5 = new android.util.TypedValue
            r5.<init>()
            android.content.res.Resources$Theme r1 = r4.getTheme()
            r2 = 2130968722(0x7f040092, float:1.7546106E38)
            boolean r1 = r1.resolveAttribute(r2, r5, r0)
            if (r1 == 0) goto L2b
            int r5 = r5.resourceId
        L18:
            r3.<init>(r4, r5)
            androidx.appcompat.app.AppCompatDelegate r4 = r3.getDelegate()
            r4.requestWindowFeature(r0)
            app.k9mail.ui.utils.bottomsheet.ToolbarBottomSheetDialog$cancelDialogCallback$1 r4 = new app.k9mail.ui.utils.bottomsheet.ToolbarBottomSheetDialog$cancelDialogCallback$1
            r5 = 0
            r4.<init>(r5, r3)
            r3.cancelDialogCallback = r4
            return
        L2b:
            java.lang.String r3 = "Missing bottomSheetDialogTheme attribute in theme"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$2(r3)
            r3 = 0
            throw r3
        */
        throw new UnsupportedOperationException("Method not decompiled: app.k9mail.ui.utils.bottomsheet.ToolbarBottomSheetDialog.<init>(android.content.Context, int):void");
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    public final void cancel() {
        LayoutAwareBottomSheetBehavior behavior = getBehavior();
        if (!this.isDismissWithAnimation || behavior.state == 5) {
            super.cancel();
        } else {
            behavior.setState(5);
        }
    }

    public final void ensureContainerAndBehavior() {
        if (this.container == null) {
            View inflate = View.inflate(getContext(), R.layout.design_bottom_sheet_dialog, null);
            inflate.getClass();
            final FrameLayout frameLayout = (FrameLayout) inflate;
            this.container = frameLayout;
            CoordinatorLayout coordinatorLayout = (CoordinatorLayout) frameLayout.findViewById(R.id.coordinator);
            if (coordinatorLayout == null) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m$2("View not found");
                return;
            }
            this.coordinator = coordinatorLayout;
            final FrameLayout frameLayout2 = (FrameLayout) frameLayout.findViewById(R.id.design_bottom_sheet);
            if (frameLayout2 == null) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m$2("View not found");
                return;
            }
            this.bottomSheet = frameLayout2;
            this.toolbar = (Toolbar) frameLayout2.findViewById(R.id.toolbar);
            ViewGroup.LayoutParams layoutParams = frameLayout2.getLayoutParams();
            if (!(layoutParams instanceof CoordinatorLayout.LayoutParams)) {
                UriKt$$ExternalSyntheticBUOutline0.m("The view is not a child of CoordinatorLayout");
                return;
            }
            CoordinatorLayout.Behavior behavior = ((CoordinatorLayout.LayoutParams) layoutParams).mBehavior;
            if (!(behavior instanceof LayoutAwareBottomSheetBehavior)) {
                UriKt$$ExternalSyntheticBUOutline0.m("The view is not associated with ToolbarBottomSheetBehavior");
                return;
            }
            final LayoutAwareBottomSheetBehavior layoutAwareBottomSheetBehavior = (LayoutAwareBottomSheetBehavior) behavior;
            ArrayList arrayList = ((BottomSheetBehavior) layoutAwareBottomSheetBehavior).callbacks;
            ToolbarBottomSheetDialog$cancelDialogCallback$1 toolbarBottomSheetDialog$cancelDialogCallback$1 = this.cancelDialogCallback;
            if (!arrayList.contains(toolbarBottomSheetDialog$cancelDialogCallback$1)) {
                arrayList.add(toolbarBottomSheetDialog$cancelDialogCallback$1);
            }
            if (!layoutAwareBottomSheetBehavior.hideable) {
                layoutAwareBottomSheetBehavior.hideable = true;
                layoutAwareBottomSheetBehavior.updateAccessibilityActions();
            }
            this.internalBehavior = layoutAwareBottomSheetBehavior;
            if (!frameLayout.isLaidOut() || frameLayout.isLayoutRequested()) {
                frameLayout.addOnLayoutChangeListener(new View.OnLayoutChangeListener() { // from class: app.k9mail.ui.utils.bottomsheet.ToolbarBottomSheetDialog$ensureContainerAndBehavior$$inlined$doOnLayout$1
                    @Override // android.view.View.OnLayoutChangeListener
                    public final void onLayoutChange(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
                        view.removeOnLayoutChangeListener(this);
                        LayoutAwareBottomSheetBehavior.this.setPeekHeight(frameLayout.getHeight() / 2);
                    }
                });
            } else {
                layoutAwareBottomSheetBehavior.setPeekHeight(frameLayout.getHeight() / 2);
            }
            if (!frameLayout2.isLaidOut() || frameLayout2.isLayoutRequested()) {
                frameLayout2.addOnLayoutChangeListener(new View.OnLayoutChangeListener() { // from class: app.k9mail.ui.utils.bottomsheet.ToolbarBottomSheetDialog$ensureContainerAndBehavior$$inlined$doOnLayout$2
                    @Override // android.view.View.OnLayoutChangeListener
                    public final void onLayoutChange(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
                        view.removeOnLayoutChangeListener(this);
                        int width = frameLayout2.getWidth();
                        FrameLayout frameLayout3 = frameLayout;
                        int width2 = frameLayout3.getWidth();
                        ToolbarBottomSheetDialog toolbarBottomSheetDialog = this;
                        if (width < width2) {
                            frameLayout3.setFitsSystemWindows(true);
                            CoordinatorLayout coordinatorLayout2 = toolbarBottomSheetDialog.coordinator;
                            if (coordinatorLayout2 != null) {
                                coordinatorLayout2.setFitsSystemWindows(true);
                            }
                            toolbarBottomSheetDialog.setToolbarVisibilityCallback(0);
                            return;
                        }
                        frameLayout3.setFitsSystemWindows(false);
                        CoordinatorLayout coordinatorLayout3 = toolbarBottomSheetDialog.coordinator;
                        if (coordinatorLayout3 != null) {
                            coordinatorLayout3.setFitsSystemWindows(false);
                        }
                    }
                });
                return;
            }
            if (frameLayout2.getWidth() < frameLayout.getWidth()) {
                frameLayout.setFitsSystemWindows(true);
                CoordinatorLayout coordinatorLayout2 = this.coordinator;
                if (coordinatorLayout2 != null) {
                    coordinatorLayout2.setFitsSystemWindows(true);
                }
                setToolbarVisibilityCallback(0);
                return;
            }
            frameLayout.setFitsSystemWindows(false);
            CoordinatorLayout coordinatorLayout3 = this.coordinator;
            if (coordinatorLayout3 != null) {
                coordinatorLayout3.setFitsSystemWindows(false);
            }
        }
    }

    public final LayoutAwareBottomSheetBehavior getBehavior() {
        if (this.internalBehavior == null) {
            ensureContainerAndBehavior();
        }
        LayoutAwareBottomSheetBehavior layoutAwareBottomSheetBehavior = this.internalBehavior;
        if (layoutAwareBottomSheetBehavior != null) {
            return layoutAwareBottomSheetBehavior;
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m$2("Missing ToolbarBottomSheetBehavior");
        return null;
    }

    @Override // android.app.Dialog, android.view.Window.Callback
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        Window window = getWindow();
        if (window != null) {
            FrameLayout frameLayout = this.container;
            if (frameLayout != null) {
                frameLayout.setFitsSystemWindows(false);
            }
            CoordinatorLayout coordinatorLayout = this.coordinator;
            if (coordinatorLayout != null) {
                coordinatorLayout.setFitsSystemWindows(false);
            }
            window.getDecorView().setSystemUiVisibility(window.getDecorView().getSystemUiVisibility() | 1280);
        }
    }

    @Override // androidx.appcompat.app.AppCompatDialog, androidx.activity.ComponentDialog, android.app.Dialog
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setCancelable(true);
        Window window = getWindow();
        if (window != null) {
            window.setStatusBarColor(0);
            window.addFlags(Integer.MIN_VALUE);
            window.setLayout(-1, -1);
        }
    }

    @Override // androidx.activity.ComponentDialog, android.app.Dialog
    public final void onStart() {
        super.onStart();
        LayoutAwareBottomSheetBehavior layoutAwareBottomSheetBehavior = this.internalBehavior;
        if (layoutAwareBottomSheetBehavior == null || layoutAwareBottomSheetBehavior.state != 5) {
            return;
        }
        layoutAwareBottomSheetBehavior.setState(4);
    }

    @Override // androidx.appcompat.app.AppCompatDialog, androidx.activity.ComponentDialog, android.app.Dialog
    public final void setContentView(View view) {
        view.getClass();
        ensureContainerAndBehavior();
        FrameLayout frameLayout = this.container;
        if (frameLayout == null) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$2("Required value was null.");
            return;
        }
        CoordinatorLayout coordinatorLayout = this.coordinator;
        if (coordinatorLayout == null) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$2("Required value was null.");
            return;
        }
        FrameLayout frameLayout2 = this.bottomSheet;
        if (frameLayout2 == null) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$2("Required value was null.");
            return;
        }
        OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0 onBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0 = new OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0(15, this);
        WeakHashMap weakHashMap = ViewCompat.sViewPropertyAnimatorMap;
        ViewCompat.Api21Impl.setOnApplyWindowInsetsListener(frameLayout2, onBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0);
        while (frameLayout2.getChildCount() > 1) {
            frameLayout2.removeViewAt(0);
        }
        frameLayout2.addView(view, 0);
        coordinatorLayout.findViewById(R.id.touch_outside).setOnClickListener(new AlternateRecipientAdapter$$ExternalSyntheticLambda0(2, this));
        ViewCompat.setAccessibilityDelegate(frameLayout2, new ViewPager.MyAccessibilityDelegate(3, this));
        frameLayout2.setOnTouchListener(new ToolbarBottomSheetDialog$$ExternalSyntheticLambda2(0));
        super.setContentView(frameLayout);
    }

    public final void setToolbarVisibilityCallback(int i) {
        Window window = getWindow();
        if (window == null) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$2("Required value was null.");
            return;
        }
        if (this.bottomSheet == null) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$2("Required value was null.");
            return;
        }
        Toolbar toolbar = this.toolbar;
        if (toolbar == null) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$2("Required value was null.");
            return;
        }
        LayoutAwareBottomSheetBehavior layoutAwareBottomSheetBehavior = this.internalBehavior;
        if (layoutAwareBottomSheetBehavior == null) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$2("Required value was null.");
            return;
        }
        ArrayList arrayList = ((BottomSheetBehavior) layoutAwareBottomSheetBehavior).callbacks;
        LinkedHashSet linkedHashSet = layoutAwareBottomSheetBehavior.callbacks;
        ToolbarVisibilityCallback toolbarVisibilityCallback = this.toolbarVisibilityCallback;
        if (toolbarVisibilityCallback != null) {
            arrayList.remove(toolbarVisibilityCallback);
            linkedHashSet.remove(toolbarVisibilityCallback);
        }
        Fragment.AnonymousClass7 anonymousClass7 = new Fragment.AnonymousClass7();
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 35) {
            anonymousClass7.this$0 = new WindowInsetsControllerCompat$Impl35(window);
        } else if (i2 >= 30) {
            anonymousClass7.this$0 = new WindowInsetsControllerCompat$Impl30(window);
        } else if (i2 >= 26) {
            anonymousClass7.this$0 = new WindowInsetsControllerCompat$Impl26(window);
        } else {
            anonymousClass7.this$0 = new WindowInsetsControllerCompat$Impl23(window);
        }
        ToolbarVisibilityCallback toolbarVisibilityCallback2 = new ToolbarVisibilityCallback(anonymousClass7, toolbar, i, layoutAwareBottomSheetBehavior);
        linkedHashSet.add(toolbarVisibilityCallback2);
        if (!arrayList.contains(toolbarVisibilityCallback2)) {
            arrayList.add(toolbarVisibilityCallback2);
        }
        this.toolbarVisibilityCallback = toolbarVisibilityCallback2;
    }

    @Override // androidx.appcompat.app.AppCompatDialog, androidx.activity.ComponentDialog, android.app.Dialog
    public final void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        view.getClass();
        throw new IllegalStateException("Not supported");
    }

    @Override // androidx.appcompat.app.AppCompatDialog, androidx.activity.ComponentDialog, android.app.Dialog
    public final void setContentView(int i) {
        throw new IllegalStateException("Not supported");
    }
}
