package androidx.fragment.app.strictmode;

import android.util.Log;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import java.util.LinkedHashMap;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class FragmentStrictMode {
    public static final Policy defaultPolicy = Policy.LAX;

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class Policy {
        public static final Policy LAX;

        static {
            Policy policy = new Policy();
            new LinkedHashMap();
            LAX = policy;
        }
    }

    public static Policy getNearestPolicy(Fragment fragment) {
        while (fragment != null) {
            if (fragment.isAdded()) {
                fragment.getParentFragmentManager();
            }
            fragment = fragment.mParentFragment;
        }
        return defaultPolicy;
    }

    public static void logIfDebuggingEnabled(Violation violation) {
        if (FragmentManager.isLoggingEnabled(3)) {
            Log.d("FragmentManager", "StrictMode violation in ".concat(violation.fragment.getClass().getName()), violation);
        }
    }

    public static final void onFragmentReuse(Fragment fragment, String str) {
        fragment.getClass();
        str.getClass();
        logIfDebuggingEnabled(new FragmentReuseViolation(fragment, "Attempting to reuse fragment " + fragment + " with previous ID " + str));
        getNearestPolicy(fragment).getClass();
    }
}
