package androidx.compose.ui.window;

import android.os.Build;
import android.view.ContextThemeWrapper;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import androidx.activity.ComponentDialog;
import androidx.activity.OnBackPressedCallback;
import androidx.activity.OnBackPressedDispatcher;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.LayoutDirection;
import androidx.compose.ui.window.DialogWrapper;
import androidx.lifecycle.ViewModelKt;
import coil3.decode.DecodeUtils$$ExternalSyntheticBUOutline0;
import java.util.UUID;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Lambda;
import net.newpipe.app.AppKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;
import org.jsoup.Jsoup;
import org.schabi.newpipe.R;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class DialogWrapper extends ComponentDialog {
    public final View composeView;
    public final DialogLayout dialogLayout;
    public boolean isPressOutside;
    public Function0 onDismissRequest;
    public DialogProperties properties;

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    /* renamed from: androidx.compose.ui.window.DialogWrapper$2, reason: invalid class name */
    public final class AnonymousClass2 extends Lambda implements Function1 {
        public AnonymousClass2() {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        public final Object invoke(Object obj) {
            DialogWrapper dialogWrapper = DialogWrapper.this;
            if (dialogWrapper.properties.dismissOnBackPress) {
                dialogWrapper.onDismissRequest.invoke();
            }
            return Unit.INSTANCE;
        }
    }

    public DialogWrapper(Function0 function0, DialogProperties dialogProperties, View view, LayoutDirection layoutDirection, Density density, UUID uuid) {
        super(new ContextThemeWrapper(view.getContext(), dialogProperties.decorFitsSystemWindows ? R.style.DialogWindowTheme : R.style.FloatingDialogWindowTheme), 0);
        this.onDismissRequest = function0;
        this.properties = dialogProperties;
        this.composeView = view;
        Window window = getWindow();
        if (window == null) {
            _UtilJvmKt$$ExternalSyntheticLambda1.m$2("Dialog has no window");
            throw null;
        }
        DialogProperties dialogProperties2 = this.properties;
        Window window2 = getWindow();
        if (window2 != null) {
            WindowManager.LayoutParams attributes = window2.getAttributes();
            attributes.type = dialogProperties2.windowType;
            window2.setAttributes(attributes);
        }
        window.requestFeature(1);
        window.setBackgroundDrawableResource(android.R.color.transparent);
        AppKt.setDecorFitsSystemWindows(window, this.properties.decorFitsSystemWindows);
        window.setGravity(17);
        if (!this.properties.decorFitsSystemWindows) {
            window.addFlags(65792);
            WindowManager.LayoutParams attributes2 = window.getAttributes();
            int i = Build.VERSION.SDK_INT;
            if (i >= 28) {
                Api28Impl.INSTANCE.setLayoutInDisplayCutout(attributes2);
            }
            if (i >= 30) {
                Api30Impl api30Impl = Api30Impl.INSTANCE;
                api30Impl.setFitInsetsSides(attributes2, 0);
                api30Impl.setFitInsetsTypes(attributes2, 0);
            }
            window.setAttributes(attributes2);
        }
        DialogLayout dialogLayout = new DialogLayout(getContext(), window);
        setTitle(this.properties.windowTitle);
        dialogLayout.setTag(R.id.compose_view_saveable_id_tag, "Dialog:" + uuid);
        dialogLayout.setClipChildren(false);
        dialogLayout.setElevation(density.mo63toPx0680j_4(8.0f));
        dialogLayout.setOutlineProvider(new DialogWrapper$1$2(0));
        this.dialogLayout = dialogLayout;
        View decorView = window.getDecorView();
        ViewGroup viewGroup = decorView instanceof ViewGroup ? (ViewGroup) decorView : null;
        if (viewGroup != null) {
            _init_$disableClipping(viewGroup);
        }
        setContentView(dialogLayout);
        dialogLayout.setTag(R.id.view_tree_lifecycle_owner, ViewModelKt.get(view));
        dialogLayout.setTag(R.id.view_tree_view_model_store_owner, ViewModelKt.m464get(view));
        dialogLayout.setTag(R.id.view_tree_saved_state_registry_owner, Jsoup.get(view));
        updateParameters(this.onDismissRequest, this.properties, layoutDirection);
        OnBackPressedDispatcher onBackPressedDispatcher = getOnBackPressedDispatcher();
        final AnonymousClass2 anonymousClass2 = new AnonymousClass2();
        onBackPressedDispatcher.getClass();
        onBackPressedDispatcher.addCallback(new OnBackPressedCallback() { // from class: androidx.activity.OnBackPressedDispatcherKt$addCallback$callback$1
            {
                super(true);
            }

            @Override // androidx.activity.OnBackPressedCallback
            public final void handleOnBackPressed() {
                DialogWrapper.AnonymousClass2.this.invoke(this);
            }
        }, this);
    }

    public static final void _init_$disableClipping(ViewGroup viewGroup) {
        viewGroup.setClipChildren(false);
        if (viewGroup instanceof DialogLayout) {
            return;
        }
        int childCount = viewGroup.getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = viewGroup.getChildAt(i);
            ViewGroup viewGroup2 = childAt instanceof ViewGroup ? (ViewGroup) childAt : null;
            if (viewGroup2 != null) {
                _init_$disableClipping(viewGroup2);
            }
        }
    }

    @Override // android.app.Dialog, android.view.KeyEvent.Callback
    public final boolean onKeyUp(int i, KeyEvent keyEvent) {
        if (!this.properties.dismissOnBackPress || !keyEvent.isTracking() || keyEvent.isCanceled() || i != 111) {
            return super.onKeyUp(i, keyEvent);
        }
        this.onDismissRequest.invoke();
        return true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x0066, code lost:
    
        if (r5 <= r1) goto L31;
     */
    @Override // android.app.Dialog
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean onTouchEvent(android.view.MotionEvent r10) {
        /*
            r9 = this;
            boolean r0 = super.onTouchEvent(r10)
            androidx.compose.ui.window.DialogProperties r1 = r9.properties
            boolean r1 = r1.dismissOnClickOutside
            r2 = 3
            r3 = 0
            r4 = 1
            if (r1 == 0) goto L86
            androidx.compose.ui.window.DialogLayout r1 = r9.dialogLayout
            r1.getClass()
            float r5 = r10.getX()
            float r5 = java.lang.Math.abs(r5)
            r6 = 2139095039(0x7f7fffff, float:3.4028235E38)
            int r5 = (r5 > r6 ? 1 : (r5 == r6 ? 0 : -1))
            if (r5 > 0) goto L69
            float r5 = r10.getY()
            float r5 = java.lang.Math.abs(r5)
            int r5 = (r5 > r6 ? 1 : (r5 == r6 ? 0 : -1))
            if (r5 > 0) goto L69
            android.view.View r5 = r1.getChildAt(r3)
            if (r5 != 0) goto L34
            goto L69
        L34:
            int r6 = r1.getLeft()
            int r7 = r5.getLeft()
            int r7 = r7 + r6
            int r6 = r5.getWidth()
            int r6 = r6 + r7
            int r1 = r1.getTop()
            int r8 = r5.getTop()
            int r8 = r8 + r1
            int r1 = r5.getHeight()
            int r1 = r1 + r8
            float r5 = r10.getX()
            int r5 = kotlin.math.MathKt.roundToInt(r5)
            if (r7 > r5) goto L69
            if (r5 > r6) goto L69
            float r5 = r10.getY()
            int r5 = kotlin.math.MathKt.roundToInt(r5)
            if (r8 > r5) goto L69
            if (r5 > r1) goto L69
            goto L86
        L69:
            int r10 = r10.getActionMasked()
            if (r10 == 0) goto L83
            if (r10 == r4) goto L77
            if (r10 == r2) goto L74
            goto L90
        L74:
            r9.isPressOutside = r3
            return r0
        L77:
            boolean r10 = r9.isPressOutside
            if (r10 == 0) goto L90
            kotlin.jvm.functions.Function0 r10 = r9.onDismissRequest
            r10.invoke()
            r9.isPressOutside = r3
            return r4
        L83:
            r9.isPressOutside = r4
            return r4
        L86:
            int r10 = r10.getActionMasked()
            if (r10 == 0) goto L91
            if (r10 == r4) goto L91
            if (r10 == r2) goto L91
        L90:
            return r0
        L91:
            r9.isPressOutside = r3
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.ui.window.DialogWrapper.onTouchEvent(android.view.MotionEvent):boolean");
    }

    public final void updateParameters(Function0 function0, DialogProperties dialogProperties, LayoutDirection layoutDirection) {
        int i;
        this.onDismissRequest = function0;
        this.properties = dialogProperties;
        SecureFlagPolicy secureFlagPolicy = dialogProperties.securePolicy;
        int i2 = AndroidPopup_androidKt.$r8$clinit;
        ViewGroup.LayoutParams layoutParams = this.composeView.getRootView().getLayoutParams();
        WindowManager.LayoutParams layoutParams2 = layoutParams instanceof WindowManager.LayoutParams ? (WindowManager.LayoutParams) layoutParams : null;
        boolean z = (layoutParams2 == null || (layoutParams2.flags & 8192) == 0) ? false : true;
        int ordinal = secureFlagPolicy.ordinal();
        if (ordinal != 0) {
            if (ordinal == 1) {
                z = true;
            } else {
                if (ordinal != 2) {
                    DecodeUtils$$ExternalSyntheticBUOutline0.m();
                    return;
                }
                z = false;
            }
        }
        Window window = getWindow();
        window.getClass();
        window.setFlags(z ? 8192 : -8193, 8192);
        int ordinal2 = layoutDirection.ordinal();
        if (ordinal2 == 0) {
            i = 0;
        } else {
            if (ordinal2 != 1) {
                DecodeUtils$$ExternalSyntheticBUOutline0.m();
                return;
            }
            i = 1;
        }
        DialogLayout dialogLayout = this.dialogLayout;
        dialogLayout.setLayoutDirection(i);
        boolean z2 = dialogProperties.decorFitsSystemWindows;
        boolean z3 = dialogProperties.usePlatformDefaultWidth;
        Window window2 = dialogLayout.window;
        boolean z4 = (dialogLayout.hasCalledSetLayout && z3 == dialogLayout.usePlatformDefaultWidth && z2 == dialogLayout.decorFitsSystemWindows) ? false : true;
        dialogLayout.usePlatformDefaultWidth = z3;
        dialogLayout.decorFitsSystemWindows = z2;
        if (z4) {
            WindowManager.LayoutParams attributes = window2.getAttributes();
            int i3 = z3 ? -2 : -1;
            if (i3 != attributes.width || !dialogLayout.hasCalledSetLayout) {
                window2.setLayout(i3, -2);
                dialogLayout.hasCalledSetLayout = true;
            }
        }
        setCanceledOnTouchOutside(dialogProperties.dismissOnClickOutside);
        Window window3 = getWindow();
        if (window3 != null) {
            window3.setSoftInputMode(z2 ? 0 : Build.VERSION.SDK_INT < 31 ? 16 : 48);
        }
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    public final void cancel() {
    }
}
