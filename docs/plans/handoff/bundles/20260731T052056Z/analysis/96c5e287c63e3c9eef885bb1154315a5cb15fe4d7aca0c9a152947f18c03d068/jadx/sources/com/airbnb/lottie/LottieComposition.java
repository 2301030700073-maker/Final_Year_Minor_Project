package com.airbnb.lottie;

import android.graphics.Bitmap;
import android.graphics.Rect;
import androidx.collection.LongSparseArray;
import androidx.collection.SparseArrayCompat;
import androidx.transition.Transition;
import com.airbnb.lottie.model.layer.Layer;
import com.airbnb.lottie.utils.Logger;
import com.airbnb.lottie.utils.Utils;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class LottieComposition {
    public Rect bounds;
    public SparseArrayCompat characters;
    public float endFrame;
    public HashMap fonts;
    public float frameRate;
    public boolean hasDashPattern;
    public HashMap images;
    public float imagesDpScale;
    public LongSparseArray layerMap;
    public ArrayList layers;
    public ArrayList markers;
    public HashMap precomps;
    public float startFrame;
    public final Transition.AnonymousClass1 performanceTracker = new Transition.AnonymousClass1(20);
    public final HashSet warnings = new HashSet();
    public int maskAndMatteCount = 0;

    public final void addWarning(String str) {
        Logger.warning(str);
        this.warnings.add(str);
    }

    public final float getDuration() {
        return (long) (((this.endFrame - this.startFrame) / this.frameRate) * 1000.0f);
    }

    public final Map getImages() {
        float dpScale = Utils.dpScale();
        if (dpScale != this.imagesDpScale) {
            for (Map.Entry entry : this.images.entrySet()) {
                HashMap hashMap = this.images;
                String str = (String) entry.getKey();
                LottieImageAsset lottieImageAsset = (LottieImageAsset) entry.getValue();
                float f = this.imagesDpScale / dpScale;
                int i = (int) (lottieImageAsset.width * f);
                int i2 = (int) (lottieImageAsset.height * f);
                LottieImageAsset lottieImageAsset2 = new LottieImageAsset(i, i2, lottieImageAsset.id, lottieImageAsset.fileName, lottieImageAsset.dirName);
                Bitmap bitmap = lottieImageAsset.bitmap;
                if (bitmap != null) {
                    lottieImageAsset2.bitmap = Bitmap.createScaledBitmap(bitmap, i, i2, true);
                }
                hashMap.put(str, lottieImageAsset2);
            }
        }
        this.imagesDpScale = dpScale;
        return this.images;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("LottieComposition:\n");
        Iterator it = this.layers.iterator();
        while (it.hasNext()) {
            sb.append(((Layer) it.next()).toString("\t"));
        }
        return sb.toString();
    }
}
