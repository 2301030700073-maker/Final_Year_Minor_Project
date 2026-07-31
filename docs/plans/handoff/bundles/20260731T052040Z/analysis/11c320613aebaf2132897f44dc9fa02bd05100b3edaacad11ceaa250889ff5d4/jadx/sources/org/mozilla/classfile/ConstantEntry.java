package org.mozilla.classfile;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class ConstantEntry {
    public int hashcode;
    public int intval;
    public String str1;
    public String str2;

    public final boolean equals(Object obj) {
        String str = this.str2;
        String str2 = this.str1;
        int i = this.intval;
        if (!(obj instanceof ConstantEntry)) {
            return false;
        }
        ConstantEntry constantEntry = (ConstantEntry) obj;
        return i == constantEntry.intval && str2.equals(constantEntry.str1) && str.equals(constantEntry.str2);
    }

    public final int hashCode() {
        return this.hashcode;
    }
}
