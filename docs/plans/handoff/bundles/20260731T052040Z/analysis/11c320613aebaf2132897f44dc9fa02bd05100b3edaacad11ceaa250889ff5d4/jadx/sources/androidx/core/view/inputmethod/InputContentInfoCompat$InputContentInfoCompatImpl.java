package androidx.core.view.inputmethod;

import android.content.ClipDescription;
import android.net.Uri;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public interface InputContentInfoCompat$InputContentInfoCompatImpl {
    Uri getContentUri();

    ClipDescription getDescription();

    Object getInputContentInfo();

    Uri getLinkUri();

    void requestPermission();
}
