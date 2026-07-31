package androidx.core.view.inputmethod;

import android.content.ClipDescription;
import android.net.Uri;
import android.view.inputmethod.InputContentInfo;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class InputContentInfoCompat$InputContentInfoCompatApi25Impl implements InputContentInfoCompat$InputContentInfoCompatImpl {
    public final InputContentInfo mObject;

    public InputContentInfoCompat$InputContentInfoCompatApi25Impl(Uri uri, ClipDescription clipDescription, Uri uri2) {
        this.mObject = new InputContentInfo(uri, clipDescription, uri2);
    }

    @Override // androidx.core.view.inputmethod.InputContentInfoCompat$InputContentInfoCompatImpl
    public final Uri getContentUri() {
        return this.mObject.getContentUri();
    }

    @Override // androidx.core.view.inputmethod.InputContentInfoCompat$InputContentInfoCompatImpl
    public final ClipDescription getDescription() {
        return this.mObject.getDescription();
    }

    @Override // androidx.core.view.inputmethod.InputContentInfoCompat$InputContentInfoCompatImpl
    public final Object getInputContentInfo() {
        return this.mObject;
    }

    @Override // androidx.core.view.inputmethod.InputContentInfoCompat$InputContentInfoCompatImpl
    public final Uri getLinkUri() {
        return this.mObject.getLinkUri();
    }

    @Override // androidx.core.view.inputmethod.InputContentInfoCompat$InputContentInfoCompatImpl
    public final void requestPermission() {
        this.mObject.requestPermission();
    }

    public InputContentInfoCompat$InputContentInfoCompatApi25Impl(Object obj) {
        this.mObject = (InputContentInfo) obj;
    }
}
