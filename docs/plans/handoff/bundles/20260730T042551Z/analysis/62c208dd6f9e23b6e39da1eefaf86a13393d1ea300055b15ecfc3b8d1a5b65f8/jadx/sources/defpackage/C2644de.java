package defpackage;

import android.content.Context;

/* renamed from: de, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C2644de {

    /* renamed from: do, reason: not valid java name */
    public final Context f12515do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public Cdo f12516do = null;

    /* renamed from: de$do, reason: invalid class name */
    public class Cdo {

        /* renamed from: do, reason: not valid java name */
        public final String f12517do;

        /* renamed from: if, reason: not valid java name */
        public final String f12518if;

        /* JADX WARN: Removed duplicated region for block: B:11:0x003c  */
        /* JADX WARN: Removed duplicated region for block: B:13:0x0043  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public Cdo(defpackage.C2644de r4) {
            /*
                r3 = this;
                r3.<init>()
                android.content.Context r0 = r4.f12515do
                java.lang.String r1 = "com.google.firebase.crashlytics.unity_version"
                java.lang.String r2 = "string"
                int r0 = defpackage.J8.m1019try(r0, r1, r2)
                android.content.Context r4 = r4.f12515do
                if (r0 == 0) goto L20
                java.lang.String r1 = "Unity"
                r3.f12517do = r1
                android.content.res.Resources r4 = r4.getResources()
                java.lang.String r4 = r4.getString(r0)
                r3.f12518if = r4
                goto L47
            L20:
                java.lang.String r0 = "flutter_assets/NOTICES.Z"
                android.content.res.AssetManager r1 = r4.getAssets()
                if (r1 != 0) goto L29
                goto L38
            L29:
                android.content.res.AssetManager r4 = r4.getAssets()     // Catch: java.io.IOException -> L38
                java.io.InputStream r4 = r4.open(r0)     // Catch: java.io.IOException -> L38
                if (r4 == 0) goto L36
                r4.close()     // Catch: java.io.IOException -> L38
            L36:
                r4 = 1
                goto L39
            L38:
                r4 = 0
            L39:
                r0 = 0
                if (r4 == 0) goto L43
                java.lang.String r4 = "Flutter"
                r3.f12517do = r4
                r3.f12518if = r0
                goto L47
            L43:
                r3.f12517do = r0
                r3.f12518if = r0
            L47:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: defpackage.C2644de.Cdo.<init>(de):void");
        }
    }

    public C2644de(Context context) {
        this.f12515do = context;
    }
}
