package com.hcaptcha.sdk;

import android.app.Dialog;
import android.content.DialogInterface;
import android.graphics.drawable.ColorDrawable;
import android.os.BadParcelableException;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import android.view.InflateException;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewStub;
import android.view.Window;
import android.widget.LinearLayout;
import androidx.fragment.app.DialogFragment;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManagerImpl;
import androidx.recyclerview.widget.RecyclerView;
import androidx.transition.Transition;
import coil3.ImageLoader$Builder;
import com.hcaptcha.sdk.HCaptcha;
import org.wikipedia.R;
import org.wikipedia.activity.BaseActivity;
import org.wikipedia.views.SwipeableListView$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class HCaptchaDialogFragment extends DialogFragment implements IHCaptchaVerifier {
    public static HCaptchaWebView sPreloadWebView;
    public HCaptcha.AnonymousClass1 listener;
    public LinearLayout loadingContainer;
    public ImageLoader$Builder webViewHelper;
    public float defaultDimAmount = 0.6f;
    public boolean readyForInteraction = false;

    public static HCaptchaDialogFragment newInstance(BaseActivity baseActivity, HCaptchaConfig hCaptchaConfig, HCaptchaInternalConfig hCaptchaInternalConfig, HCaptcha.AnonymousClass1 anonymousClass1) {
        Bundle bundle = new Bundle();
        bundle.putSerializable("hCaptchaConfig", hCaptchaConfig);
        bundle.putSerializable("hCaptchaInternalConfig", hCaptchaInternalConfig);
        bundle.putParcelable("hCaptchaDialogListener", anonymousClass1);
        HCaptchaDialogFragment hCaptchaDialogFragment = new HCaptchaDialogFragment();
        HCaptchaWebView hCaptchaWebView = new HCaptchaWebView(baseActivity);
        hCaptchaDialogFragment.webViewHelper = new ImageLoader$Builder(new Handler(Looper.getMainLooper()), baseActivity, hCaptchaConfig, hCaptchaInternalConfig, hCaptchaDialogFragment, hCaptchaWebView);
        sPreloadWebView = hCaptchaWebView;
        hCaptchaDialogFragment.setArguments(bundle);
        hCaptchaDialogFragment.listener = anonymousClass1;
        return hCaptchaDialogFragment;
    }

    public final void hideLoadingContainer() {
        ImageLoader$Builder imageLoader$Builder;
        if (this.loadingContainer != null && (imageLoader$Builder = this.webViewHelper) != null && Boolean.TRUE.equals(((HCaptchaConfig) imageLoader$Builder.defaults).getLoading())) {
            this.loadingContainer.animate().alpha(RecyclerView.DECELERATION_RATE).setDuration(200L).setListener(new Transition.AnonymousClass3(12, this));
            return;
        }
        Dialog dialog = this.mDialog;
        if (dialog != null) {
            dialog.getWindow().addFlags(2);
            dialog.getWindow().setDimAmount(this.defaultDimAmount);
        }
    }

    @Override // androidx.fragment.app.DialogFragment, android.content.DialogInterface.OnCancelListener
    public final void onCancel(DialogInterface dialogInterface) {
        onFailure(new HCaptchaException(HCaptchaError.CHALLENGE_CLOSED, null));
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public final void onCreate(Bundle bundle) {
        HCaptchaConfig hCaptchaConfig;
        HCaptchaInternalConfig hCaptchaInternalConfig;
        HCaptcha.AnonymousClass1 anonymousClass1;
        super.onCreate(bundle);
        if (FragmentManagerImpl.isLoggingEnabled(2)) {
            Log.d("FragmentManager", "Setting style and theme for DialogFragment " + this + " to 2, 2131952023");
        }
        this.mStyle = 2;
        this.mTheme = R.style.HCaptchaDialogTheme;
        try {
            Bundle bundle2 = this.mArguments;
            this.listener = (HCaptcha.AnonymousClass1) HCaptchaCompat.getParcelable(bundle2);
            hCaptchaConfig = (HCaptchaConfig) HCaptchaCompat.getSerializable(bundle2, "hCaptchaConfig", HCaptchaConfig.class);
            hCaptchaInternalConfig = (HCaptchaInternalConfig) HCaptchaCompat.getSerializable(bundle2, "hCaptchaInternalConfig", HCaptchaInternalConfig.class);
            anonymousClass1 = this.listener;
        } catch (BadParcelableException | AssertionError | ClassCastException unused) {
        }
        try {
            if (anonymousClass1 == null || hCaptchaConfig == null || hCaptchaInternalConfig == null) {
                if (anonymousClass1 != null) {
                    anonymousClass1.onFailure(new HCaptchaException(HCaptchaError.ERROR, null));
                    return;
                }
                return;
            }
            HCaptchaWebView hCaptchaWebView = sPreloadWebView;
            if (hCaptchaWebView == null) {
                hCaptchaWebView = new HCaptchaWebView(requireContext());
                sPreloadWebView = hCaptchaWebView;
            }
            HCaptchaWebView hCaptchaWebView2 = hCaptchaWebView;
            if (this.webViewHelper == null) {
                this.webViewHelper = new ImageLoader$Builder(new Handler(Looper.getMainLooper()), requireContext(), hCaptchaConfig, hCaptchaInternalConfig, this, hCaptchaWebView2);
            }
        } catch (BadParcelableException | AssertionError | ClassCastException unused2) {
            HCaptcha.AnonymousClass1 anonymousClass12 = this.listener;
            if (anonymousClass12 != null) {
                anonymousClass12.onFailure(new HCaptchaException(HCaptchaError.ERROR, null));
            }
        }
    }

    @Override // androidx.fragment.app.Fragment
    public final View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        try {
            HCaptchaConfig hCaptchaConfig = (HCaptchaConfig) HCaptchaCompat.getSerializable(this.mArguments, "hCaptchaConfig", HCaptchaConfig.class);
            if (layoutInflater == null) {
                throw new InflateException("inflater is null");
            }
            View prepareRootView = prepareRootView(layoutInflater, viewGroup, hCaptchaConfig);
            prepareWebView(prepareRootView, hCaptchaConfig);
            LinearLayout linearLayout = (LinearLayout) prepareRootView.findViewById(R.id.loadingContainer);
            this.loadingContainer = linearLayout;
            if (linearLayout != null) {
                this.loadingContainer.setBackgroundColor(hCaptchaConfig.getTheme() == HCaptchaTheme.DARK ? -16777216 : -1);
                this.loadingContainer.setVisibility((!Boolean.TRUE.equals(hCaptchaConfig.getLoading()) || this.readyForInteraction) ? 8 : 0);
            }
            return prepareRootView;
        } catch (BadParcelableException | InflateException | AssertionError | ClassCastException unused) {
            dismissInternal(false, false);
            HCaptcha.AnonymousClass1 anonymousClass1 = this.listener;
            if (anonymousClass1 != null) {
                anonymousClass1.onFailure(new HCaptchaException(HCaptchaError.ERROR, null));
            }
            return null;
        }
    }

    @Override // androidx.fragment.app.Fragment
    public final void onDestroy() {
        this.mCalled = true;
        ImageLoader$Builder imageLoader$Builder = this.webViewHelper;
        if (imageLoader$Builder != null) {
            imageLoader$Builder.reset();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x002b  */
    /* JADX WARN: Removed duplicated region for block: B:21:? A[RETURN, SYNTHETIC] */
    @Override // com.hcaptcha.sdk.tasks.OnFailureListener
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void onFailure(com.hcaptcha.sdk.HCaptchaException r5) {
        /*
            r4 = this;
            coil3.ImageLoader$Builder r0 = r4.webViewHelper
            r1 = 0
            r2 = 1
            if (r0 == 0) goto L1b
            java.lang.Object r0 = r0.defaults
            com.hcaptcha.sdk.HCaptchaConfig r0 = (com.hcaptcha.sdk.HCaptchaConfig) r0
            com.hcaptcha.sdk.IHCaptchaRetryPredicate r3 = r0.getRetryPredicate()
            com.hcaptcha.sdk.HCaptchaConfig$$ExternalSyntheticLambda0 r3 = (com.hcaptcha.sdk.HCaptchaConfig$$ExternalSyntheticLambda0) r3
            r3.getClass()
            boolean r0 = com.hcaptcha.sdk.HCaptchaConfig.m799$r8$lambda$G1CAKwlWwIW6y9x0rXF896dWY(r0, r5)
            if (r0 == 0) goto L1b
            r0 = r2
            goto L1c
        L1b:
            r0 = r1
        L1c:
            boolean r3 = r4.isAdded()
            if (r3 == 0) goto L27
            if (r0 != 0) goto L27
            r4.dismissInternal(r2, r1)
        L27:
            coil3.ImageLoader$Builder r1 = r4.webViewHelper
            if (r1 == 0) goto L38
            if (r0 == 0) goto L31
            r1.resetAndExecute()
            return
        L31:
            com.hcaptcha.sdk.HCaptcha$1 r4 = r4.listener
            if (r4 == 0) goto L38
            r4.onFailure(r5)
        L38:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.hcaptcha.sdk.HCaptchaDialogFragment.onFailure(com.hcaptcha.sdk.HCaptchaException):void");
    }

    @Override // com.hcaptcha.sdk.IHCaptchaVerifier
    public final void onLoaded() {
        ImageLoader$Builder imageLoader$Builder = this.webViewHelper;
        if (imageLoader$Builder == null) {
            return;
        }
        HCaptchaConfig hCaptchaConfig = (HCaptchaConfig) imageLoader$Builder.defaults;
        boolean z = hCaptchaConfig.getSize() == HCaptchaSize.INVISIBLE;
        if (!z) {
            this.readyForInteraction = true;
            hideLoadingContainer();
        }
        if (this.webViewHelper != null) {
            if (!z || hCaptchaConfig.getHideDialog().booleanValue()) {
                this.webViewHelper.setVerifyParams();
            } else {
                this.webViewHelper.resetAndExecute();
            }
        }
    }

    @Override // com.hcaptcha.sdk.tasks.OnOpenListener
    public final void onOpen() {
        ImageLoader$Builder imageLoader$Builder = this.webViewHelper;
        if (imageLoader$Builder == null) {
            return;
        }
        if (((HCaptchaConfig) imageLoader$Builder.defaults).getSize() == HCaptchaSize.INVISIBLE) {
            hideLoadingContainer();
        }
        this.readyForInteraction = true;
        HCaptcha.AnonymousClass1 anonymousClass1 = this.listener;
        if (anonymousClass1 != null) {
            anonymousClass1.onOpen();
        }
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public final void onStart() {
        super.onStart();
        Dialog dialog = this.mDialog;
        if (dialog == null || this.webViewHelper == null) {
            return;
        }
        Window window = dialog.getWindow();
        window.setBackgroundDrawable(new ColorDrawable(0));
        this.defaultDimAmount = window.getAttributes().dimAmount;
        if (Boolean.FALSE.equals(((HCaptchaConfig) this.webViewHelper.defaults).getLoading())) {
            window.clearFlags(2);
            window.setDimAmount(RecyclerView.DECELERATION_RATE);
        }
    }

    @Override // com.hcaptcha.sdk.tasks.OnSuccessListener
    public final void onSuccess(Object obj) {
        String str = (String) obj;
        if (isAdded()) {
            dismissInternal(true, false);
        }
        HCaptcha.AnonymousClass1 anonymousClass1 = this.listener;
        if (anonymousClass1 != null) {
            anonymousClass1.onSuccess(str);
        }
    }

    public final View prepareRootView(LayoutInflater layoutInflater, ViewGroup viewGroup, final HCaptchaConfig hCaptchaConfig) {
        View inflate = layoutInflater.inflate(R.layout.hcaptcha_fragment, viewGroup, false);
        inflate.setFocusableInTouchMode(true);
        inflate.requestFocus();
        inflate.setOnKeyListener(new View.OnKeyListener() { // from class: com.hcaptcha.sdk.HCaptchaDialogFragment$$ExternalSyntheticLambda1
            @Override // android.view.View.OnKeyListener
            public final boolean onKey(View view, int i, KeyEvent keyEvent) {
                boolean lambda$$default$retryPredicate$41a513e9$1;
                if (i != 4 || keyEvent.getAction() != 0) {
                    return false;
                }
                HCaptchaDialogFragment hCaptchaDialogFragment = HCaptchaDialogFragment.this;
                if (!hCaptchaDialogFragment.readyForInteraction && Boolean.FALSE.equals(hCaptchaConfig.getLoading())) {
                    return true;
                }
                ImageLoader$Builder imageLoader$Builder = hCaptchaDialogFragment.webViewHelper;
                if (imageLoader$Builder == null) {
                    return false;
                }
                HCaptchaException hCaptchaException = new HCaptchaException(HCaptchaError.CHALLENGE_CLOSED, null);
                HCaptchaConfig hCaptchaConfig2 = (HCaptchaConfig) imageLoader$Builder.defaults;
                ((HCaptchaConfig$$ExternalSyntheticLambda0) hCaptchaConfig2.getRetryPredicate()).getClass();
                lambda$$default$retryPredicate$41a513e9$1 = HCaptchaConfig.lambda$$default$retryPredicate$41a513e9$1(hCaptchaConfig2, hCaptchaException);
                return lambda$$default$retryPredicate$41a513e9$1;
            }
        });
        return inflate;
    }

    public final void prepareWebView(View view, HCaptchaConfig hCaptchaConfig) {
        View findViewById = view.findViewById(R.id.webView);
        if (!(findViewById instanceof ViewStub)) {
            findViewById.getClass().toString();
            return;
        }
        ViewGroup viewGroup = (ViewGroup) view;
        int indexOfChild = viewGroup.indexOfChild(findViewById);
        viewGroup.removeView(findViewById);
        HCaptchaWebView hCaptchaWebView = sPreloadWebView;
        if (hCaptchaWebView == null) {
            hCaptchaWebView = new HCaptchaWebView(requireContext());
            sPreloadWebView = hCaptchaWebView;
        }
        if (hCaptchaWebView.getParent() != null) {
            ((ViewGroup) sPreloadWebView.getParent()).removeView(sPreloadWebView);
        }
        viewGroup.addView(sPreloadWebView, indexOfChild);
        if (Boolean.FALSE.equals(hCaptchaConfig.getLoading())) {
            sPreloadWebView.setOnTouchListener(new SwipeableListView$$ExternalSyntheticLambda0(2, this));
        }
    }

    @Override // com.hcaptcha.sdk.IHCaptchaVerifier
    public final void reset$1() {
        ImageLoader$Builder imageLoader$Builder = this.webViewHelper;
        if (imageLoader$Builder != null) {
            imageLoader$Builder.reset();
        }
        if (isAdded()) {
            dismissInternal(true, false);
        }
        sPreloadWebView = null;
    }

    @Override // com.hcaptcha.sdk.IHCaptchaVerifier
    public final void startVerification(BaseActivity baseActivity) {
        ImageLoader$Builder imageLoader$Builder;
        if (this.readyForInteraction && (imageLoader$Builder = this.webViewHelper) != null) {
            imageLoader$Builder.setVerifyParams();
        }
        FragmentManagerImpl supportFragmentManager = baseActivity.getSupportFragmentManager();
        Fragment findFragmentByTag = supportFragmentManager.findFragmentByTag("HCaptchaDialogFragment");
        if ((findFragmentByTag == null || !findFragmentByTag.isAdded()) && !supportFragmentManager.isStateSaved()) {
            try {
                show(supportFragmentManager, "HCaptchaDialogFragment");
            } catch (IllegalStateException e) {
                e.getMessage();
                HCaptcha.AnonymousClass1 anonymousClass1 = this.listener;
                if (anonymousClass1 != null) {
                    anonymousClass1.onFailure(new HCaptchaException(HCaptchaError.ERROR, null));
                }
            }
        }
    }
}
