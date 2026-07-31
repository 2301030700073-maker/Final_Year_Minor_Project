package org.schabi.newpipe.settings.export;

import j$.io.DesugarInputStream;
import j$.io.InputStreamRetargetInterface;
import java.io.ObjectInputStream;
import java.io.ObjectStreamClass;
import java.io.OutputStream;
import java.util.Set;
import kotlin.collections.ArraysKt;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class PreferencesObjectInputStream extends ObjectInputStream implements InputStreamRetargetInterface {
    public static final Companion Companion = new Companion();
    public static final Set CLASS_WHITELIST = ArraysKt.toSet(new String[]{"java.lang.Boolean", "java.lang.Byte", "java.lang.Character", "java.lang.Short", "java.lang.Integer", "java.lang.Long", "java.lang.Float", "java.lang.Double", "java.lang.Void", "java.util.HashMap", "java.util.HashSet"});

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class Companion {
    }

    @Override // java.io.ObjectInputStream
    public final Class resolveClass(ObjectStreamClass objectStreamClass) {
        objectStreamClass.getClass();
        if (CLASS_WHITELIST.contains(objectStreamClass.getName())) {
            Class<?> resolveClass = super.resolveClass(objectStreamClass);
            resolveClass.getClass();
            return resolveClass;
        }
        throw new ClassNotFoundException("Class not allowed: " + objectStreamClass + ".name");
    }

    @Override // java.io.InputStream, j$.io.InputStreamRetargetInterface
    public /* synthetic */ long transferTo(OutputStream outputStream) {
        return DesugarInputStream.transferTo(this, outputStream);
    }
}
