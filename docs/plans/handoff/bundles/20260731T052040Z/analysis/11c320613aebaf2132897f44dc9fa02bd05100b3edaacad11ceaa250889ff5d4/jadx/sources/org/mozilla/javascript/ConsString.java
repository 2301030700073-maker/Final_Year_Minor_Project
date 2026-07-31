package org.mozilla.javascript;

import java.io.Serializable;
import java.util.ArrayDeque;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public class ConsString implements CharSequence, Serializable {
    private static final long serialVersionUID = -8432806714471372570L;
    private boolean isFlat;
    private CharSequence left;
    private final int length;
    private CharSequence right;

    public ConsString(CharSequence charSequence, CharSequence charSequence2) {
        if (!(charSequence instanceof String) && !(charSequence instanceof ConsString)) {
            charSequence = charSequence.toString();
        }
        if (!(charSequence2 instanceof String) && !(charSequence2 instanceof ConsString)) {
            charSequence2 = charSequence2.toString();
        }
        this.left = charSequence;
        this.right = charSequence2;
        this.length = this.right.length() + charSequence.length();
        this.isFlat = false;
    }

    private synchronized String flatten() {
        try {
            if (!this.isFlat) {
                int i = this.length;
                char[] cArr = new char[i];
                ArrayDeque arrayDeque = new ArrayDeque();
                arrayDeque.addFirst(this.left);
                CharSequence charSequence = this.right;
                do {
                    if (charSequence instanceof ConsString) {
                        ConsString consString = (ConsString) charSequence;
                        boolean z = consString.isFlat;
                        CharSequence charSequence2 = consString.left;
                        if (z) {
                            charSequence = charSequence2;
                        } else {
                            arrayDeque.addFirst(charSequence2);
                            charSequence = consString.right;
                        }
                    }
                    String str = (String) charSequence;
                    i -= str.length();
                    str.getChars(0, str.length(), cArr, i);
                    charSequence = arrayDeque.isEmpty() ? null : (CharSequence) arrayDeque.removeFirst();
                } while (charSequence != null);
                this.left = new String(cArr);
                this.right = "";
                this.isFlat = true;
            }
        } catch (Throwable th) {
            throw th;
        }
        return (String) this.left;
    }

    private Object writeReplace() {
        return toString();
    }

    @Override // java.lang.CharSequence
    public char charAt(int i) {
        return (this.isFlat ? (String) this.left : flatten()).charAt(i);
    }

    @Override // java.lang.CharSequence
    public int length() {
        return this.length;
    }

    @Override // java.lang.CharSequence
    public CharSequence subSequence(int i, int i2) {
        return (this.isFlat ? (String) this.left : flatten()).substring(i, i2);
    }

    @Override // java.lang.CharSequence
    public String toString() {
        return this.isFlat ? (String) this.left : flatten();
    }
}
