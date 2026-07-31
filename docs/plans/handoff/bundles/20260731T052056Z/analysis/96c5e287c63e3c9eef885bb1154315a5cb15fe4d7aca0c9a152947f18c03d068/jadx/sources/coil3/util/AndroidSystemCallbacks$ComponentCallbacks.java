package coil3.util;

import android.content.ComponentCallbacks2;
import android.content.res.Configuration;
import androidx.cardview.widget.CardView;
import androidx.collection.MutableScatterMap;
import androidx.compose.ui.graphics.AndroidGraphicsContext;
import coil3.RealImageLoader;
import coil3.memory.RealMemoryCache;
import java.lang.ref.WeakReference;
import okhttp3.Cache;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class AndroidSystemCallbacks$ComponentCallbacks implements ComponentCallbacks2 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object this$0;

    public /* synthetic */ AndroidSystemCallbacks$ComponentCallbacks(int i, Object obj) {
        this.$r8$classId = i;
        this.this$0 = obj;
    }

    private final void onTrimMemory$coil3$util$AndroidSystemCallbacks$ComponentCallbacks(int i) {
        RealMemoryCache memoryCache;
        Cache.RealCacheRequest realCacheRequest = (Cache.RealCacheRequest) this.this$0;
        synchronized (realCacheRequest) {
            try {
                RealImageLoader realImageLoader = (RealImageLoader) ((WeakReference) realCacheRequest.editor).get();
                if (realImageLoader != null) {
                    RealImageLoader.Options options = realImageLoader.options;
                    if (i >= 40) {
                        RealMemoryCache memoryCache2 = realImageLoader.getMemoryCache();
                        if (memoryCache2 != null) {
                            memoryCache2.clear();
                        }
                    } else if (i >= 20) {
                        ((AndroidSystemCallbacks$ActivityCallbacks) realCacheRequest.cacheOut).register(options.application);
                    } else if (i >= 10 && (memoryCache = realImageLoader.getMemoryCache()) != null) {
                        memoryCache.trimToSize(memoryCache.getSize() / 2);
                    }
                } else {
                    realCacheRequest.shutdown();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // android.content.ComponentCallbacks
    public final void onConfigurationChanged(Configuration configuration) {
        switch (this.$r8$classId) {
            case 0:
                Cache.RealCacheRequest realCacheRequest = (Cache.RealCacheRequest) this.this$0;
                synchronized (realCacheRequest) {
                    if (((RealImageLoader) ((WeakReference) realCacheRequest.editor).get()) == null) {
                        realCacheRequest.shutdown();
                    }
                }
                return;
            default:
                return;
        }
    }

    @Override // android.content.ComponentCallbacks
    public final void onLowMemory() {
        switch (this.$r8$classId) {
            case 0:
                onTrimMemory(80);
                break;
        }
    }

    @Override // android.content.ComponentCallbacks2
    public final void onTrimMemory(int i) {
        switch (this.$r8$classId) {
            case 0:
                onTrimMemory$coil3$util$AndroidSystemCallbacks$ComponentCallbacks(i);
                return;
            default:
                if (i >= 40) {
                    AndroidGraphicsContext androidGraphicsContext = (AndroidGraphicsContext) this.this$0;
                    CardView.AnonymousClass1 anonymousClass1 = androidGraphicsContext.shadowCache;
                    if (anonymousClass1 != null) {
                        synchronized (anonymousClass1) {
                            try {
                                MutableScatterMap mutableScatterMap = (MutableScatterMap) anonymousClass1.mCardBackground;
                                if (mutableScatterMap != null) {
                                    mutableScatterMap.clear();
                                }
                                anonymousClass1.this$0 = null;
                            } catch (Throwable th) {
                                throw th;
                            }
                        }
                    }
                    androidGraphicsContext.shadowCache = null;
                    return;
                }
                return;
        }
    }

    private final void onLowMemory$androidx$compose$ui$graphics$AndroidGraphicsContext$1() {
    }

    private final void onConfigurationChanged$androidx$compose$ui$graphics$AndroidGraphicsContext$1(Configuration configuration) {
    }
}
