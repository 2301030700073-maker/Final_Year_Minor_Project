package androidx.appcompat.app;

import android.content.Context;
import android.util.Xml;
import com.google.android.gms.ads.RequestConfiguration;
import defpackage.RunnableC2786g2;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayDeque;
import java.util.concurrent.Executor;
import org.xmlpull.v1.XmlSerializer;

/* renamed from: androidx.appcompat.app.new, reason: invalid class name */
/* loaded from: classes.dex */
public final class Cnew {

    /* renamed from: androidx.appcompat.app.new$do, reason: invalid class name */
    public static class Cdo implements Executor {

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public Runnable f5352do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final Executor f5354do;

        /* renamed from: do, reason: not valid java name */
        public final Object f5351do = new Object();

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final ArrayDeque f5353do = new ArrayDeque();

        public Cdo(Cif cif) {
            this.f5354do = cif;
        }

        /* renamed from: do, reason: not valid java name */
        public final void m3302do() {
            synchronized (this.f5351do) {
                Runnable runnable = (Runnable) this.f5353do.poll();
                this.f5352do = runnable;
                if (runnable != null) {
                    this.f5354do.execute(runnable);
                }
            }
        }

        @Override // java.util.concurrent.Executor
        public final void execute(Runnable runnable) {
            synchronized (this.f5351do) {
                this.f5353do.add(new RunnableC2786g2(0, this, runnable));
                if (this.f5352do == null) {
                    m3302do();
                }
            }
        }
    }

    /* renamed from: androidx.appcompat.app.new$if, reason: invalid class name */
    public static class Cif implements Executor {
        @Override // java.util.concurrent.Executor
        public final void execute(Runnable runnable) {
            new Thread(runnable).start();
        }
    }

    /* renamed from: do, reason: not valid java name */
    public static void m3300do(Context context, String str) {
        if (str.equals(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED)) {
            context.deleteFile("androidx.appcompat.app.AppCompatDelegate.application_locales_record_file");
            return;
        }
        try {
            FileOutputStream openFileOutput = context.openFileOutput("androidx.appcompat.app.AppCompatDelegate.application_locales_record_file", 0);
            XmlSerializer newSerializer = Xml.newSerializer();
            try {
                newSerializer.setOutput(openFileOutput, null);
                newSerializer.startDocument("UTF-8", Boolean.TRUE);
                newSerializer.startTag(null, "locales");
                newSerializer.attribute(null, "application_locales", str);
                newSerializer.endTag(null, "locales");
                newSerializer.endDocument();
                if (openFileOutput == null) {
                    return;
                }
            } catch (Exception unused) {
                if (openFileOutput == null) {
                    return;
                }
            } catch (Throwable th) {
                if (openFileOutput != null) {
                    try {
                        openFileOutput.close();
                    } catch (IOException unused2) {
                    }
                }
                throw th;
            }
            try {
                openFileOutput.close();
            } catch (IOException unused3) {
            }
        } catch (FileNotFoundException unused4) {
            String.format("Storing App Locales : FileNotFoundException: Cannot open file %s for writing ", "androidx.appcompat.app.AppCompatDelegate.application_locales_record_file");
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x003e, code lost:
    
        if (r2 != null) goto L35;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0040, code lost:
    
        r2.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x0037, code lost:
    
        r1 = r3.getAttributeValue(null, "application_locales");
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x004d, code lost:
    
        if (r2 != null) goto L35;
     */
    /* renamed from: if, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String m3301if(android.content.Context r8) {
        /*
            java.lang.String r0 = "androidx.appcompat.app.AppCompatDelegate.application_locales_record_file"
            java.lang.String r1 = ""
            java.io.FileInputStream r2 = r8.openFileInput(r0)     // Catch: java.io.FileNotFoundException -> L5a
            org.xmlpull.v1.XmlPullParser r3 = android.util.Xml.newPullParser()     // Catch: java.lang.Throwable -> L46 java.lang.Throwable -> L4d
            java.lang.String r4 = "UTF-8"
            r3.setInput(r2, r4)     // Catch: java.lang.Throwable -> L46 java.lang.Throwable -> L4d
            int r4 = r3.getDepth()     // Catch: java.lang.Throwable -> L46 java.lang.Throwable -> L4d
        L15:
            int r5 = r3.next()     // Catch: java.lang.Throwable -> L46 java.lang.Throwable -> L4d
            r6 = 1
            if (r5 == r6) goto L3e
            r6 = 3
            if (r5 != r6) goto L25
            int r7 = r3.getDepth()     // Catch: java.lang.Throwable -> L46 java.lang.Throwable -> L4d
            if (r7 <= r4) goto L3e
        L25:
            if (r5 == r6) goto L15
            r6 = 4
            if (r5 != r6) goto L2b
            goto L15
        L2b:
            java.lang.String r5 = r3.getName()     // Catch: java.lang.Throwable -> L46 java.lang.Throwable -> L4d
            java.lang.String r6 = "locales"
            boolean r5 = r5.equals(r6)     // Catch: java.lang.Throwable -> L46 java.lang.Throwable -> L4d
            if (r5 == 0) goto L15
            java.lang.String r4 = "application_locales"
            r5 = 0
            java.lang.String r1 = r3.getAttributeValue(r5, r4)     // Catch: java.lang.Throwable -> L46 java.lang.Throwable -> L4d
        L3e:
            if (r2 == 0) goto L50
        L40:
            r2.close()     // Catch: java.io.IOException -> L44
            goto L50
        L44:
            goto L50
        L46:
            r8 = move-exception
            if (r2 == 0) goto L4c
            r2.close()     // Catch: java.io.IOException -> L4c
        L4c:
            throw r8
        L4d:
            if (r2 == 0) goto L50
            goto L40
        L50:
            boolean r2 = r1.isEmpty()
            if (r2 != 0) goto L57
            goto L5a
        L57:
            r8.deleteFile(r0)
        L5a:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.app.Cnew.m3301if(android.content.Context):java.lang.String");
    }
}
