package coil3;

import android.graphics.Canvas;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public interface Image {
    void draw(Canvas canvas);

    int getHeight();

    boolean getShareable();

    long getSize();

    int getWidth();
}
