package c.b.a.b.a.a.a.a.c;

import android.content.res.Resources;
import android.os.Handler;
import android.util.SparseArray;
import android.widget.FrameLayout;
import com.android.systemui.shared.R;

/* renamed from: c.b.a.b.a.a.a.a.c.v, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public class C0382v {

    /* renamed from: a, reason: collision with root package name */
    public final FrameLayout f2510a;

    /* renamed from: b, reason: collision with root package name */
    public final C0368g f2511b;

    /* renamed from: c, reason: collision with root package name */
    public final Handler f2512c;

    /* renamed from: d, reason: collision with root package name */
    public final int f2513d;
    public final int e;
    public final SparseArray f = new SparseArray();

    public C0382v(FrameLayout frameLayout, C0368g c0368g, Handler handler) {
        this.f2510a = frameLayout;
        this.f2511b = c0368g;
        this.f2512c = handler;
        Resources resources = frameLayout.getResources();
        this.f2513d = resources.getDimensionPixelSize(R.dimen.selection_padding);
        this.e = resources.getDimensionPixelSize(R.dimen.selection_padding);
    }
}
