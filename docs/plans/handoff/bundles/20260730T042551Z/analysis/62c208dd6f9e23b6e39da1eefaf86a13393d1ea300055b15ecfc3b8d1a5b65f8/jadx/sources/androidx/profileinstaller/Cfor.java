package androidx.profileinstaller;

import android.content.pm.PackageInfo;
import java.io.DataOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;

/* renamed from: androidx.profileinstaller.for, reason: invalid class name */
/* loaded from: classes.dex */
public final class Cfor {

    /* renamed from: do, reason: not valid java name */
    public static final Cdo f7219do = new Cdo();

    /* renamed from: androidx.profileinstaller.for$do, reason: invalid class name */
    public class Cdo implements InterfaceC0040for {
        @Override // androidx.profileinstaller.Cfor.InterfaceC0040for
        /* renamed from: do */
        public final void mo4289do() {
        }

        @Override // androidx.profileinstaller.Cfor.InterfaceC0040for
        /* renamed from: if */
        public final void mo4290if(int i, Object obj) {
        }
    }

    /* renamed from: androidx.profileinstaller.for$for, reason: invalid class name and collision with other inner class name */
    public interface InterfaceC0040for {
        /* renamed from: do */
        void mo4289do();

        /* renamed from: if */
        void mo4290if(int i, Object obj);
    }

    /* renamed from: androidx.profileinstaller.for$if, reason: invalid class name */
    public class Cif implements InterfaceC0040for {
        @Override // androidx.profileinstaller.Cfor.InterfaceC0040for
        /* renamed from: do */
        public final void mo4289do() {
        }

        @Override // androidx.profileinstaller.Cfor.InterfaceC0040for
        /* renamed from: if */
        public final void mo4290if(int i, Object obj) {
            if (i == 6 || i == 7 || i == 8) {
            }
        }
    }

    static {
        new Cif();
    }

    /* renamed from: do, reason: not valid java name */
    public static void m4294do(PackageInfo packageInfo, File file) {
        try {
            DataOutputStream dataOutputStream = new DataOutputStream(new FileOutputStream(new File(file, "profileinstaller_profileWrittenFor_lastUpdateTime.dat")));
            try {
                dataOutputStream.writeLong(packageInfo.lastUpdateTime);
                dataOutputStream.close();
            } finally {
            }
        } catch (IOException unused) {
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:104:0x00e7 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0071  */
    /* JADX WARN: Removed duplicated region for block: B:143:0x01ac  */
    /* JADX WARN: Removed duplicated region for block: B:147:0x01f5  */
    /* JADX WARN: Removed duplicated region for block: B:149:0x01b5 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:175:0x01ff  */
    /* JADX WARN: Removed duplicated region for block: B:178:0x026f  */
    /* JADX WARN: Removed duplicated region for block: B:179:0x0202  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x00bb  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x0274 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:48:0x00bf  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x0139  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x0153 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:78:0x01a5  */
    /* renamed from: if, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void m4295if(android.content.Context r17, java.util.concurrent.Executor r18, androidx.profileinstaller.Cfor.InterfaceC0040for r19, boolean r20) {
        /*
            Method dump skipped, instructions count: 676
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.profileinstaller.Cfor.m4295if(android.content.Context, java.util.concurrent.Executor, androidx.profileinstaller.for$for, boolean):void");
    }
}
