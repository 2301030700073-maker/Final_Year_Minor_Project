package c.b.a.b.b.l;

import android.database.ContentObserver;
import android.net.Uri;
import android.os.Handler;
import android.util.ArrayMap;
import java.util.Objects;
import java.util.function.Predicate;

/* loaded from: classes.dex */
public class N extends ContentObserver {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ P f2635a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public N(P p, Handler handler) {
        super(handler);
        this.f2635a = p;
    }

    @Override // android.database.ContentObserver
    public void onChange(boolean z, Uri uri) {
        P p = this.f2635a;
        Objects.requireNonNull(p);
        ArrayMap arrayMap = new ArrayMap(1);
        arrayMap.put(uri, (Predicate) p.g.get(uri));
        p.e(arrayMap);
    }
}
