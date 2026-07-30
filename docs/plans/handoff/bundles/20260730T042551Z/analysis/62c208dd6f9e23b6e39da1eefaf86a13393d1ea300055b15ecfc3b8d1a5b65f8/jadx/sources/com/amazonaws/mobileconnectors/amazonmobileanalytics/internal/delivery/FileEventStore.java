package com.amazonaws.mobileconnectors.amazonmobileanalytics.internal.delivery;

import com.amazonaws.mobileconnectors.amazonmobileanalytics.internal.core.AnalyticsContext;
import com.amazonaws.mobileconnectors.amazonmobileanalytics.internal.core.DefaultAnalyticsContext;
import com.amazonaws.mobileconnectors.amazonmobileanalytics.internal.core.system.DefaultFileManager;
import com.amazonaws.mobileconnectors.amazonmobileanalytics.internal.delivery.EventStore;
import com.amazonaws.util.StringUtils;
import j$.util.Iterator;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.util.concurrent.locks.ReentrantLock;
import java.util.function.Consumer;

/* loaded from: classes.dex */
public class FileEventStore implements EventStore {

    /* renamed from: do, reason: not valid java name */
    public final AnalyticsContext f8861do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public File f8862do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final ReentrantLock f8863do = new ReentrantLock(true);

    /* renamed from: com.amazonaws.mobileconnectors.amazonmobileanalytics.internal.delivery.FileEventStore$1, reason: invalid class name */
    class AnonymousClass1 implements EventStore.EventIterator, Iterator {

        /* renamed from: for, reason: not valid java name */
        public int f8868for = 0;

        /* renamed from: break, reason: not valid java name */
        public String f8864break = null;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public BufferedReader f8866do = null;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public boolean f8867do = false;

        public AnonymousClass1() {
        }

        /* renamed from: do, reason: not valid java name */
        public final String m5090do() {
            FileEventStore fileEventStore = FileEventStore.this;
            fileEventStore.f8863do.lock();
            try {
                hasNext();
                return this.f8864break;
            } finally {
                fileEventStore.f8863do.unlock();
            }
        }

        /* renamed from: for, reason: not valid java name */
        public final boolean m5091for() {
            InputStreamReader inputStreamReader;
            if (this.f8866do != null) {
                return true;
            }
            if (this.f8867do) {
                return false;
            }
            try {
                FileEventStore fileEventStore = FileEventStore.this;
                DefaultFileManager defaultFileManager = ((DefaultAnalyticsContext) fileEventStore.f8861do).f8805do.f8837do;
                File file = fileEventStore.f8862do;
                defaultFileManager.getClass();
                inputStreamReader = new InputStreamReader(new FileInputStream(file), StringUtils.f9077do);
            } catch (FileNotFoundException unused) {
                inputStreamReader = null;
            }
            if (inputStreamReader == null) {
                return false;
            }
            this.f8866do = new BufferedReader(inputStreamReader);
            return true;
        }

        @Override // java.util.Iterator, j$.util.Iterator
        public final /* synthetic */ void forEachRemaining(Consumer consumer) {
            Iterator.CC.$default$forEachRemaining(this, consumer);
        }

        @Override // java.util.Iterator, j$.util.Iterator
        public final boolean hasNext() {
            FileEventStore fileEventStore = FileEventStore.this;
            ReentrantLock reentrantLock = fileEventStore.f8863do;
            ReentrantLock reentrantLock2 = fileEventStore.f8863do;
            reentrantLock.lock();
            try {
                boolean z = true;
                if (this.f8864break == null) {
                    if (!m5091for()) {
                        return false;
                    }
                    for (boolean z2 = false; !z2; z2 = true) {
                        try {
                            this.f8864break = this.f8866do.readLine();
                        } catch (IOException unused) {
                            this.f8864break = null;
                        }
                    }
                    if (this.f8864break == null) {
                        this.f8867do = true;
                        BufferedReader bufferedReader = this.f8866do;
                        if (bufferedReader != null) {
                            try {
                                bufferedReader.close();
                            } catch (IOException unused2) {
                            } catch (Throwable th) {
                                this.f8866do = null;
                                throw th;
                            }
                            this.f8866do = null;
                        }
                        z = false;
                    }
                }
                return z;
            } finally {
                reentrantLock2.unlock();
            }
        }

        /* renamed from: if, reason: not valid java name */
        public final void m5092if() {
            FileEventStore fileEventStore = FileEventStore.this;
            ReentrantLock reentrantLock = fileEventStore.f8863do;
            ReentrantLock reentrantLock2 = fileEventStore.f8863do;
            reentrantLock.lock();
            try {
                FileEventStore.m5085do(fileEventStore, this.f8868for);
                BufferedReader bufferedReader = this.f8866do;
                if (bufferedReader != null) {
                    try {
                        bufferedReader.close();
                    } catch (IOException unused) {
                    } catch (Throwable th) {
                        this.f8866do = null;
                        throw th;
                    }
                    this.f8866do = null;
                }
                this.f8868for = 0;
                this.f8864break = null;
            } finally {
                reentrantLock2.unlock();
            }
        }

        @Override // java.util.Iterator, j$.util.Iterator
        public final Object next() {
            ReentrantLock reentrantLock = FileEventStore.this.f8863do;
            reentrantLock.lock();
            try {
                String str = this.f8864break;
                if (str != null) {
                    this.f8868for++;
                    this.f8864break = null;
                } else {
                    if (!m5091for()) {
                        return null;
                    }
                    String str2 = null;
                    for (boolean z = false; !z; z = true) {
                        try {
                            str2 = this.f8866do.readLine();
                        } catch (IOException unused) {
                            str2 = null;
                        }
                    }
                    if (str2 != null) {
                        this.f8868for++;
                    } else {
                        this.f8867do = true;
                        BufferedReader bufferedReader = this.f8866do;
                        if (bufferedReader != null) {
                            try {
                                bufferedReader.close();
                            } catch (IOException unused2) {
                            } catch (Throwable th) {
                                this.f8866do = null;
                                throw th;
                            }
                            this.f8866do = null;
                        }
                    }
                    str = str2;
                }
                reentrantLock.unlock();
                return str;
            } finally {
                reentrantLock.unlock();
            }
        }

        @Override // java.util.Iterator, j$.util.Iterator
        public final void remove() {
            throw new UnsupportedOperationException("The remove() operation is not supported for this iterator");
        }
    }

    public FileEventStore(AnalyticsContext analyticsContext) {
        this.f8861do = analyticsContext;
        m5088new();
    }

    /* JADX WARN: Code restructure failed: missing block: B:51:0x00c5, code lost:
    
        if (r6 != null) goto L61;
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x00c7, code lost:
    
        r6.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x00bb, code lost:
    
        if (r6 != null) goto L61;
     */
    /* renamed from: do, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void m5085do(com.amazonaws.mobileconnectors.amazonmobileanalytics.internal.delivery.FileEventStore r10, int r11) {
        /*
            java.lang.String r0 = "eventsFile"
            java.lang.String r1 = "eventsFile.tmp"
            com.amazonaws.mobileconnectors.amazonmobileanalytics.internal.core.AnalyticsContext r2 = r10.f8861do
            com.amazonaws.mobileconnectors.amazonmobileanalytics.internal.core.DefaultAnalyticsContext r2 = (com.amazonaws.mobileconnectors.amazonmobileanalytics.internal.core.DefaultAnalyticsContext) r2
            com.amazonaws.mobileconnectors.amazonmobileanalytics.internal.core.system.AndroidSystem r2 = r2.f8805do
            com.amazonaws.mobileconnectors.amazonmobileanalytics.internal.core.system.DefaultFileManager r2 = r2.f8837do
            java.lang.String r3 = "events"
            java.io.File r3 = r2.m5072do(r3)
            java.io.File r4 = new java.io.File     // Catch: java.io.IOException -> Lda
            r4.<init>(r3, r1)     // Catch: java.io.IOException -> Lda
            boolean r5 = r4.exists()     // Catch: java.io.IOException -> Lda
            if (r5 == 0) goto L20
            r4.delete()     // Catch: java.io.IOException -> Lda
        L20:
            java.io.File r4 = r2.m5074if(r4)     // Catch: java.io.IOException -> Lda
            if (r4 == 0) goto Lda
            java.io.File r5 = r10.f8862do
            boolean r5 = r5.exists()
            if (r5 == 0) goto Lda
            boolean r5 = r4.exists()
            if (r5 == 0) goto Lda
            r5 = 0
            java.io.BufferedReader r6 = new java.io.BufferedReader     // Catch: java.lang.Throwable -> L8d java.io.IOException -> Lb4 java.io.FileNotFoundException -> Lbe
            java.io.FileReader r7 = new java.io.FileReader     // Catch: java.lang.Throwable -> L8d java.io.IOException -> Lb4 java.io.FileNotFoundException -> Lbe
            java.io.File r8 = r10.f8862do     // Catch: java.lang.Throwable -> L8d java.io.IOException -> Lb4 java.io.FileNotFoundException -> Lbe
            r7.<init>(r8)     // Catch: java.lang.Throwable -> L8d java.io.IOException -> Lb4 java.io.FileNotFoundException -> Lbe
            r6.<init>(r7)     // Catch: java.lang.Throwable -> L8d java.io.IOException -> Lb4 java.io.FileNotFoundException -> Lbe
            java.io.PrintWriter r7 = new java.io.PrintWriter     // Catch: java.lang.Throwable -> L87 java.io.IOException -> L89 java.io.FileNotFoundException -> L8b
            java.io.FileWriter r8 = new java.io.FileWriter     // Catch: java.lang.Throwable -> L87 java.io.IOException -> L89 java.io.FileNotFoundException -> L8b
            r9 = 1
            r8.<init>(r4, r9)     // Catch: java.lang.Throwable -> L87 java.io.IOException -> L89 java.io.FileNotFoundException -> L8b
            r7.<init>(r8)     // Catch: java.lang.Throwable -> L87 java.io.IOException -> L89 java.io.FileNotFoundException -> L8b
            r5 = 0
        L4d:
            java.lang.String r8 = r6.readLine()     // Catch: java.lang.Throwable -> L7e java.io.IOException -> L81 java.io.FileNotFoundException -> L84
            if (r8 == 0) goto L5d
            int r5 = r5 + r9
            if (r5 <= r11) goto L4d
            r7.println(r8)     // Catch: java.lang.Throwable -> L7e java.io.IOException -> L81 java.io.FileNotFoundException -> L84
            r7.flush()     // Catch: java.lang.Throwable -> L7e java.io.IOException -> L81 java.io.FileNotFoundException -> L84
            goto L4d
        L5d:
            r7.close()
            r6.close()     // Catch: java.io.IOException -> L64
            goto L65
        L64:
        L65:
            java.io.File r11 = r10.f8862do
            boolean r11 = r11.delete()
            if (r11 == 0) goto Lcc
            java.io.File r11 = r10.f8862do
            r4.renameTo(r11)
            java.io.File r11 = new java.io.File     // Catch: java.io.IOException -> Lcb
            r11.<init>(r3, r0)     // Catch: java.io.IOException -> Lcb
            java.io.File r11 = r2.m5074if(r11)     // Catch: java.io.IOException -> Lcb
            r10.f8862do = r11     // Catch: java.io.IOException -> Lcb
            goto Lcc
        L7e:
            r11 = move-exception
            r5 = r7
            goto L8f
        L81:
            r5 = r7
            goto Lb6
        L84:
            r5 = r7
            goto Lc0
        L87:
            r11 = move-exception
            goto L8f
        L89:
            goto Lb6
        L8b:
            goto Lc0
        L8d:
            r11 = move-exception
            r6 = r5
        L8f:
            if (r5 == 0) goto L94
            r5.close()
        L94:
            if (r6 == 0) goto L9b
            r6.close()     // Catch: java.io.IOException -> L9a
            goto L9b
        L9a:
        L9b:
            java.io.File r1 = r10.f8862do
            boolean r1 = r1.delete()
            if (r1 == 0) goto Lb3
            java.io.File r1 = r10.f8862do
            r4.renameTo(r1)
            java.io.File r1 = new java.io.File     // Catch: java.io.IOException -> Lb3
            r1.<init>(r3, r0)     // Catch: java.io.IOException -> Lb3
            java.io.File r0 = r2.m5074if(r1)     // Catch: java.io.IOException -> Lb3
            r10.f8862do = r0     // Catch: java.io.IOException -> Lb3
        Lb3:
            throw r11
        Lb4:
            r6 = r5
        Lb6:
            if (r5 == 0) goto Lbb
            r5.close()
        Lbb:
            if (r6 == 0) goto Lcc
            goto Lc7
        Lbe:
            r6 = r5
        Lc0:
            if (r5 == 0) goto Lc5
            r5.close()
        Lc5:
            if (r6 == 0) goto Lcc
        Lc7:
            r6.close()     // Catch: java.io.IOException -> Lcb
            goto Lcc
        Lcb:
        Lcc:
            java.io.File r10 = new java.io.File
            r10.<init>(r3, r1)
            boolean r11 = r10.exists()
            if (r11 == 0) goto Lda
            r10.delete()
        Lda:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.amazonaws.mobileconnectors.amazonmobileanalytics.internal.delivery.FileEventStore.m5085do(com.amazonaws.mobileconnectors.amazonmobileanalytics.internal.delivery.FileEventStore, int):void");
    }

    /* renamed from: for, reason: not valid java name */
    public static void m5086for(BufferedWriter bufferedWriter) {
        if (bufferedWriter != null) {
            try {
                bufferedWriter.close();
            } catch (IOException unused) {
            }
        }
    }

    /* renamed from: if, reason: not valid java name */
    public final boolean m5087if(String str) {
        ReentrantLock reentrantLock = this.f8863do;
        reentrantLock.lock();
        boolean z = false;
        BufferedWriter bufferedWriter = null;
        try {
            bufferedWriter = m5089try();
            if (this.f8862do.length() + str.length() <= ((DefaultAnalyticsContext) this.f8861do).f8803do.m5069if("maxStorageSize", 5242880L).longValue()) {
                bufferedWriter.write(str);
                bufferedWriter.newLine();
                bufferedWriter.flush();
                z = true;
            }
        } catch (IOException unused) {
        } catch (Throwable th) {
            m5086for(bufferedWriter);
            reentrantLock.unlock();
            throw th;
        }
        m5086for(bufferedWriter);
        reentrantLock.unlock();
        return z;
    }

    /* renamed from: new, reason: not valid java name */
    public final boolean m5088new() {
        File file = this.f8862do;
        if (file != null && file.exists()) {
            return true;
        }
        synchronized (this) {
            File file2 = this.f8862do;
            if (file2 != null && file2.exists()) {
                return true;
            }
            try {
                DefaultFileManager defaultFileManager = ((DefaultAnalyticsContext) this.f8861do).f8805do.f8837do;
                this.f8862do = defaultFileManager.m5074if(new File(defaultFileManager.m5072do("events"), "eventsFile"));
                return true;
            } catch (IOException unused) {
                return false;
            }
        }
    }

    /* renamed from: try, reason: not valid java name */
    public final BufferedWriter m5089try() {
        try {
            if (!m5088new()) {
                throw new EventStoreException();
            }
            DefaultFileManager defaultFileManager = ((DefaultAnalyticsContext) this.f8861do).f8805do.f8837do;
            File file = this.f8862do;
            defaultFileManager.getClass();
            return new BufferedWriter(new OutputStreamWriter(new FileOutputStream(file, true), StringUtils.f9077do));
        } catch (EventStoreException e) {
            throw e;
        } catch (FileNotFoundException e2) {
            throw new EventStoreException("Unable to open events file writer", e2);
        } catch (Exception e3) {
            throw new EventStoreException("Unexpected error while creating eventsFile writer", e3);
        }
    }
}
