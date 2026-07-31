package com.google.android.material.snackbar;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityManager;
import android.widget.Button;
import android.widget.FrameLayout;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import com.google.android.material.snackbar.BaseTransientBottomBar;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;
import org.schabi.newpipe.R;
import org.schabi.newpipe.player.ui.VideoPlayerUi$$ExternalSyntheticLambda42;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class Snackbar extends BaseTransientBottomBar {
    public static final int[] SNACKBAR_CONTENT_STYLE_ATTRS = {R.attr.snackbarButtonStyle, R.attr.snackbarTextViewStyle};
    public final AccessibilityManager accessibilityManager;
    public boolean hasAction;

    public Snackbar(Context context, ViewGroup viewGroup, SnackbarContentLayout snackbarContentLayout, SnackbarContentLayout snackbarContentLayout2) {
        super(context, viewGroup, snackbarContentLayout, snackbarContentLayout2);
        this.accessibilityManager = (AccessibilityManager) viewGroup.getContext().getSystemService("accessibility");
    }

    public static Snackbar make(View view, CharSequence charSequence, int i) {
        ViewGroup viewGroup;
        ViewGroup viewGroup2 = null;
        while (true) {
            if (view instanceof CoordinatorLayout) {
                viewGroup = (ViewGroup) view;
                break;
            }
            if (view instanceof FrameLayout) {
                if (view.getId() == 16908290) {
                    viewGroup = (ViewGroup) view;
                    break;
                }
                viewGroup2 = (ViewGroup) view;
            }
            if (view != null) {
                Object parent = view.getParent();
                view = parent instanceof View ? (View) parent : null;
            }
            if (view == null) {
                viewGroup = viewGroup2;
                break;
            }
        }
        if (viewGroup == null) {
            _UtilJvmKt$$ExternalSyntheticLambda1.m$1("No suitable parent found from the given view. Please provide a valid view.");
            return null;
        }
        Context context = viewGroup.getContext();
        LayoutInflater from = LayoutInflater.from(context);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(SNACKBAR_CONTENT_STYLE_ATTRS);
        int resourceId = obtainStyledAttributes.getResourceId(0, -1);
        int resourceId2 = obtainStyledAttributes.getResourceId(1, -1);
        obtainStyledAttributes.recycle();
        SnackbarContentLayout snackbarContentLayout = (SnackbarContentLayout) from.inflate((resourceId == -1 || resourceId2 == -1) ? R.layout.design_layout_snackbar_include : R.layout.mtrl_layout_snackbar_include, viewGroup, false);
        Snackbar snackbar = new Snackbar(context, viewGroup, snackbarContentLayout, snackbarContentLayout);
        ((SnackbarContentLayout) snackbar.view.getChildAt(0)).getMessageView().setText(charSequence);
        snackbar.duration = i;
        return snackbar;
    }

    public final void setAction(CharSequence charSequence, View.OnClickListener onClickListener) {
        Button actionView = ((SnackbarContentLayout) this.view.getChildAt(0)).getActionView();
        if (TextUtils.isEmpty(charSequence)) {
            actionView.setVisibility(8);
            actionView.setOnClickListener(null);
            this.hasAction = false;
        } else {
            this.hasAction = true;
            actionView.setVisibility(0);
            actionView.setText(charSequence);
            actionView.setOnClickListener(new VideoPlayerUi$$ExternalSyntheticLambda42(this, onClickListener, 1));
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:41:0x0028, code lost:
    
        if (r1.isTouchExplorationEnabled() != false) goto L14;
     */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0030 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void show() {
        /*
            r9 = this;
            okhttp3.Dispatcher r0 = okhttp3.Dispatcher.getInstance()
            android.view.accessibility.AccessibilityManager r1 = r9.accessibilityManager
            int r2 = r9.duration
            r3 = 0
            r4 = 4
            r5 = -2
            if (r2 != r5) goto Le
            goto L2a
        Le:
            int r6 = android.os.Build.VERSION.SDK_INT
            boolean r7 = r9.hasAction
            r8 = 29
            if (r6 < r8) goto L22
            if (r7 == 0) goto L1a
            r5 = r4
            goto L1b
        L1a:
            r5 = r3
        L1b:
            r5 = r5 | 3
            int r2 = r1.getRecommendedTimeoutMillis(r2, r5)
            goto L2b
        L22:
            if (r7 == 0) goto L2b
            boolean r1 = r1.isTouchExplorationEnabled()
            if (r1 == 0) goto L2b
        L2a:
            r2 = r5
        L2b:
            com.google.android.material.snackbar.BaseTransientBottomBar$5 r9 = r9.managerCallback
            java.lang.Object r1 = r0.executorServiceOrNull
            monitor-enter(r1)
            boolean r5 = r0.isCurrentSnackbarLocked(r9)     // Catch: java.lang.Throwable -> L4c
            if (r5 == 0) goto L4e
            java.lang.Object r9 = r0.runningAsyncCalls     // Catch: java.lang.Throwable -> L4c
            com.google.android.material.snackbar.SnackbarManager$SnackbarRecord r9 = (com.google.android.material.snackbar.SnackbarManager$SnackbarRecord) r9     // Catch: java.lang.Throwable -> L4c
            r9.duration = r2     // Catch: java.lang.Throwable -> L4c
            java.lang.Object r2 = r0.readyAsyncCalls     // Catch: java.lang.Throwable -> L4c
            android.os.Handler r2 = (android.os.Handler) r2     // Catch: java.lang.Throwable -> L4c
            r2.removeCallbacksAndMessages(r9)     // Catch: java.lang.Throwable -> L4c
            java.lang.Object r9 = r0.runningAsyncCalls     // Catch: java.lang.Throwable -> L4c
            com.google.android.material.snackbar.SnackbarManager$SnackbarRecord r9 = (com.google.android.material.snackbar.SnackbarManager$SnackbarRecord) r9     // Catch: java.lang.Throwable -> L4c
            r0.scheduleTimeoutLocked(r9)     // Catch: java.lang.Throwable -> L4c
            monitor-exit(r1)     // Catch: java.lang.Throwable -> L4c
            return
        L4c:
            r9 = move-exception
            goto L83
        L4e:
            java.lang.Object r5 = r0.runningSyncCalls     // Catch: java.lang.Throwable -> L4c
            com.google.android.material.snackbar.SnackbarManager$SnackbarRecord r5 = (com.google.android.material.snackbar.SnackbarManager$SnackbarRecord) r5     // Catch: java.lang.Throwable -> L4c
            if (r5 == 0) goto L5d
            java.lang.ref.WeakReference r5 = r5.callback     // Catch: java.lang.Throwable -> L4c
            java.lang.Object r5 = r5.get()     // Catch: java.lang.Throwable -> L4c
            if (r5 != r9) goto L5d
            r3 = 1
        L5d:
            if (r3 == 0) goto L66
            java.lang.Object r9 = r0.runningSyncCalls     // Catch: java.lang.Throwable -> L4c
            com.google.android.material.snackbar.SnackbarManager$SnackbarRecord r9 = (com.google.android.material.snackbar.SnackbarManager$SnackbarRecord) r9     // Catch: java.lang.Throwable -> L4c
            r9.duration = r2     // Catch: java.lang.Throwable -> L4c
            goto L6d
        L66:
            com.google.android.material.snackbar.SnackbarManager$SnackbarRecord r3 = new com.google.android.material.snackbar.SnackbarManager$SnackbarRecord     // Catch: java.lang.Throwable -> L4c
            r3.<init>(r2, r9)     // Catch: java.lang.Throwable -> L4c
            r0.runningSyncCalls = r3     // Catch: java.lang.Throwable -> L4c
        L6d:
            java.lang.Object r9 = r0.runningAsyncCalls     // Catch: java.lang.Throwable -> L4c
            com.google.android.material.snackbar.SnackbarManager$SnackbarRecord r9 = (com.google.android.material.snackbar.SnackbarManager$SnackbarRecord) r9     // Catch: java.lang.Throwable -> L4c
            if (r9 == 0) goto L7b
            boolean r9 = r0.cancelSnackbarLocked(r9, r4)     // Catch: java.lang.Throwable -> L4c
            if (r9 == 0) goto L7b
            monitor-exit(r1)     // Catch: java.lang.Throwable -> L4c
            return
        L7b:
            r9 = 0
            r0.runningAsyncCalls = r9     // Catch: java.lang.Throwable -> L4c
            r0.showNextSnackbarLocked()     // Catch: java.lang.Throwable -> L4c
            monitor-exit(r1)     // Catch: java.lang.Throwable -> L4c
            return
        L83:
            monitor-exit(r1)     // Catch: java.lang.Throwable -> L4c
            throw r9
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.snackbar.Snackbar.show():void");
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class SnackbarLayout extends BaseTransientBottomBar.SnackbarBaseLayout {
        public SnackbarLayout(Context context) {
            super(context, null);
        }

        @Override // com.google.android.material.snackbar.BaseTransientBottomBar.SnackbarBaseLayout, android.widget.FrameLayout, android.view.View
        public final void onMeasure(int i, int i2) {
            super.onMeasure(i, i2);
            int childCount = getChildCount();
            int measuredWidth = (getMeasuredWidth() - getPaddingLeft()) - getPaddingRight();
            for (int i3 = 0; i3 < childCount; i3++) {
                View childAt = getChildAt(i3);
                if (childAt.getLayoutParams().width == -1) {
                    childAt.measure(View.MeasureSpec.makeMeasureSpec(measuredWidth, 1073741824), View.MeasureSpec.makeMeasureSpec(childAt.getMeasuredHeight(), 1073741824));
                }
            }
        }

        @Override // com.google.android.material.snackbar.BaseTransientBottomBar.SnackbarBaseLayout, android.view.View
        public /* bridge */ /* synthetic */ void setBackground(Drawable drawable) {
            super.setBackground(drawable);
        }

        @Override // com.google.android.material.snackbar.BaseTransientBottomBar.SnackbarBaseLayout, android.view.View
        public /* bridge */ /* synthetic */ void setBackgroundDrawable(Drawable drawable) {
            super.setBackgroundDrawable(drawable);
        }

        @Override // com.google.android.material.snackbar.BaseTransientBottomBar.SnackbarBaseLayout, android.view.View
        public /* bridge */ /* synthetic */ void setBackgroundTintList(ColorStateList colorStateList) {
            super.setBackgroundTintList(colorStateList);
        }

        @Override // com.google.android.material.snackbar.BaseTransientBottomBar.SnackbarBaseLayout, android.view.View
        public /* bridge */ /* synthetic */ void setBackgroundTintMode(PorterDuff.Mode mode) {
            super.setBackgroundTintMode(mode);
        }

        @Override // com.google.android.material.snackbar.BaseTransientBottomBar.SnackbarBaseLayout, android.view.View
        public /* bridge */ /* synthetic */ void setLayoutParams(ViewGroup.LayoutParams layoutParams) {
            super.setLayoutParams(layoutParams);
        }

        @Override // com.google.android.material.snackbar.BaseTransientBottomBar.SnackbarBaseLayout, android.view.View
        public /* bridge */ /* synthetic */ void setOnClickListener(View.OnClickListener onClickListener) {
            super.setOnClickListener(onClickListener);
        }

        public SnackbarLayout(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }
    }
}
