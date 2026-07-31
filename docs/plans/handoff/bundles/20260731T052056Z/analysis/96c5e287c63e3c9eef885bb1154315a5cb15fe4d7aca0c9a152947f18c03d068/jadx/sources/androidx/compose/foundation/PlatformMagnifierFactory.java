package androidx.compose.foundation;

import android.view.View;
import androidx.compose.ui.unit.Density;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public interface PlatformMagnifierFactory {
    /* renamed from: create-nHHXs2Y, reason: not valid java name */
    PlatformMagnifier mo59createnHHXs2Y(View view, boolean z, long j, float f, float f2, boolean z2, Density density, float f3);

    boolean getCanUpdateZoom();
}
