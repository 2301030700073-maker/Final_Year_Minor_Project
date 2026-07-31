package org.mozilla.javascript.regexp;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public class SubString {
    int index;
    int length;
    String str;

    public SubString(String str) {
        this.str = str;
        this.index = 0;
        this.length = str.length();
    }

    public String toString() {
        String str = this.str;
        if (str == null) {
            return "";
        }
        int i = this.index;
        return str.substring(i, this.length + i);
    }

    public SubString() {
    }

    public SubString(String str, int i, int i2) {
        this.str = str;
        this.index = i;
        this.length = i2;
    }
}
