package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.XmlResourceParser;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.os.Build;
import android.util.AttributeSet;
import android.util.Log;
import android.util.TypedValue;
import android.util.Xml;
import androidx.appcompat.resources.Compatibility$Api21Impl;
import androidx.collection.ArraySetKt;
import androidx.collection.LongSparseArray;
import androidx.collection.LruCache;
import androidx.collection.SimpleArrayMap;
import androidx.collection.SparseArrayCompat;
import androidx.vectordrawable.graphics.drawable.AnimatedVectorDrawableCompat;
import androidx.vectordrawable.graphics.drawable.VectorDrawableCompat;
import com.caverock.androidsvg.SVGAndroidRenderer;
import java.lang.ref.WeakReference;
import java.util.WeakHashMap;
import kotlin.text.StringsKt__StringsJVMKt;
import okhttp3.ConnectionSpec;
import org.wikimedia.testkitchen.config.DestinationEventService;
import org.wikipedia.R;
import org.wikipedia.analytics.eventplatform.EventService;
import org.wikipedia.dataclient.CoreRestService;
import org.wikipedia.dataclient.RestService;
import org.wikipedia.dataclient.Service;
import org.wikipedia.dataclient.ServiceFactory;
import org.wikipedia.dataclient.WikiSite;
import org.wikipedia.settings.Prefs;
import org.wikipedia.settings.PrefsIoUtil;
import org.xmlpull.v1.XmlPullParserException;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class ResourceManagerInternal {
    public static ResourceManagerInternal INSTANCE;
    public SimpleArrayMap mDelegates;
    public final WeakHashMap mDrawableCaches = new WeakHashMap(0);
    public boolean mHasCheckedVectorDrawableSetup;
    public SVGAndroidRenderer mHooks;
    public SparseArrayCompat mKnownDrawableIdTags;
    public WeakHashMap mTintLists;
    public TypedValue mTypedValue;
    public static final PorterDuff.Mode DEFAULT_MODE = PorterDuff.Mode.SRC_IN;
    public static final ColorFilterLruCache COLOR_FILTER_CACHE = new ColorFilterLruCache(6, 0);

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class ColorFilterLruCache extends LruCache {
        public final /* synthetic */ int $r8$classId;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public /* synthetic */ ColorFilterLruCache(int i, int i2) {
            super(i);
            this.$r8$classId = i2;
        }

        @Override // androidx.collection.LruCache
        public Object create(Object obj) {
            switch (this.$r8$classId) {
                case 1:
                    obj.getClass();
                    WikiSite wikiSite = (WikiSite) obj;
                    ServiceFactory serviceFactory = ServiceFactory.INSTANCE;
                    String url = wikiSite.url();
                    if (!StringsKt__StringsJVMKt.endsWith(url, "/", false)) {
                        url = url.concat("/");
                    }
                    Object create = ServiceFactory.createRetrofit$default(serviceFactory, wikiSite, url).create(Service.class);
                    create.getClass();
                    return (Service) create;
                case 2:
                    obj.getClass();
                    WikiSite wikiSite2 = (WikiSite) obj;
                    Object create2 = ServiceFactory.createRetrofit$default(ServiceFactory.INSTANCE, wikiSite2, ServiceFactory.getRestBasePath(wikiSite2)).create(RestService.class);
                    create2.getClass();
                    return (RestService) create2;
                case 3:
                    obj.getClass();
                    WikiSite wikiSite3 = (WikiSite) obj;
                    Object create3 = ServiceFactory.createRetrofit$default(ServiceFactory.INSTANCE, wikiSite3, wikiSite3.url().concat("/w/rest.php/")).create(CoreRestService.class);
                    create3.getClass();
                    return (CoreRestService) create3;
                case 4:
                    obj.getClass();
                    DestinationEventService destinationEventService = (DestinationEventService) obj;
                    Prefs prefs = Prefs.INSTANCE;
                    String string = PrefsIoUtil.getString(R.string.preference_key_event_platform_intake_base_uri, "");
                    String str = string != null ? string : "";
                    if (str.length() == 0) {
                        str = destinationEventService.getBaseUri();
                    }
                    Object create4 = ServiceFactory.createRetrofit$default(ServiceFactory.INSTANCE, null, str).create(EventService.class);
                    create4.getClass();
                    return (EventService) create4;
                default:
                    return super.create(obj);
            }
        }

        @Override // androidx.collection.LruCache
        public void entryRemoved(Object obj, Object obj2, Object obj3) {
            switch (this.$r8$classId) {
                case 1:
                case 2:
                case 3:
                case 4:
                    obj.getClass();
                    obj2.getClass();
                    break;
                default:
                    super.entryRemoved(obj, obj2, obj3);
                    break;
            }
        }

        @Override // androidx.collection.LruCache
        public void sizeOf(Object obj, Object obj2) {
            switch (this.$r8$classId) {
                case 1:
                case 2:
                case 3:
                case 4:
                    obj.getClass();
                    obj2.getClass();
                    break;
                default:
                    super.sizeOf(obj, obj2);
                    break;
            }
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class DrawableDelegate {
        public final /* synthetic */ int $r8$classId;

        public /* synthetic */ DrawableDelegate(int i) {
            this.$r8$classId = i;
        }

        public final Drawable createFromXmlInner(Context context, XmlResourceParser xmlResourceParser, AttributeSet attributeSet, Resources.Theme theme) {
            switch (this.$r8$classId) {
                case 0:
                    String classAttribute = attributeSet.getClassAttribute();
                    if (classAttribute != null) {
                        try {
                            Drawable drawable = (Drawable) DrawableDelegate.class.getClassLoader().loadClass(classAttribute).asSubclass(Drawable.class).getDeclaredConstructor(null).newInstance(null);
                            Compatibility$Api21Impl.inflate(drawable, context.getResources(), xmlResourceParser, attributeSet, theme);
                            break;
                        } catch (Exception e) {
                            Log.e("DrawableDelegate", "Exception while inflating <drawable>", e);
                            return null;
                        }
                    }
                    break;
                case 1:
                    try {
                        break;
                    } catch (Exception e2) {
                        Log.e("AsldcInflateDelegate", "Exception while inflating <animated-selector>", e2);
                        return null;
                    }
                case 2:
                    try {
                        Resources resources = context.getResources();
                        AnimatedVectorDrawableCompat animatedVectorDrawableCompat = new AnimatedVectorDrawableCompat(context, 0);
                        animatedVectorDrawableCompat.inflate(resources, xmlResourceParser, attributeSet, theme);
                        break;
                    } catch (Exception e3) {
                        Log.e("AvdcInflateDelegate", "Exception while inflating <animated-vector>", e3);
                        return null;
                    }
                default:
                    try {
                        Resources resources2 = context.getResources();
                        VectorDrawableCompat vectorDrawableCompat = new VectorDrawableCompat();
                        vectorDrawableCompat.inflate(resources2, xmlResourceParser, attributeSet, theme);
                        break;
                    } catch (Exception e4) {
                        Log.e("VdcInflateDelegate", "Exception while inflating <vector>", e4);
                        return null;
                    }
            }
            return null;
        }
    }

    public static synchronized ResourceManagerInternal get() {
        ResourceManagerInternal resourceManagerInternal;
        synchronized (ResourceManagerInternal.class) {
            try {
                if (INSTANCE == null) {
                    ResourceManagerInternal resourceManagerInternal2 = new ResourceManagerInternal();
                    INSTANCE = resourceManagerInternal2;
                    installDefaultInflateDelegates(resourceManagerInternal2);
                }
                resourceManagerInternal = INSTANCE;
            } catch (Throwable th) {
                throw th;
            }
        }
        return resourceManagerInternal;
    }

    public static synchronized PorterDuffColorFilter getPorterDuffColorFilter(int i, PorterDuff.Mode mode) {
        PorterDuffColorFilter porterDuffColorFilter;
        synchronized (ResourceManagerInternal.class) {
            ColorFilterLruCache colorFilterLruCache = COLOR_FILTER_CACHE;
            colorFilterLruCache.getClass();
            int i2 = (31 + i) * 31;
            porterDuffColorFilter = (PorterDuffColorFilter) colorFilterLruCache.get(Integer.valueOf(mode.hashCode() + i2));
            if (porterDuffColorFilter == null) {
                porterDuffColorFilter = new PorterDuffColorFilter(i, mode);
            }
        }
        return porterDuffColorFilter;
    }

    public static void installDefaultInflateDelegates(ResourceManagerInternal resourceManagerInternal) {
        if (Build.VERSION.SDK_INT < 24) {
            resourceManagerInternal.addDelegate("vector", new DrawableDelegate(3));
            resourceManagerInternal.addDelegate("animated-vector", new DrawableDelegate(2));
            resourceManagerInternal.addDelegate("animated-selector", new DrawableDelegate(1));
            resourceManagerInternal.addDelegate("drawable", new DrawableDelegate(0));
        }
    }

    public final void addDelegate(String str, DrawableDelegate drawableDelegate) {
        SimpleArrayMap simpleArrayMap = this.mDelegates;
        if (simpleArrayMap == null) {
            simpleArrayMap = new SimpleArrayMap(0);
            this.mDelegates = simpleArrayMap;
        }
        simpleArrayMap.put(str, drawableDelegate);
    }

    public final synchronized void addDrawableToCache(Context context, long j, Drawable drawable) {
        try {
            Drawable.ConstantState constantState = drawable.getConstantState();
            if (constantState != null) {
                LongSparseArray longSparseArray = (LongSparseArray) this.mDrawableCaches.get(context);
                if (longSparseArray == null) {
                    longSparseArray = new LongSparseArray((Object) null);
                    this.mDrawableCaches.put(context, longSparseArray);
                }
                longSparseArray.put(j, new WeakReference(constantState));
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public final Drawable createDrawableIfNeeded(Context context, int i) {
        TypedValue typedValue = this.mTypedValue;
        if (typedValue == null) {
            typedValue = new TypedValue();
            this.mTypedValue = typedValue;
        }
        context.getResources().getValue(i, typedValue, true);
        long j = (typedValue.assetCookie << 32) | typedValue.data;
        Drawable cachedDrawable = getCachedDrawable(context, j);
        if (cachedDrawable != null) {
            return cachedDrawable;
        }
        LayerDrawable layerDrawable = null;
        if (this.mHooks != null) {
            if (i == R.drawable.abc_cab_background_top_material) {
                layerDrawable = new LayerDrawable(new Drawable[]{getDrawable(context, R.drawable.abc_cab_background_internal_bg), getDrawable(context, R.drawable.abc_cab_background_top_mtrl_alpha)});
            } else if (i == R.drawable.abc_ratingbar_material) {
                layerDrawable = SVGAndroidRenderer.getRatingBarLayerDrawable(this, context, R.dimen.abc_star_big);
            } else if (i == R.drawable.abc_ratingbar_indicator_material) {
                layerDrawable = SVGAndroidRenderer.getRatingBarLayerDrawable(this, context, R.dimen.abc_star_medium);
            } else if (i == R.drawable.abc_ratingbar_small_material) {
                layerDrawable = SVGAndroidRenderer.getRatingBarLayerDrawable(this, context, R.dimen.abc_star_small);
            }
        }
        if (layerDrawable != null) {
            layerDrawable.setChangingConfigurations(typedValue.changingConfigurations);
            addDrawableToCache(context, j, layerDrawable);
        }
        return layerDrawable;
    }

    public final synchronized Drawable getCachedDrawable(Context context, long j) {
        LongSparseArray longSparseArray = (LongSparseArray) this.mDrawableCaches.get(context);
        if (longSparseArray == null) {
            return null;
        }
        WeakReference weakReference = (WeakReference) longSparseArray.get(j);
        if (weakReference != null) {
            Drawable.ConstantState constantState = (Drawable.ConstantState) weakReference.get();
            if (constantState != null) {
                return constantState.newDrawable(context.getResources());
            }
            longSparseArray.remove(j);
        }
        return null;
    }

    public final synchronized Drawable getDrawable(Context context, int i, boolean z) {
        Drawable loadDrawableFromDelegates;
        try {
            if (!this.mHasCheckedVectorDrawableSetup) {
                this.mHasCheckedVectorDrawableSetup = true;
                Drawable drawable = getDrawable(context, R.drawable.abc_vector_test);
                if (drawable == null || (!(drawable instanceof VectorDrawableCompat) && !"android.graphics.drawable.VectorDrawable".equals(drawable.getClass().getName()))) {
                    this.mHasCheckedVectorDrawableSetup = false;
                    throw new IllegalStateException("This app has been built with an incorrect configuration. Please configure your build for VectorDrawableCompat.");
                }
            }
            loadDrawableFromDelegates = loadDrawableFromDelegates(context, i);
            if (loadDrawableFromDelegates == null) {
                loadDrawableFromDelegates = createDrawableIfNeeded(context, i);
            }
            if (loadDrawableFromDelegates == null) {
                loadDrawableFromDelegates = context.getDrawable(i);
            }
            if (loadDrawableFromDelegates != null) {
                loadDrawableFromDelegates = tintDrawable(context, i, z, loadDrawableFromDelegates);
            }
            if (loadDrawableFromDelegates != null) {
                DrawableUtils.fixDrawable(loadDrawableFromDelegates);
            }
        } catch (Throwable th) {
            throw th;
        }
        return loadDrawableFromDelegates;
    }

    public final synchronized ColorStateList getTintList(Context context, int i) {
        ColorStateList colorStateList;
        SparseArrayCompat sparseArrayCompat;
        WeakHashMap weakHashMap = this.mTintLists;
        ColorStateList colorStateList2 = null;
        colorStateList = (weakHashMap == null || (sparseArrayCompat = (SparseArrayCompat) weakHashMap.get(context)) == null) ? null : (ColorStateList) ArraySetKt.commonGet(sparseArrayCompat, i);
        if (colorStateList == null) {
            SVGAndroidRenderer sVGAndroidRenderer = this.mHooks;
            if (sVGAndroidRenderer != null) {
                colorStateList2 = sVGAndroidRenderer.getTintListForDrawableRes(context, i);
            }
            if (colorStateList2 != null) {
                WeakHashMap weakHashMap2 = this.mTintLists;
                if (weakHashMap2 == null) {
                    weakHashMap2 = new WeakHashMap();
                    this.mTintLists = weakHashMap2;
                }
                SparseArrayCompat sparseArrayCompat2 = (SparseArrayCompat) weakHashMap2.get(context);
                if (sparseArrayCompat2 == null) {
                    sparseArrayCompat2 = new SparseArrayCompat(0);
                    this.mTintLists.put(context, sparseArrayCompat2);
                }
                sparseArrayCompat2.append(i, colorStateList2);
            }
            colorStateList = colorStateList2;
        }
        return colorStateList;
    }

    public final Drawable loadDrawableFromDelegates(Context context, int i) {
        int next;
        SimpleArrayMap simpleArrayMap = this.mDelegates;
        if (simpleArrayMap == null || simpleArrayMap.isEmpty()) {
            return null;
        }
        SparseArrayCompat sparseArrayCompat = this.mKnownDrawableIdTags;
        if (sparseArrayCompat != null) {
            String str = (String) ArraySetKt.commonGet(sparseArrayCompat, i);
            if ("appcompat_skip_skip".equals(str)) {
                return null;
            }
            if (str != null && this.mDelegates.get(str) == null) {
                return null;
            }
        } else {
            this.mKnownDrawableIdTags = new SparseArrayCompat(0);
        }
        TypedValue typedValue = this.mTypedValue;
        if (typedValue == null) {
            typedValue = new TypedValue();
            this.mTypedValue = typedValue;
        }
        Resources resources = context.getResources();
        resources.getValue(i, typedValue, true);
        long j = (typedValue.assetCookie << 32) | typedValue.data;
        Drawable cachedDrawable = getCachedDrawable(context, j);
        if (cachedDrawable != null) {
            return cachedDrawable;
        }
        CharSequence charSequence = typedValue.string;
        if (charSequence != null && charSequence.toString().endsWith(".xml")) {
            try {
                XmlResourceParser xml = resources.getXml(i);
                AttributeSet asAttributeSet = Xml.asAttributeSet(xml);
                do {
                    next = xml.next();
                    if (next == 2) {
                        break;
                    }
                } while (next != 1);
                if (next != 2) {
                    throw new XmlPullParserException("No start tag found");
                }
                String name = xml.getName();
                this.mKnownDrawableIdTags.append(i, name);
                DrawableDelegate drawableDelegate = (DrawableDelegate) this.mDelegates.get(name);
                if (drawableDelegate != null) {
                    cachedDrawable = drawableDelegate.createFromXmlInner(context, xml, asAttributeSet, context.getTheme());
                }
                if (cachedDrawable != null) {
                    cachedDrawable.setChangingConfigurations(typedValue.changingConfigurations);
                    addDrawableToCache(context, j, cachedDrawable);
                }
            } catch (Exception e) {
                Log.e("ResourceManagerInternal", "Exception while inflating drawable", e);
            }
        }
        if (cachedDrawable == null) {
            this.mKnownDrawableIdTags.append(i, "appcompat_skip_skip");
        }
        return cachedDrawable;
    }

    public final synchronized void onConfigurationChanged(Context context) {
        LongSparseArray longSparseArray = (LongSparseArray) this.mDrawableCaches.get(context);
        if (longSparseArray != null) {
            longSparseArray.clear();
        }
    }

    public final synchronized void setHooks(SVGAndroidRenderer sVGAndroidRenderer) {
        this.mHooks = sVGAndroidRenderer;
    }

    /* JADX WARN: Removed duplicated region for block: B:33:0x00e2  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final android.graphics.drawable.Drawable tintDrawable(android.content.Context r9, int r10, boolean r11, android.graphics.drawable.Drawable r12) {
        /*
            Method dump skipped, instructions count: 253
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.ResourceManagerInternal.tintDrawable(android.content.Context, int, boolean, android.graphics.drawable.Drawable):android.graphics.drawable.Drawable");
    }

    public final synchronized Drawable getDrawable(Context context, int i) {
        return getDrawable(context, i, false);
    }

    public static void tintDrawable(Drawable drawable, ConnectionSpec.Builder builder, int[] iArr) {
        int[] state = drawable.getState();
        if (drawable.mutate() == drawable) {
            if ((drawable instanceof LayerDrawable) && drawable.isStateful()) {
                drawable.setState(new int[0]);
                drawable.setState(state);
            }
            boolean z = builder.supportsTlsExtensions;
            if (!z && !builder.tls) {
                drawable.clearColorFilter();
            } else {
                PorterDuffColorFilter porterDuffColorFilter = null;
                ColorStateList colorStateList = z ? (ColorStateList) builder.cipherSuites : null;
                PorterDuff.Mode mode = builder.tls ? (PorterDuff.Mode) builder.tlsVersions : DEFAULT_MODE;
                if (colorStateList != null && mode != null) {
                    porterDuffColorFilter = getPorterDuffColorFilter(colorStateList.getColorForState(iArr, 0), mode);
                }
                drawable.setColorFilter(porterDuffColorFilter);
            }
            if (Build.VERSION.SDK_INT <= 23) {
                drawable.invalidateSelf();
                return;
            }
            return;
        }
        Log.d("ResourceManagerInternal", "Mutated drawable is not the same instance as the input.");
    }
}
