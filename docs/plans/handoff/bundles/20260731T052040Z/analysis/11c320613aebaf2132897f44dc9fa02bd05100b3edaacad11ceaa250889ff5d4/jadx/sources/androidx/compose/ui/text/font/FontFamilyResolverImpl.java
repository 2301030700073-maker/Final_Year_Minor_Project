package androidx.compose.ui.text.font;

import androidx.cardview.widget.CardView;
import androidx.compose.ui.text.platform.DispatcherKt;
import androidx.transition.Transition;
import coil3.RealImageLoaderKt$CoroutineScope$$inlined$CoroutineExceptionHandler$1;
import coil3.disk.DiskLruCache$$ExternalSyntheticLambda0;
import coil3.memory.MemoryCacheService;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.ranges.RangesKt;
import kotlinx.coroutines.JobKt;
import kotlinx.coroutines.SupervisorJobImpl;
import kotlinx.coroutines.android.HandlerContext;
import net.newpipe.app.AppKt;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class FontFamilyResolverImpl implements FontFamily$Resolver {
    public final FontListFontFamilyTypefaceAdapter fontListFontFamilyTypefaceAdapter;
    public final MemoryCacheService platformFamilyTypefaceAdapter;
    public final Transition.AnonymousClass1 platformFontLoader;
    public final AndroidFontResolveInterceptor platformResolveInterceptor;
    public final CardView.AnonymousClass1 typefaceRequestCache;

    public FontFamilyResolverImpl(Transition.AnonymousClass1 anonymousClass1, AndroidFontResolveInterceptor androidFontResolveInterceptor) {
        CardView.AnonymousClass1 anonymousClass12 = FontFamilyResolverKt.GlobalTypefaceRequestCache;
        FontListFontFamilyTypefaceAdapter fontListFontFamilyTypefaceAdapter = new FontListFontFamilyTypefaceAdapter();
        RealImageLoaderKt$CoroutineScope$$inlined$CoroutineExceptionHandler$1 realImageLoaderKt$CoroutineScope$$inlined$CoroutineExceptionHandler$1 = FontListFontFamilyTypefaceAdapter.DropExceptionHandler;
        HandlerContext handlerContext = DispatcherKt.FontCacheManagementDispatcher;
        realImageLoaderKt$CoroutineScope$$inlined$CoroutineExceptionHandler$1.getClass();
        JobKt.CoroutineScope(AppKt.plus(realImageLoaderKt$CoroutineScope$$inlined$CoroutineExceptionHandler$1, handlerContext).plus(EmptyCoroutineContext.INSTANCE).plus(new SupervisorJobImpl(null)));
        MemoryCacheService memoryCacheService = new MemoryCacheService(4);
        this.platformFontLoader = anonymousClass1;
        this.platformResolveInterceptor = androidFontResolveInterceptor;
        this.typefaceRequestCache = anonymousClass12;
        this.fontListFontFamilyTypefaceAdapter = fontListFontFamilyTypefaceAdapter;
        this.platformFamilyTypefaceAdapter = memoryCacheService;
        new DiskLruCache$$ExternalSyntheticLambda0(this, 19);
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x0058  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x0079 A[Catch: Exception -> 0x0081, TRY_ENTER, TryCatch #2 {Exception -> 0x0081, blocks: (B:15:0x0027, B:17:0x003a, B:20:0x003f, B:22:0x0043, B:23:0x0050, B:39:0x0079, B:40:0x0080, B:43:0x004c), top: B:14:0x0027 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final androidx.compose.ui.text.font.TypefaceResult$Immutable resolve(androidx.compose.ui.text.font.TypefaceRequest r6) {
        /*
            r5 = this;
            androidx.cardview.widget.CardView$1 r0 = r5.typefaceRequestCache
            java.lang.Object r1 = r0.mCardBackground
            androidx.transition.Transition$1 r1 = (androidx.transition.Transition.AnonymousClass1) r1
            monitor-enter(r1)
            java.lang.Object r2 = r0.this$0     // Catch: java.lang.Throwable -> L24
            androidx.collection.LruCache r2 = (androidx.collection.LruCache) r2     // Catch: java.lang.Throwable -> L24
            java.lang.Object r2 = r2.get(r6)     // Catch: java.lang.Throwable -> L24
            androidx.compose.ui.text.font.TypefaceResult$Immutable r2 = (androidx.compose.ui.text.font.TypefaceResult$Immutable) r2     // Catch: java.lang.Throwable -> L24
            if (r2 == 0) goto L26
            boolean r3 = r2.cacheable     // Catch: java.lang.Throwable -> L24
            if (r3 == 0) goto L19
            monitor-exit(r1)
            return r2
        L19:
            java.lang.Object r2 = r0.this$0     // Catch: java.lang.Throwable -> L24
            androidx.collection.LruCache r2 = (androidx.collection.LruCache) r2     // Catch: java.lang.Throwable -> L24
            java.lang.Object r2 = r2.remove(r6)     // Catch: java.lang.Throwable -> L24
            androidx.compose.ui.text.font.TypefaceResult$Immutable r2 = (androidx.compose.ui.text.font.TypefaceResult$Immutable) r2     // Catch: java.lang.Throwable -> L24
            goto L26
        L24:
            r5 = move-exception
            goto L8a
        L26:
            monitor-exit(r1)
            androidx.compose.ui.text.font.FontListFontFamilyTypefaceAdapter r1 = r5.fontListFontFamilyTypefaceAdapter     // Catch: java.lang.Exception -> L81
            r1.getClass()     // Catch: java.lang.Exception -> L81
            androidx.compose.ui.text.font.SystemFontFamily r1 = r6.fontFamily     // Catch: java.lang.Exception -> L81
            coil3.memory.MemoryCacheService r5 = r5.platformFamilyTypefaceAdapter     // Catch: java.lang.Exception -> L81
            java.lang.Object r5 = r5.imageLoader     // Catch: java.lang.Exception -> L81
            androidx.compose.ui.text.font.PlatformTypefaces r5 = (androidx.compose.ui.text.font.PlatformTypefaces) r5     // Catch: java.lang.Exception -> L81
            int r2 = r6.fontStyle     // Catch: java.lang.Exception -> L81
            androidx.compose.ui.text.font.FontWeight r3 = r6.fontWeight     // Catch: java.lang.Exception -> L81
            if (r1 == 0) goto L4c
            boolean r4 = r1 instanceof androidx.compose.ui.text.font.DefaultFontFamily     // Catch: java.lang.Exception -> L81
            if (r4 == 0) goto L3f
            goto L4c
        L3f:
            boolean r4 = r1 instanceof androidx.compose.ui.text.font.GenericFontFamily     // Catch: java.lang.Exception -> L81
            if (r4 == 0) goto L4a
            androidx.compose.ui.text.font.GenericFontFamily r1 = (androidx.compose.ui.text.font.GenericFontFamily) r1     // Catch: java.lang.Exception -> L81
            android.graphics.Typeface r5 = r5.mo414createNamedRetOiIg(r1, r3, r2)     // Catch: java.lang.Exception -> L81
            goto L50
        L4a:
            r5 = 0
            goto L56
        L4c:
            android.graphics.Typeface r5 = r5.mo413createDefaultFO1MlWM(r3, r2)     // Catch: java.lang.Exception -> L81
        L50:
            androidx.compose.ui.text.font.TypefaceResult$Immutable r1 = new androidx.compose.ui.text.font.TypefaceResult$Immutable     // Catch: java.lang.Exception -> L81
            r1.<init>(r5)     // Catch: java.lang.Exception -> L81
            r5 = r1
        L56:
            if (r5 == 0) goto L79
            java.lang.Object r1 = r0.mCardBackground
            androidx.transition.Transition$1 r1 = (androidx.transition.Transition.AnonymousClass1) r1
            monitor-enter(r1)
            java.lang.Object r2 = r0.this$0     // Catch: java.lang.Throwable -> L73
            androidx.collection.LruCache r2 = (androidx.collection.LruCache) r2     // Catch: java.lang.Throwable -> L73
            java.lang.Object r2 = r2.get(r6)     // Catch: java.lang.Throwable -> L73
            if (r2 != 0) goto L75
            boolean r2 = r5.cacheable     // Catch: java.lang.Throwable -> L73
            if (r2 == 0) goto L75
            java.lang.Object r0 = r0.this$0     // Catch: java.lang.Throwable -> L73
            androidx.collection.LruCache r0 = (androidx.collection.LruCache) r0     // Catch: java.lang.Throwable -> L73
            r0.put(r6, r5)     // Catch: java.lang.Throwable -> L73
            goto L75
        L73:
            r5 = move-exception
            goto L77
        L75:
            monitor-exit(r1)
            return r5
        L77:
            monitor-exit(r1)
            throw r5
        L79:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException     // Catch: java.lang.Exception -> L81
            java.lang.String r6 = "Could not load font"
            r5.<init>(r6)     // Catch: java.lang.Exception -> L81
            throw r5     // Catch: java.lang.Exception -> L81
        L81:
            r5 = move-exception
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r0 = "Could not load font"
            r6.<init>(r0, r5)
            throw r6
        L8a:
            monitor-exit(r1)
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.ui.text.font.FontFamilyResolverImpl.resolve(androidx.compose.ui.text.font.TypefaceRequest):androidx.compose.ui.text.font.TypefaceResult$Immutable");
    }

    /* renamed from: resolve-DPcqOEQ, reason: not valid java name */
    public final TypefaceResult$Immutable m412resolveDPcqOEQ(SystemFontFamily systemFontFamily, FontWeight fontWeight, int i, int i2) {
        AndroidFontResolveInterceptor androidFontResolveInterceptor = this.platformResolveInterceptor;
        androidFontResolveInterceptor.getClass();
        int i3 = androidFontResolveInterceptor.fontWeightAdjustment;
        FontWeight fontWeight2 = (i3 == 0 || i3 == Integer.MAX_VALUE) ? fontWeight : new FontWeight(RangesKt.coerceIn(fontWeight.weight + i3, 1, 1000));
        this.platformFontLoader.getClass();
        return resolve(new TypefaceRequest(systemFontFamily, fontWeight2, i, i2, null));
    }
}
