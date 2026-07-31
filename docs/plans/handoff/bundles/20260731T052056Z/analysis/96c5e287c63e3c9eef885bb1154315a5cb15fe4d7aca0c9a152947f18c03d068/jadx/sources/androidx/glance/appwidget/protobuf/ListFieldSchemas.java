package androidx.glance.appwidget.protobuf;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class ListFieldSchemas {
    public static final ListFieldSchemaLite FULL_SCHEMA;
    public static final ListFieldSchemaLite LITE_SCHEMA;

    static {
        Protobuf protobuf = Protobuf.INSTANCE;
        ListFieldSchemaLite listFieldSchemaLite = null;
        try {
            listFieldSchemaLite = (ListFieldSchemaLite) Class.forName("androidx.glance.appwidget.protobuf.ListFieldSchemaFull").getDeclaredConstructor(null).newInstance(null);
        } catch (Exception unused) {
        }
        FULL_SCHEMA = listFieldSchemaLite;
        LITE_SCHEMA = new ListFieldSchemaLite();
    }
}
