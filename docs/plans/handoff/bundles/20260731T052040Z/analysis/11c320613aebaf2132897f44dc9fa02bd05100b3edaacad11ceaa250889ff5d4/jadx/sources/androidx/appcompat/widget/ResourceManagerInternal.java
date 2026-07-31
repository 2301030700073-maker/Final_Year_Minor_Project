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
import androidx.appcompat.resources.Compatibility$Api21Impl;
import androidx.collection.LongSparseArray;
import androidx.collection.LruCache;
import androidx.collection.SimpleArrayMap;
import androidx.collection.SparseArrayCompat;
import androidx.vectordrawable.graphics.drawable.AnimatedVectorDrawableCompat;
import androidx.vectordrawable.graphics.drawable.VectorDrawableCompat;
import java.lang.ref.WeakReference;
import java.util.WeakHashMap;
import org.schabi.newpipe.R;
import org.schabi.newpipe.databinding.DrawerHeaderBinding;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class ResourceManagerInternal {
    public static ResourceManagerInternal INSTANCE;
    public SimpleArrayMap mDelegates;
    public final WeakHashMap mDrawableCaches = new WeakHashMap(0);
    public boolean mHasCheckedVectorDrawableSetup;
    public DrawerHeaderBinding mHooks;
    public SparseArrayCompat mKnownDrawableIdTags;
    public WeakHashMap mTintLists;
    public TypedValue mTypedValue;
    public static final PorterDuff.Mode DEFAULT_MODE = PorterDuff.Mode.SRC_IN;
    public static final ColorFilterLruCache COLOR_FILTER_CACHE = new ColorFilterLruCache(6);

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class ColorFilterLruCache extends LruCache {
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
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
        if (this.mDelegates == null) {
            this.mDelegates = new SimpleArrayMap(0);
        }
        this.mDelegates.put(str, drawableDelegate);
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
        if (this.mTypedValue == null) {
            this.mTypedValue = new TypedValue();
        }
        TypedValue typedValue = this.mTypedValue;
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
                layerDrawable = DrawerHeaderBinding.getRatingBarLayerDrawable(this, context, R.dimen.abc_star_big);
            } else if (i == R.drawable.abc_ratingbar_indicator_material) {
                layerDrawable = DrawerHeaderBinding.getRatingBarLayerDrawable(this, context, R.dimen.abc_star_medium);
            } else if (i == R.drawable.abc_ratingbar_small_material) {
                layerDrawable = DrawerHeaderBinding.getRatingBarLayerDrawable(this, context, R.dimen.abc_star_small);
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
        colorStateList = (weakHashMap == null || (sparseArrayCompat = (SparseArrayCompat) weakHashMap.get(context)) == null) ? null : (ColorStateList) sparseArrayCompat.get(i);
        if (colorStateList == null) {
            DrawerHeaderBinding drawerHeaderBinding = this.mHooks;
            colorStateList = drawerHeaderBinding == null ? null : drawerHeaderBinding.getTintListForDrawableRes(context, i);
            if (colorStateList != null) {
                if (this.mTintLists == null) {
                    this.mTintLists = new WeakHashMap();
                }
                SparseArrayCompat sparseArrayCompat2 = (SparseArrayCompat) this.mTintLists.get(context);
                if (sparseArrayCompat2 == null) {
                    sparseArrayCompat2 = new SparseArrayCompat((Object) null);
                    this.mTintLists.put(context, sparseArrayCompat2);
                }
                sparseArrayCompat2.append(i, colorStateList);
            }
        }
        return colorStateList;
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0025, code lost:
    
        if (r10.mDelegates.get(r0) != null) goto L15;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final android.graphics.drawable.Drawable loadDrawableFromDelegates(android.content.Context r11, int r12) {
        /*
            r10 = this;
            androidx.collection.SimpleArrayMap r0 = r10.mDelegates
            r1 = 0
            if (r0 == 0) goto Lba
            boolean r0 = r0.isEmpty()
            if (r0 != 0) goto Lba
            androidx.collection.SparseArrayCompat r0 = r10.mKnownDrawableIdTags
            java.lang.String r2 = "appcompat_skip_skip"
            if (r0 == 0) goto L29
            java.lang.Object r0 = r0.get(r12)
            java.lang.String r0 = (java.lang.String) r0
            boolean r3 = r2.equals(r0)
            if (r3 != 0) goto Lba
            if (r0 == 0) goto L30
            androidx.collection.SimpleArrayMap r3 = r10.mDelegates
            java.lang.Object r0 = r3.get(r0)
            if (r0 != 0) goto L30
            goto Lba
        L29:
            androidx.collection.SparseArrayCompat r0 = new androidx.collection.SparseArrayCompat
            r0.<init>(r1)
            r10.mKnownDrawableIdTags = r0
        L30:
            android.util.TypedValue r0 = r10.mTypedValue
            if (r0 != 0) goto L3b
            android.util.TypedValue r0 = new android.util.TypedValue
            r0.<init>()
            r10.mTypedValue = r0
        L3b:
            android.util.TypedValue r0 = r10.mTypedValue
            android.content.res.Resources r1 = r11.getResources()
            r3 = 1
            r1.getValue(r12, r0, r3)
            int r4 = r0.assetCookie
            long r4 = (long) r4
            r6 = 32
            long r4 = r4 << r6
            int r6 = r0.data
            long r6 = (long) r6
            long r4 = r4 | r6
            android.graphics.drawable.Drawable r6 = r10.getCachedDrawable(r11, r4)
            if (r6 == 0) goto L56
            return r6
        L56:
            java.lang.CharSequence r7 = r0.string
            if (r7 == 0) goto Lb2
            java.lang.String r7 = r7.toString()
            java.lang.String r8 = ".xml"
            boolean r7 = r7.endsWith(r8)
            if (r7 == 0) goto Lb2
            android.content.res.XmlResourceParser r1 = r1.getXml(r12)     // Catch: java.lang.Exception -> L96
            android.util.AttributeSet r7 = android.util.Xml.asAttributeSet(r1)     // Catch: java.lang.Exception -> L96
        L6e:
            int r8 = r1.next()     // Catch: java.lang.Exception -> L96
            r9 = 2
            if (r8 == r9) goto L78
            if (r8 == r3) goto L78
            goto L6e
        L78:
            if (r8 != r9) goto La3
            java.lang.String r3 = r1.getName()     // Catch: java.lang.Exception -> L96
            androidx.collection.SparseArrayCompat r8 = r10.mKnownDrawableIdTags     // Catch: java.lang.Exception -> L96
            r8.append(r12, r3)     // Catch: java.lang.Exception -> L96
            androidx.collection.SimpleArrayMap r8 = r10.mDelegates     // Catch: java.lang.Exception -> L96
            java.lang.Object r3 = r8.get(r3)     // Catch: java.lang.Exception -> L96
            androidx.appcompat.widget.ResourceManagerInternal$DrawableDelegate r3 = (androidx.appcompat.widget.ResourceManagerInternal.DrawableDelegate) r3     // Catch: java.lang.Exception -> L96
            if (r3 == 0) goto L98
            android.content.res.Resources$Theme r8 = r11.getTheme()     // Catch: java.lang.Exception -> L96
            android.graphics.drawable.Drawable r6 = r3.createFromXmlInner(r11, r1, r7, r8)     // Catch: java.lang.Exception -> L96
            goto L98
        L96:
            r11 = move-exception
            goto Lab
        L98:
            if (r6 == 0) goto Lb2
            int r0 = r0.changingConfigurations     // Catch: java.lang.Exception -> L96
            r6.setChangingConfigurations(r0)     // Catch: java.lang.Exception -> L96
            r10.addDrawableToCache(r11, r4, r6)     // Catch: java.lang.Exception -> L96
            goto Lb2
        La3:
            org.xmlpull.v1.XmlPullParserException r11 = new org.xmlpull.v1.XmlPullParserException     // Catch: java.lang.Exception -> L96
            java.lang.String r0 = "No start tag found"
            r11.<init>(r0)     // Catch: java.lang.Exception -> L96
            throw r11     // Catch: java.lang.Exception -> L96
        Lab:
            java.lang.String r0 = "ResourceManagerInternal"
            java.lang.String r1 = "Exception while inflating drawable"
            android.util.Log.e(r0, r1, r11)
        Lb2:
            if (r6 != 0) goto Lb9
            androidx.collection.SparseArrayCompat r10 = r10.mKnownDrawableIdTags
            r10.append(r12, r2)
        Lb9:
            return r6
        Lba:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.ResourceManagerInternal.loadDrawableFromDelegates(android.content.Context, int):android.graphics.drawable.Drawable");
    }

    public final synchronized void onConfigurationChanged(Context context) {
        LongSparseArray longSparseArray = (LongSparseArray) this.mDrawableCaches.get(context);
        if (longSparseArray != null) {
            longSparseArray.clear();
        }
    }

    public final synchronized void setHooks(DrawerHeaderBinding drawerHeaderBinding) {
        this.mHooks = drawerHeaderBinding;
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
}
