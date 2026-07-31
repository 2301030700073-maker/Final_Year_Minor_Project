package com.google.protobuf;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract class ExtensionSchemas {
    public static final ExtensionSchemaLite FULL_SCHEMA;
    public static final ExtensionSchemaLite LITE_SCHEMA = new ExtensionSchemaLite();

    static {
        Class cls = Android.MEMORY_CLASS;
        ExtensionSchemaLite extensionSchemaLite = null;
        try {
            extensionSchemaLite = (ExtensionSchemaLite) Class.forName("com.google.protobuf.ExtensionSchemaFull").getDeclaredConstructor(null).newInstance(null);
        } catch (Exception unused) {
        }
        FULL_SCHEMA = extensionSchemaLite;
    }
}
