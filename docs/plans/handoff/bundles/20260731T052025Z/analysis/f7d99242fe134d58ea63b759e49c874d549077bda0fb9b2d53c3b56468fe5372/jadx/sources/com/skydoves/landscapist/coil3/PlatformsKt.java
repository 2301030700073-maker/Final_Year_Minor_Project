package com.skydoves.landscapist.coil3;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import androidx.camera.core.impl.Config;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.ui.graphics.AndroidImageBitmap;
import androidx.compose.ui.graphics.ColorKt;
import androidx.compose.ui.graphics.ImageBitmap;
import androidx.compose.ui.graphics.painter.BitmapPainter;
import androidx.compose.ui.graphics.painter.ColorPainter;
import androidx.compose.ui.graphics.painter.Painter;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.compose.ui.unit.IntOffsetKt;
import androidx.lifecycle.LifecycleOwner;
import coil3.Image;
import coil3.ImageLoader;
import coil3.Image_androidKt;
import coil3.SingletonImageLoader;
import coil3.network.NetworkFetcher;
import coil3.network.okhttp.OkHttpNetworkFetcher;
import coil3.request.ImageRequest;
import coil3.request.ImageRequests_androidKt;
import com.skydoves.landscapist.DrawablePainter;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class PlatformsKt {
    private static final NetworkFetcher.Factory networkFetcherFactory = OkHttpNetworkFetcher.factory();

    public static final ImageRequest buildImageRequest(Object obj, ImageRequest.Listener listener, Composer composer, int i) {
        GapComposer gapComposer = (GapComposer) composer;
        return ImageRequests_androidKt.lifecycle(new ImageRequest.Builder(getPlatformContext(gapComposer, 0)).data(obj).listener(listener), (LifecycleOwner) gapComposer.consume(AndroidCompositionLocals_androidKt.getLocalLifecycleOwner())).build();
    }

    public static final NetworkFetcher.Factory getNetworkFetcherFactory() {
        return networkFetcherFactory;
    }

    public static final Platform getPlatform() {
        return Platform.Android;
    }

    public static final Context getPlatformContext(Composer composer, int i) {
        return (Context) ((GapComposer) composer).consume(AndroidCompositionLocals_androidKt.LocalContext);
    }

    public static final ImageLoader getPlatformImageLoader(Composer composer, int i) {
        return SingletonImageLoader.get(getPlatformContext(composer, 0));
    }

    public static final Painter rememberImagePainter(Image image, List<Object> list, Composer composer, int i) {
        Object drawablePainter;
        image.getClass();
        list.getClass();
        Resources resources = getPlatformContext(composer, 0).getResources();
        resources.getClass();
        Drawable asDrawable = Image_androidKt.asDrawable(image, resources);
        asDrawable.getClass();
        GapComposer gapComposer = (GapComposer) composer;
        boolean changed = gapComposer.changed(asDrawable) | gapComposer.changed(list);
        Object rememberedValue = gapComposer.rememberedValue();
        if (changed || rememberedValue == Composer.Companion.Empty) {
            if (asDrawable instanceof BitmapDrawable) {
                Bitmap bitmap = ((BitmapDrawable) asDrawable).getBitmap();
                bitmap.getClass();
                drawablePainter = new BitmapPainter(new AndroidImageBitmap(bitmap));
            } else if (asDrawable instanceof ColorDrawable) {
                drawablePainter = new ColorPainter(ColorKt.Color(((ColorDrawable) asDrawable).getColor()));
            } else {
                Drawable mutate = asDrawable.mutate();
                mutate.getClass();
                drawablePainter = new DrawablePainter(mutate);
            }
            rememberedValue = drawablePainter;
            gapComposer.updateRememberedValue(rememberedValue);
        }
        Painter painter = (Painter) rememberedValue;
        IntOffsetKt.toBitmap$default(asDrawable);
        painter.getClass();
        gapComposer.startReplaceGroup(-986557328);
        ArrayList arrayList = new ArrayList();
        Iterator<T> it = list.iterator();
        while (it.hasNext()) {
            it.next();
        }
        Iterator it2 = arrayList.iterator();
        if (it2.hasNext()) {
            throw Config.CC.m(it2);
        }
        gapComposer.end(false);
        return painter;
    }

    public static final ImageBitmap toImageBitmap(Image image, Composer composer, int i) {
        image.getClass();
        Resources resources = ((Context) ((GapComposer) composer).consume(AndroidCompositionLocals_androidKt.LocalContext)).getResources();
        resources.getClass();
        return new AndroidImageBitmap(IntOffsetKt.toBitmap$default(Image_androidKt.asDrawable(image, resources)));
    }
}
