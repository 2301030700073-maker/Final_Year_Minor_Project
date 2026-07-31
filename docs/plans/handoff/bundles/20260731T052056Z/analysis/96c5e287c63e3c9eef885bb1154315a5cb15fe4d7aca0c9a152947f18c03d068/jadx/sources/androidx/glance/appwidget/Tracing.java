package androidx.glance.appwidget;

import android.os.Build;
import java.util.concurrent.atomic.AtomicBoolean;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class Tracing {
    public static final AtomicBoolean enabled = new AtomicBoolean(false);

    public static void endGlanceAppWidgetUpdate() {
        if (Build.VERSION.SDK_INT < 29 || !enabled.get()) {
            return;
        }
        TracingApi29Impl.INSTANCE.endAsyncSection("GlanceAppWidget::update", 0);
    }
}
