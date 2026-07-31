package okhttp3.internal;

import java.io.IOException;
import java.util.NoSuchElementException;
import javax.net.ssl.SSLPeerUnverifiedException;
import org.jsoup.SerializationException;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class _UtilJvmKt$$ExternalSyntheticLambda0 {
    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ void m(String str, Object obj, Object obj2, Object obj3, int i) {
        throw new IllegalArgumentException((str + obj + obj2 + obj3 + ((char) i)).toString());
    }

    public static /* synthetic */ void m$1(Object obj, Object obj2) {
        throw new SSLPeerUnverifiedException("Certificate for <" + obj + ((Object) "> doesn't match any of the subject alternative names: ") + obj2);
    }

    public static /* synthetic */ void m$2(Object obj, String str) {
        throw new IOException(str + obj);
    }

    public static /* synthetic */ void m$3(Object obj, String str) {
        throw new IllegalArgumentException((str + obj).toString());
    }

    public static /* synthetic */ void m$4(String str) {
        throw new IOException(str);
    }

    public boolean test(char c) {
        return c == '=' || c == ',' || c == '+';
    }

    public static /* synthetic */ void m$2(Object obj) {
        throw new IllegalArgumentException(obj.toString());
    }

    public static /* synthetic */ void m$2(String str) {
        throw new IllegalStateException(str);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ void m$2(String str, int i) {
        throw new IllegalArgumentException(str + ((char) i));
    }

    public static /* synthetic */ void m$3(String str) {
        throw new UnsupportedOperationException(str);
    }

    public static /* synthetic */ void m$1(Object obj) {
        throw new AssertionError(obj);
    }

    public static /* synthetic */ void m$1() {
        throw new IllegalArgumentException();
    }

    public static /* synthetic */ void m$1(Object obj, String str) {
        throw new IllegalStateException((str + obj).toString());
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ void m(int i, Object obj, String str) {
        throw new IllegalArgumentException((str + obj + ((char) i)).toString());
    }

    public static /* synthetic */ void m$1(String str) {
        throw new IndexOutOfBoundsException(str);
    }

    public static /* synthetic */ void m(Object obj) {
        throw new IllegalStateException(obj.toString());
    }

    public static /* synthetic */ void m$1(String str, int i) {
        throw new IllegalStateException((str + i).toString());
    }

    public static /* synthetic */ void m(Object obj, Object obj2) {
        StringBuilder sb = new StringBuilder();
        sb.append(obj);
        sb.append(obj2);
        throw new IOException(sb.toString());
    }

    public static /* synthetic */ void m(Object obj, Object obj2, Object obj3, Throwable th) {
        StringBuilder sb = new StringBuilder();
        sb.append(obj);
        sb.append(obj2);
        sb.append('\n');
        sb.append(obj3);
        throw new IllegalArgumentException(sb.toString(), th);
    }

    public static /* synthetic */ void m(Object obj, String str) {
        throw new IllegalStateException((str + obj).toString());
    }

    public static /* synthetic */ void m(String str) {
        throw new NoSuchElementException(str);
    }

    public static /* synthetic */ void m(String str, int i) {
        throw new IllegalStateException((str + i).toString());
    }

    public static /* synthetic */ void m(String str, long j, Object obj) {
        throw new IllegalArgumentException((str + j + obj).toString());
    }

    public static /* synthetic */ void m(String str, Object obj, Object obj2, Object obj3) {
        throw new IllegalArgumentException((str + obj + obj2 + obj3).toString());
    }

    public static /* synthetic */ void m() {
        throw new SerializationException();
    }

    public static /* synthetic */ void m(String str, Object obj, Object obj2, Object obj3, Object obj4) {
        throw new IllegalStateException((str + obj + obj2 + obj3 + obj4).toString());
    }

    public static /* synthetic */ void m(Throwable th) {
        throw new RuntimeException(th);
    }
}
