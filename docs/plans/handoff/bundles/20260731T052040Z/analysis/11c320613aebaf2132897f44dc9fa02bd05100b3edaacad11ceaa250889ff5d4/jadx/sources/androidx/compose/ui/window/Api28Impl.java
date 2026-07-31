package androidx.compose.ui.window;

import android.view.WindowManager;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class Api28Impl {
    public static final Api28Impl INSTANCE = new Api28Impl();

    public final void setLayoutInDisplayCutout(WindowManager.LayoutParams layoutParams) {
        layoutParams.layoutInDisplayCutoutMode = 3;
    }
}
