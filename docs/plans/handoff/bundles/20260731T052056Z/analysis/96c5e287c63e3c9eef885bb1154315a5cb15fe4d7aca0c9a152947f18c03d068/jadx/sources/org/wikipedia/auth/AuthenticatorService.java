package org.wikipedia.auth;

import android.app.Service;
import android.content.Intent;
import android.os.IBinder;
import kotlin.Metadata;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0007\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lorg/wikipedia/auth/AuthenticatorService;", "Landroid/app/Service;", "<init>", "()V", "app"}, k = 1, mv = {2, 3, 0}, xi = 48)
/* loaded from: classes.dex */
public final class AuthenticatorService extends Service {
    public WikimediaAuthenticator authenticator;

    @Override // android.app.Service
    public final IBinder onBind(Intent intent) {
        intent.getClass();
        WikimediaAuthenticator wikimediaAuthenticator = this.authenticator;
        if (wikimediaAuthenticator != null) {
            return wikimediaAuthenticator.getIBinder();
        }
        return null;
    }

    @Override // android.app.Service
    public final void onCreate() {
        super.onCreate();
        this.authenticator = new WikimediaAuthenticator(this);
    }
}
