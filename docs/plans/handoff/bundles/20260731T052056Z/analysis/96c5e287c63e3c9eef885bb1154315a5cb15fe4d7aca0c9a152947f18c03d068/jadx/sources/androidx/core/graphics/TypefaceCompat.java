package androidx.core.graphics;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Paint;
import android.graphics.Typeface;
import android.graphics.fonts.Font;
import android.graphics.fonts.FontFamily;
import android.graphics.text.PositionedGlyphs;
import android.graphics.text.TextRunShaper;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.os.Trace;
import android.text.TextUtils;
import android.util.Log;
import androidx.cardview.widget.CardView;
import androidx.collection.LruCache;
import androidx.collection.SimpleArrayMap;
import androidx.core.app.ActivityRecreator;
import androidx.core.content.res.CamUtils;
import androidx.core.content.res.FontResourcesParserCompat$FamilyResourceEntry;
import androidx.core.content.res.FontResourcesParserCompat$FontFamilyFilesResourceEntry;
import androidx.core.content.res.FontResourcesParserCompat$ProviderResourceEntry;
import androidx.core.provider.CallbackWrapper$2;
import androidx.core.provider.FontRequest;
import androidx.core.provider.FontRequestWorker;
import androidx.core.provider.RequestExecutor$ReplyRunnable;
import androidx.paging.HintHandler;
import androidx.recyclerview.widget.RecyclerView;
import androidx.work.impl.Processor$$ExternalSyntheticLambda2;
import j$.util.DesugarCollections;
import j$.util.Objects;
import java.io.IOException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import kotlin.ResultKt;
import kotlin.TuplesKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import retrofit2.AndroidMainExecutor;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class TypefaceCompat {
    public static Paint sCachedPaint;
    public static final LruCache sTypefaceCache;
    public static final ResultKt sTypefaceCompatImpl;

    static {
        Trace.beginSection(TuplesKt.truncatedTraceSectionLabel("TypefaceCompat static init"));
        int i = Build.VERSION.SDK_INT;
        if (i >= 31) {
            sTypefaceCompatImpl = new TypefaceCompatApi31Impl(10);
        } else if (i >= 29) {
            sTypefaceCompatImpl = new TypefaceCompatApi29Impl(10);
        } else if (i >= 28) {
            sTypefaceCompatImpl = new TypefaceCompatApi28Impl();
        } else if (i >= 26) {
            sTypefaceCompatImpl = new TypefaceCompatApi26Impl();
        } else {
            if (i >= 24) {
                Method method = TypefaceCompatApi24Impl.sAddFontWeightStyle;
                if (method == null) {
                    Log.w("TypefaceCompatApi24Impl", "Unable to collect necessary private methods.Fallback to legacy implementation.");
                }
                if (method != null) {
                    sTypefaceCompatImpl = new TypefaceCompatApi24Impl(10);
                }
            }
            sTypefaceCompatImpl = new TypefaceCompatApi21Impl(10);
        }
        sTypefaceCache = new LruCache(16);
        sCachedPaint = null;
        Trace.endSection();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static Typeface createFromResourcesFamilyXml(Context context, FontResourcesParserCompat$FamilyResourceEntry fontResourcesParserCompat$FamilyResourceEntry, Resources resources, int i, String str, int i2, int i3, CamUtils camUtils, boolean z) {
        Typeface createFromFontFamilyFilesResourceEntry;
        Typeface build;
        FontFamily build2;
        int i4 = 5;
        int i5 = -3;
        if (fontResourcesParserCompat$FamilyResourceEntry instanceof FontResourcesParserCompat$ProviderResourceEntry) {
            FontResourcesParserCompat$ProviderResourceEntry fontResourcesParserCompat$ProviderResourceEntry = (FontResourcesParserCompat$ProviderResourceEntry) fontResourcesParserCompat$FamilyResourceEntry;
            String str2 = fontResourcesParserCompat$ProviderResourceEntry.mSystemFontFamilyName;
            createFromFontFamilyFilesResourceEntry = null;
            int i6 = 1;
            boolean z2 = false;
            Object[] objArr = 0;
            Object[] objArr2 = 0;
            if (TextUtils.isEmpty(str2) || (build = getSystemFontFamily(str2)) == null) {
                ArrayList arrayList = fontResourcesParserCompat$ProviderResourceEntry.mRequests;
                if (arrayList.size() == 1) {
                    build = getSystemFontFamily(((FontRequest) arrayList.get(0)).mSystemFont);
                } else {
                    if (Build.VERSION.SDK_INT >= 31) {
                        int i7 = 0;
                        while (true) {
                            if (i7 >= arrayList.size()) {
                                Typeface.CustomFallbackBuilder customFallbackBuilder = null;
                                int i8 = 0;
                                while (true) {
                                    if (i8 >= arrayList.size()) {
                                        break;
                                    }
                                    FontRequest fontRequest = (FontRequest) arrayList.get(i8);
                                    if (i8 == arrayList.size() - 1 && TextUtils.isEmpty(fontRequest.mVariationSettings)) {
                                        customFallbackBuilder.setSystemFallback(fontRequest.mSystemFont);
                                        break;
                                    }
                                    String str3 = fontRequest.mSystemFont;
                                    String str4 = fontRequest.mVariationSettings;
                                    Font guessPrimaryFont = guessPrimaryFont(getSystemFontFamily(str3));
                                    if (guessPrimaryFont == null) {
                                        Log.w("TypefaceCompat", "Unable identify the primary font for " + fontRequest.mSystemFont + ". Falling back to provider font.");
                                        break;
                                    }
                                    if (TextUtils.isEmpty(str4)) {
                                        build2 = new FontFamily.Builder(guessPrimaryFont).build();
                                    } else {
                                        try {
                                            build2 = new FontFamily.Builder(TypefaceCompat$$ExternalSyntheticApiModelOutline0.m(guessPrimaryFont).setFontVariationSettings(str4).build()).build();
                                        } catch (IOException unused) {
                                            Log.e("TypefaceCompat", "Failed to clone Font instance. Fall back to provider font.");
                                        }
                                    }
                                    if (customFallbackBuilder == null) {
                                        customFallbackBuilder = new Typeface.CustomFallbackBuilder(build2);
                                    } else {
                                        customFallbackBuilder.addCustomFallback(build2);
                                    }
                                    i8++;
                                }
                                build = customFallbackBuilder.build();
                            } else {
                                if (getSystemFontFamily(((FontRequest) arrayList.get(i7)).mSystemFont) == null) {
                                    break;
                                }
                                i7++;
                            }
                        }
                    }
                    build = null;
                }
            }
            if (build != null) {
                if (camUtils != null) {
                    new Handler(Looper.getMainLooper()).post(new Processor$$ExternalSyntheticLambda2(i4, camUtils, build));
                }
                sTypefaceCache.put(createResourceUid(resources, i, str, i2, i3), build);
                return build;
            }
            Object[] objArr3 = !z ? camUtils != null : fontResourcesParserCompat$ProviderResourceEntry.mStrategy != 0;
            int i9 = z ? fontResourcesParserCompat$ProviderResourceEntry.mTimeoutMs : -1;
            Handler handler = new Handler(Looper.getMainLooper());
            HintHandler hintHandler = new HintHandler(13, z2);
            hintHandler.state = camUtils;
            ArrayList arrayList2 = fontResourcesParserCompat$ProviderResourceEntry.mRequests;
            AndroidMainExecutor androidMainExecutor = new AndroidMainExecutor(1, handler);
            CardView.AnonymousClass1 anonymousClass1 = new CardView.AnonymousClass1(24, hintHandler, androidMainExecutor);
            int i10 = 3;
            if (objArr3 != true) {
                String createCacheId = FontRequestWorker.createCacheId(arrayList2, i3);
                Typeface typeface = (Typeface) FontRequestWorker.sTypefaceCache.get(createCacheId);
                if (typeface != null) {
                    androidMainExecutor.execute(new ActivityRecreator.AnonymousClass1(i10, hintHandler, typeface));
                    createFromFontFamilyFilesResourceEntry = typeface;
                } else {
                    FontRequestWorker.AnonymousClass2 anonymousClass2 = new FontRequestWorker.AnonymousClass2(objArr == true ? 1 : 0, anonymousClass1);
                    synchronized (FontRequestWorker.LOCK) {
                        try {
                            SimpleArrayMap simpleArrayMap = FontRequestWorker.PENDING_REPLIES;
                            ArrayList arrayList3 = (ArrayList) simpleArrayMap.get(createCacheId);
                            if (arrayList3 != null) {
                                arrayList3.add(anonymousClass2);
                            } else {
                                ArrayList arrayList4 = new ArrayList();
                                arrayList4.add(anonymousClass2);
                                simpleArrayMap.put(createCacheId, arrayList4);
                                FontRequestWorker.AnonymousClass1 anonymousClass12 = new FontRequestWorker.AnonymousClass1(createCacheId, context, arrayList2, i3, 1);
                                ThreadPoolExecutor threadPoolExecutor = FontRequestWorker.DEFAULT_EXECUTOR_SERVICE;
                                FontRequestWorker.AnonymousClass2 anonymousClass22 = new FontRequestWorker.AnonymousClass2(i6, createCacheId);
                                Handler handler2 = Looper.myLooper() == null ? new Handler(Looper.getMainLooper()) : new Handler();
                                RequestExecutor$ReplyRunnable requestExecutor$ReplyRunnable = new RequestExecutor$ReplyRunnable();
                                requestExecutor$ReplyRunnable.mCallable = anonymousClass12;
                                requestExecutor$ReplyRunnable.mConsumer = anonymousClass22;
                                requestExecutor$ReplyRunnable.mHandler = handler2;
                                threadPoolExecutor.execute(requestExecutor$ReplyRunnable);
                            }
                        } finally {
                        }
                    }
                }
            } else {
                if (arrayList2.size() > 1) {
                    _UtilJvmKt$$ExternalSyntheticLambda0.m("Fallbacks with blocking fetches are not supported for performance reasons");
                    return null;
                }
                FontRequest fontRequest2 = (FontRequest) arrayList2.get(0);
                LruCache lruCache = FontRequestWorker.sTypefaceCache;
                ArrayList arrayList5 = new ArrayList(1);
                Object obj = new Object[]{fontRequest2}[0];
                Objects.requireNonNull(obj);
                arrayList5.add(obj);
                String createCacheId2 = FontRequestWorker.createCacheId(DesugarCollections.unmodifiableList(arrayList5), i3);
                Typeface typeface2 = (Typeface) FontRequestWorker.sTypefaceCache.get(createCacheId2);
                if (typeface2 != null) {
                    androidMainExecutor.execute(new ActivityRecreator.AnonymousClass1(i10, hintHandler, typeface2));
                    createFromFontFamilyFilesResourceEntry = typeface2;
                } else if (i9 == -1) {
                    Object[] objArr4 = {fontRequest2};
                    ArrayList arrayList6 = new ArrayList(1);
                    Object obj2 = objArr4[0];
                    Objects.requireNonNull(obj2);
                    arrayList6.add(obj2);
                    FontRequestWorker.TypefaceResult fontSync = FontRequestWorker.getFontSync(createCacheId2, context, DesugarCollections.unmodifiableList(arrayList6), i3);
                    anonymousClass1.onTypefaceResult(fontSync);
                    createFromFontFamilyFilesResourceEntry = fontSync.mTypeface;
                } else {
                    try {
                        try {
                            try {
                                try {
                                    FontRequestWorker.TypefaceResult typefaceResult = (FontRequestWorker.TypefaceResult) FontRequestWorker.DEFAULT_EXECUTOR_SERVICE.submit(new FontRequestWorker.AnonymousClass1(createCacheId2, context, fontRequest2, i3, 0)).get(i9, TimeUnit.MILLISECONDS);
                                    anonymousClass1.onTypefaceResult(typefaceResult);
                                    createFromFontFamilyFilesResourceEntry = typefaceResult.mTypeface;
                                } catch (TimeoutException unused2) {
                                    throw new InterruptedException("timeout");
                                }
                            } catch (InterruptedException e) {
                                throw e;
                            }
                        } catch (ExecutionException e2) {
                            throw new RuntimeException(e2);
                        }
                    } catch (InterruptedException unused3) {
                        ((AndroidMainExecutor) anonymousClass1.this$0).execute(new CallbackWrapper$2(i5, (int) (objArr2 == true ? 1 : 0), anonymousClass1.mCardBackground));
                    }
                }
            }
        } else {
            createFromFontFamilyFilesResourceEntry = sTypefaceCompatImpl.createFromFontFamilyFilesResourceEntry(context, (FontResourcesParserCompat$FontFamilyFilesResourceEntry) fontResourcesParserCompat$FamilyResourceEntry, resources, i3);
            if (camUtils != null) {
                if (createFromFontFamilyFilesResourceEntry != null) {
                    new Handler(Looper.getMainLooper()).post(new Processor$$ExternalSyntheticLambda2(i4, camUtils, createFromFontFamilyFilesResourceEntry));
                } else {
                    camUtils.callbackFailAsync(-3);
                }
            }
        }
        if (createFromFontFamilyFilesResourceEntry != null) {
            sTypefaceCache.put(createResourceUid(resources, i, str, i2, i3), createFromFontFamilyFilesResourceEntry);
        }
        return createFromFontFamilyFilesResourceEntry;
    }

    public static String createResourceUid(Resources resources, int i, String str, int i2, int i3) {
        return resources.getResourcePackageName(i) + '-' + str + '-' + i2 + '-' + i + '-' + i3;
    }

    public static Typeface getSystemFontFamily(String str) {
        if (str != null && !str.isEmpty()) {
            Typeface create = Typeface.create(str, 0);
            Typeface create2 = Typeface.create(Typeface.DEFAULT, 0);
            if (create != null && !create.equals(create2)) {
                return create;
            }
        }
        return null;
    }

    public static Font guessPrimaryFont(Typeface typeface) {
        Paint paint = sCachedPaint;
        if (paint == null) {
            paint = new Paint();
            sCachedPaint = paint;
        }
        paint.setTextSize(10.0f);
        sCachedPaint.setTypeface(typeface);
        PositionedGlyphs shapeTextRun = TextRunShaper.shapeTextRun((CharSequence) " ", 0, 1, 0, 1, RecyclerView.DECELERATION_RATE, RecyclerView.DECELERATION_RATE, false, sCachedPaint);
        if (shapeTextRun.glyphCount() == 0) {
            return null;
        }
        return shapeTextRun.getFont(0);
    }
}
