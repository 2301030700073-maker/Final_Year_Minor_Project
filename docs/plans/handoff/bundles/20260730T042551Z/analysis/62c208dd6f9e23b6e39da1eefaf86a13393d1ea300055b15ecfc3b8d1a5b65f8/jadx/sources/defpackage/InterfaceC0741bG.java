package defpackage;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import java.io.Closeable;
import java.io.File;

/* renamed from: bG, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public interface InterfaceC0741bG extends Closeable {

    /* renamed from: bG$do, reason: invalid class name */
    public static abstract class Cdo {

        /* renamed from: do, reason: not valid java name */
        public final int f8350do;

        public Cdo(int i) {
            this.f8350do = i;
        }

        /* renamed from: do, reason: not valid java name */
        public static void m4820do(String str) {
            if (str.equalsIgnoreCase(":memory:") || str.trim().length() == 0) {
                return;
            }
            try {
                SQLiteDatabase.deleteDatabase(new File(str));
            } catch (Exception unused) {
            }
        }

        /* renamed from: if, reason: not valid java name */
        public abstract void mo4821if(C0519Tj c0519Tj, int i, int i2);
    }

    /* renamed from: bG$for, reason: invalid class name */
    public interface Cfor {
        /* renamed from: do */
        InterfaceC0741bG mo2663do(Cif cif);
    }

    /* renamed from: bG$if, reason: invalid class name */
    public static class Cif {

        /* renamed from: do, reason: not valid java name */
        public final Context f8351do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final Cdo f8352do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final String f8353do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final boolean f8354do;

        public Cif(Context context, String str, Cdo cdo, boolean z) {
            this.f8351do = context;
            this.f8353do = str;
            this.f8352do = cdo;
            this.f8354do = z;
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    void close();

    /* renamed from: else */
    InterfaceC0681aG mo2460else();

    String getDatabaseName();

    void setWriteAheadLoggingEnabled(boolean z);
}
