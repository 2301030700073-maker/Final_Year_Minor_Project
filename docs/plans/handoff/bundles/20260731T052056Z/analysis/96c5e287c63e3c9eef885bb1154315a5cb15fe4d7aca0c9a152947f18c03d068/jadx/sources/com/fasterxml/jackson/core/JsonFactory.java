package com.fasterxml.jackson.core;

import coil3.svg.internal.AndroidSvg;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.io.SerializedString;
import com.fasterxml.jackson.core.util.BufferRecycler;
import com.fasterxml.jackson.core.util.BufferRecyclers;
import com.fasterxml.jackson.core.util.DefaultPrettyPrinter;
import j$.util.concurrent.ConcurrentHashMap;
import java.io.Serializable;
import java.lang.ref.ReferenceQueue;
import java.lang.ref.SoftReference;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class JsonFactory implements Serializable {
    public static final int DEFAULT_FACTORY_FEATURE_FLAGS = Feature.collectDefaults();
    public static final int DEFAULT_GENERATOR_FEATURE_FLAGS;
    public static final SerializedString DEFAULT_ROOT_VALUE_SEPARATOR;
    public int _factoryFeatures;
    public int _generatorFeatures;
    public SerializedString _rootValueSeparator;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public enum Feature {
        INTERN_FIELD_NAMES,
        CANONICALIZE_FIELD_NAMES,
        FAIL_ON_SYMBOL_HASH_OVERFLOW,
        USE_THREAD_LOCAL_FOR_BUFFER_RECYCLING;

        private final boolean _defaultState = true;

        Feature() {
        }

        public static int collectDefaults() {
            int i = 0;
            for (Feature feature : values()) {
                if (feature._defaultState) {
                    i |= feature.getMask();
                }
            }
            return i;
        }

        public final int getMask() {
            return 1 << ordinal();
        }
    }

    static {
        JsonParser.Feature.collectDefaults();
        DEFAULT_GENERATOR_FEATURE_FLAGS = JsonGenerator.Feature.collectDefaults();
        DEFAULT_ROOT_VALUE_SEPARATOR = DefaultPrettyPrinter.DEFAULT_ROOT_VALUE_SEPARATOR;
    }

    public final BufferRecycler _getBufferRecycler() {
        SoftReference softReference;
        if ((this._factoryFeatures & Feature.USE_THREAD_LOCAL_FOR_BUFFER_RECYCLING.getMask()) == 0) {
            return new BufferRecycler();
        }
        ThreadLocal threadLocal = BufferRecyclers._recyclerRef;
        SoftReference softReference2 = (SoftReference) threadLocal.get();
        BufferRecycler bufferRecycler = softReference2 == null ? null : (BufferRecycler) softReference2.get();
        if (bufferRecycler == null) {
            bufferRecycler = new BufferRecycler();
            AndroidSvg androidSvg = BufferRecyclers._bufferRecyclerTracker;
            if (androidSvg != null) {
                ReferenceQueue referenceQueue = (ReferenceQueue) androidSvg.renderOptions;
                softReference = new SoftReference(bufferRecycler, referenceQueue);
                ConcurrentHashMap concurrentHashMap = (ConcurrentHashMap) androidSvg.svg;
                concurrentHashMap.put(softReference, Boolean.TRUE);
                while (true) {
                    SoftReference softReference3 = (SoftReference) referenceQueue.poll();
                    if (softReference3 == null) {
                        break;
                    }
                    concurrentHashMap.remove(softReference3);
                }
            } else {
                softReference = new SoftReference(bufferRecycler);
            }
            threadLocal.set(softReference);
        }
        return bufferRecycler;
    }
}
