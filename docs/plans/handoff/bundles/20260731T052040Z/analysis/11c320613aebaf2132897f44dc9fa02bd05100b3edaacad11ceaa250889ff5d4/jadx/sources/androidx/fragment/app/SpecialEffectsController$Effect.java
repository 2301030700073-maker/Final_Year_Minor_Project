package androidx.fragment.app;

import android.view.ViewGroup;
import androidx.activity.BackEventCompat;
import androidx.fragment.app.DefaultSpecialEffectsController;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract class SpecialEffectsController$Effect {
    public boolean isCancelled;
    public boolean isStarted;

    public boolean isSeekingSupported() {
        return this instanceof DefaultSpecialEffectsController.AnimatorEffect;
    }

    public abstract void onCancel(ViewGroup viewGroup);

    public abstract void onCommit(ViewGroup viewGroup);

    public void onProgress(BackEventCompat backEventCompat, ViewGroup viewGroup) {
        viewGroup.getClass();
    }

    public void onStart(ViewGroup viewGroup) {
        viewGroup.getClass();
    }
}
