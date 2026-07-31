package com.bumptech.glide.disklrucache;

import coil3.UriKt$$ExternalSyntheticBUOutline0;
import java.io.File;
import java.nio.charset.Charset;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class Util {
    public static final Charset US_ASCII = Charset.forName("US-ASCII");

    static {
        Charset.forName("UTF-8");
    }

    public static void deleteContents(File file) {
        File[] listFiles = file.listFiles();
        if (listFiles == null) {
            UriKt$$ExternalSyntheticBUOutline0.m(file, "not a readable directory: ");
            return;
        }
        for (File file2 : listFiles) {
            if (file2.isDirectory()) {
                deleteContents(file2);
            }
            if (!file2.delete()) {
                UriKt$$ExternalSyntheticBUOutline0.m(file2, "failed to delete file: ");
                return;
            }
        }
    }
}
