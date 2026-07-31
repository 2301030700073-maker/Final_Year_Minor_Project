package androidx.datastore.preferences.protobuf;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class ListFieldSchemas {
    public static final ListFieldSchemaLite FULL_SCHEMA;
    public static final ListFieldSchemaLite LITE_SCHEMA;

    static {
        Protobuf protobuf = Protobuf.INSTANCE;
        ListFieldSchemaLite listFieldSchemaLite = null;
        try {
            listFieldSchemaLite = (ListFieldSchemaLite) Class.forName("androidx.datastore.preferences.protobuf.ListFieldSchemaFull").getDeclaredConstructor(null).newInstance(null);
        } catch (Exception unused) {
        }
        FULL_SCHEMA = listFieldSchemaLite;
        LITE_SCHEMA = new ListFieldSchemaLite();
    }
}
