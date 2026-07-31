package androidx.compose.ui.window;

import android.os.Build;
import android.view.ContextThemeWrapper;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import androidx.activity.ComponentDialog;
import androidx.activity.OnBackPressedDispatcher;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.LayoutDirection;
import androidx.compose.ui.window.PopupLayout;
import androidx.datastore.preferences.protobuf.Utf8;
import androidx.lifecycle.ViewModelKt;
import coil3.UriKt$$ExternalSyntheticBUOutline0;
import com.fsck.k9.R;
import com.fsck.k9.activity.MessageCompose;
import java.util.UUID;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Lambda;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.jsoup.helper.Validate;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class DialogWrapper extends ComponentDialog {
    public final View composeView;
    public final DialogLayout dialogLayout;
    public boolean isPressOutside;
    public Function0 onDismissRequest;
    public DialogProperties properties;

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    /* renamed from: androidx.compose.ui.window.DialogWrapper$2, reason: invalid class name */
    public final class AnonymousClass2 extends Lambda implements Function1 {
        public final /* synthetic */ int $r8$classId;
        public final /* synthetic */ DialogWrapper this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public /* synthetic */ AnonymousClass2(DialogWrapper dialogWrapper, int i) {
            super(1);
            this.$r8$classId = i;
            this.this$0 = dialogWrapper;
        }

        @Override // kotlin.jvm.functions.Function1
        public final Object invoke(Object obj) {
            int i = this.$r8$classId;
            DialogWrapper dialogWrapper = this.this$0;
            switch (i) {
                case 0:
                    if (dialogWrapper.properties.dismissOnBackPress) {
                        dialogWrapper.onDismissRequest.invoke();
                    }
                    return Unit.INSTANCE;
                default:
                    dialogWrapper.show();
                    return new AndroidPopup_androidKt$Popup$2$1$invoke$$inlined$onDispose$1(13, dialogWrapper);
            }
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DialogWrapper(Function0 function0, DialogProperties dialogProperties, View view, LayoutDirection layoutDirection, Density density, UUID uuid) {
        super(new ContextThemeWrapper(view.getContext(), dialogProperties.decorFitsSystemWindows ? R.style.DialogWindowTheme : R.style.FloatingDialogWindowTheme), 0);
        int i = 0;
        this.onDismissRequest = function0;
        this.properties = dialogProperties;
        this.composeView = view;
        Window window = getWindow();
        if (window == null) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$2("Dialog has no window");
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
        Utf8.SafeProcessor.setDecorFitsSystemWindows(window, this.properties.decorFitsSystemWindows);
        window.setGravity(17);
        if (!this.properties.decorFitsSystemWindows) {
            window.addFlags(65792);
            WindowManager.LayoutParams attributes2 = window.getAttributes();
            int i2 = Build.VERSION.SDK_INT;
            if (i2 >= 28) {
                Api28Impl.INSTANCE.setLayoutInDisplayCutout(attributes2);
            }
            if (i2 >= 30) {
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
        dialogLayout.setElevation(density.mo177toPx0680j_4(8.0f));
        dialogLayout.setOutlineProvider(new PopupLayout.AnonymousClass2(4));
        this.dialogLayout = dialogLayout;
        View decorView = window.getDecorView();
        ViewGroup viewGroup = decorView instanceof ViewGroup ? (ViewGroup) decorView : null;
        if (viewGroup != null) {
            _init_$disableClipping(viewGroup);
        }
        setContentView(dialogLayout);
        dialogLayout.setTag(R.id.view_tree_lifecycle_owner, ViewModelKt.get(view));
        dialogLayout.setTag(R.id.view_tree_view_model_store_owner, ViewModelKt.m801get(view));
        dialogLayout.setTag(R.id.view_tree_saved_state_registry_owner, Validate.get(view));
        updateParameters(this.onDismissRequest, this.properties, layoutDirection);
        OnBackPressedDispatcher onBackPressedDispatcher = getOnBackPressedDispatcher();
        AnonymousClass2 anonymousClass2 = new AnonymousClass2(this, i);
        onBackPressedDispatcher.getClass();
        onBackPressedDispatcher.addCallback(new MessageCompose.AnonymousClass3(1, anonymousClass2), this);
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
        boolean isFlagSecureEnabled = AndroidPopup_androidKt.isFlagSecureEnabled(this.composeView);
        int ordinal = secureFlagPolicy.ordinal();
        if (ordinal != 0) {
            if (ordinal == 1) {
                isFlagSecureEnabled = true;
            } else {
                if (ordinal != 2) {
                    UriKt$$ExternalSyntheticBUOutline0.m857m();
                    return;
                }
                isFlagSecureEnabled = false;
            }
        }
        Window window = getWindow();
        window.getClass();
        window.setFlags(isFlagSecureEnabled ? 8192 : -8193, 8192);
        int ordinal2 = layoutDirection.ordinal();
        if (ordinal2 == 0) {
            i = 0;
        } else {
            if (ordinal2 != 1) {
                UriKt$$ExternalSyntheticBUOutline0.m857m();
                return;
            }
            i = 1;
        }
        DialogLayout dialogLayout = this.dialogLayout;
        dialogLayout.setLayoutDirection(i);
        boolean z = dialogProperties.decorFitsSystemWindows;
        boolean z2 = dialogProperties.usePlatformDefaultWidth;
        Window window2 = dialogLayout.window;
        boolean z3 = (dialogLayout.hasCalledSetLayout && z2 == dialogLayout.usePlatformDefaultWidth && z == dialogLayout.decorFitsSystemWindows) ? false : true;
        dialogLayout.usePlatformDefaultWidth = z2;
        dialogLayout.decorFitsSystemWindows = z;
        if (z3) {
            WindowManager.LayoutParams attributes = window2.getAttributes();
            int i2 = z2 ? -2 : -1;
            if (i2 != attributes.width || !dialogLayout.hasCalledSetLayout) {
                window2.setLayout(i2, -2);
                dialogLayout.hasCalledSetLayout = true;
            }
        }
        setCanceledOnTouchOutside(dialogProperties.dismissOnClickOutside);
        Window window3 = getWindow();
        if (window3 != null) {
            window3.setSoftInputMode(z ? 0 : Build.VERSION.SDK_INT < 31 ? 16 : 48);
        }
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    public final void cancel() {
    }
}
