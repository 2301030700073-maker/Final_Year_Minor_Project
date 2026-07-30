package defpackage;

import java.io.File;

/* loaded from: classes.dex */
public final class XA implements InterfaceC0741bG {

    /* renamed from: do, reason: not valid java name */
    public C0556Vc f4468do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public boolean f4469do;

    @Override // defpackage.InterfaceC0741bG, java.io.Closeable, java.lang.AutoCloseable
    public final synchronized void close() {
        throw null;
    }

    /* renamed from: do, reason: not valid java name */
    public final void m2795do(File file) {
        throw new IllegalStateException("copyFromAssetPath and copyFromFile == null!");
    }

    @Override // defpackage.InterfaceC0741bG
    /* renamed from: else */
    public final synchronized InterfaceC0681aG mo2460else() {
        if (!this.f4469do) {
            m2796if();
            this.f4469do = true;
        }
        throw null;
    }

    @Override // defpackage.InterfaceC0741bG
    public final String getDatabaseName() {
        throw null;
    }

    /* renamed from: if, reason: not valid java name */
    public final void m2796if() {
        getDatabaseName();
        throw null;
    }

    @Override // defpackage.InterfaceC0741bG
    public final void setWriteAheadLoggingEnabled(boolean z) {
        throw null;
    }
}
