package net.thunderbird.feature.notification.impl.ui.dialog;

import android.app.Dialog;
import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.ui.platform.ComposeView;
import androidx.fragment.app.DialogFragment;
import androidx.lifecycle.LifecycleOwner;
import coil3.size.ViewSizeResolver;
import kotlin.Lazy;
import kotlin.LazyThreadSafetyMode;
import kotlin.ResultKt;
import kotlin.jvm.functions.Function0;
import kotlinx.atomicfu.AtomicFU;
import net.thunderbird.core.ui.theme.api.FeatureThemeProvider;
import net.thunderbird.feature.notification.api.ui.dialog.ErrorNotificationsDialogFragmentActionListener;
import net.thunderbird.feature.notification.impl.receiver.DefaultInAppNotificationStream;
import org.koin.core.parameter.ParametersHolder;
import org.koin.core.qualifier.Qualifier;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class ErrorNotificationsDialogFragment extends DialogFragment {
    public static final Factory Factory = new Factory();
    public ErrorNotificationsDialogFragmentActionListener listener;
    public final Lazy stream$delegate;
    public final Lazy themeProvider$delegate;

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class Factory {
    }

    public ErrorNotificationsDialogFragment() {
        final int i = 0;
        Function0 function0 = new Function0(this) { // from class: net.thunderbird.feature.notification.impl.ui.dialog.ErrorNotificationsDialogFragment$special$$inlined$inject$default$1
            public final /* synthetic */ ErrorNotificationsDialogFragment $this_inject;

            {
                this.$this_inject = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i2 = i;
                ErrorNotificationsDialogFragment errorNotificationsDialogFragment = this.$this_inject;
                switch (i2) {
                    case 0:
                        return ViewSizeResolver.CC.m(DefaultInAppNotificationStream.class, AtomicFU.getKoinScope(errorNotificationsDialogFragment), (Qualifier) null, (ParametersHolder) null);
                    default:
                        return ViewSizeResolver.CC.m(FeatureThemeProvider.class, AtomicFU.getKoinScope(errorNotificationsDialogFragment), (Qualifier) null, (ParametersHolder) null);
                }
            }
        };
        LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.SYNCHRONIZED;
        this.stream$delegate = ResultKt.lazy(lazyThreadSafetyMode, function0);
        final int i2 = 1;
        this.themeProvider$delegate = ResultKt.lazy(lazyThreadSafetyMode, new Function0(this) { // from class: net.thunderbird.feature.notification.impl.ui.dialog.ErrorNotificationsDialogFragment$special$$inlined$inject$default$1
            public final /* synthetic */ ErrorNotificationsDialogFragment $this_inject;

            {
                this.$this_inject = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i22 = i2;
                ErrorNotificationsDialogFragment errorNotificationsDialogFragment = this.$this_inject;
                switch (i22) {
                    case 0:
                        return ViewSizeResolver.CC.m(DefaultInAppNotificationStream.class, AtomicFU.getKoinScope(errorNotificationsDialogFragment), (Qualifier) null, (ParametersHolder) null);
                    default:
                        return ViewSizeResolver.CC.m(FeatureThemeProvider.class, AtomicFU.getKoinScope(errorNotificationsDialogFragment), (Qualifier) null, (ParametersHolder) null);
                }
            }
        });
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public final void onAttach(Context context) {
        context.getClass();
        super.onAttach(context);
        LifecycleOwner lifecycleOwner = this.mParentFragment;
        ErrorNotificationsDialogFragmentActionListener errorNotificationsDialogFragmentActionListener = null;
        ErrorNotificationsDialogFragmentActionListener errorNotificationsDialogFragmentActionListener2 = lifecycleOwner instanceof ErrorNotificationsDialogFragmentActionListener ? (ErrorNotificationsDialogFragmentActionListener) lifecycleOwner : null;
        if (errorNotificationsDialogFragmentActionListener2 != null) {
            errorNotificationsDialogFragmentActionListener = errorNotificationsDialogFragmentActionListener2;
        } else if (context instanceof ErrorNotificationsDialogFragmentActionListener) {
            errorNotificationsDialogFragmentActionListener = (ErrorNotificationsDialogFragmentActionListener) context;
        }
        this.listener = errorNotificationsDialogFragmentActionListener;
    }

    @Override // androidx.fragment.app.Fragment
    public final View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup) {
        layoutInflater.getClass();
        Dialog dialog = this.mDialog;
        if (dialog != null) {
            dialog.requestWindowFeature(1);
        }
        ComposeView composeView = new ComposeView(requireContext(), null, 0, 6, null);
        composeView.setContent(new ComposableLambdaImpl(-1766234809, new ErrorNotificationsDialogFragment$$ExternalSyntheticLambda0(this, 0), true));
        return composeView;
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public final void onDetach() {
        super.onDetach();
        this.listener = null;
    }
}
