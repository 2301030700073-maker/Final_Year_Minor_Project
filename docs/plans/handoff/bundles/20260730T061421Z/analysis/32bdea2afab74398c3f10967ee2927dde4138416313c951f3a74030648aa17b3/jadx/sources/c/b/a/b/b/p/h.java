package c.b.a.b.b.p;

import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.BlurMaskFilter;
import android.graphics.Canvas;
import android.text.TextUtils;
import android.util.Log;
import android.view.View;
import b.l.W;
import com.android.launcher3.Launcher;
import com.android.launcher3.icons.LauncherIcons;
import com.android.launcher3.uioverrides.WallpaperColorInfo;
import com.android.launcher3.util.MainThreadInitializedObject;

/* loaded from: classes.dex */
public class h {

    /* renamed from: a, reason: collision with root package name */
    public final long f2805a;

    /* renamed from: b, reason: collision with root package name */
    public final long f2806b;

    /* renamed from: c, reason: collision with root package name */
    public final int f2807c;

    /* renamed from: d, reason: collision with root package name */
    public final c.b.a.b.b.p.o.h f2808d;
    public final Intent e;
    public final Context f;
    public final boolean g;
    public final Bitmap h;
    public final g i;
    public final g j;
    public final g k;

    public h(Context context, c.b.a.b.b.p.o.h hVar, Intent intent, boolean z, Bitmap bitmap, boolean z2, long j, long j2, int i) {
        this.f = context.getApplicationContext();
        this.f2808d = hVar;
        this.e = intent;
        this.h = bitmap;
        this.f2805a = j;
        this.f2806b = j2;
        this.f2807c = i;
        this.g = z2;
        c.b.a.b.b.p.o.f fVar = hVar.f2843d;
        this.i = fVar == null ? null : new g(this, fVar);
        c.b.a.b.b.p.o.f fVar2 = hVar.f;
        this.j = fVar2 != null ? new g(this, fVar2) : null;
        c.b.a.b.b.p.o.f fVar3 = hVar.e;
        this.k = fVar3 == null ? new g(this) : new g(this, fVar3);
    }

    public static h a(Context context, c.b.a.b.b.p.o.a aVar, boolean z) {
        try {
            Intent parseUri = !TextUtils.isEmpty(aVar.f2819a.i.f2839b) ? Intent.parseUri(aVar.f2819a.i.f2839b, 0) : null;
            Bitmap decodeByteArray = aVar.e != null ? BitmapFactory.decodeByteArray(aVar.e, 0, aVar.e.length, null) : null;
            if (decodeByteArray != null) {
                if (!z && aVar.f) {
                    MainThreadInitializedObject mainThreadInitializedObject = WallpaperColorInfo.INSTANCE;
                    if (!((WallpaperColorInfo) WallpaperColorInfo.INSTANCE.b(context)).mExtractionInfo.supportsDarkText) {
                    }
                }
                int pxFromDp = W.pxFromDp(2.0f, context.getResources().getDisplayMetrics());
                float f = pxFromDp;
                BlurMaskFilter blurMaskFilter = new BlurMaskFilter(f, BlurMaskFilter.Blur.NORMAL);
                int i = pxFromDp * 2;
                Bitmap createBitmap = Bitmap.createBitmap(decodeByteArray.getWidth() + i, decodeByteArray.getHeight() + i, Bitmap.Config.ARGB_8888);
                Canvas canvas = new Canvas(createBitmap);
                canvas.translate(f, f);
                LauncherIcons obtain = LauncherIcons.obtain(context);
                obtain.getShadowGenerator().recreateIcon(decodeByteArray, blurMaskFilter, 100, 124, canvas);
                obtain.recycle();
                decodeByteArray = createBitmap;
            }
            return new h(context, aVar.f2819a, parseUri, z, decodeByteArray, aVar.f, aVar.f2820b, aVar.f2821c, aVar.f2822d);
        } catch (Exception e) {
            Log.e("SmartspaceCard", "from proto", e);
            return null;
        }
    }

    public long b() {
        return this.f2808d.m.f2823a;
    }

    public final g c() {
        g gVar;
        g gVar2;
        long currentTimeMillis = System.currentTimeMillis();
        c.b.a.b.b.p.o.h hVar = this.f2808d;
        long j = hVar.k;
        return (currentTimeMillis >= j || (gVar2 = this.i) == null) ? (currentTimeMillis <= hVar.l + j || (gVar = this.j) == null) ? this.k : gVar : gVar2;
    }

    public e d() {
        return c().f2803a;
    }

    public boolean e() {
        g c2 = c();
        return c2.f2803a.c() || c2.f2804b.c();
    }

    public void f(View view) {
        if (this.f2808d.i == null) {
            Log.e("SmartspaceCard", "no tap action available: " + this);
            return;
        }
        Intent intent = new Intent(this.e);
        Launcher launcher = Launcher.getLauncher(view.getContext());
        int i = this.f2808d.i.f2838a;
        if (i == 1) {
            intent.addFlags(268435456);
            intent.setSourceBounds(launcher.getViewBounds(view));
            view.getContext().sendBroadcast(intent);
        } else if (i == 2) {
            launcher.k(view, intent, null, null);
            view.getContext().sendBroadcast(intent);
        } else {
            Log.w("SmartspaceCard", "unrecognized tap action: " + this);
        }
    }

    public String toString() {
        StringBuilder f = c.a.c.a.a.f("title:");
        f.append(d().toString());
        f.append(" expires:");
        f.append(b());
        f.append(" published:");
        f.append(this.f2805a);
        f.append(" gsaVersion:");
        f.append(this.f2807c);
        f.append(" gsaUpdateTime: ");
        f.append(this.f2806b);
        return f.toString();
    }
}
