package coil3.compose;

import androidx.appcompat.widget.PopupMenu$1;
import androidx.compose.animation.core.Animation;
import androidx.compose.ui.graphics.AndroidCanvas_androidKt;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import androidx.compose.ui.graphics.painter.Painter;
import coil3.Image;
import com.caverock.androidsvg.SVG;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class ImagePainter extends Painter {
    public final Image image;

    public ImagePainter(Image image) {
        this.image = image;
    }

    @Override // androidx.compose.ui.graphics.painter.Painter
    /* renamed from: getIntrinsicSize-NH-jbRc */
    public final long mo493getIntrinsicSizeNHjbRc() {
        Image image = this.image;
        int width = image.getWidth();
        float f = width > 0 ? width : Float.NaN;
        return (Float.floatToRawIntBits(image.getHeight() > 0 ? r6 : Float.NaN) & 4294967295L) | (Float.floatToRawIntBits(f) << 32);
    }

    @Override // androidx.compose.ui.graphics.painter.Painter
    public final void onDraw(DrawScope drawScope) {
        Image image = this.image;
        int width = image.getWidth();
        float intBitsToFloat = width > 0 ? Float.intBitsToFloat((int) (drawScope.mo476getSizeNHjbRc() >> 32)) / width : 1.0f;
        int height = image.getHeight();
        float intBitsToFloat2 = height > 0 ? Float.intBitsToFloat((int) (drawScope.mo476getSizeNHjbRc() & 4294967295L)) / height : 1.0f;
        SVG drawContext = drawScope.getDrawContext();
        long m796getSizeNHjbRc = drawContext.m796getSizeNHjbRc();
        drawContext.getCanvas().save();
        try {
            ((PopupMenu$1) drawContext.rootElement).m7scale0AR0LA0(intBitsToFloat, intBitsToFloat2, 0L);
            image.draw(AndroidCanvas_androidKt.getNativeCanvas(drawScope.getDrawContext().getCanvas()));
        } finally {
            Animation.CC.m(drawContext, m796getSizeNHjbRc);
        }
    }
}
