package org.acra.util;

import java.io.BufferedReader;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.io.CloseableKt;
import kotlin.jvm.functions.Function1;
import kotlin.math.MathKt;
import kotlin.text.Charsets;
import kotlin.text.Regex;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class StreamReader {
    public static final Regex newline = new Regex("\\r?\\n");
    public Function1 filter;
    public final InputStream inputStream;
    public int limit;
    public int timeout;

    public StreamReader(InputStream inputStream) {
        inputStream.getClass();
        this.inputStream = inputStream;
        this.limit = -1;
        this.timeout = -1;
        this.filter = null;
    }

    public final String read() {
        String byteArrayOutputStream;
        int read;
        int i = this.timeout;
        InputStream inputStream = this.inputStream;
        if (i == -1) {
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream, Charsets.UTF_8), 8192);
            try {
                byteArrayOutputStream = MathKt.readText(bufferedReader);
                bufferedReader.close();
            } finally {
            }
        } else {
            long currentTimeMillis = System.currentTimeMillis() + this.timeout;
            try {
                ByteArrayOutputStream byteArrayOutputStream2 = new ByteArrayOutputStream();
                byte[] bArr = new byte[8192];
                while (true) {
                    int i2 = 0;
                    while (System.currentTimeMillis() < currentTimeMillis && i2 < 8192 && (read = inputStream.read(bArr, i2, Math.min(inputStream.available(), 8192 - i2))) != -1) {
                        i2 += read;
                    }
                    byteArrayOutputStream2.write(bArr, 0, i2);
                }
                byteArrayOutputStream = byteArrayOutputStream2.toString();
                CloseableKt.closeFinally(inputStream, null);
                byteArrayOutputStream.getClass();
            } finally {
            }
        }
        Function1 function1 = this.filter;
        Regex regex = newline;
        if (function1 == null) {
            return this.limit == -1 ? byteArrayOutputStream : CollectionsKt.joinToString$default(CollectionsKt.takeLast(this.limit, regex.split(byteArrayOutputStream)), "\n", null, null, null, 62);
        }
        List split = regex.split(byteArrayOutputStream);
        ArrayList arrayList = new ArrayList();
        for (Object obj : split) {
            if (((Boolean) function1.invoke(obj)).booleanValue()) {
                arrayList.add(obj);
            }
        }
        int i3 = this.limit;
        Collection collection = arrayList;
        if (i3 != -1) {
            collection = CollectionsKt.takeLast(i3, arrayList);
        }
        return CollectionsKt.joinToString$default(collection, "\n", null, null, null, 62);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public StreamReader(File file) {
        this(new FileInputStream(file));
        file.getClass();
    }
}
