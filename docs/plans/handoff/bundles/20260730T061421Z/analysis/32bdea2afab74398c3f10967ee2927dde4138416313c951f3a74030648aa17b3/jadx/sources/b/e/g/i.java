package b.e.g;

import android.content.ContentUris;
import android.content.Context;
import android.content.pm.PackageManager;
import android.content.pm.ProviderInfo;
import android.database.Cursor;
import android.graphics.Typeface;
import android.net.Uri;
import android.os.CancellationSignal;
import android.os.Handler;
import b.b.g.Z;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.Objects;

/* loaded from: classes.dex */
public class i {

    /* renamed from: a, reason: collision with root package name */
    public static final b.d.m f722a = new b.d.m(16);

    /* renamed from: b, reason: collision with root package name */
    public static final o f723b = new o("fonts", 10, 10000);

    /* renamed from: c, reason: collision with root package name */
    public static final Object f724c = new Object();

    /* renamed from: d, reason: collision with root package name */
    public static final b.d.n f725d = new b.d.n();
    public static final Comparator e = new e();

    public static h a(Context context, a aVar, int i) {
        try {
            ProviderInfo provider = getProvider(context.getPackageManager(), aVar, context.getResources());
            f fVar = provider == null ? new f(1, null) : new f(0, getFontFromProvider(context, aVar, provider.authority, null));
            int i2 = fVar.f714a;
            if (i2 != 0) {
                return new h(null, i2 == 1 ? -2 : -3);
            }
            Typeface b2 = b.e.d.c.f697a.b(context, null, fVar.f715b, i);
            return new h(b2, b2 == null ? -3 : 0);
        } catch (PackageManager.NameNotFoundException unused) {
            return new h(null, -1);
        }
    }

    public static Typeface b(Context context, a aVar, Z z, Handler handler, boolean z2, int i, int i2) {
        String str = aVar.f + "-" + i2;
        Typeface typeface = (Typeface) f722a.a(str);
        if (typeface != null) {
            if (z != null) {
                z.c(typeface);
            }
            return typeface;
        }
        if (z2 && i == -1) {
            h a2 = a(context, aVar, i2);
            if (z != null) {
                int i3 = a2.f721b;
                if (i3 == 0) {
                    z.b(a2.f720a, handler);
                } else {
                    z.a(i3, handler);
                }
            }
            return a2.f720a;
        }
        b bVar = new b(context, aVar, i2, str);
        if (z2) {
            try {
                return ((h) f723b.b(bVar, i)).f720a;
            } catch (InterruptedException unused) {
                return null;
            }
        }
        c cVar = z == null ? null : new c(z, handler);
        synchronized (f724c) {
            ArrayList arrayList = (ArrayList) f725d.getOrDefault(str, null);
            if (arrayList != null) {
                if (cVar != null) {
                    arrayList.add(cVar);
                }
                return null;
            }
            if (cVar != null) {
                ArrayList arrayList2 = new ArrayList();
                arrayList2.add(cVar);
                f725d.put(str, arrayList2);
            }
            o oVar = f723b;
            d dVar = new d(str);
            Objects.requireNonNull(oVar);
            oVar.a(new l(oVar, bVar, new Handler(), dVar));
            return null;
        }
    }

    public static g[] getFontFromProvider(Context context, a aVar, String str, CancellationSignal cancellationSignal) {
        ArrayList arrayList = new ArrayList();
        Uri build = new Uri.Builder().scheme("content").authority(str).build();
        Uri build2 = new Uri.Builder().scheme("content").authority(str).appendPath("file").build();
        Cursor cursor = null;
        try {
            cursor = context.getContentResolver().query(build, new String[]{"_id", "file_id", "font_ttc_index", "font_variation_settings", "font_weight", "font_italic", "result_code"}, "query = ?", new String[]{aVar.f705c}, null, cancellationSignal);
            if (cursor != null && cursor.getCount() > 0) {
                int columnIndex = cursor.getColumnIndex("result_code");
                ArrayList arrayList2 = new ArrayList();
                int columnIndex2 = cursor.getColumnIndex("_id");
                int columnIndex3 = cursor.getColumnIndex("file_id");
                int columnIndex4 = cursor.getColumnIndex("font_ttc_index");
                int columnIndex5 = cursor.getColumnIndex("font_weight");
                int columnIndex6 = cursor.getColumnIndex("font_italic");
                while (cursor.moveToNext()) {
                    int i = columnIndex != -1 ? cursor.getInt(columnIndex) : 0;
                    arrayList2.add(new g(columnIndex3 == -1 ? ContentUris.withAppendedId(build, cursor.getLong(columnIndex2)) : ContentUris.withAppendedId(build2, cursor.getLong(columnIndex3)), columnIndex4 != -1 ? cursor.getInt(columnIndex4) : 0, columnIndex5 != -1 ? cursor.getInt(columnIndex5) : 400, columnIndex6 != -1 && cursor.getInt(columnIndex6) == 1, i));
                }
                arrayList = arrayList2;
            }
            return (g[]) arrayList.toArray(new g[0]);
        } finally {
            if (cursor != null) {
                cursor.close();
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x007d A[LOOP:1: B:11:0x003a->B:25:0x007d, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:26:0x007c A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static android.content.pm.ProviderInfo getProvider(android.content.pm.PackageManager r6, b.e.g.a r7, android.content.res.Resources r8) {
        /*
            java.lang.String r8 = r7.f703a
            r0 = 0
            android.content.pm.ProviderInfo r1 = r6.resolveContentProvider(r8, r0)
            if (r1 == 0) goto La3
            java.lang.String r2 = r1.packageName
            java.lang.String r3 = r7.f704b
            boolean r2 = r2.equals(r3)
            if (r2 == 0) goto L82
            java.lang.String r8 = r1.packageName
            r2 = 64
            android.content.pm.PackageInfo r6 = r6.getPackageInfo(r8, r2)
            android.content.pm.Signature[] r6 = r6.signatures
            java.util.ArrayList r8 = new java.util.ArrayList
            r8.<init>()
            r2 = r0
        L23:
            int r3 = r6.length
            if (r2 >= r3) goto L32
            r3 = r6[r2]
            byte[] r3 = r3.toByteArray()
            r8.add(r3)
            int r2 = r2 + 1
            goto L23
        L32:
            java.util.Comparator r6 = b.e.g.i.e
            java.util.Collections.sort(r8, r6)
            java.util.List r6 = r7.f706d
            r7 = r0
        L3a:
            int r2 = r6.size()
            if (r7 >= r2) goto L80
            java.util.ArrayList r2 = new java.util.ArrayList
            java.lang.Object r3 = r6.get(r7)
            java.util.Collection r3 = (java.util.Collection) r3
            r2.<init>(r3)
            java.util.Comparator r3 = b.e.g.i.e
            java.util.Collections.sort(r2, r3)
            int r3 = r8.size()
            int r4 = r2.size()
            if (r3 == r4) goto L5b
            goto L74
        L5b:
            r3 = r0
        L5c:
            int r4 = r8.size()
            if (r3 >= r4) goto L79
            java.lang.Object r4 = r8.get(r3)
            byte[] r4 = (byte[]) r4
            java.lang.Object r5 = r2.get(r3)
            byte[] r5 = (byte[]) r5
            boolean r4 = java.util.Arrays.equals(r4, r5)
            if (r4 != 0) goto L76
        L74:
            r2 = r0
            goto L7a
        L76:
            int r3 = r3 + 1
            goto L5c
        L79:
            r2 = 1
        L7a:
            if (r2 == 0) goto L7d
            return r1
        L7d:
            int r7 = r7 + 1
            goto L3a
        L80:
            r6 = 0
            return r6
        L82:
            android.content.pm.PackageManager$NameNotFoundException r6 = new android.content.pm.PackageManager$NameNotFoundException
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.String r1 = "Found content provider "
            r0.append(r1)
            r0.append(r8)
            java.lang.String r8 = ", but package was not "
            r0.append(r8)
            java.lang.String r7 = r7.f704b
            r0.append(r7)
            java.lang.String r7 = r0.toString()
            r6.<init>(r7)
            throw r6
        La3:
            android.content.pm.PackageManager$NameNotFoundException r6 = new android.content.pm.PackageManager$NameNotFoundException
            java.lang.String r7 = "No package found for authority: "
            java.lang.String r7 = c.a.c.a.a.e(r7, r8)
            r6.<init>(r7)
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: b.e.g.i.getProvider(android.content.pm.PackageManager, b.e.g.a, android.content.res.Resources):android.content.pm.ProviderInfo");
    }
}
