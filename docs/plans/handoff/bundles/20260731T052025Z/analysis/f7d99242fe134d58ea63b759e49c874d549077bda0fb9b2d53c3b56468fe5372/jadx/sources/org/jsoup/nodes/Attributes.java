package org.jsoup.nodes;

import androidx.datastore.preferences.protobuf.ByteString$LiteralByteString;
import j$.util.Objects;
import java.io.IOException;
import java.io.Serializable;
import java.util.Arrays;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import kotlin.text.Regex$$ExternalSyntheticBUOutline0;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.jsoup.SerializationException;
import org.jsoup.helper.Validate;
import org.jsoup.helper.ValidationException;
import org.jsoup.internal.StringUtil;
import org.jsoup.nodes.Document;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class Attributes implements Iterable, Cloneable {
    public int size = 0;
    public String[] keys = new String[3];
    public Object[] vals = new Object[3];

    public static String checkNotNull(Object obj) {
        return obj == null ? "" : (String) obj;
    }

    public static boolean isInternalKey(String str) {
        return str.length() > 1 && str.charAt(0) == '/';
    }

    public final void addAll(Attributes attributes) {
        int i = attributes.size;
        if (i == 0) {
            return;
        }
        checkCapacity(this.size + i);
        boolean z = this.size != 0;
        AnonymousClass1 anonymousClass1 = new AnonymousClass1(attributes);
        while (anonymousClass1.hasNext()) {
            Attribute attribute = (Attribute) anonymousClass1.next();
            String str = attribute.key;
            if (z) {
                put(str, checkNotNull(attribute.val));
                attribute.parent = this;
            } else {
                addObject(str, checkNotNull(attribute.val));
            }
        }
    }

    public final void addObject(String str, Serializable serializable) {
        checkCapacity(this.size + 1);
        String[] strArr = this.keys;
        int i = this.size;
        strArr[i] = str;
        this.vals[i] = serializable;
        this.size = i + 1;
    }

    public final void checkCapacity(int i) {
        Validate.isTrue(i >= this.size);
        String[] strArr = this.keys;
        int length = strArr.length;
        if (length >= i) {
            return;
        }
        int i2 = length >= 3 ? this.size * 2 : 3;
        if (i <= i2) {
            i = i2;
        }
        this.keys = (String[]) Arrays.copyOf(strArr, i);
        this.vals = Arrays.copyOf(this.vals, i);
    }

    public final Attributes clone() {
        try {
            Attributes attributes = (Attributes) super.clone();
            attributes.size = this.size;
            attributes.keys = (String[]) Arrays.copyOf(this.keys, this.size);
            attributes.vals = Arrays.copyOf(this.vals, this.size);
            return attributes;
        } catch (CloneNotSupportedException e) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m((Throwable) e);
            return null;
        }
    }

    public final boolean equals(Object obj) {
        int i;
        if (this == obj) {
            return true;
        }
        if (obj != null && Attributes.class == obj.getClass()) {
            Attributes attributes = (Attributes) obj;
            if (this.size == attributes.size) {
                for (0; i < this.size; i + 1) {
                    int indexOfKey = attributes.indexOfKey(this.keys[i]);
                    i = (indexOfKey != -1 && Objects.equals(this.vals[i], attributes.vals[indexOfKey])) ? i + 1 : 0;
                }
                return true;
            }
        }
        return false;
    }

    public final String get(String str) {
        int indexOfKey = indexOfKey(str);
        return indexOfKey == -1 ? "" : checkNotNull(this.vals[indexOfKey]);
    }

    public final String getIgnoreCase(String str) {
        int indexOfKeyIgnoreCase = indexOfKeyIgnoreCase(str);
        return indexOfKeyIgnoreCase == -1 ? "" : checkNotNull(this.vals[indexOfKeyIgnoreCase]);
    }

    public final int hashCode() {
        return Arrays.hashCode(this.vals) + (((this.size * 31) + Arrays.hashCode(this.keys)) * 31);
    }

    public final void html(Appendable appendable, Document.OutputSettings outputSettings) {
        String validKey;
        int i = this.size;
        for (int i2 = 0; i2 < i; i2++) {
            String str = this.keys[i2];
            if (!isInternalKey(str) && (validKey = Attribute.getValidKey(str, outputSettings.syntax)) != null) {
                Attribute.htmlNoValidate(validKey, (String) this.vals[i2], appendable.append(' '), outputSettings);
            }
        }
    }

    public final int indexOfKey(String str) {
        Validate.notNull(str);
        for (int i = 0; i < this.size; i++) {
            if (str.equals(this.keys[i])) {
                return i;
            }
        }
        return -1;
    }

    public final int indexOfKeyIgnoreCase(String str) {
        Validate.notNull(str);
        for (int i = 0; i < this.size; i++) {
            if (str.equalsIgnoreCase(this.keys[i])) {
                return i;
            }
        }
        return -1;
    }

    @Override // java.lang.Iterable
    public final Iterator iterator() {
        return new AnonymousClass1(this);
    }

    public final void put(String str, String str2) {
        Validate.notNull(str);
        int indexOfKey = indexOfKey(str);
        if (indexOfKey != -1) {
            this.vals[indexOfKey] = str2;
        } else {
            addObject(str, str2);
        }
    }

    public final void putIgnoreCase(String str, String str2) {
        int indexOfKeyIgnoreCase = indexOfKeyIgnoreCase(str);
        if (indexOfKeyIgnoreCase == -1) {
            addObject(str, str2);
            return;
        }
        this.vals[indexOfKeyIgnoreCase] = str2;
        if (this.keys[indexOfKeyIgnoreCase].equals(str)) {
            return;
        }
        this.keys[indexOfKeyIgnoreCase] = str;
    }

    public final void remove(int i) {
        int i2 = this.size;
        if (i >= i2) {
            throw new ValidationException("Must be false");
        }
        int i3 = (i2 - i) - 1;
        if (i3 > 0) {
            String[] strArr = this.keys;
            int i4 = i + 1;
            System.arraycopy(strArr, i4, strArr, i, i3);
            Object[] objArr = this.vals;
            System.arraycopy(objArr, i4, objArr, i, i3);
        }
        int i5 = this.size - 1;
        this.size = i5;
        this.keys[i5] = null;
        this.vals[i5] = null;
    }

    public final String toString() {
        StringBuilder borrowBuilder = StringUtil.borrowBuilder();
        try {
            html(borrowBuilder, new Document("").outputSettings);
            return StringUtil.releaseBuilder(borrowBuilder);
        } catch (IOException e) {
            throw new SerializationException(e);
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    /* renamed from: org.jsoup.nodes.Attributes$1, reason: invalid class name */
    public final class AnonymousClass1 implements Iterator {
        public final /* synthetic */ int $r8$classId;
        public int expectedSize;
        public int i;
        public final /* synthetic */ Iterable this$0;

        public AnonymousClass1(ByteString$LiteralByteString byteString$LiteralByteString) {
            this.$r8$classId = 1;
            this.this$0 = byteString$LiteralByteString;
            this.expectedSize = 0;
            this.i = byteString$LiteralByteString.size();
        }

        @Override // java.util.Iterator
        public final boolean hasNext() {
            switch (this.$r8$classId) {
                case 0:
                    Attributes attributes = (Attributes) this.this$0;
                    if (attributes.size != this.expectedSize) {
                        throw new ConcurrentModificationException("Use Iterator#remove() instead to remove attributes while iterating.");
                    }
                    while (true) {
                        int i = this.i;
                        if (i < attributes.size && Attributes.isInternalKey(attributes.keys[i])) {
                            this.i++;
                        }
                    }
                    return this.i < attributes.size;
                default:
                    return this.expectedSize < this.i;
            }
        }

        @Override // java.util.Iterator
        public final Object next() {
            int i = this.$r8$classId;
            Iterable iterable = this.this$0;
            switch (i) {
                case 0:
                    Attributes attributes = (Attributes) iterable;
                    int i2 = attributes.size;
                    if (i2 != this.expectedSize) {
                        throw new ConcurrentModificationException("Use Iterator#remove() instead to remove attributes while iterating.");
                    }
                    int i3 = this.i;
                    if (i3 >= i2) {
                        Regex$$ExternalSyntheticBUOutline0.m990m();
                        return null;
                    }
                    Attribute attribute = new Attribute(attributes.keys[i3], (String) attributes.vals[this.i], attributes);
                    this.i++;
                    return attribute;
                default:
                    int i4 = this.expectedSize;
                    if (i4 < this.i) {
                        this.expectedSize = i4 + 1;
                        return Byte.valueOf(((ByteString$LiteralByteString) iterable).internalByteAt(i4));
                    }
                    Regex$$ExternalSyntheticBUOutline0.m990m();
                    return null;
            }
        }

        @Override // java.util.Iterator
        public final void remove() {
            switch (this.$r8$classId) {
                case 0:
                    Attributes attributes = (Attributes) this.this$0;
                    int i = this.i - 1;
                    this.i = i;
                    attributes.remove(i);
                    this.expectedSize--;
                    return;
                default:
                    throw new UnsupportedOperationException();
            }
        }

        public AnonymousClass1(Attributes attributes) {
            this.$r8$classId = 0;
            this.this$0 = attributes;
            this.expectedSize = attributes.size;
            this.i = 0;
        }
    }
}
