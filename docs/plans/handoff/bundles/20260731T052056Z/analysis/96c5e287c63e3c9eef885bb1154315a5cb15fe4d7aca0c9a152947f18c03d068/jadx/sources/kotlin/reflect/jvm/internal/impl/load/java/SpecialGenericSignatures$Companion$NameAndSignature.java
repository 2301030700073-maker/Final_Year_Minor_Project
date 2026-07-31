package kotlin.reflect.jvm.internal.impl.load.java;

import androidx.compose.ui.Modifier;
import kotlin.reflect.jvm.internal.impl.name.Name;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class SpecialGenericSignatures$Companion$NameAndSignature {
    public final Name name;
    public final String signature;

    public SpecialGenericSignatures$Companion$NameAndSignature(Name name, String str) {
        this.name = name;
        this.signature = str;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SpecialGenericSignatures$Companion$NameAndSignature)) {
            return false;
        }
        SpecialGenericSignatures$Companion$NameAndSignature specialGenericSignatures$Companion$NameAndSignature = (SpecialGenericSignatures$Companion$NameAndSignature) obj;
        return this.name.equals(specialGenericSignatures$Companion$NameAndSignature.name) && this.signature.equals(specialGenericSignatures$Companion$NameAndSignature.signature);
    }

    public final int hashCode() {
        return this.signature.hashCode() + (this.name.hashCode() * 31);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("NameAndSignature(name=");
        sb.append(this.name);
        sb.append(", signature=");
        return Modifier.CC.m(sb, this.signature, ')');
    }
}
