package com.airbnb.lottie;

import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.os.Looper;
import com.airbnb.lottie.model.layer.CompositionLayer;
import java.util.concurrent.Semaphore;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class LottieDrawable$$ExternalSyntheticLambda2 implements Runnable {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ LottieDrawable f$0;

    public /* synthetic */ LottieDrawable$$ExternalSyntheticLambda2(LottieDrawable lottieDrawable, int i) {
        this.$r8$classId = i;
        this.f$0 = lottieDrawable;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = this.$r8$classId;
        LottieDrawable lottieDrawable = this.f$0;
        switch (i) {
            case 0:
                Semaphore semaphore = lottieDrawable.setProgressDrawLock;
                CompositionLayer compositionLayer = lottieDrawable.compositionLayer;
                if (compositionLayer == null) {
                    return;
                }
                try {
                    semaphore.acquire();
                    compositionLayer.setProgress(lottieDrawable.animator.getAnimatedValueAbsolute());
                    if (LottieDrawable.invalidateSelfOnMainThread && lottieDrawable.isDirty) {
                        Handler handler = lottieDrawable.mainThreadHandler;
                        if (handler == null) {
                            handler = new Handler(Looper.getMainLooper());
                            lottieDrawable.mainThreadHandler = handler;
                            lottieDrawable.invalidateSelfRunnable = new LottieDrawable$$ExternalSyntheticLambda2(lottieDrawable, 1);
                        }
                        handler.post(lottieDrawable.invalidateSelfRunnable);
                    }
                } catch (InterruptedException unused) {
                } catch (Throwable th) {
                    semaphore.release();
                    throw th;
                }
                semaphore.release();
                return;
            default:
                Drawable.Callback callback = lottieDrawable.getCallback();
                if (callback != null) {
                    callback.invalidateDrawable(lottieDrawable);
                    return;
                }
                return;
        }
    }
}
