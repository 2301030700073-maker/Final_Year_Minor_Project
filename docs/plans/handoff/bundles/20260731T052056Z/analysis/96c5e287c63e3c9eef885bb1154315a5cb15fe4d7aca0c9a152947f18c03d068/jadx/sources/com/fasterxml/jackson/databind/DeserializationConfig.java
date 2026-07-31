package com.fasterxml.jackson.databind;

import com.fasterxml.jackson.databind.cfg.BaseSettings;
import com.fasterxml.jackson.databind.cfg.CoercionConfigs;
import com.fasterxml.jackson.databind.cfg.MapperConfig;
import com.fasterxml.jackson.databind.cfg.MapperConfigBase;
import com.fasterxml.jackson.databind.introspect.SimpleMixInResolver;
import com.fasterxml.jackson.databind.jsontype.impl.StdSubtypeResolver;
import com.fasterxml.jackson.databind.util.RootNameLookup;
import kotlin.InitializedLazyImpl;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class DeserializationConfig extends MapperConfigBase {
    public static final int DESER_FEATURE_DEFAULTS = MapperConfig.collectFeatureDefaults(DeserializationFeature.class);
    public final int _deserFeatures;

    public DeserializationConfig(BaseSettings baseSettings, StdSubtypeResolver stdSubtypeResolver, SimpleMixInResolver simpleMixInResolver, RootNameLookup rootNameLookup, InitializedLazyImpl initializedLazyImpl, CoercionConfigs coercionConfigs) {
        super(baseSettings, stdSubtypeResolver, simpleMixInResolver, rootNameLookup, initializedLazyImpl);
        this._deserFeatures = DESER_FEATURE_DEFAULTS;
    }

    @Override // com.fasterxml.jackson.databind.cfg.MapperConfigBase
    public final MapperConfigBase _withMapperFeatures(long j) {
        return new DeserializationConfig(this, j, this._deserFeatures);
    }

    public DeserializationConfig(DeserializationConfig deserializationConfig, long j, int i) {
        super(deserializationConfig, j);
        this._deserFeatures = i;
    }
}
