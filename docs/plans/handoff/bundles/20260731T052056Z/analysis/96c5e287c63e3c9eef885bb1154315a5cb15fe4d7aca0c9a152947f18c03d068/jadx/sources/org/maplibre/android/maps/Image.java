package org.maplibre.android.maps;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public class Image {
    private final byte[] buffer;
    private final float[] content;
    private final int height;
    private final String name;
    private final float pixelRatio;
    private final boolean sdf;
    private final float[] stretchX;
    private final float[] stretchY;
    private final int width;

    public Image(byte[] bArr, float f, String str, int i, int i2, boolean z, float[] fArr, float[] fArr2, float[] fArr3) {
        this.buffer = bArr;
        this.pixelRatio = f;
        this.name = str;
        this.width = i;
        this.height = i2;
        this.sdf = z;
        this.content = fArr3;
        this.stretchX = fArr;
        this.stretchY = fArr2;
    }

    public Image(byte[] bArr, float f, String str, int i, int i2, boolean z) {
        this(bArr, f, str, i, i2, z, null, null, null);
    }
}
