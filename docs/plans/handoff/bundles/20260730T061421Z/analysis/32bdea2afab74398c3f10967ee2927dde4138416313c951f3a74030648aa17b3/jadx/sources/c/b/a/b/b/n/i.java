package c.b.a.b.b.n;

import android.net.Uri;
import b.l.W;
import com.android.launcher3.LauncherAppState;
import com.android.launcher3.model.data.AppInfo;
import com.android.launcher3.util.ComponentKey;
import com.google.android.apps.nexuslauncher.search.AppSearchProvider;
import java.util.concurrent.Callable;

/* loaded from: classes.dex */
public class i implements Callable {

    /* renamed from: a, reason: collision with root package name */
    public final ComponentKey f2754a;

    /* renamed from: b, reason: collision with root package name */
    public final Uri f2755b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ AppSearchProvider f2756c;

    public i(AppSearchProvider appSearchProvider, Uri uri) {
        this.f2756c = appSearchProvider;
        this.f2754a = W.d(uri);
        this.f2755b = uri;
    }

    @Override // java.util.concurrent.Callable
    public Object call() {
        AppInfo g = p.g(this.f2754a, this.f2755b);
        LauncherAppState.getInstance(this.f2756c.getContext()).mIconCache.getTitleAndIcon(g, false);
        return AppSearchProvider.b(g);
    }
}
