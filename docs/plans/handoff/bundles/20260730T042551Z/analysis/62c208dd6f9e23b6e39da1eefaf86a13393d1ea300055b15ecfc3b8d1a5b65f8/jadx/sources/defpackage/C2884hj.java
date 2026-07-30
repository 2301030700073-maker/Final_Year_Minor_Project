package defpackage;

import android.content.ContentProviderClient;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.os.RemoteException;
import java.util.Comparator;

/* renamed from: hj, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C2884hj {

    /* renamed from: do, reason: not valid java name */
    public static final C2825gj f13351do = new Comparator() { // from class: gj
        @Override // java.util.Comparator
        public final int compare(Object obj, Object obj2) {
            byte[] bArr = (byte[]) obj;
            byte[] bArr2 = (byte[]) obj2;
            if (bArr.length != bArr2.length) {
                return bArr.length - bArr2.length;
            }
            for (int i = 0; i < bArr.length; i++) {
                byte b = bArr[i];
                byte b2 = bArr2[i];
                if (b != b2) {
                    return b - b2;
                }
            }
            return 0;
        }
    };

    /* renamed from: hj$do, reason: invalid class name */
    public interface Cdo {
        void close();

        /* renamed from: do, reason: not valid java name */
        Cursor mo6834do(Uri uri, String[] strArr, String[] strArr2);
    }

    /* renamed from: hj$for, reason: invalid class name */
    public static class Cfor implements Cdo {

        /* renamed from: do, reason: not valid java name */
        public final ContentProviderClient f13352do;

        public Cfor(Context context, Uri uri) {
            this.f13352do = context.getContentResolver().acquireUnstableContentProviderClient(uri);
        }

        @Override // defpackage.C2884hj.Cdo
        public final void close() {
            ContentProviderClient contentProviderClient = this.f13352do;
            if (contentProviderClient != null) {
                contentProviderClient.close();
            }
        }

        @Override // defpackage.C2884hj.Cdo
        /* renamed from: do */
        public final Cursor mo6834do(Uri uri, String[] strArr, String[] strArr2) {
            ContentProviderClient contentProviderClient = this.f13352do;
            if (contentProviderClient == null) {
                return null;
            }
            try {
                return contentProviderClient.query(uri, strArr, "query = ?", strArr2, null, null);
            } catch (RemoteException unused) {
                return null;
            }
        }
    }

    /* renamed from: hj$if, reason: invalid class name */
    public static class Cif implements Cdo {

        /* renamed from: do, reason: not valid java name */
        public final ContentProviderClient f13353do;

        public Cif(Context context, Uri uri) {
            this.f13353do = context.getContentResolver().acquireUnstableContentProviderClient(uri);
        }

        @Override // defpackage.C2884hj.Cdo
        public final void close() {
            ContentProviderClient contentProviderClient = this.f13353do;
            if (contentProviderClient != null) {
                contentProviderClient.release();
            }
        }

        @Override // defpackage.C2884hj.Cdo
        /* renamed from: do */
        public final Cursor mo6834do(Uri uri, String[] strArr, String[] strArr2) {
            ContentProviderClient contentProviderClient = this.f13353do;
            if (contentProviderClient == null) {
                return null;
            }
            try {
                return contentProviderClient.query(uri, strArr, "query = ?", strArr2, null, null);
            } catch (RemoteException unused) {
                return null;
            }
        }
    }

    /* JADX WARN: Finally extract failed */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0090 A[LOOP:1: B:13:0x004d->B:27:0x0090, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0094 A[EDGE_INSN: B:28:0x0094->B:29:0x0094 BREAK  A[LOOP:1: B:13:0x004d->B:27:0x0090], SYNTHETIC] */
    /* renamed from: do, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static defpackage.C3523pj m6833do(android.content.Context r21, defpackage.C2942ij r22) {
        /*
            Method dump skipped, instructions count: 447
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.C2884hj.m6833do(android.content.Context, ij):pj");
    }
}
