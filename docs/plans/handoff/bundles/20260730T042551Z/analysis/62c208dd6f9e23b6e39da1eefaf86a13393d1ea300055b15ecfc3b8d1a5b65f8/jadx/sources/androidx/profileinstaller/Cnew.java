package androidx.profileinstaller;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Build;
import defpackage.Mz;
import j$.util.Objects;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;

/* renamed from: androidx.profileinstaller.new, reason: invalid class name */
/* loaded from: classes.dex */
public final class Cnew {

    /* renamed from: do, reason: not valid java name */
    public static final Mz<Cfor> f7228do = new Mz<>();

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static final Object f7230do = new Object();

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static Cfor f7229do = null;

    /* renamed from: androidx.profileinstaller.new$do, reason: invalid class name */
    public static class Cdo {
        /* renamed from: do, reason: not valid java name */
        public static PackageInfo m4301do(PackageManager packageManager, Context context) {
            return packageManager.getPackageInfo(context.getPackageName(), PackageManager.PackageInfoFlags.of(0L));
        }
    }

    /* renamed from: androidx.profileinstaller.new$for, reason: invalid class name */
    public static class Cfor {
    }

    /* renamed from: androidx.profileinstaller.new$if, reason: invalid class name */
    public static class Cif {

        /* renamed from: do, reason: not valid java name */
        public final int f7231do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final long f7232do;

        /* renamed from: if, reason: not valid java name */
        public final int f7233if;

        /* renamed from: if, reason: not valid java name and collision with other field name */
        public final long f7234if;

        public Cif(int i, int i2, long j, long j2) {
            this.f7231do = i;
            this.f7233if = i2;
            this.f7232do = j;
            this.f7234if = j2;
        }

        /* renamed from: do, reason: not valid java name */
        public static Cif m4302do(File file) {
            DataInputStream dataInputStream = new DataInputStream(new FileInputStream(file));
            try {
                Cif cif = new Cif(dataInputStream.readInt(), dataInputStream.readInt(), dataInputStream.readLong(), dataInputStream.readLong());
                dataInputStream.close();
                return cif;
            } catch (Throwable th) {
                try {
                    dataInputStream.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || !(obj instanceof Cif)) {
                return false;
            }
            Cif cif = (Cif) obj;
            return this.f7233if == cif.f7233if && this.f7232do == cif.f7232do && this.f7231do == cif.f7231do && this.f7234if == cif.f7234if;
        }

        public final int hashCode() {
            return Objects.hash(Integer.valueOf(this.f7233if), Long.valueOf(this.f7232do), Integer.valueOf(this.f7231do), Long.valueOf(this.f7234if));
        }

        /* renamed from: if, reason: not valid java name */
        public final void m4303if(File file) {
            file.delete();
            DataOutputStream dataOutputStream = new DataOutputStream(new FileOutputStream(file));
            try {
                dataOutputStream.writeInt(this.f7231do);
                dataOutputStream.writeInt(this.f7233if);
                dataOutputStream.writeLong(this.f7232do);
                dataOutputStream.writeLong(this.f7234if);
                dataOutputStream.close();
            } catch (Throwable th) {
                try {
                    dataOutputStream.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        }
    }

    /* renamed from: do, reason: not valid java name */
    public static long m4298do(Context context) {
        PackageManager packageManager = context.getApplicationContext().getPackageManager();
        return Build.VERSION.SDK_INT >= 33 ? Cdo.m4301do(packageManager, context).lastUpdateTime : packageManager.getPackageInfo(context.getPackageName(), 0).lastUpdateTime;
    }

    /* JADX WARN: Can't wrap try/catch for region: R(20:14|(1:78)(1:18)|19|(1:77)(1:23)|24|25|26|(2:63|64)(1:28)|29|(8:36|(1:40)|(1:47)|48|(2:55|56)|52|53|54)|(1:62)|(1:40)|(3:42|45|47)|48|(1:50)|55|56|52|53|54) */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x00cb, code lost:
    
        r3 = 196608;
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x009c, code lost:
    
        r3 = 1;
     */
    /* renamed from: for, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void m4299for(android.content.Context r18, boolean r19) {
        /*
            Method dump skipped, instructions count: 227
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.profileinstaller.Cnew.m4299for(android.content.Context, boolean):void");
    }

    /* renamed from: if, reason: not valid java name */
    public static Cfor m4300if(int i, boolean z, boolean z2) {
        Cfor cfor = new Cfor();
        f7229do = cfor;
        f7228do.mo1469throw(cfor);
        return f7229do;
    }
}
