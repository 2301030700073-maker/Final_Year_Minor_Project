package com.allproperty.android.consumer.modules.applesignin;

import android.app.Dialog;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.webkit.WebView;
import androidx.fragment.app.DialogFragment;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: AppleSignInFragment.kt */
@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u0000 \u00182\u00020\u0001:\u0001\u0018B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0012\u0010\f\u001a\u00020\u000b2\b\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0016J$\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\b\u0010\u0013\u001a\u0004\u0018\u00010\u00142\b\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0016J\b\u0010\u0015\u001a\u00020\u000bH\u0016J\u0010\u0010\u0016\u001a\u00020\u000b2\u0006\u0010\u0017\u001a\u00020\nH\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082.¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0082.¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0005X\u0082.¢\u0006\u0002\n\u0000R\u001a\u0010\b\u001a\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u000b0\tX\u0082.¢\u0006\u0002\n\u0000¨\u0006\u0019"}, d2 = {"Lcom/allproperty/android/consumer/modules/applesignin/AppleSignInFragment;", "Landroidx/fragment/app/DialogFragment;", "<init>", "()V", "argRedirectUri", "", "argAuthenticationUri", "argState", "callback", "Lkotlin/Function1;", "Lcom/allproperty/android/consumer/modules/applesignin/LoginResult;", "", "onCreate", "savedInstanceState", "Landroid/os/Bundle;", "onCreateView", "Landroid/view/View;", "inflater", "Landroid/view/LayoutInflater;", "container", "Landroid/view/ViewGroup;", "onStart", "onCallback", "result", "Companion", "app_myPublicRelease"}, k = 1, mv = {2, 0, 0}, xi = 48)
/* loaded from: classes2.dex */
public final class AppleSignInFragment extends DialogFragment {
    private static final String ARG_AUTHENTICATION_URI = "com.allproperty.android.consumer.modules.applesignin.AppleSignInFragment.arg.AUTHENTICATION_URI";
    private static final String ARG_REDIRECT_URI = "com.allproperty.android.consumer.modules.applesignin.AppleSignInFragment.arg.REDIRECT_URI";
    private static final String ARG_STATE = "com.allproperty.android.consumer.modules.applesignin.AppleSignInFragment.arg.STATE";

    /* renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private String argAuthenticationUri;
    private String argRedirectUri;
    private String argState;
    private Function1<? super LoginResult, Unit> callback;

    /* compiled from: AppleSignInFragment.kt */
    @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J2\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u00052\u0006\u0010\u000b\u001a\u00020\u00052\u0006\u0010\f\u001a\u00020\u00052\u0012\u0010\r\u001a\u000e\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u00100\u000eR\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0005X\u0082T¢\u0006\u0002\n\u0000¨\u0006\u0011"}, d2 = {"Lcom/allproperty/android/consumer/modules/applesignin/AppleSignInFragment$Companion;", "", "<init>", "()V", "ARG_REDIRECT_URI", "", "ARG_AUTHENTICATION_URI", "ARG_STATE", "newInstance", "Lcom/allproperty/android/consumer/modules/applesignin/AppleSignInFragment;", "redirectUri", "authenticationUri", "state", "callback", "Lkotlin/Function1;", "Lcom/allproperty/android/consumer/modules/applesignin/LoginResult;", "", "app_myPublicRelease"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final AppleSignInFragment newInstance(String redirectUri, String authenticationUri, String state, Function1<? super LoginResult, Unit> callback) {
            Intrinsics.checkNotNullParameter(redirectUri, "redirectUri");
            Intrinsics.checkNotNullParameter(authenticationUri, "authenticationUri");
            Intrinsics.checkNotNullParameter(state, "state");
            Intrinsics.checkNotNullParameter(callback, "callback");
            AppleSignInFragment appleSignInFragment = new AppleSignInFragment();
            Bundle bundle = new Bundle();
            bundle.putString(AppleSignInFragment.ARG_REDIRECT_URI, redirectUri);
            bundle.putString(AppleSignInFragment.ARG_AUTHENTICATION_URI, authenticationUri);
            bundle.putString(AppleSignInFragment.ARG_STATE, state);
            appleSignInFragment.setArguments(bundle);
            appleSignInFragment.callback = callback;
            return appleSignInFragment;
        }
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        Bundle requireArguments = requireArguments();
        String string = requireArguments.getString(ARG_REDIRECT_URI);
        Intrinsics.checkNotNull(string);
        this.argRedirectUri = string;
        String string2 = requireArguments.getString(ARG_AUTHENTICATION_URI);
        Intrinsics.checkNotNull(string2);
        this.argAuthenticationUri = string2;
        String string3 = requireArguments.getString(ARG_STATE);
        Intrinsics.checkNotNull(string3);
        this.argState = string3;
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        super.onCreateView(inflater, container, savedInstanceState);
        WebView webView = new WebView(requireContext());
        webView.getSettings().setJavaScriptEnabled(true);
        String str = this.argState;
        String str2 = null;
        if (str == null) {
            Intrinsics.throwUninitializedPropertyAccessException("argState");
            str = null;
        }
        webView.addJavascriptInterface(new FormDataInterceptor(str, new AppleSignInFragment$onCreateView$1$2(this)), FormDataInterceptor.NAME);
        String str3 = this.argRedirectUri;
        if (str3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("argRedirectUri");
            str3 = null;
        }
        webView.setWebViewClient(new AppleWebviewClient(str3, FormDataInterceptor.INSTANCE.getJS_TO_INJECT()));
        String str4 = this.argAuthenticationUri;
        if (str4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("argAuthenticationUri");
        } else {
            str2 = str4;
        }
        webView.loadUrl(str2);
        return webView;
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onStart() {
        Window window;
        super.onStart();
        Dialog dialog = getDialog();
        if (dialog == null || (window = dialog.getWindow()) == null) {
            return;
        }
        window.setLayout(-1, -1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void onCallback(LoginResult result) {
        Dialog dialog = getDialog();
        if (dialog != null) {
            dialog.dismiss();
        }
        Function1<? super LoginResult, Unit> function1 = this.callback;
        if (function1 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("callback");
            function1 = null;
        }
        function1.invoke(result);
        getParentFragmentManager().beginTransaction().remove(this).commitNow();
    }
}
