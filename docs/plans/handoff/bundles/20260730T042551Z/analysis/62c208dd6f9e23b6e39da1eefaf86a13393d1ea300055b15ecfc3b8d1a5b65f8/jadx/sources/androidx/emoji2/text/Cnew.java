package androidx.emoji2.text;

import android.os.Handler;
import android.os.Looper;
import androidx.emoji2.text.EmojiCompatInitializer;
import defpackage.I2;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.concurrent.locks.ReentrantReadWriteLock;

/* renamed from: androidx.emoji2.text.new, reason: invalid class name */
/* loaded from: classes.dex */
public final class Cnew {

    /* renamed from: do, reason: not valid java name */
    public static volatile Cnew f6776do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static final Object f6777do = new Object();

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public volatile int f6778do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final I2 f6779do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Handler f6780do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final androidx.emoji2.text.Cif f6781do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Cdo f6782do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Celse f6783do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final ReentrantReadWriteLock f6784do;

    /* renamed from: if, reason: not valid java name */
    public final int f6785if;

    /* renamed from: androidx.emoji2.text.new$case, reason: invalid class name */
    public static class Ccase implements Runnable {

        /* renamed from: do, reason: not valid java name */
        public final ArrayList f6786do;

        /* renamed from: for, reason: not valid java name */
        public final int f6787for;

        public Ccase(List list, int i, Throwable th) {
            if (list == null) {
                throw new NullPointerException("initCallbacks cannot be null");
            }
            this.f6786do = new ArrayList(list);
            this.f6787for = i;
        }

        @Override // java.lang.Runnable
        public final void run() {
            ArrayList arrayList = this.f6786do;
            int size = arrayList.size();
            int i = 0;
            if (this.f6787for != 1) {
                while (i < size) {
                    ((Ctry) arrayList.get(i)).mo3474do();
                    i++;
                }
            } else {
                while (i < size) {
                    ((Ctry) arrayList.get(i)).mo629if();
                    i++;
                }
            }
        }
    }

    /* renamed from: androidx.emoji2.text.new$do, reason: invalid class name */
    public static final class Cdo extends Cif {

        /* renamed from: do, reason: not valid java name */
        public volatile androidx.emoji2.text.Ccase f6788do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public volatile androidx.emoji2.text.Cgoto f6789do;

        public Cdo(Cnew cnew) {
            super(cnew);
        }
    }

    /* renamed from: androidx.emoji2.text.new$else, reason: invalid class name */
    public interface Celse {
        /* renamed from: do */
        void mo4090do(Cgoto cgoto);
    }

    /* renamed from: androidx.emoji2.text.new$for, reason: invalid class name */
    public static abstract class Cfor {

        /* renamed from: do, reason: not valid java name */
        public int f6790do = 0;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final androidx.emoji2.text.Cif f6791do = new androidx.emoji2.text.Cif();

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final Celse f6792do;

        public Cfor(Celse celse) {
            this.f6792do = celse;
        }
    }

    /* renamed from: androidx.emoji2.text.new$goto, reason: invalid class name */
    public static abstract class Cgoto {
        /* renamed from: do */
        public abstract void mo4101do(Throwable th);

        /* renamed from: if */
        public abstract void mo4102if(androidx.emoji2.text.Cgoto cgoto);
    }

    /* renamed from: androidx.emoji2.text.new$if, reason: invalid class name */
    public static class Cif {

        /* renamed from: do, reason: not valid java name */
        public final Cnew f6793do;

        public Cif(Cnew cnew) {
            this.f6793do = cnew;
        }
    }

    /* renamed from: androidx.emoji2.text.new$new, reason: invalid class name and collision with other inner class name */
    public interface InterfaceC0037new {
    }

    /* renamed from: androidx.emoji2.text.new$this, reason: invalid class name */
    public static class Cthis {
    }

    /* renamed from: androidx.emoji2.text.new$try, reason: invalid class name */
    public static abstract class Ctry {
        /* renamed from: do */
        public void mo3474do() {
        }

        /* renamed from: if */
        public void mo629if() {
        }
    }

    public Cnew(EmojiCompatInitializer.Cdo cdo) {
        ReentrantReadWriteLock reentrantReadWriteLock = new ReentrantReadWriteLock();
        this.f6784do = reentrantReadWriteLock;
        this.f6778do = 3;
        Celse celse = ((Cfor) cdo).f6792do;
        this.f6783do = celse;
        int i = ((Cfor) cdo).f6790do;
        this.f6785if = i;
        this.f6781do = ((Cfor) cdo).f6791do;
        this.f6780do = new Handler(Looper.getMainLooper());
        this.f6779do = new I2();
        Cdo cdo2 = new Cdo(this);
        this.f6782do = cdo2;
        reentrantReadWriteLock.writeLock().lock();
        if (i == 0) {
            try {
                this.f6778do = 0;
            } catch (Throwable th) {
                this.f6784do.writeLock().unlock();
                throw th;
            }
        }
        reentrantReadWriteLock.writeLock().unlock();
        if (m4108if() == 0) {
            try {
                celse.mo4090do(new androidx.emoji2.text.Cfor(cdo2));
            } catch (Throwable th2) {
                m4109new(th2);
            }
        }
    }

    /* renamed from: do, reason: not valid java name */
    public static Cnew m4104do() {
        Cnew cnew;
        synchronized (f6777do) {
            cnew = f6776do;
            if (!(cnew != null)) {
                throw new IllegalStateException("EmojiCompat is not initialized.\n\nYou must initialize EmojiCompat prior to referencing the EmojiCompat instance.\n\nThe most likely cause of this error is disabling the EmojiCompatInitializer\neither explicitly in AndroidManifest.xml, or by including\nandroidx.emoji2:emoji2-bundled.\n\nAutomatic initialization is typically performed by EmojiCompatInitializer. If\nyou are not expecting to initialize EmojiCompat manually in your application,\nplease check to ensure it has not been removed from your APK's manifest. You can\ndo this in Android Studio using Build > Analyze APK.\n\nIn the APK Analyzer, ensure that the startup entry for\nEmojiCompatInitializer and InitializationProvider is present in\n AndroidManifest.xml. If it is missing or contains tools:node=\"remove\", and you\nintend to use automatic configuration, verify:\n\n  1. Your application does not include emoji2-bundled\n  2. All modules do not contain an exclusion manifest rule for\n     EmojiCompatInitializer or InitializationProvider. For more information\n     about manifest exclusions see the documentation for the androidx startup\n     library.\n\nIf you intend to use emoji2-bundled, please call EmojiCompat.init. You can\nlearn more in the documentation for BundledEmojiCompatConfig.\n\nIf you intended to perform manual configuration, it is recommended that you call\nEmojiCompat.init immediately on application startup.\n\nIf you still cannot resolve this issue, please open a bug with your specific\nconfiguration to help improve error message.");
            }
        }
        return cnew;
    }

    /* JADX WARN: Code restructure failed: missing block: B:70:0x00e1, code lost:
    
        if (r3.m4092if(r15, r6, r13, r5.f6755for.f6772do) != false) goto L125;
     */
    /* JADX WARN: Code restructure failed: missing block: B:71:0x00e3, code lost:
    
        if (r0 != null) goto L72;
     */
    /* JADX WARN: Code restructure failed: missing block: B:72:0x00e5, code lost:
    
        r0 = new defpackage.C3618rJ((android.text.Spannable) new android.text.SpannableString(r15));
     */
    /* JADX WARN: Code restructure failed: missing block: B:73:0x00ef, code lost:
    
        r10 = r5.f6755for.f6772do;
        r3.f6751do.getClass();
        r0.setSpan(new defpackage.UI(r10), r6, r13, 33);
        r7 = r7 + 1;
     */
    /* JADX WARN: Removed duplicated region for block: B:100:0x0145 A[Catch: all -> 0x0175, TryCatch #0 {all -> 0x0175, blocks: (B:121:0x005a, B:124:0x005f, B:126:0x0063, B:128:0x0070, B:29:0x0080, B:31:0x0088, B:33:0x008b, B:35:0x008f, B:37:0x009b, B:39:0x009e, B:43:0x00ab, B:46:0x00b3, B:52:0x00cd, B:69:0x00d9, B:72:0x00e5, B:73:0x00ef, B:56:0x0104, B:59:0x010b, B:78:0x0110, B:81:0x011b, B:86:0x0120, B:88:0x0124, B:90:0x012a, B:92:0x012e, B:97:0x0139, B:100:0x0145, B:101:0x014b, B:103:0x015e, B:27:0x0076), top: B:120:0x005a }] */
    /* JADX WARN: Removed duplicated region for block: B:103:0x015e A[Catch: all -> 0x0175, TRY_LEAVE, TryCatch #0 {all -> 0x0175, blocks: (B:121:0x005a, B:124:0x005f, B:126:0x0063, B:128:0x0070, B:29:0x0080, B:31:0x0088, B:33:0x008b, B:35:0x008f, B:37:0x009b, B:39:0x009e, B:43:0x00ab, B:46:0x00b3, B:52:0x00cd, B:69:0x00d9, B:72:0x00e5, B:73:0x00ef, B:56:0x0104, B:59:0x010b, B:78:0x0110, B:81:0x011b, B:86:0x0120, B:88:0x0124, B:90:0x012a, B:92:0x012e, B:97:0x0139, B:100:0x0145, B:101:0x014b, B:103:0x015e, B:27:0x0076), top: B:120:0x005a }] */
    /* JADX WARN: Removed duplicated region for block: B:113:0x0169  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x008f A[Catch: all -> 0x0175, TryCatch #0 {all -> 0x0175, blocks: (B:121:0x005a, B:124:0x005f, B:126:0x0063, B:128:0x0070, B:29:0x0080, B:31:0x0088, B:33:0x008b, B:35:0x008f, B:37:0x009b, B:39:0x009e, B:43:0x00ab, B:46:0x00b3, B:52:0x00cd, B:69:0x00d9, B:72:0x00e5, B:73:0x00ef, B:56:0x0104, B:59:0x010b, B:78:0x0110, B:81:0x011b, B:86:0x0120, B:88:0x0124, B:90:0x012a, B:92:0x012e, B:97:0x0139, B:100:0x0145, B:101:0x014b, B:103:0x015e, B:27:0x0076), top: B:120:0x005a }] */
    /* JADX WARN: Removed duplicated region for block: B:54:0x00d3  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x0110 A[SYNTHETIC] */
    /* renamed from: case, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.CharSequence m4105case(int r13, int r14, java.lang.CharSequence r15) {
        /*
            Method dump skipped, instructions count: 407
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.emoji2.text.Cnew.m4105case(int, int, java.lang.CharSequence):java.lang.CharSequence");
    }

    /* renamed from: else, reason: not valid java name */
    public final void m4106else(Ctry ctry) {
        if (ctry == null) {
            throw new NullPointerException("initCallback cannot be null");
        }
        this.f6784do.writeLock().lock();
        try {
            if (this.f6778do != 1 && this.f6778do != 2) {
                this.f6779do.add(ctry);
            }
            this.f6780do.post(new Ccase(Arrays.asList(ctry), this.f6778do, null));
        } finally {
            this.f6784do.writeLock().unlock();
        }
    }

    /* renamed from: for, reason: not valid java name */
    public final void m4107for() {
        if (!(this.f6785if == 1)) {
            throw new IllegalStateException("Set metadataLoadStrategy to LOAD_STRATEGY_MANUAL to execute manual loading");
        }
        if (m4108if() == 1) {
            return;
        }
        this.f6784do.writeLock().lock();
        try {
            if (this.f6778do == 0) {
                return;
            }
            this.f6778do = 0;
            this.f6784do.writeLock().unlock();
            Cdo cdo = this.f6782do;
            Cnew cnew = ((Cif) cdo).f6793do;
            try {
                cnew.f6783do.mo4090do(new androidx.emoji2.text.Cfor(cdo));
            } catch (Throwable th) {
                cnew.m4109new(th);
            }
        } finally {
            this.f6784do.writeLock().unlock();
        }
    }

    /* renamed from: if, reason: not valid java name */
    public final int m4108if() {
        this.f6784do.readLock().lock();
        try {
            return this.f6778do;
        } finally {
            this.f6784do.readLock().unlock();
        }
    }

    /* renamed from: new, reason: not valid java name */
    public final void m4109new(Throwable th) {
        ArrayList arrayList = new ArrayList();
        this.f6784do.writeLock().lock();
        try {
            this.f6778do = 2;
            arrayList.addAll(this.f6779do);
            this.f6779do.clear();
            this.f6784do.writeLock().unlock();
            this.f6780do.post(new Ccase(arrayList, this.f6778do, th));
        } catch (Throwable th2) {
            this.f6784do.writeLock().unlock();
            throw th2;
        }
    }

    /* renamed from: try, reason: not valid java name */
    public final void m4110try() {
        ArrayList arrayList = new ArrayList();
        this.f6784do.writeLock().lock();
        try {
            this.f6778do = 1;
            arrayList.addAll(this.f6779do);
            this.f6779do.clear();
            this.f6784do.writeLock().unlock();
            this.f6780do.post(new Ccase(arrayList, this.f6778do, null));
        } catch (Throwable th) {
            this.f6784do.writeLock().unlock();
            throw th;
        }
    }
}
