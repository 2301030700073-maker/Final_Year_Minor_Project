package kotlin.reflect.jvm.internal.impl.load.kotlin;

import androidx.compose.ui.Modifier;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class MemberSignature {
    public final String signature;

    public MemberSignature(String str) {
        this.signature = str;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof MemberSignature) && this.signature.equals(((MemberSignature) obj).signature);
    }

    public final int hashCode() {
        return this.signature.hashCode();
    }

    public final String toString() {
        return Modifier.CC.m(new StringBuilder("MemberSignature(signature="), this.signature, ')');
    }
}
