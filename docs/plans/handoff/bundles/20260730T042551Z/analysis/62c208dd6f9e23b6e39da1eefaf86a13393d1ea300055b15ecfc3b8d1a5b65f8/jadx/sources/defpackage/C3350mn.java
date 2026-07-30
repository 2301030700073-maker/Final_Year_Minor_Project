package defpackage;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.util.Log;
import defpackage.C3193k6;
import j$.util.Objects;
import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;
import java.net.URL;
import java.net.URLConnection;
import java.util.concurrent.Future;

/* renamed from: mn, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C3350mn implements Closeable {

    /* renamed from: do, reason: not valid java name */
    public XV f14387do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final URL f14388do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public volatile Future<?> f14389do;

    public C3350mn(URL url) {
        this.f14388do = url;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        this.f14389do.cancel(true);
    }

    /* renamed from: do, reason: not valid java name */
    public final Bitmap m7466do() {
        boolean isLoggable = Log.isLoggable("FirebaseMessaging", 4);
        URL url = this.f14388do;
        if (isLoggable) {
            Objects.toString(url);
        }
        URLConnection openConnection = url.openConnection();
        if (openConnection.getContentLength() > 1048576) {
            throw new IOException("Content-Length exceeds max size of 1048576");
        }
        InputStream inputStream = openConnection.getInputStream();
        try {
            byte[] m7214if = C3193k6.m7214if(new C3193k6.Cdo(inputStream));
            if (inputStream != null) {
                inputStream.close();
            }
            if (Log.isLoggable("FirebaseMessaging", 2)) {
                int length = m7214if.length;
                Objects.toString(url);
            }
            if (m7214if.length > 1048576) {
                throw new IOException("Image exceeds max size of 1048576");
            }
            Bitmap decodeByteArray = BitmapFactory.decodeByteArray(m7214if, 0, m7214if.length);
            if (decodeByteArray != null) {
                if (Log.isLoggable("FirebaseMessaging", 3)) {
                    Objects.toString(url);
                }
                return decodeByteArray;
            }
            throw new IOException("Failed to decode image: " + url);
        } catch (Throwable th) {
            if (inputStream != null) {
                try {
                    inputStream.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
            }
            throw th;
        }
    }
}
