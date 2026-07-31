package kotlin.reflect.jvm.internal.impl.metadata.jvm.deserialization;

import androidx.work.Operation$State;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class JvmMemberSignature$Field extends Operation$State {
    public final String desc;
    public final String name;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public JvmMemberSignature$Field(String str, String str2) {
        super(27);
        str.getClass();
        str2.getClass();
        this.name = str;
        this.desc = str2;
    }

    @Override // androidx.work.Operation$State
    public final String asString() {
        return this.name + ':' + this.desc;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof JvmMemberSignature$Field)) {
            return false;
        }
        JvmMemberSignature$Field jvmMemberSignature$Field = (JvmMemberSignature$Field) obj;
        return Intrinsics.areEqual(this.name, jvmMemberSignature$Field.name) && Intrinsics.areEqual(this.desc, jvmMemberSignature$Field.desc);
    }

    public final int hashCode() {
        return this.desc.hashCode() + (this.name.hashCode() * 31);
    }
}
