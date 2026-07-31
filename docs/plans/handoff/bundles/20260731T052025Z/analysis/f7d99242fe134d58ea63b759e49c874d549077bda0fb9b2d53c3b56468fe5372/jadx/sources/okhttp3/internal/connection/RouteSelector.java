package okhttp3.internal.connection;

import android.view.Surface;
import androidx.camera.camera2.interop.CaptureRequestOptions$Builder$Companion$$ExternalSyntheticLambda0;
import androidx.camera.core.ImageProxy;
import androidx.camera.core.SafeCloseImageReaderProxy$$ExternalSyntheticLambda1;
import androidx.camera.core.SingleCloseImageProxy;
import androidx.camera.core.impl.ImageReaderProxy;
import java.net.Proxy;
import java.net.URI;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Executor;
import kotlin.collections.EmptyList;
import okhttp3.Address;
import okhttp3.HttpUrl;
import okhttp3.internal._UtilJvmKt;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class RouteSelector implements ImageReaderProxy {
    public final Object address;
    public boolean fastFallback;
    public Object inetSocketAddresses;
    public int nextProxyIndex;
    public final Object postponedRoutes;
    public final Object proxies;
    public final Object routeDatabase;

    public RouteSelector(Address address, RouteDatabase routeDatabase, RealCall realCall, boolean z) {
        List immutableList;
        routeDatabase.getClass();
        this.address = address;
        this.routeDatabase = routeDatabase;
        this.fastFallback = z;
        EmptyList emptyList = EmptyList.INSTANCE;
        this.proxies = emptyList;
        this.inetSocketAddresses = emptyList;
        this.postponedRoutes = new ArrayList();
        HttpUrl httpUrl = address.url;
        httpUrl.getClass();
        URI uri = httpUrl.uri();
        if (uri.getHost() == null) {
            immutableList = _UtilJvmKt.toImmutableList(new Proxy[]{Proxy.NO_PROXY});
        } else {
            List<Proxy> select = address.proxySelector.select(uri);
            immutableList = (select == null || select.isEmpty()) ? _UtilJvmKt.toImmutableList(new Proxy[]{Proxy.NO_PROXY}) : _UtilJvmKt.toImmutableList(select);
        }
        this.proxies = immutableList;
        this.nextProxyIndex = 0;
    }

    @Override // androidx.camera.core.impl.ImageReaderProxy
    public ImageProxy acquireLatestImage() {
        SingleCloseImageProxy singleCloseImageProxy;
        synchronized (this.address) {
            ImageProxy acquireLatestImage = ((ImageReaderProxy) this.routeDatabase).acquireLatestImage();
            if (acquireLatestImage != null) {
                this.nextProxyIndex++;
                singleCloseImageProxy = new SingleCloseImageProxy(acquireLatestImage);
                singleCloseImageProxy.addOnImageCloseListener((SafeCloseImageReaderProxy$$ExternalSyntheticLambda1) this.postponedRoutes);
            } else {
                singleCloseImageProxy = null;
            }
        }
        return singleCloseImageProxy;
    }

    @Override // androidx.camera.core.impl.ImageReaderProxy
    public ImageProxy acquireNextImage() {
        SingleCloseImageProxy singleCloseImageProxy;
        synchronized (this.address) {
            ImageProxy acquireNextImage = ((ImageReaderProxy) this.routeDatabase).acquireNextImage();
            if (acquireNextImage != null) {
                this.nextProxyIndex++;
                singleCloseImageProxy = new SingleCloseImageProxy(acquireNextImage);
                singleCloseImageProxy.addOnImageCloseListener((SafeCloseImageReaderProxy$$ExternalSyntheticLambda1) this.postponedRoutes);
            } else {
                singleCloseImageProxy = null;
            }
        }
        return singleCloseImageProxy;
    }

    @Override // androidx.camera.core.impl.ImageReaderProxy
    public void clearOnImageAvailableListener() {
        synchronized (this.address) {
            ((ImageReaderProxy) this.routeDatabase).clearOnImageAvailableListener();
        }
    }

    @Override // androidx.camera.core.impl.ImageReaderProxy
    public void close() {
        synchronized (this.address) {
            try {
                Surface surface = (Surface) this.proxies;
                if (surface != null) {
                    surface.release();
                }
                ((ImageReaderProxy) this.routeDatabase).close();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // androidx.camera.core.impl.ImageReaderProxy
    public int getHeight() {
        int height;
        synchronized (this.address) {
            height = ((ImageReaderProxy) this.routeDatabase).getHeight();
        }
        return height;
    }

    @Override // androidx.camera.core.impl.ImageReaderProxy
    public int getImageFormat() {
        int imageFormat;
        synchronized (this.address) {
            imageFormat = ((ImageReaderProxy) this.routeDatabase).getImageFormat();
        }
        return imageFormat;
    }

    @Override // androidx.camera.core.impl.ImageReaderProxy
    public int getMaxImages() {
        int maxImages;
        synchronized (this.address) {
            maxImages = ((ImageReaderProxy) this.routeDatabase).getMaxImages();
        }
        return maxImages;
    }

    @Override // androidx.camera.core.impl.ImageReaderProxy
    public Surface getSurface() {
        Surface surface;
        synchronized (this.address) {
            surface = ((ImageReaderProxy) this.routeDatabase).getSurface();
        }
        return surface;
    }

    @Override // androidx.camera.core.impl.ImageReaderProxy
    public int getWidth() {
        int width;
        synchronized (this.address) {
            width = ((ImageReaderProxy) this.routeDatabase).getWidth();
        }
        return width;
    }

    public boolean hasNext() {
        return this.nextProxyIndex < ((List) this.proxies).size() || !((ArrayList) this.postponedRoutes).isEmpty();
    }

    public void safeClose() {
        synchronized (this.address) {
            try {
                this.fastFallback = true;
                ((ImageReaderProxy) this.routeDatabase).clearOnImageAvailableListener();
                if (this.nextProxyIndex == 0) {
                    close();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // androidx.camera.core.impl.ImageReaderProxy
    public void setOnImageAvailableListener(ImageReaderProxy.OnImageAvailableListener onImageAvailableListener, Executor executor) {
        synchronized (this.address) {
            ((ImageReaderProxy) this.routeDatabase).setOnImageAvailableListener(new CaptureRequestOptions$Builder$Companion$$ExternalSyntheticLambda0(1, this, onImageAvailableListener), executor);
        }
    }

    public RouteSelector(ImageReaderProxy imageReaderProxy) {
        this.address = new Object();
        this.nextProxyIndex = 0;
        this.fastFallback = false;
        this.postponedRoutes = new SafeCloseImageReaderProxy$$ExternalSyntheticLambda1(0, this);
        this.routeDatabase = imageReaderProxy;
        this.proxies = imageReaderProxy.getSurface();
    }
}
