package c.b.b;

import com.google.protobuf.ByteString;
import java.util.NoSuchElementException;

/* renamed from: c.b.b.h, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public class C0455h extends AbstractC0457i {

    /* renamed from: a, reason: collision with root package name */
    public int f3189a = 0;

    /* renamed from: b, reason: collision with root package name */
    public final int f3190b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ ByteString f3191c;

    public C0455h(ByteString byteString) {
        this.f3191c = byteString;
        this.f3190b = this.f3191c.size();
    }

    @Override // c.b.b.AbstractC0457i
    public byte a() {
        int i = this.f3189a;
        if (i >= this.f3190b) {
            throw new NoSuchElementException();
        }
        this.f3189a = i + 1;
        return this.f3191c.k(i);
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        return this.f3189a < this.f3190b;
    }
}
