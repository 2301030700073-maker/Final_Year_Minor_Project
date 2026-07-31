package androidx.compose.runtime;

import android.app.ActivityOptions;
import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import androidx.cardview.widget.CardView;
import androidx.compose.foundation.lazy.layout.LazyLayoutItemContentFactory;
import androidx.compose.foundation.lazy.layout.PrefetchScheduler;
import androidx.compose.ui.layout.SubcomposeLayoutState;
import androidx.core.widget.TextViewCompat$Api34Impl;
import androidx.navigationevent.NavigationEvent_androidKt;
import coil3.disk.DiskLruCache;
import coil3.util.UtilsKt;
import com.grack.nanojson.JsonBuilder;
import io.noties.markwon.BlockHandlerDef;
import java.io.IOException;
import java.util.ArrayList;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.EventListener;
import okhttp3.Response;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;
import okhttp3.internal.connection.Exchange$ResponseBodySource;
import okhttp3.internal.connection.ExchangeFinder;
import okhttp3.internal.connection.RealCall;
import okhttp3.internal.connection.RealConnection;
import okhttp3.internal.http.ExchangeCodec;
import okhttp3.internal.http.RealResponseBody;
import okio.Path;
import okio.RealBufferedSource;
import us.shandian.giga.util.Utility;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class Latch {
    public boolean _isOpen;
    public Object awaiters;
    public final Object lock;
    public Object spareList;

    public Latch(int i) {
        switch (i) {
            case 1:
                this.lock = new Intent("android.intent.action.VIEW");
                this.awaiters = new BlockHandlerDef(2);
                this._isOpen = true;
                break;
            default:
                this.lock = new Object();
                this.awaiters = new ArrayList();
                this.spareList = new ArrayList();
                this._isOpen = true;
                break;
        }
    }

    public static IOException bodyComplete$default(Latch latch, boolean z, IOException iOException, int i) {
        boolean z2 = (i & 4) == 0;
        boolean z3 = (i & 8) == 0;
        if (iOException != null) {
            latch.trackFailure(iOException);
        }
        if (z3) {
            EventListener eventListener = ((RealCall) latch.lock).eventListener;
            if (iOException != null) {
                eventListener.getClass();
            } else {
                eventListener.getClass();
            }
        }
        if (z2) {
            EventListener eventListener2 = ((RealCall) latch.lock).eventListener;
            if (iOException != null) {
                eventListener2.getClass();
            } else {
                eventListener2.getClass();
            }
        }
        return ((RealCall) latch.lock).messageDone$okhttp(latch, z3 && !z, z2 && !z, z2 && z, z3 && z, iOException);
    }

    public CardView.AnonymousClass1 build() {
        Intent intent = (Intent) this.lock;
        if (!intent.hasExtra("android.support.customtabs.extra.SESSION")) {
            Bundle bundle = new Bundle();
            bundle.putBinder("android.support.customtabs.extra.SESSION", null);
            intent.putExtras(bundle);
        }
        intent.putExtra("android.support.customtabs.extra.EXTRA_ENABLE_INSTANT_APPS", this._isOpen);
        ((BlockHandlerDef) this.awaiters).getClass();
        intent.putExtras(new Bundle());
        boolean z = false;
        intent.putExtra("androidx.browser.customtabs.extra.SHARE_STATE", 0);
        int i = Build.VERSION.SDK_INT;
        if (i >= 24) {
            String defaultLocale = Utility.getDefaultLocale();
            if (!TextUtils.isEmpty(defaultLocale)) {
                Bundle bundleExtra = intent.hasExtra("com.android.browser.headers") ? intent.getBundleExtra("com.android.browser.headers") : new Bundle();
                if (!bundleExtra.containsKey("Accept-Language")) {
                    bundleExtra.putString("Accept-Language", defaultLocale);
                    intent.putExtra("com.android.browser.headers", bundleExtra);
                }
            }
        }
        if (i >= 34) {
            if (((ActivityOptions) this.spareList) == null) {
                this.spareList = ActivityOptions.makeBasic();
            }
            TextViewCompat$Api34Impl.setShareIdentityEnabled((ActivityOptions) this.spareList);
        }
        if (i >= 36) {
            if (((ActivityOptions) this.spareList) == null) {
                this.spareList = ActivityOptions.makeBasic();
            }
            NavigationEvent_androidKt.setAllowPassThroughOnTouchOutside((ActivityOptions) this.spareList, !intent.getBooleanExtra("androidx.browser.customtabs.extra.DISABLE_BACKGROUND_INTERACTION", false));
        }
        ActivityOptions activityOptions = (ActivityOptions) this.spareList;
        return new CardView.AnonymousClass1(4, intent, activityOptions != null ? activityOptions.toBundle() : null, z);
    }

    public void complete(boolean z) {
        DiskLruCache diskLruCache = (DiskLruCache) this.spareList;
        synchronized (diskLruCache.lock) {
            try {
                if (this._isOpen) {
                    throw new IllegalStateException("editor is closed");
                }
                if (Intrinsics.areEqual(((DiskLruCache.Entry) this.lock).currentEditor, this)) {
                    DiskLruCache.access$completeEdit(diskLruCache, this, z);
                }
                this._isOpen = true;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public Path file(int i) {
        Path path;
        DiskLruCache diskLruCache = (DiskLruCache) this.spareList;
        synchronized (diskLruCache.lock) {
            if (this._isOpen) {
                throw new IllegalStateException("editor is closed");
            }
            ((boolean[]) this.awaiters)[i] = true;
            Object obj = ((DiskLruCache.Entry) this.lock).dirtyFiles.get(i);
            UtilsKt.createFile$default(diskLruCache.fileSystem, (Path) obj);
            path = (Path) obj;
        }
        return path;
    }

    public RealConnection getConnection$okhttp() {
        ExchangeCodec.Carrier carrier = ((ExchangeCodec) this.spareList).getCarrier();
        RealConnection realConnection = carrier instanceof RealConnection ? (RealConnection) carrier : null;
        if (realConnection != null) {
            return realConnection;
        }
        _UtilJvmKt$$ExternalSyntheticLambda1.m$2("no connection for CONNECT tunnels");
        return null;
    }

    public boolean isOpen() {
        boolean z;
        synchronized (this.lock) {
            z = this._isOpen;
        }
        return z;
    }

    public RealResponseBody openResponseBody(Response response) {
        Latch latch;
        String str;
        long reportedContentLength;
        try {
            str = response.headers.get("Content-Type");
            if (str == null) {
                str = null;
            }
            reportedContentLength = ((ExchangeCodec) this.spareList).reportedContentLength(response);
            latch = this;
        } catch (IOException e) {
            e = e;
            latch = this;
        }
        try {
            return new RealResponseBody(str, reportedContentLength, new RealBufferedSource(new Exchange$ResponseBodySource(latch, ((ExchangeCodec) this.spareList).openResponseBodySource(response), reportedContentLength, false)));
        } catch (IOException e2) {
            e = e2;
            IOException iOException = e;
            ((RealCall) latch.lock).eventListener.getClass();
            latch.trackFailure(iOException);
            throw iOException;
        }
    }

    public Response.Builder readResponseHeaders(boolean z) {
        try {
            Response.Builder readResponseHeaders = ((ExchangeCodec) this.spareList).readResponseHeaders(z);
            if (readResponseHeaders == null) {
                return readResponseHeaders;
            }
            readResponseHeaders.exchange = this;
            return readResponseHeaders;
        } catch (IOException e) {
            ((RealCall) this.lock).eventListener.getClass();
            trackFailure(e);
            throw e;
        }
    }

    public void trackFailure(IOException iOException) {
        this._isOpen = true;
        ((ExchangeCodec) this.spareList).getCarrier().trackFailure((RealCall) this.lock, iOException);
    }

    public JsonBuilder upgradeToSocket() {
        RealCall realCall = (RealCall) this.lock;
        if (realCall.timeoutEarlyExit) {
            _UtilJvmKt$$ExternalSyntheticLambda1.m$2("Check failed.");
            return null;
        }
        realCall.timeoutEarlyExit = true;
        realCall.timeout.exit();
        synchronized (realCall) {
            if (realCall.exchange == null) {
                throw new IllegalStateException("Check failed.");
            }
            if (realCall.socketSinkOpen || realCall.socketSourceOpen) {
                throw new IllegalStateException("Check failed.");
            }
            if (realCall.requestBodyOpen) {
                throw new IllegalStateException("Check failed.");
            }
            if (!realCall.responseBodyOpen) {
                throw new IllegalStateException("Check failed.");
            }
            realCall.responseBodyOpen = false;
            realCall.socketSinkOpen = true;
            realCall.socketSourceOpen = true;
        }
        ExchangeCodec.Carrier carrier = ((ExchangeCodec) this.spareList).getCarrier();
        carrier.getClass();
        RealConnection realConnection = (RealConnection) carrier;
        realConnection.javaNetSocket.setSoTimeout(0);
        realConnection.noNewExchanges();
        return new JsonBuilder(this);
    }

    public Latch(RealCall realCall, ExchangeFinder exchangeFinder, ExchangeCodec exchangeCodec) {
        exchangeFinder.getClass();
        this.lock = realCall;
        this.awaiters = exchangeFinder;
        this.spareList = exchangeCodec;
    }

    public Latch(LazyLayoutItemContentFactory lazyLayoutItemContentFactory, SubcomposeLayoutState subcomposeLayoutState, PrefetchScheduler prefetchScheduler) {
        this.lock = lazyLayoutItemContentFactory;
        this.awaiters = subcomposeLayoutState;
        this.spareList = prefetchScheduler;
        this._isOpen = true;
    }

    public Latch(DiskLruCache diskLruCache, DiskLruCache.Entry entry) {
        this.spareList = diskLruCache;
        this.lock = entry;
        this.awaiters = new boolean[2];
    }
}
