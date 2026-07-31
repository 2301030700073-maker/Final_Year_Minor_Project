package androidx.core.view.inputmethod;

import android.content.ClipDescription;
import android.net.Uri;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public interface InputContentInfoCompat$InputContentInfoCompatImpl {
    Uri getContentUri();

    ClipDescription getDescription();

    Object getInputContentInfo();

    Uri getLinkUri();

    void requestPermission();
}
