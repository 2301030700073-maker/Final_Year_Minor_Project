package kotlin.reflect.jvm.internal.impl.name;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class CallableId {
    public final Name callableName;
    public final FqName packageName;

    static {
        FqName.topLevel(SpecialNames.LOCAL);
    }

    public CallableId(FqName fqName, Name name) {
        fqName.getClass();
        this.packageName = fqName;
        this.callableName = name;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof CallableId)) {
            return false;
        }
        CallableId callableId = (CallableId) obj;
        return this.packageName.equals(callableId.packageName) && this.callableName.equals(callableId.callableName);
    }

    public final int hashCode() {
        return (this.callableName.hashCode() + (this.packageName.hashCode() * 961)) * 31;
    }

    public final String toString() {
        String replace = this.packageName.asString().replace('.', '/');
        replace.getClass();
        return replace + "/" + this.callableName;
    }
}
