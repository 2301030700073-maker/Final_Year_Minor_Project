package coil3;

import android.graphics.Canvas;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public interface Image {
    void draw(Canvas canvas);

    int getHeight();

    boolean getShareable();

    long getSize();

    int getWidth();
}
