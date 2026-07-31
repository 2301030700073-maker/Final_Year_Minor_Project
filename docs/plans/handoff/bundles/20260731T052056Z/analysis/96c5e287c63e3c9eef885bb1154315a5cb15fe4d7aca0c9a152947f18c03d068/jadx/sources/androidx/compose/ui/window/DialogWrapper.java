package androidx.compose.ui.window;

import android.view.ContextThemeWrapper;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import androidx.activity.ComponentDialog;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.DpKt;
import androidx.compose.ui.unit.LayoutDirection;
import androidx.compose.ui.window.PopupLayout;
import androidx.lifecycle.ViewModelKt;
import coil3.util.ContextsKt$$ExternalSyntheticBUOutline0;
import java.util.UUID;
import kotlin.ExceptionsKt;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.UnsignedKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Lambda;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.wikipedia.R;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class DialogWrapper extends ComponentDialog {
    public final View composeView;
    public final DialogLayout dialogLayout;
    public boolean isPressOutside;
    public Function0 onDismissRequest;
    public DialogProperties properties;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
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
                    dialogWrapper.properties.getClass();
                    dialogWrapper.onDismissRequest.invoke();
                    return Unit.INSTANCE;
                default:
                    dialogWrapper.show();
                    return new AndroidPopup_androidKt$Popup$2$1$invoke$$inlined$onDispose$1(12, dialogWrapper);
            }
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public abstract /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[LayoutDirection.values().length];
            try {
                iArr[LayoutDirection.Ltr.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[LayoutDirection.Rtl.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DialogWrapper(Function0 function0, DialogProperties dialogProperties, View view, LayoutDirection layoutDirection, Density density, UUID uuid) {
        super(new ContextThemeWrapper(view.getContext(), R.style.DialogWindowTheme), 0);
        int i = 0;
        this.onDismissRequest = function0;
        this.properties = dialogProperties;
        this.composeView = view;
        Window window = getWindow();
        if (window == null) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$1("Dialog has no window");
            throw null;
        }
        DialogProperties dialogProperties2 = this.properties;
        Window window2 = getWindow();
        if (window2 != null) {
            WindowManager.LayoutParams attributes = window2.getAttributes();
            dialogProperties2.getClass();
            attributes.type = 2;
            window2.setAttributes(attributes);
        }
        window.requestFeature(1);
        window.setBackgroundDrawableResource(android.R.color.transparent);
        this.properties.getClass();
        TuplesKt.setDecorFitsSystemWindows(window, true);
        window.setGravity(17);
        this.properties.getClass();
        DialogLayout dialogLayout = new DialogLayout(getContext(), window);
        this.properties.getClass();
        setTitle("");
        dialogLayout.setTag(R.id.compose_view_saveable_id_tag, "Dialog:" + uuid);
        dialogLayout.setClipChildren(false);
        dialogLayout.setElevation(density.mo87toPx0680j_4(8.0f));
        dialogLayout.setOutlineProvider(new PopupLayout.AnonymousClass2(3));
        this.dialogLayout = dialogLayout;
        View decorView = window.getDecorView();
        ViewGroup viewGroup = decorView instanceof ViewGroup ? (ViewGroup) decorView : null;
        if (viewGroup != null) {
            _init_$disableClipping(viewGroup);
        }
        setContentView(dialogLayout);
        dialogLayout.setTag(R.id.view_tree_lifecycle_owner, ViewModelKt.get(view));
        dialogLayout.setTag(R.id.view_tree_view_model_store_owner, ViewModelKt.m752get(view));
        dialogLayout.setTag(R.id.view_tree_saved_state_registry_owner, ExceptionsKt.get(view));
        updateParameters(this.onDismissRequest, this.properties, layoutDirection);
        DpKt.addCallback$default(getOnBackPressedDispatcher(), this, new AnonymousClass2(this, i));
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
        this.properties.getClass();
        if (!keyEvent.isTracking() || keyEvent.isCanceled() || i != 111) {
            return super.onKeyUp(i, keyEvent);
        }
        this.onDismissRequest.invoke();
        return true;
    }

    @Override // android.app.Dialog
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        View childAt;
        int roundToInt;
        boolean onTouchEvent = super.onTouchEvent(motionEvent);
        this.properties.getClass();
        DialogLayout dialogLayout = this.dialogLayout;
        dialogLayout.getClass();
        if (Math.abs(motionEvent.getX()) <= Float.MAX_VALUE && Math.abs(motionEvent.getY()) <= Float.MAX_VALUE && (childAt = dialogLayout.getChildAt(0)) != null) {
            int left = childAt.getLeft() + dialogLayout.getLeft();
            int width = childAt.getWidth() + left;
            int top = childAt.getTop() + dialogLayout.getTop();
            int height = childAt.getHeight() + top;
            int roundToInt2 = UnsignedKt.roundToInt(motionEvent.getX());
            if (left <= roundToInt2 && roundToInt2 <= width && top <= (roundToInt = UnsignedKt.roundToInt(motionEvent.getY())) && roundToInt <= height) {
                int actionMasked = motionEvent.getActionMasked();
                if (actionMasked == 0 || actionMasked == 1 || actionMasked == 3) {
                    this.isPressOutside = false;
                    return onTouchEvent;
                }
                return onTouchEvent;
            }
        }
        int actionMasked2 = motionEvent.getActionMasked();
        if (actionMasked2 == 0) {
            this.isPressOutside = true;
            return true;
        }
        if (actionMasked2 != 1) {
            if (actionMasked2 == 3) {
                this.isPressOutside = false;
                return onTouchEvent;
            }
        } else if (this.isPressOutside) {
            this.onDismissRequest.invoke();
            this.isPressOutside = false;
            return true;
        }
        return onTouchEvent;
    }

    public final void updateParameters(Function0 function0, DialogProperties dialogProperties, LayoutDirection layoutDirection) {
        int i;
        this.onDismissRequest = function0;
        this.properties = dialogProperties;
        SecureFlagPolicy secureFlagPolicy = dialogProperties.securePolicy;
        boolean isFlagSecureEnabled = AndroidPopup_androidKt.isFlagSecureEnabled(this.composeView);
        int i2 = SecureFlagPolicy_androidKt$WhenMappings.$EnumSwitchMapping$0[secureFlagPolicy.ordinal()];
        if (i2 == 1) {
            isFlagSecureEnabled = false;
        } else if (i2 == 2) {
            isFlagSecureEnabled = true;
        } else if (i2 != 3) {
            ContextsKt$$ExternalSyntheticBUOutline0.m();
            return;
        }
        Window window = getWindow();
        window.getClass();
        window.setFlags(isFlagSecureEnabled ? 8192 : -8193, 8192);
        int i3 = WhenMappings.$EnumSwitchMapping$0[layoutDirection.ordinal()];
        if (i3 == 1) {
            i = 0;
        } else {
            if (i3 != 2) {
                ContextsKt$$ExternalSyntheticBUOutline0.m();
                return;
            }
            i = 1;
        }
        DialogLayout dialogLayout = this.dialogLayout;
        dialogLayout.setLayoutDirection(i);
        Window window2 = dialogLayout.window;
        boolean z = (dialogLayout.hasCalledSetLayout && true == dialogLayout.usePlatformDefaultWidth && true == dialogLayout.decorFitsSystemWindows) ? false : true;
        dialogLayout.usePlatformDefaultWidth = true;
        dialogLayout.decorFitsSystemWindows = true;
        if (z && (-2 != window2.getAttributes().width || !dialogLayout.hasCalledSetLayout)) {
            window2.setLayout(-2, -2);
            dialogLayout.hasCalledSetLayout = true;
        }
        setCanceledOnTouchOutside(true);
        Window window3 = getWindow();
        if (window3 != null) {
            window3.setSoftInputMode(0);
        }
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    public final void cancel() {
    }
}
