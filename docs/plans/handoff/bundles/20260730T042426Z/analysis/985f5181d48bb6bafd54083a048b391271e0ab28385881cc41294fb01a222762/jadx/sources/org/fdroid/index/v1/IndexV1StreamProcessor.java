package org.fdroid.index.v1;

import java.io.InputStream;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;
import kotlin.text.StringsKt;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.SerializationException;
import kotlinx.serialization.builtins.BuiltinSerializersKt;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeDecoder;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.encoding.Encoder;
import kotlinx.serialization.json.Json;
import kotlinx.serialization.json.JsonDecoder;
import kotlinx.serialization.json.JvmStreamsKt;
import org.fdroid.index.IndexConverterKt;
import org.fdroid.index.IndexParser;
import org.fdroid.index.v1.IndexV1StreamProcessor;
import org.fdroid.index.v2.AntiFeatureV2;
import org.fdroid.index.v2.CategoryV2;
import org.fdroid.index.v2.PackageVersionV2;

/* compiled from: IndexV1StreamProcessor.kt */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001:\u0001\u0010B+\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0007\u0012\b\b\u0002\u0010\b\u001a\u00020\t¢\u0006\u0004\b\n\u0010\u000bJ\u000e\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000fR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0011"}, d2 = {"Lorg/fdroid/index/v1/IndexV1StreamProcessor;", "", "indexStreamReceiver", "Lorg/fdroid/index/v1/IndexV1StreamReceiver;", "lastTimestamp", "", "locale", "", "json", "Lkotlinx/serialization/json/Json;", "<init>", "(Lorg/fdroid/index/v1/IndexV1StreamReceiver;JLjava/lang/String;Lkotlinx/serialization/json/Json;)V", "process", "", "inputStream", "Ljava/io/InputStream;", "IndexStreamSerializer", "index_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
/* loaded from: classes2.dex */
public final class IndexV1StreamProcessor {
    private final IndexV1StreamReceiver indexStreamReceiver;
    private final Json json;
    private final long lastTimestamp;
    private final String locale;

    public IndexV1StreamProcessor(IndexV1StreamReceiver indexStreamReceiver, long j, String locale, Json json) {
        Intrinsics.checkNotNullParameter(indexStreamReceiver, "indexStreamReceiver");
        Intrinsics.checkNotNullParameter(locale, "locale");
        Intrinsics.checkNotNullParameter(json, "json");
        this.indexStreamReceiver = indexStreamReceiver;
        this.lastTimestamp = j;
        this.locale = locale;
        this.json = json;
    }

    public /* synthetic */ IndexV1StreamProcessor(IndexV1StreamReceiver indexV1StreamReceiver, long j, String str, Json json, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(indexV1StreamReceiver, j, (i & 4) != 0 ? IndexConverterKt.DEFAULT_LOCALE : str, (i & 8) != 0 ? IndexParser.getJson() : json);
    }

    public final void process(InputStream inputStream) throws SerializationException, OldIndexException {
        Intrinsics.checkNotNullParameter(inputStream, "inputStream");
        JvmStreamsKt.decodeFromStream(this.json, new IndexStreamSerializer(), inputStream);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: IndexV1StreamProcessor.kt */
    final class IndexStreamSerializer implements KSerializer {
        private final SerialDescriptor descriptor = IndexV1.INSTANCE.serializer().getDescriptor();

        public IndexStreamSerializer() {
        }

        @Override // kotlinx.serialization.KSerializer, kotlinx.serialization.SerializationStrategy, kotlinx.serialization.DeserializationStrategy
        public SerialDescriptor getDescriptor() {
            return this.descriptor;
        }

        @Override // kotlinx.serialization.DeserializationStrategy
        public IndexV1 deserialize(Decoder decoder) {
            Intrinsics.checkNotNullParameter(decoder, "decoder");
            if ((decoder instanceof JsonDecoder ? (JsonDecoder) decoder : null) == null) {
                throw new IllegalStateException("Can be deserialized only by JSON");
            }
            decoder.beginStructure(getDescriptor());
            JsonDecoder jsonDecoder = (JsonDecoder) decoder;
            deserializeRepo(jsonDecoder, jsonDecoder.decodeElementIndex(getDescriptor()));
            int decodeElementIndex = jsonDecoder.decodeElementIndex(getDescriptor());
            if (decodeElementIndex == -1) {
                updateRepoData(MapsKt.emptyMap());
                jsonDecoder.endStructure(getDescriptor());
                return null;
            }
            deserializeRequests(jsonDecoder, decodeElementIndex);
            int decodeElementIndex2 = jsonDecoder.decodeElementIndex(getDescriptor());
            if (decodeElementIndex2 == -1) {
                updateRepoData(MapsKt.emptyMap());
                jsonDecoder.endStructure(getDescriptor());
                return null;
            }
            Map deserializeApps = deserializeApps(jsonDecoder, decodeElementIndex2);
            int decodeElementIndex3 = jsonDecoder.decodeElementIndex(getDescriptor());
            if (decodeElementIndex3 == -1) {
                updateRepoData(deserializeApps);
                jsonDecoder.endStructure(getDescriptor());
                return null;
            }
            deserializePackages(jsonDecoder, decodeElementIndex3, deserializeApps);
            jsonDecoder.endStructure(getDescriptor());
            updateRepoData(deserializeApps);
            return null;
        }

        private final void deserializeRepo(JsonDecoder jsonDecoder, int i) {
            if (i != getDescriptor().getElementIndex("repo")) {
                throw new IllegalArgumentException("Failed requirement.");
            }
            RepoV1 repoV1 = (RepoV1) jsonDecoder.decodeSerializableValue(RepoV1.INSTANCE.serializer());
            if (IndexV1StreamProcessor.this.lastTimestamp < repoV1.getTimestamp()) {
                IndexV1StreamProcessor.this.indexStreamReceiver.receive(repoV1.toRepoV2(IndexConverterKt.DEFAULT_LOCALE, MapsKt.emptyMap(), MapsKt.emptyMap(), MapsKt.emptyMap()), repoV1.getVersion());
                return;
            }
            throw new OldIndexException(IndexV1StreamProcessor.this.lastTimestamp == repoV1.getTimestamp(), "Old repo " + repoV1.getAddress() + " " + repoV1.getTimestamp());
        }

        private final void deserializeRequests(JsonDecoder jsonDecoder, int i) {
            if (i != getDescriptor().getElementIndex("requests")) {
                throw new IllegalArgumentException("Failed requirement.");
            }
            jsonDecoder.decodeSerializableValue(Requests.INSTANCE.serializer());
        }

        private final Map deserializeApps(JsonDecoder jsonDecoder, int i) {
            if (i != getDescriptor().getElementIndex("apps")) {
                throw new IllegalArgumentException("Failed requirement.");
            }
            HashMap hashMap = new HashMap();
            SerialDescriptor elementDescriptor = getDescriptor().getElementDescriptor(i);
            CompositeDecoder beginStructure = jsonDecoder.beginStructure(elementDescriptor);
            while (true) {
                int decodeElementIndex = beginStructure.decodeElementIndex(getDescriptor());
                if (decodeElementIndex != -1) {
                    AppV1 appV1 = (AppV1) CompositeDecoder.DefaultImpls.decodeSerializableElement$default(jsonDecoder, getDescriptor(), decodeElementIndex, AppV1.INSTANCE.serializer(), null, 8, null);
                    Long l = null;
                    IndexV1StreamProcessor.this.indexStreamReceiver.receive(appV1.getPackageName(), appV1.toMetadataV2(null, IndexV1StreamProcessor.this.locale));
                    String packageName = appV1.getPackageName();
                    List<String> antiFeatures = appV1.getAntiFeatures();
                    LinkedHashMap linkedHashMap = new LinkedHashMap(RangesKt.coerceAtLeast(MapsKt.mapCapacity(CollectionsKt.collectionSizeOrDefault(antiFeatures, 10)), 16));
                    for (Object obj : antiFeatures) {
                        linkedHashMap.put(obj, MapsKt.emptyMap());
                    }
                    Map<String, Localized> localized = appV1.getLocalized();
                    Map mapValuesNotNull = localized != null ? IndexConverterKt.mapValuesNotNull(localized, new Function1() { // from class: org.fdroid.index.v1.IndexV1StreamProcessor$IndexStreamSerializer$$ExternalSyntheticLambda0
                        @Override // kotlin.jvm.functions.Function1
                        public final Object invoke(Object obj2) {
                            String deserializeApps$lambda$1;
                            deserializeApps$lambda$1 = IndexV1StreamProcessor.IndexStreamSerializer.deserializeApps$lambda$1((Map.Entry) obj2);
                            return deserializeApps$lambda$1;
                        }
                    }) : null;
                    String suggestedVersionCode = appV1.getSuggestedVersionCode();
                    if (suggestedVersionCode != null) {
                        l = StringsKt.toLongOrNull(suggestedVersionCode);
                    }
                    hashMap.put(packageName, new AppData(linkedHashMap, mapValuesNotNull, l, appV1.getCategories()));
                } else {
                    beginStructure.endStructure(elementDescriptor);
                    return hashMap;
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final String deserializeApps$lambda$1(Map.Entry it) {
            Intrinsics.checkNotNullParameter(it, "it");
            return ((Localized) it.getValue()).getWhatsNew();
        }

        private final void deserializePackages(JsonDecoder jsonDecoder, int i, Map map) {
            if (i != getDescriptor().getElementIndex("packages")) {
                throw new IllegalArgumentException("Failed requirement.");
            }
            SerialDescriptor elementDescriptor = getDescriptor().getElementDescriptor(i);
            CompositeDecoder beginStructure = jsonDecoder.beginStructure(elementDescriptor);
            while (true) {
                int decodeElementIndex = beginStructure.decodeElementIndex(getDescriptor());
                if (decodeElementIndex != -1) {
                    Intrinsics.checkNotNull(beginStructure, "null cannot be cast to non-null type kotlinx.serialization.json.JsonDecoder");
                    readPackageMapEntry((JsonDecoder) beginStructure, decodeElementIndex, map);
                } else {
                    beginStructure.endStructure(elementDescriptor);
                    return;
                }
            }
        }

        private final void readPackageMapEntry(JsonDecoder jsonDecoder, int i, Map map) {
            Map emptyMap;
            AppData appData;
            Long suggestedVersionCode;
            String decodeStringElement = jsonDecoder.decodeStringElement(getDescriptor(), i);
            jsonDecoder.decodeElementIndex(getDescriptor());
            HashMap hashMap = new HashMap();
            SerialDescriptor descriptor = BuiltinSerializersKt.ListSerializer(PackageV1.INSTANCE.serializer()).getDescriptor();
            CompositeDecoder beginStructure = jsonDecoder.beginStructure(descriptor);
            boolean z = true;
            while (beginStructure.decodeElementIndex(getDescriptor()) != -1) {
                PackageV1 packageV1 = (PackageV1) CompositeDecoder.DefaultImpls.decodeSerializableElement$default(jsonDecoder, getDescriptor(), i + 1, PackageV1.INSTANCE.serializer(), null, 8, null);
                Long versionCode = packageV1.getVersionCode();
                long j = 0;
                long longValue = versionCode != null ? versionCode.longValue() : 0L;
                AppData appData2 = (AppData) map.get(decodeStringElement);
                if (appData2 != null && (suggestedVersionCode = appData2.getSuggestedVersionCode()) != null) {
                    j = suggestedVersionCode.longValue();
                }
                List<String> listOf = longValue > j ? CollectionsKt.listOf("Beta") : CollectionsKt.emptyList();
                AppData appData3 = (AppData) map.get(decodeStringElement);
                if (appData3 == null || (emptyMap = appData3.getAntiFeatures()) == null) {
                    emptyMap = MapsKt.emptyMap();
                }
                Map map2 = null;
                if (j == longValue && (appData = (AppData) map.get(decodeStringElement)) != null) {
                    map2 = appData.getWhatsNew();
                }
                PackageVersionV2 packageVersionV2 = packageV1.toPackageVersionV2(listOf, emptyMap, map2);
                if (z) {
                    IndexV1StreamProcessor.this.indexStreamReceiver.updateAppMetadata(decodeStringElement, packageV1.getSigner());
                }
                hashMap.put(packageVersionV2.getFile().getSha256(), packageVersionV2);
                z = false;
            }
            IndexV1StreamProcessor.this.indexStreamReceiver.receive(decodeStringElement, hashMap);
            beginStructure.endStructure(descriptor);
        }

        private final void updateRepoData(Map map) {
            HashMap hashMap = new HashMap();
            HashMap hashMap2 = new HashMap();
            for (AppData appData : map.values()) {
                IndexConverterKt.mapInto((Map<String, ? extends Map<String, String>>) appData.getAntiFeatures(), (HashMap<String, AntiFeatureV2>) hashMap);
                IndexConverterKt.mapInto((List<String>) appData.getCategories(), (HashMap<String, CategoryV2>) hashMap2);
            }
            IndexV1StreamProcessor.this.indexStreamReceiver.updateRepo(hashMap, hashMap2, IndexConverterKt.getV1ReleaseChannels());
        }

        @Override // kotlinx.serialization.SerializationStrategy
        public void serialize(Encoder encoder, IndexV1 indexV1) {
            Intrinsics.checkNotNullParameter(encoder, "encoder");
            throw new IllegalStateException("Not implemented");
        }
    }
}
