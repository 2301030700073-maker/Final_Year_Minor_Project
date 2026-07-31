package com.grack.nanojson;

import java.io.IOException;
import java.lang.reflect.Array;
import java.util.BitSet;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;

/* loaded from: classes.dex */
public final class JsonStringWriter {
    public final Appendable appendable;
    public final StringBuilder buffer;
    public boolean first;
    public boolean inObject;
    public int indent;
    public final String indentString;
    public int stateIndex;
    public final BitSet states;
    public static final char[] NULL = {'n', 'u', 'l', 'l'};
    public static final char[] TRUE = {'t', 'r', 'u', 'e'};
    public static final char[] FALSE = {'f', 'a', 'l', 's', 'e'};
    public static final char[] HEX = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};
    public static final char[] UNICODE_SMALL = {'\\', 'u', '0', '0'};
    public static final char[] UNICODE_LARGE = {'\\', 'u'};

    public JsonStringWriter(Appendable appendable, String str) {
        this.states = new BitSet();
        this.stateIndex = 0;
        this.first = true;
        this.indent = 0;
        this.appendable = appendable;
        this.indentString = str;
        this.buffer = new StringBuilder(10240);
    }

    public final JsonStringWriter array(Collection collection, String str) {
        if (str == null) {
            preValue();
            int i = this.stateIndex;
            this.stateIndex = i + 1;
            this.states.set(i, this.inObject);
            this.inObject = false;
            this.first = true;
            raw('[');
        } else {
            array(str);
        }
        Iterator it = collection.iterator();
        while (it.hasNext()) {
            value(it.next());
        }
        end();
        return this;
    }

    public String done() {
        if (this.stateIndex > 0) {
            throw new JsonWriterException("Unclosed JSON objects and/or arrays when closing writer");
        }
        if (this.first) {
            throw new JsonWriterException("Nothing was written to the JSON writer");
        }
        flush();
        return this.appendable.toString();
    }

    /* JADX WARN: Code restructure failed: missing block: B:39:0x008e, code lost:
    
        if (r2 == '<') goto L38;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void emitStringValue(java.lang.String r7) {
        /*
            r6 = this;
            r0 = 34
            r6.raw(r0)
            r1 = 0
            r2 = r1
        L7:
            int r3 = r7.length()
            if (r1 >= r3) goto L9f
            char r3 = r7.charAt(r1)
            r4 = 12
            if (r3 == r4) goto L97
            r4 = 13
            if (r3 == r4) goto L94
            r4 = 92
            if (r3 == r0) goto L90
            r5 = 47
            if (r3 == r5) goto L8c
            if (r3 == r4) goto L90
            switch(r3) {
                case 8: goto L89;
                case 9: goto L86;
                case 10: goto L80;
                default: goto L26;
            }
        L26:
            r2 = 32
            if (r3 < r2) goto L3f
            r2 = 128(0x80, float:1.8E-43)
            if (r3 < r2) goto L32
            r2 = 160(0xa0, float:2.24E-43)
            if (r3 < r2) goto L3f
        L32:
            r2 = 8192(0x2000, float:1.148E-41)
            if (r3 < r2) goto L3b
            r2 = 8448(0x2100, float:1.1838E-41)
            if (r3 >= r2) goto L3b
            goto L3f
        L3b:
            r6.raw(r3)
            goto L9a
        L3f:
            r2 = 256(0x100, float:3.59E-43)
            char[] r4 = com.grack.nanojson.JsonStringWriter.HEX
            if (r3 >= r2) goto L5b
            char[] r2 = com.grack.nanojson.JsonStringWriter.UNICODE_SMALL
            r6.raw(r2)
            int r2 = r3 >> 4
            r2 = r2 & 15
            char r2 = r4[r2]
            r6.raw(r2)
            r2 = r3 & 15
            char r2 = r4[r2]
        L57:
            r6.raw(r2)
            goto L9a
        L5b:
            char[] r2 = com.grack.nanojson.JsonStringWriter.UNICODE_LARGE
            r6.raw(r2)
            int r2 = r3 >> 12
            r2 = r2 & 15
            char r2 = r4[r2]
            r6.raw(r2)
            int r2 = r3 >> 8
            r2 = r2 & 15
            char r2 = r4[r2]
            r6.raw(r2)
            int r2 = r3 >> 4
            r2 = r2 & 15
            char r2 = r4[r2]
            r6.raw(r2)
            r2 = r3 & 15
            char r2 = r4[r2]
            goto L57
        L80:
            java.lang.String r2 = "\\n"
        L82:
            r6.raw(r2)
            goto L9a
        L86:
            java.lang.String r2 = "\\t"
            goto L82
        L89:
            java.lang.String r2 = "\\b"
            goto L82
        L8c:
            r5 = 60
            if (r2 != r5) goto L3b
        L90:
            r6.raw(r4)
            goto L3b
        L94:
            java.lang.String r2 = "\\r"
            goto L82
        L97:
            java.lang.String r2 = "\\f"
            goto L82
        L9a:
            int r1 = r1 + 1
            r2 = r3
            goto L7
        L9f:
            r6.raw(r0)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.grack.nanojson.JsonStringWriter.emitStringValue(java.lang.String):void");
    }

    public final void end() {
        char c;
        if (this.stateIndex == 0) {
            throw new JsonWriterException("Invalid call to end()");
        }
        if (this.inObject) {
            String str = this.indentString;
            if (str != null) {
                this.indent--;
                raw('\n');
                for (int i = 0; i < this.indent; i++) {
                    raw(str);
                }
            }
            c = '}';
        } else {
            c = ']';
        }
        raw(c);
        this.first = false;
        int i2 = this.stateIndex - 1;
        this.stateIndex = i2;
        this.inObject = this.states.get(i2);
    }

    public final void flush() {
        StringBuilder sb = this.buffer;
        try {
            this.appendable.append(sb.toString());
            sb.setLength(0);
        } catch (IOException e) {
            throw new JsonWriterException(e);
        }
    }

    public final JsonStringWriter object(String str, Map map) {
        if (str == null) {
            object();
        } else {
            object(str);
        }
        for (Map.Entry entry : map.entrySet()) {
            Object value = entry.getValue();
            if (!(entry.getKey() instanceof String)) {
                StringBuilder sb = new StringBuilder("Invalid key type for map: ");
                sb.append(entry.getKey() == null ? "null" : entry.getKey().getClass());
                throw new JsonWriterException(sb.toString());
            }
            String str2 = (String) entry.getKey();
            if (value == null) {
                preValue(str2);
                raw(NULL);
            } else if (value instanceof String) {
                value(str2, (String) value);
            } else if (value instanceof Number) {
                preValue(str2);
                raw(((Number) value).toString());
            } else if (value instanceof Boolean) {
                value(str2, ((Boolean) value).booleanValue());
            } else if (value instanceof Collection) {
                array((Collection) value, str2);
            } else if (value instanceof Map) {
                object(str2, (Map) value);
            } else {
                if (!value.getClass().isArray()) {
                    throw new JsonWriterException("Unable to handle type: " + value.getClass());
                }
                int length = Array.getLength(value);
                array(str2);
                for (int i = 0; i < length; i++) {
                    value(Array.get(value, i));
                }
                end();
            }
        }
        end();
        return this;
    }

    public final void pre() {
        if (this.first) {
            this.first = false;
            return;
        }
        if (this.stateIndex == 0) {
            throw new JsonWriterException("Invalid call to emit a value in a finished JSON writer");
        }
        raw(',');
        if (this.indentString == null || !this.inObject) {
            return;
        }
        raw('\n');
    }

    public final void preValue(String str) {
        if (!this.inObject) {
            throw new JsonWriterException("Invalid call to emit a key value while not writing an object");
        }
        pre();
        String str2 = this.indentString;
        if (str2 != null) {
            for (int i = 0; i < this.indent; i++) {
                raw(str2);
            }
        }
        emitStringValue(str);
        raw(':');
    }

    public final void raw(char c) {
        StringBuilder sb = this.buffer;
        sb.append(c);
        if (sb.length() > 10240) {
            flush();
        }
    }

    public final JsonStringWriter value(Object obj) {
        if (obj == null) {
            preValue();
            raw(NULL);
            return this;
        }
        if (obj instanceof String) {
            preValue();
            emitStringValue((String) obj);
            return this;
        }
        if (obj instanceof Number) {
            preValue();
            raw(((Number) obj).toString());
            return this;
        }
        if (obj instanceof Boolean) {
            boolean booleanValue = ((Boolean) obj).booleanValue();
            preValue();
            raw(booleanValue ? TRUE : FALSE);
            return this;
        }
        if (obj instanceof Collection) {
            array((Collection) obj, null);
            return this;
        }
        if (obj instanceof Map) {
            object(null, (Map) obj);
            return this;
        }
        if (!obj.getClass().isArray()) {
            throw new JsonWriterException("Unable to handle type: " + obj.getClass());
        }
        int length = Array.getLength(obj);
        preValue();
        int i = this.stateIndex;
        this.stateIndex = i + 1;
        this.states.set(i, this.inObject);
        this.inObject = false;
        this.first = true;
        raw('[');
        for (int i2 = 0; i2 < length; i2++) {
            value(Array.get(obj, i2));
        }
        end();
        return this;
    }

    public final void raw(String str) {
        StringBuilder sb = this.buffer;
        sb.append(str);
        if (sb.length() > 10240) {
            flush();
        }
    }

    public final void raw(char[] cArr) {
        StringBuilder sb = this.buffer;
        sb.append(cArr);
        if (sb.length() > 10240) {
            flush();
        }
    }

    public JsonStringWriter() {
        this(new StringBuilder(), null);
    }

    public final void preValue() {
        if (this.inObject) {
            throw new JsonWriterException("Invalid call to emit a keyless value while writing an object");
        }
        pre();
    }

    public final void array(String str) {
        preValue(str);
        int i = this.stateIndex;
        this.stateIndex = i + 1;
        this.states.set(i, this.inObject);
        this.inObject = false;
        this.first = true;
        raw('[');
    }

    public final void value(int i, String str) {
        preValue(str);
        raw(Integer.toString(i));
    }

    public final void value(String str, String str2) {
        if (str2 == null) {
            preValue(str);
            raw(NULL);
        } else {
            preValue(str);
            emitStringValue(str2);
        }
    }

    public final void value(String str, boolean z) {
        preValue(str);
        raw(z ? TRUE : FALSE);
    }

    public final void object() {
        preValue();
        int i = this.stateIndex;
        this.stateIndex = i + 1;
        this.states.set(i, this.inObject);
        this.inObject = true;
        this.first = true;
        raw('{');
        if (this.indentString != null) {
            this.indent++;
            raw('\n');
        }
    }

    public final void object(String str) {
        preValue(str);
        int i = this.stateIndex;
        this.stateIndex = i + 1;
        this.states.set(i, this.inObject);
        this.inObject = true;
        this.first = true;
        raw('{');
        if (this.indentString != null) {
            this.indent++;
            raw('\n');
        }
    }
}
