package androidx.core.app;

import android.app.PictureInPictureUiState;
import android.os.Build;
import okio.Path;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class PictureInPictureUiStateCompat$Companion {
    public static Path.Companion fromPictureInPictureUiState(PictureInPictureUiState pictureInPictureUiState) {
        int i = Build.VERSION.SDK_INT;
        if (i >= 35) {
            pictureInPictureUiState.isStashed();
            pictureInPictureUiState.isTransitioningToPip();
            return new Path.Companion();
        }
        if (i < 31) {
            return new Path.Companion();
        }
        pictureInPictureUiState.isStashed();
        return new Path.Companion();
    }
}
