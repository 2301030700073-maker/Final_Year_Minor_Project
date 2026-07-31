package app.k9mail.core.ui.compose.designsystem.organism.snackbar;

import androidx.camera.view.PreviewView;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class Material3BackedSnackbarHostState {
    public final PreviewView.AnonymousClass1 m3State;

    public Material3BackedSnackbarHostState(PreviewView.AnonymousClass1 anonymousClass1) {
        this.m3State = anonymousClass1;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof Material3BackedSnackbarHostState) && this.m3State == ((Material3BackedSnackbarHostState) obj).m3State;
    }

    public final int hashCode() {
        return this.m3State.hashCode();
    }

    public final String toString() {
        return "Material3BackedSnackbarHostState(m3State=" + this.m3State + ")";
    }
}
