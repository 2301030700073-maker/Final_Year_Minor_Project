package androidx.savedstate;

import androidx.lifecycle.LifecycleOwner;
import com.beetstra.jutf7.Base64Util;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public interface SavedStateRegistryOwner extends LifecycleOwner {
    Base64Util getSavedStateRegistry();
}
