package androidx.core.app;

import android.app.Notification;
import android.os.Build;
import okhttp3.Dispatcher;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class NotificationCompat$DecoratedCustomViewStyle extends NotificationCompat$Style {

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public abstract class Api24Impl {
        public static Notification.Style createDecoratedCustomViewStyle() {
            return new Notification.DecoratedCustomViewStyle();
        }
    }

    @Override // androidx.core.app.NotificationCompat$Style
    public final void apply(Dispatcher dispatcher) {
        if (Build.VERSION.SDK_INT >= 24) {
            ((Notification.Builder) dispatcher.readyAsyncCalls).setStyle(Api24Impl.createDecoratedCustomViewStyle());
        }
    }

    @Override // androidx.core.app.NotificationCompat$Style
    public final String getClassName() {
        return "androidx.core.app.NotificationCompat$DecoratedCustomViewStyle";
    }

    @Override // androidx.core.app.NotificationCompat$Style
    public final void makeBigContentView() {
        if (Build.VERSION.SDK_INT >= 24) {
            return;
        }
        this.mBuilder.getClass();
        this.mBuilder.getClass();
    }

    @Override // androidx.core.app.NotificationCompat$Style
    public final void makeContentView() {
        if (Build.VERSION.SDK_INT >= 24) {
            return;
        }
        this.mBuilder.getClass();
    }

    @Override // androidx.core.app.NotificationCompat$Style
    public final void makeHeadsUpContentView() {
        if (Build.VERSION.SDK_INT >= 24) {
            return;
        }
        this.mBuilder.getClass();
        this.mBuilder.getClass();
    }
}
