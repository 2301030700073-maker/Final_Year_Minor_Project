package androidx.fragment.app;

import android.view.ViewGroup;
import androidx.activity.BackEventCompat;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
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
