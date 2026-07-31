package androidx.datastore.preferences.protobuf;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class NewInstanceSchemas {
    public static final NewInstanceSchemaLite FULL_SCHEMA;
    public static final NewInstanceSchemaLite LITE_SCHEMA;

    static {
        Protobuf protobuf = Protobuf.INSTANCE;
        NewInstanceSchemaLite newInstanceSchemaLite = null;
        try {
            newInstanceSchemaLite = (NewInstanceSchemaLite) Class.forName("androidx.datastore.preferences.protobuf.NewInstanceSchemaFull").getDeclaredConstructor(null).newInstance(null);
        } catch (Exception unused) {
        }
        FULL_SCHEMA = newInstanceSchemaLite;
        LITE_SCHEMA = new NewInstanceSchemaLite();
    }
}
