package app.k9mail.core.ui.compose.designsystem.molecule;

import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class ContentKey implements LoadingErrorState {
    public final Object error;
    public final boolean isLoading;

    public ContentKey(Object obj, boolean z) {
        this.isLoading = z;
        this.error = obj;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ContentKey)) {
            return false;
        }
        ContentKey contentKey = (ContentKey) obj;
        return this.isLoading == contentKey.isLoading && Intrinsics.areEqual(this.error, contentKey.error);
    }

    @Override // app.k9mail.core.ui.compose.designsystem.molecule.LoadingErrorState
    public final Object getError() {
        return this.error;
    }

    public final int hashCode() {
        int i = (this.isLoading ? 1231 : 1237) * 31;
        Object obj = this.error;
        return i + (obj == null ? 0 : obj.hashCode());
    }

    @Override // app.k9mail.core.ui.compose.designsystem.molecule.LoadingErrorState
    public final boolean isLoading() {
        return this.isLoading;
    }

    public final String toString() {
        return "ContentKey(isLoading=" + this.isLoading + ", error=" + this.error + ")";
    }
}
