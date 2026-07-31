package androidx.core.provider;

import android.content.Context;
import android.graphics.Typeface;
import androidx.cardview.widget.CardView;
import androidx.collection.LruCache;
import androidx.collection.SimpleArrayMap;
import androidx.compose.ui.node.Owner;
import androidx.core.util.Consumer;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.LinkedBlockingDeque;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract class FontRequestWorker {
    public static final ThreadPoolExecutor DEFAULT_EXECUTOR_SERVICE;
    public static final Object LOCK;
    public static final SimpleArrayMap PENDING_REPLIES;
    public static final LruCache sTypefaceCache = new LruCache(16);

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
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
                    return FontRequestWorker.getFontSync(str, context, Owner.CC.m(obj2, arrayList, obj2, arrayList), i2);
                default:
                    try {
                        return FontRequestWorker.getFontSync(str, context, (ArrayList) obj, i2);
                    } catch (Throwable unused) {
                        return new TypefaceResult(-3);
                    }
            }
        }
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    /* renamed from: androidx.core.provider.FontRequestWorker$2, reason: invalid class name */
    public final class AnonymousClass2 implements Consumer {
        public final /* synthetic */ int $r8$classId;
        public final /* synthetic */ Object val$callback;

        public /* synthetic */ AnonymousClass2(Object obj, int i) {
            this.$r8$classId = i;
            this.val$callback = obj;
        }

        @Override // androidx.core.util.Consumer
        public final void accept(Object obj) {
            switch (this.$r8$classId) {
                case 0:
                    TypefaceResult typefaceResult = (TypefaceResult) obj;
                    if (typefaceResult == null) {
                        typefaceResult = new TypefaceResult(-3);
                    }
                    ((CardView.AnonymousClass1) this.val$callback).onTypefaceResult(typefaceResult);
                    return;
                default:
                    TypefaceResult typefaceResult2 = (TypefaceResult) obj;
                    synchronized (FontRequestWorker.LOCK) {
                        try {
                            SimpleArrayMap simpleArrayMap = FontRequestWorker.PENDING_REPLIES;
                            ArrayList arrayList = (ArrayList) simpleArrayMap.get((String) this.val$callback);
                            if (arrayList == null) {
                                return;
                            }
                            simpleArrayMap.remove((String) this.val$callback);
                            for (int i = 0; i < arrayList.size(); i++) {
                                ((Consumer) arrayList.get(i)).accept(typefaceResult2);
                            }
                            return;
                        } finally {
                        }
                    }
            }
        }
    }

    static {
        ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(0, 1, 10000L, TimeUnit.MILLISECONDS, new LinkedBlockingDeque(), new RequestExecutor$DefaultThreadFactory());
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

    /* JADX WARN: Removed duplicated region for block: B:16:0x0054 A[Catch: all -> 0x00c3, TRY_LEAVE, TryCatch #1 {all -> 0x00c3, NameNotFoundException -> 0x00b9, all -> 0x00b4, all -> 0x007e, blocks: (B:3:0x000b, B:5:0x0013, B:10:0x001c, B:11:0x0020, B:16:0x0054, B:19:0x005d, B:21:0x0063, B:23:0x0069, B:26:0x007a, B:28:0x009f, B:31:0x00ab, B:36:0x007f, B:37:0x0082, B:38:0x0083, B:41:0x009a, B:44:0x00b5, B:45:0x00b8, B:47:0x0031, B:49:0x0039, B:52:0x003d, B:54:0x0041, B:56:0x004c, B:65:0x00b9, B:40:0x0094, B:25:0x0074), top: B:2:0x000b }] */
    /* JADX WARN: Removed duplicated region for block: B:19:0x005d A[Catch: all -> 0x00c3, TRY_ENTER, TryCatch #1 {all -> 0x00c3, NameNotFoundException -> 0x00b9, all -> 0x00b4, all -> 0x007e, blocks: (B:3:0x000b, B:5:0x0013, B:10:0x001c, B:11:0x0020, B:16:0x0054, B:19:0x005d, B:21:0x0063, B:23:0x0069, B:26:0x007a, B:28:0x009f, B:31:0x00ab, B:36:0x007f, B:37:0x0082, B:38:0x0083, B:41:0x009a, B:44:0x00b5, B:45:0x00b8, B:47:0x0031, B:49:0x0039, B:52:0x003d, B:54:0x0041, B:56:0x004c, B:65:0x00b9, B:40:0x0094, B:25:0x0074), top: B:2:0x000b }] */
    /* JADX WARN: Removed duplicated region for block: B:28:0x009f A[Catch: all -> 0x00c3, TRY_LEAVE, TryCatch #1 {all -> 0x00c3, NameNotFoundException -> 0x00b9, all -> 0x00b4, all -> 0x007e, blocks: (B:3:0x000b, B:5:0x0013, B:10:0x001c, B:11:0x0020, B:16:0x0054, B:19:0x005d, B:21:0x0063, B:23:0x0069, B:26:0x007a, B:28:0x009f, B:31:0x00ab, B:36:0x007f, B:37:0x0082, B:38:0x0083, B:41:0x009a, B:44:0x00b5, B:45:0x00b8, B:47:0x0031, B:49:0x0039, B:52:0x003d, B:54:0x0041, B:56:0x004c, B:65:0x00b9, B:40:0x0094, B:25:0x0074), top: B:2:0x000b }] */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00ab A[Catch: all -> 0x00c3, TRY_ENTER, TRY_LEAVE, TryCatch #1 {all -> 0x00c3, NameNotFoundException -> 0x00b9, all -> 0x00b4, all -> 0x007e, blocks: (B:3:0x000b, B:5:0x0013, B:10:0x001c, B:11:0x0020, B:16:0x0054, B:19:0x005d, B:21:0x0063, B:23:0x0069, B:26:0x007a, B:28:0x009f, B:31:0x00ab, B:36:0x007f, B:37:0x0082, B:38:0x0083, B:41:0x009a, B:44:0x00b5, B:45:0x00b8, B:47:0x0031, B:49:0x0039, B:52:0x003d, B:54:0x0041, B:56:0x004c, B:65:0x00b9, B:40:0x0094, B:25:0x0074), top: B:2:0x000b }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static androidx.core.provider.FontRequestWorker.TypefaceResult getFontSync(java.lang.String r8, android.content.Context r9, java.util.List r10, int r11) {
        /*
            androidx.collection.LruCache r0 = androidx.core.provider.FontRequestWorker.sTypefaceCache
            java.lang.String r1 = "getFontSync"
            java.lang.String r1 = androidx.room.Room.truncatedTraceSectionLabel(r1)
            android.os.Trace.beginSection(r1)
            java.lang.Object r1 = r0.get(r8)     // Catch: java.lang.Throwable -> Lc3
            android.graphics.Typeface r1 = (android.graphics.Typeface) r1     // Catch: java.lang.Throwable -> Lc3
            if (r1 == 0) goto L1c
            androidx.core.provider.FontRequestWorker$TypefaceResult r8 = new androidx.core.provider.FontRequestWorker$TypefaceResult     // Catch: java.lang.Throwable -> Lc3
            r8.<init>(r1)     // Catch: java.lang.Throwable -> Lc3
            android.os.Trace.endSection()
            return r8
        L1c:
            okio.PriorityQueue r10 = androidx.core.provider.FontProvider.getFontFamilyResult(r9, r10)     // Catch: android.content.pm.PackageManager.NameNotFoundException -> Lb9 java.lang.Throwable -> Lc3
            java.lang.Object r1 = r10.array     // Catch: java.lang.Throwable -> Lc3
            java.util.List r1 = (java.util.List) r1     // Catch: java.lang.Throwable -> Lc3
            int r10 = r10.size     // Catch: java.lang.Throwable -> Lc3
            r2 = 1
            r3 = -3
            r4 = 0
            if (r10 == 0) goto L31
            if (r10 == r2) goto L2f
        L2d:
            r10 = r3
            goto L52
        L2f:
            r10 = -2
            goto L52
        L31:
            java.lang.Object r10 = r1.get(r4)     // Catch: java.lang.Throwable -> Lc3
            androidx.core.provider.FontsContractCompat$FontInfo[] r10 = (androidx.core.provider.FontsContractCompat$FontInfo[]) r10     // Catch: java.lang.Throwable -> Lc3
            if (r10 == 0) goto L51
            int r5 = r10.length     // Catch: java.lang.Throwable -> Lc3
            if (r5 != 0) goto L3d
            goto L51
        L3d:
            int r5 = r10.length     // Catch: java.lang.Throwable -> Lc3
            r6 = r4
        L3f:
            if (r6 >= r5) goto L4f
            r7 = r10[r6]     // Catch: java.lang.Throwable -> Lc3
            int r7 = r7.mResultCode     // Catch: java.lang.Throwable -> Lc3
            if (r7 == 0) goto L4c
            if (r7 >= 0) goto L4a
            goto L2d
        L4a:
            r10 = r7
            goto L52
        L4c:
            int r6 = r6 + 1
            goto L3f
        L4f:
            r10 = r4
            goto L52
        L51:
            r10 = r2
        L52:
            if (r10 == 0) goto L5d
            androidx.core.provider.FontRequestWorker$TypefaceResult r8 = new androidx.core.provider.FontRequestWorker$TypefaceResult     // Catch: java.lang.Throwable -> Lc3
            r8.<init>(r10)     // Catch: java.lang.Throwable -> Lc3
            android.os.Trace.endSection()
            return r8
        L5d:
            int r10 = r1.size()     // Catch: java.lang.Throwable -> Lc3
            if (r10 <= r2) goto L83
            int r10 = android.os.Build.VERSION.SDK_INT     // Catch: java.lang.Throwable -> Lc3
            r2 = 29
            if (r10 < r2) goto L83
            okio.Options$Companion r10 = androidx.core.graphics.TypefaceCompat.sTypefaceCompatImpl     // Catch: java.lang.Throwable -> Lc3
            java.lang.String r10 = "TypefaceCompat.createFromFontInfoWithFallback"
            java.lang.String r10 = androidx.room.Room.truncatedTraceSectionLabel(r10)     // Catch: java.lang.Throwable -> Lc3
            android.os.Trace.beginSection(r10)     // Catch: java.lang.Throwable -> Lc3
            okio.Options$Companion r10 = androidx.core.graphics.TypefaceCompat.sTypefaceCompatImpl     // Catch: java.lang.Throwable -> L7e
            android.graphics.Typeface r9 = r10.createFromFontInfoWithFallback(r9, r1, r11)     // Catch: java.lang.Throwable -> L7e
            android.os.Trace.endSection()     // Catch: java.lang.Throwable -> Lc3
            goto L9d
        L7e:
            r8 = move-exception
            android.os.Trace.endSection()     // Catch: java.lang.Throwable -> Lc3
            throw r8     // Catch: java.lang.Throwable -> Lc3
        L83:
            java.lang.Object r10 = r1.get(r4)     // Catch: java.lang.Throwable -> Lc3
            androidx.core.provider.FontsContractCompat$FontInfo[] r10 = (androidx.core.provider.FontsContractCompat$FontInfo[]) r10     // Catch: java.lang.Throwable -> Lc3
            okio.Options$Companion r1 = androidx.core.graphics.TypefaceCompat.sTypefaceCompatImpl     // Catch: java.lang.Throwable -> Lc3
            java.lang.String r1 = "TypefaceCompat.createFromFontInfo"
            java.lang.String r1 = androidx.room.Room.truncatedTraceSectionLabel(r1)     // Catch: java.lang.Throwable -> Lc3
            android.os.Trace.beginSection(r1)     // Catch: java.lang.Throwable -> Lc3
            okio.Options$Companion r1 = androidx.core.graphics.TypefaceCompat.sTypefaceCompatImpl     // Catch: java.lang.Throwable -> Lb4
            android.graphics.Typeface r9 = r1.createFromFontInfo(r9, r10, r11)     // Catch: java.lang.Throwable -> Lb4
            android.os.Trace.endSection()     // Catch: java.lang.Throwable -> Lc3
        L9d:
            if (r9 == 0) goto Lab
            r0.put(r8, r9)     // Catch: java.lang.Throwable -> Lc3
            androidx.core.provider.FontRequestWorker$TypefaceResult r8 = new androidx.core.provider.FontRequestWorker$TypefaceResult     // Catch: java.lang.Throwable -> Lc3
            r8.<init>(r9)     // Catch: java.lang.Throwable -> Lc3
            android.os.Trace.endSection()
            return r8
        Lab:
            androidx.core.provider.FontRequestWorker$TypefaceResult r8 = new androidx.core.provider.FontRequestWorker$TypefaceResult     // Catch: java.lang.Throwable -> Lc3
            r8.<init>(r3)     // Catch: java.lang.Throwable -> Lc3
            android.os.Trace.endSection()
            return r8
        Lb4:
            r8 = move-exception
            android.os.Trace.endSection()     // Catch: java.lang.Throwable -> Lc3
            throw r8     // Catch: java.lang.Throwable -> Lc3
        Lb9:
            androidx.core.provider.FontRequestWorker$TypefaceResult r8 = new androidx.core.provider.FontRequestWorker$TypefaceResult     // Catch: java.lang.Throwable -> Lc3
            r9 = -1
            r8.<init>(r9)     // Catch: java.lang.Throwable -> Lc3
            android.os.Trace.endSection()
            return r8
        Lc3:
            r8 = move-exception
            android.os.Trace.endSection()
            throw r8
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.core.provider.FontRequestWorker.getFontSync(java.lang.String, android.content.Context, java.util.List, int):androidx.core.provider.FontRequestWorker$TypefaceResult");
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
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
