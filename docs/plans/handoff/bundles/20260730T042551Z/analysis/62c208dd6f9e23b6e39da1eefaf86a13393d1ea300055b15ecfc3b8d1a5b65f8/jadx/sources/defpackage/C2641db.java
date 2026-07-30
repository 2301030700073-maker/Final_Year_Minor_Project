package defpackage;

import java.io.File;
import java.io.IOException;
import java.nio.channels.FileChannel;
import java.util.HashMap;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;

/* renamed from: db, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C2641db {

    /* renamed from: do, reason: not valid java name */
    public static final HashMap f12505do = new HashMap();

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final File f12506do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public FileChannel f12507do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Lock f12508do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final boolean f12509do;

    public C2641db(String str, File file, boolean z) {
        Lock lock;
        File file2 = new File(file, Cpublic.m7816case(str, ".lck"));
        this.f12506do = file2;
        String absolutePath = file2.getAbsolutePath();
        HashMap hashMap = f12505do;
        synchronized (hashMap) {
            lock = (Lock) hashMap.get(absolutePath);
            if (lock == null) {
                lock = new ReentrantLock();
                hashMap.put(absolutePath, lock);
            }
        }
        this.f12508do = lock;
        this.f12509do = z;
    }

    /* renamed from: do, reason: not valid java name */
    public final void m6462do() {
        FileChannel fileChannel = this.f12507do;
        if (fileChannel != null) {
            try {
                fileChannel.close();
            } catch (IOException unused) {
            }
        }
        this.f12508do.unlock();
    }
}
