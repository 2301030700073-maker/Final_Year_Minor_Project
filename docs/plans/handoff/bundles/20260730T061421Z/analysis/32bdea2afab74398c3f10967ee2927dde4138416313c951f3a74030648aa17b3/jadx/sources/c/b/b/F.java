package c.b.b;

import com.google.protobuf.GeneratedMessageLite$MethodToInvoke;
import com.google.protobuf.UninitializedMessageException;
import java.util.Objects;

/* loaded from: classes.dex */
public abstract class F extends AbstractC0441a {
    public final K defaultInstance;
    public K instance;
    public boolean isBuilt = false;

    public F(K k) {
        this.defaultInstance = k;
        this.instance = (K) k.dynamicMethod(GeneratedMessageLite$MethodToInvoke.NEW_MUTABLE_INSTANCE);
    }

    public final K build() {
        K buildPartial = buildPartial();
        if (buildPartial.isInitialized()) {
            return buildPartial;
        }
        throw new UninitializedMessageException();
    }

    public K buildPartial() {
        if (this.isBuilt) {
            return this.instance;
        }
        K k = this.instance;
        Objects.requireNonNull(k);
        C0487x0.f3224c.b(k).h(k);
        this.isBuilt = true;
        return this.instance;
    }

    public Object clone() {
        F f = (F) this.defaultInstance.dynamicMethod(GeneratedMessageLite$MethodToInvoke.NEW_BUILDER, null, null);
        f.mergeFrom(buildPartial());
        return f;
    }

    public void copyOnWrite() {
        if (this.isBuilt) {
            K k = (K) this.instance.dynamicMethod(GeneratedMessageLite$MethodToInvoke.NEW_MUTABLE_INSTANCE, null, null);
            C0487x0.f3224c.b(k).a(k, this.instance);
            this.instance = k;
            this.isBuilt = false;
        }
    }

    @Override // c.b.b.InterfaceC0472p0
    public InterfaceC0470o0 getDefaultInstanceForType() {
        return this.defaultInstance;
    }

    @Override // c.b.b.InterfaceC0472p0
    public final boolean isInitialized() {
        return K.isInitialized(this.instance, false);
    }

    public F mergeFrom(K k) {
        copyOnWrite();
        mergeFromInstance(this.instance, k);
        return this;
    }

    public final void mergeFromInstance(K k, K k2) {
        C0487x0.f3224c.b(k).a(k, k2);
    }
}
