package app.k9mail.core.android.common.activity;

import coil3.size.ViewSizeResolver;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class CreateDocumentResultContract$Input {
    public final String mimeType;
    public final String title;

    public CreateDocumentResultContract$Input(String str, String str2) {
        str2.getClass();
        this.title = str;
        this.mimeType = str2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof CreateDocumentResultContract$Input)) {
            return false;
        }
        CreateDocumentResultContract$Input createDocumentResultContract$Input = (CreateDocumentResultContract$Input) obj;
        return this.title.equals(createDocumentResultContract$Input.title) && Intrinsics.areEqual(this.mimeType, createDocumentResultContract$Input.mimeType);
    }

    public final int hashCode() {
        return this.mimeType.hashCode() + (this.title.hashCode() * 31);
    }

    public final String toString() {
        return ViewSizeResolver.CC.m("Input(title=", this.title, ", mimeType=", this.mimeType, ")");
    }
}
