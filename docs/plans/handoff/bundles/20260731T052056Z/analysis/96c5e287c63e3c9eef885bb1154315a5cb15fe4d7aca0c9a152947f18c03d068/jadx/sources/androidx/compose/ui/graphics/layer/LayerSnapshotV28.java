package androidx.compose.ui.graphics.layer;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Picture;
import androidx.compose.ui.graphics.AndroidCanvas;
import androidx.compose.ui.graphics.AndroidCanvas_androidKt;
import kotlin.coroutines.Continuation;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class LayerSnapshotV28 implements LayerSnapshotImpl {
    public static final LayerSnapshotV28 INSTANCE = new LayerSnapshotV28();

    @Override // androidx.compose.ui.graphics.layer.LayerSnapshotImpl
    public final Object toBitmap(GraphicsLayer graphicsLayer, Continuation continuation) {
        return Bitmap.createBitmap(new GraphicsLayerPicture(graphicsLayer));
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class GraphicsLayerPicture extends Picture {
        public final GraphicsLayer graphicsLayer;

        public GraphicsLayerPicture(GraphicsLayer graphicsLayer) {
            this.graphicsLayer = graphicsLayer;
        }

        @Override // android.graphics.Picture
        public final Canvas beginRecording(int i, int i2) {
            return new Canvas();
        }

        @Override // android.graphics.Picture
        public final void draw(Canvas canvas) {
            Canvas canvas2 = AndroidCanvas_androidKt.EmptyCanvas;
            AndroidCanvas androidCanvas = new AndroidCanvas();
            androidCanvas.internalCanvas = canvas;
            this.graphicsLayer.draw$ui_graphics(androidCanvas, null);
        }

        @Override // android.graphics.Picture
        public final int getHeight() {
            return (int) (this.graphicsLayer.size & 4294967295L);
        }

        @Override // android.graphics.Picture
        public final int getWidth() {
            return (int) (this.graphicsLayer.size >> 32);
        }

        @Override // android.graphics.Picture
        public final boolean requiresHardwareAcceleration() {
            return true;
        }

        @Override // android.graphics.Picture
        public final void endRecording() {
        }
    }
}
