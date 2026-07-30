package org.fdroid.index;

import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;
import kotlin.text.StringsKt;
import org.fdroid.index.v1.AppV1;
import org.fdroid.index.v1.IndexV1;
import org.fdroid.index.v1.Localized;
import org.fdroid.index.v1.PackageV1;
import org.fdroid.index.v2.AntiFeatureV2;
import org.fdroid.index.v2.CategoryV2;
import org.fdroid.index.v2.IndexV2;
import org.fdroid.index.v2.MetadataV2;
import org.fdroid.index.v2.PackageV2;

/* compiled from: IndexConverter.kt */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0011\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\u000e\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\tR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\n"}, d2 = {"Lorg/fdroid/index/IndexConverter;", "", "defaultLocale", "", "<init>", "(Ljava/lang/String;)V", "toIndexV2", "Lorg/fdroid/index/v2/IndexV2;", "v1", "Lorg/fdroid/index/v1/IndexV1;", "index_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
/* loaded from: classes2.dex */
public final class IndexConverter {
    private final String defaultLocale;

    /* JADX WARN: Multi-variable type inference failed */
    public IndexConverter() {
        this(null, 1, 0 == true ? 1 : 0);
    }

    public IndexConverter(String defaultLocale) {
        Intrinsics.checkNotNullParameter(defaultLocale, "defaultLocale");
        this.defaultLocale = defaultLocale;
    }

    public /* synthetic */ IndexConverter(String str, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? IndexConverterKt.DEFAULT_LOCALE : str);
    }

    public final IndexV2 toIndexV2(IndexV1 v1) {
        Map emptyMap;
        Long longOrNull;
        PackageV1 packageV1;
        Intrinsics.checkNotNullParameter(v1, "v1");
        HashMap hashMap = new HashMap();
        HashMap hashMap2 = new HashMap();
        HashMap hashMap3 = new HashMap(v1.getApps().size());
        for (AppV1 appV1 : v1.getApps()) {
            List<PackageV1> list = v1.getPackages().get(appV1.getPackageName());
            String signer = (list == null || (packageV1 = list.get(0)) == null) ? null : packageV1.getSigner();
            List<String> antiFeatures = appV1.getAntiFeatures();
            LinkedHashMap linkedHashMap = new LinkedHashMap(RangesKt.coerceAtLeast(MapsKt.mapCapacity(CollectionsKt.collectionSizeOrDefault(antiFeatures, 10)), 16));
            for (Object obj : antiFeatures) {
                linkedHashMap.put(obj, MapsKt.emptyMap());
            }
            Map<String, Localized> localized = appV1.getLocalized();
            Map<String, String> mapValuesNotNull = localized != null ? IndexConverterKt.mapValuesNotNull(localized, new Function1() { // from class: org.fdroid.index.IndexConverter$$ExternalSyntheticLambda0
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj2) {
                    String indexV2$lambda$3$lambda$1;
                    indexV2$lambda$3$lambda$1 = IndexConverter.toIndexV2$lambda$3$lambda$1((Map.Entry) obj2);
                    return indexV2$lambda$3$lambda$1;
                }
            }) : null;
            MetadataV2 metadataV2 = appV1.toMetadataV2(signer, this.defaultLocale);
            if (list == null) {
                emptyMap = MapsKt.emptyMap();
            } else {
                emptyMap = new LinkedHashMap(RangesKt.coerceAtLeast(MapsKt.mapCapacity(CollectionsKt.collectionSizeOrDefault(list, 10)), 16));
                for (PackageV1 packageV12 : list) {
                    Long versionCode = packageV12.getVersionCode();
                    long j = 0;
                    long longValue = versionCode != null ? versionCode.longValue() : 0L;
                    String suggestedVersionCode = appV1.getSuggestedVersionCode();
                    if (suggestedVersionCode != null && (longOrNull = StringsKt.toLongOrNull(suggestedVersionCode)) != null) {
                        j = longOrNull.longValue();
                    }
                    Pair pair = TuplesKt.to(packageV12.getHash(), packageV12.toPackageVersionV2(longValue > j ? CollectionsKt.listOf("Beta") : CollectionsKt.emptyList(), linkedHashMap, j == longValue ? mapValuesNotNull : null));
                    emptyMap.put(pair.getFirst(), pair.getSecond());
                }
            }
            PackageV2 packageV2 = new PackageV2(metadataV2, emptyMap);
            IndexConverterKt.mapInto(linkedHashMap, (HashMap<String, AntiFeatureV2>) hashMap);
            IndexConverterKt.mapInto(appV1.getCategories(), (HashMap<String, CategoryV2>) hashMap2);
            hashMap3.put(appV1.getPackageName(), packageV2);
        }
        return new IndexV2(v1.getRepo().toRepoV2(this.defaultLocale, hashMap, hashMap2, IndexConverterKt.getV1ReleaseChannels()), hashMap3);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String toIndexV2$lambda$3$lambda$1(Map.Entry it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return ((Localized) it.getValue()).getWhatsNew();
    }
}
