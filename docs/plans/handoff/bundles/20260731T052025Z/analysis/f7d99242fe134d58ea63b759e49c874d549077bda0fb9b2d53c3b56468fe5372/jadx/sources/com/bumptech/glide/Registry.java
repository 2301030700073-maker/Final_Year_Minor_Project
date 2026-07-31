package com.bumptech.glide;

import androidx.core.util.Pools$SynchronizedPool;
import com.beetstra.jutf7.Base64Util;
import com.bumptech.glide.load.Encoder;
import com.bumptech.glide.load.ImageHeaderParser;
import com.bumptech.glide.load.ResourceDecoder;
import com.bumptech.glide.load.ResourceEncoder;
import com.bumptech.glide.load.data.DataRewinder;
import com.bumptech.glide.load.data.InputStreamRewinder;
import com.bumptech.glide.load.engine.DecodePath;
import com.bumptech.glide.load.model.ModelLoader;
import com.bumptech.glide.load.model.ModelLoaderFactory;
import com.bumptech.glide.load.model.ModelLoaderRegistry;
import com.bumptech.glide.load.model.ModelLoaderRegistry$ModelLoaderCache$Entry;
import com.bumptech.glide.load.resource.transcode.ResourceTranscoder;
import com.bumptech.glide.load.resource.transcode.TranscoderRegistry$Entry;
import com.bumptech.glide.provider.EncoderRegistry$Entry;
import com.bumptech.glide.provider.LoadPathCache;
import com.bumptech.glide.provider.ResourceDecoderRegistry$Entry;
import com.bumptech.glide.provider.ResourceEncoderRegistry$Entry;
import com.bumptech.glide.util.Util;
import com.fsck.k9.backend.imap.ImapSync;
import com.jcraft.jzlib.Adler32;
import j$.util.DesugarCollections;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import okhttp3.Headers;
import okio.AsyncTimeout;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class Registry {
    public final InputStreamRewinder dataRewinderRegistry;
    public final Base64Util decoderRegistry;
    public final Headers.Builder encoderRegistry;
    public final Headers.Builder imageHeaderParserRegistry;
    public final ModelLoaderRegistry modelLoaderRegistry;
    public final Headers.Builder resourceEncoderRegistry;
    public final ImapSync throwableListPool;
    public final Headers.Builder transcoderRegistry;
    public final Base64Util modelToResourceClassCache = new Base64Util(22);
    public final LoadPathCache loadPathCache = new LoadPathCache();

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class NoImageHeaderParserException extends RuntimeException {
        public NoImageHeaderParserException(Class cls) {
            super("Failed to find result encoder for resource class: " + cls + ", you may need to consider registering a new Encoder for the requested type or DiskCacheStrategy.DATA/DiskCacheStrategy.NONE if caching your transformed resource is unnecessary.");
        }
    }

    public Registry() {
        int i = 17;
        ImapSync imapSync = new ImapSync(new Pools$SynchronizedPool(20), new AsyncTimeout.Companion(i), new Adler32(i), false, 13);
        this.throwableListPool = imapSync;
        this.modelLoaderRegistry = new ModelLoaderRegistry(imapSync);
        this.encoderRegistry = new Headers.Builder(4);
        this.decoderRegistry = new Base64Util(23);
        this.resourceEncoderRegistry = new Headers.Builder(6);
        this.dataRewinderRegistry = new InputStreamRewinder();
        this.transcoderRegistry = new Headers.Builder(3);
        this.imageHeaderParserRegistry = new Headers.Builder(5);
        List asList = Arrays.asList("Animation", "Bitmap", "BitmapDrawable");
        ArrayList arrayList = new ArrayList(asList.size());
        arrayList.add("legacy_prepend_all");
        Iterator it = asList.iterator();
        while (it.hasNext()) {
            arrayList.add((String) it.next());
        }
        arrayList.add("legacy_append");
        Base64Util base64Util = this.decoderRegistry;
        synchronized (base64Util) {
            try {
                ArrayList arrayList2 = new ArrayList((ArrayList) base64Util.alphabet);
                ((ArrayList) base64Util.alphabet).clear();
                Iterator it2 = arrayList.iterator();
                while (it2.hasNext()) {
                    ((ArrayList) base64Util.alphabet).add((String) it2.next());
                }
                Iterator it3 = arrayList2.iterator();
                while (it3.hasNext()) {
                    String str = (String) it3.next();
                    if (!arrayList.contains(str)) {
                        ((ArrayList) base64Util.alphabet).add(str);
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void append(String str, Class cls, Class cls2, ResourceDecoder resourceDecoder) {
        Base64Util base64Util = this.decoderRegistry;
        synchronized (base64Util) {
            base64Util.getOrAddEntryList(str).add(new ResourceDecoderRegistry$Entry(cls, cls2, resourceDecoder));
        }
    }

    public final ArrayList getDecodePaths(Class cls, Class cls2, Class cls3) {
        ArrayList arrayList;
        ArrayList arrayList2 = new ArrayList();
        Iterator it = this.decoderRegistry.getResourceClasses(cls, cls2).iterator();
        while (it.hasNext()) {
            Class cls4 = (Class) it.next();
            Iterator it2 = this.transcoderRegistry.getTranscodeClasses(cls4, cls3).iterator();
            while (it2.hasNext()) {
                Class cls5 = (Class) it2.next();
                Base64Util base64Util = this.decoderRegistry;
                synchronized (base64Util) {
                    arrayList = new ArrayList();
                    Iterator it3 = ((ArrayList) base64Util.alphabet).iterator();
                    while (it3.hasNext()) {
                        List<ResourceDecoderRegistry$Entry> list = (List) ((HashMap) base64Util.inverseAlphabet).get((String) it3.next());
                        if (list != null) {
                            for (ResourceDecoderRegistry$Entry resourceDecoderRegistry$Entry : list) {
                                if (resourceDecoderRegistry$Entry.dataClass.isAssignableFrom(cls) && cls4.isAssignableFrom(resourceDecoderRegistry$Entry.resourceClass)) {
                                    arrayList.add(resourceDecoderRegistry$Entry.decoder);
                                }
                            }
                        }
                    }
                }
                arrayList2.add(new DecodePath(cls, cls4, cls5, arrayList, this.transcoderRegistry.get(cls4, cls5), this.throwableListPool));
            }
        }
        return arrayList2;
    }

    public final ArrayList getImageHeaderParsers() {
        ArrayList arrayList;
        Headers.Builder builder = this.imageHeaderParserRegistry;
        synchronized (builder) {
            arrayList = builder.namesAndValues;
        }
        if (arrayList.isEmpty()) {
            throw new NoImageHeaderParserException("Failed to find image header parser.");
        }
        return arrayList;
    }

    public final List getModelLoaders(Object obj) {
        List list;
        ModelLoaderRegistry modelLoaderRegistry = this.modelLoaderRegistry;
        modelLoaderRegistry.getClass();
        Class<?> cls = obj.getClass();
        synchronized (modelLoaderRegistry) {
            ModelLoaderRegistry$ModelLoaderCache$Entry modelLoaderRegistry$ModelLoaderCache$Entry = (ModelLoaderRegistry$ModelLoaderCache$Entry) modelLoaderRegistry.cache.jobs.get(cls);
            list = modelLoaderRegistry$ModelLoaderCache$Entry == null ? null : modelLoaderRegistry$ModelLoaderCache$Entry.loaders;
            if (list == null) {
                list = DesugarCollections.unmodifiableList(modelLoaderRegistry.multiModelLoaderFactory.build(cls));
                if (((ModelLoaderRegistry$ModelLoaderCache$Entry) modelLoaderRegistry.cache.jobs.put(cls, new ModelLoaderRegistry$ModelLoaderCache$Entry(list))) != null) {
                    throw new IllegalStateException("Already cached loaders for model: " + cls);
                }
            }
        }
        if (list.isEmpty()) {
            throw new NoImageHeaderParserException("Failed to find any ModelLoaders registered for model class: " + obj.getClass());
        }
        int size = list.size();
        List list2 = Collections.EMPTY_LIST;
        boolean z = true;
        for (int i = 0; i < size; i++) {
            ModelLoader modelLoader = (ModelLoader) list.get(i);
            if (modelLoader.handles(obj)) {
                if (z) {
                    list2 = new ArrayList(size - i);
                    z = false;
                }
                list2.add(modelLoader);
            }
        }
        if (!list2.isEmpty()) {
            return list2;
        }
        throw new NoImageHeaderParserException("Found ModelLoaders for model class: " + list + ", but none that handle this specific model instance: " + obj);
    }

    public final DataRewinder getRewinder(Object obj) {
        DataRewinder build;
        InputStreamRewinder inputStreamRewinder = this.dataRewinderRegistry;
        synchronized (inputStreamRewinder) {
            try {
                Util.checkNotNull(obj);
                DataRewinder.Factory factory = (DataRewinder.Factory) ((HashMap) inputStreamRewinder.bufferedStream).get(obj.getClass());
                if (factory == null) {
                    Iterator it = ((HashMap) inputStreamRewinder.bufferedStream).values().iterator();
                    while (true) {
                        if (!it.hasNext()) {
                            break;
                        }
                        DataRewinder.Factory factory2 = (DataRewinder.Factory) it.next();
                        if (factory2.getDataClass().isAssignableFrom(obj.getClass())) {
                            factory = factory2;
                            break;
                        }
                    }
                }
                if (factory == null) {
                    factory = InputStreamRewinder.DEFAULT_FACTORY;
                }
                build = factory.build(obj);
            } catch (Throwable th) {
                throw th;
            }
        }
        return build;
    }

    public final void register(DataRewinder.Factory factory) {
        InputStreamRewinder inputStreamRewinder = this.dataRewinderRegistry;
        synchronized (inputStreamRewinder) {
            ((HashMap) inputStreamRewinder.bufferedStream).put(factory.getDataClass(), factory);
        }
    }

    public final void register(Class cls, Class cls2, ResourceTranscoder resourceTranscoder) {
        Headers.Builder builder = this.transcoderRegistry;
        synchronized (builder) {
            builder.namesAndValues.add(new TranscoderRegistry$Entry(cls, cls2, resourceTranscoder));
        }
    }

    public final void append(Class cls, Encoder encoder) {
        Headers.Builder builder = this.encoderRegistry;
        synchronized (builder) {
            builder.namesAndValues.add(new EncoderRegistry$Entry(cls, encoder));
        }
    }

    public final void register(ImageHeaderParser imageHeaderParser) {
        Headers.Builder builder = this.imageHeaderParserRegistry;
        synchronized (builder) {
            builder.namesAndValues.add(imageHeaderParser);
        }
    }

    public final void append(Class cls, ResourceEncoder resourceEncoder) {
        Headers.Builder builder = this.resourceEncoderRegistry;
        synchronized (builder) {
            builder.namesAndValues.add(new ResourceEncoderRegistry$Entry(cls, resourceEncoder));
        }
    }

    public final void append(Class cls, Class cls2, ModelLoaderFactory modelLoaderFactory) {
        ModelLoaderRegistry modelLoaderRegistry = this.modelLoaderRegistry;
        synchronized (modelLoaderRegistry) {
            modelLoaderRegistry.multiModelLoaderFactory.append(cls, cls2, modelLoaderFactory);
            modelLoaderRegistry.cache.jobs.clear();
        }
    }
}
