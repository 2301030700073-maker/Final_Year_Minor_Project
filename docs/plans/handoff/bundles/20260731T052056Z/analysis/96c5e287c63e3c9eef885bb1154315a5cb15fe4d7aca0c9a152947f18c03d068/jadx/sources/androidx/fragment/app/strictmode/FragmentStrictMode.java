package androidx.fragment.app.strictmode;

import android.util.Log;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManagerImpl;
import java.util.LinkedHashMap;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class FragmentStrictMode {
    public static final Policy defaultPolicy = Policy.LAX;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
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
        if (FragmentManagerImpl.isLoggingEnabled(3)) {
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
