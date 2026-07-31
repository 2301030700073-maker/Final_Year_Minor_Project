package com.bumptech.glide.gifdecoder;

import java.util.ArrayList;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class GifHeader {
    public int bgColor;
    public int bgIndex;
    public GifFrame currentFrame;
    public boolean gctFlag;
    public int gctSize;
    public int height;
    public int width;
    public int[] gct = null;
    public int status = 0;
    public int frameCount = 0;
    public final ArrayList frames = new ArrayList();
}
