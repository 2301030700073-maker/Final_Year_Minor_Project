package org.mozilla.classfile;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class FieldOrMethodRef {
    public final String className;
    public int hashCode = -1;
    public final String name;
    public final String type;

    public FieldOrMethodRef(String str, String str2, String str3) {
        this.className = str;
        this.name = str2;
        this.type = str3;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof FieldOrMethodRef)) {
            return false;
        }
        FieldOrMethodRef fieldOrMethodRef = (FieldOrMethodRef) obj;
        return this.className.equals(fieldOrMethodRef.className) && this.name.equals(fieldOrMethodRef.name) && this.type.equals(fieldOrMethodRef.type);
    }

    public final int hashCode() {
        if (this.hashCode == -1) {
            this.hashCode = (this.className.hashCode() ^ this.name.hashCode()) ^ this.type.hashCode();
        }
        return this.hashCode;
    }
}
