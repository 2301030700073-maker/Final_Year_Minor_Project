package com.facebook.internal;

import android.net.Uri;
import com.facebook.internal.FileLruCache;
import defpackage.C0173Do;
import defpackage.C2782fz;
import defpackage.C3548q7;
import defpackage.EnumC0658Zq;
import java.io.IOException;
import java.io.OutputStream;

/* loaded from: classes.dex */
public final class UrlRedirectCache {
    public static final UrlRedirectCache INSTANCE = new UrlRedirectCache();
    private static final String redirectContentTag;
    private static final String tag;
    private static FileLruCache urlRedirectFileLruCache;

    static {
        String m2544if = C2782fz.m6697do(UrlRedirectCache.class).m2544if();
        if (m2544if == null) {
            m2544if = "UrlRedirectCache";
        }
        tag = m2544if;
        redirectContentTag = C0173Do.m397goto("_Redirect", m2544if);
    }

    private UrlRedirectCache() {
    }

    public static final void cacheUriRedirect(Uri uri, Uri uri2) {
        if (uri == null || uri2 == null) {
            return;
        }
        OutputStream outputStream = null;
        try {
            try {
                FileLruCache cache = getCache();
                String uri3 = uri.toString();
                C0173Do.m399new(uri3, "fromUri.toString()");
                outputStream = cache.openPutStream(uri3, redirectContentTag);
                String uri4 = uri2.toString();
                C0173Do.m399new(uri4, "toUri.toString()");
                byte[] bytes = uri4.getBytes(C3548q7.f15043do);
                C0173Do.m399new(bytes, "(this as java.lang.String).getBytes(charset)");
                outputStream.write(bytes);
            } catch (IOException e) {
                Logger.Companion.log(EnumC0658Zq.CACHE, 4, tag, C0173Do.m397goto(e.getMessage(), "IOException when accessing cache: "));
            }
        } finally {
            Utility.closeQuietly(outputStream);
        }
    }

    public static final void clearCache() {
        try {
            getCache().clearCache();
        } catch (IOException e) {
            Logger.Companion.log(EnumC0658Zq.CACHE, 5, tag, C0173Do.m397goto(e.getMessage(), "clearCache failed "));
        }
    }

    public static final synchronized FileLruCache getCache() {
        FileLruCache fileLruCache;
        synchronized (UrlRedirectCache.class) {
            fileLruCache = urlRedirectFileLruCache;
            if (fileLruCache == null) {
                fileLruCache = new FileLruCache(tag, new FileLruCache.Limits());
            }
            urlRedirectFileLruCache = fileLruCache;
        }
        return fileLruCache;
    }

    /* JADX WARN: Code restructure failed: missing block: B:24:0x0059, code lost:
    
        if (defpackage.C0173Do.m394do(r4, r11) == false) goto L19;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x005b, code lost:
    
        r6 = r7;
        r7 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x005e, code lost:
    
        com.facebook.internal.Logger.Companion.log(r0, 6, com.facebook.internal.UrlRedirectCache.tag, "A loop detected in UrlRedirectCache");
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x0068, code lost:
    
        com.facebook.internal.Utility.closeQuietly(r7);
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x006b, code lost:
    
        return null;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final android.net.Uri getRedirectedUri(android.net.Uri r11) {
        /*
            Zq r0 = defpackage.EnumC0658Zq.CACHE
            r1 = 0
            if (r11 != 0) goto L6
            return r1
        L6:
            java.lang.String r11 = r11.toString()
            java.lang.String r2 = "uri.toString()"
            defpackage.C0173Do.m399new(r11, r2)
            java.util.HashSet r2 = new java.util.HashSet
            r2.<init>()
            r2.add(r11)
            com.facebook.internal.FileLruCache r3 = getCache()     // Catch: java.lang.Throwable -> L91 java.io.IOException -> L93
            java.lang.String r4 = com.facebook.internal.UrlRedirectCache.redirectContentTag     // Catch: java.lang.Throwable -> L91 java.io.IOException -> L93
            java.io.InputStream r4 = r3.get(r11, r4)     // Catch: java.lang.Throwable -> L91 java.io.IOException -> L93
            r5 = 0
            r6 = r1
            r7 = 0
        L24:
            if (r4 == 0) goto L83
            java.io.InputStreamReader r7 = new java.io.InputStreamReader     // Catch: java.io.IOException -> L81 java.lang.Throwable -> La9
            r7.<init>(r4)     // Catch: java.io.IOException -> L81 java.lang.Throwable -> La9
            r4 = 128(0x80, float:1.8E-43)
            char[] r6 = new char[r4]     // Catch: java.lang.Throwable -> L7b java.io.IOException -> L7e
            java.lang.StringBuilder r8 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L7b java.io.IOException -> L7e
            r8.<init>()     // Catch: java.lang.Throwable -> L7b java.io.IOException -> L7e
            int r9 = r7.read(r6, r5, r4)     // Catch: java.lang.Throwable -> L7b java.io.IOException -> L7e
        L38:
            if (r9 <= 0) goto L42
            r8.append(r6, r5, r9)     // Catch: java.lang.Throwable -> L7b java.io.IOException -> L7e
            int r9 = r7.read(r6, r5, r4)     // Catch: java.lang.Throwable -> L7b java.io.IOException -> L7e
            goto L38
        L42:
            com.facebook.internal.Utility.closeQuietly(r7)     // Catch: java.lang.Throwable -> L7b java.io.IOException -> L7e
            java.lang.String r4 = r8.toString()     // Catch: java.lang.Throwable -> L7b java.io.IOException -> L7e
            java.lang.String r6 = "urlBuilder.toString()"
            defpackage.C0173Do.m399new(r4, r6)     // Catch: java.lang.Throwable -> L7b java.io.IOException -> L7e
            boolean r6 = r2.contains(r4)     // Catch: java.lang.Throwable -> L7b java.io.IOException -> L7e
            r8 = 1
            if (r6 == 0) goto L6c
            boolean r2 = defpackage.C0173Do.m394do(r4, r11)     // Catch: java.lang.Throwable -> L7b java.io.IOException -> L7e
            if (r2 == 0) goto L5e
            r6 = r7
            r7 = 1
            goto L83
        L5e:
            com.facebook.internal.Logger$Companion r11 = com.facebook.internal.Logger.Companion     // Catch: java.lang.Throwable -> L7b java.io.IOException -> L7e
            java.lang.String r2 = com.facebook.internal.UrlRedirectCache.tag     // Catch: java.lang.Throwable -> L7b java.io.IOException -> L7e
            java.lang.String r3 = "A loop detected in UrlRedirectCache"
            r4 = 6
            r11.log(r0, r4, r2, r3)     // Catch: java.lang.Throwable -> L7b java.io.IOException -> L7e
            com.facebook.internal.Utility.closeQuietly(r7)
            return r1
        L6c:
            r2.add(r4)     // Catch: java.lang.Throwable -> L7b java.io.IOException -> L7e
            java.lang.String r11 = com.facebook.internal.UrlRedirectCache.redirectContentTag     // Catch: java.lang.Throwable -> L7b java.io.IOException -> L7e
            java.io.InputStream r11 = r3.get(r4, r11)     // Catch: java.lang.Throwable -> L7b java.io.IOException -> L7e
            r6 = r7
            r7 = 1
            r10 = r4
            r4 = r11
            r11 = r10
            goto L24
        L7b:
            r11 = move-exception
            r1 = r7
            goto Lab
        L7e:
            r11 = move-exception
            r6 = r7
            goto L95
        L81:
            r11 = move-exception
            goto L95
        L83:
            if (r7 == 0) goto L8d
            android.net.Uri r11 = android.net.Uri.parse(r11)     // Catch: java.io.IOException -> L81 java.lang.Throwable -> La9
            com.facebook.internal.Utility.closeQuietly(r6)
            return r11
        L8d:
            com.facebook.internal.Utility.closeQuietly(r6)
            goto La8
        L91:
            r11 = move-exception
            goto Lab
        L93:
            r11 = move-exception
            r6 = r1
        L95:
            com.facebook.internal.Logger$Companion r2 = com.facebook.internal.Logger.Companion     // Catch: java.lang.Throwable -> La9
            java.lang.String r3 = com.facebook.internal.UrlRedirectCache.tag     // Catch: java.lang.Throwable -> La9
            java.lang.String r4 = "IOException when accessing cache: "
            java.lang.String r11 = r11.getMessage()     // Catch: java.lang.Throwable -> La9
            java.lang.String r11 = defpackage.C0173Do.m397goto(r11, r4)     // Catch: java.lang.Throwable -> La9
            r4 = 4
            r2.log(r0, r4, r3, r11)     // Catch: java.lang.Throwable -> La9
            goto L8d
        La8:
            return r1
        La9:
            r11 = move-exception
            r1 = r6
        Lab:
            com.facebook.internal.Utility.closeQuietly(r1)
            throw r11
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.internal.UrlRedirectCache.getRedirectedUri(android.net.Uri):android.net.Uri");
    }
}
