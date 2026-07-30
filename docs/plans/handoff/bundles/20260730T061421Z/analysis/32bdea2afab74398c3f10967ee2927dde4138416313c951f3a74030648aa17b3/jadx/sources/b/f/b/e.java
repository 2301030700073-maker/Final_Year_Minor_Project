package b.f.b;

import android.graphics.Rect;
import java.util.Comparator;

/* loaded from: classes.dex */
public class e implements Comparator {

    /* renamed from: a, reason: collision with root package name */
    public final Rect f800a = new Rect();

    /* renamed from: b, reason: collision with root package name */
    public final Rect f801b = new Rect();

    /* renamed from: c, reason: collision with root package name */
    public final boolean f802c;

    /* renamed from: d, reason: collision with root package name */
    public final a f803d;

    public e(boolean z, a aVar) {
        this.f802c = z;
        this.f803d = aVar;
    }

    @Override // java.util.Comparator
    public int compare(Object obj, Object obj2) {
        Rect rect = this.f800a;
        Rect rect2 = this.f801b;
        this.f803d.a(obj, rect);
        this.f803d.a(obj2, rect2);
        int i = rect.top;
        int i2 = rect2.top;
        if (i < i2) {
            return -1;
        }
        if (i > i2) {
            return 1;
        }
        int i3 = rect.left;
        int i4 = rect2.left;
        if (i3 < i4) {
            return this.f802c ? 1 : -1;
        }
        if (i3 > i4) {
            return this.f802c ? -1 : 1;
        }
        int i5 = rect.bottom;
        int i6 = rect2.bottom;
        if (i5 < i6) {
            return -1;
        }
        if (i5 > i6) {
            return 1;
        }
        int i7 = rect.right;
        int i8 = rect2.right;
        if (i7 < i8) {
            return this.f802c ? 1 : -1;
        }
        if (i7 > i8) {
            return this.f802c ? -1 : 1;
        }
        return 0;
    }
}
