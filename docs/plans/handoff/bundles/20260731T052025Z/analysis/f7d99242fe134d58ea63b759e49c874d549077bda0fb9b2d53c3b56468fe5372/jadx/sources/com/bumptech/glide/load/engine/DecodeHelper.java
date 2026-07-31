package com.bumptech.glide.load.engine;

import com.bumptech.glide.GlideContext;
import com.bumptech.glide.Priority;
import com.bumptech.glide.Registry;
import com.bumptech.glide.load.Key;
import com.bumptech.glide.load.Options;
import com.bumptech.glide.load.Transformation;
import com.bumptech.glide.load.model.ModelLoader;
import com.bumptech.glide.load.resource.UnitTransformation;
import com.bumptech.glide.provider.LoadPathCache;
import com.bumptech.glide.util.GlideSuppliers$1;
import com.bumptech.glide.util.MultiClassKey;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import kotlin.text.Regex$$ExternalSyntheticBUOutline0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class DecodeHelper {
    public GlideSuppliers$1 diskCacheProvider;
    public DiskCacheStrategy$2 diskCacheStrategy;
    public GlideContext glideContext;
    public int height;
    public boolean isCacheKeysSet;
    public boolean isLoadDataSet;
    public boolean isScaleOnlyOrNoTransform;
    public boolean isTransformationRequired;
    public Object model;
    public Options options;
    public Priority priority;
    public Class resourceClass;
    public Key signature;
    public Class transcodeClass;
    public Map transformations;
    public int width;
    public final ArrayList loadData = new ArrayList();
    public final ArrayList cacheKeys = new ArrayList();

    public final ArrayList getCacheKeys() {
        boolean z = this.isCacheKeysSet;
        ArrayList arrayList = this.cacheKeys;
        if (!z) {
            this.isCacheKeysSet = true;
            arrayList.clear();
            ArrayList loadData = getLoadData();
            int size = loadData.size();
            for (int i = 0; i < size; i++) {
                ModelLoader.LoadData loadData2 = (ModelLoader.LoadData) loadData.get(i);
                Key key = loadData2.sourceKey;
                List list = loadData2.alternateKeys;
                if (!arrayList.contains(key)) {
                    arrayList.add(loadData2.sourceKey);
                }
                for (int i2 = 0; i2 < list.size(); i2++) {
                    if (!arrayList.contains(list.get(i2))) {
                        arrayList.add(list.get(i2));
                    }
                }
            }
        }
        return arrayList;
    }

    public final ArrayList getLoadData() {
        boolean z = this.isLoadDataSet;
        ArrayList arrayList = this.loadData;
        if (!z) {
            this.isLoadDataSet = true;
            arrayList.clear();
            List modelLoaders = this.glideContext.getRegistry().getModelLoaders(this.model);
            int size = modelLoaders.size();
            for (int i = 0; i < size; i++) {
                ModelLoader.LoadData buildLoadData = ((ModelLoader) modelLoaders.get(i)).buildLoadData(this.model, this.width, this.height, this.options);
                if (buildLoadData != null) {
                    arrayList.add(buildLoadData);
                }
            }
        }
        return arrayList;
    }

    public final LoadPath getLoadPath(Class cls) {
        LoadPath loadPath;
        LoadPath loadPath2;
        Class cls2;
        Registry registry = this.glideContext.getRegistry();
        Class cls3 = this.resourceClass;
        Class cls4 = this.transcodeClass;
        LoadPathCache loadPathCache = registry.loadPathCache;
        MultiClassKey multiClassKey = (MultiClassKey) loadPathCache.keyRef.getAndSet(null);
        if (multiClassKey == null) {
            multiClassKey = new MultiClassKey();
        }
        multiClassKey.first = cls;
        multiClassKey.second = cls3;
        multiClassKey.third = cls4;
        synchronized (loadPathCache.cache) {
            loadPath = (LoadPath) loadPathCache.cache.get(multiClassKey);
        }
        loadPathCache.keyRef.set(multiClassKey);
        registry.loadPathCache.getClass();
        if (LoadPathCache.NO_PATHS_SIGNAL.equals(loadPath)) {
            return null;
        }
        if (loadPath != null) {
            return loadPath;
        }
        ArrayList decodePaths = registry.getDecodePaths(cls, cls3, cls4);
        if (decodePaths.isEmpty()) {
            loadPath2 = null;
            cls2 = cls;
        } else {
            cls2 = cls;
            loadPath2 = new LoadPath(cls2, cls3, cls4, decodePaths, registry.throwableListPool);
        }
        registry.loadPathCache.put(cls2, cls3, cls4, loadPath2);
        return loadPath2;
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0027, code lost:
    
        r0 = r2.encoder;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.bumptech.glide.load.Encoder getSourceEncoder(java.lang.Object r5) {
        /*
            r4 = this;
            com.bumptech.glide.GlideContext r4 = r4.glideContext
            com.bumptech.glide.Registry r4 = r4.getRegistry()
            okhttp3.Headers$Builder r4 = r4.encoderRegistry
            java.lang.Class r0 = r5.getClass()
            monitor-enter(r4)
            java.util.ArrayList r1 = r4.namesAndValues     // Catch: java.lang.Throwable -> L2b
            java.util.Iterator r1 = r1.iterator()     // Catch: java.lang.Throwable -> L2b
        L13:
            boolean r2 = r1.hasNext()     // Catch: java.lang.Throwable -> L2b
            if (r2 == 0) goto L2d
            java.lang.Object r2 = r1.next()     // Catch: java.lang.Throwable -> L2b
            com.bumptech.glide.provider.EncoderRegistry$Entry r2 = (com.bumptech.glide.provider.EncoderRegistry$Entry) r2     // Catch: java.lang.Throwable -> L2b
            java.lang.Class r3 = r2.dataClass     // Catch: java.lang.Throwable -> L2b
            boolean r3 = r3.isAssignableFrom(r0)     // Catch: java.lang.Throwable -> L2b
            if (r3 == 0) goto L13
            com.bumptech.glide.load.Encoder r0 = r2.encoder     // Catch: java.lang.Throwable -> L2b
            monitor-exit(r4)
            goto L2f
        L2b:
            r5 = move-exception
            goto L4a
        L2d:
            monitor-exit(r4)
            r0 = 0
        L2f:
            if (r0 == 0) goto L32
            return r0
        L32:
            com.bumptech.glide.Registry$NoImageHeaderParserException r4 = new com.bumptech.glide.Registry$NoImageHeaderParserException
            java.lang.Class r5 = r5.getClass()
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            java.lang.String r1 = "Failed to find source encoder for data class: "
            r0.<init>(r1)
            r0.append(r5)
            java.lang.String r5 = r0.toString()
            r4.<init>(r5)
            throw r4
        L4a:
            monitor-exit(r4)     // Catch: java.lang.Throwable -> L2b
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bumptech.glide.load.engine.DecodeHelper.getSourceEncoder(java.lang.Object):com.bumptech.glide.load.Encoder");
    }

    public final Transformation getTransformation(Class cls) {
        Transformation transformation = (Transformation) this.transformations.get(cls);
        if (transformation == null) {
            Iterator it = this.transformations.entrySet().iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                Map.Entry entry = (Map.Entry) it.next();
                if (((Class) entry.getKey()).isAssignableFrom(cls)) {
                    transformation = (Transformation) entry.getValue();
                    break;
                }
            }
        }
        if (transformation != null) {
            return transformation;
        }
        if (!this.transformations.isEmpty() || !this.isTransformationRequired) {
            return UnitTransformation.TRANSFORMATION;
        }
        Regex$$ExternalSyntheticBUOutline0.m$3(cls, ". If you wish to ignore unknown resource types, use the optional transformation methods.", "Missing transformation for ");
        return null;
    }
}
