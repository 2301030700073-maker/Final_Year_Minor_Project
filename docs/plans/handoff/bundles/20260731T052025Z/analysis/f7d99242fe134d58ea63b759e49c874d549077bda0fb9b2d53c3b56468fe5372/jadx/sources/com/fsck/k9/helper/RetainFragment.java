package com.fsck.k9.helper;

import android.os.Bundle;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.strictmode.FragmentReuseViolation;
import androidx.fragment.app.strictmode.FragmentStrictMode;
import com.fsck.k9.ui.crypto.MessageCryptoHelper;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public class RetainFragment<T> extends Fragment {
    public boolean cleared;
    public MessageCryptoHelper data;

    @Override // androidx.fragment.app.Fragment
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        FragmentStrictMode.Policy policy = FragmentStrictMode.defaultPolicy;
        FragmentStrictMode.logIfDebuggingEnabled(new FragmentReuseViolation(this, "Attempting to set retain instance for fragment " + this));
        FragmentStrictMode.getNearestPolicy(this).getClass();
        this.mRetainInstance = true;
        FragmentManager fragmentManager = this.mFragmentManager;
        if (fragmentManager != null) {
            fragmentManager.mNonConfig.addRetainedFragment(this);
        } else {
            this.mRetainInstanceChangedWhileDetached = true;
        }
    }
}
