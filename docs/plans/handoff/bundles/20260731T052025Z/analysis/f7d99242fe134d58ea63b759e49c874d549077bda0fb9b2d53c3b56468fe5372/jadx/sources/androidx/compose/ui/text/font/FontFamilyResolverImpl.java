package androidx.compose.ui.text.font;

import androidx.camera.view.PreviewView;
import androidx.compose.ui.platform.WeakCache;
import androidx.compose.ui.text.platform.DispatcherKt;
import coil3.disk.DiskLruCache$$ExternalSyntheticLambda0;
import com.mikepenz.fastadapter.VerboseLogger;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.ranges.RangesKt;
import kotlinx.coroutines.JobKt;
import kotlinx.coroutines.SupervisorJobImpl;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class FontFamilyResolverImpl implements FontFamily$Resolver {
    public final FontListFontFamilyTypefaceAdapter fontListFontFamilyTypefaceAdapter;
    public final PreviewView.AnonymousClass1 platformFamilyTypefaceAdapter;
    public final VerboseLogger platformFontLoader;
    public final AndroidFontResolveInterceptor platformResolveInterceptor;
    public final WeakCache typefaceRequestCache;

    public FontFamilyResolverImpl(VerboseLogger verboseLogger, AndroidFontResolveInterceptor androidFontResolveInterceptor) {
        WeakCache weakCache = FontFamilyResolverKt.GlobalTypefaceRequestCache;
        FontListFontFamilyTypefaceAdapter fontListFontFamilyTypefaceAdapter = new FontListFontFamilyTypefaceAdapter();
        JobKt.CoroutineScope(FontListFontFamilyTypefaceAdapter.DropExceptionHandler.plus(DispatcherKt.FontCacheManagementDispatcher).plus(EmptyCoroutineContext.INSTANCE).plus(new SupervisorJobImpl(null)));
        PreviewView.AnonymousClass1 anonymousClass1 = new PreviewView.AnonymousClass1(29);
        this.platformFontLoader = verboseLogger;
        this.platformResolveInterceptor = androidFontResolveInterceptor;
        this.typefaceRequestCache = weakCache;
        this.fontListFontFamilyTypefaceAdapter = fontListFontFamilyTypefaceAdapter;
        this.platformFamilyTypefaceAdapter = anonymousClass1;
        new DiskLruCache$$ExternalSyntheticLambda0(14, this);
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x0058  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x0079 A[Catch: Exception -> 0x0081, TRY_ENTER, TryCatch #2 {Exception -> 0x0081, blocks: (B:16:0x0028, B:18:0x003b, B:21:0x0040, B:23:0x0044, B:24:0x0051, B:39:0x0079, B:40:0x0080, B:43:0x004d), top: B:15:0x0028 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final androidx.compose.ui.text.font.TypefaceResult$Immutable resolve(androidx.compose.ui.text.font.TypefaceRequest r7) {
        /*
            r6 = this;
            androidx.compose.ui.platform.WeakCache r0 = r6.typefaceRequestCache
            java.lang.Object r1 = r0.values
            androidx.collection.internal.Lock r1 = (androidx.collection.internal.Lock) r1
            monitor-enter(r1)
            java.lang.Object r2 = r0.referenceQueue     // Catch: java.lang.Throwable -> L24
            androidx.collection.LruCache r2 = (androidx.collection.LruCache) r2     // Catch: java.lang.Throwable -> L24
            java.lang.Object r2 = r2.get(r7)     // Catch: java.lang.Throwable -> L24
            androidx.compose.ui.text.font.TypefaceResult$Immutable r2 = (androidx.compose.ui.text.font.TypefaceResult$Immutable) r2     // Catch: java.lang.Throwable -> L24
            if (r2 == 0) goto L26
            boolean r3 = r2.cacheable     // Catch: java.lang.Throwable -> L24
            if (r3 == 0) goto L19
            monitor-exit(r1)
            return r2
        L19:
            java.lang.Object r2 = r0.referenceQueue     // Catch: java.lang.Throwable -> L24
            androidx.collection.LruCache r2 = (androidx.collection.LruCache) r2     // Catch: java.lang.Throwable -> L24
            java.lang.Object r2 = r2.remove(r7)     // Catch: java.lang.Throwable -> L24
            androidx.compose.ui.text.font.TypefaceResult$Immutable r2 = (androidx.compose.ui.text.font.TypefaceResult$Immutable) r2     // Catch: java.lang.Throwable -> L24
            goto L26
        L24:
            r6 = move-exception
            goto L88
        L26:
            monitor-exit(r1)
            r1 = 0
            androidx.compose.ui.text.font.FontListFontFamilyTypefaceAdapter r2 = r6.fontListFontFamilyTypefaceAdapter     // Catch: java.lang.Exception -> L81
            r2.getClass()     // Catch: java.lang.Exception -> L81
            androidx.compose.ui.text.font.SystemFontFamily r2 = r7.fontFamily     // Catch: java.lang.Exception -> L81
            androidx.camera.view.PreviewView$1 r6 = r6.platformFamilyTypefaceAdapter     // Catch: java.lang.Exception -> L81
            java.lang.Object r6 = r6.this$0     // Catch: java.lang.Exception -> L81
            androidx.compose.ui.text.font.PlatformTypefaces r6 = (androidx.compose.ui.text.font.PlatformTypefaces) r6     // Catch: java.lang.Exception -> L81
            int r3 = r7.fontStyle     // Catch: java.lang.Exception -> L81
            androidx.compose.ui.text.font.FontWeight r4 = r7.fontWeight     // Catch: java.lang.Exception -> L81
            if (r2 == 0) goto L4d
            boolean r5 = r2 instanceof androidx.compose.ui.text.font.DefaultFontFamily     // Catch: java.lang.Exception -> L81
            if (r5 == 0) goto L40
            goto L4d
        L40:
            boolean r5 = r2 instanceof androidx.compose.ui.text.font.GenericFontFamily     // Catch: java.lang.Exception -> L81
            if (r5 == 0) goto L4b
            androidx.compose.ui.text.font.GenericFontFamily r2 = (androidx.compose.ui.text.font.GenericFontFamily) r2     // Catch: java.lang.Exception -> L81
            android.graphics.Typeface r6 = r6.mo710createNamedRetOiIg(r2, r4, r3)     // Catch: java.lang.Exception -> L81
            goto L51
        L4b:
            r2 = r1
            goto L56
        L4d:
            android.graphics.Typeface r6 = r6.mo709createDefaultFO1MlWM(r4, r3)     // Catch: java.lang.Exception -> L81
        L51:
            androidx.compose.ui.text.font.TypefaceResult$Immutable r2 = new androidx.compose.ui.text.font.TypefaceResult$Immutable     // Catch: java.lang.Exception -> L81
            r2.<init>(r6)     // Catch: java.lang.Exception -> L81
        L56:
            if (r2 == 0) goto L79
            java.lang.Object r6 = r0.values
            androidx.collection.internal.Lock r6 = (androidx.collection.internal.Lock) r6
            monitor-enter(r6)
            java.lang.Object r1 = r0.referenceQueue     // Catch: java.lang.Throwable -> L73
            androidx.collection.LruCache r1 = (androidx.collection.LruCache) r1     // Catch: java.lang.Throwable -> L73
            java.lang.Object r1 = r1.get(r7)     // Catch: java.lang.Throwable -> L73
            if (r1 != 0) goto L75
            boolean r1 = r2.cacheable     // Catch: java.lang.Throwable -> L73
            if (r1 == 0) goto L75
            java.lang.Object r0 = r0.referenceQueue     // Catch: java.lang.Throwable -> L73
            androidx.collection.LruCache r0 = (androidx.collection.LruCache) r0     // Catch: java.lang.Throwable -> L73
            r0.put(r7, r2)     // Catch: java.lang.Throwable -> L73
            goto L75
        L73:
            r7 = move-exception
            goto L77
        L75:
            monitor-exit(r6)
            return r2
        L77:
            monitor-exit(r6)
            throw r7
        L79:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException     // Catch: java.lang.Exception -> L81
            java.lang.String r7 = "Could not load font"
            r6.<init>(r7)     // Catch: java.lang.Exception -> L81
            throw r6     // Catch: java.lang.Exception -> L81
        L81:
            r6 = move-exception
            java.lang.String r7 = "Could not load font"
            coil3.UriKt$$ExternalSyntheticBUOutline0.m(r7, r6)
            return r1
        L88:
            monitor-exit(r1)
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.ui.text.font.FontFamilyResolverImpl.resolve(androidx.compose.ui.text.font.TypefaceRequest):androidx.compose.ui.text.font.TypefaceResult$Immutable");
    }

    /* renamed from: resolve-DPcqOEQ, reason: not valid java name */
    public final TypefaceResult$Immutable m708resolveDPcqOEQ(SystemFontFamily systemFontFamily, FontWeight fontWeight, int i, int i2) {
        AndroidFontResolveInterceptor androidFontResolveInterceptor = this.platformResolveInterceptor;
        androidFontResolveInterceptor.getClass();
        int i3 = androidFontResolveInterceptor.fontWeightAdjustment;
        FontWeight fontWeight2 = (i3 == 0 || i3 == Integer.MAX_VALUE) ? fontWeight : new FontWeight(RangesKt.coerceIn(fontWeight.weight + i3, 1, 1000));
        this.platformFontLoader.getClass();
        return resolve(new TypefaceRequest(systemFontFamily, fontWeight2, i, i2, null));
    }
}
