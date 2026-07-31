package com.fsck.k9.activity.compose;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.ui.platform.AndroidFontResourceLoader;
import androidx.compose.ui.platform.ComposeView;
import androidx.fragment.app.Fragment;
import coil3.UriKt$$ExternalSyntheticBUOutline0;
import java.util.Set;
import kotlin.Lazy;
import kotlin.LazyThreadSafetyMode;
import kotlin.ResultKt;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.collections.EmptySet;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Reflection;
import kotlinx.atomicfu.AtomicFU;
import net.thunderbird.core.logging.Logger;
import net.thunderbird.core.ui.theme.api.FeatureThemeProvider;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class MessageComposeInAppNotificationFragment extends Fragment {
    public Set accountIds;
    public final Lazy logger$delegate;
    public ViewGroup parentView;
    public final Lazy themeProvider$delegate;

    public MessageComposeInAppNotificationFragment() {
        final int i = 0;
        Function0 function0 = new Function0(this) { // from class: com.fsck.k9.activity.compose.MessageComposeInAppNotificationFragment$special$$inlined$inject$default$1
            public final /* synthetic */ MessageComposeInAppNotificationFragment $this_inject;

            {
                this.$this_inject = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i2 = i;
                MessageComposeInAppNotificationFragment messageComposeInAppNotificationFragment = this.$this_inject;
                switch (i2) {
                    case 0:
                        return AtomicFU.getKoinScope(messageComposeInAppNotificationFragment).resolve(Reflection.getOrCreateKotlinClass(FeatureThemeProvider.class), null, null);
                    default:
                        return AtomicFU.getKoinScope(messageComposeInAppNotificationFragment).resolve(Reflection.getOrCreateKotlinClass(Logger.class), null, null);
                }
            }
        };
        LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.SYNCHRONIZED;
        this.themeProvider$delegate = ResultKt.lazy(lazyThreadSafetyMode, function0);
        final int i2 = 1;
        this.logger$delegate = ResultKt.lazy(lazyThreadSafetyMode, new Function0(this) { // from class: com.fsck.k9.activity.compose.MessageComposeInAppNotificationFragment$special$$inlined$inject$default$1
            public final /* synthetic */ MessageComposeInAppNotificationFragment $this_inject;

            {
                this.$this_inject = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i22 = i2;
                MessageComposeInAppNotificationFragment messageComposeInAppNotificationFragment = this.$this_inject;
                switch (i22) {
                    case 0:
                        return AtomicFU.getKoinScope(messageComposeInAppNotificationFragment).resolve(Reflection.getOrCreateKotlinClass(FeatureThemeProvider.class), null, null);
                    default:
                        return AtomicFU.getKoinScope(messageComposeInAppNotificationFragment).resolve(Reflection.getOrCreateKotlinClass(Logger.class), null, null);
                }
            }
        });
        this.accountIds = EmptySet.INSTANCE;
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0031  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0022  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void access$onSnackbarInAppNotificationEvent(com.fsck.k9.activity.compose.MessageComposeInAppNotificationFragment r4, kotlin.coroutines.Continuation r5) {
        /*
            r4.getClass()
            boolean r0 = r5 instanceof com.fsck.k9.activity.compose.MessageComposeInAppNotificationFragment$onSnackbarInAppNotificationEvent$1
            if (r0 == 0) goto L16
            r0 = r5
            com.fsck.k9.activity.compose.MessageComposeInAppNotificationFragment$onSnackbarInAppNotificationEvent$1 r0 = (com.fsck.k9.activity.compose.MessageComposeInAppNotificationFragment$onSnackbarInAppNotificationEvent$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L16
            int r1 = r1 - r2
            r0.label = r1
            goto L1b
        L16:
            com.fsck.k9.activity.compose.MessageComposeInAppNotificationFragment$onSnackbarInAppNotificationEvent$1 r0 = new com.fsck.k9.activity.compose.MessageComposeInAppNotificationFragment$onSnackbarInAppNotificationEvent$1
            r0.<init>(r4, r5)
        L1b:
            java.lang.Object r5 = r0.result
            int r0 = r0.label
            r1 = 0
            if (r0 == 0) goto L31
            r4 = 1
            if (r0 == r4) goto L2b
            java.lang.String r4 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$2(r4)
            return
        L2b:
            kotlin.ResultKt.throwOnFailure(r5)
            java.lang.CharSequence r5 = (java.lang.CharSequence) r5
            throw r1
        L31:
            kotlin.ResultKt.throwOnFailure(r5)
            android.view.ViewGroup r4 = r4.parentView
            if (r4 != 0) goto L39
            return
        L39:
            throw r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fsck.k9.activity.compose.MessageComposeInAppNotificationFragment.access$onSnackbarInAppNotificationEvent(com.fsck.k9.activity.compose.MessageComposeInAppNotificationFragment, kotlin.coroutines.Continuation):void");
    }

    @Override // androidx.fragment.app.Fragment
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Bundle bundle2 = this.mArguments;
        if (bundle2 != null) {
            String[] stringArray = bundle2.getStringArray("MessageComposeInAppNotificationFragment_account_ids");
            Set set = stringArray != null ? ArraysKt___ArraysKt.toSet(stringArray) : null;
            if (set != null) {
                this.accountIds = set;
            } else {
                UriKt$$ExternalSyntheticBUOutline0.m("Missing argument MessageComposeInAppNotificationFragment_account_ids");
            }
        }
    }

    @Override // androidx.fragment.app.Fragment
    public final View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup) {
        layoutInflater.getClass();
        ComposeView composeView = new ComposeView(requireContext(), null, 0, 6, null);
        composeView.setViewCompositionStrategy(AndroidFontResourceLoader.INSTANCE);
        this.parentView = viewGroup;
        composeView.setContent(new ComposableLambdaImpl(1006053353, new MessageComposeInAppNotificationFragment$$ExternalSyntheticLambda0(this, 0), true));
        return composeView;
    }

    @Override // androidx.fragment.app.Fragment
    public final void onDestroyView() {
        this.mCalled = true;
        this.parentView = null;
    }
}
