package coil3.network;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public class HttpException extends RuntimeException {
    public HttpException(String str) {
        super("Map detected an error that would fail silently otherwise: ".concat(str));
    }

    public /* synthetic */ HttpException(boolean z) {
        super("Message was missing required fields.  (Lite runtime could not determine which fields were missing).");
    }

    public HttpException() {
        super("\nUsing MapView requires calling MapLibre.getInstance(Context context, String apiKey, WellKnownTileServer wellKnownTileServer) before inflating or creating the view.");
    }
}
