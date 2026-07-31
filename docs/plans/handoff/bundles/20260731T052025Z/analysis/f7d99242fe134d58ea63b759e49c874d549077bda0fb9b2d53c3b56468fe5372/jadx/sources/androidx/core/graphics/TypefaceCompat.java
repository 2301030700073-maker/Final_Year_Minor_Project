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
import androidx.camera.camera2.pipe.core.HandlerExecutor;
import androidx.camera.core.processing.Edge;
import androidx.collection.LruCache;
import androidx.collection.SimpleArrayMap;
import androidx.compose.ui.platform.WeakCache;
import androidx.core.app.ActivityRecreator;
import androidx.core.content.res.CamUtils;
import androidx.core.content.res.FontResourcesParserCompat$FamilyResourceEntry;
import androidx.core.content.res.FontResourcesParserCompat$FontFamilyFilesResourceEntry;
import androidx.core.content.res.FontResourcesParserCompat$ProviderResourceEntry;
import androidx.core.provider.CallbackWrapper$2;
import androidx.core.provider.FontRequest;
import androidx.core.provider.FontRequestWorker;
import androidx.core.provider.RequestExecutor$ReplyRunnable;
import androidx.fragment.app.Fragment;
import androidx.work.Operation$State;
import androidx.work.impl.Processor$$ExternalSyntheticLambda2;
import coil3.UriKt$$ExternalSyntheticBUOutline0;
import j$.util.DesugarCollections;
import j$.util.Objects;
import java.io.IOException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import org.slf4j.helpers.Util;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class TypefaceCompat {
    public static Paint sCachedPaint;
    public static final LruCache sTypefaceCache;
    public static final Operation$State sTypefaceCompatImpl;

    static {
        Trace.beginSection(Util.truncatedTraceSectionLabel("TypefaceCompat static init"));
        int i = Build.VERSION.SDK_INT;
        if (i >= 31) {
            sTypefaceCompatImpl = new TypefaceCompatApi31Impl();
        } else if (i >= 29) {
            sTypefaceCompatImpl = new TypefaceCompatApi29Impl();
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
                    sTypefaceCompatImpl = new TypefaceCompatApi24Impl();
                }
            }
            sTypefaceCompatImpl = new TypefaceCompatApi21Impl();
        }
        sTypefaceCache = new LruCache(16);
        sCachedPaint = null;
        Trace.endSection();
    }

    public static Typeface createFromResourcesFamilyXml(Context context, FontResourcesParserCompat$FamilyResourceEntry fontResourcesParserCompat$FamilyResourceEntry, Resources resources, int i, String str, int i2, int i3, CamUtils camUtils, boolean z) {
        Typeface createFromFontFamilyFilesResourceEntry;
        Typeface build;
        FontFamily build2;
        int i4 = 2;
        int i5 = -3;
        if (fontResourcesParserCompat$FamilyResourceEntry instanceof FontResourcesParserCompat$ProviderResourceEntry) {
            FontResourcesParserCompat$ProviderResourceEntry fontResourcesParserCompat$ProviderResourceEntry = (FontResourcesParserCompat$ProviderResourceEntry) fontResourcesParserCompat$FamilyResourceEntry;
            String str2 = fontResourcesParserCompat$ProviderResourceEntry.mSystemFontFamilyName;
            createFromFontFamilyFilesResourceEntry = null;
            int i6 = 1;
            int i7 = 0;
            if (TextUtils.isEmpty(str2) || (build = getSystemFontFamily(str2)) == null) {
                ArrayList arrayList = fontResourcesParserCompat$ProviderResourceEntry.mRequests;
                if (arrayList.size() == 1) {
                    build = getSystemFontFamily(((FontRequest) arrayList.get(0)).mSystemFont);
                } else {
                    if (Build.VERSION.SDK_INT >= 31) {
                        int i8 = 0;
                        while (true) {
                            if (i8 >= arrayList.size()) {
                                Typeface.CustomFallbackBuilder customFallbackBuilder = null;
                                int i9 = 0;
                                while (true) {
                                    if (i9 >= arrayList.size()) {
                                        break;
                                    }
                                    FontRequest fontRequest = (FontRequest) arrayList.get(i9);
                                    if (i9 == arrayList.size() - 1 && TextUtils.isEmpty(fontRequest.mVariationSettings)) {
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
                                    i9++;
                                }
                                build = customFallbackBuilder.build();
                            } else {
                                if (getSystemFontFamily(((FontRequest) arrayList.get(i8)).mSystemFont) == null) {
                                    break;
                                }
                                i8++;
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
            boolean z2 = !z ? camUtils != null : fontResourcesParserCompat$ProviderResourceEntry.mStrategy != 0;
            int i10 = z ? fontResourcesParserCompat$ProviderResourceEntry.mTimeoutMs : -1;
            Handler handler = new Handler(Looper.getMainLooper());
            Fragment.AnonymousClass7 anonymousClass7 = new Fragment.AnonymousClass7();
            anonymousClass7.this$0 = camUtils;
            ArrayList arrayList2 = fontResourcesParserCompat$ProviderResourceEntry.mRequests;
            HandlerExecutor handlerExecutor = new HandlerExecutor(handler, 2);
            WeakCache weakCache = new WeakCache(14, anonymousClass7, handlerExecutor);
            int i11 = 6;
            if (!z2) {
                String createCacheId = FontRequestWorker.createCacheId(i3, arrayList2);
                Typeface typeface = (Typeface) FontRequestWorker.sTypefaceCache.get(createCacheId);
                if (typeface != null) {
                    handlerExecutor.execute(new ActivityRecreator.AnonymousClass1(i11, anonymousClass7, typeface));
                    createFromFontFamilyFilesResourceEntry = typeface;
                } else {
                    Edge edge = new Edge(i6, weakCache);
                    synchronized (FontRequestWorker.LOCK) {
                        try {
                            SimpleArrayMap simpleArrayMap = FontRequestWorker.PENDING_REPLIES;
                            ArrayList arrayList3 = (ArrayList) simpleArrayMap.get(createCacheId);
                            if (arrayList3 != null) {
                                arrayList3.add(edge);
                            } else {
                                ArrayList arrayList4 = new ArrayList();
                                arrayList4.add(edge);
                                simpleArrayMap.put(createCacheId, arrayList4);
                                FontRequestWorker.AnonymousClass1 anonymousClass1 = new FontRequestWorker.AnonymousClass1(createCacheId, context, arrayList2, i3, 1);
                                ThreadPoolExecutor threadPoolExecutor = FontRequestWorker.DEFAULT_EXECUTOR_SERVICE;
                                Edge edge2 = new Edge(i4, createCacheId);
                                Handler handler2 = Looper.myLooper() == null ? new Handler(Looper.getMainLooper()) : new Handler();
                                RequestExecutor$ReplyRunnable requestExecutor$ReplyRunnable = new RequestExecutor$ReplyRunnable();
                                requestExecutor$ReplyRunnable.mCallable = anonymousClass1;
                                requestExecutor$ReplyRunnable.mConsumer = edge2;
                                requestExecutor$ReplyRunnable.mHandler = handler2;
                                threadPoolExecutor.execute(requestExecutor$ReplyRunnable);
                            }
                        } finally {
                        }
                    }
                }
            } else {
                if (arrayList2.size() > 1) {
                    UriKt$$ExternalSyntheticBUOutline0.m("Fallbacks with blocking fetches are not supported for performance reasons");
                    return null;
                }
                FontRequest fontRequest2 = (FontRequest) arrayList2.get(0);
                LruCache lruCache = FontRequestWorker.sTypefaceCache;
                ArrayList arrayList5 = new ArrayList(1);
                Object obj = new Object[]{fontRequest2}[0];
                Objects.requireNonNull(obj);
                arrayList5.add(obj);
                String createCacheId2 = FontRequestWorker.createCacheId(i3, DesugarCollections.unmodifiableList(arrayList5));
                Typeface typeface2 = (Typeface) FontRequestWorker.sTypefaceCache.get(createCacheId2);
                if (typeface2 != null) {
                    handlerExecutor.execute(new ActivityRecreator.AnonymousClass1(i11, anonymousClass7, typeface2));
                    createFromFontFamilyFilesResourceEntry = typeface2;
                } else if (i10 == -1) {
                    Object[] objArr = {fontRequest2};
                    ArrayList arrayList6 = new ArrayList(1);
                    Object obj2 = objArr[0];
                    Objects.requireNonNull(obj2);
                    arrayList6.add(obj2);
                    FontRequestWorker.TypefaceResult fontSync = FontRequestWorker.getFontSync(createCacheId2, context, DesugarCollections.unmodifiableList(arrayList6), i3);
                    weakCache.onTypefaceResult(fontSync);
                    createFromFontFamilyFilesResourceEntry = fontSync.mTypeface;
                } else {
                    try {
                        try {
                            try {
                                FontRequestWorker.TypefaceResult typefaceResult = (FontRequestWorker.TypefaceResult) FontRequestWorker.DEFAULT_EXECUTOR_SERVICE.submit(new FontRequestWorker.AnonymousClass1(createCacheId2, context, fontRequest2, i3, 0)).get(i10, TimeUnit.MILLISECONDS);
                                weakCache.onTypefaceResult(typefaceResult);
                                createFromFontFamilyFilesResourceEntry = typefaceResult.mTypeface;
                            } catch (InterruptedException e) {
                                throw e;
                            }
                        } catch (ExecutionException e2) {
                            throw new RuntimeException(e2);
                        } catch (TimeoutException unused2) {
                            throw new InterruptedException("timeout");
                        }
                    } catch (InterruptedException unused3) {
                        ((HandlerExecutor) weakCache.referenceQueue).execute(new CallbackWrapper$2(i5, i7, (Fragment.AnonymousClass7) weakCache.values));
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
        if (sCachedPaint == null) {
            sCachedPaint = new Paint();
        }
        sCachedPaint.setTextSize(10.0f);
        sCachedPaint.setTypeface(typeface);
        PositionedGlyphs shapeTextRun = TextRunShaper.shapeTextRun((CharSequence) " ", 0, 1, 0, 1, 0.0f, 0.0f, false, sCachedPaint);
        if (shapeTextRun.glyphCount() == 0) {
            return null;
        }
        return shapeTextRun.getFont(0);
    }
}
