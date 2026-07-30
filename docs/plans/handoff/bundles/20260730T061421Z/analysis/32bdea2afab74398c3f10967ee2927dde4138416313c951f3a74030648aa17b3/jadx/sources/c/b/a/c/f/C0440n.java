package c.b.a.c.f;

import android.content.ContentResolver;
import android.database.ContentObserver;
import android.database.Cursor;
import android.database.sqlite.SQLiteException;
import android.net.Uri;
import android.util.Log;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* renamed from: c.b.a.c.f.n, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0440n {
    public static final ConcurrentHashMap f = new ConcurrentHashMap();
    public static final String[] g = {"key", "value"};

    /* renamed from: a, reason: collision with root package name */
    public final ContentResolver f3045a;

    /* renamed from: b, reason: collision with root package name */
    public final Uri f3046b;
    public volatile Map e;

    /* renamed from: d, reason: collision with root package name */
    public final Object f3048d = new Object();

    /* renamed from: c, reason: collision with root package name */
    public final ContentObserver f3047c = new o(this);

    public C0440n(ContentResolver contentResolver, Uri uri) {
        this.f3045a = contentResolver;
        this.f3046b = uri;
    }

    public final Map a() {
        try {
            HashMap hashMap = new HashMap();
            Cursor query = this.f3045a.query(this.f3046b, g, null, null, null);
            if (query != null) {
                while (query.moveToNext()) {
                    try {
                        hashMap.put(query.getString(0), query.getString(1));
                    } catch (Throwable th) {
                        query.close();
                        throw th;
                    }
                }
                query.close();
            }
            return hashMap;
        } catch (SQLiteException | SecurityException unused) {
            Log.e("ConfigurationContentLoader", "PhenotypeFlag unable to load ContentProvider, using default values");
            return null;
        }
    }
}
