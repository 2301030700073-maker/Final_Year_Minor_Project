package androidx.glance.appwidget.protobuf;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class MapFieldSchemas {
    public static final MapFieldSchemaLite FULL_SCHEMA;
    public static final MapFieldSchemaLite LITE_SCHEMA;

    static {
        Protobuf protobuf = Protobuf.INSTANCE;
        MapFieldSchemaLite mapFieldSchemaLite = null;
        try {
            mapFieldSchemaLite = (MapFieldSchemaLite) Class.forName("androidx.glance.appwidget.protobuf.MapFieldSchemaFull").getDeclaredConstructor(null).newInstance(null);
        } catch (Exception unused) {
        }
        FULL_SCHEMA = mapFieldSchemaLite;
        LITE_SCHEMA = new MapFieldSchemaLite();
    }
}
