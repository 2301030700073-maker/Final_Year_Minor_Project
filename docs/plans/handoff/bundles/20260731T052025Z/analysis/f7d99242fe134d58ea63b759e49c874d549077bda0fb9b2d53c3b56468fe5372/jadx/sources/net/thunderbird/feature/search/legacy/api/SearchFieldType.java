package net.thunderbird.feature.search.legacy.api;

import kotlin.Lazy;
import kotlin.LazyThreadSafetyMode;
import kotlin.ResultKt;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import net.thunderbird.feature.search.legacy.LocalMessageSearch$$ExternalSyntheticLambda0;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
@Serializable
/* loaded from: classes.dex */
public final class SearchFieldType {
    public static final /* synthetic */ SearchFieldType[] $VALUES;
    public static final Lazy $cachedSerializer$delegate;
    public static final SearchFieldType CUSTOM;
    public static final Companion Companion;
    public static final SearchFieldType NUMBER;
    public static final SearchFieldType TEXT;

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class Companion {
        public final KSerializer serializer() {
            return (KSerializer) SearchFieldType.$cachedSerializer$delegate.getValue();
        }
    }

    static {
        SearchFieldType searchFieldType = new SearchFieldType("TEXT", 0);
        TEXT = searchFieldType;
        SearchFieldType searchFieldType2 = new SearchFieldType("NUMBER", 1);
        NUMBER = searchFieldType2;
        SearchFieldType searchFieldType3 = new SearchFieldType("CUSTOM", 2);
        CUSTOM = searchFieldType3;
        $VALUES = new SearchFieldType[]{searchFieldType, searchFieldType2, searchFieldType3};
        Companion = new Companion();
        $cachedSerializer$delegate = ResultKt.lazy(LazyThreadSafetyMode.PUBLICATION, new LocalMessageSearch$$ExternalSyntheticLambda0(27));
    }

    public static SearchFieldType valueOf(String str) {
        return (SearchFieldType) Enum.valueOf(SearchFieldType.class, str);
    }

    public static SearchFieldType[] values() {
        return (SearchFieldType[]) $VALUES.clone();
    }
}
