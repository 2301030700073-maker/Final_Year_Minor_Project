package androidx.compose.ui.graphics.shadow;

import androidx.compose.ui.graphics.AndroidImageBitmap;
import androidx.compose.ui.graphics.AndroidPaint;
import androidx.compose.ui.graphics.AndroidPath;
import androidx.compose.ui.graphics.BlendModeColorFilter;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.ColorKt;
import androidx.compose.ui.unit.LayoutDirection;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class DropShadowRenderer {
    public long cornerRadius;
    public float generatedDensity;
    public LayoutDirection generatedLayoutDirection;
    public long generatedSize;
    public final ColorKt outline;
    public final AndroidPaint paint;
    public AndroidPath path;
    public final Shadow shadow;
    public AndroidImageBitmap shadowBitmap;
    public BlendModeColorFilter shadowTint;
    public long shadowTintColor;

    public DropShadowRenderer(Shadow shadow, ColorKt colorKt) {
        this.outline = colorKt;
        int i = Color.$r8$clinit;
        this.shadowTintColor = Color.Unspecified;
        this.cornerRadius = 0L;
        this.generatedSize = 9205357640488583168L;
        this.generatedLayoutDirection = LayoutDirection.Ltr;
        this.generatedDensity = 1.0f;
        this.shadow = shadow;
        this.paint = ColorKt.Paint();
    }

    /* JADX WARN: Code restructure failed: missing block: B:53:0x0055, code lost:
    
        if (kotlin.ULong.m820equalsimpl0(r9, r29) == false) goto L22;
     */
    /* renamed from: drawShadow-erFMhIw, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m495drawShadowerFMhIw(androidx.compose.ui.graphics.drawscope.DrawScope r25, androidx.compose.ui.graphics.BlendModeColorFilter r26, long r27, long r29, float r31) {
        /*
            Method dump skipped, instructions count: 476
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.ui.graphics.shadow.DropShadowRenderer.m495drawShadowerFMhIw(androidx.compose.ui.graphics.drawscope.DrawScope, androidx.compose.ui.graphics.BlendModeColorFilter, long, long, float):void");
    }
}
