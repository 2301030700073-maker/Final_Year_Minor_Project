package androidx.fragment.app;

import android.view.ViewGroup;
import androidx.activity.BackEventCompat;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class SpecialEffectsController$Effect {
    public boolean isCancelled;
    public boolean isStarted;

    public abstract void onCancel(ViewGroup viewGroup);

    public abstract void onCommit(ViewGroup viewGroup);

    public void onProgress(BackEventCompat backEventCompat, ViewGroup viewGroup) {
        viewGroup.getClass();
    }

    public void onStart(ViewGroup viewGroup) {
        viewGroup.getClass();
    }
}
