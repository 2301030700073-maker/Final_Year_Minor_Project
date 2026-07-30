package androidx.activity;

import android.view.Window;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: EdgeToEdge.kt */
/* loaded from: classes.dex */
abstract class EdgeToEdgeBase implements EdgeToEdgeImpl {
    @Override // androidx.activity.EdgeToEdgeImpl
    public void adjustLayoutInDisplayCutoutMode(Window window) {
        Intrinsics.checkNotNullParameter(window, "window");
    }
}
