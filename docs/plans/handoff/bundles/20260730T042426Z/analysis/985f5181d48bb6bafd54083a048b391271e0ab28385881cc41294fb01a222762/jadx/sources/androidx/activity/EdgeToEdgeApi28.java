package androidx.activity;

import android.view.Window;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: EdgeToEdge.kt */
/* loaded from: classes.dex */
class EdgeToEdgeApi28 extends EdgeToEdgeApi26 {
    @Override // androidx.activity.EdgeToEdgeBase, androidx.activity.EdgeToEdgeImpl
    public void adjustLayoutInDisplayCutoutMode(Window window) {
        Intrinsics.checkNotNullParameter(window, "window");
        window.getAttributes().layoutInDisplayCutoutMode = 1;
    }
}
