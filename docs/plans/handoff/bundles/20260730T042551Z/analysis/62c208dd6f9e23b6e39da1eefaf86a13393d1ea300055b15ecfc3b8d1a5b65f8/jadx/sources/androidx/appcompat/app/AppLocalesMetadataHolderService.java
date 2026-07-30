package androidx.appcompat.app;

import android.app.Service;
import android.content.Intent;
import android.os.IBinder;
import com.google.android.gms.ads.AdRequest;

/* loaded from: classes.dex */
public final class AppLocalesMetadataHolderService extends Service {

    /* renamed from: for, reason: not valid java name */
    public static final /* synthetic */ int f5301for = 0;

    /* renamed from: androidx.appcompat.app.AppLocalesMetadataHolderService$do, reason: invalid class name */
    public static class Cdo {
        /* renamed from: do, reason: not valid java name */
        public static int m3288do() {
            return AdRequest.MAX_CONTENT_URL_LENGTH;
        }
    }

    @Override // android.app.Service
    public final IBinder onBind(Intent intent) {
        throw new UnsupportedOperationException();
    }
}
