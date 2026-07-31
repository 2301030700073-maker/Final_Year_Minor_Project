package com.fasterxml.jackson.core.util;

import com.fasterxml.jackson.core.json.WriterBasedJsonGenerator;
import com.fasterxml.jackson.databind.ObjectWriter;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class DefaultIndenter extends ObjectWriter {
    public static final DefaultIndenter SYSTEM_LINEFEED_INSTANCE;
    public final String eol;
    public final int charsPerLevel = 2;
    public final char[] indents = new char[32];

    static {
        String str;
        try {
            str = System.getProperty("line.separator");
        } catch (Throwable unused) {
            str = "\n";
        }
        SYSTEM_LINEFEED_INSTANCE = new DefaultIndenter(str);
    }

    public DefaultIndenter(String str) {
        int i = 0;
        for (int i2 = 0; i2 < 16; i2++) {
            "  ".getChars(0, 2, this.indents, i);
            i += 2;
        }
        this.eol = str;
    }

    @Override // com.fasterxml.jackson.databind.ObjectWriter
    public final void writeIndentation(WriterBasedJsonGenerator writerBasedJsonGenerator, int i) {
        writerBasedJsonGenerator.writeRaw(this.eol);
        if (i <= 0) {
            return;
        }
        int i2 = i * this.charsPerLevel;
        while (true) {
            char[] cArr = this.indents;
            if (i2 <= cArr.length) {
                writerBasedJsonGenerator.writeRaw(cArr, i2);
                return;
            } else {
                writerBasedJsonGenerator.writeRaw(cArr, cArr.length);
                i2 -= cArr.length;
            }
        }
    }
}
