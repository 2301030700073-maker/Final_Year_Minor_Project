package kotlin.jvm.internal;

import java.io.Serializable;
import kotlin.reflect.KCallable;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract class CallableReference implements KCallable, Serializable {
    private final boolean isTopLevel;
    private final String name;
    private final Class owner;
    protected final Object receiver;
    public transient KCallable reflected;
    private final String signature;

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class NoReceiver implements Serializable {
        public static final NoReceiver INSTANCE = new NoReceiver();
    }

    public CallableReference(Object obj, Class cls, String str, String str2, boolean z) {
        this.receiver = obj;
        this.owner = cls;
        this.name = str;
        this.signature = str2;
        this.isTopLevel = z;
    }

    public abstract KCallable computeReflected();

    public final String getName() {
        return this.name;
    }

    public final ClassBasedDeclarationContainer getOwner() {
        Class cls = this.owner;
        if (cls == null) {
            return null;
        }
        if (!this.isTopLevel) {
            return Reflection.getOrCreateKotlinClass(cls);
        }
        Reflection.factory.getClass();
        return new PackageReference(cls);
    }

    public final String getSignature() {
        return this.signature;
    }
}
