package androidx.compose.material3;

import android.os.Build;
import android.view.ContextThemeWrapper;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import androidx.activity.BackEventCompat;
import androidx.activity.ComponentDialog;
import androidx.activity.OnBackPressedCallback;
import androidx.compose.animation.core.Animatable;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.LayoutDirection;
import androidx.compose.ui.window.PopupLayout;
import androidx.compose.ui.window.SecureFlagPolicy;
import androidx.core.view.WindowInsetsControllerCompat$Impl23;
import androidx.core.view.WindowInsetsControllerCompat$Impl26;
import androidx.core.view.WindowInsetsControllerCompat$Impl30;
import androidx.core.view.WindowInsetsControllerCompat$Impl35;
import androidx.datastore.preferences.protobuf.Utf8;
import androidx.lifecycle.ViewModelKt;
import coil3.ImageLoader$Builder$$ExternalSyntheticLambda1;
import coil3.UriKt$$ExternalSyntheticBUOutline0;
import com.fsck.k9.R;
import java.util.UUID;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function0;
import kotlin.math.MathKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.JobKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.jsoup.helper.Validate;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class ModalBottomSheetDialogWrapper extends ComponentDialog {
    public final View composeView;
    public long contentColor;
    public final ModalBottomSheetDialogLayout dialogLayout;
    public Function0 onDismissRequest;
    public ModalBottomSheetProperties properties;

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class PredictiveBackOnBackPressedCallback extends OnBackPressedCallback {
        public final ImageLoader$Builder$$ExternalSyntheticLambda1 onDismissRequest;
        public final Animatable predictiveBackProgress;
        public final CoroutineScope scope;

        public PredictiveBackOnBackPressedCallback(boolean z, CoroutineScope coroutineScope, Animatable animatable, ImageLoader$Builder$$ExternalSyntheticLambda1 imageLoader$Builder$$ExternalSyntheticLambda1) {
            super(z);
            this.scope = coroutineScope;
            this.predictiveBackProgress = animatable;
            this.onDismissRequest = imageLoader$Builder$$ExternalSyntheticLambda1;
        }

        @Override // androidx.activity.OnBackPressedCallback
        public final void handleOnBackCancelled() {
            JobKt.launch$default(this.scope, null, null, new ThumbNode$onAttach$1(this, (Continuation) null, 23), 3);
        }

        @Override // androidx.activity.OnBackPressedCallback
        public final void handleOnBackPressed() {
            this.onDismissRequest.invoke();
        }

        @Override // androidx.activity.OnBackPressedCallback
        public final void handleOnBackProgressed(BackEventCompat backEventCompat) {
            JobKt.launch$default(this.scope, null, null, new ModalBottomSheetDialogWrapper$PredictiveBackOnBackPressedCallback$handleOnBackStarted$1(this, backEventCompat, null, 1), 3);
        }

        @Override // androidx.activity.OnBackPressedCallback
        public final void handleOnBackStarted(BackEventCompat backEventCompat) {
            JobKt.launch$default(this.scope, null, null, new ModalBottomSheetDialogWrapper$PredictiveBackOnBackPressedCallback$handleOnBackStarted$1(this, backEventCompat, null, 0), 3);
        }
    }

    public ModalBottomSheetDialogWrapper(Function0 function0, ModalBottomSheetProperties modalBottomSheetProperties, long j, View view, LayoutDirection layoutDirection, Density density, UUID uuid, Animatable animatable, CoroutineScope coroutineScope) {
        super(new ContextThemeWrapper(view.getContext(), R.style.EdgeToEdgeFloatingDialogWindowTheme), 0);
        this.onDismissRequest = function0;
        this.properties = modalBottomSheetProperties;
        this.contentColor = j;
        this.composeView = view;
        Window window = getWindow();
        if (window == null) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$2("Dialog has no window");
            throw null;
        }
        window.requestFeature(1);
        window.setBackgroundDrawableResource(android.R.color.transparent);
        Utf8.SafeProcessor.setDecorFitsSystemWindows(window, false);
        ModalBottomSheetDialogLayout modalBottomSheetDialogLayout = new ModalBottomSheetDialogLayout(getContext());
        modalBottomSheetDialogLayout.setTag(R.id.compose_view_saveable_id_tag, "Dialog:" + uuid);
        modalBottomSheetDialogLayout.setClipChildren(false);
        modalBottomSheetDialogLayout.setElevation(density.mo177toPx0680j_4(8.0f));
        modalBottomSheetDialogLayout.setOutlineProvider(new PopupLayout.AnonymousClass2(1));
        this.dialogLayout = modalBottomSheetDialogLayout;
        setContentView(modalBottomSheetDialogLayout);
        modalBottomSheetDialogLayout.setTag(R.id.view_tree_lifecycle_owner, ViewModelKt.get(view));
        modalBottomSheetDialogLayout.setTag(R.id.view_tree_view_model_store_owner, ViewModelKt.m801get(view));
        modalBottomSheetDialogLayout.setTag(R.id.view_tree_saved_state_registry_owner, Validate.get(view));
        m346updateParameters9LQNqLg(this.onDismissRequest, this.properties, this.contentColor, layoutDirection);
        window.getDecorView();
        int i = Build.VERSION.SDK_INT;
        MathKt windowInsetsControllerCompat$Impl35 = i >= 35 ? new WindowInsetsControllerCompat$Impl35(window) : i >= 30 ? new WindowInsetsControllerCompat$Impl30(window) : i >= 26 ? new WindowInsetsControllerCompat$Impl26(window) : new WindowInsetsControllerCompat$Impl23(window);
        this.properties.getClass();
        windowInsetsControllerCompat$Impl35.setAppearanceLightStatusBars(CardKt.m338isDark8_81llA(this.contentColor));
        this.properties.getClass();
        windowInsetsControllerCompat$Impl35.setAppearanceLightNavigationBars(CardKt.m338isDark8_81llA(this.contentColor));
        getOnBackPressedDispatcher().addCallback(new PredictiveBackOnBackPressedCallback(this.properties.shouldDismissOnBackPress, coroutineScope, animatable, new ImageLoader$Builder$$ExternalSyntheticLambda1(2, this)), this);
    }

    @Override // android.app.Dialog
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        boolean onTouchEvent = super.onTouchEvent(motionEvent);
        if (onTouchEvent) {
            this.onDismissRequest.invoke();
        }
        return onTouchEvent;
    }

    /* renamed from: updateParameters-9LQNqLg, reason: not valid java name */
    public final void m346updateParameters9LQNqLg(Function0 function0, ModalBottomSheetProperties modalBottomSheetProperties, long j, LayoutDirection layoutDirection) {
        this.onDismissRequest = function0;
        this.properties = modalBottomSheetProperties;
        this.contentColor = j;
        SecureFlagPolicy secureFlagPolicy = modalBottomSheetProperties.securePolicy;
        ViewGroup.LayoutParams layoutParams = this.composeView.getRootView().getLayoutParams();
        WindowManager.LayoutParams layoutParams2 = layoutParams instanceof WindowManager.LayoutParams ? (WindowManager.LayoutParams) layoutParams : null;
        int i = 1;
        boolean z = (layoutParams2 == null || (layoutParams2.flags & 8192) == 0) ? false : true;
        int ordinal = secureFlagPolicy.ordinal();
        if (ordinal != 0) {
            if (ordinal == 1) {
                z = true;
            } else {
                if (ordinal != 2) {
                    UriKt$$ExternalSyntheticBUOutline0.m857m();
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
        } else if (ordinal2 != 1) {
            UriKt$$ExternalSyntheticBUOutline0.m857m();
            return;
        }
        this.dialogLayout.setLayoutDirection(i);
        Window window2 = getWindow();
        if (window2 != null) {
            window2.setLayout(-1, -1);
        }
        Window window3 = getWindow();
        if (window3 != null) {
            window3.setSoftInputMode(Build.VERSION.SDK_INT >= 30 ? 48 : 16);
        }
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    public final void cancel() {
    }
}
