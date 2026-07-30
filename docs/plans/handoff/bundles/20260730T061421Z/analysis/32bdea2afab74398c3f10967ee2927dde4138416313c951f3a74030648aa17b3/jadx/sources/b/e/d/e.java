package b.e.d;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.os.CancellationSignal;
import b.e.g.g;
import java.util.concurrent.ConcurrentHashMap;

/* loaded from: classes.dex */
public class e {

    /* renamed from: a, reason: collision with root package name */
    public ConcurrentHashMap f699a = new ConcurrentHashMap();

    public abstract Typeface a(Context context, b.e.c.c.b bVar, Resources resources, int i);

    public abstract Typeface b(Context context, CancellationSignal cancellationSignal, g[] gVarArr, int i);

    public abstract Typeface c(Context context, Resources resources, int i, String str, int i2);
}
