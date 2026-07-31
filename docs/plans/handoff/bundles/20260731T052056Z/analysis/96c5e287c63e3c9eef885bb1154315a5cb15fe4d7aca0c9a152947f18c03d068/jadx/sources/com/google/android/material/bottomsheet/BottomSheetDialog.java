package com.google.android.material.bottomsheet;

import android.content.res.ColorStateList;
import android.os.Build;
import android.os.Bundle;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.FrameLayout;
import androidx.appcompat.app.AppCompatDialog;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;
import androidx.core.view.WindowInsetsControllerCompat$Impl23;
import androidx.core.view.WindowInsetsControllerCompat$Impl26;
import androidx.core.view.WindowInsetsControllerCompat$Impl30;
import androidx.core.view.WindowInsetsControllerCompat$Impl35;
import androidx.paging.HintHandler;
import androidx.preference.Preference;
import coil3.memory.MemoryCacheService;
import com.caverock.androidsvg.SVG;
import com.google.android.material.bottomsheet.BottomSheetBehavior;
import com.google.android.material.datepicker.MaterialCalendar;
import com.google.android.material.motion.MaterialBackHandler;
import com.google.android.material.motion.MaterialBackOrchestrator$Api33BackCallbackDelegate;
import com.google.android.material.shape.MaterialShapeDrawable;
import java.util.ArrayList;
import java.util.WeakHashMap;
import kotlin.text.UStringsKt;
import org.wikipedia.R;
import org.wikipedia.util.FileUtil;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public class BottomSheetDialog extends AppCompatDialog {
    public SVG backOrchestrator;
    public BottomSheetBehavior behavior;
    public FrameLayout bottomSheet;
    public final AnonymousClass5 bottomSheetCallback;
    public boolean cancelable;
    public boolean canceledOnTouchOutside;
    public boolean canceledOnTouchOutsideSet;
    public FrameLayout container;
    public CoordinatorLayout coordinator;
    public EdgeToEdgeCallback edgeToEdgeCallback;
    public final boolean edgeToEdgeEnabled;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    /* renamed from: com.google.android.material.bottomsheet.BottomSheetDialog$4, reason: invalid class name */
    public final class AnonymousClass4 implements View.OnTouchListener {
        public final /* synthetic */ int $r8$classId;

        public /* synthetic */ AnonymousClass4(int i) {
            this.$r8$classId = i;
        }

        @Override // android.view.View.OnTouchListener
        public final boolean onTouch(View view, MotionEvent motionEvent) {
            switch (this.$r8$classId) {
            }
            return true;
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class EdgeToEdgeCallback extends BottomSheetBehavior.BottomSheetCallback {
        public final WindowInsetsCompat insetsCompat;
        public final Boolean lightBottomSheet;
        public boolean lightStatusBar;
        public Window window;

        public EdgeToEdgeCallback(View view, WindowInsetsCompat windowInsetsCompat) {
            this.insetsCompat = windowInsetsCompat;
            MaterialShapeDrawable materialShapeDrawable = BottomSheetBehavior.from(view).materialShapeDrawable;
            ColorStateList backgroundTintList = materialShapeDrawable != null ? materialShapeDrawable.drawableState.fillColor : view.getBackgroundTintList();
            if (backgroundTintList != null) {
                this.lightBottomSheet = Boolean.valueOf(UStringsKt.isColorLight(backgroundTintList.getDefaultColor()));
                return;
            }
            ColorStateList colorStateListOrNull = FileUtil.getColorStateListOrNull(view.getBackground());
            Integer valueOf = colorStateListOrNull != null ? Integer.valueOf(colorStateListOrNull.getDefaultColor()) : null;
            if (valueOf != null) {
                this.lightBottomSheet = Boolean.valueOf(UStringsKt.isColorLight(valueOf.intValue()));
            } else {
                this.lightBottomSheet = null;
            }
        }

        @Override // com.google.android.material.bottomsheet.BottomSheetBehavior.BottomSheetCallback
        public final void onLayout(View view) {
            setPaddingForPosition(view);
        }

        @Override // com.google.android.material.bottomsheet.BottomSheetBehavior.BottomSheetCallback
        public final void onSlide(View view) {
            setPaddingForPosition(view);
        }

        @Override // com.google.android.material.bottomsheet.BottomSheetBehavior.BottomSheetCallback
        public final void onStateChanged(View view, int i) {
            setPaddingForPosition(view);
        }

        public final void setPaddingForPosition(View view) {
            int top = view.getTop();
            WindowInsetsCompat windowInsetsCompat = this.insetsCompat;
            if (top < windowInsetsCompat.getSystemWindowInsetTop()) {
                Window window = this.window;
                if (window != null) {
                    Boolean bool = this.lightBottomSheet;
                    boolean booleanValue = bool == null ? this.lightStatusBar : bool.booleanValue();
                    HintHandler hintHandler = new HintHandler(window.getDecorView());
                    int i = Build.VERSION.SDK_INT;
                    (i >= 35 ? new WindowInsetsControllerCompat$Impl35(window, hintHandler) : i >= 30 ? new WindowInsetsControllerCompat$Impl30(window, hintHandler) : i >= 26 ? new WindowInsetsControllerCompat$Impl26(window, hintHandler) : new WindowInsetsControllerCompat$Impl23(window, hintHandler)).setAppearanceLightStatusBars(booleanValue);
                }
                view.setPadding(view.getPaddingLeft(), windowInsetsCompat.getSystemWindowInsetTop() - view.getTop(), view.getPaddingRight(), view.getPaddingBottom());
                return;
            }
            if (view.getTop() != 0) {
                Window window2 = this.window;
                if (window2 != null) {
                    boolean z = this.lightStatusBar;
                    HintHandler hintHandler2 = new HintHandler(window2.getDecorView());
                    int i2 = Build.VERSION.SDK_INT;
                    (i2 >= 35 ? new WindowInsetsControllerCompat$Impl35(window2, hintHandler2) : i2 >= 30 ? new WindowInsetsControllerCompat$Impl30(window2, hintHandler2) : i2 >= 26 ? new WindowInsetsControllerCompat$Impl26(window2, hintHandler2) : new WindowInsetsControllerCompat$Impl23(window2, hintHandler2)).setAppearanceLightStatusBars(z);
                }
                view.setPadding(view.getPaddingLeft(), 0, view.getPaddingRight(), view.getPaddingBottom());
            }
        }

        public final void setWindow(Window window) {
            if (this.window == window) {
                return;
            }
            this.window = window;
            if (window != null) {
                HintHandler hintHandler = new HintHandler(window.getDecorView());
                int i = Build.VERSION.SDK_INT;
                this.lightStatusBar = (i >= 35 ? new WindowInsetsControllerCompat$Impl35(window, hintHandler) : i >= 30 ? new WindowInsetsControllerCompat$Impl30(window, hintHandler) : i >= 26 ? new WindowInsetsControllerCompat$Impl26(window, hintHandler) : new WindowInsetsControllerCompat$Impl23(window, hintHandler)).isAppearanceLightStatusBars();
            }
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /* JADX WARN: Type inference failed for: r4v1, types: [com.google.android.material.bottomsheet.BottomSheetDialog$5] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public BottomSheetDialog(android.content.Context r4, int r5) {
        /*
            r3 = this;
            r0 = 1
            if (r5 != 0) goto L1b
            android.util.TypedValue r5 = new android.util.TypedValue
            r5.<init>()
            android.content.res.Resources$Theme r1 = r4.getTheme()
            r2 = 2130968729(0x7f040099, float:1.754612E38)
            boolean r1 = r1.resolveAttribute(r2, r5, r0)
            if (r1 == 0) goto L18
            int r5 = r5.resourceId
            goto L1b
        L18:
            r5 = 2131952474(0x7f13035a, float:1.9541392E38)
        L1b:
            r3.<init>(r4, r5)
            r3.cancelable = r0
            r3.canceledOnTouchOutside = r0
            com.google.android.material.bottomsheet.BottomSheetDialog$5 r4 = new com.google.android.material.bottomsheet.BottomSheetDialog$5
            r4.<init>()
            r3.bottomSheetCallback = r4
            androidx.appcompat.app.AppCompatDelegate r4 = r3.getDelegate()
            r4.requestWindowFeature(r0)
            android.content.Context r4 = r3.getContext()
            android.content.res.Resources$Theme r4 = r4.getTheme()
            r5 = 2130969091(0x7f040203, float:1.7546854E38)
            int[] r5 = new int[]{r5}
            android.content.res.TypedArray r4 = r4.obtainStyledAttributes(r5)
            r5 = 0
            boolean r5 = r4.getBoolean(r5, r5)
            r3.edgeToEdgeEnabled = r5
            r4.recycle()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.bottomsheet.BottomSheetDialog.<init>(android.content.Context, int):void");
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    public final void cancel() {
        getBehavior();
        super.cancel();
    }

    public final void ensureContainerAndBehavior() {
        if (this.container == null) {
            FrameLayout frameLayout = (FrameLayout) View.inflate(getContext(), R.layout.design_bottom_sheet_dialog, null);
            this.container = frameLayout;
            this.coordinator = (CoordinatorLayout) this.container.findViewById(R.id.coordinator);
            FrameLayout frameLayout2 = (FrameLayout) this.container.findViewById(R.id.design_bottom_sheet);
            this.bottomSheet = frameLayout2;
            BottomSheetBehavior from = BottomSheetBehavior.from(frameLayout2);
            this.behavior = from;
            ArrayList arrayList = from.callbacks;
            AnonymousClass5 anonymousClass5 = this.bottomSheetCallback;
            if (!arrayList.contains(anonymousClass5)) {
                arrayList.add(anonymousClass5);
            }
            this.behavior.setHideable(this.cancelable);
            this.backOrchestrator = new SVG(this.behavior, this.bottomSheet);
        }
    }

    public final BottomSheetBehavior getBehavior() {
        if (this.behavior == null) {
            ensureContainerAndBehavior();
        }
        return this.behavior;
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x002a  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0033  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0040  */
    @Override // android.app.Dialog, android.view.Window.Callback
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void onAttachedToWindow() {
        /*
            r6 = this;
            super.onAttachedToWindow()
            android.view.Window r0 = r6.getWindow()
            r1 = 0
            if (r0 == 0) goto L43
            boolean r2 = r6.edgeToEdgeEnabled
            r3 = 1
            if (r2 == 0) goto L25
            int r2 = android.os.Build.VERSION.SDK_INT
            r4 = 35
            if (r2 >= r4) goto L1a
            int r2 = r0.getNavigationBarColor()
            goto L1b
        L1a:
            r2 = r1
        L1b:
            int r2 = android.graphics.Color.alpha(r2)
            r4 = 255(0xff, float:3.57E-43)
            if (r2 >= r4) goto L25
            r2 = r3
            goto L26
        L25:
            r2 = r1
        L26:
            android.widget.FrameLayout r4 = r6.container
            if (r4 == 0) goto L2f
            r5 = r2 ^ 1
            r4.setFitsSystemWindows(r5)
        L2f:
            androidx.coordinatorlayout.widget.CoordinatorLayout r4 = r6.coordinator
            if (r4 == 0) goto L38
            r5 = r2 ^ 1
            r4.setFitsSystemWindows(r5)
        L38:
            r2 = r2 ^ r3
            kotlin.TuplesKt.setDecorFitsSystemWindows(r0, r2)
            com.google.android.material.bottomsheet.BottomSheetDialog$EdgeToEdgeCallback r2 = r6.edgeToEdgeCallback
            if (r2 == 0) goto L43
            r2.setWindow(r0)
        L43:
            com.caverock.androidsvg.SVG r0 = r6.backOrchestrator
            if (r0 != 0) goto L48
            goto L63
        L48:
            java.lang.Object r2 = r0.idToElementMap
            android.view.View r2 = (android.view.View) r2
            boolean r6 = r6.cancelable
            java.lang.Object r3 = r0.rootElement
            com.google.android.material.motion.MaterialBackOrchestrator$Api33BackCallbackDelegate r3 = (com.google.android.material.motion.MaterialBackOrchestrator$Api33BackCallbackDelegate) r3
            if (r6 == 0) goto L5e
            if (r3 == 0) goto L63
            java.lang.Object r6 = r0.cssRules
            com.google.android.material.motion.MaterialBackHandler r6 = (com.google.android.material.motion.MaterialBackHandler) r6
            r3.startListeningForBackCallbacks(r6, r2, r1)
            return
        L5e:
            if (r3 == 0) goto L63
            r3.stopListeningForBackCallbacks(r2)
        L63:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.bottomsheet.BottomSheetDialog.onAttachedToWindow():void");
    }

    @Override // androidx.appcompat.app.AppCompatDialog, androidx.activity.ComponentDialog, android.app.Dialog
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Window window = getWindow();
        if (window != null) {
            if (Build.VERSION.SDK_INT < 35) {
                window.setStatusBarColor(0);
            }
            window.addFlags(Integer.MIN_VALUE);
            window.setLayout(-1, -1);
        }
    }

    @Override // android.app.Dialog, android.view.Window.Callback
    public final void onDetachedFromWindow() {
        MaterialBackOrchestrator$Api33BackCallbackDelegate materialBackOrchestrator$Api33BackCallbackDelegate;
        EdgeToEdgeCallback edgeToEdgeCallback = this.edgeToEdgeCallback;
        if (edgeToEdgeCallback != null) {
            edgeToEdgeCallback.setWindow(null);
        }
        SVG svg = this.backOrchestrator;
        if (svg == null || (materialBackOrchestrator$Api33BackCallbackDelegate = (MaterialBackOrchestrator$Api33BackCallbackDelegate) svg.rootElement) == null) {
            return;
        }
        materialBackOrchestrator$Api33BackCallbackDelegate.stopListeningForBackCallbacks((View) svg.idToElementMap);
    }

    @Override // androidx.activity.ComponentDialog, android.app.Dialog
    public final void onStart() {
        super.onStart();
        BottomSheetBehavior bottomSheetBehavior = this.behavior;
        if (bottomSheetBehavior == null || bottomSheetBehavior.state != 5) {
            return;
        }
        bottomSheetBehavior.setState(4);
    }

    @Override // android.app.Dialog
    public final void setCancelable(boolean z) {
        SVG svg;
        super.setCancelable(z);
        if (this.cancelable != z) {
            this.cancelable = z;
            BottomSheetBehavior bottomSheetBehavior = this.behavior;
            if (bottomSheetBehavior != null) {
                bottomSheetBehavior.setHideable(z);
            }
            if (getWindow() == null || (svg = this.backOrchestrator) == null) {
                return;
            }
            View view = (View) svg.idToElementMap;
            boolean z2 = this.cancelable;
            MaterialBackOrchestrator$Api33BackCallbackDelegate materialBackOrchestrator$Api33BackCallbackDelegate = (MaterialBackOrchestrator$Api33BackCallbackDelegate) svg.rootElement;
            if (z2) {
                if (materialBackOrchestrator$Api33BackCallbackDelegate != null) {
                    materialBackOrchestrator$Api33BackCallbackDelegate.startListeningForBackCallbacks((MaterialBackHandler) svg.cssRules, view, false);
                }
            } else if (materialBackOrchestrator$Api33BackCallbackDelegate != null) {
                materialBackOrchestrator$Api33BackCallbackDelegate.stopListeningForBackCallbacks(view);
            }
        }
    }

    @Override // android.app.Dialog
    public final void setCanceledOnTouchOutside(boolean z) {
        super.setCanceledOnTouchOutside(z);
        if (z && !this.cancelable) {
            this.cancelable = true;
        }
        this.canceledOnTouchOutside = z;
        this.canceledOnTouchOutsideSet = true;
    }

    @Override // androidx.appcompat.app.AppCompatDialog, androidx.activity.ComponentDialog, android.app.Dialog
    public final void setContentView(View view) {
        super.setContentView(wrapInBottomSheet(view, 0, null));
    }

    public final FrameLayout wrapInBottomSheet(View view, int i, ViewGroup.LayoutParams layoutParams) {
        ensureContainerAndBehavior();
        CoordinatorLayout coordinatorLayout = (CoordinatorLayout) this.container.findViewById(R.id.coordinator);
        int i2 = 0;
        if (i != 0 && view == null) {
            view = getLayoutInflater().inflate(i, (ViewGroup) coordinatorLayout, false);
        }
        if (this.edgeToEdgeEnabled) {
            FrameLayout frameLayout = this.container;
            MemoryCacheService memoryCacheService = new MemoryCacheService(20, this);
            WeakHashMap weakHashMap = ViewCompat.sViewPropertyAnimatorMap;
            ViewCompat.Api21Impl.setOnApplyWindowInsetsListener(frameLayout, memoryCacheService);
        }
        this.bottomSheet.removeAllViews();
        FrameLayout frameLayout2 = this.bottomSheet;
        if (layoutParams == null) {
            frameLayout2.addView(view);
        } else {
            frameLayout2.addView(view, layoutParams);
        }
        coordinatorLayout.findViewById(R.id.touch_outside).setOnClickListener(new Preference.AnonymousClass1(5, this));
        ViewCompat.setAccessibilityDelegate(this.bottomSheet, new MaterialCalendar.AnonymousClass7(3, this));
        this.bottomSheet.setOnTouchListener(new AnonymousClass4(i2));
        return this.container;
    }

    @Override // androidx.appcompat.app.AppCompatDialog, androidx.activity.ComponentDialog, android.app.Dialog
    public final void setContentView(int i) {
        super.setContentView(wrapInBottomSheet(null, i, null));
    }

    @Override // androidx.appcompat.app.AppCompatDialog, androidx.activity.ComponentDialog, android.app.Dialog
    public final void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        super.setContentView(wrapInBottomSheet(view, 0, layoutParams));
    }
}
