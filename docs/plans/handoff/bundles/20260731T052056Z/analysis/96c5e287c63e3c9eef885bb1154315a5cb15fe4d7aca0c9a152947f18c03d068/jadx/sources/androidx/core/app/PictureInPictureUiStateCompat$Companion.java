package androidx.core.app;

import android.app.PictureInPictureUiState;
import android.os.Build;
import androidx.transition.Transition;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class PictureInPictureUiStateCompat$Companion {
    public static Transition.AnonymousClass1 fromPictureInPictureUiState(PictureInPictureUiState pictureInPictureUiState) {
        int i = Build.VERSION.SDK_INT;
        if (i >= 35) {
            pictureInPictureUiState.isStashed();
            pictureInPictureUiState.isTransitioningToPip();
            return new Transition.AnonymousClass1(6, false);
        }
        if (i < 31) {
            return new Transition.AnonymousClass1(6, false);
        }
        pictureInPictureUiState.isStashed();
        return new Transition.AnonymousClass1(6, false);
    }
}
