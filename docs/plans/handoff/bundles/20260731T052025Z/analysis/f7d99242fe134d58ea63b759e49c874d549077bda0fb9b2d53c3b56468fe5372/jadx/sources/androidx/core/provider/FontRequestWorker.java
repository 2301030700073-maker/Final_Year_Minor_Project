package androidx.core.provider;

import android.content.Context;
import android.graphics.Typeface;
import androidx.collection.LruCache;
import androidx.collection.SimpleArrayMap;
import com.bumptech.glide.load.engine.ActiveResources$1;
import j$.util.DesugarCollections;
import j$.util.Objects;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.LinkedBlockingDeque;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class FontRequestWorker {
    public static final ThreadPoolExecutor DEFAULT_EXECUTOR_SERVICE;
    public static final Object LOCK;
    public static final SimpleArrayMap PENDING_REPLIES;
    public static final LruCache sTypefaceCache = new LruCache(16);

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    /* renamed from: androidx.core.provider.FontRequestWorker$1, reason: invalid class name */
    public final class AnonymousClass1 implements Callable {
        public final /* synthetic */ int $r8$classId;
        public final /* synthetic */ Context val$context;
        public final /* synthetic */ String val$id;
        public final /* synthetic */ Object val$request;
        public final /* synthetic */ int val$style;

        public /* synthetic */ AnonymousClass1(String str, Context context, Object obj, int i, int i2) {
            this.$r8$classId = i2;
            this.val$id = str;
            this.val$context = context;
            this.val$request = obj;
            this.val$style = i;
        }

        @Override // java.util.concurrent.Callable
        public final Object call() {
            int i = this.$r8$classId;
            int i2 = this.val$style;
            Object obj = this.val$request;
            Context context = this.val$context;
            String str = this.val$id;
            switch (i) {
                case 0:
                    Object[] objArr = {(FontRequest) obj};
                    ArrayList arrayList = new ArrayList(1);
                    Object obj2 = objArr[0];
                    Objects.requireNonNull(obj2);
                    arrayList.add(obj2);
                    return FontRequestWorker.getFontSync(str, context, DesugarCollections.unmodifiableList(arrayList), i2);
                default:
                    try {
                        return FontRequestWorker.getFontSync(str, context, (ArrayList) obj, i2);
                    } catch (Throwable unused) {
                        return new TypefaceResult(-3);
                    }
            }
        }
    }

    static {
        ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(0, 1, 10000L, TimeUnit.MILLISECONDS, new LinkedBlockingDeque(), new ActiveResources$1(2));
        threadPoolExecutor.allowCoreThreadTimeOut(true);
        DEFAULT_EXECUTOR_SERVICE = threadPoolExecutor;
        LOCK = new Object();
        PENDING_REPLIES = new SimpleArrayMap(0);
    }

    public static String createCacheId(int i, List list) {
        StringBuilder sb = new StringBuilder();
        for (int i2 = 0; i2 < list.size(); i2++) {
            sb.append(((FontRequest) list.get(i2)).mIdentifier);
            sb.append("-");
            sb.append(i);
            if (i2 < list.size() - 1) {
                sb.append(";");
            }
        }
        return sb.toString();
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0052 A[Catch: all -> 0x00c1, TRY_LEAVE, TryCatch #0 {all -> 0x00c1, all -> 0x00b2, NameNotFoundException -> 0x00b7, all -> 0x007c, blocks: (B:3:0x000b, B:5:0x0013, B:10:0x001c, B:11:0x0020, B:16:0x0052, B:19:0x005b, B:21:0x0061, B:23:0x0067, B:26:0x0078, B:28:0x009d, B:31:0x00a9, B:36:0x007d, B:37:0x0080, B:38:0x0081, B:41:0x0098, B:44:0x00b3, B:45:0x00b6, B:47:0x002f, B:49:0x0037, B:52:0x003b, B:54:0x003f, B:56:0x004a, B:65:0x00b7, B:40:0x0092, B:25:0x0072), top: B:2:0x000b }] */
    /* JADX WARN: Removed duplicated region for block: B:19:0x005b A[Catch: all -> 0x00c1, TRY_ENTER, TryCatch #0 {all -> 0x00c1, all -> 0x00b2, NameNotFoundException -> 0x00b7, all -> 0x007c, blocks: (B:3:0x000b, B:5:0x0013, B:10:0x001c, B:11:0x0020, B:16:0x0052, B:19:0x005b, B:21:0x0061, B:23:0x0067, B:26:0x0078, B:28:0x009d, B:31:0x00a9, B:36:0x007d, B:37:0x0080, B:38:0x0081, B:41:0x0098, B:44:0x00b3, B:45:0x00b6, B:47:0x002f, B:49:0x0037, B:52:0x003b, B:54:0x003f, B:56:0x004a, B:65:0x00b7, B:40:0x0092, B:25:0x0072), top: B:2:0x000b }] */
    /* JADX WARN: Removed duplicated region for block: B:28:0x009d A[Catch: all -> 0x00c1, TRY_LEAVE, TryCatch #0 {all -> 0x00c1, all -> 0x00b2, NameNotFoundException -> 0x00b7, all -> 0x007c, blocks: (B:3:0x000b, B:5:0x0013, B:10:0x001c, B:11:0x0020, B:16:0x0052, B:19:0x005b, B:21:0x0061, B:23:0x0067, B:26:0x0078, B:28:0x009d, B:31:0x00a9, B:36:0x007d, B:37:0x0080, B:38:0x0081, B:41:0x0098, B:44:0x00b3, B:45:0x00b6, B:47:0x002f, B:49:0x0037, B:52:0x003b, B:54:0x003f, B:56:0x004a, B:65:0x00b7, B:40:0x0092, B:25:0x0072), top: B:2:0x000b }] */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00a9 A[Catch: all -> 0x00c1, TRY_ENTER, TRY_LEAVE, TryCatch #0 {all -> 0x00c1, all -> 0x00b2, NameNotFoundException -> 0x00b7, all -> 0x007c, blocks: (B:3:0x000b, B:5:0x0013, B:10:0x001c, B:11:0x0020, B:16:0x0052, B:19:0x005b, B:21:0x0061, B:23:0x0067, B:26:0x0078, B:28:0x009d, B:31:0x00a9, B:36:0x007d, B:37:0x0080, B:38:0x0081, B:41:0x0098, B:44:0x00b3, B:45:0x00b6, B:47:0x002f, B:49:0x0037, B:52:0x003b, B:54:0x003f, B:56:0x004a, B:65:0x00b7, B:40:0x0092, B:25:0x0072), top: B:2:0x000b }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static androidx.core.provider.FontRequestWorker.TypefaceResult getFontSync(java.lang.String r8, android.content.Context r9, java.util.List r10, int r11) {
        /*
            androidx.collection.LruCache r0 = androidx.core.provider.FontRequestWorker.sTypefaceCache
            java.lang.String r1 = "getFontSync"
            java.lang.String r1 = org.slf4j.helpers.Util.truncatedTraceSectionLabel(r1)
            android.os.Trace.beginSection(r1)
            java.lang.Object r1 = r0.get(r8)     // Catch: java.lang.Throwable -> Lc1
            android.graphics.Typeface r1 = (android.graphics.Typeface) r1     // Catch: java.lang.Throwable -> Lc1
            if (r1 == 0) goto L1c
            androidx.core.provider.FontRequestWorker$TypefaceResult r8 = new androidx.core.provider.FontRequestWorker$TypefaceResult     // Catch: java.lang.Throwable -> Lc1
            r8.<init>(r1)     // Catch: java.lang.Throwable -> Lc1
            android.os.Trace.endSection()
            return r8
        L1c:
            androidx.core.provider.FontsContractCompat$FontFamilyResult r10 = androidx.core.provider.FontProvider.getFontFamilyResult(r9, r10)     // Catch: android.content.pm.PackageManager.NameNotFoundException -> Lb7 java.lang.Throwable -> Lc1
            java.util.List r1 = r10.mFonts     // Catch: java.lang.Throwable -> Lc1
            int r10 = r10.mStatusCode     // Catch: java.lang.Throwable -> Lc1
            r2 = 1
            r3 = -3
            r4 = 0
            if (r10 == 0) goto L2f
            if (r10 == r2) goto L2d
        L2b:
            r10 = r3
            goto L50
        L2d:
            r10 = -2
            goto L50
        L2f:
            java.lang.Object r10 = r1.get(r4)     // Catch: java.lang.Throwable -> Lc1
            androidx.core.provider.FontsContractCompat$FontInfo[] r10 = (androidx.core.provider.FontsContractCompat$FontInfo[]) r10     // Catch: java.lang.Throwable -> Lc1
            if (r10 == 0) goto L4f
            int r5 = r10.length     // Catch: java.lang.Throwable -> Lc1
            if (r5 != 0) goto L3b
            goto L4f
        L3b:
            int r5 = r10.length     // Catch: java.lang.Throwable -> Lc1
            r6 = r4
        L3d:
            if (r6 >= r5) goto L4d
            r7 = r10[r6]     // Catch: java.lang.Throwable -> Lc1
            int r7 = r7.mResultCode     // Catch: java.lang.Throwable -> Lc1
            if (r7 == 0) goto L4a
            if (r7 >= 0) goto L48
            goto L2b
        L48:
            r10 = r7
            goto L50
        L4a:
            int r6 = r6 + 1
            goto L3d
        L4d:
            r10 = r4
            goto L50
        L4f:
            r10 = r2
        L50:
            if (r10 == 0) goto L5b
            androidx.core.provider.FontRequestWorker$TypefaceResult r8 = new androidx.core.provider.FontRequestWorker$TypefaceResult     // Catch: java.lang.Throwable -> Lc1
            r8.<init>(r10)     // Catch: java.lang.Throwable -> Lc1
            android.os.Trace.endSection()
            return r8
        L5b:
            int r10 = r1.size()     // Catch: java.lang.Throwable -> Lc1
            if (r10 <= r2) goto L81
            int r10 = android.os.Build.VERSION.SDK_INT     // Catch: java.lang.Throwable -> Lc1
            r2 = 29
            if (r10 < r2) goto L81
            androidx.work.Operation$State r10 = androidx.core.graphics.TypefaceCompat.sTypefaceCompatImpl     // Catch: java.lang.Throwable -> Lc1
            java.lang.String r10 = "TypefaceCompat.createFromFontInfoWithFallback"
            java.lang.String r10 = org.slf4j.helpers.Util.truncatedTraceSectionLabel(r10)     // Catch: java.lang.Throwable -> Lc1
            android.os.Trace.beginSection(r10)     // Catch: java.lang.Throwable -> Lc1
            androidx.work.Operation$State r10 = androidx.core.graphics.TypefaceCompat.sTypefaceCompatImpl     // Catch: java.lang.Throwable -> L7c
            android.graphics.Typeface r9 = r10.createFromFontInfoWithFallback(r9, r1, r11)     // Catch: java.lang.Throwable -> L7c
            android.os.Trace.endSection()     // Catch: java.lang.Throwable -> Lc1
            goto L9b
        L7c:
            r8 = move-exception
            android.os.Trace.endSection()     // Catch: java.lang.Throwable -> Lc1
            throw r8     // Catch: java.lang.Throwable -> Lc1
        L81:
            java.lang.Object r10 = r1.get(r4)     // Catch: java.lang.Throwable -> Lc1
            androidx.core.provider.FontsContractCompat$FontInfo[] r10 = (androidx.core.provider.FontsContractCompat$FontInfo[]) r10     // Catch: java.lang.Throwable -> Lc1
            androidx.work.Operation$State r1 = androidx.core.graphics.TypefaceCompat.sTypefaceCompatImpl     // Catch: java.lang.Throwable -> Lc1
            java.lang.String r1 = "TypefaceCompat.createFromFontInfo"
            java.lang.String r1 = org.slf4j.helpers.Util.truncatedTraceSectionLabel(r1)     // Catch: java.lang.Throwable -> Lc1
            android.os.Trace.beginSection(r1)     // Catch: java.lang.Throwable -> Lc1
            androidx.work.Operation$State r1 = androidx.core.graphics.TypefaceCompat.sTypefaceCompatImpl     // Catch: java.lang.Throwable -> Lb2
            android.graphics.Typeface r9 = r1.createFromFontInfo(r9, r10, r11)     // Catch: java.lang.Throwable -> Lb2
            android.os.Trace.endSection()     // Catch: java.lang.Throwable -> Lc1
        L9b:
            if (r9 == 0) goto La9
            r0.put(r8, r9)     // Catch: java.lang.Throwable -> Lc1
            androidx.core.provider.FontRequestWorker$TypefaceResult r8 = new androidx.core.provider.FontRequestWorker$TypefaceResult     // Catch: java.lang.Throwable -> Lc1
            r8.<init>(r9)     // Catch: java.lang.Throwable -> Lc1
            android.os.Trace.endSection()
            return r8
        La9:
            androidx.core.provider.FontRequestWorker$TypefaceResult r8 = new androidx.core.provider.FontRequestWorker$TypefaceResult     // Catch: java.lang.Throwable -> Lc1
            r8.<init>(r3)     // Catch: java.lang.Throwable -> Lc1
            android.os.Trace.endSection()
            return r8
        Lb2:
            r8 = move-exception
            android.os.Trace.endSection()     // Catch: java.lang.Throwable -> Lc1
            throw r8     // Catch: java.lang.Throwable -> Lc1
        Lb7:
            androidx.core.provider.FontRequestWorker$TypefaceResult r8 = new androidx.core.provider.FontRequestWorker$TypefaceResult     // Catch: java.lang.Throwable -> Lc1
            r9 = -1
            r8.<init>(r9)     // Catch: java.lang.Throwable -> Lc1
            android.os.Trace.endSection()
            return r8
        Lc1:
            r8 = move-exception
            android.os.Trace.endSection()
            throw r8
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.core.provider.FontRequestWorker.getFontSync(java.lang.String, android.content.Context, java.util.List, int):androidx.core.provider.FontRequestWorker$TypefaceResult");
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class TypefaceResult {
        public final int mResult;
        public final Typeface mTypeface;

        public TypefaceResult(int i) {
            this.mTypeface = null;
            this.mResult = i;
        }

        public TypefaceResult(Typeface typeface) {
            this.mTypeface = typeface;
            this.mResult = 0;
        }
    }
}
