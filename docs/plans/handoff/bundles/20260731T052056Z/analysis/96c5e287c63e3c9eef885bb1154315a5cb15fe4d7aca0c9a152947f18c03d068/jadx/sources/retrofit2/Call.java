package retrofit2;

import okhttp3.Request;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public interface Call<T> extends Cloneable {
    void cancel();

    /* renamed from: clone */
    Call mo936clone();

    void enqueue(Callback callback);

    Response execute();

    boolean isCanceled();

    Request request();
}
