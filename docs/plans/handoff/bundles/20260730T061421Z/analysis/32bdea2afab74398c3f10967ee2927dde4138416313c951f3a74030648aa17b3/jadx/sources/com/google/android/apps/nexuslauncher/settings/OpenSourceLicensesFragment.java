package com.google.android.apps.nexuslauncher.settings;

import android.app.AlertDialog;
import android.app.Dialog;
import android.os.Bundle;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import androidx.fragment.app.DialogFragment;
import com.android.systemui.shared.R;

/* loaded from: classes.dex */
public class OpenSourceLicensesFragment extends DialogFragment {
    @Override // androidx.fragment.app.DialogFragment
    public Dialog onCreateDialog(Bundle bundle) {
        WebView webView = new WebView(getActivity());
        webView.setWebViewClient(new WebViewClient());
        webView.getSettings().setBuiltInZoomControls(true);
        webView.loadUrl("file:///android_res/raw/license.html");
        return new AlertDialog.Builder(getActivity()).setTitle(R.string.pref_open_source_licenses_title).setView(webView).create();
    }
}
