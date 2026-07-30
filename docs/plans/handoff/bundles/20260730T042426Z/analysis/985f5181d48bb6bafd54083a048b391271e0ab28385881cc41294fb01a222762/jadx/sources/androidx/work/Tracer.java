package androidx.work;

/* compiled from: Tracer.kt */
/* loaded from: classes.dex */
public interface Tracer {
    void beginAsyncSection(String str, int i);

    void beginSection(String str);

    void endAsyncSection(String str, int i);

    void endSection();

    boolean isEnabled();
}
