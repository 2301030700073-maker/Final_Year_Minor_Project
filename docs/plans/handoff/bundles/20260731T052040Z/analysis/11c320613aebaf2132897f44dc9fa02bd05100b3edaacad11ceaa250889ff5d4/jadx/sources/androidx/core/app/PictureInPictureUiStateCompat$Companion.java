package androidx.core.app;

import android.app.PictureInPictureUiState;
import android.os.Build;
import io.noties.markwon.BlockHandlerDef;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract class PictureInPictureUiStateCompat$Companion {
    public static BlockHandlerDef fromPictureInPictureUiState(PictureInPictureUiState pictureInPictureUiState) {
        int i = Build.VERSION.SDK_INT;
        if (i >= 35) {
            pictureInPictureUiState.isStashed();
            pictureInPictureUiState.isTransitioningToPip();
            return new BlockHandlerDef(8);
        }
        if (i < 31) {
            return new BlockHandlerDef(8);
        }
        pictureInPictureUiState.isStashed();
        return new BlockHandlerDef(8);
    }
}
