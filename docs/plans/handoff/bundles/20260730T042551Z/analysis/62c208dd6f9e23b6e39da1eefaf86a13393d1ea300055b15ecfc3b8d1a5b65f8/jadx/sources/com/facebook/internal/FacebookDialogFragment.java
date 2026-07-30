package com.facebook.internal;

import android.app.Dialog;
import android.content.Intent;
import android.content.res.Configuration;
import android.os.Bundle;
import androidx.fragment.app.Ccatch;
import androidx.fragment.app.FragmentActivity;
import com.facebook.internal.FacebookDialogFragment;
import com.facebook.internal.FacebookWebFallbackDialog;
import com.facebook.internal.WebDialog;
import defpackage.AbstractC3398nc;
import defpackage.C0173Do;
import defpackage.C2819gd;
import defpackage.C3344mh;
import defpackage.C3756th;
import defpackage.Cif;

/* loaded from: classes.dex */
public final class FacebookDialogFragment extends Ccatch {
    public static final Companion Companion = new Companion(null);
    public static final String TAG = "FacebookDialogFragment";
    private Dialog innerDialog;

    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(C2819gd c2819gd) {
            this();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: initDialog$lambda-0, reason: not valid java name */
    public static final void m5403initDialog$lambda0(FacebookDialogFragment facebookDialogFragment, Bundle bundle, C3344mh c3344mh) {
        C0173Do.m401try(facebookDialogFragment, "this$0");
        facebookDialogFragment.onCompleteWebDialog(bundle, c3344mh);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: initDialog$lambda-1, reason: not valid java name */
    public static final void m5404initDialog$lambda1(FacebookDialogFragment facebookDialogFragment, Bundle bundle, C3344mh c3344mh) {
        C0173Do.m401try(facebookDialogFragment, "this$0");
        facebookDialogFragment.onCompleteWebFallbackDialog(bundle);
    }

    private final void onCompleteWebDialog(Bundle bundle, C3344mh c3344mh) {
        FragmentActivity activity = getActivity();
        if (activity == null) {
            return;
        }
        NativeProtocol nativeProtocol = NativeProtocol.INSTANCE;
        Intent intent = activity.getIntent();
        C0173Do.m399new(intent, "fragmentActivity.intent");
        activity.setResult(c3344mh == null ? -1 : 0, NativeProtocol.createProtocolResultIntent(intent, bundle, c3344mh));
        activity.finish();
    }

    private final void onCompleteWebFallbackDialog(Bundle bundle) {
        FragmentActivity activity = getActivity();
        if (activity == null) {
            return;
        }
        Intent intent = new Intent();
        if (bundle == null) {
            bundle = new Bundle();
        }
        intent.putExtras(bundle);
        activity.setResult(-1, intent);
        activity.finish();
    }

    @Override // androidx.fragment.app.Fragment, androidx.lifecycle.Cfor
    public AbstractC3398nc getDefaultViewModelCreationExtras() {
        return AbstractC3398nc.Cdo.f14538do;
    }

    public final Dialog getInnerDialog() {
        return this.innerDialog;
    }

    public final void initDialog$facebook_common_release() {
        FragmentActivity activity;
        WebDialog newInstance;
        if (this.innerDialog == null && (activity = getActivity()) != null) {
            Intent intent = activity.getIntent();
            NativeProtocol nativeProtocol = NativeProtocol.INSTANCE;
            C0173Do.m399new(intent, "intent");
            Bundle methodArgumentsFromIntent = NativeProtocol.getMethodArgumentsFromIntent(intent);
            if (methodArgumentsFromIntent == null ? false : methodArgumentsFromIntent.getBoolean(NativeProtocol.WEB_DIALOG_IS_FALLBACK, false)) {
                String string = methodArgumentsFromIntent != null ? methodArgumentsFromIntent.getString("url") : null;
                if (Utility.isNullOrEmpty(string)) {
                    Utility.logd(TAG, "Cannot start a fallback WebDialog with an empty/missing 'url'");
                    activity.finish();
                    return;
                }
                String m6913else = Cif.m6913else(new Object[]{C3756th.m8303if()}, 1, "fb%s://bridge/", "java.lang.String.format(format, *args)");
                FacebookWebFallbackDialog.Companion companion = FacebookWebFallbackDialog.Companion;
                if (string == null) {
                    throw new NullPointerException("null cannot be cast to non-null type kotlin.String");
                }
                newInstance = companion.newInstance(activity, string, m6913else);
                newInstance.setOnCompleteListener(new WebDialog.OnCompleteListener() { // from class: lh
                    @Override // com.facebook.internal.WebDialog.OnCompleteListener
                    public final void onComplete(Bundle bundle, C3344mh c3344mh) {
                        FacebookDialogFragment.m5404initDialog$lambda1(FacebookDialogFragment.this, bundle, c3344mh);
                    }
                });
            } else {
                String string2 = methodArgumentsFromIntent == null ? null : methodArgumentsFromIntent.getString(NativeProtocol.WEB_DIALOG_ACTION);
                Bundle bundle = methodArgumentsFromIntent != null ? methodArgumentsFromIntent.getBundle(NativeProtocol.WEB_DIALOG_PARAMS) : null;
                if (Utility.isNullOrEmpty(string2)) {
                    Utility.logd(TAG, "Cannot start a WebDialog with an empty/missing 'actionName'");
                    activity.finish();
                    return;
                } else {
                    if (string2 == null) {
                        throw new NullPointerException("null cannot be cast to non-null type kotlin.String");
                    }
                    newInstance = new WebDialog.Builder(activity, string2, bundle).setOnCompleteListener(new WebDialog.OnCompleteListener() { // from class: kh
                        @Override // com.facebook.internal.WebDialog.OnCompleteListener
                        public final void onComplete(Bundle bundle2, C3344mh c3344mh) {
                            FacebookDialogFragment.m5403initDialog$lambda0(FacebookDialogFragment.this, bundle2, c3344mh);
                        }
                    }).build();
                }
            }
            this.innerDialog = newInstance;
        }
    }

    @Override // androidx.fragment.app.Fragment, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        C0173Do.m401try(configuration, "newConfig");
        super.onConfigurationChanged(configuration);
        if ((this.innerDialog instanceof WebDialog) && isResumed()) {
            Dialog dialog = this.innerDialog;
            if (dialog == null) {
                throw new NullPointerException("null cannot be cast to non-null type com.facebook.internal.WebDialog");
            }
            ((WebDialog) dialog).resize();
        }
    }

    @Override // androidx.fragment.app.Ccatch, androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        initDialog$facebook_common_release();
    }

    @Override // androidx.fragment.app.Ccatch
    public Dialog onCreateDialog(Bundle bundle) {
        Dialog dialog = this.innerDialog;
        if (dialog != null) {
            if (dialog != null) {
                return dialog;
            }
            throw new NullPointerException("null cannot be cast to non-null type android.app.Dialog");
        }
        onCompleteWebDialog(null, null);
        setShowsDialog(false);
        Dialog onCreateDialog = super.onCreateDialog(bundle);
        C0173Do.m399new(onCreateDialog, "super.onCreateDialog(savedInstanceState)");
        return onCreateDialog;
    }

    @Override // androidx.fragment.app.Ccatch, androidx.fragment.app.Fragment
    public void onDestroyView() {
        Dialog dialog = getDialog();
        if (dialog != null && getRetainInstance()) {
            dialog.setDismissMessage(null);
        }
        super.onDestroyView();
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        Dialog dialog = this.innerDialog;
        if (dialog instanceof WebDialog) {
            if (dialog == null) {
                throw new NullPointerException("null cannot be cast to non-null type com.facebook.internal.WebDialog");
            }
            ((WebDialog) dialog).resize();
        }
    }

    public final void setInnerDialog(Dialog dialog) {
        this.innerDialog = dialog;
    }
}
