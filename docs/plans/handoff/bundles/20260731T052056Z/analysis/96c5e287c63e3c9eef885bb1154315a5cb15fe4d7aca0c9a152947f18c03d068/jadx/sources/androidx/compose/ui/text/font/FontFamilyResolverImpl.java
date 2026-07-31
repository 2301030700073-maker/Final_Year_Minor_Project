package androidx.compose.ui.text.font;

import androidx.cardview.widget.CardView;
import androidx.collection.internal.Lock;
import androidx.compose.ui.text.font.FontFamily;
import androidx.compose.ui.text.platform.DispatcherKt;
import androidx.paging.HintHandler;
import androidx.work.OperationKt;
import coil3.disk.DiskLruCache$$ExternalSyntheticLambda0;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.text.RegexKt;
import kotlinx.coroutines.AwaitKt;
import kotlinx.coroutines.SupervisorJobImpl;
import kotlinx.coroutines.android.HandlerContext;
import org.wikipedia.WikipediaApp$logOut$$inlined$CoroutineExceptionHandler$1;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class FontFamilyResolverImpl implements FontFamily.Resolver {
    public final HintHandler platformFamilyTypefaceAdapter;
    public final AndroidFontResolveInterceptor platformResolveInterceptor;
    public final CardView.AnonymousClass1 typefaceRequestCache;

    public FontFamilyResolverImpl(Lock lock, AndroidFontResolveInterceptor androidFontResolveInterceptor) {
        CardView.AnonymousClass1 anonymousClass1 = FontFamilyResolverKt.GlobalTypefaceRequestCache;
        WikipediaApp$logOut$$inlined$CoroutineExceptionHandler$1 wikipediaApp$logOut$$inlined$CoroutineExceptionHandler$1 = FontListFontFamilyTypefaceAdapter.DropExceptionHandler;
        HandlerContext handlerContext = DispatcherKt.FontCacheManagementDispatcher;
        wikipediaApp$logOut$$inlined$CoroutineExceptionHandler$1.getClass();
        AwaitKt.CoroutineScope(OperationKt.plus(wikipediaApp$logOut$$inlined$CoroutineExceptionHandler$1, handlerContext).plus(EmptyCoroutineContext.INSTANCE).plus(new SupervisorJobImpl(null)));
        HintHandler hintHandler = new HintHandler(8);
        this.platformResolveInterceptor = androidFontResolveInterceptor;
        this.typefaceRequestCache = anonymousClass1;
        this.platformFamilyTypefaceAdapter = hintHandler;
        new DiskLruCache$$ExternalSyntheticLambda0(10, this);
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x0061  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x0082 A[Catch: Exception -> 0x008a, TRY_ENTER, TryCatch #1 {Exception -> 0x008a, blocks: (B:15:0x0028, B:17:0x0036, B:20:0x003b, B:22:0x003f, B:23:0x0059, B:39:0x0082, B:40:0x0089, B:42:0x0046, B:44:0x004a, B:46:0x0055), top: B:14:0x0028 }] */
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
            if (r2 == 0) goto L27
            boolean r3 = r2.cacheable     // Catch: java.lang.Throwable -> L24
            if (r3 == 0) goto L19
            monitor-exit(r1)
            return r2
        L19:
            java.lang.Object r2 = r0.this$0     // Catch: java.lang.Throwable -> L24
            androidx.collection.LruCache r2 = (androidx.collection.LruCache) r2     // Catch: java.lang.Throwable -> L24
            java.lang.Object r2 = r2.remove(r6)     // Catch: java.lang.Throwable -> L24
            androidx.compose.ui.text.font.TypefaceResult$Immutable r2 = (androidx.compose.ui.text.font.TypefaceResult$Immutable) r2     // Catch: java.lang.Throwable -> L24
            goto L27
        L24:
            r5 = move-exception
            goto L93
        L27:
            monitor-exit(r1)
            androidx.compose.ui.text.font.FontFamily r1 = r6.fontFamily     // Catch: java.lang.Exception -> L8a
            androidx.paging.HintHandler r5 = r5.platformFamilyTypefaceAdapter     // Catch: java.lang.Exception -> L8a
            java.lang.Object r5 = r5.state     // Catch: java.lang.Exception -> L8a
            androidx.compose.ui.text.font.PlatformTypefaces r5 = (androidx.compose.ui.text.font.PlatformTypefaces) r5     // Catch: java.lang.Exception -> L8a
            int r2 = r6.fontStyle     // Catch: java.lang.Exception -> L8a
            androidx.compose.ui.text.font.FontWeight r3 = r6.fontWeight     // Catch: java.lang.Exception -> L8a
            if (r1 == 0) goto L55
            boolean r4 = r1 instanceof androidx.compose.ui.text.font.DefaultFontFamily     // Catch: java.lang.Exception -> L8a
            if (r4 == 0) goto L3b
            goto L55
        L3b:
            boolean r4 = r1 instanceof androidx.compose.ui.text.font.GenericFontFamily     // Catch: java.lang.Exception -> L8a
            if (r4 == 0) goto L46
            androidx.compose.ui.text.font.GenericFontFamily r1 = (androidx.compose.ui.text.font.GenericFontFamily) r1     // Catch: java.lang.Exception -> L8a
            android.graphics.Typeface r5 = r5.mo652createNamedRetOiIg(r1, r3, r2)     // Catch: java.lang.Exception -> L8a
            goto L59
        L46:
            boolean r5 = r1 instanceof androidx.compose.ui.text.font.LoadedFontFamily     // Catch: java.lang.Exception -> L8a
            if (r5 == 0) goto L53
            androidx.compose.ui.text.font.LoadedFontFamily r1 = (androidx.compose.ui.text.font.LoadedFontFamily) r1     // Catch: java.lang.Exception -> L8a
            androidx.paging.HintHandler r5 = r1.typeface     // Catch: java.lang.Exception -> L8a
            java.lang.Object r5 = r5.state     // Catch: java.lang.Exception -> L8a
            android.graphics.Typeface r5 = (android.graphics.Typeface) r5     // Catch: java.lang.Exception -> L8a
            goto L59
        L53:
            r5 = 0
            goto L5f
        L55:
            android.graphics.Typeface r5 = r5.mo651createDefaultFO1MlWM(r3, r2)     // Catch: java.lang.Exception -> L8a
        L59:
            androidx.compose.ui.text.font.TypefaceResult$Immutable r1 = new androidx.compose.ui.text.font.TypefaceResult$Immutable     // Catch: java.lang.Exception -> L8a
            r1.<init>(r5)     // Catch: java.lang.Exception -> L8a
            r5 = r1
        L5f:
            if (r5 == 0) goto L82
            java.lang.Object r1 = r0.mCardBackground
            androidx.transition.Transition$1 r1 = (androidx.transition.Transition.AnonymousClass1) r1
            monitor-enter(r1)
            java.lang.Object r2 = r0.this$0     // Catch: java.lang.Throwable -> L7c
            androidx.collection.LruCache r2 = (androidx.collection.LruCache) r2     // Catch: java.lang.Throwable -> L7c
            java.lang.Object r2 = r2.get(r6)     // Catch: java.lang.Throwable -> L7c
            if (r2 != 0) goto L7e
            boolean r2 = r5.cacheable     // Catch: java.lang.Throwable -> L7c
            if (r2 == 0) goto L7e
            java.lang.Object r0 = r0.this$0     // Catch: java.lang.Throwable -> L7c
            androidx.collection.LruCache r0 = (androidx.collection.LruCache) r0     // Catch: java.lang.Throwable -> L7c
            r0.put(r6, r5)     // Catch: java.lang.Throwable -> L7c
            goto L7e
        L7c:
            r5 = move-exception
            goto L80
        L7e:
            monitor-exit(r1)
            return r5
        L80:
            monitor-exit(r1)
            throw r5
        L82:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException     // Catch: java.lang.Exception -> L8a
            java.lang.String r6 = "Could not load font"
            r5.<init>(r6)     // Catch: java.lang.Exception -> L8a
            throw r5     // Catch: java.lang.Exception -> L8a
        L8a:
            r5 = move-exception
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r0 = "Could not load font"
            r6.<init>(r0, r5)
            throw r6
        L93:
            monitor-exit(r1)
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.ui.text.font.FontFamilyResolverImpl.resolve(androidx.compose.ui.text.font.TypefaceRequest):androidx.compose.ui.text.font.TypefaceResult$Immutable");
    }

    /* renamed from: resolve-DPcqOEQ, reason: not valid java name */
    public final TypefaceResult$Immutable m650resolveDPcqOEQ(FontFamily fontFamily, FontWeight fontWeight, int i, int i2) {
        int i3 = this.platformResolveInterceptor.fontWeightAdjustment;
        return resolve(new TypefaceRequest(fontFamily, (i3 == 0 || i3 == Integer.MAX_VALUE) ? fontWeight : new FontWeight(RegexKt.coerceIn(fontWeight.weight + i3, 1, 1000)), i, i2, null));
    }
}
