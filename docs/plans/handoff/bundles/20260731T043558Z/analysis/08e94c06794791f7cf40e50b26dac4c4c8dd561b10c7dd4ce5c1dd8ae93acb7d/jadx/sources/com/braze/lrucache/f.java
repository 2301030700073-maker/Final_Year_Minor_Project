package com.braze.lrucache;

import com.braze.support.BrazeLogger;
import java.io.BufferedWriter;
import java.io.EOFException;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStreamWriter;
import java.nio.charset.Charset;
import java.util.Arrays;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.regex.Pattern;

/* loaded from: classes2.dex */
public final class f {
    public static final Pattern o = Pattern.compile("[a-z0-9_-]{1,120}");
    public static final String p = BrazeLogger.getBrazeLogTag((Class<?>) f.class);
    public static final b q = new b();

    /* renamed from: a, reason: collision with root package name */
    public final File f103a;
    public final File b;
    public final File c;
    public final File d;
    public BufferedWriter i;
    public int k;
    public long h = 0;
    public final LinkedHashMap j = new LinkedHashMap(0, 0.75f, true);
    public long l = 0;
    public final ThreadPoolExecutor m = new ThreadPoolExecutor(0, 1, 60, TimeUnit.SECONDS, new LinkedBlockingQueue());
    public final a n = new a(this);
    public final int e = 1;
    public final int g = 1;
    public final long f = 52428800;

    public f(File file) {
        this.f103a = file;
        this.b = new File(file, "journal");
        this.c = new File(file, "journal.tmp");
        this.d = new File(file, "journal.bkp");
    }

    public static void a(f fVar, d dVar, boolean z) {
        synchronized (fVar) {
            g gVar = dVar.f101a;
            if (gVar.d != dVar) {
                throw new IllegalStateException();
            }
            if (z && !gVar.c) {
                for (int i = 0; i < fVar.g; i++) {
                    if (!dVar.b[i]) {
                        a(dVar.d, dVar, false);
                        throw new IllegalStateException("Newly created entry didn't create value for index " + i);
                    }
                    if (!gVar.a(i).exists()) {
                        a(dVar.d, dVar, false);
                        return;
                    }
                }
            }
            for (int i2 = 0; i2 < fVar.g; i2++) {
                File a2 = gVar.a(i2);
                if (z) {
                    if (a2.exists()) {
                        File file = new File(gVar.f, gVar.f104a + "." + i2);
                        a2.renameTo(file);
                        long j = gVar.b[i2];
                        long length = file.length();
                        gVar.b[i2] = length;
                        fVar.h = (fVar.h - j) + length;
                    }
                } else if (a2.exists() && !a2.delete()) {
                    throw new IOException();
                }
            }
            fVar.k++;
            gVar.d = null;
            if (gVar.c || z) {
                gVar.c = true;
                BufferedWriter bufferedWriter = fVar.i;
                StringBuilder append = new StringBuilder("CLEAN ").append(gVar.f104a);
                StringBuilder sb = new StringBuilder();
                for (long j2 : gVar.b) {
                    sb.append(' ').append(j2);
                }
                bufferedWriter.write(append.append(sb.toString()).append('\n').toString());
                if (z) {
                    fVar.l++;
                }
            } else {
                fVar.j.remove(gVar.f104a);
                fVar.i.write("REMOVE " + gVar.f104a + '\n');
            }
            fVar.i.flush();
            if (fVar.h > fVar.f || fVar.a()) {
                fVar.m.submit(fVar.n);
            }
        }
    }

    public final void b() {
        File file = this.c;
        if (file.exists() && !file.delete()) {
            throw new IOException();
        }
        Iterator it = this.j.values().iterator();
        while (it.hasNext()) {
            g gVar = (g) it.next();
            int i = 0;
            if (gVar.d == null) {
                while (i < this.g) {
                    this.h += gVar.b[i];
                    i++;
                }
            } else {
                gVar.d = null;
                while (i < this.g) {
                    File file2 = new File(gVar.f, gVar.f104a + "." + i);
                    if (file2.exists() && !file2.delete()) {
                        throw new IOException();
                    }
                    File a2 = gVar.a(i);
                    if (a2.exists() && !a2.delete()) {
                        throw new IOException();
                    }
                    i++;
                }
                it.remove();
            }
        }
    }

    public final void c() {
        i iVar = new i(new FileInputStream(this.b), j.f107a);
        try {
            String a2 = iVar.a();
            String a3 = iVar.a();
            String a4 = iVar.a();
            String a5 = iVar.a();
            String a6 = iVar.a();
            if (!"libcore.io.DiskLruCache".equals(a2) || !"1".equals(a3) || !Integer.toString(this.e).equals(a4) || !Integer.toString(this.g).equals(a5) || !"".equals(a6)) {
                throw new IOException("unexpected journal header: [" + a2 + ", " + a3 + ", " + a5 + ", " + a6 + "]");
            }
            int i = 0;
            while (true) {
                try {
                    c(iVar.a());
                    i++;
                } catch (EOFException unused) {
                    this.k = i - this.j.size();
                    if (iVar.e == -1) {
                        d();
                    } else {
                        this.i = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(this.b, true), j.f107a));
                    }
                    try {
                        iVar.close();
                        return;
                    } catch (RuntimeException e) {
                        throw e;
                    } catch (Exception unused2) {
                        return;
                    }
                }
            }
        } catch (Throwable th) {
            try {
                iVar.close();
            } catch (RuntimeException e2) {
                throw e2;
            } catch (Exception unused3) {
            }
            throw th;
        }
    }

    public final synchronized void d() {
        BufferedWriter bufferedWriter = this.i;
        if (bufferedWriter != null) {
            bufferedWriter.close();
        }
        BufferedWriter bufferedWriter2 = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(this.c), j.f107a));
        try {
            bufferedWriter2.write("libcore.io.DiskLruCache");
            bufferedWriter2.write("\n");
            bufferedWriter2.write("1");
            bufferedWriter2.write("\n");
            bufferedWriter2.write(Integer.toString(this.e));
            bufferedWriter2.write("\n");
            bufferedWriter2.write(Integer.toString(this.g));
            bufferedWriter2.write("\n");
            bufferedWriter2.write("\n");
            for (g gVar : this.j.values()) {
                if (gVar.d != null) {
                    bufferedWriter2.write("DIRTY " + gVar.f104a + '\n');
                } else {
                    StringBuilder append = new StringBuilder().append("CLEAN ").append(gVar.f104a);
                    StringBuilder sb = new StringBuilder();
                    for (long j : gVar.b) {
                        sb.append(' ').append(j);
                    }
                    bufferedWriter2.write(append.append(sb.toString()).append('\n').toString());
                }
            }
            bufferedWriter2.close();
            if (this.b.exists()) {
                File file = this.b;
                File file2 = this.d;
                if (file2.exists() && !file2.delete()) {
                    throw new IOException();
                }
                if (!file.renameTo(file2)) {
                    throw new IOException();
                }
            }
            if (!this.c.renameTo(this.b)) {
                throw new IOException();
            }
            this.d.delete();
            this.i = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(this.b, true), j.f107a));
        } finally {
        }
    }

    public final synchronized e b(String str) {
        InputStream inputStream;
        if (this.i != null) {
            if (o.matcher(str).matches()) {
                g gVar = (g) this.j.get(str);
                if (gVar == null) {
                    return null;
                }
                if (!gVar.c) {
                    return null;
                }
                InputStream[] inputStreamArr = new InputStream[this.g];
                for (int i = 0; i < this.g; i++) {
                    try {
                        inputStreamArr[i] = new FileInputStream(new File(gVar.f, gVar.f104a + "." + i));
                    } catch (FileNotFoundException unused) {
                        for (int i2 = 0; i2 < this.g && (inputStream = inputStreamArr[i2]) != null; i2++) {
                            Charset charset = j.f107a;
                            try {
                                inputStream.close();
                            } catch (RuntimeException e) {
                                throw e;
                            } catch (Exception unused2) {
                            }
                        }
                        return null;
                    }
                }
                this.k++;
                this.i.append((CharSequence) ("READ " + str + '\n'));
                if (a()) {
                    this.m.submit(this.n);
                }
                return new e(inputStreamArr);
            }
            throw new IllegalArgumentException(com.braze.a.a("keys must match regex [a-z0-9_-]{1,120}: \"", str, "\""));
        }
        throw new IllegalStateException("cache is closed");
    }

    public final void c(String str) {
        String substring;
        int indexOf = str.indexOf(32);
        if (indexOf != -1) {
            int i = indexOf + 1;
            int indexOf2 = str.indexOf(32, i);
            if (indexOf2 == -1) {
                substring = str.substring(i);
                if (indexOf == 6 && str.startsWith("REMOVE")) {
                    this.j.remove(substring);
                    return;
                }
            } else {
                substring = str.substring(i, indexOf2);
            }
            g gVar = (g) this.j.get(substring);
            if (gVar == null) {
                gVar = new g(substring, this.g, this.f103a);
                this.j.put(substring, gVar);
            }
            if (indexOf2 != -1 && indexOf == 5 && str.startsWith("CLEAN")) {
                String[] split = str.substring(indexOf2 + 1).split(" ");
                gVar.c = true;
                gVar.d = null;
                if (split.length == gVar.e) {
                    for (int i2 = 0; i2 < split.length; i2++) {
                        try {
                            gVar.b[i2] = Long.parseLong(split[i2]);
                        } catch (NumberFormatException unused) {
                            throw new IOException("unexpected journal line: " + Arrays.toString(split));
                        }
                    }
                    return;
                }
                throw new IOException("unexpected journal line: " + Arrays.toString(split));
            }
            if (indexOf2 == -1 && indexOf == 5 && str.startsWith("DIRTY")) {
                gVar.d = new d(this, gVar);
                return;
            } else {
                if (indexOf2 != -1 || indexOf != 4 || !str.startsWith("READ")) {
                    throw new IOException("unexpected journal line: ".concat(str));
                }
                return;
            }
        }
        throw new IOException("unexpected journal line: ".concat(str));
    }

    public final synchronized void d(String str) {
        if (this.i != null) {
            if (o.matcher(str).matches()) {
                g gVar = (g) this.j.get(str);
                if (gVar != null && gVar.d == null) {
                    for (int i = 0; i < this.g; i++) {
                        File file = new File(gVar.f, gVar.f104a + "." + i);
                        if (file.exists() && !file.delete()) {
                            throw new IOException("failed to delete " + file);
                        }
                        long j = this.h;
                        long[] jArr = gVar.b;
                        this.h = j - jArr[i];
                        jArr[i] = 0;
                    }
                    this.k++;
                    this.i.append((CharSequence) ("REMOVE " + str + '\n'));
                    this.j.remove(str);
                    if (a()) {
                        this.m.submit(this.n);
                    }
                    return;
                }
                return;
            }
            throw new IllegalArgumentException(com.braze.a.a("keys must match regex [a-z0-9_-]{1,120}: \"", str, "\""));
        }
        throw new IllegalStateException("cache is closed");
    }

    public final d a(String str) {
        synchronized (this) {
            if (this.i != null) {
                if (o.matcher(str).matches()) {
                    g gVar = (g) this.j.get(str);
                    if (gVar == null) {
                        gVar = new g(str, this.g, this.f103a);
                        this.j.put(str, gVar);
                    } else if (gVar.d != null) {
                        return null;
                    }
                    d dVar = new d(this, gVar);
                    gVar.d = dVar;
                    this.i.write("DIRTY " + str + '\n');
                    this.i.flush();
                    return dVar;
                }
                throw new IllegalArgumentException("keys must match regex [a-z0-9_-]{1,120}: \"" + str + "\"");
            }
            throw new IllegalStateException("cache is closed");
        }
    }

    public final boolean a() {
        int i = this.k;
        return i >= 2000 && i >= this.j.size();
    }
}
